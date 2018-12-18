--seleccionar las empresas que ofrecen el mejor precio por producto para cada departamento
select departamento,empresa_mensajeria,precio_envio ,tiempo_estimado
    from detalle_coberturas D 
    where precio_envio=(select min (precio_envio) from detalle_coberturas DA group by departamento having DA.departamento=D.departamento) order by departamento;
--seleccionar los 3 productos mas vendidos
select * from (select count(venta),producto from detalle_ventas group by producto order by count (venta) desc) where rownum<=3;
--seleccionar los 3 productos menos vendidos
select * from (select count(venta),producto from detalle_ventas group by producto order by count (venta) asc) where rownum<=3;
--consultar la cantidad de productos vendidos el ultimo mes
select sum(cantidad) from ventas V,detalle_ventas D where MONTHS_BETWEEN(SYSDATE,fecha)<=1 and V.numero= D.venta ;
--consultar el total de dinero ganador por las ventas del ultimo mes
select sum(valor) from ventas V where MONTHS_BETWEEN(SYSDATE,fecha)<=1;
--Consultar las ventas que estan terminadas y no tienen una entrega asignada
select * from ventas V where V.estado='T' and (select count(numero) from entregas where venta=V.numero)=0;
--consultar el tipo de producto mas vendido
select sum(cantidad),tipo  from productos P,detalle_ventas D where P.id_producto=D.producto group by tipo order by sum(cantidad) desc ;
--consultar el detalle de las ventas (Necesita una de las vistas)
select C.identificacion,V.numero ,P.id_producto,P.nombre,P.precio,D.cantidad,D.color,(select precio_envio from mejores_empresas_envios where departamento=c.departamento ) as costo_envio_unidad from productos P,ventas V,detalle_ventas D,clientes C where V.numero=D.venta and V.cliente=c.identificacion and D.producto=p.id_producto;
--consultar informacion clientes
select * from clientes;
--Consultar departamentos
select * from departamentos;