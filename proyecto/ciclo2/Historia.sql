--Para comprar los productos que acaba de consultar juan desea registrarse como cliente de la empresa
execute PA_cliente_ventas.adicionar_cliente('98745626','Juan','Juan@Juan.com','445566','CC','kra 1 cll 2','12345','1');
--juan desea comprar algunos productos
SELECT * FROM UNIDADES WHERE PRODUCTO=3;
execute pa_cliente_ventas.adicionar_ventas('98745626',3,'blanco',4);
execute pa_cliente_ventas.adicionar_detalle_ventas(28,4,'negro',2);
execute pa_cliente_ventas.adicionar_detalle_ventas(28,4,'negro',2);
--juan se ha equivocado al ingresar la cantidad de productos que necesita y ha pedido una cantidad absurda con la que no contamos
execute pa_cliente_ventas.adicionar_detalle_ventas(28,9,Null,879844);
--Juan se entera de su error y ademas que se cuenta con 11 unidades, decide comprar 3
execute pa_cliente_ventas.adicionar_detalle_ventas(28,9,Null,3);
--antes de terminar Juan desea ver el resumen de su compra y el detalle por producto
select pa_cliente_ventas.consultar_ventas_cliente('98745626') from dual;
select pa_cliente_ventas.consultar_detalle_cliente('98745626') from dual;
--al ver que es muy costoso juan desea eliminar uno de los xbox puesto que con uno es suficiente para el
execute pa_cliente_ventas.modificar_detalle_ventas('28','4',1);
--consulta nuevamente los detalles de compra
select pa_cliente_ventas.consultar_ventas_cliente('98745626') from dual;
select pa_cliente_ventas.consultar_detalle_cliente('98745626') from dual;
--Juan completa su compra
execute pa_cliente_ventas.modificar_ventas('28','T');

-----------------
--El asistente revisa si hay compras que necesiten ser entregadas
select pa_asistente_bodega_ventas.consultar_ventas_noentreg from dual ;
--consulta la informacion de los clientes con entregas pendientes
select pa_asistente_bodega_ventas.consultar_info('98745626') from dual;
select pa_asistente_bodega_ventas.consultar_info('24363582') from dual;
--para asegurar que el precio de envio es optimo revisara las empresas que ofrecen mejores precios para cada departamento
select pa_asistente_bodega_ventas.consultar_mejores from dual;
--asigna las entregas que tiene pendientes y notifica a los clientes con un correo diciendo el tiempo estimado
execute pa_asistente_bodega_ventas.adicionar_entregas(28,'98745626','223457689-5');
execute pa_asistente_bodega_ventas.adicionar_entregas(23,'24363582','323457189-5');
--y procede a eliminar los productos de esa venta
select pa_asistente_bodega_ventas.consultar_detalle_cliente('98745626')from dual;
select * from unidades where producto=9 or producto=4;
execute pa_asistente_bodega.eliminar_unidad('3747251');
execute pa_asistente_bodega.eliminar_unidad('4923498');
execute pa_asistente_bodega.eliminar_unidad('7048616');
execute pa_asistente_bodega.eliminar_unidad('7396069');
execute pa_asistente_bodega.eliminar_unidad('9079147');
execute pa_asistente_bodega.eliminar_unidad('3473640');
execute pa_asistente_bodega.eliminar_unidad('3050758');
execute pa_asistente_bodega.eliminar_unidad('2712909');
-------
--El gerente revisa los precios para actuales de las mejores empresas de mensajeria
select pa_gerente_ventas.consultar_mejores from dual;
--se da cuenta que el departamento 5 cuesta mucho y tarda demasiado en llegar por lo que busca una empresa que ofrezca un mejor servicio
--y la agrega a su base para futuros servicios
execute pa_gerente_ventas.adicionar_empresa('123124123-5','11122233','entregasrapidas@mail.com','entregas rapidas','cll 200 kra 100','5','8','3 dias')
execute pa_gerente_ventas.adicionar_detalle_coberturas('3','123124123-5',10,'1 dias');
--revisa nuevamente las mejores empresas
select pa_gerente_ventas.consultar_mejores from dual;
--ahora el gerente desea realizar consultas sobre los movimientos en la empresa
--Consulta el detalle de sus ventas 
    select pa_gerente_ventas.consultar_detalle from dual;
--dado que le parece demasiada informacion desea solo consultar cuanto dinero consiguio con las ventas del mes y cuantos productos 
     select pa_gerente_ventas.Consultar_dinero_mes from dual;
     select pa_gerente_ventas.Consultar_productos_mes from dual;
--final mente desea saber los productos que mas se han vendido
    select pa_gerente_ventas. Consultar_Productos_mas from dual;
    