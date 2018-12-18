INSERT into Bodegas (numero,direccion,capacidad)values('11','kra11 cll12 n16b','100');


--Categorias
INSERT into Categorias(numero,nombre,descripcion) values('11','Coleccionable1','Articulos de coleccion(figuras,posters,ediciones especiales,etc)');
INSERT into Categorias(numero,nombre,descripcion) values('12','Consolas_microsoft1','Articulos relacionados a consolas de Microsoft');
INSERT into Categorias(numero,nombre,descripcion) values('13','Consolas_sony1','Articulos relacionados a consolas de Sony');
INSERT into Categorias(numero,nombre,descripcion) values('14','Consolas_nintendo1','Articulos relacionados a consolas de Nintendo');
INSERT into Categorias(numero,nombre,descripcion) values('15','Computador1','N/A');
INSERT into Categorias(numero,nombre,descripcion) values('16','Otros1','N/A');
INSERT into Categorias(numero,nombre,descripcion) values('17','Juegos1','N/A');
--Proveedores
INSERT into Proveedores (identificacion, nombre,telefono,direccion,correo,tipo_identificacion) values('577716983-0','Microsoft','3033171123','kra1cl1','Microsoft1@mail.com','NIT');
INSERT into Proveedores (identificacion, nombre,telefono,direccion,correo,tipo_identificacion) values('665118882-2','Rockstar','8230123939','kra13c224','Rockstar1@mail.com','NIT');

--Productos
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values('1','100','Microsoft','Control Xbox1','N/A','Accesorio','12','10x10x20');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values('2','60','Rockstar','GtaV1','N/A','Juego','17','10x1x7');






--Juegos
INSERT into Juegos values('2','N/A',
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
	<Juego espacio_requerido= "40 GB" >
		
		<Genero Nombre="Shotter"> </Genero>
		
		<Plataformas>
			<Plataforma  Nombre="Xbox one"> </Plataforma>
			<Plataforma Nombre="Play station 4" > </Plataforma>
		</Plataformas>
		<Fecha_Lanzamiento Fecha="02/10/2016"> </Fecha_Lanzamiento>
		<Formato Nombre="Fisico" > </Formato>
		<Clasificacion_ESRB Clasificacion="M" > </Clasificacion_ESRB>
		<Calificacion_Metacritic Calificacion = "70"> </Calificacion_Metacritic>
		<Idiomas>
			<Idioma Idioma_Juego="Español" > </Idioma>
			<Idioma Idioma_Juego="Ingles" > </Idioma>
		</Idiomas>
		<Modos>
			<Modo Modo_Juego="Multijugador"> </Modo>
			<Modo Modo_Juego="Online" > </Modo>	
		</Modos>
	</Juego>
</Ficha_tecnica>');




--Compras

INSERT into Compras(numero,fecha,proveedor) values('1',TO_DATE('05/1/2018','dd/mm/yyyy'),'577716983-0');
INSERT into Compras(numero,fecha,proveedor) values('2',TO_DATE('05/11/2018','dd/mm/yyyy'),'665118882-2');

--Abastecimiento
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values('1','1','90','negro','1','3');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values('2','2','50',null,'2','2');


--Surtimientos
INSERT into Surtimientos(numero,bodega,compra,fecha_envio,fecha_llegada,estado) values('1','11','1',TO_DATE('01/12/2018','dd/mm/yyyy'),TO_DATE('04/12/2018','dd/mm/yyyy'),'E');
INSERT into Surtimientos(numero,bodega,compra,fecha_envio,fecha_llegada,estado) values('2','11','2',TO_DATE('01/12/2018','dd/mm/yyyy'),TO_DATE('04/12/2018','dd/mm/yyyy'),'E');




--Unidades
INSERT into Unidades(numero_de_serie,color,producto,surtimiento) values('347251','negro','1','1');
INSERT into Unidades(numero_de_serie,color,producto,surtimiento) values('423498','negro','1','1');
INSERT into Unidades(numero_de_serie,color,producto,surtimiento) values('708616','negro','1','1');
INSERT into Unidades(numero_de_serie,color,producto,surtimiento) values('796069',null,'2','2');
INSERT into Unidades(numero_de_serie,color,producto,surtimiento) values('531825',null,'2','2');



--Ofrecimientos
INSERT into Ofrecimientos(proveedor,producto,precio_actual) values('577716983-0','1','90');
INSERT into Ofrecimientos(proveedor,producto,precio_actual) values('665118882-2','2','50');



