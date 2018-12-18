--insertar profesor
begin
PC_Profesor.AD_profesor('Juan, Angel',xmltype('<?xml version="1.0"?>

<!DOCTYPE hoja_de_vida [
    <!ELEMENT hoja_de_vida  (Ultimo_grado,Areas,Titulos,Reconocimientos,Articulos,Asignaturas,Experiencia)>
    <!ELEMENT Ultimo_grado  (#PCDATA)>
    <!ELEMENT Areas (Area+)>
    <!ELEMENT Area (#PCDATA)>
    <!ATTLIST Area materia CDATA #REQUIRED>  
    <!ELEMENT Titulos (Titulo+)>
    <!ELEMENT Titulo (#PCDATA)>
    <!ATTLIST Titulo
    nombre CDATA #REQUIRED
    a�o CDATA #REQUIRED
    grado CDATA #IMPLIED>
    <!ELEMENT Reconocimientos (Reconocimiento+)>
    <!ELEMENT Reconocimiento (#PCDATA)>
    <!ATTLIST Reconocimiento
    nombre CDATA #REQUIRED
    institucion CDATA #REQUIRED
    a�o CDATA #REQUIRED>
    <!ELEMENT Articulos (Articulo+)>
    <!ELEMENT Articulo (#PCDATA)>
    <!ATTLIST Articulo
    nombre CDATA #REQUIRED
    revista CDATA #REQUIRED
    a�o CDATA #REQUIRED
    categoria (A1|A2|B|C) #REQUIRED>
    <!ELEMENT Asignaturas (Asignatura+)>
    <!ELEMENT Asignatura (#PCDATA)>
    <!ATTLIST Asignatura
    nombre CDATA #REQUIRED
    veces CDATA #REQUIRED>
    <!ELEMENT Experiencia (Institucion+)>
    <!ELEMENT Institucion (#PCDATA)>
    <!ATTLIST Institucion
    nombre CDATA #REQUIRED
    a�o_inicio CDATA #REQUIRED
    a�o_fin CDATA #IMPLIED
    cargo CDATA #REQUIRED>
]>
<hoja_de_vida >
    <Ultimo_grado> Doctorado </Ultimo_grado>
    <Areas>
        <Area materia="Matematica">
        </Area>
    </Areas>
	<Titulos>
		<Titulo  nombre="Matematico"
			 a�o = "1996"
			 grado="pregrado"> 
		</Titulo>

		<Titulo  nombre="Maestria en matematicas"
			 a�o = "2000"
			 grado="Maestria"> 
		</Titulo>	
	<Titulo  nombre="Doctorado en matematicas"
			 a�o = "2006"
			 grado="Doctorado"> 
		</Titulo>		
	</Titulos>
	<Reconocimientos>
		<Reconocimiento nombre="Medalla field"
				institucion="Harvard"
				a�o="2009">
		</Reconocimiento>

		<Reconocimiento nombre="mejor articulo de matematicas"
				institucion="Harvard"
				a�o="2010">
		</Reconocimiento>
		
		<Reconocimiento nombre="mejor profesor"
				institucion="Harvard"
				a�o="2008">
		</Reconocimiento>
		
		<Reconocimiento nombre="mejor semillero dirigido"
				institucion="Harvard"
				a�o="2009">
		</Reconocimiento>
		
		<Reconocimiento nombre="mejor Tesis dirigida "
				institucion="Harvard"
				a�o="2009">
		</Reconocimiento>
	</Reconocimientos>

	<Articulos>
		<Articulo nombre="Cluster analysis and mathematical programming"
		          revista="Mind"
		   	      a�o="2007"
			      categoria="A2">
		</Articulo>

		<Articulo nombre="Applied statistical decision theory"
		          revista="Technology and Culture "
		   	  a�o="2008"
			  categoria="C">
		</Articulo>
		
		<Articulo nombre="Complex analysis in locally convex spaces"
		          revista="American Economic Review"
		   	  a�o="2010"
			  categoria="B">
		</Articulo>
	</Articulos>
	<Asignaturas>
		<Asignatura nombre= "Introduccion al analisis complejo"
			    veces="33">
		</Asignatura>

		<Asignatura nombre= "Analisis complejo"
			    veces="18">
		</Asignatura>
	</Asignaturas>
	
	<Experiencia>
		<Institucion nombre="MIT"
			     a�o_inicio="1998"
			     a�o_fin="2004"
			     cargo="Profesor de catedra">
		</Institucion>

		<Institucion nombre="Harvard"
				 a�o_inicio="2006"
				 cargo="Decano">
		</Institucion>

	</Experiencia>

</hoja_de_vida>'));
end;

--modificar profesor
begin
PC_Profesor.MO_profesor('co.GA','Groat, Dr Anne',xmltype('<?xml version="1.0"?>
<!DOCTYPE hoja_de_vida [
    <!ELEMENT hoja_de_vida  (Ultimo_grado,Areas,Titulos,Reconocimientos,Articulos,Asignaturas,Experiencia)>
    <!ELEMENT Ultimo_grado  (#PCDATA)>
    <!ELEMENT Areas (Area+)>
    <!ELEMENT Area (#PCDATA)>
    <!ATTLIST Area materia CDATA #REQUIRED>  
    <!ELEMENT Titulos (Titulo+)>
    <!ELEMENT Titulo (#PCDATA)>
    <!ATTLIST Titulo
    nombre CDATA #REQUIRED
    a�o CDATA #REQUIRED
    grado CDATA #IMPLIED>
    <!ELEMENT Reconocimientos (Reconocimiento+)>
    <!ELEMENT Reconocimiento (#PCDATA)>
    <!ATTLIST Reconocimiento
    nombre CDATA #REQUIRED
    institucion CDATA #REQUIRED
    a�o CDATA #REQUIRED>
    <!ELEMENT Articulos (Articulo+)>
    <!ELEMENT Articulo (#PCDATA)>
    <!ATTLIST Articulo
    nombre CDATA #REQUIRED
    revista CDATA #REQUIRED
    a�o CDATA #REQUIRED
    categoria (A1|A2|B|C) #REQUIRED>
    <!ELEMENT Asignaturas (Asignatura+)>
    <!ELEMENT Asignatura (#PCDATA)>
    <!ATTLIST Asignatura
    nombre CDATA #REQUIRED
    veces CDATA #REQUIRED>
    <!ELEMENT Experiencia (Institucion+)>
    <!ELEMENT Institucion (#PCDATA)>
    <!ATTLIST Institucion
    nombre CDATA #REQUIRED
    a�o_inicio CDATA #REQUIRED
    a�o_fin CDATA #IMPLIED
    cargo CDATA #REQUIRED>
]>
<hoja_de_vida>
    <Ultimo_grado> Post-doctorado </Ultimo_grado>
    <Areas>
        <Area materia="Biologia">
        </Area>
    </Areas>
	<Titulos>
		<Titulo  nombre="Biologo"
			 a�o = "1998"
			 grado="pregrado"> 
		</Titulo>

		<Titulo  nombre="Maestria en Bilogia genetica"
			 a�o = "2005"
			 grado="Maestria"> 
		</Titulo>	
		<Titulo  nombre="Doctorado en Biologia Molecular"
			 a�o = "2010"
			 grado="Doctorado"> 
		</Titulo>
		<Titulo  nombre="Post-Doctorado en Biologia Molecular"
			 a�o = "2013"
			 grado="Post-doctorado"> 
		</Titulo>			
	</Titulos>
	<Reconocimientos>
		<Reconocimiento nombre="Mejor Tesis de ciencias naturales"
				institucion="Oxford university"
				a�o="2005">
		</Reconocimiento>
		<Reconocimiento nombre="Medalla Darwin"
				institucion="MIT"
				a�o="2015">
		</Reconocimiento>
        
        <Reconocimiento nombre="Medalla Darwin"
				institucion="MIT"
				a�o="2018">
		</Reconocimiento>
		
	</Reconocimientos>

	<Articulos>
		<Articulo nombre="Molecular biology of the gene"
		          revista="Cell Stem Cell"
		   	      a�o="2005"
			      categoria="B">
		</Articulo>

		<Articulo nombre="The molecular biology of memory storage: a dialogue between genes and synapses"
		          revista="science"
		   	  a�o="2009"
			  categoria="B">
		</Articulo>
		<Articulo nombre="Biochemical systems analysis. A study of function and design in molecular biology"
		          revista="Cell"
		   	  a�o="2009"
			  categoria="A1">
		</Articulo>
	</Articulos>

	<Asignaturas>
		<Asignatura nombre="Introduccion a la biologia molecular"
			    veces="17">
		</Asignatura>
   
		<Asignatura nombre="genetica"
			    veces="23">
		</Asignatura>
		<Asignatura nombre="Programacion biologica"
			    veces="25">
        </Asignatura>

    </Asignaturas>
	<Experiencia>
		<Institucion nombre="Stanford University"
			     a�o_inicio="2000"
			     a�o_fin="2004"
			     cargo="Profesor asistente">
		</Institucion>

		<Institucion nombre="Oxford university"
				 a�o_inicio="2005"
				 a�o_fin="2012"
				 cargo="Profesor de planta">
		</Institucion>
		<Institucion nombre="MIT"
				 a�o_inicio="2014"
				 cargo="Director de departamento">
		</Institucion>
	</Experiencia>
</hoja_de_vida>'));
end;

--eliminar profesor
begin
PC_Profesor.EL_profesor('co.RA');
end;

--consultas
select PC_Profesor.CO_Profesores_tiempo from dual;
select PC_Profesor.CO_Profesores from dual;
select PC_Profesor.CO_Reconocimientos from dual;
select PC_Profesor.CO_Cruces from dual;

--insertar evento
begin
PC_Taller.Ad_taller('coh8560097.T01','coh8560095','T','Thursday','11','2','cr.G6');
end;

--consulta
select PC_Taller.Co_horarios from dual;

