alter  table Clientes add constraint TUP_IDENTIFICACION_Clientes
check ((tipo_identificacion='NIT' and (REGEXP_LIKE (identificacion,'^[0-9]{9}\-[0-9]$'))) or (tipo_identificacion='CC' and (REGEXP_LIKE (identificacion,'^[0-9]{8}$'))));

alter table entregas add constraint TUP_FECHAS_ENVIOS
check (fecha_envio<=fecha_llegada);
