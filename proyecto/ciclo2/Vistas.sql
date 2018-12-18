create view mejores_empresas_envios as
select departamento,empresa_mensajeria,precio_envio ,tiempo_estimado
    from detalle_coberturas D 
    where precio_envio=(select min (precio_envio) from detalle_coberturas DA group by departamento having DA.departamento=D.departamento) order by departamento;
    
create view facturas as 
select C.identificacion,V.numero,V.fecha, P.id_producto,P.nombre,P.precio,D.cantidad,D.color,(select precio_envio from mejores_empresas_envios where departamento=c.departamento ) as costo_envio_unidad from productos P,ventas V,detalle_ventas D,clientes C where V.numero=D.venta and V.cliente=c.identificacion and D.producto=p.id_producto;

create view tipo_mas_vendido as
select sum(cantidad) as ventas ,tipo  from productos P,detalle_ventas D where P.id_producto=D.producto group by tipo order by sum(cantidad) desc ;

create view ventas_total as
select sum(valor)as total  from ventas V;

create view mas_vendido as
select count(venta)as total,producto from detalle_ventas group by producto order by count (venta) desc;

create view sin_entrega as
select * from ventas V where V.estado='T' and (select count(numero) from entregas where venta=V.numero)=0;



create view menos_vendido as
select count(venta)as total,producto from detalle_ventas group by producto order by count (venta) asc;