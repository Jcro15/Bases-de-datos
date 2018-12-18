--XTablas
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





--ciclo 1: tablas


--Perfil

Create table Perfiles(
correo varchar2(30)NOT NULL,
nombre varchar2(50) NOT NULL);

-- Profesional
Create table Profesionales(
correo_profesional varchar2(30)NOT NULL,
pais varchar(20) NOT NULL,
sector varchar2(30)Not NULL);

--Fundacion
Create table Fundaciones(
Correo_fundacion varchar2(30) Not null,
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
justificacion varchar2(100),
estado varchar(1) Not null,
perfil varchar2(30) Not null,
profesional varchar2(30) not null,
competencia number(2) not null);

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

--PoblarOk(1)
/*
--Sector
insert into Sectores values('tecn');
insert into Sectores values('agr');
insert into Sectores values('infr');

--Sector
insert into Areas values(1,'infr');
insert into Areas values(2,'agr');
insert into Areas values(3,'tecn');

--Competencia
insert into Competencias values(1,'SQL');
insert into Competencias values(2,'suelos');
insert into Competencias values(3,'Circuitos');

--Perfil
insert into Perfiles values('comunicaciones@saldarriaga.org','sarriaga concha');
insert into Perfiles values('webmaster@fpd.ong','pies descalzos');
insert into Perfiles values('aliriopulidoedilcb@gamail.com','huella roja');
insert into Perfiles values('Carlos@mail.com','Carlos M');
insert into Perfiles values('Jorge@mail.com','Jorge R');
insert into Perfiles values('Jimena@mail.com','Jimena Z');

--Profesional
insert into Profesionales values('Carlos@mail.com','Colombia','tecn');
insert into Profesionales values('Jorge@mail.com','Argentina','agr');
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

--Fundacion
insert into Pertenencias values ('Educacion','webmaster@fpd.ong');
insert into Pertenencias values ('Proteccion','aliriopulidoedilcb@gamail.com');
insert into Pertenencias values ('Equidad','comunicaciones@saldarriaga.org');

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
insert into Logros values('R','Grado','8/DEC/2002','Jimena@mail.com');
insert into Logros values('R','Grado','4/DEC/2010','Jorge@mail.com');

--Validacion
insert into Validaciones values(1,'10/DEC/2015','Buen rendimiento','A','aliriopulidoedilcb@gamail.com','Jimena@mail.com',1);
insert into Validaciones values(2,'25/JUN/2016','Mucha experiencia','T','comunicaciones@saldarriaga.org','Jorge@mail.com',2);
insert into Validaciones values(3,'15/JUL/2017','Buenas capacidades','A','aliriopulidoedilcb@gamail.com','Carlos@mail.com',3);

--Validacion
insert into Evidencias values(1,'http//:evidencia1.com.html');
insert into Evidencias values(2,'http//:evidencia2.com.html');
insert into Evidencias values(3,'http//:evidencia3.com.html');
*/

--NoOk(2)
/*
--Validar la no nulidad en Perfiles
insert into Perfiles values('abc@de.com','');
--Validar el tipo correspondiente a el pais
insert into Profesionales values('abc@def.com',123,'qwe');
--Validar la longitud del codigo
insert into Competencias values(1234,'aer');
--Validar el tipo correspondiente a el codigo
insert into Competencias values('a','adc');
--Validar la no nulidad en sectores
insert into Sectores values('');


--NoOk(3)

--Validar la restriccion en TCorreo (CK_PROFESIONALES_CORREO)
insert into Profesionales values('abc@@gmail.com','colombia','enseñanza');
--Validar la integridad referencial con Sectores (FK_Profesionales_Sectores)
insert into Profesionales values('abc@outlook.com','colombia','abc');
--Validar la restriccion en TCategoria (CK_LOGROS_CATEGORIA)
insert into Logros values('Q','grado',TO_DATE('22-01-2013','DD-MM-YYYY'),'abc@outlook.com');
--Validar la integridad referencial con Bienes (FK_Pertenencias)
insert into Pertenencias values('aaaa','webmaster@fpd.ong');
--Validar la restriccion en TUrl (CK_FUNDACIONES_URL)
insert into Fundaciones values('webmaster@fpd.ong','50-100','https://fundacionpiesdescalzos.com/htl');
*/

--XPoblar
/*
delete table Evidencias;
delete table Pertenencias;
delete table Logros;
delete table Areas;
delete table Bienes;
delete table Actuaciones;
delete table Capacidades;
delete table Seguimientos;
delete table Validaciones;
delete table Competencias;
delete table Fundaciones;
delete table Profesionales;
delete table Perfiles;
delete table Sectores;
*/

--Primarias

ALTER TABLE Perfiles ADD CONSTRAINT PK_PERFILES PRIMARY KEY(correo);
ALTER TABLE Profesionales ADD CONSTRAINT PK_PROFESIONALES PRIMARY KEY(correo_profesional);
ALTER TABLE Fundaciones ADD CONSTRAINT PK_FUNDACIONES PRIMARY KEY(Correo_fundacion);
ALTER TABLE Competencias ADD CONSTRAINT PK_Competencias PRIMARY KEY(codigo);
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

ALTER TABLE Fundaciones ADD CONSTRAINT UK_Fundaciones UNIQUE(url);

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

--PoblarNoOk(2)
/*
--Validar la restriccion en el codigo de competencias (codigo number(2) not null)
insert into Competencias values(5632,'SQL');
--Validar que el correo de Profesionales no se repita (PK_PROFESIONALES) 
insert into Profesionales values('Jimena@mail.com','Peru','infr');
--Validar TCorreo en validaciones (CK_VALIDACIONES_PERFIL)
insert into Validaciones values(1,'10/DEC/2015','Buen rendimiento','T','aliriopulidoed!%ilcb@gamail.com','Jimena@mail.com',1);
--Validar la restriccion sobre el tamaño en Fundaciones (CK_FUNDACIONES_TAMA)
insert into Fundaciones values('aliriopulidoedilcb@gamail.com','101+','http://fundacionlahuellaroja.com.html');
--Validar la restriccion referencial de Areas (FK_Areas_Sectores)
insert into Areas values('SQL','qwe');
*/

--poblandoOk(2)

--Sector
insert into Sectores (nombre) values ('Basic Industries');
insert into Sectores (nombre) values ('Infrastructure');
insert into Sectores (nombre) values ('Consumer Durables');
insert into Sectores (nombre) values ('Consumer');
insert into Sectores (nombre) values ('Finance');
insert into Sectores (nombre) values ('Consumer Services');
insert into Sectores (nombre) values ('Agro');
insert into Sectores (nombre) values ('Data');
insert into Sectores (nombre) values ('Industry');
insert into Sectores (nombre) values ('Technology');

--Perfil
insert into Perfiles (correo, nombre) values ('cleupoldt0@chicagotribune.com', 'Clemente Leupoldt');
insert into Perfiles (correo, nombre) values ('dleaburn1@cisco.com', 'Dudley Leaburn');
insert into Perfiles (correo, nombre) values ('amcwhinney2@weibo.com', 'Abigale Mcwhinney');
insert into Perfiles (correo, nombre) values ('gblythe3@samsung.com', 'Gordon Blythe');
insert into Perfiles (correo, nombre) values ('itapsell4@youtu.be', 'Irma Tapsell');
insert into Perfiles (correo, nombre) values ('kpigrome5@163.com', 'Kirby Pigrome');
insert into Perfiles (correo, nombre) values ('ebeers6@topsy.com', 'Eldon Beers');
insert into Perfiles (correo, nombre) values ('igooday7@sogou.com', 'Israel Gooday');
insert into Perfiles (correo, nombre) values ('nbarrar8@addthis.com', 'Nanon Barrar');
insert into Perfiles (correo, nombre) values ('fmarlow9@wsj.com', 'Fannie Marlow');

--Profesional
insert into Profesionales (correo_profesional, pais, sector) values ('cleupoldt0@chicagotribune.com', 'Indonesia', 'Basic Industries');
insert into Profesionales (correo_profesional, pais, sector) values ('dleaburn1@cisco.com', 'Peru', 'Consumer Services');
insert into Profesionales (correo_profesional, pais, sector) values ('amcwhinney2@weibo.com', 'China', 'Consumer');
insert into Profesionales (correo_profesional, pais, sector) values ('gblythe3@samsung.com', 'United States', 'Finance');
insert into Profesionales (correo_profesional, pais, sector) values ('itapsell4@youtu.be', 'France', 'Consumer Durables');

--Fundacion
insert into Fundaciones(correo_fundacion, tamaño, url) values ('kpigrome5@163.com', '0-50', 'http://csmonitor.com.html');
insert into Fundaciones(correo_fundacion, tamaño, url) values ('ebeers6@topsy.com', '0-50', 'https://illinois.edu.pdf');
insert into Fundaciones(correo_fundacion, tamaño, url) values ('igooday7@sogou.com', '50-100', 'https://usatoday.com.html');
insert into Fundaciones(correo_fundacion, tamaño, url) values ('nbarrar8@addthis.com', '50-100', 'http://typepad.com.html');
insert into Fundaciones(correo_fundacion, tamaño, url) values ('fmarlow9@wsj.com', '0-50', 'http://amazon.co.jp.pdf');

--Competencia
insert into Competencias (codigo, nombre) values (1, 'Bootstrap');
insert into Competencias (codigo, nombre) values (2, 'QS9000');
insert into Competencias (codigo, nombre) values (3, 'BPL');
insert into Competencias (codigo, nombre) values (4, 'Direction');
insert into Competencias (codigo, nombre) values (5, 'Aqualogic');
insert into Competencias (codigo, nombre) values (6, 'Equipment');
insert into Competencias (codigo, nombre) values (7, 'Sports');
insert into Competencias (codigo, nombre) values (8, 'Finance');
insert into Competencias (codigo, nombre) values (9, 'Wellbeing');
insert into Competencias (codigo, nombre) values (10, 'Research');

--Validacion
insert into Validaciones (numero, fecha, justificacion, estado, Perfil, Profesional, Competencia) values (1, '20-JUL-2018', NULL, 'E', 'kpigrome5@163.com', 'cleupoldt0@chicagotribune.com', 7);
insert into Validaciones (numero, fecha, justificacion, estado, Perfil, Profesional, Competencia) values (2, '07-Nov-2017', 'Donec posuere metus vitae ipsum. Aliquam non mauris.', 'E', 'ebeers6@topsy.com', 'dleaburn1@cisco.com', 10);
insert into Validaciones (numero, fecha, justificacion, estado, Perfil, Profesional, Competencia) values (3, '19-JUL-2018', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet', 'A', 'igooday7@sogou.com', 'amcwhinney2@weibo.com', 2);
insert into Validaciones (numero, fecha, justificacion, estado, Perfil, Profesional, Competencia) values (4, '11-JUL-2017', 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', 'A', 'nbarrar8@addthis.com', 'gblythe3@samsung.com',5);
insert into Validaciones (numero, fecha, justificacion, estado, Perfil, Profesional, Competencia) values (5, '18-NOV-2018', 'Integer ac neque.', 'E', 'fmarlow9@wsj.com', 'itapsell4@youtu.be', 10);

--Perfil
insert into Seguimientos (Seguidor, Perfil) values ('gblythe3@samsung.com', 'ebeers6@topsy.com');
insert into Seguimientos (Seguidor, Perfil) values ('amcwhinney2@weibo.com', 'igooday7@sogou.com');
insert into Seguimientos (Seguidor, Perfil) values ('itapsell4@youtu.be', 'fmarlow9@wsj.com');
insert into Seguimientos (Seguidor, Perfil) values ('itapsell4@youtu.be', 'kpigrome5@163.com');

--profesional
insert into Capacidades (Profesional, Competencia) values ('amcwhinney2@weibo.com', 2);
insert into Capacidades (Profesional, Competencia) values ('cleupoldt0@chicagotribune.com', 5);
insert into Capacidades (Profesional, Competencia) values ('gblythe3@samsung.com', 2);
insert into Capacidades (Profesional, Competencia) values ('itapsell4@youtu.be', 6);
insert into Capacidades (Profesional, Competencia) values ('gblythe3@samsung.com', 1);

--Fundacion
insert into Actuaciones (Fundacion, sector, numproyectos) values ('kpigrome5@163.com', 'Consumer Durables', 374);
insert into Actuaciones (Fundacion, sector, numproyectos) values ('kpigrome5@163.com', 'Data', 585);
insert into Actuaciones (Fundacion, sector, numproyectos) values ('nbarrar8@addthis.com', 'Consumer', 542);
insert into Actuaciones (Fundacion, sector, numproyectos) values ('ebeers6@topsy.com', 'Industry', 826);
insert into Actuaciones (Fundacion, sector, numproyectos) values ('fmarlow9@wsj.com', 'Finance', 489);

--Bien
insert into Bienes (nombre, descripcion) values ('Oil  Gas Production', 'Fusce congue');
insert into Bienes (nombre, descripcion) values ('Investment Bankers', 'Suspendisse ornare consequat lectus.');
insert into Bienes (nombre, descripcion) values ('Property-Casualty Insurers', 'In eleifend quam a odio.');
insert into Bienes (nombre, descripcion) values ('EDP Services', 'Aliquam sit amet diam .');
insert into Bienes (nombre, descripcion) values ('Transportation Services', 'Vestibulum ante ipsum primis in');

--Profesional
insert into Logros (Categoria, nombre, fecha, Profesional) values ('P', 'Cbyxhio-mwbym', '17-Oct-2017', 'cleupoldt0@chicagotribune.com');
insert into Logros (Categoria, nombre, fecha, Profesional) values ('R', 'Xmwkgwl-flkrq', '15-OCT-2018', 'dleaburn1@cisco.com');
insert into Logros (Categoria, nombre, fecha, Profesional) values ('P', 'Uitsung-dhbng', '26-Jul-2018', 'amcwhinney2@weibo.com');
insert into Logros (Categoria, nombre, fecha, Profesional) values ('I', 'Nhipliq-vyhco', '09-JUL-2018', 'gblythe3@samsung.com');
insert into Logros (Categoria, nombre, fecha, Profesional) values ('I', 'Hnvpcyy-gqnig', '10-Oct-2017', 'itapsell4@youtu.be');
insert into Logros (Categoria, nombre, fecha, Profesional) values ('I', 'Cledttz-bmrja', '26-Feb-2018', 'cleupoldt0@chicagotribune.com');
insert into Logros (Categoria, nombre, fecha, Profesional) values ('I', 'Mnlxnht-ceqmr', '15-Feb-2018', 'dleaburn1@cisco.com');
insert into Logros (Categoria, nombre, fecha, Profesional) values ('P', 'Ytghpem-vypwl', '10-May-2018', 'amcwhinney2@weibo.com');
insert into Logros (Categoria, nombre, fecha, Profesional) values ('R', 'Kchcpuf-eqbxi', '18-May-2018', 'gblythe3@samsung.com');
insert into Logros (Categoria, nombre, fecha, Profesional) values ('I', 'Rfptate-orrlu', '26-NOV-2018', 'itapsell4@youtu.be');

--Sector
insert into Areas  (Competencia, Sector) values (1, 'Technology');
insert into Areas  (Competencia, Sector) values (2, 'Basic Industries');
insert into Areas  (Competencia, Sector) values (3, 'Infrastructure');
insert into Areas  (Competencia, Sector) values (4, 'Consumer Durables');
insert into Areas  (Competencia, Sector) values (5, 'Consumer');
insert into Areas  (Competencia, Sector) values (6, 'Finance');
insert into Areas  (Competencia, Sector) values (7, 'Consumer Services');
insert into Areas  (Competencia, Sector) values (8, 'Agro');
insert into Areas  (Competencia, Sector) values (9, 'Data');
insert into Areas  (Competencia, Sector) values (10, 'Industry');

--Fundacion
insert into Pertenencias (bien, fundacion) values ('Oil  Gas Production', 'kpigrome5@163.com');
insert into Pertenencias (bien, fundacion) values ('Investment Bankers', 'ebeers6@topsy.com');
insert into Pertenencias (bien, fundacion) values ('Property-Casualty Insurers', 'igooday7@sogou.com');
insert into Pertenencias (bien, fundacion) values ('EDP Services', 'nbarrar8@addthis.com');
insert into Pertenencias (bien, fundacion) values ('Transportation Services', 'fmarlow9@wsj.com');

--Validacion
insert into Evidencias (Validacion, Evidencia) values (1, 'http://wunderground.com.pdf');
insert into Evidencias (Validacion, Evidencia) values (1, 'http://cargocollective.com.html');
insert into Evidencias (Validacion, Evidencia) values (1, 'http://printfriendly.com.pdf');
insert into Evidencias (Validacion, Evidencia) values (5, 'http://sitemeter.com.html');
insert into Evidencias (Validacion, Evidencia) values (4, 'http://admin.ch.pdf');

--Consultas
--Consultar los logros de los profesionales
select * from Logros  order by profesional;
--Consultar validaciones registradas
select sector ,(select count(numero) from validaciones,profesionales  P where P.correo_profesional=validaciones.profesional and estado='A' and P.sector= profesionales.sector) AS A ,(select count(numero) from validaciones,profesionales  P where P.correo_profesional=validaciones.profesional and estado!='A' and P.sector= profesionales.sector) AS B,(select count(numero) from validaciones,profesionales  P where P.correo_profesional=validaciones.profesional and estado='A' and P.sector= profesionales.sector) /(select count(numero) from validaciones,profesionales  P where P.correo_profesional=validaciones.profesional and P.sector= profesionales.sector)*100 AS D,(select count(numero) from validaciones,profesionales  P where P.correo_profesional=validaciones.profesional and estado!='A' and P.sector= profesionales.sector)/(select count(numero) from validaciones,profesionales  P where P.correo_profesional=validaciones.profesional and P.sector= profesionales.sector)*100 AS C from profesionales;
--Consultar los bienes ofrecidos por las fundaciones
select * from Pertenencias order by fundacion;