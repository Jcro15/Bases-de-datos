Create or replace package PC_Taller is
    Procedure Ad_taller(n_id in varchar2,n_modle  in varchar2,n_kind in char ,n_dow in varchar2,n_tod in char,n_duration in number,n_room in varchar );
    Function Co_horarios return SYS_REFCURSOR;
End PC_Taller;
/
Create or replace package PC_Profesor is 
    Procedure AD_profesor(n_name in varchar2,n_hoja_de_vida in XMLTYPE);
    Procedure MO_profesor (n_id in varchar2, n_name in varchar2,n_hoja_de_vida in XMLTYPE);
    Procedure EL_profesor(n_id in varchar2);
    Function CO_Profesores_tiempo return SYS_REFCURSOR;
    Function CO_Profesores return SYS_REFCURSOR;
    Function CO_Reconocimientos return SYS_REFCURSOR;
    
    Function CO_Cruces return SYS_REFCURSOR;
    
end PC_Profesor;
/
