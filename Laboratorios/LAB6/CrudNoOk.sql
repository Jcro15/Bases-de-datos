begin
PC_VALIDACIONES.AD_Validacion(xmltype('<?xml version="1.0"?>

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
</Justificacion>'),'Carlos@mail.com','Jimena@mail.com',2);
end;

execute PC_LOGROS.AD_Logros('P', 'nobel' , 'Jimena@gmail.com' );


BEGIN
PC_LOGROS.DEL_Logros('Grado2', 'Jorge@mail.com');
end;