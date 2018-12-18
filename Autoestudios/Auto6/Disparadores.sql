create or replace trigger AD_staff_name
    before insert on staff
    for each row
    begin
        :new.id := concat('co.',substr(:new.name,0,1));
        if :new.name like ('%Dr%') then
            :new.id := concat(:new.id,substr(:new.name,(instr(:new.name,'Dr'))+3,1));
        elsif :new.name like ('%Prof%') then
            :new.id := concat(:new.id,substr(:new.name,(instr(:new.name,'Prof'))+5,1));
        elsif LENGTH(:new.name)-LENGTH(REPLACE(:new.name,' '))=1 Then
            :new.id := concat(:new.id,substr(:new.name,(instr(:new.name,','))+2,1));
        Else
            RAISE_APPLICATION_ERROR(-20019,'El formato de nombre es incorrecto');

        end if;
    end;
/

CREATE OR REPLACE TRIGGER MO_staff
    BEFORE UPDATE ON staff
    FOR EACH ROW
    BEGIN
        IF  substr(:old.name,0,instr(:old.name,',')) = substr(:new.name,0,instr(:new.name,','))THEN
            IF :old.name like('%Dr%') THEN
                IF  :new.name like ('%Prof%') and substr(:new.name,(instr(:new.name,'Prof'))+5,100) != substr(:old.name,(instr(:old.name,'Dr'))+3,100) THEN
                    RAISE_APPLICATION_ERROR(-20002,'Solo se puede cambiar el título');
                ELSIF (LENGTH(:new.name)-LENGTH(REPLACE(:new.name,' '))=1 and substr(:new.name,(instr(:new.name,','))+2,100) != substr(:old.name,(instr(:old.name,'Dr'))+3,100)) or (LENGTH(:new.name)-LENGTH(REPLACE(:new.name,' '))>1 and :new.name  not like ('%Prof%') and :new.name not like ('%Dr%'))THEN
                    RAISE_APPLICATION_ERROR(-20002,'Solo se puede cambiar el título');
                END IF;
            ELSIF :old.name like('%Prof%') THEN
                IF  :new.name like ('%Dr%') and substr(:new.name,(instr(:new.name,'Dr'))+3,100) != substr(:old.name,(instr(:old.name,'Prof'))+5,100) THEN
                    RAISE_APPLICATION_ERROR(-20002,'Solo se puede cambiar el título');
                ELSIF  (LENGTH(:new.name)-LENGTH(REPLACE(:new.name,' '))=1 and substr(:new.name,(instr(:new.name,','))+2,100) != substr(:old.name,(instr(:old.name,'Prof'))+5,100))or (LENGTH(:new.name)-LENGTH(REPLACE(:new.name,' '))>1 and :new.name  not like ('%Prof%') and :new.name not like ('%Dr%')) THEN
                    RAISE_APPLICATION_ERROR(-20002,'Solo se puede cambiar el título');
                END IF;
            ELSE
                IF  :new.name like ('%Dr%') and substr(:new.name,(instr(:new.name,'Dr')+3),100) != (substr(:old.name,(instr(:old.name,',')+2),100)) THEN
                    RAISE_APPLICATION_ERROR(-20002,'Solo se puede cambiar el título');
                ELSIF :new.name like ('%Prof%') and substr(:new.name,(instr(:new.name,'Prof'))+5,100) != substr(:old.name,(instr(:old.name,','))+2,100) THEN
                    RAISE_APPLICATION_ERROR(-20002,'Solo se puede cambiar el título');
                 ELSIF (LENGTH(:new.name)-LENGTH(REPLACE(:new.name,' '))=1 and :new.name  not like ('%Prof%') and :new.name not like ('%Dr%') and substr(:new.name,(instr(:new.name,','))+2,100) != substr(:old.name,(instr(:old.name,','))+2,100)) or (LENGTH(:new.name)-LENGTH(REPLACE(:new.name,' '))>1 and :new.name  not like ('%Prof%') and :new.name not like ('%Dr%')) THEN
                    RAISE_APPLICATION_ERROR(-20002,'Solo se puede cambiar el título');
                END IF;
            END IF;
        ELSE
            RAISE_APPLICATION_ERROR(-20002,'Solo se puede cambiar el título');
        END IF;
    END;
/



create or replace trigger EL_event
    before delete on event
    for each row
    when (old.modle='co12004')
    begin
        raise_application_error(-20016,'no puedes eliminar eventos de modulo co12004');
    end;
/   

create or replace trigger MO_event
    before update on event
    for each row
    when (old.modle='co12004')
    begin
        raise_application_error(-20015,'no puedes modificar los eventos de modulo co12004');
    end;
/