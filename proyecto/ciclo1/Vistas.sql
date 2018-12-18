--vistas

Create view Mejores_Ofrecimientos AS
    Select producto  ,proveedor,precio_actual 
    from Ofrecimientos O 
    where precio_actual=(select min(precio_actual)from Ofrecimientos OA group by producto having OA.producto=O.producto) order by producto;
/

Create view Detalle_Compra AS
    SELECT C.numero,C.fecha,A.producto,A.precio_compra*A.cantidad as total 
    FROM Abastecimientos A ,Compras C where A.compra=C.numero order by C.numero ; 
/


Create view Juegos_Clientes as
    SELECT nombre,marca,espacio,clasificacion,S2.Plataforma,genero,precio FROM  Juegos J, XMLTABLE('/Ficha_tecnica/Juego' passing J.Ficha_tecnica
columns espacio  PATH  '@espacio_requerido', clasificacion path 'Clasificacion_ESRB/@Clasificacion',genero path 'Genero/@Nombre')
S1, XMLTABLE('/Ficha_tecnica/Juego/Plataformas/Plataforma' passing J.Ficha_tecnica
columns Plataforma  PATH  '@Nombre')
S2 , Productos P where P.Id_producto=J.producto ;
/


Create view Productos_Clientes as
    select P.nombre,P.marca,P.descripcion,P.tipo,P.tamaño,C.nombre as categoria,P.precio
    from productos P,categorias C where P.categoria != '7' and P.categoria=C.numero;
/

Create view Info_producto as
    select pro.nombre as producto ,prov.nombre as proveedor,A.precio_compra ,pro.precio as precio_venta from Productos pro,Proveedores prov ,Abastecimientos A,Compras C where A.producto=pro.id_producto and C.numero=A.compra and C.proveedor=prov.identificacion and C.fecha=(select min(C.fecha) from compras c,abastecimientos a where c.numero=a.compra and a.producto=A.producto);

Create view capacidad_restante as 
    select  b.capacidad-s.total- (select coalesce(sum(AA.cantidad),0) from surtimientos SS,compras CC, Abastecimientos AA where  estado='P' and SS.compra=CC.numero and AA.compra=CC.numero and SS.bodega=b.numero) as capacidad,b.numero from (select count(numero_de_serie) as total ,B.numero from Unidades u ,Surtimientos S,bodegas B where u.surtimiento=S.numero and S.bodega=B.numero group by B.numero) s,bodegas b where b.numero=s.numero;
/

Create view Tamaño_compra as
    select sum(cantidad)as cantidad ,compra from abastecimientos group by compra;
/
Create view Productos_Bodega as
select numero_de_serie,color,producto,bodega from unidades U ,surtimientos S,bodegas B where U.surtimiento=S.numero and S.bodega=B.numero ;
/