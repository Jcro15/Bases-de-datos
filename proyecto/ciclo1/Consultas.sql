--Consultas Operativas
--Consultar la cantidad de  diferentes tipos de productos que ofrece cada proveedor
select Pr.nombre as proveedor, count(distinct p.tipo) as Tipos_ofrecidos,concat((count(distinct p.tipo)/(select count( distinct p.tipo) from productos p)*100),'%') as Porcentaje_tipos from productos P,proveedores Pr , ofrecimientos O where P.id_producto=O.producto  and O.proveedor=Pr.identificacion group by Pr.nombre;
--select O.proveedor,P.tipo,A.cantidad AS cant_tipo from Ofrecimientos O, productos P, abastecimientos A,(select P.tipo AS Q1,SUM(A.cantidad)AS Q2 from productos P, Abastecimientos A where P.id_producto=A.producto GROUP BY P.TIPO) AS Q where O.producto=P.id_producto and A.producto=P.id_producto AND  Q1=P.RIPO.   ;
--Consultar los proveedores con el porcentaje de sus productos respecto al total--
select proveedor, cantidad_producto,concat( porcentaje_cantidad,'%') As porcentaje_cantidad from( select Pr.nombre as proveedor,sum(A.cantidad) as cantidad_producto, round((sum(A.cantidad)/(select sum(A1.cantidad) from abastecimientos A1)*100),2) as porcentaje_cantidad  from Compras C , productos P , abastecimientos A,proveedores Pr where A.producto=P.id_producto and C.numero=A.compra and C.proveedor=Pr.identificacion group by Pr.nombre order by porcentaje_cantidad desc)where rownum<=5;
--Consultar las compras que representan un abastecimiento significante junto con su utilidad--
select * from (select A.compra,Pr.nombre as proveedor, P.nombre as producto,A.cantidad,concat(round(((P.precio-A.precio_compra)/P.precio)*100,1),'%')as ganancia_unitaria from abastecimientos A , Productos P, proveedores Pr,compras C where A.producto=P.id_producto and Pr.identificacion=C.proveedor and A.compra=C.numero  order by A.cantidad desc) where rownum<=5 ;
--Consultar los precios de los proveedores
select Pr.nombre as proveedor,P.nombre as producto,O.precio_actual as precio_unitario from proveedores Pr,productos P , ofrecimientos O where P.id_producto=O.producto and O.proveedor=Pr.identificacion;
--Consultar disponibilidad del producto
select P.nombre as producto, count(E.producto) as disponibilidad from productos P, Unidades E where E.producto=P.id_producto group by P.nombre;
--Consultar los productos por marca
select P.marca as marca,P.nombre as producto from productos P ;
--Consultar los productos por precio
select P.nombre as producto , P.precio as precio from productos P order by P.precio desc;
--Consultar los productos de un detereminado tipo
select P.tipo as tipo, P.nombre as producto from productos P;
--Consultar las compras a las que no se les ha asignado surtimiento
select * from compras C where (select count (numero) from surtimientos where compra=C.numero)=0; 


--Consultar mejores ofrecimientos
Select producto  ,proveedor,precio_actual 
    from Ofrecimientos O 
    where precio_actual=(select min(precio_actual)from Ofrecimientos OA group by producto having OA.producto=O.producto) order by producto;
    
--Consultar el detalle de las compras
SELECT C.numero,C.fecha,A.producto,A.precio_compra*A.cantidad as total 
    FROM Abastecimientos A ,Compras C where A.compra=C.numero order by C.numero ;
--Consultar los juegos 
SELECT nombre,marca,espacio,clasificacion,S2.Plataforma,genero,precio FROM  Juegos J, XMLTABLE('/Ficha_tecnica/Juego' passing J.Ficha_tecnica
columns espacio  PATH  '@espacio_requerido', clasificacion path 'Clasificacion_ESRB/@Clasificacion',genero path 'Genero/@Nombre')
S1, XMLTABLE('/Ficha_tecnica/Juego/Plataformas/Plataforma' passing J.Ficha_tecnica
columns Plataforma  PATH  '@Nombre')
S2 , Productos P where P.Id_producto=J.producto ;
--Consultar la informacion de los productos
select P.nombre,P.marca,P.descripcion,P.tipo,P.tamaño,C.nombre as categoria,P.precio
    from productos P,categorias C where P.categoria != '7' and P.categoria=C.numero;
--Consultar la informacion de los productos comprados el ultimo mes
select pro.nombre as producto ,prov.nombre as proveedor,A.precio_compra ,pro.precio as precio_venta from Productos pro,Proveedores prov ,Abastecimientos A,Compras C where A.producto=pro.id_producto and C.numero=A.compra and C.proveedor=prov.identificacion and C.fecha=(select min(C.fecha) from compras c,abastecimientos a where c.numero=a.compra and a.producto=A.producto);
--Consultar la capacidad restante por bodega
select  b.capacidad-s.total- (select coalesce(sum(AA.cantidad),0) from surtimientos SS,compras CC, Abastecimientos AA where  estado='P' and SS.compra=CC.numero and AA.compra=CC.numero and SS.bodega=b.numero) as capacidad,b.numero from (select count(numero_de_serie) as total ,B.numero from Unidades u ,Surtimientos S,bodegas B where u.surtimiento=S.numero and S.bodega=B.numero group by B.numero) s,bodegas b where b.numero=s.numero;
--Consultar el tamaño de cada compra
select sum(cantidad)as cantidad ,compra from abastecimientos group by compra;
--Consultar los productos en bodega
select numero_de_serie,color,producto,bodega from unidades U ,surtimientos S,bodegas B where U.surtimiento=S.numero and S.bodega=B.numero ;