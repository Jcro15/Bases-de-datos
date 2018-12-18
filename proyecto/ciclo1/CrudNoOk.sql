--crudnook

execute PC_Proveedor.Ad_Ofrecimiento('1234251234-1','33',120);
execute PC_Proveedor.Mo_Ofrecimiento('123451234-1','33');
execute PC_Compra.Ad_Compra('123451234-1');
execute PC_Compra.Ad_Abastecimiento(33,118,'negro',36,-20);
execute PC_Bodega.AD_Bodega(7,'kra234-130',-400);
execute PC_Surtimiento.AD_Surtimiento(36,6);
execute PC_Surtimiento.MO_Surtimiento(36,'q');
execute PC_Unidad.Ad_unidad(null,'blanco',33,36);
execute PC_Unidades.El_unidad('1234123');
execute PC_Surtimiento.EL_Surtimiento();
execute PC_Bodega.EL_Bodega();
execute PC_Proveedor.El_Ofrecimiento(33);
execute PC_Producto.DEL_Producto();
execute PC_Proveedor.El_Proveedor();

