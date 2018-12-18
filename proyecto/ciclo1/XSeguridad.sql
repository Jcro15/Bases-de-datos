--Xseguridad
revoke execute on PA_Gerente from Gerente;
revoke execute on PA_Asistente_Bodega from Asistente_Bodega;
revoke execute on PA_Cliente from Cliente;
drop role Cliente;
drop role Gerente;
drop role Asistente_Bodega;