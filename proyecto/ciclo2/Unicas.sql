alter table clientes add constraint UK_CORREO_CLIENTES
unique(correo);

alter table empresas_de_mensajeria add constraint UK_CORREO_EMPRESAS
unique(correo);

alter table empresas_de_mensajeria add constraint UK_DIRECCION_EMPRESAS
unique(direccion);