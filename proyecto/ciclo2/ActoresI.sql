Create or replace package body PA_Asistente_bodega_ventas is
    Procedure Adicionar_Entregas(Nventa in number,Ncliente in varchar2,Nempresa_Mensajeria in varchar2)is
    begin
    PC_Entregas.Ad_Entregas(Nventa,Ncliente,Nempresa_mensajeria); 
    end;
    Procedure Modificar_Entregas(Nnumero in number,Nestado in varchar2)is
    begin
    PC_Entregas.Mo_Entregas(Nnumero,Nestado);
    end;
    procedure Eliminar_Entregas(Nnumero in number)is
    begin
    PC_Entregas.El_Entregas(Nnumero);
    end;
    
    function Consultar_Entregas_estado(NEstado in varchar2,Nfecha in date) return sys_refcursor is Con_E_E_A sys_refcursor;
    begin
        Con_E_E_A :=PC_Entregas.Co_Entregas_estado(NEstado,Nfecha );
        return Con_E_E_A ;
    end;
    function Consultar_mejores return sys_refcursor is Con_C_M_A sys_refcursor;
    begin
        Con_C_M_A:=PC_Empresas_mensajeria.Co_mejores;
        return Con_C_M_A;
    end;
    function Consultar_empresas return sys_refcursor is Con_E_A sys_refcursor;
    begin
        Con_E_A:=PC_Empresas_mensajeria.Co_empresas;
        return Con_E_A;
    end;
     function Consultar_ventas_noentreg return sys_refcursor is Con_Ve_N_G sys_refcursor;
    begin
        Con_Ve_N_G:=PC_Ventas.Co_ventas_noentreg;
        return Con_Ve_N_G;
    end;
    function Consultar_info(Nidentificacion in varchar2) return sys_refcursor is Con_I_C sys_refcursor;
    begin
        Con_I_C:=PC_Clientes.Co_info(Nidentificacion);
        return Con_I_C;
    end;
    function Consultar_detalle_cliente(Nidentificacion in varchar2) return sys_refcursor is Con_D_C sys_refcursor;  
    begin
        Con_D_C:=PC_Ventas.Co_detalle_cliente(Nidentificacion );
        return Con_D_C;
    end;
end PA_Asistente_bodega_ventas;
/


Create or replace package body PA_Cliente_ventas is
    Procedure Adicionar_cliente(Nidentificacion in varchar2, Nnombre in varchar2,Ncorreo in varchar2, Ntelefono in varchar2,Ntipo_identificacion in varchar2,Ndireccion in varchar2,Ncodigo_zip in varchar2,Ndepartamento in number ) is
    begin
    pc_clientes.ad_cliente(Nidentificacion, Nnombre,Ncorreo, Ntelefono,Ntipo_identificacion,Ndireccion,Ncodigo_zip,Ndepartamento);
    end;
    Procedure Modificar_cliente(Nidentificacion in varchar2, Nnombre in varchar2,Ncorreo in varchar2, Ntelefono in varchar2,Ntipo_identificacion in varchar2,Ndireccion in varchar2,Ncodigo_zip in varchar2,Ndepartamento in number ) is
    begin
    pc_clientes.mo_cliente(Nidentificacion, Nnombre,Ncorreo, Ntelefono,Ntipo_identificacion,Ndireccion,Ncodigo_zip,Ndepartamento);
    end;
    Procedure Adicionar_Ventas(Ncliente in varchar2 ,Nproducto in number,Ncolor in varchar2,Ncantidad in number) is
    begin
    pc_ventas.ad_ventas(Ncliente,Nproducto,Ncolor,Ncantidad);
    end;
    Procedure Adicionar_Detalle_ventas(Nventa in number ,Nproducto in number ,Ncolor in varchar2,Ncantidad in number) is 
    begin
    pc_ventas.ad_detalle_ventas(Nventa,Nproducto,Ncolor,Ncantidad);
    end;
    Procedure Modificar_Ventas(Nnumero in number,Nestado in varchar2)is
    begin
    pc_ventas.mo_ventas(Nnumero,Nestado );
    end;
    procedure Eliminar_Ventas(Nnumero in number) is
    begin
    pc_ventas.del_ventas(Nnumero );
    end;
    procedure Modificar_Detalle_ventas(Nventa in number ,Nproducto in number, Ncantidad in number) is
    begin
    pc_ventas.mo_detalle_ventas(Nventa  ,Nproducto , Ncantidad  );
    end;
    procedure Eliminar_Detalle_ventas(Nventa in number ,Nproducto in number) is
    begin
    pc_ventas.del_detalle_ventas(Nventa ,Nproducto );
    end;
    
    function Consultar_info(Nidentificacion in varchar2) return sys_refcursor is Con_I_C sys_refcursor;
    begin
        Con_I_C:=PC_Clientes.Co_info(Nidentificacion);
        return Con_I_C;
    end;
    function Consultar_detalle_cliente(Nidentificacion in varchar2) return sys_refcursor is Con_D_C sys_refcursor;  
    begin
        Con_D_C:=PC_Ventas.Co_detalle_cliente(Nidentificacion );
        return Con_D_C;
    end;
        
    function Consultar_ventas_cliente(Nidentificacion in varchar2) return sys_refcursor is Con_ven_C_G sys_refcursor;
    begin
        Con_ven_C_G:=PC_Ventas.Co_ventas_cliente(Nidentificacion );
        return Con_ven_C_G;
    end;
end PA_Cliente_ventas;
/

Create or replace package body PA_Gerente_ventas is
    procedure Adicionar_Empresa(Nidentificacion in varchar2,Ntelefono in varchar2,Ncorreo in varchar2,Nnombre in varchar2,Ndireccion in varchar2,Ndepartamento in number,Nprecio_envio in number,Ntiempo_estimado in varchar2) is
    begin
    pc_empresas_mensajeria.ad_empresa(Nidentificacion,Ntelefono,Ncorreo,Nnombre,Ndireccion,Ndepartamento,Nprecio_envio,Ntiempo_estimado);
    end;
    procedure Adicionar_Detalle_coberturas(Ndepartamento in number,Nempresa_mensajeria in varchar2,Nprecio_envio in number,Ntiempo_estimado in varchar2) is
    begin
    pc_empresas_mensajeria.ad_detalle_coberturas(Ndepartamento,Nempresa_mensajeria,Nprecio_envio,Ntiempo_estimado);
    end;
    procedure Modificar_Empresa(Nidentificacion in varchar2,Ntelefono in varchar2,Ncorreo in varchar2,Nnombre in varchar2,Ndireccion in varchar2) is
    begin
    pc_empresas_mensajeria.mo_empresa(Nidentificacion,Ntelefono,Ncorreo,Nnombre,Ndireccion);
    end;
    
    procedure Modificar_Detalle_coberturas(Ndepartamento in number,Nempresa_mensajeria in varchar2,Nprecio_envio in number ,Ntiempo_estimado in varchar2) is
    begin
    pc_empresas_mensajeria.mo_detalle_coberturas(Ndepartamento,Nempresa_mensajeria,Nprecio_envio,Ntiempo_estimado);
    end;

    procedure Eliminar_Empresa(Nidentificacion in varchar2) is
    begin
    pc_empresas_mensajeria.el_empresa(Nidentificacion);
    end;
    procedure Eliminar_Detalle_coberturas(Ndepartamento in number,Nempresa in varchar2) is
    begin
    pc_empresas_mensajeria.el_detalle_coberturas(Ndepartamento,Nempresa);
    end;
    Procedure Adicionar_Departamentos(Ncodigo in number, Nnombre in varchar2) is
    begin
    pc_departamentos.ad_departamentos(Ncodigo,Nnombre);
    end;
    Procedure Mo_Departamentos(Ncodigo in number,Nnombre in varchar2) is
    begin
    pc_departamentos.mo_departamentos(Ncodigo,Nnombre);
    end;
    function Consultar_dpto return sys_refcursor is Con_D_G sys_refcursor;
    begin
        Con_D_G:=PC_Departamentos.Co_dpto;
        return Con_D_G;
    end;
    function Consultar_detalle return sys_refcursor is Con_D_G sys_refcursor;
    begin
        Con_D_G:=PC_Ventas.Co_detalle;
        return Con_D_G;
    end;
    function Consultar_dinero_mes return sys_refcursor is Con_D_G sys_refcursor;
    begin
        Con_D_G :=PC_Ventas.Co_dinero_mes;
        return Con_D_G;
    end;
    function Consultar_productos_mes return sys_refcursor is Co_P_M_G sys_refcursor;
    begin
        Co_P_M_G:=PC_Ventas.Co_productos_mes;
        return Co_P_M_G;
    end;
    function Consultar_Productos_mas return sys_refcursor is Con_P_Mas_G sys_refcursor;
    begin
        Con_P_Mas_G:=PC_Ventas.Co_Productos_mas;
        return Con_P_Mas_G;
    end;
    function Consultar_Productos_menos return sys_refcursor is Con_P_Me_GE sys_refcursor;
    begin
        Con_P_Me_GE:=PC_Ventas.Co_Productos_menos;
        return Con_P_Me_GE;
    end;
    
   
    
    function Consultar_tipo_vendido return sys_refcursor is Con_T_Ma_g sys_refcursor;
    begin
        Con_T_Ma_g:=PC_Ventas.Co_tipo_vendido;
        return Con_T_Ma_g;
    end;
     function Consultar_mejores return sys_refcursor is Con_C_M_A sys_refcursor;
    begin
        Con_C_M_A:=PC_Empresas_mensajeria.Co_mejores;
        return Con_C_M_A;
    end;
    
end PA_Gerente_ventas ;
/  
  