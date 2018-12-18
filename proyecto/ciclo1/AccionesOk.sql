INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE(sysdate,'dd/mm/yyyy'),'88445933');
INSERT into Surtimientos(numero,bodega,compra) values(SEQ_SURTIMIENTOS.nextval,'3','39');
Update Surtimientos set estado='A' Where numero='39';
INSERT into Unidades values('6487517',NULL,'17','39');
Delete from Surtimientos Where Numero='39';


INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(SEQ_PRODUCTOS.nextval,'81','Electronic arts','Mass effect 3','N/A','Juego','7','10x1x7');
INSERT into Juegos values('34','N/A',
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
	<Juego espacio_requerido= "42 GB" >
		
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
INSERT into Ofrecimientos values('665308893-4','34','70');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(SEQ_ABASTECIMIENTOS.nextval,'34','77','blanco','19','13');
Delete from Productos where id_producto='34';
DELETE FROM proveedores where identificacion='88445933';