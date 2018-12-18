CREATE TABLE STAFF(
    id varchar2(20) not null,
    name varchar2(50) not null,
    hojas_de_vida xmltype not null
    );
    
Alter table STAFF add constraint PK_STAFF  
    primary key(id);

Insert into STAFF values('co.ACg','Cumming, Andrew',
'<?xml version="1.0"?>
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
    <Ultimo_grado> Maestria </Ultimo_grado>

    <Areas>
        <Area materia= "informatica" >
        </Area>
    </Areas>

	<Titulos>
		<Titulo  nombre="ingeniero de sistemas" a�o= "2000" grado="pregrado"> 
		</Titulo>

		<Titulo  nombre="Maestria en ciencias de datos" a�o = "2009 " grado="Maestria"> 
		</Titulo>		
	</Titulos>
	<Reconocimientos>
		<Reconocimiento nombre="premio turing" institucion="MIT" a�o="2012">
		</Reconocimiento>

		<Reconocimiento nombre="mejor articulo de informatica" institucion="MIT" a�o="2010">
		</Reconocimiento>
	</Reconocimientos>

	<Articulos>
		<Articulo nombre="Theoretical neuroscience: computational and mathematical modeling of neural systems" revista="Science" a�o="2005 " categoria="A1">
		</Articulo>

		<Articulo nombre="Multivalued logics: A uniform approach to reasoning in artificial intelligence" revista="Technology and Culture " a�o="2004" categoria="A1">
		</Articulo>
		
		<Articulo nombre="Critical questions for big data: Provocations for a cultural, technological, and scholarly phenomenon" revista="Social Networks" a�o="2011" categoria="B">
		</Articulo>

	</Articulos>
	<Asignaturas>
		<Asignatura nombre= "Fundamentos en inteligencia artificial" veces="26">
		</Asignatura>

		<Asignatura nombre= "Big data" veces="30">
		</Asignatura>
		
		<Asignatura nombre= "Introduccion a data science" veces="36">
		</Asignatura>
	</Asignaturas>
	<Experiencia>
		<Institucion nombre="Oxford university" a�o_inicio="2000" a�o_fin="2003" cargo="Profesor asistente">
		</Institucion>

		<Institucion nombre="Mit" a�o_inicio="2012" a�o_fin="2017" cargo="Profesor de planta">
		</Institucion>

	</Experiencia>
</hoja_de_vida>');


Insert into STAFF values('co.ACr','Crerar, Dr Alison','<?xml version="1.0"?>

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

</hoja_de_vida>');



Insert into STAFF values('cco.AFA','Armitage, Dr Alistair','<?xml version="1.0"?>

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
    <Ultimo_grado> Doctorado </Ultimo_grado>
    <Areas>
        <Area materia="Filosofia">
        </Area>
    </Areas>
	<Titulos>
		<Titulo  nombre="Licenciatura en Filosofia"
			 a�o = "2001"
			 grado="pregrado"> 
		</Titulo>

		<Titulo  nombre="Maestria en Filosofia"
			 a�o = "2008"
			 grado="Maestria"> 
		</Titulo>	
		<Titulo  nombre="Doctorado en Filosofia"
			 a�o = "2012"
			 grado="Doctorado"> 
		</Titulo>		
	</Titulos>
	<Reconocimientos>
		<Reconocimiento nombre="Mejor articulo filosofico"
				institucion="Harvard"
				a�o="2014">
		</Reconocimiento>
	</Reconocimientos>

	<Articulos>
		<Articulo nombre="Modern Moral Philosophy"
		          revista="Philosophical Magazine"
		   	      a�o="2007"
			      categoria="A1">
		</Articulo>

		<Articulo nombre="The question of African philosophy"
		          revista="American Anthropologist"
		   	  a�o="2000"
			  categoria="C">
		</Articulo>
	</Articulos>

	<Asignaturas>
		<Asignatura nombre= "Introduccion al empirismo"
			    veces="20">
		</Asignatura>

		<Asignatura nombre= "Filosofia politica"
			    veces="28">
		</Asignatura>
		<Asignatura nombre= "Analisis moral"
			    veces="22">
		</Asignatura>
	</Asignaturas>
	
	<Experiencia>
		<Institucion nombre="Stanford University"
			     a�o_inicio="2002"
			     a�o_fin="2004"
			     cargo="Investigador">
		</Institucion>

		<Institucion nombre="Harvard"
				 a�o_inicio="2013"
				 a�o_fin="2018"
				 cargo="Profesor de planta">
		</Institucion>
	</Experiencia>

</hoja_de_vida>');	

Insert into STAFF values('co.AG	','Groat, Anne','<?xml version="1.0"?>
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
</hoja_de_vida>');


Insert into STAFF values('co.AL','Lawson, Alistair','<?xml version="1.0"?>
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
    <Ultimo_grado> Maestria </Ultimo_grado>
    <Areas>
        <Area materia="Economia">
        </Area>
    </Areas>
	<Titulos>
		<Titulo  nombre="Economista"
			 a�o = "2005"
			 grado="pregrado"> 
		</Titulo>

		<Titulo  nombre="Maestria en economia"
			 a�o = "2008"
			 grado="Maestria"> 
		</Titulo>			
	</Titulos>
	<Reconocimientos>
		<Reconocimiento nombre="Mejor profesor de economia"
				institucion="Stanford"
				a�o="2009">
		</Reconocimiento>
		<Reconocimiento nombre="Mejor director de trabajo de grado"
				institucion="Harvard"
				a�o="2015">
		</Reconocimiento>
		
	</Reconocimientos>

	<Articulos>
		<Articulo nombre="an international economy"
		          revista="Econometrica"
		   	      a�o="2006"
			      categoria="A1">
		</Articulo>

		<Articulo nombre="the rise of the network society"
		          revista="Comparative Studies in Society and History"
		   	  a�o="2009"
			  categoria="B">
		</Articulo>
		<Articulo nombre="location and space-economy"
		          revista="Econ�micas CUC"
		   	  a�o="2012"
			  categoria="C">
		</Articulo>
	</Articulos>
	
	<Asignaturas>
		<Asignatura nombre= "economia moderna"
			    veces="21">
		</Asignatura>

		<Asignatura nombre= "Macro-economia"
			    veces="23">
		</Asignatura>
	</Asignaturas>
	
	<Experiencia>
		<Institucion nombre="Stanford University"
			     a�o_inicio="2009"
			     a�o_fin="2014"
			     cargo="Profesor asistente">
		</Institucion>

		<Institucion nombre="Harvard"
				 a�o_inicio="2015"
				 a�o_fin="2017"
				 cargo="Investigador">
		</Institucion>
		
	</Experiencia>
</hoja_de_vida>');



Insert into STAFF values('co.AMn','Maclean, Aileen','<?xml version="1.0"?>
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
    <Ultimo_grado> Maestria </Ultimo_grado>
    <Areas>
        <Area materia="Historia">
        </Area>
    </Areas>
	<Titulos>
		<Titulo  nombre="Historiador"
			 a�o = "1999"
			 grado="pregrado"> 
		</Titulo>

		<Titulo  nombre="Maestria en historia latinoamericana"
			 a�o = "2008"
			 grado="Maestria"> 
		</Titulo>			
	</Titulos>
	<Reconocimientos>
		<Reconocimiento nombre="Premio Wolfson"
				institucion="Oxford university"
				a�o="2009">
		</Reconocimiento>
	</Reconocimientos>

	<Articulos>
		<Articulo nombre="A history of American archaeology"
		          revista="ELH"
		   	      a�o="2008"
			      categoria="A2">
		</Articulo>

		<Articulo nombre="Generations: The history of Americas future, 1584 to 2069"
		          revista="Cactaceae Consensus Initiatives"
		   	  a�o="2007"
			  categoria="C">
		</Articulo>
	</Articulos>
	
	<Asignaturas>
		<Asignatura nombre= "historia americana"
			    veces="11">
		</Asignatura>

		<Asignatura nombre= "historia oriental"
			    veces="18">
		</Asignatura>
	</Asignaturas>
	
	<Experiencia>
		<Institucion nombre="Stanford University"
			     a�o_inicio="2005"
			     a�o_fin="2009"
			     cargo="Profesor asistente">
		</Institucion>

		<Institucion nombre="Oxford university"
				 a�o_inicio="2009"
				 cargo="Profesor de planta">
		</Institucion>
		
	</Experiencia>
</hoja_de_vida>');


Insert into STAFF values('co.ASc','Scott, Andrea','<?xml version="1.0"?>

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
        <Area materia="informatica">
        </Area>
    </Areas>
	<Titulos>
		<Titulo  nombre="ingeniero de sistemas"
			 a�o = "1994"
			 grado="pregrado"> 
		</Titulo>

		<Titulo  nombre="Maestria en informatica"
			 a�o = "2000"
			 grado="Maestria"> 
		</Titulo>

		<Titulo  nombre="doctorado en ciencias de la computacion"
			 a�o = "2006"
			 grado="Doctorado"> 
		</Titulo>

		<Titulo  nombre="Post-doctorado en ciencias de la computacion"
			 a�o = "2010"
			 grado="Post-doctorado"> 
		</Titulo>			
	</Titulos>
	<Reconocimientos>
		<Reconocimiento nombre="Premio Turing"
				institucion="Stanford university"
				a�o="2000">
		</Reconocimiento>
		
		<Reconocimiento nombre="Mejor articulo en informatica"
				institucion="Stanford university"
				a�o="2000">
		</Reconocimiento>
		
		<Reconocimiento nombre="Mejor articulo en informatica"
				institucion="MIT"
				a�o="2004">
		</Reconocimiento>
		
		<Reconocimiento nombre="Mejor profesor"
				institucion="MIT"
				a�o="2005">
		</Reconocimiento>
		
		<Reconocimiento nombre="Mejor Tesis doctoral"
				institucion="MIT"
				a�o="2006">
		</Reconocimiento>
	</Reconocimientos>
	
	<Articulos>
		<Articulo nombre="Spectral sparsification of graphs: theory and algorithms"
		          revista="Science"
		   	      a�o="2002"
			      categoria="B">
		</Articulo>

		<Articulo nombre="Distance in Molecular Graphs Theory"
		          revista="American Journal of Mathematics"
		   	  a�o="2004"
			  categoria="A1">
		</Articulo>
		
		<Articulo nombre=" Field Theory, the Renormalization Group, and Critical Phenomena: Graphs to Computers"
		          revista="American Journal of Mathematics"
		   	  a�o="2008"
			  categoria="C">
		</Articulo>
	</Articulos>
	
	<Asignaturas>
		<Asignatura nombre= "Teoria de grafos"
			    veces="21">
		</Asignatura>

		<Asignatura nombre= "Algoritmos"
			    veces="18">
		</Asignatura>
	</Asignaturas>
	
	<Experiencia>
		<Institucion nombre="Stanford University"
			     a�o_inicio="2000"
			     a�o_fin="2003"
			     cargo="Investigador">
		</Institucion>

		<Institucion nombre="MIT"
				 a�o_inicio="2004"
				 a�o_fin="2017"
				 cargo="decano">
		</Institucion>
		
	</Experiencia>
</hoja_de_vida>');


Insert into STAFF values('co.ASr','Soutar, Alastair','<?xml version="1.0"?>

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
    <Ultimo_grado> Pregrado </Ultimo_grado>
    
    <Areas>
        <Area materia="Psicologia">
        </Area>
    </Areas>
	<Titulos>
		<Titulo  nombre="Psicologo"
			 a�o = "2008"
			 grado="pregrado"> 
		</Titulo>			
	</Titulos>
	<Reconocimientos>
		<Reconocimiento nombre="Mejor articulo de psicologia"
				institucion="Harvard"
				a�o="2009">
		</Reconocimiento>
	</Reconocimientos>

	<Articulos>
		<Articulo nombre="Theories of social psychology"
		          revista="American Journal of Sociology"
		   	      a�o="2009"
			      categoria="A1">
		</Articulo>

	</Articulos>
	
	<Asignaturas>
		<Asignatura nombre= "psicologia social"
			    veces="4">
		</Asignatura>

	</Asignaturas>
	
	<Experiencia>
		<Institucion nombre="Harvard"
			     a�o_inicio="2009"
			     cargo="Profesor de planta">
		</Institucion>

		
	</Experiencia>
</hoja_de_vida>');

Insert into STAFF values('co.AV','Varey, Alison','<?xml version="1.0"?>

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
    <Ultimo_grado> Maestria </Ultimo_grado>
    <Areas>
        <Area materia="Arquitectura">
        </Area>
    </Areas>
	<Titulos>
		<Titulo  nombre="Arquitecto"
			 a�o = "2003"
			 grado="pregrado"> 
		</Titulo>	
		
		<Titulo  nombre="Maestria en Arquitectura"
			 a�o = "2006"
			 grado="Maestria"> 
		</Titulo>
	</Titulos>
	<Reconocimientos>
		<Reconocimiento nombre="Mejor director de semillero"
				institucion="Stanford university"
				a�o="2007">
		</Reconocimiento>
		
		<Reconocimiento nombre="Premio Pritzker"
				institucion="Stanford university"
				a�o="2009">
		</Reconocimiento>
	</Reconocimientos>

	<Articulos>
		<Articulo nombre="Modern architecture since 1900"
		          revista="The Nautilus"
		   	      a�o="2007"
			      categoria="A2">
		</Articulo>
		
		<Articulo nombre="TFractal geometry in architecture and design"
		          revista="The Sackbut"
		   	      a�o="2008"
			      categoria="C">
		</Articulo>
        <Articulo nombre="Modern architecture since 1900"
		          revista="The Nautilus"
		   	      a�o="2007"
			      categoria="A2">
		</Articulo>
		

	</Articulos>
	
	<Asignaturas>
		<Asignatura nombre= "arquitectura contemporanea"
			    veces="10">
		</Asignatura>
		
		<Asignatura nombre= "urbanismo"
			    veces="25">
		</Asignatura>

	</Asignaturas>
	
	<Experiencia>
		<Institucion nombre="Stanford university"
			     a�o_inicio="2009"
			     cargo="Profesor de planta">
		</Institucion>
		
		<Institucion nombre="Harvard"
			     a�o_inicio="2015"
				 a�o_fin="2017"
			     cargo="Director de departamento">
		</Institucion>
	</Experiencia>
</hoja_de_vida>');

Insert into STAFF values('co.BB','Buchanan, Dr Wm','<?xml version="1.0"?>

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
    <Ultimo_grado> Pregrado </Ultimo_grado>
    <Areas>
        <Area materia="Bellas artes">
        </Area>
    </Areas>
	<Titulos>
		<Titulo  nombre="Licenciatura en bellas artes"
			 a�o = "2012"
			 grado="pregrado"> 
		</Titulo>	
	</Titulos>
	
	<Reconocimientos>
		<Reconocimiento nombre="Mejor articulo de arte moderno"
				institucion="Oxford university"
				a�o="2013">
		</Reconocimiento>
		
		<Reconocimiento nombre="Premio Kioto"
				institucion="Oxford university"
				a�o="2017">
		</Reconocimiento>
	</Reconocimientos>

	<Articulos>
		<Articulo nombre="New media in late 20 th-century art"
		          revista="The Veliger"
		   	      a�o="2014"
			      categoria="B">
		</Articulo>
	</Articulos>
	
	<Asignaturas>
		<Asignatura nombre= "arte contemporaneo"
			    veces="21">
		</Asignatura>
		
		<Asignatura nombre= "Historia del arte"
			    veces="15">
		</Asignatura>

	</Asignaturas>
	
	<Experiencia>
		<Institucion nombre="Oxford university"
			     a�o_inicio="2013"
			     cargo="Profesor de planta">
		</Institucion>
	</Experiencia>
</hoja_de_vida>');

--drop table staff

--El nombre de los que tienen pos-doctorado en el �rea de inform�tica
Select name from staff where extractvalue(hojas_de_vida,'/hoja_de_vida/Titulos/Titulo[@grado="Post-doctorado"]/@nombre') is not null and extractvalue(hojas_de_vida,'/hoja_de_vida/Areas/Area[@materia="informatica"]/@materia')is not null;
--Los profesores que han recibido m�s reconocimientos que el promedio (nombre y n�mero de reconocimientos)

SELECT name,count(nombre)
	FROM  Staff S, XMLTABLE('/hoja_de_vida/Reconocimientos/Reconocimiento'
						passing S.hojas_de_vida
						columns nombre  PATH  '@nombre'
                            ) T group by name having count(nombre)> (SELECT count(nombre)
                                                                    FROM  Staff S, XMLTABLE('/hoja_de_vida/Reconocimientos/Reconocimiento'
                                                                    passing S.hojas_de_vida
                                                                    columns nombre  PATH  '@nombre'
                                                                    ) T)/(select count(id)from staff);



--Los art�culos escritos por m�s de un profesor((nombre art�culo, n�mero de profesores)
SELECT nombre,count(name)
	FROM  Staff S, XMLTABLE('/hoja_de_vida/Articulos/Articulo'
						passing S.hojas_de_vida
						columns nombre  PATH  '@nombre', categoria path '@categoria'
                            ) T group by nombre having count(name)>1 ;

--Los art�culos de los que no se conoce su categor�a Colciencias.
SELECT nombre
	FROM  Staff S, XMLTABLE('/hoja_de_vida/Articulos/Articulo'
						passing S.hojas_de_vida
						columns nombre  PATH  '@nombre', categoria path '@categoria'
                            ) T where categoria is null;
--Los profesores que est� trabajando actualmente. (nombre, instituci�n, fecha inicio)
SELECT name,nombre,fechaini
	FROM  Staff S, XMLTABLE('/hoja_de_vida/Experiencia/Institucion'
						passing S.hojas_de_vida
						columns  fechafin PATH  '@a�o_fin',fechaini path '@a�o_inicio',nombre path'@nombre'
                            ) T where fechafin is null ;



--Propuestas
-- 1 los nombres de profesores  que han dictado una materia mas de 5 veces(nombre del profesor ,la materia y las veces que la ha dictado)
SELECT name,nombre,veces
	FROM  Staff S, XMLTABLE('/hoja_de_vida/Asignaturas/Asignatura'
						passing S.hojas_de_vida
						columns  nombre PATH  '@nombre',veces number path '@veces'
                            ) T   where veces >5;
--2 los articulos publicados despues de 2010
SELECT nombre,a�o
	FROM  Staff S, XMLTABLE('/hoja_de_vida/Articulos/Articulo'
						passing S.hojas_de_vida
						columns nombre  PATH  '@nombre', a�o number path '@a�o'
                            ) T where a�o >2010;
                            
--3 los profesores que han trabajado en el Mit
Select name from staff where extractvalue(hojas_de_vida,'/hoja_de_vida/Experiencia/Institucion[@nombre="MIT"]/@nombre') is not null ;
--4 la cantidad de profesores que dicta cada materia
SELECT nombre,count (name)
	FROM  Staff S, XMLTABLE('/hoja_de_vida/Asignaturas/Asignatura'
						passing S.hojas_de_vida
						columns  nombre PATH  '@nombre'
                            ) T group by nombre    ;
                            
--5 las revistas y la cantidad de publicaciones que tiene cada una 
SELECT revista,count(id)
	FROM  Staff S, XMLTABLE('/hoja_de_vida/Articulos/Articulo'
						passing S.hojas_de_vida
						columns revista  PATH  '@revista'
                            ) T group by revista;