--CRUDE
Create or replace package PC_Unidad is
    Procedure Ad_unidad(Nnumero_de_serie in varchar2, Ncolor in varchar2,Nproducto in number, Nsurtimiento in number );
    Procedure El_unidad(Nnumero_de_serie in varchar2);
    Function Co_unidades return sys_refcursor;
    Function Co_Unidades_Producto(Nproducto in number) return sys_refcursor;
    function Co_Productos_Disponibilidad return sys_refcursor;
End PC_Unidad;
/

Create or replace package PC_Proveedor is
    Procedure Ad_Proveedor(Nidentificacion in varchar2,Nnombre in varchar2,Ntelefono in varchar2, Ndireccion in varchar2, Ncorreo in varchar2, NTipo_identificacion in varchar2,Nproducto in number,Nprecio_actual in number );
    Procedure Mo_Proveedor(Nidentificacion in varchar2,Nnombre in varchar2,Ntelefono in varchar2, Ndireccion in varchar2, Ncorreo in varchar2);
    Procedure El_Proveedor(Nidentificacion in varchar2);
    Procedure Ad_Ofrecimiento(Nproveedor in varchar2,Nproducto in number,Nprecio_actual in number);
    Procedure Mo_Ofrecimiento(Nproveedor in varchar2,Nproducto in number,Nprecio_actual in number);
    Procedure El_Ofrecimiento(Nproveedor in varchar2,Nproducto in number);
    function Co_Mejores_Ofrecimientos return sys_refcursor;
    function Co_Proveedores return sys_Refcursor;
    function Co_Ofrecimientos return sys_refcursor;
    function Co_Ofrecimientos_Proveedor(Nproveedor in varchar2) return sys_refcursor;
End PC_Proveedor;
/

Create or replace package PC_Compra is
    Procedure Ad_Compra(NProveedor in varchar2,Nproducto in number,Nprecio_compra in number,Ncolor in varchar2,Ncantidad in number);
    Procedure Ad_Abastecimiento(Nproducto in number,Nprecio_compra in number,Ncolor in varchar2,Ncompra in number,Ncantidad in number);
    function Co_compras return sys_refcursor;
    function Co_detalle_compras return sys_refcursor;
    function Co_compras_Proveedor(Nproveedor in varchar2) return sys_refcursor;
    function Co_Tamaño(Ncompra in number) return sys_refcursor;
    function Co_Compras_nosurtimientos return sys_refcursor;
End PC_Compra;
/

Create or replace package PC_Producto is
    Procedure AD_Producto (Nprecio in number,Nmarca in varchar2,Nnombre in varchar2,Ndescripcion in varchar2,Ntipo in varchar2,Ncategoria in number,Ntamaño in varchar2);
    Procedure MO_Producto(Nid_producto in number ,Nprecio in number,Nmarca in varchar2,Ndescripcion in varchar2,Ntipo in varchar2,Ncategoria in number);
    Procedure DEL_Producto(Nid_producto in number);
    Procedure AD_Juego(Nrequisitos in varchar2,Nficha_tecnica in xmltype, Nprecio in number,Nmarca in varchar2,Nnombre in varchar2,Ndescripcion in varchar2,Ntipo in varchar2,Ncategoria in number,Ntamaño in varchar2);
    Procedure MO_Juego(Nproducto in number,Nrequisitos in varchar2,Nficha_tecnica in xmltype);
    Procedure DEL_Juego(Nproducto in number);
    function Co_Juegos_Plataforma(Nplataforma in varchar2 ) return sys_refcursor;
    function CO_Juegos return sys_refcursor;
    function Co_Productos return sys_refcursor;
    function CO_Productos_Marca(Nmarca in varchar2) return sys_refcursor;
    function CO_Productos_Categoria(Ncategoria in varchar2) return sys_refcursor;
    function Co_Productos_Tipo(Ntipo in varchar2) return sys_refcursor;
    function Co_Info_Producto return sys_refcursor;
    function Co_Productos_B return sys_refcursor;
    

End PC_Producto;
/

create or replace package PC_Categoria is
    Procedure AD_Categoria(Nnumero in number,Nnombre in varchar2,Ndescripcion in varchar2);
    Procedure MO_Categoria(Nnumero in number,Nnombre in varchar2,Ndescripcion in varchar2);
    Procedure EL_Categoria(Nnumero in number);
    function CO_Categorias return sys_refcursor;
end PC_Categoria;
/

create or replace package PC_Surtimiento is
    Procedure AD_Surtimiento(Ncompra in number,Nbodega in number);
    Procedure MO_Surtimiento(Nnumero in number,Nestado in varchar);
    Procedure EL_Surtimiento(Nnumero in number);
    function Co_Surtimientos return sys_refcursor;
    function Co_Surtimientos_Estado(Nestado in varchar2, Nfecha in date)return sys_refcursor;
    
end PC_Surtimiento;
/

create or replace package PC_Bodega is
    Procedure AD_Bodega(NNumero in number,Ndireccion in varchar2,Ncapacidad in number);
    Procedure EL_Bodega(Nnumero in number);
    function Co_Bodegas return sys_refcursor;
    function Co_Capacidad_restante return sys_refcursor;
    
end PC_Bodega;
/