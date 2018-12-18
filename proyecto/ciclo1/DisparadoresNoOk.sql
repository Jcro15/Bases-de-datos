--TriggerNoOk
--AD.PRO
--SOLO AUTO
--MO PRO
update Productos set tamaño='10x10x10' where id_producto='31';
--DEL PRO
delete from Productos where id_producto='1';
--AD-COMPRA
--SOLO AUTOMA
--AD SUR
INSERT into Surtimientos(numero,bodega,compra) values(seq_surtimientos.nextval,'3','36');
INSERT into Surtimientos(numero,bodega,compra) values(seq_surtimientos.nextval,'4','7');
--MO SURTI
UPDATE Surtimientos set estado='A' where  numero='6' and compra='6';
UPDATE Surtimientos set bodega='4' where  numero='6' and compra='6';

--Del sur
delete from Surtimientos where numero='18';

--Mo-prov
update proveedores set tipo_identificacion='CC' where identificacion='665308903-4';
--del-prov
delete from proveedores where identificacion='577786983-0';
--MO-COMPRAS
update compras set proveedor='665308893-4' where numero=1;
--De-compras
delete from compras where numero=1;
--Mo-Abaste
update Abastecimientos set cantidad=25 where linea_compra=1; 
--DE-Abaste
delete from Abastecimientos where linea_compra=1;
--AD-juego
INSERT into Juegos values('27','N/A',
'<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE Ficha_tecnica  [
    <!ELEMENT Ficha_tecnica (Juego)>
    <!ELEMENT Juego (Genero, Plataformas,Fecha_Lanzamiento, Formato, Clasificacion_ESRB, Calificacion_Metacritic, Idiomas, Modos+ )>
	<!ATTLIST Juego espacio_requerido CDATA #REQUIRED>
    
    <!ELEMENT Genero (#PCDATA)> 
	<!ATTLIST Genero Nombre CDATA #REQUIRED>	
    <!ELEMENT Plataformas (Plataforma+)>
	<!ELEMENT Plataforma (#PCDATA)>
	<!ATTLIST Plataforma Nombre  CDATA #REQUIRED>
	<!ELEMENT Fecha_Lanzamiento (#PCDATA)>
	<!ATTLIST Fecha_Lanzamiento Fecha CDATA #REQUIRED>
	<!ELEMENT Formato (#PCDATA)>
	<!ATTLIST Formato Nombre CDATA #REQUIRED>
    <!ELEMENT Clasificacion_ESRB (#PCDATA)>
	<!ATTLIST Clasificacion_ESRB Clasificacion CDATA #REQUIRED>
	<!ELEMENT Calificacion_Metacritic (#PCDATA)>
	<!ATTLIST Calificacion_Metacritic Calificacion CDATA #REQUIRED>
	<!ELEMENT Idiomas (Idioma+)>
	<!ELEMENT Idioma (#PCDATA)>
	<!ATTLIST Idioma Idioma_Juego CDATA #REQUIRED>
	<!ELEMENT Modos (Modo+)>
	<!ELEMENT Modo (#PCDATA)>
	<!ATTLIST Modo Modo_Juego CDATA #REQUIRED>
	
]>

<Ficha_tecnica>
	<Juego espacio_requerido= "-42 GB" >
		
		<Genero Nombre="Accion"> </Genero>
	
			
		
		<Plataformas>
			<Plataforma Nombre="Xbox one"> </Plataforma>
			<Plataforma Nombre="Play station 4"> </Plataforma>
		</Plataformas>
		<Fecha_Lanzamiento Fecha="09/10/2017"> </Fecha_Lanzamiento>
		<Formato Nombre="Fisico"> </Formato>
		<Clasificacion_ESRB Clasificacion="M"> </Clasificacion_ESRB>
		<Calificacion_Metacritic Calificacion = "60"> </Calificacion_Metacritic>
		<Idiomas>
			<Idioma  Idioma_Juego="Español"> </Idioma>
			<Idioma Idioma_Juego="Ingles"> </Idioma>
		</Idiomas>
		<Modos>
			<Modo Modo_Juego="Multijugador"> </Modo>
			<Modo Modo_Juego="Online"> </Modo>
			<Modo Modo_Juego="Un jugador"> </Modo>
			<Modo Modo_Juego="Offline"> </Modo>	
		</Modos>
	</Juego>
</Ficha_tecnica>');

--Mo unidades
update Unidades set color='negro' where numero_de_serie='3747251';