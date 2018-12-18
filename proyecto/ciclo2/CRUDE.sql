Create or replace package PC_Clientes is
    Procedure Ad_cliente(Nidentificacion in varchar2, Nnombre in varchar2,Ncorreo in varchar2, Ntelefono in varchar2,Ntipo_identificacion in varchar2,Ndireccion in varchar2,Ncodigo_zip in varchar2,Ndepartamento in number );
    Procedure Mo_cliente(Nidentificacion in varchar2, Nnombre in varchar2,Ncorreo in varchar2, Ntelefono in varchar2,Ntipo_identificacion in varchar2,Ndireccion in varchar2,Ncodigo_zip in varchar2,Ndepartamento in number );
    function Co_info(Nidentificacion in varchar2) return sys_refcursor;
End PC_Clientes;
/
Create or replace package PC_Departamentos is
    Procedure Ad_Departamentos(Ncodigo in number, Nnombre in varchar2);
    Procedure Mo_Departamentos(Ncodigo in number,Nnombre in varchar2);
    function Co_dpto return sys_refcursor;
End PC_Departamentos;
/

Create or replace package PC_Entregas is
    Procedure Ad_Entregas(Nventa in number,Ncliente in varchar2,Nempresa_Mensajeria in varchar2);
    Procedure Mo_Entregas(Nnumero in number,Nestado in varchar2);
    procedure El_Entregas(Nnumero in number);
    function Co_Entregas_estado(NEstado in varchar2,Nfecha in date) return sys_refcursor;
End PC_Entregas;
/

Create or replace package PC_Ventas is
    Procedure Ad_Ventas(Ncliente in varchar2 ,Nproducto in number,Ncolor in varchar2,Ncantidad in number);
    Procedure Mo_Ventas(Nnumero in number,Nestado in varchar2);
    procedure Del_Ventas(Nnumero in number);
    Procedure Ad_Detalle_ventas(Nventa in number ,Nproducto in number ,Ncolor in varchar2,Ncantidad in number);
    procedure Mo_Detalle_ventas(Nventa in number ,Nproducto in number, Ncantidad in number);
    procedure Del_Detalle_ventas(Nventa in number ,Nproducto in number);
    function Co_detalle return sys_refcursor;
    function Co_detalle_cliente(Nidentificacion in varchar2) return sys_refcursor;
    function Co_dinero_mes return sys_refcursor;
    function Co_productos_mes return sys_refcursor;
    function Co_Productos_mas return sys_refcursor;
    function Co_Productos_menos return sys_refcursor;
    function Co_ventas_noentreg return sys_refcursor;
    function Co_ventas_cliente(Nidentificacion in varchar2) return sys_refcursor;
    function Co_tipo_vendido return sys_refcursor;
End PC_Ventas;
/

Create or replace package PC_Empresas_mensajeria is
    procedure Ad_Empresa(Nidentificacion in varchar2,Ntelefono in varchar2,Ncorreo in varchar2,Nnombre in varchar2,Ndireccion in varchar2,Ndepartamento in number,Nprecio_envio in number,Ntiempo_estimado in varchar2);
    procedure Ad_Detalle_coberturas(Ndepartamento in number,Nempresa_mensajeria in varchar2,Nprecio_envio in number,Ntiempo_estimado in varchar2);
    procedure Mo_Empresa(Nidentificacion in varchar2,Ntelefono in varchar2,Ncorreo in varchar2,Nnombre in varchar2,Ndireccion in varchar2);
    procedure Mo_Detalle_coberturas(Ndepartamento in number,Nempresa_mensajeria in varchar2,Nprecio_envio in number ,Ntiempo_estimado in varchar2);
    procedure El_Empresa(Nidentificacion in varchar2);
    procedure El_Detalle_coberturas(Ndepartamento in number,Nempresa in varchar2);
    function Co_mejores return sys_refcursor;
    function Co_empresas return sys_refcursor;
    
End PC_Empresas_mensajeria;
/
    
