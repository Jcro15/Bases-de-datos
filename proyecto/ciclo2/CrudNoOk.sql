execute PC_Departamentos.Ad_Departamentos('2', 'Boyaca');
execute PC_Departamentos.Mo_Departamentos('2',null);
execute PC_Clientes.Ad_cliente('87654', 'carlos','carlosA@mail.com','3001234522','CC','cll123-12','12345','2' );
execute PC_Clientes.Mo_cliente('87654320','carlos','carlosB@mail.com', '3001234522','P','cll123-12','12345','2' );
execute PC_Ventas.Ad_Ventas('100','87654320','12',null,'100');
execute PC_Empresas_mensajeria.Ad_Empresa('156243576-5','3012345566','aaqq1@mail.com','111','1211','2','-60','2 dias');
execute PC_Empresas_mensajeria.Mo_Empresa('156243576-1','aaqq@@mail.com','servientrega','kra123-234');
execute PC_Empresas_mensajeria.Mo_Detalle_coberturas('2','156243576-1','65');
execute PC_Entregas.Ad_Entregas('1','87654320','156243576-1');
--execute PC_Entregas.Mo_Entregas('1','w');
--execute PC_Entregas.El_Entregas('1');

