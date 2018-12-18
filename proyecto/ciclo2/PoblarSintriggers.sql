--Departamentos--ya creados
insert into departamentos (codigo,nombre) values ('1','Bogota');
insert into departamentos (codigo,nombre) values ('2','Antioquia');
insert into departamentos (codigo,nombre) values ('3','Boyaca');
insert into departamentos (codigo,nombre) values ('4','Caldas');
insert into departamentos (codigo,nombre) values ('5','Bolivar');

--Clientes
Insert into clientes(identificacion,nombre,correo,telefono,tipo_identificacion,direccion,codigo_zip,departamento) values('156283450-1','Tecnoalien','Tecnoalien@mail.com','3006518856','NIT','kra223-234','12349','1');




--Empresas Mensajeria--ya creadas
insert into Empresas_de_mensajeria(identificacion,telefono,correo,nombre,direccion) values ('223457689-5','3015692370','Servientrega@mail.com','Servientrega','kra123-153');
insert into Empresas_de_mensajeria(identificacion,telefono,correo,nombre,direccion) values ('229455679-0','3015493912','Envia@mail.com','Envia','kra124-143');
insert into Empresas_de_mensajeria(identificacion,telefono,correo,nombre,direccion) values ('323457189-5','3065697370','Rapidisimo@mail.com','Rapidisimo','kra243-153');
insert into Empresas_de_mensajeria(identificacion,telefono,correo,nombre,direccion) values ('229457089-5','3015691356','DHL@mail.com','DHL','kra183-153');

--Detalle Coberturas ya creado
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
insert into ventas (numero,fecha,valor,cliente,estado) values ('1',TO_DATE('04/09/2018','dd/mm/yyyy'),'200000','156283450-1','T');


--Detalle ventas
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','3','negro','15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','28',null,'15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','4','negro','15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','13',null,'15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','24',null,'15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','26',null,'15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','5','negro','15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','6',null,'15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','9',null,'15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','12','negro','15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','18','blanco','15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','21','negro','15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','33','azul','15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','7',null,'15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','8',null,'15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','25',null,'15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','27',null,'15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','29',null,'15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','10','blanco','15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','15',null,'15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','19',null,'15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','11','azul','15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','14',null,'15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','16','negro','15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','17','negro','15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','20',null,'15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','22','rojo','15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','23','negro','15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','30','gris','15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','31',null,'15');
insert into detalle_ventas (venta,producto,color,cantidad) values ('1','32',null,'15');



--Entregas
insert into Entregas (numero,estado,fecha_envio,fecha_llegada,venta,cliente,empresa_mensajeria) values('1','E',TO_DATE('04/09/2018','dd/mm/yyyy'),TO_DATE('06/09/2018','dd/mm/yyyy'),'1','156283450-1','223457689-5');
