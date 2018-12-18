CREATE OR REPLACE PACKAGE body PA_Decano IS


    Procedure Agregar_taller(n_id in varchar2,n_modle  in varchar2,n_kind in char ,n_dow in varchar2,n_tod in char,n_duration in number,n_room in varchar ) IS
    BEGIN
        PC_Taller.Ad_taller(n_id ,n_modle ,n_kind  ,n_dow ,n_tod,n_duration ,n_room );
        commit;
    end;
    
    Procedure Agregar_profesor(n_name in varchar2,n_hoja_de_vida in XMLTYPE) is
    begin
    PC_PROFESOR.AD_PROFESOR(n_name,n_hoja_de_vida);
    commit;
    end;
    
    Procedure Actualizar_profesor (n_id in varchar2, n_name in varchar2,n_hoja_de_vida in XMLTYPE)is
    begin
    PC_PROFESOR.MO_PROFESOR(n_id,n_name,n_hoja_de_vida);
    commit;
    end;
    
    Procedure Eliminar_profesor(n_id in varchar2)is
    begin
    PC_Profesor.EL_PROFESOR(n_id);
    commit;
    end;
    
    
     Function Consultar_Profesores_tiempo return SYS_REFCURSOR is prof_tiempo SYS_REFCURSOR;
  BEGIN
	prof_tiempo := PC_PROFESOR.CO_PROFESORES_TIEMPO;
	RETURN prof_tiempo;
  END;
  
  Function Consultar_Profesores return SYS_REFCURSOR is Profesores SYS_REFCURSOR;
  BEGIN
    Profesores := PC_PROFESOR.CO_PROFESORES;
    RETURN Profesores;
END;

  Function Consultar_Reconocimientos return SYS_REFCURSOR is Reconocimientos SYS_REFCURSOR;
  BEGIN
    Reconocimientos := PC_PROFESOR.CO_RECONOCIMIENTOS;
    RETURN Reconocimientos;
END;

  Function Consultar_Horarios return SYS_REFCURSOR is Horarios SYS_REFCURSOR;
  BEGIN
    Horarios := PC_TALLER.CO_HORARIOS;
    RETURN Horarios;
END;


    
end PA_Decano;
/

CREATE OR REPLACE PACKAGE body PA_Profesor IS

Procedure Agregar_taller(n_id in varchar2,n_modle  in varchar2,n_kind in char ,n_dow in varchar2,n_tod in char,n_duration in number,n_room in varchar ) IS
    BEGIN
        PC_Taller.Ad_taller(n_id ,n_modle ,n_kind  ,n_dow ,n_tod,n_duration ,n_room );
        commit;
    end;
    
Function Consultar_Profesores return SYS_REFCURSOR is Profesores SYS_REFCURSOR;
  BEGIN
    Profesores := PC_PROFESOR.CO_PROFESORES;
    RETURN Profesores;
END;

Function Consultar_Reconocimientos return SYS_REFCURSOR is Reconocimientos SYS_REFCURSOR;
  BEGIN
    Reconocimientos := PC_PROFESOR.CO_RECONOCIMIENTOS;
    RETURN Reconocimientos;
END;
    
    

 end PA_Profesor;
/
   
    
