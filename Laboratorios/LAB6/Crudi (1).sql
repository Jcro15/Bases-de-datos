create or replace package body PC_VALIDACIONES IS
    Procedure AD_Validacion(Njustificacion in xmltype ,Nperfil in varchar2,Nprofesional in varchar2, Ncompetencia in number) IS	
        BEGIN
            INSERT INTO Validaciones (justificacion,perfil,profesional,competencia) values(Njustificacion,Nperfil,Nprofesional, Ncompetencia);
        COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20010,'No puedes insertar en validaciones');
        END;
    Procedure AD_Evidencia(Nvalidacion in number,Nevidencia in varchar2) is
    begin
    insert into evidencias(validacion,evidencia) values(Nvalidacion,Nevidencia);
     COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20010,'No puedes insertar evidencia');
        END;
        
    Procedure MO_Validacion(Nvalidacion in number,Njustificacion in xmltype, Nestado in varchar2 )is
    begin
    update validaciones set justificacion=Njustificacion ,estado=Nestado where numero=Nvalidacion;
    COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20010, 'no puedes modificar validaciones');
        END;
    
    Procedure MO_Evidencia(Nvalidacion in number ,Oevidencia in varchar2,Nevidencia in varchar2)is
    begin
    update evidencias set evidencia=Nevidencia where validacion=Nvalidacion and evidencia=Oevidencia;
    COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20010, 'No puedes modificar evidencia');
        END;
    
    function  CO_Validaciones_registradas return sys_refcursor is CO_VAR SYS_REFCURSOR;
    begin
    open CO_VAR for
    
        select sector ,(select count(numero) from validaciones,profesionales  P where P.correo_profesional=validaciones.profesional and estado='A' and P.sector= profesionales.sector) AS ANULADAS ,(select count(numero) from validaciones,profesionales  P where P.correo_profesional=validaciones.profesional and estado!='A' and P.sector= profesionales.sector) AS FIRMES,(select count(numero) from validaciones,profesionales  P where P.correo_profesional=validaciones.profesional and estado!='A' and P.sector= profesionales.sector) /(select count(numero) from validaciones,profesionales  P where P.correo_profesional=validaciones.profesional and P.sector= profesionales.sector)*100 AS PORCENTAJE_FIRME,(select count(numero) from validaciones,profesionales  P where P.correo_profesional=validaciones.profesional and estado='A' and P.sector= profesionales.sector)/(select count(numero) from validaciones,profesionales  P where P.correo_profesional=validaciones.profesional and P.sector= profesionales.sector)*100 AS PORCENTAJE_ANULADAS from profesionales;
    return CO_VAR;
    end;
    
    function CO_Validaciones(Ncorreo in varchar2) return sys_refcursor is CO_VA SYS_refcursor;
    begin
    open CO_VA for
    SELECT competencia,AVG(evaluacion)
	FROM  Validaciones V, XMLTABLE('/Justificacion/Proyecto'
						passing V.justificacion
						columns nombre  PATH  'Nombre/text()', evaluacion  path  'Evaluacion/@numero'
                            )where perfil=Ncorreo  group by competencia  ;
    return CO_VA;
    end;
end PC_VALIDACIONES;
/
create or replace package body PC_LOGROS IS
    Procedure AD_Logros(Ncategoria in varchar2, Nnombre in varchar2, Nprofesional in varchar2)is
    begin
    insert into logros (categoria,nombre,profesional) values (Ncategoria, Nnombre, Nprofesional);
    COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20010,'No puedes insertar en logros');
        END;
    
    procedure MO_Logros(Ncategoria in varchar2, Nnombre in varchar2, Nprofesional in varchar2)is
    begin
    update logros set categoria=Ncategoria where Nnombre=nombre and Nprofesional=profesional;
    COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20010,'No puedes modificar logros');
        END;
    
    Procedure DEL_Logros(Nnombre in varchar2, Nprofesional in varchar2)is
    begin
    delete logros where Nnombre=nombre and Nprofesional=profesional;
        COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20010,'No puedes eliminar logros');
        END;
    
    function CO_LOGROS return sys_refcursor is R_Logros sys_refcursor;
    begin
    open  R_Logros for
    select * from logros order by profesional;
    return  R_Logros;
    end;
    function CO_LOGROS_Perfil(Nperfil in varchar2) return sys_refcursor is R_Logros_P sys_refcursor;
    begin
    open  R_Logros_P for
    select * from logros where profesional=Nperfil;
    return  R_Logros_P;
    end;
end PC_LOGROS;
    



