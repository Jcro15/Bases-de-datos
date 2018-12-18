execute PA_Gerente_ventas.Adicionar_Empresa('145345678-1','3005733644','fedx@mail.com','fedex','kra123-122','1','16','2 dias');
execute PA_Cliente_ventas.Adicionar_cliente('12312456', 'Fulano','Fulano@mail.com', '3004561233','CC','kra 123-189','13423','1' );
execute PA_Cliente_ventas.Adicionar_Ventas('12312456' ,'1','negro','1');
select PA_Cliente_ventas.consultar_info('12312456') from dual ;
select pa_cliente_ventas.consultar_detalle_cliente('12312456')FROM DUAL;