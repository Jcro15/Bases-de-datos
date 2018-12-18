--del-dept
delete from departamentos where codigo='1';
--Mo-dept
update departamentos set codigo='2' where codigo='1';
--MO_ventas
update ventas set valor='123' where numero='1';
--del_ventas
delete from ventas where numero='1';
--Ad_entregas
insert into Entregas (numero,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'2','12345678','123456789-1');
--Mo_entrega
update Entregas set venta='2' where numero='1';
--Del-entrega 
delete from entregas where numero='1';
--Mo_clientes
update clientes set identificacion='12312345' where identificacion='12345678';
--del clientes
delete from clientes where identificacion='12345678';
--mo_emp
update Empresas_de_mensajeria set identificacion='123456789-2' where identificacion='123456789-1';
--mo_cober
update detalle_coberturas set departamento='2' where departamento='1' and empresa_mensajeria='123456789-1';
--Ad_deventas
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','12',null,'102');
--Mo_deventas
update detalle_ventas set color='rojo' where venta='1' and producto='12';
--Del_deventas
delete from detalle_ventas where venta='1' and producto='12';
