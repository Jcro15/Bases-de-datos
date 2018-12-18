--Triggers
--Proveedores

Create or replace trigger TG_MO_PROVEEDORES
    before update on Proveedores
    for each row 
    begin
        if :old.identificacion!=:new.identificacion or :old.tipo_identificacion!=:new.tipo_identificacion then
            Raise_application_error(-20021,'No se puede cambiar la identificacion ni el tipo de identificacion');
        end if;
    end;
/

create or replace trigger TG_DEL_PROVEEDORES
    before delete on Proveedores
    for each row
    declare
    cont number(11);
    begin
        select count(producto) into cont from ofrecimientos O where O.proveedor=:old.identificacion ;
        if cont <3 then 
            delete from ofrecimientos O where O.proveedor=:old.identificacion;

        else
         Raise_application_error(-20022,'No se puede borrar un proveedor con muchos ofrecimientos');

        end if;
    end;
/

--Surtimientos

Create or replace trigger TG_AD_SURTIMIENTOS
    before insert on Surtimientos
    for each row
    declare
    Nfecha date; 
    aprobados number;
    pendientes number;
    espacio_ocupado number;
    espacio_bodega number;
    tamaño_compra number;
    pendientes_llegada number;
    Ecompra number;
    Ebodega number;
    begin
        select count(numero) into Ecompra from compras where :new.compra=numero;
        select count(numero) into Ebodega from bodegas where :new.bodega=numero;
        if Ebodega=0 then
        raise_application_error(-20001,'La bodega no existe');
        elsif Ecompra=0 then
        raise_application_error(-20001,'La Compra no existe');
        end if;
        select coalesce(sum(A.cantidad),0) into pendientes_llegada from surtimientos S,compras C, Abastecimientos A where bodega=:new.bodega and estado='P' and S.compra=C.numero and A.compra=C.numero; 
        select capacidad into espacio_bodega from bodegas B where B.numero=:new.bodega; 
        select sum(cantidad) into tamaño_compra from abastecimientos where compra=:new.compra;
        select count(numero_de_serie) into espacio_ocupado from Unidades u ,Surtimientos S,bodegas B where u.surtimiento=S.numero and S.bodega=B.numero and B.numero=:new.bodega;
        select count(numero) into aprobados from Surtimientos where compra=:new.compra and estado='E';
        select count(numero) into pendientes from Surtimientos where compra=:new.compra and estado='P';
        select to_date(to_char(sysdate,'dd/mm/yyyy'),'dd/mm/yyyy') into Nfecha from dual;
        
        if aprobados=1 or pendientes=1 then 
            Raise_application_error(-20023,'La compra ya tiene un surtimiento en proceso o entregado');
        elsif espacio_bodega-espacio_ocupado-pendientes_llegada-tamaño_compra<0 then
             Raise_application_error(-20023,'La Bodega no tiene espacio suficiente');
        end if;
        
        if :new.fecha_envio is null then
            :new.fecha_envio:=Nfecha;
        end if;
        if :new.estado is  null then
        
            :new.estado:='P';
        end if;
        if :new.fecha_llegada is null then
            :new.fecha_llegada:=NULL;
        end if;
    end;
/

declare
    l_new_seq INTEGER;
begin
   select count(*) + 1
   into   l_new_seq
   from   surtimientos;

    execute immediate 'Create sequence seq_surtimientos
                       start with ' || l_new_seq ||
                       ' increment by 1';
end;
/



Create or replace trigger TG_MO_SURTIMIENTOS
    before update on Surtimientos
    for each row
    declare 
    Nfecha date;
    
    begin
        if :new.numero != :old.numero or :old.bodega!=:new.bodega or :old.fecha_envio!=:new.fecha_envio or (:new.fecha_llegada is not null and :old.fecha_llegada is null) or :new.fecha_llegada!=:old.fecha_llegada or :new.compra != :old.compra then
            Raise_application_error(-20001,'Solo se puede modificar el estado');
        elsif :old.estado!='P' then
            Raise_application_error(-20002,'Solo se puede modificar el estado si esta en proceso');
        elsif :new.estado='E' and :old.estado='P'  then
            select to_date(to_char(sysdate,'dd/mm/yyyy'),'dd/mm/yyyy') into Nfecha from dual;
            :new.fecha_llegada:=Nfecha;
            
        end if;
    
    end;
/

Create or replace trigger TG_DEL_SURTIMIENTOS
    before Delete  on Surtimientos
    for each row
 
    begin
    if :old.estado!='A' then
        Raise_application_error (-20003,'Solo se puede borrar un surtimiento si esta anulado');    
    end if ;
    end;
/


-- Productos
declare
    l_new_seq INTEGER;
begin
   select count(*) + 1
   into   l_new_seq
   from   productos;

    execute immediate 'Create sequence seq_productos
                       start with ' || l_new_seq ||
                       ' increment by 1';
end;
/


Create or replace trigger TG_MO_PRODUCTOS
    before update on Productos
    for each row
    begin
		
	
        if :old.tamaño!=:new.tamaño or :old.nombre!=:new.nombre  or :old.id_producto!=:new.id_producto then
            Raise_application_error (-20004,'No se puede actualizar el tamaño, el nombre y el id_producto');
        end if;
    end;
/

--select * from (select precio_compra from compras C,abastecimientos A where A.producto=:old.id_producto and C.numero=A.compra order by C.fecha ) where rownum=1; 

Create or replace trigger TG_DEL_PRODUCTOS
    before delete on Productos
    for each row
    declare 
    pro number(11);
    
    begin
        
        select count(producto) into pro from Unidades where :old.id_producto=producto;
        if pro!=0 then
            Raise_application_error (-20005,'Solo es posible eliminar un producto si no tiene unidades');      
        end if;
    end;
/





Create or replace trigger TG_AD_COMPRAS
    before insert on Compras
    for each row
    declare 
    Nfecha date;
    begin
        select to_date(to_char(sysdate,'dd/mm/yyyy'),'dd/mm/yyyy') into Nfecha from dual;
        if :new.fecha is null then
            :new.fecha:=Nfecha;
        end if;
    end;
/

declare
    l_new_seq INTEGER;
begin
   select count(*) + 1
   into   l_new_seq
   from   compras;

    execute immediate 'Create sequence seq_compras
                       start with ' || l_new_seq ||
                       ' increment by 1';
end;
/


create or replace trigger TG_MO_COMPRAS
    before update on compras
    for each row
    begin
        if :new.numero!=:old.numero or :new.fecha!=:old.fecha or :new.proveedor is not null then
                Raise_application_error (-20094,'no se pueden modificar las compras');
        end if;
    end;
/
create or replace trigger TG_DEL_COMPRAS
    before delete on compras
    for each row
    begin
        Raise_application_error (-20094,'no se pueden eliminar las compras');
    end;
/

--Abastecimientos
declare
    l_new_seq INTEGER;
begin
   select count(*) + 1
   into   l_new_seq
   from   abastecimientos;

    execute immediate 'Create sequence seq_abastecimientos
                       start with ' || l_new_seq ||
                       ' increment by 1';
end;
/

Create or replace trigger TG_MO_ABASTECIMIENTOS
    before update on abastecimientos
    for each row
    begin
        if :new.linea_compra!=:old.linea_compra or :new.compra!=:old.compra or :new.cantidad!=:old.cantidad or :new.color!=:old.color  or :new.compra!=:old.compra or :new.precio_compra!=:old.precio_compra or :new.producto is not null then
            Raise_application_error (-20089,'No se pueden modificar los abastecimientos');
        end if;
    end;
/
Create or replace trigger TG_DEL_ABASTECIMIENTOS
    before delete on abastecimientos
    for each row
    begin
        Raise_application_error (-20087,'No se pueden eliminar los abastecimientos');
    end;
/
--Juegos
create or replace trigger TG_AD_JUEGOS
    before insert on juegos 
    for each row
    declare 
    espacio varchar(10);
    begin
        Select extractvalue(:new.Ficha_tecnica,'/Ficha_tecnica/Juego/@espacio_requerido') into espacio from dual;
        if not (REGEXP_LIKE (espacio,'^([1-9][0-9]*|[0-9]*\.[0-9]+) (GB|TB|MB)$')) THEN
            Raise_application_error (-20099,'El espacio requerido debe ser positivo ');      
        end if;
    end;
/
create or replace trigger TG_MO_JUEGOS
    before update on juegos 
    for each row
    begin
        if :old.producto!=:new.producto then
            Raise_application_error (-20090,'No se puede cambiar el numero de producto');
        end if;
    end;
/

--Unidades
create or replace trigger TG_MO_UNIDADES
    before update on unidades
    for each row
    begin
        Raise_application_error (-20098,'No se puede modificar la informacion de las unidades');     
    end;
/