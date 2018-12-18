drop trigger TG_DEL_DPTO;
drop trigger TG_MO_DPTO;
drop trigger TG_AD_VENTAS;
drop trigger TG_MO_VENTAS;
drop trigger TG_DEL_VENTAS;
drop trigger TG_AD_ENTREGAS;
drop trigger TG_MO_ENTREGAS;
drop trigger TG_DEL_ENTREGAS;
drop trigger TG_MO_CLIENTES;
drop trigger TG_DEL_CLIENTES;
drop trigger TG_MO_EMPRESAS;
drop trigger TG_MO_DECOBERTURAS;
drop trigger TG_AD_DEVENTAS;
drop trigger TG_MO_DEVENTAS;
drop trigger TG_DEL_DEVENTAS;


delete from detalle_coberturas;
delete from detalle_ventas;
delete from entregas ;
delete from ventas;
delete from empresas_de_mensajeria;
delete from clientes;
delete from departamentos;