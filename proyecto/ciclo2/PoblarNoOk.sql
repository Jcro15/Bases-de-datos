--Departamentos
insert into departamentos (codigo,nombre) values ('1','Bogota');


--Clientes
Insert into clientes(identificacion,nombre,correo,telefono,tipo_identificacion,direccion,codigo_zip,departamento) values('113493783','Carlos Vargas','CarlosV@mail.com','3006578856','CC','kra213-234','12345','1');
Insert into clientes(identificacion,nombre,correo,telefono,tipo_identificacion,direccion,codigo_zip,departamento) values('1234873','Paulina Rojas','PaulinaR@mail.com','3013657881','CC','kra203-224','12344','2');
Insert into clientes(identificacion,nombre,correo,telefono,tipo_identificacion,direccion,codigo_zip,departamento) values('34562346','Andres Rojas','AndresR@@@mail.com','3013617891','CC','kra103-204','25344','3');




--Empresas Mensajeria
insert into Empresas_de_mensajeria(identificacion,telefono,correo,nombre,direccion) values ('223457689-5','3015692370','Servientrega@@@@mail.com','Servientrega','kra123-153');


--Detalle Coberturas
insert into detalle_coberturas (departamento,empresa_mensajeria,precio_envio,tiempo_estimado)values ('1','223457689-5','-2','1 dias');


--Ventas 
insert into ventas (numero,fecha,valor,cliente) values (seq_ventas.nextval,TO_DATE('04/03/2018','dd/mm/yyyy'),'-202','113493783');
insert into ventas (numero,fecha,valor,cliente) values (seq_ventas.nextval,TO_DATE('05/03/2018','dd/mm/yyyy'),'-200','113493783');



--Detalle ventas
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','21','azul','-1');
insert into detalle_ventas (venta,producto,color,cantidad) values ('2','18','negro','-1');


--Entregas
insert into Entregas (numero,estado,fecha_envio,fecha_llegada,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'q',TO_DATE('06/03/2018','dd/mm/yyyy'),TO_DATE('08/03/2018','dd/mm/yyyy'),'1','12562346','229457089-5');
insert into Entregas (numero,estado,fecha_envio,fecha_llegada,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'w',TO_DATE('06/03/2018','dd/mm/yyyy'),TO_DATE('09/03/2018','dd/mm/yyyy'),'2','11349783','223457689-5');
