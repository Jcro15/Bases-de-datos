INSERT into Proveedores values('7729382913-7','aaaa','1268161222','kra9cll8','aaaa@mail.com','NIT');
INSERT into Compras(numero,fecha,proveedor) values(seq_compras.nextval,TO_DATE(sysdate,'dd/mm/yyyy'),'772938913-7');
INSERT into Surtimientos(numero,bodega,compra,fecha_envio,fecha_llegada,estado) values(seq_surtimientos.nextval,'2','37',TO_DATE('05/09/2018','dd/mm/yyyy'),TO_DATE('08/06/2018','dd/mm/yyyy'),'P');
