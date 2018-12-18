Create table Bodegas (
numero number(11) NOT NULL,
direccion varchar(50) NOT NULL,
capacidad number(11) NOT NULL);


Create table Compras(
numero number(11) NOT NULL,
fecha date ,
proveedor varchar(25)
);

Create table Surtimientos(
numero number(11) NOT NULL,
compra number(11) NOT NULL,
bodega number(11)NOT NULL,
fecha_envio date NOT NULL,
fecha_llegada date,
estado varchar (1) NOT NULL) ; 

Create table Unidades(
numero_de_serie varchar(25) NOT NULL,
color varchar(25),
producto number(11)NOT NULL,
surtimiento number(11) NOT NULL);



Create table Productos(
id_producto number(11)NOT NULL,
precio number(11)NOT NULL,
marca varchar(25) NOT NULL,
nombre varchar(50)NOT NULL,
descripcion varchar(50)NOT NULL,
tipo varchar(25)NOT NULL,
categoria number(11) NOT NULL,
tamaño varchar (25)NOT NULL);

Create table Categorias(
numero number(11)NOT NULL,
nombre varchar(25)NOT NULL,
descripcion varchar(100)NOT NULL);

Create table Juegos(
producto number(11)NOT NULL,
requisitos varchar(50)NOT NULL,
Ficha_tecnica xmltype NOT NULL);


Create table Proveedores (
identificacion varchar(25)NOT NULL,
nombre varchar(50)NOT NULL,
telefono  varchar(25)NOT NULL,
direccion varchar(50)NOT NULL,
correo varchar(50)NOT NULL,
tipo_identificacion varchar(3)NOT NULL);



Create table Ofrecimientos(
proveedor varchar(25) NOT NULL,
producto number(11) NOT NULL,
precio_actual number(11) NOT NULL);

Create table Abastecimientos(
linea_compra number(11)NOT NULL,
producto number(11) ,
precio_compra number(11)NOT NULL,
color varchar(25),
compra number(11)NOT NULL,
cantidad number(11) NOT NULL);