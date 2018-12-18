--ActoresI

create or replace package body PA_Gerente is
    Function Consultar_unidades return sys_refcursor is Ge_Co_U sys_refcursor;
    begin
        Ge_Co_U := PC_Unidad.Co_unidades;
        RETURN Ge_Co_U;
    END;
    Function Consultar_Unidades_Producto(Nproducto in number) return sys_refcursor IS Ge_Co_U_P sys_refcursor;
    begin
        Ge_Co_U_P:=PC_Unidad.Co_Unidades_Producto(Nproducto);
        return Ge_Co_U_P;
    end;
    
    Function Consulta_Disponibilidad_P return sys_refcursor IS Ge_Co_D_P sys_refcursor;
    begin
        Ge_Co_D_P:=PC_Unidad.Co_Productos_Disponibilidad;
        return Ge_Co_D_P;
    end;
    
    Procedure Adicionar_Proveedor(Nidentificacion in varchar2,Nnombre in varchar2,Ntelefono in varchar2, Ndireccion in varchar2, Ncorreo in varchar2, NTipo_identificacion in varchar2,Nproducto in number,Nprecio_actual in number )is
    begin
        PC_Proveedor.Ad_Proveedor(Nidentificacion ,Nnombre ,Ntelefono , Ndireccion , Ncorreo , NTipo_identificacion ,Nproducto,Nprecio_actual);
    end;
    
    Procedure Modificar_Proveedor(Nidentificacion in varchar2,Nnombre in varchar2,Ntelefono in varchar2, Ndireccion in varchar2, Ncorreo in varchar2) is
    begin
        PC_Proveedor.Mo_Proveedor(Nidentificacion ,Nnombre ,Ntelefono , Ndireccion , Ncorreo );
    end;
    
    Procedure Eliminar_Proveedor(Nidentificacion in varchar2) is
    begin
        PC_Proveedor.El_Proveedor(Nidentificacion);
    end;
    
    Procedure Adicionar_Ofrecimiento(Nproveedor in varchar2,Nproducto in number,Nprecio_actual in number) is
    begin
        PC_Proveedor.Ad_Ofrecimiento(Nproveedor ,Nproducto ,Nprecio_actual );
    end;
    
    Procedure Modificar_Ofrecimiento(Nproveedor in varchar2,Nproducto in number,Nprecio_actual in number) is
    begin
        PC_Proveedor.Mo_Ofrecimiento(Nproveedor ,Nproducto ,Nprecio_actual );
    end;
    
    Procedure Eliminar_Ofrecimiento(Nproveedor in varchar2,Nproducto in number) is 
    begin
        PC_Proveedor.El_Ofrecimiento(Nproveedor ,Nproducto );
    end;
    
    function Mejores_Ofrecimientos return sys_refcursor is Ge_Me_O sys_refcursor;
    begin
         Ge_Me_O:=PC_Proveedor.Co_Mejores_Ofrecimientos;
         return Ge_Me_O;
    end;
    
    function Consultar_Proveedores return sys_Refcursor is Ge_Co_P sys_refcursor;
    begin
        Ge_Co_P:=PC_Proveedor.Co_Proveedores;
        return Ge_Co_P;
    end;
    
    function Consultar_Ofrecimientos return sys_refcursor is Ge_Co_O sys_refcursor;
    begin
        Ge_Co_O:=PC_Proveedor.Co_Ofrecimientos;
        return Ge_Co_O;
    end;
    
    function Ofrecimientos_Proveedor(Nproveedor in varchar2) return sys_refcursor is Ge_Co_O_P sys_refcursor;
    begin
        Ge_Co_O_P:=PC_Proveedor.Co_Ofrecimientos_Proveedor(Nproveedor);
        return Ge_Co_O_P;
    end;

    Procedure Adicionar_Compra(NProveedor in varchar2,Nproducto in number,Nprecio_compra in number,Ncolor in varchar2,Ncantidad in number) is
    begin
        PC_Compra.Ad_Compra(NProveedor,Nproducto,Nprecio_compra,Ncolor,Ncantidad);
    end;
        
    Procedure Adicionar_Abastecimiento(Nproducto in number,Nprecio_compra in number,Ncolor in varchar2,Ncompra in number,Ncantidad in number) is
    begin
        PC_Compra.Ad_Abastecimiento(Nproducto ,Nprecio_compra,Ncolor, Ncompra ,Ncantidad);
    end;
    
    function Consultar_compras return sys_refcursor is Ge_Co_Com sys_refcursor;
    begin
        Ge_Co_Com:=PC_Compra.Co_compras;
        return Ge_Co_Com;
    end;
    
    function Consultar_detalle_compras return sys_refcursor is Ge_Co_De sys_refcursor;
    begin
        Ge_Co_De:=PC_Compra.Co_detalle_compras;
        return  Ge_Co_De;
    end;
    
    function Consultar_compras_Proveedor(Nproveedor in varchar2) return sys_refcursor is Ge_Co_CP sys_refcursor;
    begin
        Ge_Co_CP:=PC_Compra.Co_compras_Proveedor(Nproveedor) ;
        return Ge_Co_CP;
    end;
    
    Procedure Adicionar_Producto (Nprecio in number,Nmarca in varchar2,Nnombre in varchar2,Ndescripcion in varchar2,Ntipo in varchar2,Ncategoria in number,Ntamaño in varchar2) is
    begin
       PC_Producto.AD_Producto (Nprecio,Nmarca ,Nnombre ,Ndescripcion ,Ntipo ,Ncategoria ,Ntamaño );
    end;
    Procedure Modificar_Producto(Nid_producto in number ,Nprecio in number,Nmarca in varchar2,Ndescripcion in varchar2,Ntipo in varchar2,Ncategoria in number) is
    begin
        PC_Producto.MO_Producto(Nid_producto ,Nprecio ,Nmarca ,Ndescripcion ,Ntipo ,Ncategoria );
    end;
    
    Procedure Eliminar_Producto(Nid_producto in number) is
    begin
        PC_Producto.DEL_Producto(Nid_producto );
    end;
    Procedure Adicionar_Juego(Nrequisitos in varchar2,Nficha_tecnica in xmltype,Nprecio in number,Nmarca in varchar2,Nnombre in varchar2,Ndescripcion in varchar2,Ntipo in varchar2,Ncategoria in number,Ntamaño in varchar2) is 
    begin
        PC_Producto.AD_Juego(Nrequisitos ,Nficha_tecnica,Nprecio,Nmarca ,Nnombre ,Ndescripcion ,Ntipo,Ncategoria ,Ntamaño  );
    end;
    
    Procedure Modificar_Juego(Nproducto in number,Nrequisitos in varchar2,Nficha_tecnica in xmltype) is
    begin
        PC_Producto.MO_Juego(Nproducto ,Nrequisitos ,Nficha_tecnica );
    end;
    
    Procedure Eliminar_Juego(Nproducto in number) is
    begin
        PC_Producto.DEL_Juego(Nproducto );
    end;
    
    function Consultar_Juegos return sys_refcursor is Ge_Co_J sys_refcursor;
    begin
        Ge_Co_J:=PC_Producto.CO_Juegos;
        return Ge_Co_J;
    end;
    
    function Consultar_Productos return sys_refcursor is Ge_Co_P sys_refcursor;
    begin
        Ge_Co_P:=PC_Producto.Co_Productos;
        return Ge_Co_P;
    end;
    
    
    function Consultar_Info_Producto return sys_refcursor is Ge_Co_IP sys_refcursor;
    begin
        Ge_Co_IP:=PC_Producto.Co_Info_Producto;
        return Ge_Co_IP;
    end;
    

    Procedure Adicionar_Categoria(Nnumero in number,Nnombre in varchar2,Ndescripcion in varchar2) is
    begin
        PC_Categoria.AD_Categoria(Nnumero ,Nnombre ,Ndescripcion );
    end;
    
    Procedure Modificar_Categoria(Nnumero in number,Nnombre in varchar2,Ndescripcion in varchar2) is
    begin
        PC_Categoria.MO_Categoria(Nnumero,Nnombre ,Ndescripcion );
    end;
    
    Procedure Eliminar_Categoria(Nnumero in number) is 
    begin
        PC_Categoria.EL_Categoria(Nnumero);
    end;
    
    function Consultar_Categorias return sys_refcursor is Ge_Co_C sys_refcursor;
    begin
       Ge_Co_C:= PC_Categoria.CO_Categorias;
       return Ge_Co_C;
    end;

    function Consultar_Surtimientos return sys_refcursor is Ge_Co_S sys_refcursor;
    begin
        Ge_Co_S:=PC_Surtimiento.Co_Surtimientos;
        return Ge_Co_S;
    end;
    
    function Consultar_Surtimientos_Estado(Nestado in varchar2, Nfecha in date)return sys_refcursor is Ge_Co_SE sys_refcursor;
    begin
        Ge_Co_SE:=PC_Surtimiento.Co_Surtimientos_Estado(Nestado, Nfecha);
        return Ge_Co_SE;
    end;

    Procedure Adicionar_Bodega(NNumero in number,Ndireccion in varchar2,Ncapacidad in number) is
    begin
        PC_Bodega.AD_Bodega(NNumero,Ndireccion ,Ncapacidad);
    end;
    Procedure Eliminar_Bodega(Nnumero in number) is
    Begin
        PC_Bodega.EL_Bodega(Nnumero);
    end;
    function Consultar_Bodegas return sys_refcursor is Ge_Co_B sys_refcursor;
    begin
        Ge_Co_B:=PC_Bodega.Co_Bodegas ;
        return Ge_Co_B;
    end;
    
    function Consultar_Capacidad_restante return sys_refcursor is Ge_Co_Ca sys_refcursor;
    begin
        Ge_Co_Ca:=PC_Bodega.Co_Capacidad_restante;
        return Ge_Co_Ca;
    end;
end  PA_Gerente;
/

Create or replace package body PA_Asistente_Bodega is
    Procedure Adicionar_unidad(Nnumero_de_serie in varchar2, Ncolor in varchar2,Nproducto in number, Nsurtimiento in number ) is
    begin
        PC_Unidad.Ad_unidad(Nnumero_de_serie , Ncolor ,Nproducto , Nsurtimiento  );
    end;
    
    Procedure Eliminar_unidad(Nnumero_de_serie in varchar2) is
    begin
        PC_Unidad.El_unidad(Nnumero_de_serie );
    end;
    
    function Consultar_Tamaño_compras(Ncompra in number) return sys_refcursor is A_Tamaño sys_refcursor;
    begin
        A_Tamaño:=PC_Compra.Co_Tamaño(Ncompra);
        RETURN A_Tamaño;
    end;
    function Consultar_Productos_por_Bodega return sys_refcursor IS A_Co_P sys_refcursor ;
    begin
       A_Co_P:= PC_Producto.Co_Productos_B;
       return A_Co_P;
    end;
    
    Procedure Adicionar_Surtimiento(Ncompra in number,Nbodega in number) is
    begin
        PC_Surtimiento.AD_Surtimiento(Ncompra ,Nbodega );
    end;
    
    Procedure Modificar_Surtimiento(Nnumero in number,Nestado in varchar) is
    begin
        PC_Surtimiento.MO_Surtimiento(Nnumero ,Nestado );
        
    end;
    Procedure Eliminar_Surtimiento(Nnumero in number) is
    begin
        PC_Surtimiento.EL_Surtimiento(Nnumero);
    end;
    function Consultar_Surtimientos return sys_refcursor is A_Co_S sys_refcursor;
    begin
        A_Co_S :=PC_Surtimiento.Co_Surtimientos;
        return A_Co_S;
    end;
    
    function Consultar_Surtimientos_Estado(Nestado in varchar2, Nfecha in date)return sys_refcursor is A_Co_ES sys_refcursor;
    begin
        A_Co_ES:=PC_Surtimiento.Co_Surtimientos_Estado(Nestado, Nfecha );
        return A_Co_ES;
    end;
    
    function Consultar_Bodegas return sys_refcursor is A_Co_B sys_refcursor;
    begin
        A_Co_B:=PC_Bodega.Co_Bodegas;
        return A_Co_B;
    end;
    function Consultar_Capacidad_restante return sys_refcursor is A_Co_Cap sys_refcursor;
    begin
        A_Co_Cap:=PC_Bodega.Co_Capacidad_restante;
        return A_Co_Cap;
    end;
    
    function Compras_nosurtimiento return sys_refcursor is A_co_nosurt sys_refcursor;
    begin
    A_co_nosurt:=PC_COMPRA.Co_Compras_nosurtimientos;
    return A_co_nosurt;
    end;

end PA_Asistente_Bodega;
/

Create or replace package BODY PA_Cliente is
    function Consultar_Juegos_Plataforma(Nplataforma in varchar2 ) return sys_refcursor is C_Co_J sys_refcursor;
    begin
        C_Co_J:=pc_producto.co_juegos_plataforma(Nplataforma);
        return C_Co_J;
    end;
    
    function Consultar_Productos_Marca(Nmarca in varchar2) return sys_refcursor is C_Co_PM sys_refcursor;
    begin
        C_Co_PM:=PC_Producto.CO_Productos_Marca(Nmarca);
        return  C_Co_PM;
    end;
    
    function Consultar_Productos_Categoria(Ncategoria in varchar2) return sys_refcursor is C_Co_PC sys_refcursor;
    begin
        C_Co_PC:=PC_Producto.CO_Productos_Categoria(Ncategoria );
        return  C_Co_PC;
    end;
    
    function Consultar_Productos_Tipo(Ntipo in varchar2) return sys_refcursor is C_Co_PT sys_refcursor;
    begin
        C_Co_PT:=PC_Producto.Co_Productos_Tipo(Ntipo );
        return C_Co_PT;
    end;
end PA_Cliente;
/