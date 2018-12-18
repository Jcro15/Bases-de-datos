--Poblar
--Bodegas

INSERT into Bodegas values('1','kra12 cll12 n16b','100');
INSERT into Bodegas values('2','kra56h cll30 ','300');
INSERT into Bodegas values('3','kra100 cll9 ','325');
INSERT into Bodegas Values('4','kra26 n15-30','400');

--Categorias
INSERT into Categorias values('1','Coleccionable','Articulos de coleccion(figuras,posters,ediciones especiales,etc)');
INSERT into Categorias values('2','Consolas_microsoft','Articulos relacionados a consolas de Microsoft');
INSERT into Categorias values('3','Consolas_sony','Articulos relacionados a consolas de Sony');
INSERT into Categorias values('4','Consolas_nintendo','Articulos relacionados a consolas de Nintendo');
INSERT into Categorias values('5','Computador','N/A');
INSERT into Categorias values('6','Otros','N/A');
INSERT into Categorias values('7','Juegos','N/A');
--Proveedores
INSERT into Proveedores values('577786983-0','Microsoft','3033171123','kra1cll1','Microsoft@mail.com','NIT');
INSERT into Proveedores values('134581746-0','Nintendo','3833171123','kra2cll2','Nintendo@mail.com','NIT');
INSERT into Proveedores values('988713562-3','Sony','6081183933','kra3cll3','Sony@mail.com','NIT');
INSERT into Proveedores values('895462440-4','Amd','9700602736','kra4cll4','AMD@mail.com','NIT');
INSERT into Proveedores values('907642574-8','Nvidia','2866351122','kra5cll5','NVIDIA@mail.com','NIT');
INSERT into Proveedores values('766700621-7','Intel','1446564490','kra6cll6','NTEL@mail.com','NIT');
INSERT into Proveedores values('146056026-8','Funko Pop','7557325043','kra7cll7','FUNKO_POP@mail.com','NIT');
INSERT into Proveedores values('771938913-7','Razer','1268161122','kra8cll8','RAZER@mail.com','NIT');
INSERT into Proveedores values('754350832-5','Msi','6105154248','kra9cll9','MSI@mail.com','NIT');
INSERT into Proveedores values('626247203-8','Logitech','9668395416','kra10cll10','LOGITECH@mail.com','NIT');
INSERT into Proveedores values('379688172-9','Hot Toys','8813722444','kra11cll11','HOT_TOYS@mail.com','NIT');
INSERT into Proveedores values('823044659-9','Ktronix','3667614234','kra26cll15','ktronix@mail.com','NIT');
INSERT into Proveedores values('139309292-7','Jyrtechnology','5966711278','cll123kral12','jyrtechnology@mail.com','NIT');
INSERT into Proveedores values('492077512-7','Colombiagamer','1591402240','kra50cll226','colombiagamer@mail.com','NIT');
INSERT into Proveedores values('496529180-4','Tecnoluna','3036625618','cll26kra12','Tecnoluna@mail.com','NIT');
INSERT into Proveedores values('11234045','Carlos Rodriguez','1256442479','kra123cl56','Cr@mail.com','CC');
INSERT into Proveedores values('50330068','Juan Rios','3339311086','cll13kra123','Jr@mail.com','CC');
INSERT into Proveedores values('10981343','Nicolas Forero','5054962942','kra13cl26','Nf@mail.com','CC');
INSERT into Proveedores values('88445933','Carlos Pinilla','1508833172','kra223cl56','Cp@mail.com','CC');
INSERT into Proveedores values('365202340-1','Gigabytecolombia','1799660543','kra133cl56','gigabytecolombia@mail.com','NIT');
INSERT into Proveedores values('665308871-2','tauretcomputadores','8230123938','kra133c223','tauretcomputadores@mail.com','NIT');
INSERT into Proveedores values('665308882-2','Rockstar','8230123939','kra133c224','Rockstar@mail.com','NIT');
INSERT into Proveedores values('665308893-4','Panamericana','8230123940','kra133c225','Panamericana@mail.com','NIT');
INSERT into Proveedores values('665308904-5','Electronic arts','8230123941','kra233c225','Electronicarts@mail.com','NIT');
--Productos
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'100','Microsoft','Control Xbox','N/A','Accesorio','2','10x10x20');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'1000','Microsoft','Xbox One','N/A','Tecnologia','2','50x30x20');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'850','Sony','Play Station 4','N/A','Tecnologia','3','50x32x21');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'20','Funko Pop','Figura Wow','N/A','Decorativo','1','15x9x9');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'500','AMD','Procesador Raisen','N/A','Tecnologia','5','30x30x21');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'160','Electronic arts','FIFA 19','N/A','Juego','7','10x1x7');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'180','Microsoft','Halo 5','N/A','Juego','7','10x1x7');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'500','Msi','Gabinete','N/A','Accesorio','5','60x50x38');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'60','Logitech','Mouse','N/A','Accesorio','5','20x30x15');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'1100','Nintendo','Nintendo Switch','N/A','Tecnologia','4','40x20x34');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'160','Electronic arts','Titanfall','N/A','Juego','7','10x1x7');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'50','independiente','Figura Mario Bros','N/A','Decorativo','1','20x12x9');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'260','Nvidia','Nvidia_gtx1080','N/A','Tecnologia','5','20x12x10');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'60','jyr','Mouse_gaming_jr','N/A','Accesorio','5','21x10x13');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'10','independiente','Parche Halo','N/A','Decorativo','6','5x1x1');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'1400','Microsoft','Xbox One S','N/A','Tecnologia','2','50x39x30');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'120','Intel','Intel Core i5','N/A','Tecnologia','5','30x29x20');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'90','Hot toys','Figura batman','N/A','Decorativo','1','40x10x5');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'50','Msi','Teclado Gaming','N/A','Accesorio','5','40x10x20');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'70','Msi','Silla Gaming','N/A','Accesorio','5','50x39x30');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'90','Razer','Audifonos Gaming','N/A','Accesorio','5','30x29x39');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'70','Electronic arts','Battlefield 5','N/A','Juego','7','10x1x7');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'60','Rockstar','GtaV','N/A','Juego','7','10x1x7');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'77','Microsoft','Forza 4','N/A','Juego','7','10x1x7');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'59','Nintendo','Super Mario Odessey','N/A','Juego','7','10x1x7');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'62','Microsoft','Gears of war','N/A','Juego','7','10x1x7');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'71','Electronic arts','Mass effect','N/A','Juego','7','10x1x7');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'90','Sony','Control Play 4','N/A','Accesorio','3','10x19x15');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'20','independiente','Stickers Wow','N/A','Decorativo','1','9x1x15');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'5','independiente','Poster Gears of war','N/A','Decorativo','1','10x13x15');
INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'20','Razer','Pad mouse','N/A','Accesorio','5','10x29x17');


--INSERT into Productos(id_producto,precio,marca,nombre,descripcion,tipo,categoria,tamaño) values(seq_productos.nextval,'340','Intel','Procesador Intel Core i9','N/A','Tecnologia','5','30x20x20');


--Juegos
INSERT into Juegos values('13','N/A',
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




INSERT into Juegos values('8','N/A',
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
	<Juego espacio_requerido= "30 GB" >
		
		<Genero Nombre="Deportes"> </Genero>
		
		<Plataformas>
			<Plataforma Nombre="Xbox one"> </Plataforma>
			<Plataforma Nombre="Play station 4"> </Plataforma>
			<Plataforma Nombre="PC"> </Plataforma>
			<Plataforma  Nombre="Nintendo"> </Plataforma>
		</Plataformas>
		<Fecha_Lanzamiento Fecha="02/10/2018" > </Fecha_Lanzamiento>
		<Formato Nombre="Digital"> </Formato>
		<Clasificacion_ESRB Clasificacion="T"> </Clasificacion_ESRB>
		<Calificacion_Metacritic Calificacion = "73"> </Calificacion_Metacritic>
		<Idiomas>
			<Idioma  Idioma_Juego="Español"> </Idioma>
			<Idioma Idioma_Juego="Ingles"> </Idioma>
			<Idioma Idioma_Juego="Portugues"> </Idioma>
		</Idiomas>
		<Modos>
			<Modo Modo_Juego="Multijugador"> </Modo>
			<Modo Modo_Juego="Un jugador"> </Modo>
			<Modo Modo_Juego="Online"> </Modo>
			<Modo Modo_Juego="Offline"> </Modo>			
		</Modos>
	</Juego>
</Ficha_tecnica>');


INSERT into Juegos values('9','N/A',
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
	<Juego espacio_requerido= "40.5 GB" >
		
			
		<Genero Nombre="Accion"> </Genero>
			
		
		<Plataformas>
			<Plataforma Nombre="Xbox one"> </Plataforma>
		</Plataformas>
		<Fecha_Lanzamiento Fecha="20/05/2018"> </Fecha_Lanzamiento>
		<Formato Nombre="Fisico"> </Formato>
		<Clasificacion_ESRB Clasificacion="M"> </Clasificacion_ESRB>
		<Calificacion_Metacritic Calificacion = "77"> </Calificacion_Metacritic>
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
INSERT into Juegos values('24','N/A',
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
	<Juego espacio_requerido= "40.5 GB" >
		
		<Genero Nombre="Shotter"> </Genero>
			
		
		<Plataformas>
			<Plataforma Nombre="Xbox one"> </Plataforma>
			<Plataforma Nombre="Play station 4"> </Plataforma>
			<Plataforma Nombre="PC"> </Plataforma>
		</Plataformas>
		<Fecha_Lanzamiento Fecha="15/04/2016"> </Fecha_Lanzamiento>
		<Formato Nombre="Digital"> </Formato>
		<Clasificacion_ESRB Clasificacion="M"> </Clasificacion_ESRB>
		<Calificacion_Metacritic Calificacion = "82"> </Calificacion_Metacritic>
		<Idiomas>
			<Idioma  Idioma_Juego="Español"> </Idioma>
			<Idioma Idioma_Juego="Ingles"> </Idioma>
			<Idioma Idioma_Juego="Portugues"> </Idioma>
		</Idiomas>
		<Modos>
			<Modo Modo_Juego="Multijugador"> </Modo>
			<Modo Modo_Juego="Online"> </Modo>
			<Modo Modo_Juego="Un jugador"> </Modo>
			<Modo Modo_Juego="Offline"> </Modo>	
		</Modos>
	</Juego>
</Ficha_tecnica>');

INSERT into Juegos values('25','N/A',
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
	<Juego espacio_requerido= "43 GB" >
		
		<Genero Nombre="Shotter"> </Genero>
		
		<Plataformas>
			<Plataforma Nombre="Xbox one"> </Plataforma>
			<Plataforma Nombre="Play station 4"> </Plataforma>
			<Plataforma Nombre="PC"> </Plataforma>
		</Plataformas>
		<Fecha_Lanzamiento Fecha="25/06/2016"> </Fecha_Lanzamiento>
		<Formato Nombre="Fisico"> </Formato>
		<Clasificacion_ESRB Clasificacion="M"> </Clasificacion_ESRB>
		<Calificacion_Metacritic Calificacion = "92"> </Calificacion_Metacritic>
		<Idiomas>
			<Idioma  Idioma_Juego="Español"> </Idioma>
			<Idioma Idioma_Juego="Ingles"> </Idioma>
			<Idioma Idioma_Juego="Portugues"> </Idioma>
			<Idioma Idioma_Juego="Frances"> </Idioma>
		</Idiomas>
		<Modos>
			<Modo Modo_Juego="Multijugador"> </Modo>
			<Modo Modo_Juego="Online"> </Modo>
			<Modo Modo_Juego="Un jugador"> </Modo>
			<Modo Modo_Juego="Offline"> </Modo>	
		</Modos>
	</Juego>
</Ficha_tecnica>');
INSERT into Juegos values('26','N/A',
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
	<Juego espacio_requerido= "43 GB" >
		
		<Genero Nombre="Carreras"> </Genero>
			
		
		<Plataformas>
			<Plataforma Nombre="Xbox one"> </Plataforma>
		</Plataformas>
		<Fecha_Lanzamiento Fecha="20/08/2017"> </Fecha_Lanzamiento>
		<Formato Nombre="Fisico"> </Formato>
		<Clasificacion_ESRB Clasificacion="T"> </Clasificacion_ESRB>
		<Calificacion_Metacritic Calificacion = "79"> </Calificacion_Metacritic>
		<Idiomas>
			<Idioma  Idioma_Juego="Español"> </Idioma>
			<Idioma Idioma_Juego="Ingles"> </Idioma>
		</Idiomas>
		<Modos>
			<Modo Modo_Juego="Multijugador"> </Modo>
			<Modo Modo_Juego="Online"> </Modo>	
		</Modos>
	</Juego>
</Ficha_tecnica>');
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
	<Juego espacio_requerido= "23 GB" >
		
		<Genero Nombre="Aventuras"> </Genero>
			
		
		<Plataformas>
			<Plataforma  Nombre="Nintendo"> </Plataforma>
		</Plataformas>
		<Fecha_Lanzamiento Fecha="20/04/2018"> </Fecha_Lanzamiento>
		<Formato Nombre="Fisico"> </Formato>
		<Clasificacion_ESRB Clasificacion="E"> </Clasificacion_ESRB>
		<Calificacion_Metacritic Calificacion = "89"> </Calificacion_Metacritic>
		<Idiomas>
			<Idioma  Idioma_Juego="Español"> </Idioma>
			<Idioma Idioma_Juego="Ingles"> </Idioma>
			<Idioma Idioma_Juego="Japones"> </Idioma>
		</Idiomas>
		<Modos>
			<Modo Modo_Juego="Un jugador"> </Modo>
			<Modo Modo_Juego="Offline"> </Modo>	
		</Modos>
	</Juego>
</Ficha_tecnica>');

INSERT into Juegos values('28','N/A',
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
	<Juego espacio_requerido= "42.5 GB" >
		
		
		<Genero Nombre="Shotter"> </Genero>
			
		
		<Plataformas>
			<Plataforma Nombre="Xbox one"> </Plataforma>
		</Plataformas>
		<Fecha_Lanzamiento Fecha="29/09/2017"> </Fecha_Lanzamiento>
		<Formato Nombre="Digital"> </Formato>
		<Clasificacion_ESRB Clasificacion="M"> </Clasificacion_ESRB>
		<Calificacion_Metacritic Calificacion = "80"> </Calificacion_Metacritic>
		<Idiomas>
			<Idioma  Idioma_Juego="Español"> </Idioma>
			<Idioma Idioma_Juego="Ingles"> </Idioma>
			<Idioma Idioma_Juego="Portugues"> </Idioma>
		</Idiomas>
		<Modos>
			<Modo Modo_Juego="Un jugador"> </Modo>
			<Modo Modo_Juego="Offline"> </Modo>	
		</Modos>
	</Juego>
</Ficha_tecnica>'
);
INSERT into Juegos values('29','N/A',
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
--Ofrecimientos
INSERT into Ofrecimientos values('577786983-0','3','90');
INSERT into Ofrecimientos values('577786983-0','4','930');
INSERT into Ofrecimientos values('577786983-0','9','170');
INSERT into Ofrecimientos values('577786983-0','18','120');
INSERT into Ofrecimientos values('577786983-0','26','65');
INSERT into Ofrecimientos values('577786983-0','28','55');
INSERT into Ofrecimientos values('134581746-0','12','900');
INSERT into Ofrecimientos values('134581746-0','27','51');
INSERT into Ofrecimientos values('988713562-3','5','820');
INSERT into Ofrecimientos values('988713562-3','30','78');
INSERT into Ofrecimientos values('895462440-4','7','420');
INSERT into Ofrecimientos values('907642574-8','15','220');
INSERT into Ofrecimientos values('766700621-7','19','98');
INSERT into Ofrecimientos values('146056026-8','6','15');
INSERT into Ofrecimientos values('771938913-7','23','80');
INSERT into Ofrecimientos values('771938913-7','33','17');
INSERT into Ofrecimientos values('754350832-5','10','440');
INSERT into Ofrecimientos values('754350832-5','21','40');
INSERT into Ofrecimientos values('754350832-5','22','65');
INSERT into Ofrecimientos values('626247203-8','11','50');
INSERT into Ofrecimientos values('379688172-9','20','78');
INSERT into Ofrecimientos values('823044659-9','3','77');
INSERT into Ofrecimientos values('823044659-9','4','970');
INSERT into Ofrecimientos values('823044659-9','5','840');
INSERT into Ofrecimientos values('823044659-9','6','18');
INSERT into Ofrecimientos values('823044659-9','8','140');
INSERT into Ofrecimientos values('823044659-9','9','177');
INSERT into Ofrecimientos values('823044659-9','12','990');
INSERT into Ofrecimientos values('823044659-9','18','1320');
INSERT into Ofrecimientos values('823044659-9','26','70');
INSERT into Ofrecimientos values('823044659-9','30','66');
INSERT into Ofrecimientos values('139309292-7','16','55');
INSERT into Ofrecimientos values('492077512-7','8','155');
INSERT into Ofrecimientos values('492077512-7','9','176');
INSERT into Ofrecimientos values('492077512-7','13','150');
INSERT into Ofrecimientos values('492077512-7','24','50');
INSERT into Ofrecimientos values('492077512-7','25','56');
INSERT into Ofrecimientos values('492077512-7','26','60');
INSERT into Ofrecimientos values('492077512-7','27','58');
INSERT into Ofrecimientos values('492077512-7','28','55');
INSERT into Ofrecimientos values('492077512-7','29','65');
INSERT into Ofrecimientos values('496529180-4','7','400');
INSERT into Ofrecimientos values('496529180-4','10','480');
INSERT into Ofrecimientos values('496529180-4','11','49');
INSERT into Ofrecimientos values('496529180-4','15','248');
INSERT into Ofrecimientos values('496529180-4','19','113');
INSERT into Ofrecimientos values('496529180-4','21','40');
INSERT into Ofrecimientos values('496529180-4','23','75');
INSERT into Ofrecimientos values('496529180-4','33','10');
INSERT into Ofrecimientos values('11234045','14','40');
INSERT into Ofrecimientos values('50330068','17','7');
INSERT into Ofrecimientos values('10981343','31','11');
INSERT into Ofrecimientos values('88445933','32','2');
INSERT into Ofrecimientos values('365202340-1','4','800');
INSERT into Ofrecimientos values('365202340-1','7','450');
INSERT into Ofrecimientos values('365202340-1','10','470');
INSERT into Ofrecimientos values('365202340-1','15','210');
INSERT into Ofrecimientos values('365202340-1','16','45');
INSERT into Ofrecimientos values('365202340-1','19','110');
INSERT into Ofrecimientos values('365202340-1','21','42');
INSERT into Ofrecimientos values('365202340-1','22','50');
INSERT into Ofrecimientos values('365202340-1','23','77');
INSERT into Ofrecimientos values('365202340-1','33','19');
INSERT into Ofrecimientos values('665308871-2','4','800');
INSERT into Ofrecimientos values('665308871-2','7','450');
INSERT into Ofrecimientos values('665308871-2','10','470');
INSERT into Ofrecimientos values('665308871-2','15','210');
INSERT into Ofrecimientos values('665308871-2','16','45');
INSERT into Ofrecimientos values('665308871-2','19','110');
INSERT into Ofrecimientos values('665308871-2','21','42');
INSERT into Ofrecimientos values('665308871-2','23','77');
INSERT into Ofrecimientos values('665308871-2','33','19');
INSERT into Ofrecimientos values('665308871-2','18','1310');
INSERT into Ofrecimientos values('665308882-2','25','40');
INSERT into Ofrecimientos values('665308893-4','3','80');
INSERT into Ofrecimientos values('665308893-4','4','990');
INSERT into Ofrecimientos values('665308893-4','5','840');
INSERT into Ofrecimientos values('665308893-4','6','13');
INSERT into Ofrecimientos values('665308893-4','9','170');
INSERT into Ofrecimientos values('665308893-4','13','150');
INSERT into Ofrecimientos values('665308893-4','24','67');
INSERT into Ofrecimientos values('665308893-4','25','48');
INSERT into Ofrecimientos values('665308893-4','26','70');
INSERT into Ofrecimientos values('665308893-4','27','40');
INSERT into Ofrecimientos values('665308893-4','30','70');
INSERT into Ofrecimientos values('665308904-5','8','150');
INSERT into Ofrecimientos values('665308904-5','13','145');
INSERT into Ofrecimientos values('665308904-5','24','60');
INSERT into Ofrecimientos values('665308904-5','29','63');



--Compras
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE('05/09/2017','dd/mm/yyyy'),'577786983-0');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE('05/09/2018','dd/mm/yyyy'),'665308893-4');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE('05/09/2018','dd/mm/yyyy'),'823044659-9');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE('05/09/2018','dd/mm/yyyy'),'365202340-1');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE('05/09/2018','dd/mm/yyyy'),'665308871-2');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE('05/09/2018','dd/mm/yyyy'),'492077512-7');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE('05/09/2018','dd/mm/yyyy'),'496529180-4');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE('05/09/2018','dd/mm/yyyy'),'626247203-8');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE('05/09/2018','dd/mm/yyyy'),'11234045');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE('05/09/2018','dd/mm/yyyy'),'139309292-7');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE('05/09/2018','dd/mm/yyyy'),'50330068');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE('05/09/2018','dd/mm/yyyy'),'379688172-9');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE('05/09/2018','dd/mm/yyyy'),'754350832-5');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE('05/09/2018','dd/mm/yyyy'),'771938913-7');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE('05/09/2018','dd/mm/yyyy'),'988713562-3');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE('05/09/2018','dd/mm/yyyy'),'10981343');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE('05/09/2018','dd/mm/yyyy'),'88445933');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE(sysdate,'dd/mm/yyyy'),'823044659-9');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE(sysdate,'dd/mm/yyyy'),'365202340-1');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE(sysdate,'dd/mm/yyyy'),'665308871-2');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE(sysdate,'dd/mm/yyyy'),'988713562-3');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE(sysdate,'dd/mm/yyyy'),'665308893-4');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE(sysdate,'dd/mm/yyyy'),'496529180-4');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE(sysdate,'dd/mm/yyyy'),'577786983-0');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE(sysdate,'dd/mm/yyyy'),'754350832-5');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE(sysdate,'dd/mm/yyyy'),'134581746-0');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE(sysdate,'dd/mm/yyyy'),'665308904-5');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE(sysdate,'dd/mm/yyyy'),'11234045');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE(sysdate,'dd/mm/yyyy'),'50330068');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE(sysdate,'dd/mm/yyyy'),'766700621-7');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE(sysdate,'dd/mm/yyyy'),'379688172-9');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE(sysdate,'dd/mm/yyyy'),'492077512-7');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE(sysdate,'dd/mm/yyyy'),'665308882-2');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE(sysdate,'dd/mm/yyyy'),'10981343');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE(sysdate,'dd/mm/yyyy'),'88445933');

--Abastecimiento
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'1','90','negro','3','15');

INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'26','55',NULL,'3','20');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'2','990','negro','4','12');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'11','150',NULL,'4','19');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'22','67',NULL,'4','20');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'24','70',NULL,'4','29');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'3','840','negro','5','21');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'4','18',NULL,'5','13');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'7','177',NULL,'5','10');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'10','990','negro','5','10');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'16','1320','blanco','5','23');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'19','42','negro','6','7');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'31','19','azul','6','15');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'5','450',NULL,'7','30');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'6','155',NULL,'8','24');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'23','56',NULL,'8','17');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'25','58',NULL,'8','25');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'27','65',NULL,'8','7');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'8','480','blanco','9','14');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'13','248',NULL,'9','13');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'17','113',NULL,'9','21');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'9','50','azul','10','20');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'12','40',NULL,'11','10');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'14','55','negro','12','18');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'15','7','negro','13','8');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'18','78',NULL,'14','13');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'20','65','rojo','14','24');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'21','80','negro','16','14');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'28','78','gris','17','28');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'29','11',NULL,'18','8');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'30','2',NULL,'19','10');

INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'1','77','blanco','20','13');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'6','140',NULL,'20','20');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'28','66','negro','20','15');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'2','800','negro','21','22');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'13','210',NULL,'21','12');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'20','50','azul','21','17');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'14','45','negro','22','40');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'3','820','negro','23','30');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'4','13',NULL,'24','30');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'7','170',NULL,'24','12');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'25','40',NULL,'24','27');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'5','400',NULL,'25','45');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'9','49','blanco','25','21');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'19','40','negro','25','17');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'21','75','azul','25','12');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'31','10','negro','25','38');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'16','1200','negro','26','53');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'26','55',NULL,'26','36');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'8','440','negro','27','38');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'10','900','negro','28','33');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'11','145',NULL,'29','22');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'27','63',NULL,'29','45');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'12','40',NULL,'30','28');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'15','7','negro','31','14');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'17','98',NULL,'32','44');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'18','78','negro','33','14');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'22','50',NULL,'34','30');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'24','60',NULL,'34','10');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'23','40',NULL,'35','10');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'29','11',NULL,'36','12');
INSERT into Abastecimientos(linea_compra,producto,precio_compra,color,compra,cantidad) values(seq_abastecimientos.nextval,'30','2',NULL,'37','9');


--Surtimientos



INSERT into Surtimientos(numero,bodega,compra,fecha_envio,fecha_llegada,estado) values(seq_surtimientos.nextval,'3','3',TO_DATE('05/09/2018','dd/mm/yyyy'),TO_DATE('05/09/2018','dd/mm/yyyy'),'E');
INSERT into Surtimientos(numero,bodega,compra,fecha_envio,fecha_llegada,estado) values(seq_surtimientos.nextval,'4','4',TO_DATE('05/09/2018','dd/mm/yyyy'),TO_DATE('06/09/2018','dd/mm/yyyy'),'E');
INSERT into Surtimientos(numero,bodega,compra,fecha_envio,fecha_llegada,estado) values(seq_surtimientos.nextval,'1','5',TO_DATE('05/09/2018','dd/mm/yyyy'),TO_DATE('05/09/2018','dd/mm/yyyy'),'E');
INSERT into Surtimientos(numero,bodega,compra,fecha_envio,fecha_llegada,estado) values(seq_surtimientos.nextval,'2','6',TO_DATE('05/09/2018','dd/mm/yyyy'),TO_DATE('06/09/2018','dd/mm/yyyy'),'E');
INSERT into Surtimientos(numero,bodega,compra,fecha_envio,fecha_llegada,estado) values(seq_surtimientos.nextval,'3','7',TO_DATE('05/09/2018','dd/mm/yyyy'),TO_DATE('07/09/2018','dd/mm/yyyy'),'E');
INSERT into Surtimientos(numero,bodega,compra,fecha_envio,fecha_llegada,estado) values(seq_surtimientos.nextval,'2','8',TO_DATE('05/09/2018','dd/mm/yyyy'),TO_DATE('08/09/2018','dd/mm/yyyy'),'E');
INSERT into Surtimientos(numero,bodega,compra,fecha_envio,fecha_llegada,estado) values(seq_surtimientos.nextval,'4','9',TO_DATE('05/09/2018','dd/mm/yyyy'),TO_DATE('05/09/2018','dd/mm/yyyy'),'E');
INSERT into Surtimientos(numero,bodega,compra,fecha_envio,fecha_llegada,estado) values(seq_surtimientos.nextval,'2','10',TO_DATE('05/09/2018','dd/mm/yyyy'),TO_DATE('06/09/2018','dd/mm/yyyy'),'E');
INSERT into Surtimientos(numero,bodega,compra,fecha_envio,fecha_llegada,estado) values(seq_surtimientos.nextval,'3','11',TO_DATE('05/09/2018','dd/mm/yyyy'),TO_DATE('07/09/2018','dd/mm/yyyy'),'E');
INSERT into Surtimientos(numero,bodega,compra,fecha_envio,fecha_llegada,estado) values(seq_surtimientos.nextval,'3','12',TO_DATE('05/09/2018','dd/mm/yyyy'),TO_DATE('07/09/2018','dd/mm/yyyy'),'E');
INSERT into Surtimientos(numero,bodega,compra,fecha_envio,fecha_llegada,estado) values(seq_surtimientos.nextval,'2','13',TO_DATE('05/09/2018','dd/mm/yyyy'),TO_DATE('08/09/2018','dd/mm/yyyy'),'E');
INSERT into Surtimientos(numero,bodega,compra,fecha_envio,fecha_llegada,estado) values(seq_surtimientos.nextval,'1','14',TO_DATE('05/09/2018','dd/mm/yyyy'),TO_DATE('10/09/2018','dd/mm/yyyy'),'E');
INSERT into Surtimientos(numero,bodega,compra,fecha_envio,fecha_llegada,estado) values(seq_surtimientos.nextval,'2','15',TO_DATE('05/09/2018','dd/mm/yyyy'),TO_DATE('09/09/2018','dd/mm/yyyy'),'E');
INSERT into Surtimientos(numero,bodega,compra,fecha_envio,fecha_llegada,estado) values(seq_surtimientos.nextval,'3','16',TO_DATE('05/09/2018','dd/mm/yyyy'),TO_DATE('11/09/2018','dd/mm/yyyy'),'E');
INSERT into Surtimientos(numero,bodega,compra,fecha_envio,fecha_llegada,estado) values(seq_surtimientos.nextval,'1','17',TO_DATE('05/09/2018','dd/mm/yyyy'),TO_DATE('06/09/2018','dd/mm/yyyy'),'E');
INSERT into Surtimientos(numero,bodega,compra,fecha_envio,fecha_llegada,estado) values(seq_surtimientos.nextval,'1','18',TO_DATE('05/09/2018','dd/mm/yyyy'),TO_DATE('07/09/2018','dd/mm/yyyy'),'E');
INSERT into Surtimientos(numero,bodega,compra,fecha_envio,fecha_llegada,estado) values(seq_surtimientos.nextval,'2','19',TO_DATE('05/09/2018','dd/mm/yyyy'),TO_DATE('08/09/2018','dd/mm/yyyy'),'E');
INSERT into Surtimientos(numero,bodega,compra) values(seq_surtimientos.nextval,'4','20');
INSERT into Surtimientos(numero,bodega,compra) values(seq_surtimientos.nextval,'3','21');
INSERT into Surtimientos(numero,bodega,compra) values(seq_surtimientos.nextval,'4','22');
INSERT into Surtimientos(numero,bodega,compra) values(seq_surtimientos.nextval,'1','23');
INSERT into Surtimientos(numero,bodega,compra) values(seq_surtimientos.nextval,'2','24');
INSERT into Surtimientos(numero,bodega,compra) values(seq_surtimientos.nextval,'3','25');
INSERT into Surtimientos(numero,bodega,compra) values(seq_surtimientos.nextval,'2','26');
INSERT into Surtimientos(numero,bodega,compra) values(seq_surtimientos.nextval,'4','27');
INSERT into Surtimientos(numero,bodega,compra) values(seq_surtimientos.nextval,'2','28');
INSERT into Surtimientos(numero,bodega,compra) values(seq_surtimientos.nextval,'3','29');
INSERT into Surtimientos(numero,bodega,compra) values(seq_surtimientos.nextval,'3','30');
INSERT into Surtimientos(numero,bodega,compra) values(seq_surtimientos.nextval,'2','31');
INSERT into Surtimientos(numero,bodega,compra) values(seq_surtimientos.nextval,'1','32');
INSERT into Surtimientos(numero,bodega,compra) values(seq_surtimientos.nextval,'2','33');
INSERT into Surtimientos(numero,bodega,compra) values(seq_surtimientos.nextval,'3','34');
INSERT into Surtimientos(numero,bodega,compra) values(seq_surtimientos.nextval,'1','35');
INSERT into Surtimientos(numero,bodega,compra) values(seq_surtimientos.nextval,'1','36');
INSERT into Surtimientos(numero,bodega,compra) values(seq_surtimientos.nextval,'2','37');









--Unidades
update surtimientos set estado='E' where numero='20';
INSERT into Unidades values('3747251','blanco',3,'20');
INSERT into Unidades values('4923498','blanco',3,'20');
INSERT into Unidades values('7048616','blanco',3,'20');
INSERT into Unidades values('7396069','blanco',3,'20');
INSERT into Unidades values('5231825','blanco',3,'20');
INSERT into Unidades values('4859412','blanco',3,'20');
INSERT into Unidades values('5997762','blanco',3,'20');
INSERT into Unidades values('1315832','blanco',3,'20');
INSERT into Unidades values('2044996','blanco',3,'20');
INSERT into Unidades values('1395423','blanco',3,'20');
INSERT into Unidades values('5355141','blanco',3,'20');
INSERT into Unidades values('8843432','blanco',3,'20');
INSERT into Unidades values('8390778','blanco',3,'20');
INSERT into Unidades values('6491450', NULL,8,'20');
INSERT into Unidades values('3889785', NULL,8,'20');
INSERT into Unidades values('2822587', NULL,8,'20');
INSERT into Unidades values('6781486', NULL,8,'20');
INSERT into Unidades values('3990661', NULL,8,'20');
INSERT into Unidades values('9083868', NULL,8,'20');
INSERT into Unidades values('8407976', NULL,8,'20');
INSERT into Unidades values('3292083', NULL,8,'20');
INSERT into Unidades values('8295158', NULL,8,'20');
INSERT into Unidades values('6008840', NULL,8,'20');
INSERT into Unidades values('5543019', NULL,8,'20');
INSERT into Unidades values('2939732', NULL,8,'20');
INSERT into Unidades values('2395019', NULL,8,'20');
INSERT into Unidades values('2585932', NULL,8,'20');
INSERT into Unidades values('1457143', NULL,8,'20');
INSERT into Unidades values('5177659', NULL,8,'20');
INSERT into Unidades values('4614107', NULL,8,'20');
INSERT into Unidades values('6026393', NULL,8,'20');
INSERT into Unidades values('5674051', NULL,8,'20');
INSERT into Unidades values('6557803', NULL,8,'20');
INSERT into Unidades values('7058305','negro',30,'20');
INSERT into Unidades values('3749139','negro',30,'20');
INSERT into Unidades values('3405422','negro',30,'20');
INSERT into Unidades values('3410059','negro',30,'20');
INSERT into Unidades values('9583204','negro',30,'20');
INSERT into Unidades values('3588251','negro',30,'20');
INSERT into Unidades values('7433698','negro',30,'20');
INSERT into Unidades values('9732870','negro',30,'20');
INSERT into Unidades values('9154004','negro',30,'20');
INSERT into Unidades values('6564291','negro',30,'20');
INSERT into Unidades values('2654979','negro',30,'20');
INSERT into Unidades values('2173747','negro',30,'20');
INSERT into Unidades values('3739963','negro',30,'20');
INSERT into Unidades values('2931858','negro',30,'20');
update surtimientos set estado='E' where numero='21';
INSERT into Unidades values('9079147','negro',4,'21');
INSERT into Unidades values('9781291','negro',4,'21');
INSERT into Unidades values('3816370','negro',4,'21');
INSERT into Unidades values('6596349','negro',4,'21');
INSERT into Unidades values('3151099','negro',4,'21');
INSERT into Unidades values('8558853','negro',4,'21');
INSERT into Unidades values('6101615','negro',4,'21');
INSERT into Unidades values('9865213','negro',4,'21');
INSERT into Unidades values('9792478','negro',4,'21');
INSERT into Unidades values('9882404','negro',4,'21');
INSERT into Unidades values('9380319','negro',4,'21');
INSERT into Unidades values('2233194','negro',4,'21');
INSERT into Unidades values('7495100','negro',4,'21');
INSERT into Unidades values('8091939','negro',4,'21');
INSERT into Unidades values('7754200','negro',4,'21');
INSERT into Unidades values('4274461','negro',4,'21');
INSERT into Unidades values('2961041','negro',4,'21');
INSERT into Unidades values('3126677','negro',4,'21');
INSERT into Unidades values('9294524','negro',4,'21');
INSERT into Unidades values('9498538','negro',4,'21');
INSERT into Unidades values('6033659','negro',4,'21');
INSERT into Unidades values('8160238','negro',4,'21');
INSERT into Unidades values('5777397', NULL,15,'21');
INSERT into Unidades values('8639968', NULL,15,'21');
INSERT into Unidades values('2718582', NULL,15,'21');
INSERT into Unidades values('2587909', NULL,15,'21');
INSERT into Unidades values('4588316', NULL,15,'21');
INSERT into Unidades values('8991732', NULL,15,'21');
INSERT into Unidades values('9426702', NULL,15,'21');
INSERT into Unidades values('1676498', NULL,15,'21');
INSERT into Unidades values('5396330', NULL,15,'21');
INSERT into Unidades values('1695879', NULL,15,'21');
INSERT into Unidades values('5851666', NULL,15,'21');
INSERT into Unidades values('2784515', NULL,15,'21');
INSERT into Unidades values('7903884','azul',22,'21');
INSERT into Unidades values('4170910','azul',22,'21');
INSERT into Unidades values('2461047','azul',22,'21');
INSERT into Unidades values('9041348','azul',22,'21');
INSERT into Unidades values('4718172','azul',22,'21');
INSERT into Unidades values('2497402','azul',22,'21');
INSERT into Unidades values('9530730','azul',22,'21');
INSERT into Unidades values('1099816','azul',22,'21');
INSERT into Unidades values('1551803','azul',22,'21');
INSERT into Unidades values('3085054','azul',22,'21');
INSERT into Unidades values('8241597','azul',22,'21');
INSERT into Unidades values('8521589','azul',22,'21');
INSERT into Unidades values('5731568','azul',22,'21');
INSERT into Unidades values('6968849','azul',22,'21');
INSERT into Unidades values('2594584','azul',22,'21');
INSERT into Unidades values('3205673','azul',22,'21');
INSERT into Unidades values('6339912','azul',22,'21');
update surtimientos set estado='E' where numero='22';
INSERT into Unidades values('5683262','negro',16,'22');
INSERT into Unidades values('9651687','negro',16,'22');
INSERT into Unidades values('1568605','negro',16,'22');
INSERT into Unidades values('7404317','negro',16,'22');
INSERT into Unidades values('5960217','negro',16,'22');
INSERT into Unidades values('1014064','negro',16,'22');
INSERT into Unidades values('1397936','negro',16,'22');
INSERT into Unidades values('5428610','negro',16,'22');
INSERT into Unidades values('5014405','negro',16,'22');
INSERT into Unidades values('3130299','negro',16,'22');
INSERT into Unidades values('6316320','negro',16,'22');
INSERT into Unidades values('2240717','negro',16,'22');
INSERT into Unidades values('7323583','negro',16,'22');
INSERT into Unidades values('4415191','negro',16,'22');
INSERT into Unidades values('7216471','negro',16,'22');
INSERT into Unidades values('2042828','negro',16,'22');
INSERT into Unidades values('2164889','negro',16,'22');
INSERT into Unidades values('2414746','negro',16,'22');
INSERT into Unidades values('4193009','negro',16,'22');
INSERT into Unidades values('4649228','negro',16,'22');
INSERT into Unidades values('4885158','negro',16,'22');
INSERT into Unidades values('1159238','negro',16,'22');
INSERT into Unidades values('5333151','negro',16,'22');
INSERT into Unidades values('9922060','negro',16,'22');
INSERT into Unidades values('9095716','negro',16,'22');
INSERT into Unidades values('1827844','negro',16,'22');
INSERT into Unidades values('6665258','negro',16,'22');
INSERT into Unidades values('3385285','negro',16,'22');
INSERT into Unidades values('6601254','negro',16,'22');
INSERT into Unidades values('4097958','negro',16,'22');
INSERT into Unidades values('7368527','negro',16,'22');
INSERT into Unidades values('4323200','negro',16,'22');
INSERT into Unidades values('5240128','negro',16,'22');
INSERT into Unidades values('6257295','negro',16,'22');
INSERT into Unidades values('7576113','negro',16,'22');
INSERT into Unidades values('9874118','negro',16,'22');
INSERT into Unidades values('7614187','negro',16,'22');
INSERT into Unidades values('1336778','negro',16,'22');
INSERT into Unidades values('5473672','negro',16,'22');
INSERT into Unidades values('9083951','negro',16,'22');
update surtimientos set estado='E' where numero='23';

INSERT into Unidades values('7576054','negro',5,'23');
INSERT into Unidades values('8048010','negro',5,'23');
INSERT into Unidades values('8517965','negro',5,'23');
INSERT into Unidades values('6101510','negro',5,'23');
INSERT into Unidades values('4943140','negro',5,'23');
INSERT into Unidades values('4688951','negro',5,'23');
INSERT into Unidades values('7472853','negro',5,'23');
INSERT into Unidades values('7472855','negro',5,'23');
INSERT into Unidades values('5613513','negro',5,'23');
INSERT into Unidades values('7230052','negro',5,'23');
INSERT into Unidades values('7498939','negro',5,'23');
INSERT into Unidades values('3336135','negro',5,'23');
INSERT into Unidades values('2550228','negro',5,'23');
INSERT into Unidades values('7628695','negro',5,'23');
INSERT into Unidades values('9654277','negro',5,'23');
INSERT into Unidades values('2939511','negro',5,'23');
INSERT into Unidades values('5370413','negro',5,'23');
INSERT into Unidades values('3412216','negro',5,'23');
INSERT into Unidades values('2163023','negro',5,'23');
INSERT into Unidades values('4879782','negro',5,'23');
INSERT into Unidades values('9718915','negro',5,'23');
INSERT into Unidades values('6655112','negro',5,'23');
INSERT into Unidades values('4495865','negro',5,'23');
INSERT into Unidades values('3378371','negro',5,'23');
INSERT into Unidades values('1247391','negro',5,'23');
INSERT into Unidades values('9533165','negro',5,'23');
INSERT into Unidades values('9665821','negro',5,'23');
INSERT into Unidades values('1244183','negro',5,'23');
INSERT into Unidades values('6927881','negro',5,'23');
update surtimientos set estado='E' where numero='24';

INSERT into Unidades values('9060313', NULL,6,'24');
INSERT into Unidades values('2696072', NULL,6,'24');
INSERT into Unidades values('9221900', NULL,6,'24');
INSERT into Unidades values('6386909', NULL,6,'24');
INSERT into Unidades values('4896268', NULL,6,'24');
INSERT into Unidades values('8474816', NULL,6,'24');
INSERT into Unidades values('9088004', NULL,6,'24');
INSERT into Unidades values('8979176', NULL,6,'24');
INSERT into Unidades values('3473640', NULL,9,'24');
INSERT into Unidades values('3050758', NULL,9,'24');
INSERT into Unidades values('2712909', NULL,9,'24');
INSERT into Unidades values('6963264', NULL,9,'24');
INSERT into Unidades values('1325075', NULL,9,'24');
INSERT into Unidades values('8111537', NULL,9,'24');
INSERT into Unidades values('8593871', NULL,9,'24');
INSERT into Unidades values('6012001', NULL,9,'24');
INSERT into Unidades values('1252122', NULL,9,'24');
INSERT into Unidades values('9754644', NULL,9,'24');
INSERT into Unidades values('8357300', NULL,9,'24');
INSERT into Unidades values('3390491', NULL,27,'24');
INSERT into Unidades values('4376275', NULL,27,'24');
INSERT into Unidades values('9108434', NULL,27,'24');
INSERT into Unidades values('2479278', NULL,27,'24');
INSERT into Unidades values('4881264', NULL,27,'24');
INSERT into Unidades values('4936813', NULL,27,'24');
INSERT into Unidades values('8030263', NULL,27,'24');
INSERT into Unidades values('6382081', NULL,27,'24');
INSERT into Unidades values('5029398', NULL,27,'24');
INSERT into Unidades values('7857803', NULL,27,'24');
INSERT into Unidades values('3693014', NULL,27,'24');
INSERT into Unidades values('7593337', NULL,27,'24');
INSERT into Unidades values('4104336', NULL,27,'24');
INSERT into Unidades values('6357423', NULL,27,'24');
INSERT into Unidades values('1448131', NULL,27,'24');
INSERT into Unidades values('1036161', NULL,27,'24');
INSERT into Unidades values('1750213', NULL,27,'24');
INSERT into Unidades values('4499853', NULL,27,'24');
INSERT into Unidades values('4293026', NULL,27,'24');
INSERT into Unidades values('5163957', NULL,27,'24');
INSERT into Unidades values('4819194', NULL,27,'24');
INSERT into Unidades values('8409132', NULL,27,'24');
INSERT into Unidades values('7156491', NULL,27,'24');
INSERT into Unidades values('6964254', NULL,27,'24');
INSERT into Unidades values('8889423', NULL,27,'24');
INSERT into Unidades values('2227556', NULL,27,'24');
INSERT into Unidades values('8872411', NULL,27,'24');
update surtimientos set estado='E' where numero='25';

INSERT into Unidades values('6428694', NULL,7,'25');
INSERT into Unidades values('2939685', NULL,7,'25');
INSERT into Unidades values('6535868', NULL,7,'25');
INSERT into Unidades values('2155157', NULL,7,'25');
INSERT into Unidades values('3137834', NULL,7,'25');
INSERT into Unidades values('6056472', NULL,7,'25');
INSERT into Unidades values('3622028', NULL,7,'25');
INSERT into Unidades values('4431964', NULL,7,'25');
INSERT into Unidades values('4891246', NULL,7,'25');
INSERT into Unidades values('8283940', NULL,7,'25');
INSERT into Unidades values('8309567', NULL,7,'25');
INSERT into Unidades values('4428815', NULL,7,'25');
INSERT into Unidades values('2238810', NULL,7,'25');
INSERT into Unidades values('2599352', NULL,7,'25');
INSERT into Unidades values('8871598', NULL,7,'25');
INSERT into Unidades values('4210576', NULL,7,'25');
INSERT into Unidades values('4280927', NULL,7,'25');
INSERT into Unidades values('3537691', NULL,7,'25');
INSERT into Unidades values('1078535', NULL,7,'25');
INSERT into Unidades values('1997337', NULL,7,'25');
INSERT into Unidades values('9329096', NULL,7,'25');
INSERT into Unidades values('4472505', NULL,7,'25');
INSERT into Unidades values('8523060', NULL,7,'25');
INSERT into Unidades values('8285576', NULL,7,'25');
INSERT into Unidades values('4297390', NULL,7,'25');
INSERT into Unidades values('7803458', NULL,7,'25');
INSERT into Unidades values('9525458', NULL,7,'25');
INSERT into Unidades values('9371582', NULL,7,'25');
INSERT into Unidades values('1789680', NULL,7,'25');
INSERT into Unidades values('1956517', NULL,7,'25');
INSERT into Unidades values('7708370', NULL,7,'25');
INSERT into Unidades values('1702113', NULL,7,'25');
INSERT into Unidades values('5021491', NULL,7,'25');
INSERT into Unidades values('8548678', NULL,7,'25');
INSERT into Unidades values('9117261', NULL,7,'25');
INSERT into Unidades values('7065755', NULL,7,'25');
INSERT into Unidades values('7561790', NULL,7,'25');
INSERT into Unidades values('5887425', NULL,7,'25');
INSERT into Unidades values('5383408', NULL,7,'25');
INSERT into Unidades values('2800636', NULL,7,'25');
INSERT into Unidades values('1375015', NULL,7,'25');
INSERT into Unidades values('1344975', NULL,7,'25');
INSERT into Unidades values('8745327', NULL,7,'25');
INSERT into Unidades values('4386198', NULL,7,'25');
INSERT into Unidades values('1870581', NULL,7,'25');
INSERT into Unidades values('7050926','blanco',11,'25');
INSERT into Unidades values('4773345','blanco',11,'25');
INSERT into Unidades values('4453167','blanco',11,'25');
INSERT into Unidades values('9849714','blanco',11,'25');
INSERT into Unidades values('7163261','blanco',11,'25');
INSERT into Unidades values('7725714','blanco',11,'25');
INSERT into Unidades values('6988603','blanco',11,'25');
INSERT into Unidades values('9964797','blanco',11,'25');
INSERT into Unidades values('4144642','blanco',11,'25');
INSERT into Unidades values('9757895','blanco',11,'25');
INSERT into Unidades values('2140102','blanco',11,'25');
INSERT into Unidades values('9376117','blanco',11,'25');
INSERT into Unidades values('1648630','blanco',11,'25');
INSERT into Unidades values('5853327','blanco',11,'25');
INSERT into Unidades values('5032051','blanco',11,'25');
INSERT into Unidades values('1262115','blanco',11,'25');
INSERT into Unidades values('8496477','blanco',11,'25');
INSERT into Unidades values('5099616','blanco',11,'25');
INSERT into Unidades values('8015074','blanco',11,'25');
INSERT into Unidades values('2830227','blanco',11,'25');
INSERT into Unidades values('1732183','negro',21,'25');
INSERT into Unidades values('3971264','negro',21,'25');
INSERT into Unidades values('6668393','negro',21,'25');
INSERT into Unidades values('5577554','negro',21,'25');
INSERT into Unidades values('4903753','negro',21,'25');
INSERT into Unidades values('3317159','negro',21,'25');
INSERT into Unidades values('1761845','negro',21,'25');
INSERT into Unidades values('7398207','negro',21,'25');
INSERT into Unidades values('6501838','negro',21,'25');
INSERT into Unidades values('8529460','negro',21,'25');
INSERT into Unidades values('1307336','negro',21,'25');
INSERT into Unidades values('4440611','negro',21,'25');
INSERT into Unidades values('9904322','negro',21,'25');
INSERT into Unidades values('1515848','negro',21,'25');
INSERT into Unidades values('6001441','negro',21,'25');
INSERT into Unidades values('7206462','negro',21,'25');
INSERT into Unidades values('6274563','negro',21,'25');
INSERT into Unidades values('7055757','azul',23,'25');
INSERT into Unidades values('9159934','azul',23,'25');
INSERT into Unidades values('8252752','azul',23,'25');
INSERT into Unidades values('9023497','azul',23,'25');
INSERT into Unidades values('1387789','azul',23,'25');
INSERT into Unidades values('4980329','azul',23,'25');
INSERT into Unidades values('6032775','azul',23,'25');
INSERT into Unidades values('3990733','azul',23,'25');
INSERT into Unidades values('8940672','azul',23,'25');
INSERT into Unidades values('4086527','azul',23,'25');
INSERT into Unidades values('4171381','azul',23,'25');
INSERT into Unidades values('1483894','azul',23,'25');
INSERT into Unidades values('3239151','azul',23,'25');
INSERT into Unidades values('1699496','negro',33,'25');
INSERT into Unidades values('7111643','negro',33,'25');
INSERT into Unidades values('7209899','negro',33,'25');
INSERT into Unidades values('4104318','negro',33,'25');
INSERT into Unidades values('6251551','negro',33,'25');
INSERT into Unidades values('3311391','negro',33,'25');
INSERT into Unidades values('2772271','negro',33,'25');
INSERT into Unidades values('2270494','negro',33,'25');
INSERT into Unidades values('8371642','negro',33,'25');
INSERT into Unidades values('9543164','negro',33,'25');
INSERT into Unidades values('4932950','negro',33,'25');
INSERT into Unidades values('3395619','negro',33,'25');
INSERT into Unidades values('4342101','negro',33,'25');
INSERT into Unidades values('4729619','negro',33,'25');
INSERT into Unidades values('5127409','negro',33,'25');
INSERT into Unidades values('9837186','negro',33,'25');
INSERT into Unidades values('8556037','negro',33,'25');
INSERT into Unidades values('7479506','negro',33,'25');
INSERT into Unidades values('3352084','negro',33,'25');
INSERT into Unidades values('4823730','negro',33,'25');
INSERT into Unidades values('8677932','negro',33,'25');
INSERT into Unidades values('4410075','negro',33,'25');
INSERT into Unidades values('8864380','negro',33,'25');
INSERT into Unidades values('3369111','negro',33,'25');
INSERT into Unidades values('2277701','negro',33,'25');
INSERT into Unidades values('4360071','negro',33,'25');
INSERT into Unidades values('9340700','negro',33,'25');
INSERT into Unidades values('1564688','negro',33,'25');
INSERT into Unidades values('9144221','negro',33,'25');
INSERT into Unidades values('1595715','negro',33,'25');
INSERT into Unidades values('9559052','negro',33,'25');
INSERT into Unidades values('7131249','negro',33,'25');
INSERT into Unidades values('5628029','negro',33,'25');
INSERT into Unidades values('6601748','negro',33,'25');
INSERT into Unidades values('1615771','negro',33,'25');
update surtimientos set estado='E' where numero='26';

INSERT into Unidades values('9554345','negro',18,'26');
INSERT into Unidades values('2021100','negro',18,'26');
INSERT into Unidades values('2681940','negro',18,'26');
INSERT into Unidades values('1285914','negro',18,'26');
INSERT into Unidades values('7863859','negro',18,'26');
INSERT into Unidades values('2814770','negro',18,'26');
INSERT into Unidades values('2059481','negro',18,'26');
INSERT into Unidades values('9147087','negro',18,'26');
INSERT into Unidades values('9575794','negro',18,'26');
INSERT into Unidades values('5283540','negro',18,'26');
INSERT into Unidades values('2243767','negro',18,'26');
INSERT into Unidades values('5505425','negro',18,'26');
INSERT into Unidades values('5682309','negro',18,'26');
INSERT into Unidades values('7066633','negro',18,'26');
INSERT into Unidades values('7855913','negro',18,'26');
INSERT into Unidades values('1620259','negro',18,'26');
INSERT into Unidades values('9324669','negro',18,'26');
INSERT into Unidades values('5027456','negro',18,'26');
INSERT into Unidades values('4236628','negro',18,'26');
INSERT into Unidades values('4123056','negro',18,'26');
INSERT into Unidades values('8009331','negro',18,'26');
INSERT into Unidades values('6801889','negro',18,'26');
INSERT into Unidades values('7207070','negro',18,'26');
INSERT into Unidades values('6958482','negro',18,'26');
INSERT into Unidades values('3881635','negro',18,'26');
INSERT into Unidades values('3276366','negro',18,'26');
INSERT into Unidades values('2308664','negro',18,'26');
INSERT into Unidades values('5789139','negro',18,'26');
INSERT into Unidades values('5482660','negro',18,'26');
INSERT into Unidades values('3644223','negro',18,'26');
INSERT into Unidades values('4285342','negro',18,'26');
INSERT into Unidades values('6534070','negro',18,'26');
INSERT into Unidades values('1225649','negro',18,'26');
INSERT into Unidades values('6623950','negro',18,'26');
INSERT into Unidades values('3788201','negro',18,'26');
INSERT into Unidades values('7498698','negro',18,'26');
INSERT into Unidades values('7946694','negro',18,'26');
INSERT into Unidades values('3062272','negro',18,'26');
INSERT into Unidades values('2418672','negro',18,'26');
INSERT into Unidades values('2993828','negro',18,'26');
INSERT into Unidades values('3671653','negro',18,'26');
INSERT into Unidades values('8441018','negro',18,'26');
INSERT into Unidades values('6921530','negro',18,'26');
INSERT into Unidades values('2909120','negro',18,'26');
INSERT into Unidades values('5868231','negro',18,'26');
INSERT into Unidades values('4871771','negro',18,'26');
INSERT into Unidades values('6427529','negro',18,'26');
INSERT into Unidades values('9338084','negro',18,'26');
INSERT into Unidades values('8014000','negro',18,'26');
INSERT into Unidades values('3538424','negro',18,'26');
INSERT into Unidades values('9341477','negro',18,'26');
INSERT into Unidades values('1689089','negro',18,'26');
INSERT into Unidades values('8817340','negro',18,'26');
INSERT into Unidades values('9149951', NULL,28,'26');
INSERT into Unidades values('6813147', NULL,28,'26');
INSERT into Unidades values('3521831', NULL,28,'26');
INSERT into Unidades values('4595855', NULL,28,'26');
INSERT into Unidades values('6436887', NULL,28,'26');
INSERT into Unidades values('9549562', NULL,28,'26');
INSERT into Unidades values('7256847', NULL,28,'26');
INSERT into Unidades values('8505217', NULL,28,'26');
INSERT into Unidades values('7963228', NULL,28,'26');
INSERT into Unidades values('3174996', NULL,28,'26');
INSERT into Unidades values('8185826', NULL,28,'26');
INSERT into Unidades values('9510931', NULL,28,'26');
INSERT into Unidades values('6777146', NULL,28,'26');
INSERT into Unidades values('6839404', NULL,28,'26');
INSERT into Unidades values('9277053', NULL,28,'26');
INSERT into Unidades values('4868192', NULL,28,'26');
INSERT into Unidades values('5435039', NULL,28,'26');
INSERT into Unidades values('3662746', NULL,28,'26');
INSERT into Unidades values('9395762', NULL,28,'26');
INSERT into Unidades values('7543185', NULL,28,'26');
INSERT into Unidades values('9949064', NULL,28,'26');
INSERT into Unidades values('4717533', NULL,28,'26');
INSERT into Unidades values('5909863', NULL,28,'26');
INSERT into Unidades values('5548408', NULL,28,'26');
INSERT into Unidades values('3780117', NULL,28,'26');
INSERT into Unidades values('1161828', NULL,28,'26');
INSERT into Unidades values('3092873', NULL,28,'26');
INSERT into Unidades values('3802892', NULL,28,'26');
INSERT into Unidades values('3812928', NULL,28,'26');
INSERT into Unidades values('6503982', NULL,28,'26');
INSERT into Unidades values('7117700', NULL,28,'26');
INSERT into Unidades values('4886357', NULL,28,'26');
INSERT into Unidades values('6335016', NULL,28,'26');
INSERT into Unidades values('5950392', NULL,28,'26');
INSERT into Unidades values('6292692', NULL,28,'26');
INSERT into Unidades values('3499018', NULL,28,'26');
update surtimientos set estado='E' where numero='27';

INSERT into Unidades values('3469012','negro',10,'27');
INSERT into Unidades values('5318613','negro',10,'27');
INSERT into Unidades values('9115812','negro',10,'27');
INSERT into Unidades values('7599107','negro',10,'27');
INSERT into Unidades values('8742182','negro',10,'27');
INSERT into Unidades values('8104706','negro',10,'27');
INSERT into Unidades values('1573320','negro',10,'27');
INSERT into Unidades values('2465160','negro',10,'27');
INSERT into Unidades values('1265087','negro',10,'27');
INSERT into Unidades values('3634513','negro',10,'27');
INSERT into Unidades values('9014904','negro',10,'27');
INSERT into Unidades values('9884524','negro',10,'27');
INSERT into Unidades values('1445804','negro',10,'27');
INSERT into Unidades values('9643304','negro',10,'27');
INSERT into Unidades values('5451611','negro',10,'27');
INSERT into Unidades values('8857737','negro',10,'27');
INSERT into Unidades values('5567979','negro',10,'27');
INSERT into Unidades values('1325353','negro',10,'27');
INSERT into Unidades values('1033068','negro',10,'27');
INSERT into Unidades values('5467909','negro',10,'27');
INSERT into Unidades values('5676865','negro',10,'27');
INSERT into Unidades values('9243971','negro',10,'27');
INSERT into Unidades values('3068297','negro',10,'27');
INSERT into Unidades values('1330634','negro',10,'27');
INSERT into Unidades values('8883381','negro',10,'27');
INSERT into Unidades values('1269881','negro',10,'27');
INSERT into Unidades values('5768064','negro',10,'27');
INSERT into Unidades values('8112603','negro',10,'27');
INSERT into Unidades values('5395404','negro',10,'27');
INSERT into Unidades values('7659467','negro',10,'27');
INSERT into Unidades values('4960338','negro',10,'27');
INSERT into Unidades values('6774156','negro',10,'27');
INSERT into Unidades values('2144903','negro',10,'27');
INSERT into Unidades values('3555846','negro',10,'27');
INSERT into Unidades values('6189555','negro',10,'27');
INSERT into Unidades values('4614599','negro',10,'27');
INSERT into Unidades values('5618743','negro',10,'27');
update surtimientos set estado='E' where numero='28';

INSERT into Unidades values('5154435','negro',12,'28');
INSERT into Unidades values('1263079','negro',12,'28');
INSERT into Unidades values('4673061','negro',12,'28');
INSERT into Unidades values('4819707','negro',12,'28');
INSERT into Unidades values('8229054','negro',12,'28');
INSERT into Unidades values('1558233','negro',12,'28');
INSERT into Unidades values('3215310','negro',12,'28');
INSERT into Unidades values('3674258','negro',12,'28');
INSERT into Unidades values('5521577','negro',12,'28');
INSERT into Unidades values('7683757','negro',12,'28');
INSERT into Unidades values('6083272','negro',12,'28');
INSERT into Unidades values('3722943','negro',12,'28');
INSERT into Unidades values('4379290','negro',12,'28');
INSERT into Unidades values('8843801','negro',12,'28');
INSERT into Unidades values('1756538','negro',12,'28');
INSERT into Unidades values('4956405','negro',12,'28');
INSERT into Unidades values('1432353','negro',12,'28');
INSERT into Unidades values('6771279','negro',12,'28');
INSERT into Unidades values('9468457','negro',12,'28');
INSERT into Unidades values('9620424','negro',12,'28');
INSERT into Unidades values('5775649','negro',12,'28');
INSERT into Unidades values('5353636','negro',12,'28');
INSERT into Unidades values('2359811','negro',12,'28');
INSERT into Unidades values('5373225','negro',12,'28');
INSERT into Unidades values('4698620','negro',12,'28');
INSERT into Unidades values('2892441','negro',12,'28');
INSERT into Unidades values('9321061','negro',12,'28');
INSERT into Unidades values('1762517','negro',12,'28');
INSERT into Unidades values('9512672','negro',12,'28');
INSERT into Unidades values('5717626','negro',12,'28');
INSERT into Unidades values('5516029','negro',12,'28');
update surtimientos set estado='E' where numero='29';

INSERT into Unidades values('1024810', NULL,13,'29');
INSERT into Unidades values('7901563', NULL,13,'29');
INSERT into Unidades values('4278780', NULL,13,'29');
INSERT into Unidades values('8509603', NULL,13,'29');
INSERT into Unidades values('7604281', NULL,13,'29');
INSERT into Unidades values('1874405', NULL,13,'29');
INSERT into Unidades values('7771745', NULL,13,'29');
INSERT into Unidades values('4721329', NULL,13,'29');
INSERT into Unidades values('3694882', NULL,13,'29');
INSERT into Unidades values('5216071', NULL,13,'29');
INSERT into Unidades values('6511021', NULL,13,'29');
INSERT into Unidades values('1285491', NULL,13,'29');
INSERT into Unidades values('1639111', NULL,13,'29');
INSERT into Unidades values('5749650', NULL,13,'29');
INSERT into Unidades values('7591477', NULL,13,'29');
INSERT into Unidades values('6394592', NULL,13,'29');
INSERT into Unidades values('2473450', NULL,13,'29');
INSERT into Unidades values('7894673', NULL,13,'29');
INSERT into Unidades values('6575144', NULL,13,'29');
INSERT into Unidades values('6666611', NULL,13,'29');
INSERT into Unidades values('9902932', NULL,13,'29');
INSERT into Unidades values('4952529', NULL,13,'29');
INSERT into Unidades values('7054977', NULL,29,'29');
INSERT into Unidades values('2130314', NULL,29,'29');
INSERT into Unidades values('6352605', NULL,29,'29');
INSERT into Unidades values('6889438', NULL,29,'29');
INSERT into Unidades values('1663058', NULL,29,'29');
INSERT into Unidades values('9026000', NULL,29,'29');
INSERT into Unidades values('5703911', NULL,29,'29');
INSERT into Unidades values('9159487', NULL,29,'29');
INSERT into Unidades values('7227285', NULL,29,'29');
INSERT into Unidades values('6346222', NULL,29,'29');
INSERT into Unidades values('2532656', NULL,29,'29');
INSERT into Unidades values('2166851', NULL,29,'29');
INSERT into Unidades values('2786351', NULL,29,'29');
INSERT into Unidades values('2827137', NULL,29,'29');
INSERT into Unidades values('1409667', NULL,29,'29');
INSERT into Unidades values('1047839', NULL,29,'29');
INSERT into Unidades values('4656176', NULL,29,'29');
INSERT into Unidades values('7026048', NULL,29,'29');
INSERT into Unidades values('7654836', NULL,29,'29');
INSERT into Unidades values('7779955', NULL,29,'29');
INSERT into Unidades values('2088175', NULL,29,'29');
INSERT into Unidades values('1231218', NULL,29,'29');
INSERT into Unidades values('5224092', NULL,29,'29');
INSERT into Unidades values('6295314', NULL,29,'29');
INSERT into Unidades values('2188926', NULL,29,'29');
INSERT into Unidades values('3582477', NULL,29,'29');
INSERT into Unidades values('4821650', NULL,29,'29');
INSERT into Unidades values('3483701', NULL,29,'29');
INSERT into Unidades values('3326851', NULL,29,'29');
INSERT into Unidades values('9769315', NULL,29,'29');
INSERT into Unidades values('8108911', NULL,29,'29');
INSERT into Unidades values('9509784', NULL,29,'29');
INSERT into Unidades values('5294376', NULL,29,'29');
INSERT into Unidades values('6450183', NULL,29,'29');
INSERT into Unidades values('9735805', NULL,29,'29');
INSERT into Unidades values('5533635', NULL,29,'29');
INSERT into Unidades values('5733860', NULL,29,'29');
INSERT into Unidades values('8504526', NULL,29,'29');
INSERT into Unidades values('6379797', NULL,29,'29');
INSERT into Unidades values('3031803', NULL,29,'29');
INSERT into Unidades values('7124131', NULL,29,'29');
INSERT into Unidades values('6407431', NULL,29,'29');
INSERT into Unidades values('1457600', NULL,29,'29');
INSERT into Unidades values('1704729', NULL,29,'29');
INSERT into Unidades values('3729453', NULL,29,'29');
update surtimientos set estado='E' where numero='30';

INSERT into Unidades values('6336322', NULL,14,'30');
INSERT into Unidades values('9607442', NULL,14,'30');
INSERT into Unidades values('8694518', NULL,14,'30');
INSERT into Unidades values('1900967', NULL,14,'30');
INSERT into Unidades values('5783693', NULL,14,'30');
INSERT into Unidades values('1501066', NULL,14,'30');
INSERT into Unidades values('7117776', NULL,14,'30');
INSERT into Unidades values('2177823', NULL,14,'30');
INSERT into Unidades values('3948036', NULL,14,'30');
INSERT into Unidades values('8341142', NULL,14,'30');
INSERT into Unidades values('7984105', NULL,14,'30');
INSERT into Unidades values('7746109', NULL,14,'30');
INSERT into Unidades values('5851818', NULL,14,'30');
INSERT into Unidades values('8562490', NULL,14,'30');
INSERT into Unidades values('2013273', NULL,14,'30');
INSERT into Unidades values('1242552', NULL,14,'30');
INSERT into Unidades values('9311602', NULL,14,'30');
INSERT into Unidades values('4555840', NULL,14,'30');
INSERT into Unidades values('5423951', NULL,14,'30');
INSERT into Unidades values('7028917', NULL,14,'30');
INSERT into Unidades values('5442770', NULL,14,'30');
INSERT into Unidades values('1324085', NULL,14,'30');
INSERT into Unidades values('4920671', NULL,14,'30');
INSERT into Unidades values('8193225', NULL,14,'30');
INSERT into Unidades values('1348998', NULL,14,'30');
INSERT into Unidades values('1819849', NULL,14,'30');
INSERT into Unidades values('9014241', NULL,14,'30');
update surtimientos set estado='E' where numero='31';

INSERT into Unidades values('8779100','negro',17,'31');
INSERT into Unidades values('5004696','negro',17,'31');
INSERT into Unidades values('9574171','negro',17,'31');
INSERT into Unidades values('6530685','negro',17,'31');
INSERT into Unidades values('9437201','negro',17,'31');
INSERT into Unidades values('7577820','negro',17,'31');
INSERT into Unidades values('8934105','negro',17,'31');
INSERT into Unidades values('9682056','negro',17,'31');
INSERT into Unidades values('8636495','negro',17,'31');
INSERT into Unidades values('9678086','negro',17,'31');
INSERT into Unidades values('9233327','negro',17,'31');
INSERT into Unidades values('5316467','negro',17,'31');
INSERT into Unidades values('9710510','negro',17,'31');
INSERT into Unidades values('1738064','negro',17,'31');
update surtimientos set estado='E' where numero='32';

INSERT into Unidades values('3559994', NULL,19,'32');
INSERT into Unidades values('6305228', NULL,19,'32');
INSERT into Unidades values('6400082', NULL,19,'32');
INSERT into Unidades values('9884089', NULL,19,'32');
INSERT into Unidades values('6152254', NULL,19,'32');
INSERT into Unidades values('6832458', NULL,19,'32');
INSERT into Unidades values('4245926', NULL,19,'32');
INSERT into Unidades values('6487515', NULL,19,'32');
INSERT into Unidades values('1434950', NULL,19,'32');
INSERT into Unidades values('3233222', NULL,19,'32');
INSERT into Unidades values('9554748', NULL,19,'32');
INSERT into Unidades values('9549909', NULL,19,'32');
INSERT into Unidades values('5783416', NULL,19,'32');
INSERT into Unidades values('3171387', NULL,19,'32');
INSERT into Unidades values('5215953', NULL,19,'32');
INSERT into Unidades values('4255080', NULL,19,'32');
INSERT into Unidades values('3906576', NULL,19,'32');
INSERT into Unidades values('6794857', NULL,19,'32');
INSERT into Unidades values('5989062', NULL,19,'32');
INSERT into Unidades values('7171897', NULL,19,'32');
INSERT into Unidades values('6111108', NULL,19,'32');
INSERT into Unidades values('9718301', NULL,19,'32');
INSERT into Unidades values('5350411', NULL,19,'32');
INSERT into Unidades values('2571320', NULL,19,'32');
INSERT into Unidades values('1423516', NULL,19,'32');
INSERT into Unidades values('3782790', NULL,19,'32');
INSERT into Unidades values('7909536', NULL,19,'32');
INSERT into Unidades values('2483852', NULL,19,'32');
INSERT into Unidades values('7070271', NULL,19,'32');
INSERT into Unidades values('2207239', NULL,19,'32');
INSERT into Unidades values('7679311', NULL,19,'32');
INSERT into Unidades values('3191950', NULL,19,'32');
INSERT into Unidades values('9005514', NULL,19,'32');
INSERT into Unidades values('3645952', NULL,19,'32');
INSERT into Unidades values('8525147', NULL,19,'32');
INSERT into Unidades values('9973127', NULL,19,'32');
INSERT into Unidades values('6583562', NULL,19,'32');
INSERT into Unidades values('3554254', NULL,19,'32');
INSERT into Unidades values('9352408', NULL,19,'32');
INSERT into Unidades values('6821154', NULL,19,'32');
INSERT into Unidades values('3445880', NULL,19,'32');
INSERT into Unidades values('5611172', NULL,19,'32');
INSERT into Unidades values('5191833', NULL,19,'32');
INSERT into Unidades values('7305368', NULL,19,'32');
update surtimientos set estado='E' where numero='33';

INSERT into Unidades values('4486565','negro',20,'33');
INSERT into Unidades values('4295916','negro',20,'33');
INSERT into Unidades values('8773490','negro',20,'33');
INSERT into Unidades values('4584691','negro',20,'33');
INSERT into Unidades values('3628555','negro',20,'33');
INSERT into Unidades values('4620379','negro',20,'33');
INSERT into Unidades values('7340843','negro',20,'33');
INSERT into Unidades values('6862481','negro',20,'33');
INSERT into Unidades values('7572802','negro',20,'33');
INSERT into Unidades values('9962578','negro',20,'33');
INSERT into Unidades values('9540920','negro',20,'33');
INSERT into Unidades values('4488794','negro',20,'33');
INSERT into Unidades values('4816821','negro',20,'33');
update surtimientos set estado='E' where numero='34';

INSERT into Unidades values('7976392', NULL,24,'34');
INSERT into Unidades values('9288808', NULL,24,'34');
INSERT into Unidades values('6629349', NULL,24,'34');
INSERT into Unidades values('8128232', NULL,24,'34');
INSERT into Unidades values('8091207', NULL,24,'34');
INSERT into Unidades values('8670035', NULL,24,'34');
INSERT into Unidades values('2906282', NULL,24,'34');
INSERT into Unidades values('1382738', NULL,24,'34');
INSERT into Unidades values('7100347', NULL,24,'34');
INSERT into Unidades values('3433458', NULL,24,'34');
INSERT into Unidades values('1620519', NULL,24,'34');
INSERT into Unidades values('5959281', NULL,24,'34');
INSERT into Unidades values('8252009', NULL,24,'34');
INSERT into Unidades values('5287416', NULL,24,'34');
INSERT into Unidades values('1122909', NULL,24,'34');
INSERT into Unidades values('1613111', NULL,24,'34');
INSERT into Unidades values('3303801', NULL,24,'34');
INSERT into Unidades values('8797664', NULL,24,'34');
INSERT into Unidades values('8155466', NULL,24,'34');
INSERT into Unidades values('8506842', NULL,24,'34');
INSERT into Unidades values('9996333', NULL,24,'34');
INSERT into Unidades values('8050277', NULL,24,'34');
INSERT into Unidades values('4351996', NULL,24,'34');
INSERT into Unidades values('2977175', NULL,24,'34');
INSERT into Unidades values('2956966', NULL,24,'34');
INSERT into Unidades values('2704095', NULL,24,'34');
INSERT into Unidades values('7021773', NULL,24,'34');
INSERT into Unidades values('1278868', NULL,24,'34');
INSERT into Unidades values('3395621', NULL,24,'34');
INSERT into Unidades values('3662841', NULL,24,'34');
INSERT into Unidades values('7861093', NULL,26,'34');
INSERT into Unidades values('7035817', NULL,26,'34');
INSERT into Unidades values('2700388', NULL,26,'34');
INSERT into Unidades values('9406200', NULL,26,'34');
INSERT into Unidades values('7907684', NULL,26,'34');
INSERT into Unidades values('8345218', NULL,26,'34');
INSERT into Unidades values('1530735', NULL,26,'34');
INSERT into Unidades values('6218681', NULL,26,'34');
INSERT into Unidades values('5256190', NULL,26,'34');
INSERT into Unidades values('2930559', NULL,26,'34');
update surtimientos set estado='E' where numero='35';

INSERT into Unidades values('6307392', NULL,25,'35');
INSERT into Unidades values('4656917', NULL,25,'35');
INSERT into Unidades values('8320005', NULL,25,'35');
INSERT into Unidades values('5587768', NULL,25,'35');
INSERT into Unidades values('3293493', NULL,25,'35');
INSERT into Unidades values('2281332', NULL,25,'35');
INSERT into Unidades values('4056363', NULL,25,'35');
INSERT into Unidades values('6577415', NULL,25,'35');
INSERT into Unidades values('6536210', NULL,25,'35');
INSERT into Unidades values('3296790', NULL,25,'35');
update surtimientos set estado='E' where numero='36';

INSERT into Unidades values('9581495', NULL,31,'36');
INSERT into Unidades values('5546022', NULL,31,'36');
INSERT into Unidades values('7366914', NULL,31,'36');
INSERT into Unidades values('8975745', NULL,31,'36');
INSERT into Unidades values('1489373', NULL,31,'36');
INSERT into Unidades values('2646770', NULL,31,'36');
INSERT into Unidades values('8899578', NULL,31,'36');
INSERT into Unidades values('8046624', NULL,31,'36');
INSERT into Unidades values('2471019', NULL,31,'36');
INSERT into Unidades values('8561851', NULL,31,'36');
INSERT into Unidades values('8099459', NULL,31,'36');
INSERT into Unidades values('1712118', NULL,31,'36');
update surtimientos set estado='E' where numero='37';

INSERT into Unidades values('8276536', NULL,32,'37');
INSERT into Unidades values('1138044', NULL,32,'37');
INSERT into Unidades values('4448970', NULL,32,'37');
INSERT into Unidades values('6414395', NULL,32,'37');
INSERT into Unidades values('9793761', NULL,32,'37');
INSERT into Unidades values('1758448', NULL,32,'37');
INSERT into Unidades values('5540097', NULL,32,'37');
INSERT into Unidades values('5533877', NULL,32,'37');


