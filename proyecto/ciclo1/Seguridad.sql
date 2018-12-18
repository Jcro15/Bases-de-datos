--Seguridad
create role Cliente;
create role Gerente;
create role Asistente_Bodega;

grant execute on PA_Gerente to Gerente;
grant execute on PA_Asistente_Bodega to Asistente_Bodega;
grant execute on PA_Cliente to Cliente;

