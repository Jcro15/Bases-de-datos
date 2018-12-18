Create or replace package PA_Asistente_bodega_ventas is
    Procedure Adicionar_Entregas(Nventa in number,Ncliente in varchar2,Nempresa_Mensajeria in varchar2);
    Procedure Modificar_Entregas(Nnumero in number,Nestado in varchar2);
    procedure Eliminar_Entregas(Nnumero in number);
    function Consultar_Entregas_estado(NEstado in varchar2,Nfecha in date) return sys_refcursor;
    function Consultar_mejores return sys_refcursor;
    function Consultar_empresas return sys_refcursor;
    function Consultar_ventas_noentreg return sys_refcursor;
    function Consultar_info(Nidentificacion in varchar2) return sys_refcursor;
    function Consultar_detalle_cliente(Nidentificacion in varchar2) return sys_refcursor;



end PA_Asistente_bodega_ventas;
/
Create or replace package PA_Cliente_ventas is
    Procedure Adicionar_cliente(Nidentificacion in varchar2, Nnombre in varchar2,Ncorreo in varchar2, Ntelefono in varchar2,Ntipo_identificacion in varchar2,Ndireccion in varchar2,Ncodigo_zip in varchar2,Ndepartamento in number );
    Procedure Modificar_cliente(Nidentificacion in varchar2, Nnombre in varchar2,Ncorreo in varchar2, Ntelefono in varchar2,Ntipo_identificacion in varchar2,Ndireccion in varchar2,Ncodigo_zip in varchar2,Ndepartamento in number );
    Procedure Adicionar_Ventas(Ncliente in varchar2 ,Nproducto in number,Ncolor in varchar2,Ncantidad in number);
    Procedure Adicionar_Detalle_ventas(Nventa in number ,Nproducto in number ,Ncolor in varchar2,Ncantidad in number);
    Procedure Modificar_Ventas(Nnumero in number,Nestado in varchar2);
    procedure Eliminar_Ventas(Nnumero in number);
    procedure Modificar_Detalle_ventas(Nventa in number ,Nproducto in number, Ncantidad in number);
    procedure Eliminar_Detalle_ventas(Nventa in number ,Nproducto in number);
    function Consultar_info(Nidentificacion in varchar2) return sys_refcursor;
    function Consultar_detalle_cliente(Nidentificacion in varchar2) return sys_refcursor;
    function Consultar_ventas_cliente(Nidentificacion in varchar2) return sys_refcursor;
end PA_Cliente_ventas;
/

Create or replace package PA_Gerente_ventas is
    procedure Adicionar_Empresa(Nidentificacion in varchar2,Ntelefono in varchar2,Ncorreo in varchar2,Nnombre in varchar2,Ndireccion in varchar2,Ndepartamento in number,Nprecio_envio in number,Ntiempo_estimado in varchar2);
    procedure Adicionar_Detalle_coberturas(Ndepartamento in number,Nempresa_mensajeria in varchar2,Nprecio_envio in number,Ntiempo_estimado in varchar2);
    procedure Modificar_Empresa(Nidentificacion in varchar2,Ntelefono in varchar2,Ncorreo in varchar2,Nnombre in varchar2,Ndireccion in varchar2);
    procedure Modificar_Detalle_coberturas(Ndepartamento in number,Nempresa_mensajeria in varchar2,Nprecio_envio in number ,Ntiempo_estimado in varchar2);
    procedure Eliminar_Empresa(Nidentificacion in varchar2);
    procedure Eliminar_Detalle_coberturas(Ndepartamento in number,Nempresa in varchar2);
    Procedure Adicionar_Departamentos(Ncodigo in number, Nnombre in varchar2);
    Procedure Mo_Departamentos(Ncodigo in number,Nnombre in varchar2);
    function Consultar_dpto return sys_refcursor;
    function Consultar_detalle return sys_refcursor;
    function Consultar_dinero_mes return sys_refcursor;
    function Consultar_productos_mes return sys_refcursor;
    function Consultar_Productos_mas return sys_refcursor;
    function Consultar_Productos_menos return sys_refcursor;
    function Consultar_tipo_vendido return sys_refcursor;
    function Consultar_mejores return sys_refcursor;

end PA_Gerente_ventas ;
/

