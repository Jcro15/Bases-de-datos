Drop trigger TG_AD_PRODUCTOS;
Drop trigger TG_MO_PRODUCTOS;
Drop trigger TG_DEL_PRODUCTOS;
Drop trigger TG_AD_PROVEEDORES;
Drop trigger TG_MO_PROVEEDORES;
Drop trigger TG_DEL_PROVEEDORES;
Drop trigger TG_AD_SURTIMIENTOS;
Drop trigger TG_MO_SURTIMIENTOS;
Drop trigger TG_DEL_SURTIMIENTOS;
Drop trigger TG_AD_COMPRAS;
Drop trigger TG_MO_COMPRAS;
Drop trigger TG_DEL_COMPRAS;
Drop trigger TG_AD_ABASTECIMIENTOS;
Drop trigger TG_MO_ABASTECIMIENTOS;
Drop trigger TG_DEL_ABASTECIMIENTOS;
Drop trigger TG_AD_JUEGOS;
Drop trigger TG_MO_JUEGOS;
Drop trigger TG_MO_UNIDADES;

delete from Juegos;
delete from Unidades;
delete from Abastecimientos;
delete from Surtimientos;
delete from Bodegas;
delete from Ofrecimientos;
delete from Compras;
delete from Proveedores;
delete from Productos;
delete from Categorias;