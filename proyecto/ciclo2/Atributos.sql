--Checks
--TDinero

ALTER TABLE ventas add constraint CK_VENTAS_VALOR 
    check(valor>=0);
    
Alter table detalle_coberturas add constraint CK_COBERTURAS_PRECIO
    check(precio_envio>=0);
--Tcantidad
ALTER TABLE detalle_ventas add constraint CK_DVENTAS_CANTIDAD
    check(cantidad>0);
    
    
--Tcorreo
ALTER TABLE Empresas_de_mensajeria ADD CONSTRAINT CK_EMPRESAS_CORREO
    check(REGEXP_LIKE (correo,'[a-zA-Z0-9]+@[a-zA-Z0-9]' ));
    
ALTER TABLE clientes ADD CONSTRAINT CK_CLIENTES_CORREO
    check(REGEXP_LIKE (correo,'[a-zA-Z0-9]+@[a-zA-Z0-9]' ));


--Testado
ALTER TABLE entregas ADD CONSTRAINT CK_ENTREGAS_ESTADO
    check(estado='P' OR estado ='E' or estado='A');

--Tidentificacion
Alter TABLE clientes ADD CONSTRAINT CK_CLIENTES_TIDENTIFICACION
    check (tipo_identificacion='CC' or tipo_identificacion='TI' or tipo_identificacion='NIT');
--Ttiempo

alter table detalle_Coberturas add constraint CK_DCOBERTURAS_TIEMPO
check (REGEXP_LIKE (tiempo_estimado,'^([1-9][0-9]*)+ (dias|semanas)$'));

--Tzip
alter table Clientes add constraint CK_Clientes_Tzip
check (REGEXP_LIKE (codigo_zip,'^([0-9]{5})$'));
--Testado_venta
alter table ventas add constraint CK_ESTADO_VENTA
check(estado='A' or estado='T');