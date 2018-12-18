create or replace package body  PA_JUNTA  is
    Procedure ADICIONAR_Validacion(Njustificacion in xmltype,Nperfil in varchar2,Nprofesional in varchar2, Ncompetencia in number) is
    begin 
    PC_VALIDACIONES.AD_Validacion(Njustificacion,Nperfil,Nprofesional, Ncompetencia);
    end;
    Procedure ADICIONAR_Evidencia(Nvalidacion in number,Nevidencia in varchar2) is
    begin
     PC_VALIDACIONES.AD_Evidencia(Nvalidacion,Nevidencia);
     END;
    Procedure MODIFICAR_Validacion(Nvalidacion in number,Njustificacion in xmltype, Nestado in varchar2)  is
    begin
    PC_VALIDACIONES.MO_Validacion(Nvalidacion,Njustificacion, Nestado);
    END;
    
    Procedure MODIFICAR_Evidencia(Nvalidacion in number ,Oevidencia in varchar2,Nevidencia in varchar2) is
    BEGIN
    PC_VALIDACIONES.MO_Evidencia(Nvalidacion,Oevidencia,Nevidencia);
    END;
    
    function  CONSULTA_Validaciones_registro return sys_refcursor is CONSULTA_Validaciones_R SYS_REFCURSOR;
    BEGIN
        CONSULTA_Validaciones_R := PC_VALIDACIONES.CO_Validaciones_registradas;
        RETURN CONSULTA_Validaciones_R;
    END;
    
    function CONSULTA_LOGROS return sys_refcursor is CONSULTA_L SYS_REFCURSOR ;
    BEGIN
        CONSULTA_L := PC_LOGROS.CO_LOGROS;
        RETURN CONSULTA_L;
    END;
end PA_JUNTA;
/

create or replace package body PA_PERFIL  is
    
    
    Procedure ADICIONAR_Evidencia(Nvalidacion in number,Nevidencia in varchar2) is
    BEGIN
        PC_VALIDACIONES.AD_Evidencia(Nvalidacion,Nevidencia);
    END;
    Procedure MODIFICAR_Validacion(Nvalidacion in number,Njustificacion in xmltype, Nestado in varchar2)  is
    BEGIN
        PC_VALIDACIONES.MO_Validacion(Nvalidacion,Njustificacion, Nestado);
    END;
    
    Procedure MODIFICAR_Evidencia(Nvalidacion in number ,Oevidencia in varchar2,Nevidencia in varchar2) is
    BEGIN
    PC_VALIDACIONES.MO_Evidencia(Nvalidacion,Oevidencia,Nevidencia);
    END;
    
    function CONSULTA_Validaciones(Ncorreo in varchar2) return sys_refcursor is CONSULTA_Validacion SYS_REFCURSOR;
    BEGIN
        CONSULTA_Validacion :=PC_VALIDACIONES.CO_Validaciones(Ncorreo);
        RETURN CONSULTA_Validacion;
    END;
    
    
    Procedure ADICIONAR_Logros(Ncategoria in varchar2, Nnombre in varchar2, Nprofesional in varchar2) is
    BEGIN
    PC_LOGROS.AD_Logros(Ncategoria, Nnombre , Nprofesional );
    END;
    
    procedure MODIFICAR_Logros(Ncategoria in varchar2, Nnombre in varchar2, Nprofesional in varchar2) is
    BEGIN
    PC_LOGROS.MO_Logros(Ncategoria , Nnombre , Nprofesional );
    END;
    
    Procedure DELETE_Logros(Nnombre in varchar2, Nprofesional in varchar2) is
    BEGIN
    PC_LOGROS.DEL_Logros(Nnombre , Nprofesional );
    END;
    
    function CONSULTA_LOGROS_P(Nperfil in varchar2) return sys_refcursor is CONSULTA_LO SYS_REFCURSOR;
    BEGIN
        CONSULTA_LO := PC_LOGROS.CO_LOGROS_Perfil(Nperfil);
        RETURN CONSULTA_LO;
    END;
    
end PA_PERFIL;
/

