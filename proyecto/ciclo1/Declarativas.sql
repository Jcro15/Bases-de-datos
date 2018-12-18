
    
--Uks----
ALTER TABLE Productos ADD CONSTRAINT UK_PRODUCTOS
    UNIQUE(nombre);
ALTER TABLE Categorias ADD CONSTRAINT UK_CATEGORIAS
    UNIQUE(nombre);
ALTER TABLE Bodegas ADD CONSTRAINT UK_DIRECCION_BODEGA
    UNIQUE(direccion);
ALTER TABLE Proveedores ADD CONSTRAINT UK_CORREO
    UNIQUE(correo);
ALTER TABLE Proveedores ADD CONSTRAINT UK_DIRECCION_PROVEEDOR
    UNIQUE(direccion);
    
--FKs
ALTER TABLE Productos ADD CONSTRAINT FK_PRODUCTOS_CATEGORIA
    FOREIGN KEY(categoria) REFERENCES Categorias;
ALTER TABLE Unidades ADD CONSTRAINT FK_Unidades_SURTIM 
    FOREIGN KEY (surtimiento) REFERENCES Surtimientos on delete cascade;
ALTER TABLE Unidades ADD CONSTRAINT FK_Unidades_PRODUCTO 
    FOREIGN KEY (producto) REFERENCES Productos ;
ALTER TABLE Juegos ADD CONSTRAINT FK_JUEGOS_PRODUCTOS 
    FOREIGN KEY (producto) REFERENCES Productos on delete cascade;
ALTER TABLE Abastecimientos ADD CONSTRAINT FK_ABASTECIMIENTOS_PRODUCTOS 
    FOREIGN KEY (producto) REFERENCES Productos on delete set null;
ALTER TABLE Abastecimientos ADD CONSTRAINT FK_ABASTECIMIENTOS_COMPRAS 
    FOREIGN KEY (compra) REFERENCES Compras;
ALTER TABLE Compras ADD CONSTRAINT FK_COMPRAS_PROVEEDORES 
    FOREIGN KEY (proveedor) REFERENCES Proveedores on delete set null;
ALTER TABLE Ofrecimientos ADD CONSTRAINT FK_OFRECIMIENTOS_PRODUCTO 
    FOREIGN KEY (producto) REFERENCES Productos on delete cascade;
ALTER TABLE Ofrecimientos ADD CONSTRAINT FK_OFRECIMIENTOS_PROVEEDORES 
    FOREIGN KEY (proveedor) REFERENCES Proveedores ;
ALTER TABLE Surtimientos ADD CONSTRAINT FK_SURTIMIENTOS_BODEGAS
    FOREIGN KEY (bodega)REFERENCES Bodegas;

    
ALTER TABLE Surtimientos ADD CONSTRAINT FK_SURTIMIENTOS_COMPRAS
    FOREIGN KEY (compra)REFERENCES compras ;

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
    check (tipo_identificacion='CC' or tipo_identificacion='TI' or tipo_identificacion='NIT' or tipo_identificacion='P');
--Ttamaño
ALTER TABLE Productos ADD CONSTRAINT CK_PRODUCTOS_TAMAÑO
    check(REGEXP_LIKE (tamaño,'[0-90]+x[0-90]+x[0-90]' ));
--Ttipo
Alter table Productos ADD CONSTRAINT CK_PRODUCTOS_TIPO
    Check(tipo='Tecnologia'or tipo='Juego' or tipo='Accesorio' or tipo='Decorativo');