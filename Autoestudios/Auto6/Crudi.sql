create or replace package body PC_Profesor is
     Procedure AD_profesor(n_name in varchar2,n_hoja_de_vida in XMLTYPE) is
     Begin
        insert into staff(name,hojas_de_vida)values (n_name,n_hoja_de_vida);
        commit;
        exception
        when others then
            Rollback;
            raise_application_error(-20001,'error al insertar en Staff');
     end;
     
     
      Procedure MO_profesor (n_id in varchar2, n_name in varchar2 ,n_hoja_de_vida in XMLTYPE ) is
      Begin
      
         UPDATE staff set name=n_name,hojas_de_vida=n_hoja_de_vida where id=n_id;
        
        commit;
        exception
        when others then
            Rollback;
            raise_application_error(-20002,'error al actualizar en Staff');
        end;
        
        
        Procedure EL_profesor(n_id in varchar2) is
        Begin
            delete from staff where id=n_id;
            commit;
        exception
        when others then
            Rollback;
            raise_application_error(-20003,'error al borrar en Staff');
        end;
        
        Function CO_Profesores_tiempo return SYS_REFCURSOR is Profesores_tiempo sys_refcursor;
        begin
            open Profesores_tiempo for 
            select staff   from teaches T ,event E 
            where T.event=E.id group by staff 
            having sum(duration)>=(select cast(avg(duration)as int)   from teaches T ,event E where T.event=E.id );
            return Profesores_tiempo;
        end;
        
        Function CO_Profesores return SYS_REFCURSOR is profesores SYS_REFCURSOR;
        begin
            open profesores for
            
         SELECT * FROM staff;
            return profesores;
        end;
        
        
        Function CO_Reconocimientos return SYS_REFCURSOR is Reconocimientos SYS_REFCURSOR;
        BEGIN
        open Reconocimientos for
        SELECT name,count(nombre)
        FROM  Staff S, XMLTABLE('/hoja_de_vida/Reconocimientos/Reconocimiento'
						passing S.hojas_de_vida
						columns nombre  PATH  '@nombre'
                            ) T group by name having count(nombre)> (SELECT count(nombre)
                                                                    FROM  Staff S, XMLTABLE('/hoja_de_vida/Reconocimientos/Reconocimiento'
                                                                    passing S.hojas_de_vida
                                                                    columns nombre  PATH  '@nombre'
                                                                    ) T)/(select count(id)from staff);
        return Reconocimientos;
        end;
        
        
        Function CO_Cruces return SYS_REFCURSOR is Cruces SYS_REFCURSOR;
        BEGIN
        open Cruces for
        select * from Cruces;
        return Cruces;
        end;
       
end PC_Profesor;
/
create or replace package body PC_Taller is
    Procedure Ad_taller(n_id in varchar2,n_modle  in varchar2,n_kind in char ,n_dow in varchar2,n_tod in char,n_duration in number,n_room in varchar ) is
    begin
        insert into event values (n_id,n_modle,n_kind,n_dow,n_tod,n_duration,n_room);
        commit;
        exception
        when others then
            Rollback;
            raise_application_error(-20001,'error al insertar en event');
     end;
        
    Function Co_horarios return SYS_REFCURSOR is horarios SYS_REFCURSOR ;
    begin 
    open horarios for 
    select id,dow,tod from event where id like '%co12004%';
    return horarios;
    end;
end PC_Taller;
/    