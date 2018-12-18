INSERT into Bodegas (numero,direccion,capacidad)values('1','kra12 cll12 n16b','-100');


--Categorias
INSERT into Categorias(numero,nombre,descripcion) values('1','Coleccionable','Articulos de coleccion(figuras,posters,ediciones especiales,etc)');
INSERT into Categorias(numero,nombre,descripcion) values('2',null,'Articulos relacionados a consolas de Microsoft');
INSERT into Categorias(numero,nombre,descripcion) values('3','Consolas_sony','Articulos relacionados a consolas de Sony');
INSERT into Categorias(numero,nombre,descripcion) values('4','Consolas_nintendo','Articulos relacionados a consolas de Nintendo');
INSERT into Categorias(numero,nombre,descripcion) values('5','Computador',null);
INSERT into Categorias(numero,nombre,descripcion) values('6','Otros',null);
INSERT into Categorias(numero,nombre,descripcion) values('7','Juegos');
--Proveedores
INSERT into Proveedores (identificacion, nombre,telefono,direccion,correo,tipo_identificacion) values('5777869893-0','Microsoft','3033171123','kra1cll1','Microsoft@mail.com','NIT');
INSERT into Proveedores (identificacion, nombre,telefono,direccion,correo,tipo_identificacion) values('6653088812-2','Rockstar','8230123939','kra133c224','Rockstar@@mail.com','NIT');

--Productos
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values('1','-100','Microsoft','Control Xbox','N/A','Accesorio','2','10x10x20');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values('2','60','Rockstar','GtaV','N/A','Juego','7','10x1+7');






--Juegos
INSERT into Juegos values('3','N/A',
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
	<Juego espacio_requerido= "-40 GB" >
		
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
INSERT into Compras(numero,fecha,proveedor) values('1',TO_DATE('05/1/2018','dd/mm/yyyy'),'577780983-0');
INSERT into Compras(numero,fecha,proveedor) values('2',TO_DATE('05/11/2018','dd/mm/yyyy'),'665308882-3');

--Abastecimiento
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values('1','1','-90','negro','1','3');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values('2','2','50',null,'5','2');




--Surtimientos
INSERT into Surtimientos(numero,bodega,compra,fecha_envio,fecha_llegada,estado) values('1','1','1',TO_DATE('01/12/2018','dd/mm/yyyy'),TO_DATE('04/12/2018','dd/mm/yyyy'),'E');
INSERT into Surtimientos(numero,bodega,compra,fecha_envio,fecha_llegada,estado) values('2','2','2',TO_DATE('01/12/2018','dd/mm/yyyy'),TO_DATE('04/12/2018','dd/mm/yyyy'),'E');




--Unidades
INSERT into Unidades(numero_de_serie,color,producto,surtimiento) values('3747251','negro','1','1');
INSERT into Unidades(numero_de_serie,color,producto,surtimiento) values('4923498','negro','1','1');
INSERT into Unidades(numero_de_serie,color,producto,surtimiento) values('71048616','negro','3','1');
INSERT into Unidades(numero_de_serie,color,producto,surtimiento) values('73296069',null,'3','2');
INSERT into Unidades(numero_de_serie,color,producto,surtimiento) values('52331825',null,'2','4');



--Ofrecimientos
INSERT into Ofrecimientos(proveedor,producto,precio_actual) values('577786913-0','1','90');
INSERT into Ofrecimientos(proveedor,producto,precio_actual) values('665308182-2','2','-50');