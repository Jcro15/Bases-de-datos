create or replace package PA_JUNTA IS
    Procedure ADICIONAR_Validacion(Njustificacion in xmltype,Nperfil in varchar2,Nprofesional in varchar2, Ncompetencia in number);
    Procedure ADICIONAR_Evidencia(Nvalidacion in number,Nevidencia in varchar2);
    Procedure MODIFICAR_Validacion(Nvalidacion in number,Njustificacion in xmltype, Nestado in varchar2 );
    Procedure MODIFICAR_Evidencia(Nvalidacion in number ,Oevidencia in varchar2,Nevidencia in varchar2);
    function  CONSULTA_Validaciones_registro return sys_refcursor;
    function CONSULTA_LOGROS return sys_refcursor;
end PA_JUNTA;
/

create or replace package PA_PERFIL IS
    Procedure ADICIONAR_Evidencia(Nvalidacion in number,Nevidencia in varchar2);
    Procedure MODIFICAR_Validacion(Nvalidacion in number,Njustificacion in xmltype, Nestado in varchar2 );
    Procedure MODIFICAR_Evidencia(Nvalidacion in number ,Oevidencia in varchar2,Nevidencia in varchar2);
    function CONSULTA_Validaciones(Ncorreo in varchar2) return sys_refcursor;
    Procedure ADICIONAR_Logros(Ncategoria in varchar2, Nnombre in varchar2, Nprofesional in varchar2);
    procedure MODIFICAR_Logros(Ncategoria in varchar2, Nnombre in varchar2, Nprofesional in varchar2);
    Procedure DELETE_Logros(Nnombre in varchar2, Nprofesional in varchar2);
    function CONSULTA_LOGROS_P(Nperfil in varchar2) return sys_refcursor;
end PA_PERFIL;
/



