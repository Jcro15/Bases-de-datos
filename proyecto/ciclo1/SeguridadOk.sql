SELECT PA_GERENTE.CONSULTAR_PRODUCTOS FROM DUAL;

execute pa_gerente.modificar_ofrecimiento('665308893-4','22','57');

SELECT PA_Asistente_BODEGA.CONSULTAR_BODEGAS FROM DUAL;
select pa_asistente_bodega.consultar_capacidad_restante from dual;

select pa_cliente.consultar_productos_categoria(2) from dual;
