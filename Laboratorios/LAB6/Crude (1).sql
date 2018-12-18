create or replace package PC_VALIDACIONES IS
    Procedure AD_Validacion(Njustificacion in xmltype,Nperfil in varchar2,Nprofesional in varchar2, Ncompetencia in number);
    Procedure AD_Evidencia(Nvalidacion in number,Nevidencia in varchar2);
    Procedure MO_Validacion(Nvalidacion in number,Njustificacion xmltype , Nestado in varchar2 );
    Procedure MO_Evidencia(Nvalidacion in number ,Oevidencia in varchar2,Nevidencia in varchar2);
    function  CO_Validaciones_registradas return sys_refcursor;
    function CO_Validaciones(Ncorreo in varchar2) return sys_refcursor;
end PC_VALIDACIONES;
/

create or replace package PC_LOGROS IS
    Procedure AD_Logros(Ncategoria in varchar2, Nnombre in varchar2, Nprofesional in varchar2);
    procedure MO_Logros(Ncategoria in varchar2, Nnombre in varchar2, Nprofesional in varchar2);
    Procedure DEL_Logros(Nnombre in varchar2, Nprofesional in varchar2);
    function CO_LOGROS return sys_refcursor;
    function CO_LOGROS_Perfil(Nperfil in varchar2) return sys_refcursor;
end PC_LOGROS;
/



