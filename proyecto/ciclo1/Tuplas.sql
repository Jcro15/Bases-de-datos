alter  table proveedores add constraint TUP_IDENTIFICACION
check ((tipo_identificacion='NIT' and (REGEXP_LIKE (identificacion,'^[0-9]{9}\-[0-9]$'))) or (tipo_identificacion='CC' and (REGEXP_LIKE (identificacion,'^[0-9]{8}$'))));


alter table surtimientos add constraint TUP_FECHAS
check (fecha_envio<=fecha_llegada);