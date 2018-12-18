select PA_PERFIL.CONSULTA_Validaciones('Jimena@mail.com') from dual;
select PA_PERFIL.CONSULTA_LOGROS_P('Jimena@mail.com') FROM DUAL;
execute PA_PERFIL.ADICIONAR_Evidencia(5,'http//:evidencia7.com.html') ;
execute PA_PERFIL.ADICIONAR_Logros('P', 'Premio Turing','Jimena@mail.com' );
execute PA_PERFIL.MODIFICAR_Evidencia(5,'http//:evidencia5.com.html','http//:evidencia6.com.html');
