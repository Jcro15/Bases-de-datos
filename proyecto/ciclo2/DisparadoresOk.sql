--Departamentos
insert into departamentos (codigo,nombre) values ('1','Bogota');
insert into departamentos (codigo,nombre) values ('2','Antioquia');
insert into departamentos (codigo,nombre) values ('3','Boyaca');
insert into departamentos (codigo,nombre) values ('4','Caldas');
insert into departamentos (codigo,nombre) values ('5','Bolivar');

--Clientes
Insert into clientes(identificacion,nombre,correo,telefono,tipo_identificacion,direccion,codigo_zip,departamento) values('11349783','Carlos Vargas','CarlosV@mail.com','3006578856','CC','kra213-234','12345','1');
Insert into clientes(identificacion,nombre,correo,telefono,tipo_identificacion,direccion,codigo_zip,departamento) values('12342873','Paulina Rojas','PaulinaR@mail.com','3013657881','CC','kra203-224','12344','2');
Insert into clientes(identificacion,nombre,correo,telefono,tipo_identificacion,direccion,codigo_zip,departamento) values('34562346','Andres Rojas','AndresR@mail.com','3013617891','CC','kra103-204','25344','3');
Insert into clientes(identificacion,nombre,correo,telefono,tipo_identificacion,direccion,codigo_zip,departamento) values('12562346','Rosa Rojas','RosaR@mail.com','3052618891','CC','kra134-224','26344','4');
Insert into clientes(identificacion,nombre,correo,telefono,tipo_identificacion,direccion,codigo_zip,departamento) values('15561346','Sebastian Perez','SebastianP@mail.com','3052315878','CC','cll234-214','36244','5');
Insert into clientes(identificacion,nombre,correo,telefono,tipo_identificacion,direccion,codigo_zip,departamento) values('34162342','Juan Gomez','JuanGomez@mail.com','3023217891','CC','cll113-127','12443','1');
Insert into clientes(identificacion,nombre,correo,telefono,tipo_identificacion,direccion,codigo_zip,departamento) values('14263342','Nicolas Perez','NicolasP@mail.com','3022217412','CC','cll114-128','12443','1');
Insert into clientes(identificacion,nombre,correo,telefono,tipo_identificacion,direccion,codigo_zip,departamento) values('34163382','Sara Vargas','SaraV@mail.com','3063267491','CC','kra253-127','12244','1');
Insert into clientes(identificacion,nombre,correo,telefono,tipo_identificacion,direccion,codigo_zip,departamento) values('34363582','Sara Perez','SaraP@mail.com','3063267799','CC','kra213-227','12644','2');
Insert into clientes(identificacion,nombre,correo,telefono,tipo_identificacion,direccion,codigo_zip,departamento) values('24363582','Felipe Pinto','FelipeP@mail.com','3013288499','CC','kra223-127','12614','3');
Insert into clientes(identificacion,nombre,correo,telefono,tipo_identificacion,direccion,codigo_zip,departamento) values('37383582','Juan Perez','JuanP@mail.com','3063217490','CC','cll213-277','12640','4');
Insert into clientes(identificacion,nombre,correo,telefono,tipo_identificacion,direccion,codigo_zip,departamento) values('33303582','Carlos Pinto','CarlosP@mail.com','3063167419','CC','cll123-127','10644','1');



--Empresas Mensajeria
insert into Empresas_de_mensajeria(identificacion,telefono,correo,nombre,direccion) values ('223457689-5','3015692370','Servientrega@mail.com','Servientrega','kra123-153');
insert into Empresas_de_mensajeria(identificacion,telefono,correo,nombre,direccion) values ('229455679-0','3015493912','Envia@mail.com','Envia','kra124-143');
insert into Empresas_de_mensajeria(identificacion,telefono,correo,nombre,direccion) values ('323457189-5','3065697370','Rapidisimo@mail.com','Rapidisimo','kra243-153');
insert into Empresas_de_mensajeria(identificacion,telefono,correo,nombre,direccion) values ('229457089-5','3015691356','DHL@mail.com','DHL','kra183-153');
insert into Empresas_de_mensajeria(identificacion,telefono,correo,nombre,direccion) values ('229457089-5','3015691356','DHL@mail.com','DHL','kra183-153');

--Detalle Coberturas
insert into detalle_coberturas (departamento,empresa_mensajeria,precio_envio,tiempo_estimado)values ('1','223457689-5','2','1 dias');
insert into detalle_coberturas (departamento,empresa_mensajeria,precio_envio,tiempo_estimado)values ('2','223457689-5','4','4 dias');
insert into detalle_coberturas (departamento,empresa_mensajeria,precio_envio,tiempo_estimado)values ('3','223457689-5','15','3 dias');
insert into detalle_coberturas (departamento,empresa_mensajeria,precio_envio,tiempo_estimado)values ('1','229455679-0','12','1 dias');
insert into detalle_coberturas (departamento,empresa_mensajeria,precio_envio,tiempo_estimado)values ('1','323457189-5','12','1 dias');
insert into detalle_coberturas (departamento,empresa_mensajeria,precio_envio,tiempo_estimado)values ('3','323457189-5','7','2 dias');
insert into detalle_coberturas (departamento,empresa_mensajeria,precio_envio,tiempo_estimado)values ('1','229457089-5','4','1 dias');
insert into detalle_coberturas (departamento,empresa_mensajeria,precio_envio,tiempo_estimado)values ('2','229457089-5','15','3 dias');
insert into detalle_coberturas (departamento,empresa_mensajeria,precio_envio,tiempo_estimado)values ('3','229457089-5','10','2 dias');
insert into detalle_coberturas (departamento,empresa_mensajeria,precio_envio,tiempo_estimado)values ('4','229457089-5','10','3 dias');
insert into detalle_coberturas (departamento,empresa_mensajeria,precio_envio,tiempo_estimado)values ('5','229457089-5','12','4 dias');

--Ventas 
insert into ventas (numero,fecha,cliente) values (seq_ventas.nextval,TO_DATE('04/03/2018','dd/mm/yyyy'),'12562346');
insert into ventas (numero,fecha,cliente) values (seq_ventas.nextval,TO_DATE('05/03/2018','dd/mm/yyyy'),'11349783');
insert into ventas (numero,fecha,cliente) values (seq_ventas.nextval,TO_DATE('07/03/2018','dd/mm/yyyy'),'24363582');
insert into ventas (numero,fecha,cliente) values (seq_ventas.nextval,TO_DATE('05/04/2018','dd/mm/yyyy'),'11349783');
insert into ventas (numero,fecha,cliente) values (seq_ventas.nextval,TO_DATE('05/04/2018','dd/mm/yyyy'),'34363582');
insert into ventas (numero,fecha,cliente) values (seq_ventas.nextval,TO_DATE('06/04/2018','dd/mm/yyyy'),'34562346');
insert into ventas (numero,fecha,cliente) values (seq_ventas.nextval,TO_DATE('07/05/2018','dd/mm/yyyy'),'12342873');
insert into ventas (numero,fecha,cliente) values (seq_ventas.nextval,TO_DATE('05/06/2018','dd/mm/yyyy'),'34363582');
insert into ventas (numero,fecha,cliente) values (seq_ventas.nextval,TO_DATE('17/06/2018','dd/mm/yyyy'),'14263342');
insert into ventas (numero,fecha,cliente) values (seq_ventas.nextval,TO_DATE('17/07/2018','dd/mm/yyyy'),'33303582');
insert into ventas (numero,fecha,cliente) values (seq_ventas.nextval,TO_DATE('24/08/2018','dd/mm/yyyy'),'34163382');
insert into ventas (numero,fecha,cliente) values (seq_ventas.nextval,TO_DATE('24/09/2018','dd/mm/yyyy'),'37383582');
insert into ventas (numero,fecha,cliente) values (seq_ventas.nextval,TO_DATE('24/10/2018','dd/mm/yyyy'),'37383582');
insert into ventas (numero,fecha,cliente) values (seq_ventas.nextval,TO_DATE('02/11/2018','dd/mm/yyyy'),'37383582');
insert into ventas (numero,cliente) values (seq_ventas.nextval,'11349783');
insert into ventas (numero,cliente) values (seq_ventas.nextval,'12342873');
insert into ventas (numero,cliente) values (seq_ventas.nextval,'34562346');
insert into ventas (numero,cliente) values (seq_ventas.nextval,'15561346');
insert into ventas (numero,cliente) values (seq_ventas.nextval,'34162342');
insert into ventas (numero,cliente) values (seq_ventas.nextval,'14263342');
insert into ventas (numero,cliente) values (seq_ventas.nextval,'34363582');
insert into ventas (numero,cliente) values (seq_ventas.nextval,'24363582');
insert into ventas (numero,cliente) values (seq_ventas.nextval,'33303582');

--Detalle ventas
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','23','azul','1');
insert into detalle_ventas (venta,producto,color,cantidad) values ('2','20','negro','1');
insert into detalle_ventas (venta,producto,color,cantidad) values ('2','26',null,'1');
insert into detalle_ventas (venta,producto,color,cantidad) values ('3','13',null,'1');
insert into detalle_ventas (venta,producto,color,cantidad) values ('4','19',null,'4');
insert into detalle_ventas (venta,producto,color,cantidad) values ('5','31',null,'2');
insert into detalle_ventas (venta,producto,color,cantidad) values ('6','28',null,'1');
insert into detalle_ventas (venta,producto,color,cantidad) values ('7','7',null,'1');
insert into detalle_ventas (venta,producto,color,cantidad) values ('7','8',null,'1');
insert into detalle_ventas (venta,producto,color,cantidad) values ('8','33','negro','1');
insert into detalle_ventas (venta,producto,color,cantidad) values ('9','15',null,'1');
insert into detalle_ventas (venta,producto,color,cantidad) values ('9','19',null,'1');
insert into detalle_ventas (venta,producto,color,cantidad) values ('10','26',null,'1');
insert into detalle_ventas (venta,producto,color,cantidad) values ('11','21','negro','2');
insert into detalle_ventas (venta,producto,color,cantidad) values ('12','19',null,'3');
insert into detalle_ventas (venta,producto,color,cantidad) values ('13','4','negro','2');
insert into detalle_ventas (venta,producto,color,cantidad) values ('14','8',null,'1');
insert into detalle_ventas (venta,producto,color,cantidad) values ('15','12','negro','1');
insert into detalle_ventas (venta,producto,color,cantidad) values ('15','30','negro','1');
insert into detalle_ventas (venta,producto,color,cantidad) values ('16','12','negro','1');
insert into detalle_ventas (venta,producto,color,cantidad) values ('17','11','blanco','1');
insert into detalle_ventas (venta,producto,color,cantidad) values ('18','14',null,'1');
insert into detalle_ventas (venta,producto,color,cantidad) values ('18','32',null,'1');
insert into detalle_ventas (venta,producto,color,cantidad) values ('19','5','negro','1');
insert into detalle_ventas (venta,producto,color,cantidad) values ('20','10','negro','1');
insert into detalle_ventas (venta,producto,color,cantidad) values ('21','20','negro','1');
insert into detalle_ventas (venta,producto,color,cantidad) values ('22','9',null,'1');
insert into detalle_ventas (venta,producto,color,cantidad) values ('23','33','negro','3');
update ventas set estado='T'where numero='1';
update ventas set estado='T'where numero='2';
update ventas set estado='T'where numero='3';
update ventas set estado='T'where numero='4';
update ventas set estado='T'where numero='5';
update ventas set estado='T'where numero='6';
update ventas set estado='T'where numero='7';
update ventas set estado='T'where numero='8';
update ventas set estado='T'where numero='9';
update ventas set estado='T'where numero='10';
update ventas set estado='T'where numero='11';
update ventas set estado='T'where numero='12';
update ventas set estado='T'where numero='13';
update ventas set estado='T'where numero='14';
update ventas set estado='T'where numero='15';
update ventas set estado='T'where numero='16';
update ventas set estado='T'where numero='17';
update ventas set estado='T'where numero='18';
update ventas set estado='T'where numero='19';
update ventas set estado='T'where numero='20';
update ventas set estado='T'where numero='21';
update ventas set estado='T'where numero='22';
update ventas set estado='T'where numero='23';
--Entregas
insert into Entregas (numero,estado,fecha_envio,fecha_llegada,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'E',TO_DATE('06/03/2018','dd/mm/yyyy'),TO_DATE('08/03/2018','dd/mm/yyyy'),'1','12562346','229457089-5');
insert into Entregas (numero,estado,fecha_envio,fecha_llegada,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'E',TO_DATE('06/03/2018','dd/mm/yyyy'),TO_DATE('09/03/2018','dd/mm/yyyy'),'2','11349783','223457689-5');
insert into Entregas (numero,estado,fecha_envio,fecha_llegada,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'E',TO_DATE('06/03/2018','dd/mm/yyyy'),TO_DATE('08/03/2018','dd/mm/yyyy'),'3','24363582','229457089-5');
insert into Entregas (numero,estado,fecha_envio,fecha_llegada,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'E',TO_DATE('06/04/2018','dd/mm/yyyy'),TO_DATE('08/04/2018','dd/mm/yyyy'),'4','11349783','229455679-0');
insert into Entregas (numero,estado,fecha_envio,fecha_llegada,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'E',TO_DATE('06/04/2018','dd/mm/yyyy'),TO_DATE('08/04/2018','dd/mm/yyyy'),'5','34363582','223457689-5');
insert into Entregas (numero,estado,fecha_envio,fecha_llegada,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'E',TO_DATE('07/04/2018','dd/mm/yyyy'),TO_DATE('10/04/2018','dd/mm/yyyy'),'6','34562346','223457689-5');
insert into Entregas (numero,estado,fecha_envio,fecha_llegada,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'E',TO_DATE('09/05/2018','dd/mm/yyyy'),TO_DATE('12/05/2018','dd/mm/yyyy'),'7','12342873','229457089-5');
insert into Entregas (numero,estado,fecha_envio,fecha_llegada,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'E',TO_DATE('06/06/2018','dd/mm/yyyy'),TO_DATE('08/06/2018','dd/mm/yyyy'),'8','34363582','223457689-5');
insert into Entregas (numero,estado,fecha_envio,fecha_llegada,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'E',TO_DATE('19/06/2018','dd/mm/yyyy'),TO_DATE('22/06/2018','dd/mm/yyyy'),'9','14263342','323457189-5');
insert into Entregas (numero,estado,fecha_envio,fecha_llegada,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'E',TO_DATE('19/07/2018','dd/mm/yyyy'),TO_DATE('22/07/2018','dd/mm/yyyy'),'10','33303582','229455679-0');
insert into Entregas (numero,estado,fecha_envio,fecha_llegada,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'E',TO_DATE('29/08/2018','dd/mm/yyyy'),TO_DATE('02/09/2018','dd/mm/yyyy'),'11','34163382','323457189-5');
insert into Entregas (numero,estado,fecha_envio,fecha_llegada,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'E',TO_DATE('29/09/2018','dd/mm/yyyy'),TO_DATE('02/10/2018','dd/mm/yyyy'),'12','37383582','229457089-5');
insert into Entregas (numero,estado,fecha_envio,fecha_llegada,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'E',TO_DATE('26/10/2018','dd/mm/yyyy'),TO_DATE('28/11/2018','dd/mm/yyyy'),'13','37383582','229457089-5');
insert into Entregas (numero,estado,fecha_envio,fecha_llegada,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'E',TO_DATE('02/11/2018','dd/mm/yyyy'),TO_DATE('06/11/2018','dd/mm/yyyy'),'14','37383582','229457089-5');
insert into Entregas (numero,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'15','11349783','223457689-5');
insert into Entregas (numero,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'16','12342873','229457089-5');
insert into Entregas (numero,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'17','34562346','223457689-5');
insert into Entregas (numero,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'18','15561346','229457089-5');
insert into Entregas (numero,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'19','34162342','229457089-5');
insert into Entregas (numero,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'20','14263342','323457189-5');
insert into Entregas (numero,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'21','34363582','223457689-5');
insert into Entregas (numero,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'22','24363582','229457089-5');
insert into Entregas (numero,venta,cliente,empresa_mensajeria) values(seq_entregas.nextval,'23','33303582','229455679-0');