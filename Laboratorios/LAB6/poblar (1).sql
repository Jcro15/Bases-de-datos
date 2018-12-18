BEGIN
   FOR cur_rec IN (SELECT object_name, object_type
                     FROM user_objects
                    WHERE object_type IN
                             ('TABLE',
                              'VIEW',
                              'PACKAGE',
                              'PROCEDURE',
                              'FUNCTION',
                              'SEQUENCE',
                              'SYNONYM',
                              'PACKAGE BODY'
                             ))
   LOOP
      BEGIN
         IF cur_rec.object_type = 'TABLE'
         THEN
            EXECUTE IMMEDIATE    'DROP '
                              || cur_rec.object_type
                              || ' "'
                              || cur_rec.object_name
                              || '" CASCADE CONSTRAINTS';
         ELSE
            EXECUTE IMMEDIATE    'DROP '
                              || cur_rec.object_type
                              || ' "'
                              || cur_rec.object_name
                              || '"';
         END IF;
      EXCEPTION
         WHEN OTHERS
         THEN
            DBMS_OUTPUT.put_line (   'FAILED: DROP '
                                  || cur_rec.object_type
                                  || ' "'
                                  || cur_rec.object_name
                                  || '"'
                                 );
      END;
   END LOOP;
END;
/

--XTablas
/*
drop table Evidencias;
drop table Pertenencias;
drop table Logros;
drop table Areas;
drop table Bienes;
drop table Actuaciones;
drop table Capacidades;
drop table Seguimientos;
drop table Validaciones;
drop table Competencias;
drop table Fundaciones;
drop table Profesionales;
drop table Perfiles;
drop table Sectores;

*/
--XPoblar
/*
delete from Evidencias;
delete from Pertenencias;
delete from Logros;
delete from Areas;
delete from Bienes;
delete from Actuaciones;
delete from Capacidades;
delete from Seguimientos;
delete from Validaciones;
delete from Competencias;
delete from Fundaciones;
delete from Profesionales;
delete from Perfiles;
delete from Sectores;
*/


--Limpiando
--insert into MBDAA01.DATOS (NOMBRE,CORREO,EMAIL,PAIS) VALUES ('juan camilo','juanAngel@mail.escuelaing.edu.co','juanAngel@mail.escuelaing.edu.co','Colombia') ;
--insert into MBDAA01.DATOS (NOMBRE,CORREO,EMAIL,PAIS) VALUES ('juan camilo Rojas','juanRojasO@mail.escuelaing.edu.co','juanRojas@mail.escuelaing.edu.co','Colombia') ;


--insert into perfiles select distinct correo,nombre from  MBDAA01.DATOS where(NOT REGEXP_LIKE(nombre, '[0-9@"#$%&/()=¿?¡!<>*+;:|]') AND nombre LIKE '% %')and  (REGEXP_LIKE (correo,'[a-zA-Z0-9]+@[a-zA-Z0-9]' ) and  correo not like '%hotmail.com' and correo not like'%gmail.com' and correo not like'%yahoo.com' );

--insert into profesionales select distinct correo,coalesce(pais,'N/A'),'N/A' from MBDAA01.DATOS where(NOT REGEXP_LIKE(nombre, '[0-9@"#$%&/()=¿?¡!<>*+;:|]') AND nombre LIKE '% %')and  (REGEXP_LIKE (correo,'[a-zA-Z0-9]+@[a-zA-Z0-9]' ) and  correo not like '%hotmail.com' and correo not like'%gmail.com' and correo not like'%yahoo.com' and url is null and tama_o is null) ;

--insert into fundaciones select distinct correo,case when tama_o<=50 then '0-50' when tama_o>50 and tama_o<=100 then '50-100' else '100+' end,concat(url,'.html') from MBDAA01.DATOS where(NOT REGEXP_LIKE(nombre, '[0-9@"#$%&/()=¿?¡!<>*+;:|]') AND nombre LIKE '% %')and  (REGEXP_LIKE (correo,'[a-zA-Z0-9]+@[a-zA-Z0-9]' ) and  correo not like '%hotmail.com' and correo not like'%gmail.com' and correo not like'%yahoo.com'and url is not null and tama_o is not  null);



--ciclo 1: tablas


--Perfil

Create table Perfiles(
correo varchar2(50)NOT NULL,
nombre varchar2(50) NOT NULL);

-- Profesional
Create table Profesionales(
correo_profesional varchar2(50)NOT NULL,
pais varchar(50) NOT NULL,
sector varchar2(30)Not NULL);

--Fundacion
Create table Fundaciones(
Correo_fundacion varchar2(50) Not null,
tamaño varchar2(6) Not null,
url varchar2(50) NOT NULL);

--Competencia
Create table Competencias(
codigo number(2) not null,
nombre varchar2(10) not null);

--Sector
Create table Sectores(
nombre varchar2(30) Not null);

--Bien
Create table Bienes(
nombre varchar2(40) not null,
descripcion varchar2(40) not null);

--Validacion
Create table Validaciones(
numero number(5)NOT null,
fecha date not null,
estado varchar(1) Not null,
perfil varchar2(30) Not null,
profesional varchar2(30) not null,
competencia number(2) not null,
justificacion xmltype Not null);

--Validacion
Create table Evidencias(
validacion number(5) Not null,
evidencia varchar2(50) Not null);

--Sector
Create table Areas(
competencia number(2) not null,
sector varchar2(20)not null);

-- Profesional
Create table Capacidades(
profesional varchar2(30) not null,
competencia  number(2) not null);

-- Fundacion
Create table Pertenencias(
bien varchar2(40) not null,
fundacion varchar2(30) not null);

--Perfil
Create table Seguimientos(
seguidor varchar2(30) not null,
perfil varchar2(30) not null);

-- Profesional
Create table Logros(
categoria varchar2(1) Not null,
nombre varchar2(20) not null,
fecha date not null,
profesional varchar2(30) not null);

--Fundacion
Create table Actuaciones(
fundacion varchar2(30) not null,
sector varchar2(30) not null,
numproyectos number(5)not null);

--Primarias

ALTER TABLE Perfiles ADD CONSTRAINT PK_PERFILES PRIMARY KEY(correo);
ALTER TABLE Profesionales ADD CONSTRAINT PK_PROFESIONALES PRIMARY KEY(correo_profesional);
ALTER TABLE Fundaciones ADD CONSTRAINT PK_FUNDACIONES PRIMARY KEY(Correo_fundacion);
ALTER TABLE Competencias ADD CONSTRAINT PK_COMPETENCIAS PRIMARY KEY(codigo);
ALTER TABLE Sectores ADD CONSTRAINT PK_Sectores PRIMARY KEY(nombre);
ALTER TABLE Bienes ADD CONSTRAINT PK_Bienes PRIMARY KEY(nombre);
ALTER TABLE Validaciones ADD CONSTRAINT PK_Validaciones PRIMARY KEY(numero);
ALTER TABLE Evidencias ADD CONSTRAINT PK_Evidencias PRIMARY KEY(validacion,evidencia);
ALTER TABLE Areas ADD CONSTRAINT PK_Areas PRIMARY KEY(competencia,sector);
ALTER TABLE Capacidades ADD CONSTRAINT PK_Capacidades PRIMARY KEY(profesional,competencia);
ALTER TABLE Pertenencias ADD CONSTRAINT PK_Pertenencias PRIMARY KEY(bien,fundacion);
ALTER TABLE Seguimientos ADD CONSTRAINT PK_Seguimientos PRIMARY KEY(seguidor,perfil);
ALTER TABLE Logros ADD CONSTRAINT PK_Logros PRIMARY KEY(nombre,profesional);
ALTER TABLE Actuaciones ADD CONSTRAINT PK_Actuaciones PRIMARY KEY(fundacion,sector);


-- Unicas

--ALTER TABLE Fundaciones ADD CONSTRAINT UK_Fundaciones UNIQUE(url);
Alter table Validaciones add CONSTRAINT  UK_PERFIL_COMPETENCIA UNIQUE(perfil,competencia);

--Foraneas

ALTER TABLE Evidencias ADD CONSTRAINT FK_Evidencias_Validaciones FOREIGN KEY (validacion) REFERENCES Validaciones ( numero);
ALTER TABLE Areas ADD CONSTRAINT FK_Areas_Competencias FOREIGN KEY (competencia) REFERENCES Competencias (codigo);
ALTER TABLE Areas ADD CONSTRAINT FK_Areas_Sectores FOREIGN KEY (sector) REFERENCES Sectores (nombre);
ALTER TABLE Capacidades ADD CONSTRAINT FK_Capacidades_Competencias FOREIGN KEY (Competencia) REFERENCES Competencias(codigo);
ALTER TABLE Capacidades ADD CONSTRAINT FK_Capacidades_Profesionales FOREIGN KEY (Profesional) REFERENCES Profesionales(correo_profesional);
ALTER TABLE Logros ADD CONSTRAINT FK_Logros_Profesionales FOREIGN KEY (Profesional) REFERENCES Profesionales(correo_profesional);
ALTER TABLE Profesionales ADD CONSTRAINT FK_Profesionales_Perfiles FOREIGN KEY (correo_profesional) REFERENCES Perfiles(correo);
ALTER TABLE Profesionales ADD CONSTRAINT FK_Profesionales_Sectores FOREIGN KEY (sector) REFERENCES Sectores(nombre);
ALTER TABLE Actuaciones ADD CONSTRAINT FK_Actuaciones_Sectores FOREIGN KEY (sector) REFERENCES Sectores(nombre);
ALTER TABLE Actuaciones ADD CONSTRAINT FK_Actuaciones_Fundaciones FOREIGN KEY (fundacion) REFERENCES Fundaciones(correo_fundacion);
ALTER TABLE Pertenencias ADD CONSTRAINT FK_Pertenencias_Bienes FOREIGN KEY (bien) REFERENCES Bienes(nombre);
ALTER TABLE Pertenencias ADD CONSTRAINT FK_Pertenencias_Fundaciones FOREIGN KEY (fundacion) REFERENCES Fundaciones(correo_fundacion);
ALTER TABLE Fundaciones ADD CONSTRAINT FK_Fundaciones_Perfiles FOREIGN KEY (correo_fundacion) REFERENCES Perfiles(correo);
ALTER TABLE Seguimientos ADD CONSTRAINT FK_Seguimientos_Perfiles FOREIGN KEY (seguidor) REFERENCES Perfiles(Correo);
ALTER TABLE Seguimientos ADD CONSTRAINT FK_Seguimientos2_Perfiles FOREIGN KEY (Perfil) REFERENCES Perfiles(Correo);
ALTER TABLE Validaciones ADD CONSTRAINT FK_Validaciones_Profesionales FOREIGN KEY (profesional) REFERENCES Profesionales(correo_profesional);
ALTER TABLE Validaciones ADD CONSTRAINT FK_Validaciones_Perfiles FOREIGN KEY (perfil) REFERENCES Perfiles(correo);
ALTER TABLE Validaciones ADD CONSTRAINT FK_Validaciones_Competencias FOREIGN KEY(Competencia) REFERENCES Competencias(Codigo);



--Atributos

--Perfil
ALTER TABLE Perfiles ADD CONSTRAINT CK_PERFILES_CORREO
    check(REGEXP_LIKE (correo,'[a-zA-Z0-9]+@[a-zA-Z0-9]' ) and  correo not like '%hotmail.com' and correo not like'%gmail.com' and correo not like'%yahoo.com');

ALTER TABLE Perfiles ADD CONSTRAINT CK_PERFILES_NOMBRE 
    check (NOT REGEXP_LIKE(nombre, '[0-9@"#$%&/()=¿?¡!<>*+;:|]') AND nombre LIKE '% %');

ALTER TABLE Seguimientos ADD CONSTRAINT CK_SEGUIMIENTOS_SEGUIDOR
    check(REGEXP_LIKE (seguidor,'[a-zA-Z0-9]+@[a-zA-Z0-9]' ) and  seguidor not like '%hotmail.com' and seguidor not like'%gmail.com' and seguidor not like'%yahoo.com');

ALTER TABLE Seguimientos ADD CONSTRAINT CK_SEGUIMIENTOS_PERFIL
    check(REGEXP_LIKE (perfil,'[a-zA-Z0-9]+@[a-zA-Z0-9]' ) and  perfil not like '%hotmail.com' and perfil not like'%gmail.com' and perfil not like'%yahoo.com');

	
--Profesional
ALTER TABLE Profesionales ADD CONSTRAINT CK_PROFESIONALES_CORREO
    check(REGEXP_LIKE (correo_profesional,'[a-zA-Z0-9]+@[a-zA-Z0-9]' ) and  correo_profesional not like '%hotmail.com' and correo_profesional not like'%gmail.com' and correo_profesional not like'%yahoo.com');

Alter table Logros add constraint CK_LOGROS_CATEGORIA 
	check(categoria='P' or categoria='R' or categoria='I');

ALTER TABLE Logros ADD CONSTRAINT CK_LOGROS_PROFESIONAL
    check(REGEXP_LIKE (profesional,'[a-zA-Z0-9]+@[a-zA-Z0-9]' ) and  profesional not like '%hotmail.com' and profesional not like'%gmail.com' and profesional not like'%yahoo.com');    

ALTER TABLE Capacidades ADD CONSTRAINT CK_CAPACIDADES_PROFESIONAL
    check(REGEXP_LIKE (profesional,'[a-zA-Z0-9]+@[a-zA-Z0-9]' ) and  profesional not like '%hotmail.com' and profesional not like'%gmail.com' and profesional not like'%yahoo.com');     
 

--Fundacion 
ALTER TABLE Fundaciones ADD CONSTRAINT CK_FUNDACIONES_CORREO
    check(REGEXP_LIKE (Correo_fundacion,'[a-zA-Z0-9]+@[a-zA-Z0-9]' ) and  Correo_fundacion not like '%hotmail.com' and Correo_fundacion not like'%gmail.com' and Correo_fundacion not like'%yahoo.com');    

Alter table Fundaciones add constraint CK_FUNDACIONES_TAMA check(tamaño='0-50' or tamaño='50-100' or tamaño='100+');
ALTER TABLE Fundaciones ADD CONSTRAINT CK_FUNDACIONES_URL
    check((length(url)-length(replace(url,'.','')))>=2 AND (URL LIKE '%html' or URL like '%pdf'));

ALTER TABLE Actuaciones ADD CONSTRAINT CK_ACTUACIONES_FUNDACION
    check(REGEXP_LIKE (fundacion,'[a-zA-Z0-9]+@[a-zA-Z0-9]' ) and  fundacion not like '%hotmail.com' and fundacion not like'%gmail.com' and fundacion not like'%yahoo.com'); 

ALTER TABLE Pertenencias ADD CONSTRAINT CK_PERTENCIAS_FUNDACION
    check(REGEXP_LIKE (fundacion,'[a-zA-Z0-9]+@[a-zA-Z0-9]' ) and  fundacion not like '%hotmail.com' and fundacion not like'%gmail.com' and fundacion not like'%yahoo.com'); 
    
 
--Validacion 
Alter table Validaciones add constraint  CK_VALIDACIONES_NUMERO 
	CHECK (numero>=1 and numero<99999);

Alter table Validaciones add constraint CK_VALIDACIONES_ESTADO 
	check(estado='E' or estado='T' or estado='A');    

ALTER TABLE Validaciones ADD CONSTRAINT CK_VALIDACIONES_PROFESIONAL
    check(REGEXP_LIKE (profesional,'[a-zA-Z0-9]+@[a-zA-Z0-9]' ) and  profesional not like '%hotmail.com' and profesional not like'%gmail.com' and profesional not like'%yahoo.com');

ALTER TABLE Validaciones ADD CONSTRAINT CK_VALIDACIONES_PERFIL
    check(REGEXP_LIKE (perfil,'[a-zA-Z0-9]+@[a-zA-Z0-9]' ) and  perfil not like '%hotmail.com' and perfil not like'%gmail.com' and profesional not like'%yahoo.com');

ALTER TABLE Evidencias ADD CONSTRAINT CK_EVIDENCIAS_EVIDENCIA
    check((length(evidencia)-length(replace(evidencia,'.','')))>=2 and (Evidencia like'%html' or Evidencia like '%pdf'));

Alter table Evidencias add constraint  CK_EVIDENCIAS_VALIDACION 
	CHECK (validacion>=1 and validacion<99999); 


--Triggers

--Validaciones
Create or replace trigger TG_AD_validaciones
before insert on Validaciones 
for each row
declare 
x number;
found number;
fe2 varchar2(20);
begin
    select count(Seguidor) into found from Seguimientos where Seguimientos.seguidor=:new.perfil and Seguimientos.perfil=:new.profesional ; 
    select count(numero)+1 into x from Validaciones ; 
    IF found=0 THEN
        RAISE_APPLICATION_ERROR(-20001,'Los validadores deben seguir al validado');
    END IF;
    select to_date(to_char(sysdate,'dd/mm/yyyy'),'dd/mm/yyyy') into fe2 from dual;
    :new.fecha:= fe2;
    :new.numero:=x;
    :new.estado:='E';
end;
/


Create or replace trigger TG_MO_validaciones
before update on Validaciones 
for each row
declare contador number;
begin
    select count(evidencia) into contador from Evidencias where Evidencias.validacion=:old.numero;
    

    if :new.numero!=:old.numero  or :new.fecha != :old.fecha or :new.perfil != :old.perfil or :new.profesional!= :old.profesional or :new.competencia!=:old.competencia Then
            RAISE_APPLICATION_ERROR(-20002,'Los únicos datos que se pueden  modificar son  la justificación, las evidencias y el estado');
    elsif :old.estado='A' and :new.estado!='A' then 
            RAISE_APPLICATION_ERROR(-20006,'Las validaciones anuladas no pueden cambiar de estado');
    elsif :new.estado='A' and :old.estado='E'  then 
            RAISE_APPLICATION_ERROR(-20005,'Para anular una validacion esta debe estar terminada');
 

  end if ;
end;
/

Create or replace trigger TG_MO_evidencias
before update on Evidencias 
for each row
declare est varchar(2);
begin
select estado into est from Validaciones where Validaciones.numero=:old.validacion;
    if est!='E' then
        RAISE_APPLICATION_ERROR(-20006,'Para actualizar una evidencia, su validacion  debe estar en proceso');
    end if;
end;
/
---logros
Create or replace trigger TG_AD_Logros
before insert on Logros
for each row
declare 
en number ;
cod number;
esta number;
fe varchar2(20);
begin
    select count(codigo) into en from Competencias where :new.nombre=Competencias.nombre ;
   

    if :new.categoria is null then
        :new.categoria:='R';
    end if;
    if en>0 then 
     select codigo into cod from Competencias where :new.nombre=Competencias.nombre ;
     select count(profesional) into esta from Capacidades where :new.profesional=Capacidades.profesional and Capacidades.competencia=cod;
     if esta=0 then
        insert into Capacidades values(:new.profesional,cod);
     end if;
     
    end if ;
    select to_date(to_char(sysdate,'dd/mm/yyyy'),'dd/mm/yyyy') into fe from dual;
    
    :new.fecha:=fe;
end;
/


Create or replace trigger TG_MO_logros
before update on logros
for each row
begin
    if :new.nombre!=:old.nombre or :new.fecha!=:old.fecha or :new.profesional!=:old.profesional then
    RAISE_APPLICATION_ERROR(-20009,'Lo unico que se puede actualizar es el tipo del logro');
    end if;

end;
/

Create or replace trigger TG_MO_EL_logros
before delete on logros
for each row
declare 
en number;
oldyear number;
newyear number;
oldday number;
newday number;
oldmonth number;
newmonth number;
fe1 varchar2(20);
begin
    select to_date(to_char(sysdate,'dd/mm/yyyy'),'dd/mm/yyyy') into fe1 from dual;
    select count(codigo) into en from Competencias where :new.nombre=Competencias.nombre ;
    if en=0  or :old.fecha!=fe1 then
        Raise_Application_error(-20010,'Solo se puede eliminar un logro el dia que fue adicionado,sino correspondía a una competencia');
    end if;
end;
/

---Bienes
Create or replace trigger TG_AD_PER
before insert on pertenencias
for each row
declare 
est number;
begin
    select count(nombre) into est from bienes where nombre=:new.bien;
    
    if est=0 then
        insert into Bienes values(:new.bien,'N/A');
    end if;
end;
/
Create or replace trigger TG_MO_BI
before update on Bienes
for each row
declare 
contador1 number;
begin
    select count(bien) into contador1 from pertenencias where bien=:old.nombre;
    
    if contador1!=1 then
        Raise_Application_error(-20011,'Solo se puede actualizar un bien si pertenece a una sola fundacion');
    else
        Update pertenencias set bien=:new.nombre where bien =:old.nombre;
    end if ;
end;
/


Create or replace trigger TG_MO_PER
before update on pertenencias
for each row
begin
    
    if :old.fundacion!=:new.fundacion then
        Raise_Application_error(-20011,'No se pueden modificar las fundaciones');
    end if ;
end;
/




--PoblarOk(1)

--Sector
insert into Sectores values('tecn');
insert into Sectores values('agr');
insert into Sectores values('infr');
insert into Sectores values ('N/A');

--Competencia
insert into Competencias values(1,'SQL');
insert into Competencias values(2,'suelos');
insert into Competencias values(3,'Circuitos');

--Sector
insert into Areas values(1,'infr');
insert into Areas values(2,'agr');
insert into Areas values(3,'tecn');




--Perfil
insert into Perfiles values('comunicaciones@saldarriaga.org','sarriaga concha');
insert into Perfiles values('webmaster@fpd.ong','pies descalzos');
insert into Perfiles values('aliriopulidoedilcb@gamail.com','huella roja');
insert into Perfiles values('Carlos@mail.com','Carlos M');
insert into Perfiles values('Jorge@mail.com','Jorge R');
insert into Perfiles values('Jimena@mail.com','Jimena Z');

--Profesional
insert into Profesionales values('Carlos@mail.com','Colombia','tecn');
insert into Profesionales values('Jorge@mail.com','Argentina','infr');
insert into Profesionales values('Jimena@mail.com','Chile','infr');

--Fundacion
insert into Fundaciones values('comunicaciones@saldarriaga.org','100+','https://saldarriagaconcha.com.html');
insert into Fundaciones values('webmaster@fpd.ong','100+','https://fundacionpiesdescalzos.com.html');
insert into Fundaciones values('aliriopulidoedilcb@gamail.com','100+','http://fundacionlahuellaroja.com.html');

--Fundacion
insert into Actuaciones values('comunicaciones@saldarriaga.org','tecn',3);
insert into Actuaciones values('webmaster@fpd.ong','infr',2);
insert into Actuaciones values('aliriopulidoedilcb@gamail.com','agr',4);

--Bien
insert into Bienes values ('Educacion','Promover Educacion');
insert into Bienes values ('Proteccion','Proteger animales');
insert into Bienes values ('Equidad','Promover igualdad');
insert into Bienes values ('abc','abcd');

--Fundacion
insert into Pertenencias values ('Educacion','webmaster@fpd.ong');
insert into Pertenencias values ('Proteccion','aliriopulidoedilcb@gamail.com');
insert into Pertenencias values ('Equidad','comunicaciones@saldarriaga.org');
insert into Pertenencias values ('Proteccion','comunicaciones@saldarriaga.org');
--Profesional
insert into Capacidades values('Jimena@mail.com',1);
insert into Capacidades values('Jorge@mail.com',2);
insert into Capacidades values('Carlos@mail.com',3);

--Perfil
insert into Seguimientos values('Jimena@mail.com','Carlos@mail.com');
insert into Seguimientos values('Jorge@mail.com','Jimena@mail.com');
insert into Seguimientos values('Jorge@mail.com','Carlos@mail.com');

--Profesional
insert into Logros values('R','Grado','10/JUL/2001','Carlos@mail.com');
insert into Logros values('R','suelos','4/MAY/2010','Jorge@mail.com');
insert into Logros(nombre,profesional) values('Grado1','Jorge@mail.com');
insert into Logros(categoria,nombre,profesional) values('P','Grado2','Jorge@mail.com');
--Validacion
insert into Validaciones values(1,'10/Jul/2015','T','Jorge@mail.com','Jimena@mail.com',1,
'<?xml version="1.0"?>
<!DOCTYPE Justificacion[
	<!ELEMENT Justificacion (Proyecto+)>
	
	<!ELEMENT Proyecto (Nombre,Descripcion,Año,Rol,Evaluacion)>	
	<!ATTLIST Proyecto
            numero CDATA #REQUIRED>
		
	<!ELEMENT Nombre (#PCDATA)>
    <!ELEMENT Descripcion (#PCDATA)>
	<!ELEMENT Año (#PCDATA)>
	<!ELEMENT Rol (#PCDATA)>
	<!ELEMENT Evaluacion (#PCDATA)>
	<!ATTLIST Evaluacion
            numero CDATA #REQUIRED>
]>

<Justificacion>
	<Proyecto numero="12694">
        
		<Nombre>
		alfa
		</Nombre>
		<Descripcion>
        Desarollo de una base de datos usando lenguajes sql
        </Descripcion>
		<Año>
		2001
		</Año>
		
		<Rol>
		Director
		</Rol>
		
		<Evaluacion
		numero="68">
		</Evaluacion>
	</Proyecto>
</Justificacion>');

insert into Validaciones values(2,'15/JUL/2017','A','Jimena@mail.com','Carlos@mail.com',3,
'<?xml version="1.0"?>
<!DOCTYPE Justificacion[
	<!ELEMENT Justificacion (Proyecto+)>
	
	<!ELEMENT Proyecto (Nombre,Descripcion,Año,Rol,Evaluacion)>	
	<!ATTLIST Proyecto
            numero CDATA #REQUIRED>
		
	<!ELEMENT Nombre (#PCDATA)>
    <!ELEMENT Descripcion (#PCDATA)>
	<!ELEMENT Año (#PCDATA)>
	<!ELEMENT Rol (#PCDATA)>
	<!ELEMENT Evaluacion (#PCDATA)>
	<!ATTLIST Evaluacion
            numero CDATA #REQUIRED>
]>

<Justificacion>
	<Proyecto numero="12234">
        
		<Nombre>
		beta
		</Nombre>
		<Descripcion>
        Implementacion de un alumbrado publico
        </Descripcion>
		<Año>
		2018
		</Año>
		
		<Rol>
		Ingeniero
		</Rol>
		
		<Evaluacion
		numero="81">
		</Evaluacion>
	</Proyecto>
    
   <Proyecto numero="358975">
        
		<Nombre>
		Zeta
		</Nombre>
		<Descripcion>
        Implementacion del alumbrado de un centro comercial
        </Descripcion>
		<Año>
		2014
		</Año>
		
		<Rol>
		Director
		</Rol>
		
		<Evaluacion
		numero="67">
		</Evaluacion>
	</Proyecto>
</Justificacion>');

insert into Validaciones values(3,'10/Jul/2015','T','Jorge@mail.com','Carlos@mail.com',2,
'<?xml version="1.0"?>
<!DOCTYPE Justificacion[
	<!ELEMENT Justificacion (Proyecto+)>
	
	<!ELEMENT Proyecto (Nombre,Descripcion,Año,Rol,Evaluacion)>	
	<!ATTLIST Proyecto
            numero CDATA #REQUIRED>
		
	<!ELEMENT Nombre (#PCDATA)>
    <!ELEMENT Descripcion (#PCDATA)>
	<!ELEMENT Año (#PCDATA)>
	<!ELEMENT Rol (#PCDATA)>
	<!ELEMENT Evaluacion (#PCDATA)>
	<!ATTLIST Evaluacion
            numero CDATA #REQUIRED>
]>

<Justificacion>
	<Proyecto numero="673478">
        
		<Nombre>
		ro
		</Nombre>
		<Descripcion>
        estudio geologico en el amazonas
        </Descripcion>
		<Año>
		2005
		</Año>
		
		<Rol>
		Asistente
		</Rol>
		
		<Evaluacion
		numero="90">
		</Evaluacion>
	</Proyecto>
    
   <Proyecto numero="09876">
        
		<Nombre>
		piton
		</Nombre>
		<Descripcion>
        estudio de vias 
        </Descripcion>
		<Año>
		2013
		</Año>
		
		<Rol>
		Director
		</Rol>
		
		<Evaluacion
		numero="80">
		</Evaluacion>
	</Proyecto>
    
    <Proyecto numero="122365">
        
		<Nombre>
		gamma
		</Nombre>
		<Descripcion>
        viabilidad sobre la construccion de un puente
        </Descripcion>
		<Año>
		2016
		</Año>
		
		<Rol>
		Ingeniero
		</Rol>
		
		<Evaluacion
		numero="50">
		</Evaluacion>
	</Proyecto>
</Justificacion>');

insert into Validaciones values(4,'10/Jul/2015','T','Jorge@mail.com','Carlos@mail.com',3,
'<?xml version="1.0"?>
<!DOCTYPE Justificacion[
	<!ELEMENT Justificacion (Proyecto+)>
	
	<!ELEMENT Proyecto (Nombre,Descripcion,Año,Rol,Evaluacion)>	
	<!ATTLIST Proyecto
            numero CDATA #REQUIRED>
		
	<!ELEMENT Nombre (#PCDATA)>
    <!ELEMENT Descripcion (#PCDATA)>
	<!ELEMENT Año (#PCDATA)>
	<!ELEMENT Rol (#PCDATA)>
	<!ELEMENT Evaluacion (#PCDATA)>
	<!ATTLIST Evaluacion
            numero CDATA #REQUIRED>
]>
<Justificacion>
	<Proyecto numero="1346">
        
		<Nombre>
		piton
		</Nombre>
		<Descripcion>
        Implementacion de transacciones para bancos
        </Descripcion>
		<Año>
		2015
		</Año>
		
		<Rol>
		Director
		</Rol>
		
		<Evaluacion
		numero="33">
		</Evaluacion>
	</Proyecto>
    
   <Proyecto numero="1994">
        
		<Nombre>
		epsilon
		</Nombre>
		<Descripcion>
        Implementacion de bloqueos por rango en una base de datos relacional 
        </Descripcion>
		<Año>
		2013
		</Año>
		
		<Rol>
		Director
		</Rol>
		
		<Evaluacion
		numero="65">
		</Evaluacion>
	</Proyecto>
    
</Justificacion>');
--Validacion
insert into Evidencias values(1,'http//:evidencia1.com.html');
insert into Evidencias values(2,'http//:evidencia2.com.html');
insert into Evidencias values(3,'http//:evidencia3.com.html');

/*
XDisparadores

Drop trigger TG_AD_validaciones;
Drop trigger TG_MO_validaciones;
Drop trigger TG_MO_evidencias;
Drop trigger TG_AD_Logros;
Drop trigger TG_MO_logros;
Drop trigger TG_MO_EL_logros;
Drop trigger TG_AD_PER;
Drop trigger TG_MO_BI;
Drop trigger TG_MO_PER;
*/



/*
--DisparadoresOk
insert into Validaciones values(1,'10/Jul/2015',NULL,'T','Jimena@mail.com','Carlos@mail.com',2);
update Validaciones set justificacion='abc' where numero=1;
*update Validaciones set estado='T' where numero=2;
update Validaciones set estado='T' where numero=1;
update Validaciones set estado='A' where numero=1;
insert into Logros values('R','suelos','8/MAY/2002','Jimena@mail.com');
update evidencias set evidencia='http//:evidencia4.com.html' where validacion=3;
delete from logros where nombre='suelos';
insert into Pertenencias values ('Proteccion_ambiental','comunicaciones@saldarriaga.org');
update Bienes set nombre='Educacion_infantil' where nombre='Educacion';
delete from bienes where nombre='abc';
update pertenencias set fundacion='aliriopulidoedilcb@gamail.com' where fundacion='aliriopulidoedilcb@gamail.com';

--DisparadoresNoOk
--Validar que las competencias no pueden valorarse más de una vez por el mismo perfil.
--insert into Validaciones values(1,'10/Jul/2015',NULL,'T','Jorge@mail.com','Carlos@mail.com',1);
--Validar que los perfiles que validan deben pertenecer a la red del evaluado
--insert into Validaciones values(1,'10/Jul/2015',NULL,'T','Jimena@mail.com','Jorge@mail.com',1);
--Validar que los únicos datos a modificar son  la justificación, las evidencias y el estado
--update Validaciones set perfil='asdd' where numero=2;
--Restringir las modificaciones cuando la validación no está en el estado: en proceso*
--update Validaciones set estado='E' where numero=2;
--Restringir la validación: sólo puede pasar a estado terminada si tiene la justificación y mínimo una evidencia.
--update Validaciones set estado='T' where numero=1;
--Restringir que para que poder anular una validación esta debe estar en estado terminada*
--update Validaciones set estado='A' where numero=3;
--Validar que una vez se anule la validacion no puede cambiar estado.
--update Validaciones set estado='E' where numero=1;
--Validar que para actualizar una evidencia, su validacion debe estar en proceso'
--update evidencias set evidencia='http//:evidencia4.com.html' where validacion=2;
--Validar que solo se puede eliminar un logro el día que fue adicionado, sino correspondía a una competencia. *
--delete from logros where nombre='Grado';
--Validar que lo unico que se puede actualizar es el tipo del logro
--update logros set nombre='suelos' where nombre='Grado';
--Validar que solo se puede actualizar un bien si pertenece a una sola fundacion
update Bienes set nombre='Proteccion_animal' where nombre='Proteccion';
--Restringir que solo es posible eliminar los bienes si este no existe en pertenencias.
delete from bienes where nombre='Equidad';
--Validar que no se pueden modificar las fundaciones
update pertenencias set fundacion='abc' where fundacion='aliriopulidoedilcb@gamail.com';