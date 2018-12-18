--Un mienbro de la junta directiva quiere saber los logros de los profesionales con el fin de saber el nivel de los profesionales en la red y se los reporta a los perfiles
Select PA_JUNTA.CONSULTA_LOGROS FROM DUAL;
--el perfil desea validar que sus logros corresponden a los valores reportados por la junta directiva
select PA_PERFIL.CONSULTA_LOGROS_P('Jimena@mail.com') from dual;
--Jimena se percata de que le falta un logro por lo que decide añadirlo
execute PA_PERFIL.ADICIONAR_Logros('P', 'Medalla field' ,'Jimena@mail.com' ) ;
--despues jimena intenta visualizar los logros de todos sus compañeros para asegurarse de que es la mejor y no puede
select PA_PERFIL.CONSULTA_Logros from dual;