--ActoresE
Create or replace package PA_Gerente is
    Function Consultar_unidades return sys_refcursor;
    Function Consultar_Unidades_Producto(Nproducto in number) return sys_refcursor;
    Function Consulta_Disponibilidad_P return sys_refcursor;
    
    Procedure Adicionar_Proveedor(Nidentificacion in varchar2,Nnombre in varchar2,Ntelefono in varchar2, Ndireccion in varchar2, Ncorreo in varchar2, NTipo_identificacion in varchar2,Nproducto in number,Nprecio_actual in number );
    Procedure Modificar_Proveedor(Nidentificacion in varchar2,Nnombre in varchar2,Ntelefono in varchar2, Ndireccion in varchar2, Ncorreo in varchar2);
    Procedure Eliminar_Proveedor(Nidentificacion in varchar2);
    Procedure Adicionar_Ofrecimiento(Nproveedor in varchar2,Nproducto in number,Nprecio_actual in number);
    Procedure Modificar_Ofrecimiento(Nproveedor in varchar2,Nproducto in number,Nprecio_actual in number);
    Procedure Eliminar_Ofrecimiento(Nproveedor in varchar2,Nproducto in number);
    function Mejores_Ofrecimientos return sys_refcursor;
    function Consultar_Proveedores return sys_Refcursor;
    function Consultar_Ofrecimientos return sys_refcursor;
    function Ofrecimientos_Proveedor(Nproveedor in varchar2) return sys_refcursor;


    Procedure Adicionar_Compra(NProveedor in varchar2,Nproducto in number,Nprecio_compra in number,Ncolor in varchar2,Ncantidad in number);
    Procedure Adicionar_Abastecimiento(Nproducto in number,Nprecio_compra in number,Ncolor in varchar2,Ncompra in number,Ncantidad in number);
    function Consultar_compras return sys_refcursor;
    function Consultar_detalle_compras return sys_refcursor;
    function Consultar_compras_Proveedor(Nproveedor in varchar2) return sys_refcursor;

    Procedure Adicionar_Producto (Nprecio in number,Nmarca in varchar2,Nnombre in varchar2,Ndescripcion in varchar2,Ntipo in varchar2,Ncategoria in number,Ntamaño in varchar2);
    Procedure Modificar_Producto(Nid_producto in number ,Nprecio in number,Nmarca in varchar2,Ndescripcion in varchar2,Ntipo in varchar2,Ncategoria in number);
    Procedure Eliminar_Producto(Nid_producto in number);
    Procedure Adicionar_Juego(Nrequisitos in varchar2,Nficha_tecnica in xmltype, Nprecio in number,Nmarca in varchar2,Nnombre in varchar2,Ndescripcion in varchar2,Ntipo in varchar2,Ncategoria in number,Ntamaño in varchar2);
    Procedure Modificar_Juego(Nproducto in number,Nrequisitos in varchar2,Nficha_tecnica in xmltype);
    Procedure Eliminar_Juego(Nproducto in number);
    function Consultar_Juegos return sys_refcursor;
    function Consultar_Productos return sys_refcursor;
    function Consultar_Info_Producto return sys_refcursor;


    Procedure Adicionar_Categoria(Nnumero in number,Nnombre in varchar2,Ndescripcion in varchar2);
    Procedure Modificar_Categoria(Nnumero in number,Nnombre in varchar2,Ndescripcion in varchar2);
    Procedure Eliminar_Categoria(Nnumero in number);
    function Consultar_Categorias return sys_refcursor;

    function Consultar_Surtimientos return sys_refcursor;
    function Consultar_Surtimientos_Estado(Nestado in varchar2, Nfecha in date)return sys_refcursor;

    Procedure Adicionar_Bodega(NNumero in number,Ndireccion in varchar2,Ncapacidad in number);
    Procedure Eliminar_Bodega(Nnumero in number);
    function Consultar_Bodegas return sys_refcursor;
    function Consultar_Capacidad_restante return sys_refcursor;
end PA_Gerente;
/

Create or replace package PA_Asistente_Bodega is
    Procedure Adicionar_unidad(Nnumero_de_serie in varchar2, Ncolor in varchar2,Nproducto in number, Nsurtimiento in number );
    Procedure Eliminar_unidad(Nnumero_de_serie in varchar2);
    function Consultar_Tamaño_compras(Ncompra in number) return sys_refcursor;
    function Consultar_Productos_por_Bodega return sys_refcursor;
    Procedure Adicionar_Surtimiento(Ncompra in number,Nbodega in number);
    Procedure Modificar_Surtimiento(Nnumero in number,Nestado in varchar);
    Procedure Eliminar_Surtimiento(Nnumero in number);
    function Consultar_Surtimientos return sys_refcursor;
    function Consultar_Surtimientos_Estado(Nestado in varchar2, Nfecha in date)return sys_refcursor;
    function Consultar_Bodegas return sys_refcursor;
    function Consultar_Capacidad_restante return sys_refcursor;
    function Compras_nosurtimiento return sys_refcursor;
end PA_Asistente_Bodega;
/

Create or replace package PA_Cliente is
    function Consultar_Juegos_Plataforma(Nplataforma in varchar2 ) return sys_refcursor;
    function Consultar_Productos_Marca(Nmarca in varchar2) return sys_refcursor;
    function Consultar_Productos_Categoria(Ncategoria in varchar2) return sys_refcursor;
    function Consultar_Productos_Tipo(Ntipo in varchar2) return sys_refcursor;
end PA_Cliente;
/