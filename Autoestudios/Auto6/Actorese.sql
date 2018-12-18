CREATE OR REPLACE PACKAGE PA_Decano IS
    Procedure Agregar_taller(n_id in varchar2,n_modle  in varchar2,n_kind in char ,n_dow in varchar2,n_tod in char,n_duration in number,n_room in varchar );
    Procedure Agregar_profesor(n_name in varchar2,n_hoja_de_vida in XMLTYPE);
    Procedure Actualizar_profesor (n_id in varchar2, n_name in varchar2,n_hoja_de_vida in XMLTYPE);
    Procedure Eliminar_profesor(n_id in varchar2);
    Function Consultar_Profesores_tiempo return SYS_REFCURSOR;
    Function Consultar_Profesores return SYS_REFCURSOR;
    Function Consultar_Reconocimientos return SYS_REFCURSOR;
    --Function Consultar_Cruces return SYS_REFCURSOR;
    Function Consultar_horarios return SYS_REFCURSOR;

    
end PA_Decano;
/

CREATE OR REPLACE PACKAGE PA_Profesor is 
        Procedure Agregar_taller(n_id in varchar2,n_modle  in varchar2,n_kind in char ,n_dow in varchar2,n_tod in char,n_duration in number,n_room in varchar );
        Function Consultar_Profesores return SYS_REFCURSOR;
        Function Consultar_Reconocimientos return SYS_REFCURSOR;
end PA_Profesor;
/    