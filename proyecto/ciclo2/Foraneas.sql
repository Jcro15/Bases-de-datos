alter table detalle_ventas add constraint FK_DETALLE_VENTAS_PRODUCTOS
foreign key (producto) references productos(id_producto);

alter table detalle_ventas add constraint FK_DETALLE_VENTAS_VENTAS
foreign key (venta) references ventas(numero);

alter table entregas add constraint FK_ENTREGAS_VENTAS
foreign key (venta) references ventas(numero);

alter table entregas add constraint FK_ENTREGAS_CLIENTES
foreign key (cliente) references Clientes(identificacion);

alter table entregas add constraint FK_ENTREGAS_EMPRESAS
foreign key (empresa_mensajeria) references empresas_de_mensajeria(identificacion);

alter table detalle_coberturas add constraint FK_DETALLE_COBERTURAS_EMPRESAS
foreign key(empresa_mensajeria) references empresas_de_mensajeria(identificacion);

alter table detalle_coberturas add constraint FK_DETALLE_COBERTURAS_DPTO
foreign key(departamento) references departamentos(codigo);

alter table ventas add constraint FK_VENTAS_CLIENTES
foreign key(cliente) references clientes(identificacion);

alter table clientes add constraint FK_CLIENTES_DPTO
foreign key(departamento) references departamentos(codigo);
