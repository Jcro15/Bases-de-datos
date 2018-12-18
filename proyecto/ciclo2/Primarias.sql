alter table departamentos add constraint PK_DEPARTAMENTOS
primary key(codigo);

alter table empresas_de_mensajeria add constraint PK_EMPRESAS_MENSAJERIA
primary key(identificacion);

alter table ventas add constraint PK_VENTAS
primary key(numero);

alter table clientes add constraint PK_CLIENTES
primary key(identificacion);

alter table entregas add constraint PK_ENTREGAS
primary key(numero);


alter table detalle_ventas add constraint PK_DETALLE_VENTAS
primary key(venta,producto);


alter table detalle_coberturas add constraint PK_DETALLE_COBERTURAS
primary key(departamento,empresa_mensajeria);

