Create or replace package body PC_Clientes is
    Procedure Ad_cliente(Nidentificacion in varchar2, Nnombre in varchar2,Ncorreo in varchar2, Ntelefono in varchar2,Ntipo_identificacion in varchar2,Ndireccion in varchar2,Ncodigo_zip in varchar2,Ndepartamento in number )is
    BEGIN
        insert into clientes values (Nidentificacion, Nnombre,Ncorreo, Ntelefono,Ntipo_identificacion,Ndireccion,Ncodigo_zip,Ndepartamento);
    commit;
    exception
    WHEN OTHERS THEN
    ROLLBACK;
    raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
    END;
    
    
    Procedure Mo_cliente(Nidentificacion in varchar2, Nnombre in varchar2,Ncorreo in varchar2, Ntelefono in varchar2,Ntipo_identificacion in varchar2,Ndireccion in varchar2,Ncodigo_zip in varchar2,Ndepartamento in number )is
    BEGIN
        update clientes set   nombre=Nnombre,correo=Ncorreo, telefono=Ntelefono,tipo_identificacion=Ntipo_identificacion,direccion=Ndireccion,codigo_zip=Ncodigo_zip,departamento=Ndepartamento where identificacion= Nidentificacion;
    commit;
    exception
    WHEN OTHERS THEN
    ROLLBACK;
    raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
    END;
    
    Procedure El_unidad(Nidentificacion in varchar2)is
    BEGIN
        delete clientes where identificacion=Nidentificacion;
    commit;
    exception
    WHEN OTHERS THEN
    ROLLBACK;
    raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
    END;
    function Co_info(Nidentificacion in varchar2) return sys_refcursor is Co_inf sys_refcursor;
        Begin
        open Co_inf for
            select * from clientes where identificacion=Nidentificacion;
        return Co_inf;
        end;

    
End PC_Clientes;
/
Create or replace package body PC_Departamentos is
    Procedure Ad_Departamentos(Ncodigo in number, Nnombre in varchar2) is
    BEGIN
        insert into departamentos values (Ncodigo,Nnombre);
    commit;
    exception
    WHEN OTHERS THEN
    ROLLBACK;
    raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
    END;
    
    Procedure Mo_Departamentos(Ncodigo in number,Nnombre in varchar2) is
    BEGIN
        update departamentos set nombre=Nnombre where codigo=Ncodigo;
    commit;
    exception
    WHEN OTHERS THEN
    ROLLBACK;
    raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
    END;
    function Co_dpto return sys_refcursor is Co_Dp sys_refcursor;
     Begin
        open Co_Dp for
            select * from departamentos;   
            return Co_Dp;
        end;

    

End PC_Departamentos;
/

Create or replace package body PC_Entregas is
    Procedure Ad_Entregas(Nventa in number,Ncliente in varchar2,Nempresa_Mensajeria in varchar2) is
    BEGIN
        insert into entregas(numero,venta,cliente,empresa_mensajeria) values (seq_entregas.nextval,Nventa,Ncliente,Nempresa_Mensajeria);
    commit;
    exception
    WHEN OTHERS THEN
    ROLLBACK;
    raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
    END;
    
    
    Procedure Mo_Entregas(Nnumero in number,Nestado in varchar2) is
     BEGIN
        update entregas set estado=Nestado where numero=Nnumero;
    commit;
    exception
    WHEN OTHERS THEN
    ROLLBACK;
    raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
    END;
    
    procedure El_Entregas(Nnumero in number) is
     BEGIN
        delete entregas where numero=Nnumero;
    commit;
    exception
    WHEN OTHERS THEN
    ROLLBACK;
    raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
    END;
    function Co_Entregas_estado(NEstado in varchar2,Nfecha in date) return sys_refcursor is co_En_es sys_refcursor;
    begin
    open co_En_es for
            select * from entregas where estado=Nestado and fecha_envio>=Nfecha;   
            return co_En_es;
        end;
    

    
End PC_Entregas;
/

Create or replace package body PC_Ventas is
    Procedure Ad_Ventas(Ncliente in varchar2 ,Nproducto in number,Ncolor in varchar2,Ncantidad in number) is
     NNnumero number;
     BEGIN
        NNnumero:=seq_ventas.nextval;
        insert into ventas(numero,cliente) values (NNnumero,Ncliente);
        insert into detalle_ventas(venta,producto,color,cantidad) values (NNnumero,Nproducto,Ncolor,Ncantidad);
    commit;
    exception
    WHEN OTHERS THEN
    ROLLBACK;
    raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
    END;
    
    Procedure Ad_Detalle_ventas(Nventa in number ,Nproducto in number ,Ncolor in varchar2,Ncantidad in number) is
     BEGIN
       insert into detalle_ventas(venta,producto,color,cantidad) values (Nventa,Nproducto,Ncolor,Ncantidad);
    commit;
    exception
    WHEN OTHERS THEN
    ROLLBACK;
    raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
    END;
    
    Procedure Mo_Ventas(Nnumero in number,Nestado in varchar2) is
        begin
            update Ventas set estado=Nestado where numero=Nnumero;
        end;
    procedure Del_Ventas(Nnumero in number) is
        BEGIN
            DELETE from ventas where numero=Nnumero;
        end;
    procedure Mo_Detalle_ventas(Nventa in number ,Nproducto in number, Ncantidad in number) is
        begin
            update Detalle_ventas set cantidad=Ncantidad where venta=Nventa  and producto=Nproducto ;
        end;
    procedure Del_Detalle_ventas(Nventa in number ,Nproducto in number) is
        begin
            delete from Detalle_ventas where venta=Nventa   and producto=Nproducto ;
        end;
     function Co_detalle return sys_refcursor is co_det  sys_refcursor;
	begin
	open co_det for 
	select * from facturas;
	return co_det ;
	end;

    function Co_detalle_cliente(Nidentificacion in varchar2) return sys_refcursor is co_det_cli  sys_refcursor;
	begin
	open co_det_cli for
	select * from facturas where identificacion=Nidentificacion order by fecha;
	return co_det_cli ;
	end;

    function Co_dinero_mes return sys_refcursor is co_din_mes  sys_refcursor;
	begin
	open co_din_mes  for
	select sum(valor) from ventas V where MONTHS_BETWEEN(SYSDATE,fecha)<=1;
	return co_din_mes  ;
	end;

    function Co_productos_mes return sys_refcursor is co_pro_mes  sys_refcursor;
	begin
	open co_pro_mes  for
	select sum(cantidad) from ventas V,detalle_ventas D where MONTHS_BETWEEN(SYSDATE,fecha)<=1 and V.numero= D.venta ;
	return co_pro_mes  ;
	end;


    function Co_Productos_mas return sys_refcursor is co_prod_mas  sys_refcursor;
	begin
	open co_prod_mas  for
	select * from mas_vendido where rownum<=4;	
	return co_prod_mas;  
	end;

    function Co_Productos_menos return sys_refcursor is co_prod_menos  sys_refcursor;
	begin
	open co_prod_menos  for
	select * from menos_vendido;
	return co_prod_menos;  
	end;

    function Co_ventas_noentreg return sys_refcursor is co_vent_noen  sys_refcursor;
	begin
	open co_vent_noen  for
	select * from sin_entrega;
	return co_vent_noen;  
	end;
    function Co_tipo_vendido return sys_refcursor is Co_tip_ven sys_refcursor; 
	begin
	open Co_tip_ven for
	select * from tipo_mas_vendido;
	return Co_tip_ven ;
	end;
    function Co_ventas_cliente(Nidentificacion in varchar2) return sys_refcursor is  Co_ven_cli sys_refcursor;
	begin
	open Co_ven_cli  for
	select * from ventas where cliente=Nidentificacion order by fecha;
	return Co_ven_cli ;
	end;

        
        
        
End PC_Ventas;
/

Create or replace package body PC_Empresas_mensajeria is
    procedure Ad_Empresa(Nidentificacion in varchar2,Ntelefono in varchar2,Ncorreo in varchar2,Nnombre in varchar2,Ndireccion in varchar2,Ndepartamento in number,Nprecio_envio in number,Ntiempo_estimado in varchar2) is
     BEGIN
       insert into Empresas_de_mensajeria values (Nidentificacion,Ntelefono,Ncorreo,Nnombre,Ndireccion);
       insert into detalle_coberturas values (Ndepartamento,Nidentificacion,Nprecio_envio,Ntiempo_estimado);
    commit;
    exception
    WHEN OTHERS THEN
    ROLLBACK;
    raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
    END;
    
    
    procedure Ad_Detalle_coberturas(Ndepartamento in number,Nempresa_mensajeria in varchar2,Nprecio_envio in number,Ntiempo_estimado in varchar2) is
     BEGIN
       insert into detalle_coberturas values (Ndepartamento,Nempresa_mensajeria,Nprecio_envio,Ntiempo_estimado);
    commit;
    exception
    WHEN OTHERS THEN
    ROLLBACK;
    raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
    END;
    
    
    procedure Mo_Empresa(Nidentificacion in varchar2,Ntelefono in varchar2,Ncorreo in varchar2,Nnombre in varchar2,Ndireccion in varchar2) is
     BEGIN
       update empresas_de_mensajeria set telefono=Ntelefono,correo=Ncorreo,nombre=Nnombre,direccion=Ndireccion where identificacion=Nidentificacion;
    exception
    WHEN OTHERS THEN
    ROLLBACK;
    raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
    END;
    
    
    procedure Mo_Detalle_coberturas(Ndepartamento in number,Nempresa_mensajeria in varchar2,Nprecio_envio in number ,Ntiempo_estimado in varchar2) is
     BEGIN
       update  detalle_coberturas set precio_envio=Nprecio_envio,tiempo_estimado=Ntiempo_estimado where departamento=Ndepartamento and empresa_mensajeria=Nempresa_mensajeria;
    commit;
    exception
    WHEN OTHERS THEN
    ROLLBACK;
    raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
    END;
    
    procedure El_Empresa(Nidentificacion in varchar2) is
     BEGIN
     delete empresas_de_mensajeria where identificacion=Nidentificacion;
       commit;
    exception
    WHEN OTHERS THEN
    ROLLBACK;
    raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
    END;
    
    procedure El_detalle_coberturas(Ndepartamento in number,Nempresa in varchar2) is
     BEGIN
     delete from DETALLE_COBERTURAS where departamento=Ndepartamento and empresa_mensajeria=Nempresa;
    commit;
    exception
    WHEN OTHERS THEN
    ROLLBACK;
    raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
    END;
    function Co_mejores return sys_refcursor is co_mej sys_refcursor;
    begin
    open co_mej for
    select * from mejores_empresas_envios;
    return co_mej;
    end;
    
    function Co_empresas return sys_refcursor is co_emp sys_refcursor;
    begin
    open co_emp for
    select * from empresas_de_mensajeria;
    return co_emp;
    end;
    
End PC_Empresas_mensajeria;
/
    
