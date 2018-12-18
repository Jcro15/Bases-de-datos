--El gerente desea consultar la disponibilidad de sus productos y ,si es necesario, reabastecer el inventario
select pa_gerente.consulta_disponibilidad_p from dual;
--Al ver los resultados se da cuenta que algunos de sus productos se estan agotando por lo que desea ver cuales de sus proveedores le ofrecen los mejores precios para cada producto
select PA_Gerente.Mejores_Ofrecimientos from dual;
--al ver la necesidad de comprar el producto N15(Nvidia_gtx1080) y su alto precio decide buscar un nuevo proveedor que ofrezca este producto a mejor precio,
--al encontrarlo almacena toda su informacion para futuras compras
execute PA_Gerente.Adicionar_proveedor ('492277612-5','Tienda_Tecnologia','1591408564','kra55cll26','Tienda_Tecnologia@mail.com','NIT','15','200');
execute PA_Gerente.Adicionar_ofrecimiento ('492277612-5','10','860');
execute PA_Gerente.Adicionar_ofrecimiento ('492277612-5','2','795');
--Tras insertar el nuevo proveedor se desea comprarle el producto por el que fue incorporado
execute pa_gerente.adicionar_compra ('492277612-5','15','200',NULL,6); 
-- El asistente de la bodega consulta si tiene compras pendientes por surtir 
select pa_asistente_bodega.compras_nosurtimiento from dual;
--al enterarse que se realizo una nueva compra se dispone a asignarle un surtimiento,pero por descuido
--lo asigna en una bodega donde no hay espacio suficiente
EXECUTE pa_asistente_bodega.adicionar_surtimiento('41','1');
--al darse cuenta del error el asistente no quiere equivocarse de nuevo por lo que consulta el tamaño de la compra
---y las capacidades de las bodegas para asi decidir a cual debe ser enviada la compra
SELECT  PA_Asistente_Bodega.Consultar_Tamaño_Compras(41) from dual ;
select pa_asistente_bodega.consultar_capacidad_restante FROM DUAL; 
--se da cuenta que la bodega 2 y 4 permitirian el envio por lo que registra el surtimiento en la bodega 4
EXECUTE pa_asistente_bodega.adicionar_surtimiento('41','4');
--Dias despues el surtimiento llega a la bodega por lo que actualiza el estado del envio y guarda la informacion de las unidades que llegaron
execute pa_asistente_bodega.modificar_surtimiento('42','E');
execute pa_asistente_bodega.adicionar_unidad('5777398',NULL,'15','42');
execute pa_asistente_bodega.adicionar_unidad('8639969',NULL,'15','42');
execute pa_asistente_bodega.adicionar_unidad('2718583',NULL,'15','42');
execute pa_asistente_bodega.adicionar_unidad('2587910',NULL,'15','42');
execute pa_asistente_bodega.adicionar_unidad('4588317',NULL,'15','42');
execute pa_asistente_bodega.adicionar_unidad('4588318',NULL,'15','42');

--El gerente, para asegurarse que sus nuevos productos ya han llegado a bodega desea consultar nuevamente la disponibilidad de sus productos
select pa_gerente.consulta_disponibilidad_p from dual;

--Viendo el impacto que ha tenido el juego Red Dead Redemption 2 el gerente decide incluirlo dentro de su catalogo de productos e incluye la ficha tecnica del juego
execute pa_gerente.adicionar_juego('N/A',xmltype('<?xml version="1.0" encoding="UTF-8"?><!DOCTYPE Ficha_tecnica  [ <!ELEMENT Ficha_tecnica (Juego)> <!ELEMENT Juego (Genero, Plataformas,Fecha_Lanzamiento, Formato, Clasificacion_ESRB, Calificacion_Metacritic, Idiomas, Modos+ )><!ATTLIST Juego espacio_requerido CDATA #REQUIRED>  <!ELEMENT Genero (#PCDATA)> <!ATTLIST Genero Nombre CDATA #REQUIRED>	 <!ELEMENT Plataformas (Plataforma+)><!ELEMENT Plataforma (#PCDATA)><!ATTLIST Plataforma Nombre  CDATA #REQUIRED><!ELEMENT Fecha_Lanzamiento (#PCDATA)><!ATTLIST Fecha_Lanzamiento Fecha CDATA #REQUIRED><!ELEMENT Formato (#PCDATA)><!ATTLIST Formato Nombre CDATA #REQUIRED> <!ELEMENT Clasificacion_ESRB (#PCDATA)><!ATTLIST Clasificacion_ESRB Clasificacion CDATA #REQUIRED><!ELEMENT Calificacion_Metacritic (#PCDATA)><!ATTLIST Calificacion_Metacritic Calificacion CDATA #REQUIRED><!ELEMENT Idiomas (Idioma+)><!ELEMENT Idioma (#PCDATA)><!ATTLIST Idioma Idioma_Juego CDATA #REQUIRED><!ELEMENT Modos (Modo+)><!ELEMENT Modo (#PCDATA)><!ATTLIST Modo Modo_Juego CDATA #REQUIRED>	]><Ficha_tecnica><Juego espacio_requerido= "-70 GB" ><Genero Nombre="Accion"> </Genero><Plataformas><Plataforma  Nombre="Xbox one"> </Plataforma><Plataforma Nombre="Play station 4" > </Plataforma> <Plataforma Nombre="PC" > </Plataforma></Plataformas><Fecha_Lanzamiento Fecha="26/10/2018"> </Fecha_Lanzamiento><Formato Nombre="Fisico" > </Formato><Clasificacion_ESRB Clasificacion="M" > </Clasificacion_ESRB><Calificacion_Metacritic Calificacion = "80"> </Calificacion_Metacritic><Idiomas><Idioma Idioma_Juego="Español" > </Idioma><Idioma Idioma_Juego="Ingles" > </Idioma></Idiomas><Modos><Modo Modo_Juego="Multijugador"> </Modo><Modo Modo_Juego="Online" > </Modo>	<Modo Modo_Juego="Un jugador" > </Modo><Modo Modo_Juego="Offline" > </Modo></Modos></Juego></Ficha_tecnica>'),'200','Rockstar Games','Red Dead Redemption 2','N/A','Juego','7','10x1x7');
-- por un error de digitacion se inserta un valor de almacenamiento negativo, lo cual genera una inconsistencia
--el gerente es notificado y corrige inmediatamente el error
execute pa_gerente.adicionar_juego('N/A',xmltype('<?xml version="1.0" encoding="UTF-8"?><!DOCTYPE Ficha_tecnica  [ <!ELEMENT Ficha_tecnica (Juego)> <!ELEMENT Juego (Genero, Plataformas,Fecha_Lanzamiento, Formato, Clasificacion_ESRB, Calificacion_Metacritic, Idiomas, Modos+ )><!ATTLIST Juego espacio_requerido CDATA #REQUIRED>  <!ELEMENT Genero (#PCDATA)> <!ATTLIST Genero Nombre CDATA #REQUIRED>	 <!ELEMENT Plataformas (Plataforma+)><!ELEMENT Plataforma (#PCDATA)><!ATTLIST Plataforma Nombre  CDATA #REQUIRED><!ELEMENT Fecha_Lanzamiento (#PCDATA)><!ATTLIST Fecha_Lanzamiento Fecha CDATA #REQUIRED><!ELEMENT Formato (#PCDATA)><!ATTLIST Formato Nombre CDATA #REQUIRED> <!ELEMENT Clasificacion_ESRB (#PCDATA)><!ATTLIST Clasificacion_ESRB Clasificacion CDATA #REQUIRED><!ELEMENT Calificacion_Metacritic (#PCDATA)><!ATTLIST Calificacion_Metacritic Calificacion CDATA #REQUIRED><!ELEMENT Idiomas (Idioma+)><!ELEMENT Idioma (#PCDATA)><!ATTLIST Idioma Idioma_Juego CDATA #REQUIRED><!ELEMENT Modos (Modo+)><!ELEMENT Modo (#PCDATA)><!ATTLIST Modo Modo_Juego CDATA #REQUIRED>	]><Ficha_tecnica><Juego espacio_requerido= "70 GB" ><Genero Nombre="Accion"> </Genero><Plataformas><Plataforma  Nombre="Xbox one"> </Plataforma><Plataforma Nombre="Play station 4" > </Plataforma> <Plataforma Nombre="PC" > </Plataforma></Plataformas><Fecha_Lanzamiento Fecha="26/10/2018"> </Fecha_Lanzamiento><Formato Nombre="Fisico" > </Formato><Clasificacion_ESRB Clasificacion="M" > </Clasificacion_ESRB><Calificacion_Metacritic Calificacion = "80"> </Calificacion_Metacritic><Idiomas><Idioma Idioma_Juego="Español" > </Idioma><Idioma Idioma_Juego="Ingles" > </Idioma></Idiomas><Modos><Modo Modo_Juego="Multijugador"> </Modo><Modo Modo_Juego="Online" > </Modo>	<Modo Modo_Juego="Un jugador" > </Modo><Modo Modo_Juego="Offline" > </Modo></Modos></Juego></Ficha_tecnica>'),'200','Rockstar Games','Red Dead Redemption 2','N/A','Juego','7','10x1x7');
--ahora que la empresa cuenta con un buen listado de productos los clientes pueden consultarlos
--Juan es un fan de la marca microsoft por lo que quiere ver que productos se le ofrecen de esta marca
select pa_cliente.consultar_productos_marca('Microsoft') from dual ;
--Pensando en comprar un Xbox One S juan desea ver que juegos son compatibles con esta consola
select pa_cliente.consultar_juegos_plataforma('Xbox one')from dual;
--Finalmente buscara elementos decorativos
select pa_cliente.consultar_productos_tipo('Decorativo')from dual;
--Para revisar como ha afectado financieramente a la empresa el proceso de reabastecer el inventario el gerente desea ver el detalle de las ultimas compras
select pa_gerente.consultar_detalle_compras from dual;


