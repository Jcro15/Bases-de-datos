
alter table entregas drop constraint FK_ENTREGAS_EMPRESAS;
alter table entregas add constraint FK_ENTREGAS_EMPRESAS
foreign key (empresa_mensajeria) references empresas_de_mensajeria(identificacion) on delete set null;

alter table detalle_coberturas drop constraint FK_DETALLE_COBERTURAS_EMPRESAS;
alter table detalle_coberturas add constraint FK_DETALLE_COBERTURAS_EMPRESAS
foreign key(empresa_mensajeria) references empresas_de_mensajeria(identificacion) on delete cascade;

