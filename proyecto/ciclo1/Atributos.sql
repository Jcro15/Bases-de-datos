
    

    


--Checks
--TDinero
ALTER TABLE Abastecimientos add constraint CK_ABASTECIMIENTOS_PRECIO 
    check(precio_compra>0);
Alter table Productos add constraint CK_PRODUCTOS_PRECIO
    check(precio>0);
ALTER TABLE Ofrecimientos add constraint CK_OFRECIMIENTOS_COSTO
    check(precio_actual>0);
--??   
Alter table Bodegas add constraint CK_BODEGAS_CAPACIDAD
    check(capacidad>0);
--Tcantidad
ALTER TABLE Abastecimientos add constraint CK_ABASTECIMIENTOS_CANTIDAD
    check(cantidad>0);
--Tcorreo
ALTER TABLE Proveedores ADD CONSTRAINT CK_PROVEEDORES_CORREO
    check(REGEXP_LIKE (correo,'[a-zA-Z0-9]+@[a-zA-Z0-9]' ));
--Testado
ALTER TABLE Surtimientos ADD CONSTRAINT CK_Estados_de_envio_ESTADO
    check(estado='P' OR estado ='E' or estado='A');

--Tidentificacion
Alter TABLE Proveedores ADD CONSTRAINT CK_PROVEEDORES_TIDENTIFICACION
    check (tipo_identificacion='CC' or tipo_identificacion='TI' or tipo_identificacion='NIT');
--Ttamaño
ALTER TABLE Productos ADD CONSTRAINT CK_PRODUCTOS_TAMAÑO
    check(REGEXP_LIKE (tamaño,'[0-90]+x[0-90]+x[0-90]' ));
--Ttipo
Alter table Productos ADD CONSTRAINT CK_PRODUCTOS_TIPO
    Check(tipo='Tecnologia'or tipo='Juego' or tipo='Accesorio' or tipo='Decorativo');