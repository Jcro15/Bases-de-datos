--Departamento
create or replace trigger TG_DEL_DPTO
before delete on departamentos
for each row
begin
    raise_application_error(-20101,'No se pueden eliminar los departamentos');
end;
/

create or replace trigger TG_MO_DPTO
before update on departamentos
for each row
begin
    if :old.codigo!=:new.codigo then
    raise_application_error(-20101,'No se puede modificar el codigo de  los departamentos');
    END IF;
end;
/

-- Ventas
create or replace trigger TG_AD_VENTAS
before insert on ventas
for each row 
declare
Nfecha date;
begin
    if :new.fecha is null then
    select to_date(to_char(sysdate,'dd/mm/yyyy'),'dd/mm/yyyy') into Nfecha from dual;
    :new.fecha:=Nfecha;
    end if;
    if :new.estado is null then
    :new.estado:='A';
    end if;
    if :new.valor is null then 
    :new.valor:=0;
    end if;
end;
/
create or replace trigger TG_MO_VENTAS
before update on ventas
for each row
begin 
    if  :new.numero !=:old.numero or :new.fecha!=:old.fecha or :new.cliente!=:old.cliente then
    raise_application_error(-20100,'solo se puede modificar el estado de las ventas');
    elsif :new.estado='A' and :old.estado='T' then
    raise_application_error(-20100,'solo se puede modificar el estado de las ventas si no esta terminado');
    elsif :old.estado='T' and :new.estado='T' and :new.valor!=:old.valor then
    raise_application_error(-20100,'no se puede modificar el valor de una venta terminada');
    end if;
end;
/
create or replace trigger TG_DEL_VENTAS
before delete on ventas
for each row
begin
if :old.estado='T' then
    raise_application_error(-20101,'No se pueden eliminar las ventas terminadas');
end if;
end;
/

declare
    l_new_seq INTEGER;
begin
   select count(*) + 1
   into   l_new_seq
   from   ventas;

    execute immediate 'Create sequence seq_ventas
                       start with ' || l_new_seq ||
                       ' increment by 1';
end;
/

--Entregas
create or replace trigger TG_AD_ENTREGAS
before insert on entregas
for each row
declare
aprobados number;
pendientes number;
Nfecha date;
begin
select count(numero) into aprobados from entregas where venta=:new.venta and estado='E';
select count(numero) into pendientes from entregas where venta=:new.venta and estado='P';
select to_date(to_char(sysdate,'dd/mm/yyyy'),'dd/mm/yyyy') into Nfecha from dual;
    if :new.empresa_mensajeria is null then
    raise_application_error(-20001,'No se pueden insertar valores nulos para la empresa de mensajeria');
    end if;

    if aprobados=1 or pendientes=1 then 
        Raise_application_error(-20023,'La venta ya tiene una entrega en proceso o entregada');
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


create or replace trigger TG_MO_ENTREGAS
before update on entregas
for each row
declare
Nfecha date;
begin
  if :new.numero != :old.numero  or :new.fecha_envio!=:old.fecha_envio or :new.fecha_llegada!=:old.fecha_llegada or :old.venta!=:new.venta or :new.cliente!=:old.cliente or :old.empresa_mensajeria!=:new.empresa_mensajeria then 
            Raise_application_error(-20001,'Solo se puede modificar el estado');
        elsif :old.estado!='P' then
            Raise_application_error(-20002,'Solo se puede modificar el estado si esta en proceso');
        elsif :new.estado='E' and :old.estado='P'  then
            select to_date(to_char(sysdate,'dd/mm/yyyy'),'dd/mm/yyyy') into Nfecha from dual;
            :new.fecha_llegada:=Nfecha;
            
        end if;
end;
/
Create or replace trigger TG_DEL_ENTREGAS
    before Delete  on entregas
    for each row
 
    begin
    if :old.estado!='A' then
        Raise_application_error (-20003,'Solo se puede borrar una entrega si esta anulada');    
    end if ;
    end;
/


declare
    l_new_seq INTEGER;
begin
   select count(*) + 1
   into   l_new_seq
   from   entregas;

    execute immediate 'Create sequence seq_entregas
                       start with ' || l_new_seq ||
                       ' increment by 1';
end;
/
--Clientes

create or replace trigger TG_MO_CLIENTES
before update on clientes
for each row
begin
if :new.identificacion!=:old.identificacion  then
    Raise_application_error (-20003,'no se puede modificar el numero de identificacion');
end if;
end;
/
create or replace trigger TG_DEL_CLIENTES
before delete on clientes 
for each row
begin
    Raise_application_error (-20058,'no se puede eliminar un cliente');
end;
/ 

--Empresas_de_mensajeria

create or replace trigger TG_MO_EMPRESAS
before update on empresas_de_mensajeria
for each row
begin
if :old.identificacion!=:new.identificacion then
    raise_application_error(-20057,'no se puede modificar el identificador de la empresa');
end if;
end;
/
    
--Detalle_coberturas

create or replace trigger TG_MO_DECOBERTURAS
before update on detalle_coberturas
for each row 
begin
if :old.empresa_mensajeria!=:new.empresa_mensajeria or :old.departamento!=:new.departamento then
            Raise_application_error (-20059,'Solo se puede modificar el precio y el tiempo estimado');
end if;
end;
/
--Detalle ventas
create or replace trigger TG_AD_DEVENTAS
before insert on detalle_ventas
for each row
declare
producto number;
preciop number;
precioe number;
ncliente varchar2(100);
ndepartamento number;
nestado varchar2(5);
Eventa number;
Eproducto number;
begin
select count (numero) into Eventa from ventas where numero=:new.venta;
select count (id_producto) into Eproducto from productos where id_producto=:new.producto;
select estado into nestado from ventas where numero=:new.venta;
if Eventa= 0 or Eproducto =0 then
raise_application_error(-20001,'La venta o el producto no existe');
end if;
if nestado='T' then
raise_application_error(-20001,'No se pueden insertar valores a compras terminadas');
end if;
if :new.producto is null then
raise_application_error(-20001,'No se pueden insertar valores nulos para producto');
end if;
if :new.color is null then
    select count(numero_de_serie) into producto from unidades where color is null and producto=:new.producto;
else 
    select count(numero_de_serie) into producto from unidades where color=:new.color and producto=:new.producto;
end if;
if producto<:new.cantidad then
    Raise_application_error (-20008,'no hay suficientes productos para satisfacer la compra, actualmente solo se cuenta con '||producto);
end if;
select precio into preciop from productos where id_producto=:new.producto;
select cliente into ncliente from ventas where numero=:new.venta;
select departamento into ndepartamento from clientes where identificacion=ncliente;
select min(precio_envio) into precioe from detalle_coberturas where departamento=ndepartamento;
update ventas set valor=valor+preciop*:new.cantidad+precioe*:new.cantidad where numero=:new.venta;
end;
/

create or replace trigger TG_MO_DEVENTAS
before update on detalle_ventas
for each row
declare
producto number;
preciop number;
precioe number;
ncliente varchar2(100);
ndepartamento number;
nestado varchar2(5);

begin
if :old.venta!=:new.venta or :new.producto!=:old.producto  or :new.color!=:old.color then
raise_application_error(-20001,'No se puede modificar la venta del detalle ni el producto ni el color');
end if;
select estado into nestado from ventas where numero=:new.venta;
if nestado='T' then
raise_application_error(-20001,'No se pueden  modificar valores en compras terminadas');
end if;

select precio into preciop from productos where id_producto=:old.producto;
select cliente into ncliente from ventas where numero=:old.venta;
select departamento into ndepartamento from clientes where identificacion=ncliente;
select min(precio_envio) into precioe from detalle_coberturas where departamento=ndepartamento;

if :new.cantidad<:old.cantidad then
update ventas set valor=valor-(preciop*(:old.cantidad-:new.cantidad))-(precioe*(:old.cantidad-:new.cantidad)) where numero=:old.venta;
elsif :new.cantidad>:old.cantidad then
    if :old.color is null then
        select count(numero_de_serie) into producto from unidades where color is null and producto=:old.producto;
    else 
        select count(numero_de_serie) into producto from unidades where color=:old.color and producto=:old.producto;
    end if;
    if producto<:new.cantidad then
        Raise_application_error (-20008,'no hay suficientes productos para satisfacer la compra, actualmente solo se cuenta con '||producto);
    end if;
    update ventas set valor=valor+(preciop*(:new.cantidad-:old.cantidad))+(precioe*(:new.cantidad-:old.cantidad)) where numero=:old.venta;
end if;
end;
/


create or replace trigger TG_DEL_DEVENTAS
before delete on detalle_ventas
for each row
declare
nestado varchar2(5);
preciop number;
precioe number;
ncliente varchar2(100);
ndepartamento number;
begin
select estado into nestado from ventas where numero=:old.venta;
if nestado='T' then
raise_application_error(-20001,'No se pueden  modificar valores en compras terminadas');
end if;

select precio into preciop from productos where id_producto=:old.producto;
select cliente into ncliente from ventas where numero=:old.venta;
select departamento into ndepartamento from clientes where identificacion=ncliente;
select min(precio_envio) into precioe from detalle_coberturas where departamento=ndepartamento;

update ventas set valor=valor-preciop*:old.cantidad-precioe*:old.cantidad where numero=:old.venta;

end;
/
