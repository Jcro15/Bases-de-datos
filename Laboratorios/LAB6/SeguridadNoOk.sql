select PA_PERFIL.CONSULTA_Validaciones_registro from dual;
begin 
PA_PERFIL.ADICIONAR_Validacion(xmltype('<?xml version="1.0"?>

<Justificacion>
	<Proyecto numero="12234">
        
		<Nombre>
		beta
		</Nombre>
		<Descripcion>
        Implementacion de un alumbrado publico
        </Descripcion>
		<A�o>
		2018
		</A�o>
		
		<Rol>
		Ingeniero
		</Rol>
		
		<Evaluacion
		numero="81">
		</Evaluacion>
	</Proyecto>
    
   <Proyecto numero="358975">
        
		<Nombre>
		Zeta
		</Nombre>
		<Descripcion>
        Implementacion del alumbrado de un centro comercial
        </Descripcion>
		<A�o>
		2014
		</A�o>
		
		<Rol>
		Director
		</Rol>
		
		<Evaluacion
		numero="67">
		</Evaluacion>
	</Proyecto>
</Justificacion>'),'Jorge@mail.com','Jimena@mail.com',2);
end;
/
select PA_PERFIL.CONSULTA_Logros from dual;