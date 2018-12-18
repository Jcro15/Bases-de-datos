create table departamentos(
codigo number(11) not null,
nombre varchar(50) not null);

create table empresas_de_mensajeria(
identificacion varchar(25)not null,
telefono varchar(25)not null,
correo varchar(50)not null,
nombre varchar(50)not null,
direccion varchar(25)not null);

create table ventas (
numero number(11) not null,
fecha date not null,
valor number(11) not null,
cliente varchar(25) NOT NULL,
estado varchar(1)NOT NULL); 


create table clientes(
identificacion varchar(25) not null,
nombre varchar(50) not null,
correo varchar(50) not null,
telefono varchar(25) not null,
tipo_identificacion varchar(3) not null,
direccion varchar(25) not null,
codigo_zip varchar(25) not null,
departamento number(11));

create table entregas(
numero number(11) not null,
estado varchar(1) not null,
fecha_envio date not null,
fecha_llegada date ,
venta number(11) not null ,
cliente varchar(25) not null,
empresa_mensajeria varchar(25) );


create table detalle_ventas(
venta number(11) not null,
producto number(11) ,
color varchar(25),
cantidad number(11)not null);

create table detalle_coberturas(
departamento number(11) not null,
empresa_mensajeria varchar(25) not null,
precio_envio number(11) not null,
tiempo_estimado varchar(25) not null);
