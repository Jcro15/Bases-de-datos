--Crudi
create or replace package body PC_Unidad is
    Procedure Ad_unidad(Nnumero_de_serie in varchar2, Ncolor in varchar2,Nproducto in number, Nsurtimiento in number ) is
        BEGIN
            insert into unidades(numero_de_serie,color,producto,surtimiento) values (Nnumero_de_serie , Ncolor ,Nproducto , Nsurtimiento);
        commit;
        exception
        WHEN OTHERS THEN
        ROLLBACK;
        raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
        END;
    
    Procedure El_unidad(Nnumero_de_serie in varchar2) is
        BEGIN
            delete from unidades where numero_de_serie=Nnumero_de_serie;
        commit;
        exception
        WHEN OTHERS THEN
        ROLLBACK;
        raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
        END;
    Function Co_unidades return sys_refcursor is CO_uni sys_refcursor;
        Begin
        open CO_Uni for
            select * from unidades;
        return CO_Uni;
        end;
    Function Co_Unidades_Producto(Nproducto in number) return sys_refcursor is CO_UP Sys_refcursor;
        Begin
        open CO_UP for
            select * from unidades u  where Nproducto=u.producto;
        return CO_UP;
        end;
    Function Co_Productos_Disponibilidad return sys_refcursor is CO_P_D Sys_refcursor;
        Begin
        open CO_P_D for
            select P.nombre as producto, count(E.producto) as disponibilidad from productos P, Unidades E where E.producto=P.id_producto   group by P.nombre;
        return CO_P_D;
        end;
        
end PC_Unidad;
/

create or replace package body PC_Proveedor is
    Procedure Ad_Proveedor(Nidentificacion in varchar2,Nnombre in varchar2,Ntelefono in varchar2, Ndireccion in varchar2, Ncorreo in varchar2, NTipo_identificacion in varchar2,Nproducto in number,Nprecio_actual in number ) is
        
        begin
            insert into Proveedores (identificacion ,nombre ,telefono , direccion , correo, Tipo_identificacion) values (Nidentificacion ,Nnombre,Ntelefono , Ndireccion , Ncorreo , NTipo_identificacion );
            insert into ofrecimientos (proveedor,producto,precio_Actual) values(Nidentificacion,Nproducto,Nprecio_actual);
        commit;
        exception
        WHEN OTHERS THEN
        ROLLBACK;
        raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
        END;
          
    Procedure Mo_Proveedor(Nidentificacion in varchar2,Nnombre in varchar2,Ntelefono in varchar2, Ndireccion in varchar2, Ncorreo in varchar2)is
        begin
            update Proveedores set nombre=Nnombre,telefono=Ntelefono , direccion=Ndireccion , correo=Ncorreo where identificacion=Nidentificacion;
        commit;
        exception
        WHEN OTHERS THEN
        ROLLBACK;
        raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
        END;
    
    Procedure El_Proveedor(Nidentificacion in varchar2) is
        begin
             delete from proveedores where identificacion=Nidentificacion;
        commit;
        exception
        WHEN OTHERS THEN
        ROLLBACK;
        raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
        END;
    Procedure Ad_Ofrecimiento(Nproveedor in varchar2,Nproducto in number,Nprecio_actual in number) is
        begin
            insert into Ofrecimientos (proveedor ,producto ,precio_actual) values (Nproveedor ,Nproducto ,Nprecio_actual );
        commit;
        exception
        WHEN OTHERS THEN
        ROLLBACK;
        raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
        END;
    
    Procedure Mo_Ofrecimiento(Nproveedor in varchar2,Nproducto in number,Nprecio_actual in number) is
        begin
            update Ofrecimientos set  precio_actual=Nprecio_actual where proveedor=Nproveedor and producto=Nproducto ;
        commit;
        exception
        WHEN OTHERS THEN
        ROLLBACK;
        raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
        END;
    
    
    Procedure El_Ofrecimiento(Nproveedor in varchar2,Nproducto in number) is
        begin
            delete from Ofrecimientos where Nproveedor =proveedor and Nproducto= producto;
        commit;
        exception
        WHEN OTHERS THEN
        ROLLBACK;
        raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
        END;
    function Co_Mejores_Ofrecimientos return sys_refcursor is CO_ME_O sys_refcursor;
        Begin
        open CO_ME_O for
            select * from Mejores_Ofrecimientos;
        return CO_ME_O;
        end;
    
    function Co_Proveedores return sys_Refcursor is CO_PRO SYS_REFCURSOR;
        Begin
        open CO_PRO for
            select * from Proveedores;
        return CO_PRO;
        end;
    
    function Co_Ofrecimientos return sys_refcursor is CO_OFR sys_refcursor;
        Begin
        open CO_OFR for
            select * from Ofrecimientos;
        return CO_OFR;
        end;
    
    
    function Co_Ofrecimientos_Proveedor(Nproveedor in varchar2) return sys_refcursor IS CO_O_P SYS_REFCURSOR; 
        Begin
        open CO_O_P for
            select * from Ofrecimientos where proveedor=Nproveedor;
        return CO_O_P;
        end;
        
end PC_PROVEEDOR;
/

create or replace package body PC_Compra is
        Procedure Ad_Compra(NProveedor in varchar2,Nproducto in number,Nprecio_compra in number,Ncolor in varchar2,Ncantidad in number)is
        NNcompra number;
        begin
        NNcompra:=seq_compras.nextval;
        insert into Compras (numero,proveedor) values (NNcompra,Nproveedor);
        insert into abastecimientos(linea_compra,producto,precio_Compra,color,compra,cantidad) values(seq_abastecimientos.nextval,Nproducto,Nprecio_compra,Ncolor,NNcompra,Ncantidad);
        COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
       raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
        END;
    
    Procedure Ad_Abastecimiento(Nproducto in number,Nprecio_compra in number,Ncolor in varchar2,Ncompra in number,Ncantidad in number) is
        begin
        insert into Abastecimientos (linea_compra,producto ,precio_compra ,color ,compra ,cantidad ) values (seq_abastecimientos.nextval,Nproducto ,Nprecio_compra ,Ncolor ,Ncompra ,Ncantidad );
        COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
        raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
        END;
    
    function Co_compras return sys_refcursor is CO_COM SYS_REFCURSOR;
    begin
    open CO_COM for
        SELECT * FROM Compras;

    return CO_COM;
    end;
    
    function Co_detalle_compras return sys_refcursor is CO_DE_COM sys_refcursor;
    begin
    open CO_DE_COM for
        SELECT * FROM Detalle_compra ;

    return CO_DE_COM ;
    end;
    
    
    function Co_compras_Proveedor(Nproveedor in varchar2) return sys_refcursor is CO_COM_PRO sys_refcursor;
    begin
    open CO_COM_PRO for
        SELECT * FROM Compras where proveedor=Nproveedor ;

    return CO_COM_PRO ;
    end;
    
    function Co_Tamaño(Ncompra in number) return sys_refcursor is Co_Tamaño_C sys_refcursor;
    begin
    open Co_Tamaño_C for
        SELECT * FROM Tamaño_compra where compra=Ncompra;

    return  Co_Tamaño_C;
    end;
    function Co_Compras_nosurtimientos return sys_refcursor is Compras_nosurtimiento sys_refcursor;
    begin
    open Compras_nosurtimiento for
    select * from compras C where (select count (numero) from surtimientos where compra=C.numero)=0; 
    return Compras_nosurtimiento;
    end;
    
end PC_Compra;
/

create or replace package body PC_Producto is
    Procedure AD_Producto (Nprecio in number,Nmarca in varchar2,Nnombre in varchar2,Ndescripcion in varchar2,Ntipo in varchar2,Ncategoria in number,Ntamaño in varchar2) is
    begin
    insert into Productos (id_producto,precio,marca ,nombre ,descripcion ,tipo ,categoria ,tamaño ) values (seq_productos.nextval,Nprecio ,Nmarca ,Nnombre ,Ndescripcion ,Ntipo ,Ncategoria ,Ntamaño );
     COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
        raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
        END;
    
    
    Procedure MO_Producto(Nid_producto in number ,Nprecio in number,Nmarca in varchar2,Ndescripcion in varchar2,Ntipo in varchar2,Ncategoria in number) is
        begin
        update Productos  set precio=Nprecio ,marca=Nmarca ,descripcion=Ndescripcion ,tipo= Ntipo ,categoria= Ncategoria where id_producto=Nid_producto;
        COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
        raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
        END;
    
    Procedure DEL_Producto(Nid_producto in number) is
        begin
        delete from  Productos  where id_producto=Nid_producto;
        COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
        raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
        END;
        
        
    Procedure AD_Juego(Nrequisitos in varchar2,Nficha_tecnica in xmltype,Nprecio in number,Nmarca in varchar2,Nnombre in varchar2,Ndescripcion in varchar2,Ntipo in varchar2,Ncategoria in number,Ntamaño in varchar2)is 
        NNproducto number;
        begin
        NNproducto := seq_productos.nextval;
        insert into Productos (id_producto,precio,marca ,nombre ,descripcion ,tipo ,categoria ,tamaño ) values (NNproducto, Nprecio ,Nmarca ,Nnombre ,Ndescripcion ,Ntipo ,Ncategoria ,Ntamaño );
        insert into Juegos (producto ,requisitos ,ficha_tecnica ) values (NNproducto ,Nrequisitos ,Nficha_tecnica );
        COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
        raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
        END;
    Procedure MO_Juego(Nproducto in number,Nrequisitos in varchar2,Nficha_tecnica in xmltype) is
        begin
        update  Juegos set requisitos=Nrequisitos ,ficha_tecnica=Nficha_tecnica WHERE Nproducto=producto;
        COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
        raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
        END;
        
    Procedure DEL_Juego(Nproducto in number) is
        begin
        DELETE FROM Juegos where Nproducto=producto;
        COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
        raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
        END;
    function Co_Juegos_Plataforma(Nplataforma in varchar2 ) return sys_refcursor is CO_JU_P SYS_REFCURSOR;
    begin
    open CO_JU_P for
        select * from Juegos_Clientes where Nplataforma=plataforma;
    return CO_JU_P;
    end;
    
    function CO_Juegos return sys_refcursor is CO_JU SYS_REFCURSOR;
    begin
    open CO_JU for
        select * from Juegos;
    return CO_JU;
    end;
    
    function Co_Productos return sys_refcursor IS CO_PRO SYS_REFCURSOR;
    begin
    open CO_PRO for
        SELECT *  from productos;
    return CO_PRO;
    end;
    
    function CO_Productos_Marca(Nmarca in varchar2) return sys_refcursor is CO_PRO_M sys_refcursor;
    begin
    open CO_PRO_M for
        SELECT *  from productos where marca=Nmarca;
    return CO_PRO_M;
    end;  
    
    function CO_Productos_Categoria(Ncategoria in varchar2) return sys_refcursor is CO_PRO_C sys_refcursor;
    begin
    open CO_PRO_C for
        SELECT *  from productos where categoria=Ncategoria;
    return CO_PRO_C;
    end;
    
    function Co_Productos_Tipo(Ntipo in varchar2) return sys_refcursor is CO_PRO_T sys_refcursor;
    begin
    open CO_PRO_T for
        SELECT *  from productos where tipo=Ntipo;
    return CO_PRO_T;
    end;
    
    function Co_Info_Producto return sys_refcursor is CO_PRO_I SYS_REFCURSOR;
    begin
    open CO_PRO_I for
        SELECT *  from Info_producto;
    return CO_PRO_I;
    end;
    
    Function Co_Productos_B return sys_refcursor is CO_P_B Sys_refcursor;
        Begin
        open CO_P_B for
            select * from Productos_Bodega;
        return CO_P_B;
        end;
    
END PC_Producto;
/

create or replace package body PC_Categoria is
    Procedure AD_Categoria(Nnumero in number,Nnombre in varchar2,Ndescripcion in varchar2) is
    begin
    insert into Categorias (numero ,nombre ,descripcion ) values (Nnumero ,Nnombre ,Ndescripcion );
    COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
        raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
    END;
    
    Procedure MO_Categoria(Nnumero in number,Nnombre in varchar2,Ndescripcion in varchar2) is
    begin
    update Categorias set nombre=Nnombre ,descripcion=Ndescripcion where numero=Nnumero;
    COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
       raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
    END;
    
    Procedure EL_Categoria(Nnumero in number) is
    begin
    delete from categorias where numero=Nnumero;
    COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
        raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
    END;
    
    function CO_Categorias return sys_refcursor is CO_CAT sys_refcursor;
    begin
    open CO_CAT for
        select * from Categorias;
    return CO_CAT;
    end;
    
end PC_Categoria;
/

create or replace package body PC_Surtimiento is
    Procedure AD_Surtimiento(Ncompra in number,Nbodega in number) is 
    begin
    insert into Surtimientos (numero,compra ,bodega ) values (seq_surtimientos.nextval,Ncompra ,Nbodega );
    COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
        raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
        END;
    
    Procedure MO_Surtimiento(Nnumero in number,Nestado in varchar) is 
        begin
        update Surtimientos set estado=Nestado where numero=Nnumero ;
        COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
        raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
        END;
    Procedure EL_Surtimiento(Nnumero in number) is
        begin
        delete from Surtimientos where numero=Nnumero;
        COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
       raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
        END;
    
    function Co_Surtimientos return sys_refcursor is CO_SUR sys_refcursor;
    begin
    open CO_SUR for
        SELECT * FROM  Surtimientos;
    return CO_SUR;
    end;
    
    function Co_Surtimientos_Estado(Nestado in varchar2,Nfecha in date)return sys_refcursor IS CO_SUR_E sys_refcursor;
    begin
    open CO_SUR_E for
        SELECT * FROM  Surtimientos WHERE estado=Nestado and fecha_envio>=Nfecha;
    return CO_SUR_E;
    end;
end PC_Surtimiento;
/

create or replace package body PC_Bodega is
    Procedure AD_Bodega(NNumero in number,Ndireccion in varchar2,Ncapacidad in number)is 
        begin
        insert into Bodegas (Numero ,direccion ,capacidad ) values (NNumero ,Ndireccion ,Ncapacidad );
        COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
        raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
        END;
    Procedure EL_Bodega(Nnumero in number) is
        begin
        delete from  Bodegas  where numero=Nnumero;
        COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN
        ROLLBACK;
        raise_application_error(-20001,'Se encontró un error - '||SQLCODE||' -ERROR- '||SQLERRM);
        END; 
    
    function Co_Bodegas return sys_refcursor is CO_BO SYS_REFCURSOR;
    begin
    open CO_BO for
    
        select  * FROM Bodegas;
    return CO_BO;
    end;
    
    function Co_Capacidad_restante return sys_refcursor is CO_CA SYS_REFCURSOR;
    begin
    open CO_CA for
    
        select  * FROM capacidad_restante;
    return CO_CA;
    end;
    
    
END PC_Bodega;
/
