insert into departamentos (codigo,nombre) values ('6','Amazonas');
Insert into clientes(identificacion,nombre,correo,telefono,tipo_identificacion,direccion,codigo_zip,departamento) values('12345678','aaa','aaa@mail.com','3006578856','CC','kra213-234','12345','6');
Insert into clientes(identificacion,nombre,correo,telefono,tipo_identificacion,direccion,codigo_zip,departamento) values('12345668','aaaa','aaaa@mail.com','3006575856','CC','kra211-234','12245','6');
insert into ventas (numero,fecha,valor,cliente) values ('31',TO_DATE(sysdate,'dd/mm/yyyy'),'1111','12345678');
insert into ventas (numero,fecha,valor,cliente) values ('36',TO_DATE('05/04/2018','dd/mm/yyyy'),'1111','12345668');
insert into Empresas_de_mensajeria(identificacion,telefono,correo,nombre,direccion) values ('123456789-1','3005642344','qqq@mail.com','qqqqq','wefdgd');
insert into Empresas_de_mensajeria(identificacion,telefono,correo,nombre,direccion) values ('123356789-1','3005642344','qqqq@mail.com','qqqqq','wefsgd');
insert into Entregas (numero,estado,fecha_envio,fecha_llegada,venta,cliente,empresa_mensajeria) values('31','P',TO_DATE('05/09/2018','dd/mm/yyyy'),TO_DATE('05/10/2018','dd/mm/yyyy'),'31','12345678','123456789-1');
insert into Entregas (numero,estado,fecha_envio,fecha_llegada,venta,cliente,empresa_mensajeria) values('35','P',TO_DATE('05/02/2018','dd/mm/yyyy'),TO_DATE('05/10/2018','dd/mm/yyyy'),'36','12345678','123356789-1');