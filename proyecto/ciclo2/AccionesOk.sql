

insert into Empresas_de_mensajeria(identificacion,telefono,correo,nombre,direccion) values ('129257089-5','3015691316','DHL1@mail.com','DHL','kra173-153');
insert into ventas (numero,cliente) values ('80','33303582');
insert into Entregas (numero,venta,cliente,empresa_mensajeria) values('80','80','33303582','129257089-5');
delete from Empresas_de_mensajeria where identificacion='129257089-5';


insert into Empresas_de_mensajeria(identificacion,telefono,correo,nombre,direccion) values ('129257089-9','3015691319','DHL2@mail.com','DHL','kra173-123');
insert into detalle_coberturas (departamento,empresa_mensajeria,precio_envio,tiempo_estimado)values ('1','129257089-9','2','1 dias');
delete from Empresas_de_mensajeria where identificacion='129257089-9';