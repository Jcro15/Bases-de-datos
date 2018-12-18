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
    año CDATA #REQUIRED
    grado CDATA #IMPLIED>
    <!ELEMENT Reconocimientos (Reconocimiento+)>
    <!ELEMENT Reconocimiento (#PCDATA)>
    <!ATTLIST Reconocimiento
    nombre CDATA #REQUIRED
    institucion CDATA #REQUIRED
    año CDATA #REQUIRED>
    <!ELEMENT Articulos (Articulo+)>
    <!ELEMENT Articulo (#PCDATA)>
    <!ATTLIST Articulo
    nombre CDATA #REQUIRED
    revista CDATA #REQUIRED
    año CDATA #REQUIRED
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
    año_inicio CDATA #REQUIRED
    año_fin CDATA #IMPLIED
    cargo CDATA #REQUIRED>
]>

<hoja_de_vida>
    <Ultimo_grado> Maestria </Ultimo_grado>

    <Areas>
        <Area materia= "informatica" >
        </Area>
    </Areas>

	<Titulos>
		<Titulo  nombre="ingeniero de sistemas" año= "2000" grado="pregrado"> 
		</Titulo>

		<Titulo  nombre="Maestria en ciencias de datos" año = "2009 " grado="Maestria"> 
		</Titulo>		
	</Titulos>
	<Reconocimientos>
		<Reconocimiento nombre="premio turing" institucion="MIT" año="2012">
		</Reconocimiento>

		<Reconocimiento nombre="mejor articulo de informatica" institucion="MIT" año="2010">
		</Reconocimiento>
	</Reconocimientos>

	<Articulos>
		<Articulo nombre="Theoretical neuroscience: computational and mathematical modeling of neural systems" revista="Science" año="2005 " categoria="A1">
		</Articulo>

		<Articulo nombre="Multivalued logics: A uniform approach to reasoning in artificial intelligence" revista="Technology and Culture " año="2004" categoria="A1">
		</Articulo>
		
		<Articulo nombre="Critical questions for big data: Provocations for a cultural, technological, and scholarly phenomenon" revista="Social Networks" año="2011" categoria="B">
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
		<Institucion nombre="Oxford university" año_inicio="2000" año_fin="2003" cargo="Profesor asistente">
		</Institucion>

		<Institucion nombre="Mit" año_inicio="2012" año_fin="2017" cargo="Profesor de planta">
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
    año CDATA #REQUIRED
    grado CDATA #IMPLIED>
    <!ELEMENT Reconocimientos (Reconocimiento+)>
    <!ELEMENT Reconocimiento (#PCDATA)>
    <!ATTLIST Reconocimiento
    nombre CDATA #REQUIRED
    institucion CDATA #REQUIRED
    año CDATA #REQUIRED>
    <!ELEMENT Articulos (Articulo+)>
    <!ELEMENT Articulo (#PCDATA)>
    <!ATTLIST Articulo
    nombre CDATA #REQUIRED
    revista CDATA #REQUIRED
    año CDATA #REQUIRED
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
    año_inicio CDATA #REQUIRED
    año_fin CDATA #IMPLIED
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
			 año = "1996"
			 grado="pregrado"> 
		</Titulo>

		<Titulo  nombre="Maestria en matematicas"
			 año = "2000"
			 grado="Maestria"> 
		</Titulo>	
	<Titulo  nombre="Doctorado en matematicas"
			 año = "2006"
			 grado="Doctorado"> 
		</Titulo>		
	</Titulos>
	<Reconocimientos>
		<Reconocimiento nombre="Medalla field"
				institucion="Harvard"
				año="2009">
		</Reconocimiento>

		<Reconocimiento nombre="mejor articulo de matematicas"
				institucion="Harvard"
				año="2010">
		</Reconocimiento>
		
		<Reconocimiento nombre="mejor profesor"
				institucion="Harvard"
				año="2008">
		</Reconocimiento>
		
		<Reconocimiento nombre="mejor semillero dirigido"
				institucion="Harvard"
				año="2009">
		</Reconocimiento>
		
		<Reconocimiento nombre="mejor Tesis dirigida "
				institucion="Harvard"
				año="2009">
		</Reconocimiento>
	</Reconocimientos>

	<Articulos>
		<Articulo nombre="Cluster analysis and mathematical programming"
		          revista="Mind"
		   	      año="2007"
			      categoria="A2">
		</Articulo>

		<Articulo nombre="Applied statistical decision theory"
		          revista="Technology and Culture "
		   	  año="2008"
			  categoria="C">
		</Articulo>
		
		<Articulo nombre="Complex analysis in locally convex spaces"
		          revista="American Economic Review"
		   	  año="2010"
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
			     año_inicio="1998"
			     año_fin="2004"
			     cargo="Profesor de catedra">
		</Institucion>

		<Institucion nombre="Harvard"
				 año_inicio="2006"
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
    año CDATA #REQUIRED
    grado CDATA #IMPLIED>
    <!ELEMENT Reconocimientos (Reconocimiento+)>
    <!ELEMENT Reconocimiento (#PCDATA)>
    <!ATTLIST Reconocimiento
    nombre CDATA #REQUIRED
    institucion CDATA #REQUIRED
    año CDATA #REQUIRED>
    <!ELEMENT Articulos (Articulo+)>
    <!ELEMENT Articulo (#PCDATA)>
    <!ATTLIST Articulo
    nombre CDATA #REQUIRED
    revista CDATA #REQUIRED
    año CDATA #REQUIRED
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
    año_inicio CDATA #REQUIRED
    año_fin CDATA #IMPLIED
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
			 año = "2001"
			 grado="pregrado"> 
		</Titulo>

		<Titulo  nombre="Maestria en Filosofia"
			 año = "2008"
			 grado="Maestria"> 
		</Titulo>	
		<Titulo  nombre="Doctorado en Filosofia"
			 año = "2012"
			 grado="Doctorado"> 
		</Titulo>		
	</Titulos>
	<Reconocimientos>
		<Reconocimiento nombre="Mejor articulo filosofico"
				institucion="Harvard"
				año="2014">
		</Reconocimiento>
	</Reconocimientos>

	<Articulos>
		<Articulo nombre="Modern Moral Philosophy"
		          revista="Philosophical Magazine"
		   	      año="2007"
			      categoria="A1">
		</Articulo>

		<Articulo nombre="The question of African philosophy"
		          revista="American Anthropologist"
		   	  año="2000"
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
			     año_inicio="2002"
			     año_fin="2004"
			     cargo="Investigador">
		</Institucion>

		<Institucion nombre="Harvard"
				 año_inicio="2013"
				 año_fin="2018"
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
    año CDATA #REQUIRED
    grado CDATA #IMPLIED>
    <!ELEMENT Reconocimientos (Reconocimiento+)>
    <!ELEMENT Reconocimiento (#PCDATA)>
    <!ATTLIST Reconocimiento
    nombre CDATA #REQUIRED
    institucion CDATA #REQUIRED
    año CDATA #REQUIRED>
    <!ELEMENT Articulos (Articulo+)>
    <!ELEMENT Articulo (#PCDATA)>
    <!ATTLIST Articulo
    nombre CDATA #REQUIRED
    revista CDATA #REQUIRED
    año CDATA #REQUIRED
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
    año_inicio CDATA #REQUIRED
    año_fin CDATA #IMPLIED
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
			 año = "1998"
			 grado="pregrado"> 
		</Titulo>

		<Titulo  nombre="Maestria en Bilogia genetica"
			 año = "2005"
			 grado="Maestria"> 
		</Titulo>	
		<Titulo  nombre="Doctorado en Biologia Molecular"
			 año = "2010"
			 grado="Doctorado"> 
		</Titulo>
		<Titulo  nombre="Post-Doctorado en Biologia Molecular"
			 año = "2013"
			 grado="Post-doctorado"> 
		</Titulo>			
	</Titulos>
	<Reconocimientos>
		<Reconocimiento nombre="Mejor Tesis de ciencias naturales"
				institucion="Oxford university"
				año="2005">
		</Reconocimiento>
		<Reconocimiento nombre="Medalla Darwin"
				institucion="MIT"
				año="2015">
		</Reconocimiento>
		
	</Reconocimientos>

	<Articulos>
		<Articulo nombre="Molecular biology of the gene"
		          revista="Cell Stem Cell"
		   	      año="2005"
			      categoria="B">
		</Articulo>

		<Articulo nombre="The molecular biology of memory storage: a dialogue between genes and synapses"
		          revista="science"
		   	  año="2009"
			  categoria="B">
		</Articulo>
		<Articulo nombre="Biochemical systems analysis. A study of function and design in molecular biology"
		          revista="Cell"
		   	  año="2009"
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
			     año_inicio="2000"
			     año_fin="2004"
			     cargo="Profesor asistente">
		</Institucion>

		<Institucion nombre="Oxford university"
				 año_inicio="2005"
				 año_fin="2012"
				 cargo="Profesor de planta">
		</Institucion>
		<Institucion nombre="MIT"
				 año_inicio="2014"
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
    año CDATA #REQUIRED
    grado CDATA #IMPLIED>
    <!ELEMENT Reconocimientos (Reconocimiento+)>
    <!ELEMENT Reconocimiento (#PCDATA)>
    <!ATTLIST Reconocimiento
    nombre CDATA #REQUIRED
    institucion CDATA #REQUIRED
    año CDATA #REQUIRED>
    <!ELEMENT Articulos (Articulo+)>
    <!ELEMENT Articulo (#PCDATA)>
    <!ATTLIST Articulo
    nombre CDATA #REQUIRED
    revista CDATA #REQUIRED
    año CDATA #REQUIRED
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
    año_inicio CDATA #REQUIRED
    año_fin CDATA #IMPLIED
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
			 año = "2005"
			 grado="pregrado"> 
		</Titulo>

		<Titulo  nombre="Maestria en economia"
			 año = "2008"
			 grado="Maestria"> 
		</Titulo>			
	</Titulos>
	<Reconocimientos>
		<Reconocimiento nombre="Mejor profesor de economia"
				institucion="Stanford"
				año="2009">
		</Reconocimiento>
		<Reconocimiento nombre="Mejor director de trabajo de grado"
				institucion="Harvard"
				año="2015">
		</Reconocimiento>
		
	</Reconocimientos>

	<Articulos>
		<Articulo nombre="an international economy"
		          revista="Econometrica"
		   	      año="2006"
			      categoria="A1">
		</Articulo>

		<Articulo nombre="the rise of the network society"
		          revista="Comparative Studies in Society and History"
		   	  año="2009"
			  categoria="B">
		</Articulo>
		<Articulo nombre="location and space-economy"
		          revista="Económicas CUC"
		   	  año="2012"
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
			     año_inicio="2009"
			     año_fin="2014"
			     cargo="Profesor asistente">
		</Institucion>

		<Institucion nombre="Harvard"
				 año_inicio="2015"
				 año_fin="2017"
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
    año CDATA #REQUIRED
    grado CDATA #IMPLIED>
    <!ELEMENT Reconocimientos (Reconocimiento+)>
    <!ELEMENT Reconocimiento (#PCDATA)>
    <!ATTLIST Reconocimiento
    nombre CDATA #REQUIRED
    institucion CDATA #REQUIRED
    año CDATA #REQUIRED>
    <!ELEMENT Articulos (Articulo+)>
    <!ELEMENT Articulo (#PCDATA)>
    <!ATTLIST Articulo
    nombre CDATA #REQUIRED
    revista CDATA #REQUIRED
    año CDATA #REQUIRED
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
    año_inicio CDATA #REQUIRED
    año_fin CDATA #IMPLIED
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
			 año = "1999"
			 grado="pregrado"> 
		</Titulo>

		<Titulo  nombre="Maestria en historia latinoamericana"
			 año = "2008"
			 grado="Maestria"> 
		</Titulo>			
	</Titulos>
	<Reconocimientos>
		<Reconocimiento nombre="Premio Wolfson"
				institucion="Oxford university"
				año="2009">
		</Reconocimiento>
	</Reconocimientos>

	<Articulos>
		<Articulo nombre="A history of American archaeology"
		          revista="ELH"
		   	      año="2008"
			      categoria="A2">
		</Articulo>

		<Articulo nombre="Generations: The history of Americas future, 1584 to 2069"
		          revista="Cactaceae Consensus Initiatives"
		   	  año="2007"
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
			     año_inicio="2005"
			     año_fin="2009"
			     cargo="Profesor asistente">
		</Institucion>

		<Institucion nombre="Oxford university"
				 año_inicio="2009"
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
    año CDATA #REQUIRED
    grado CDATA #IMPLIED>
    <!ELEMENT Reconocimientos (Reconocimiento+)>
    <!ELEMENT Reconocimiento (#PCDATA)>
    <!ATTLIST Reconocimiento
    nombre CDATA #REQUIRED
    institucion CDATA #REQUIRED
    año CDATA #REQUIRED>
    <!ELEMENT Articulos (Articulo+)>
    <!ELEMENT Articulo (#PCDATA)>
    <!ATTLIST Articulo
    nombre CDATA #REQUIRED
    revista CDATA #REQUIRED
    año CDATA #REQUIRED
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
    año_inicio CDATA #REQUIRED
    año_fin CDATA #IMPLIED
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
			 año = "1994"
			 grado="pregrado"> 
		</Titulo>

		<Titulo  nombre="Maestria en informatica"
			 año = "2000"
			 grado="Maestria"> 
		</Titulo>

		<Titulo  nombre="doctorado en ciencias de la computacion"
			 año = "2006"
			 grado="Doctorado"> 
		</Titulo>

		<Titulo  nombre="Post-doctorado en ciencias de la computacion"
			 año = "2010"
			 grado="Post-doctorado"> 
		</Titulo>			
	</Titulos>
	<Reconocimientos>
		<Reconocimiento nombre="Premio Turing"
				institucion="Stanford university"
				año="2000">
		</Reconocimiento>
		
		<Reconocimiento nombre="Mejor articulo en informatica"
				institucion="Stanford university"
				año="2000">
		</Reconocimiento>
		
		<Reconocimiento nombre="Mejor articulo en informatica"
				institucion="MIT"
				año="2004">
		</Reconocimiento>
		
		<Reconocimiento nombre="Mejor profesor"
				institucion="MIT"
				año="2005">
		</Reconocimiento>
		
		<Reconocimiento nombre="Mejor Tesis doctoral"
				institucion="MIT"
				año="2006">
		</Reconocimiento>
	</Reconocimientos>
	
	<Articulos>
		<Articulo nombre="Spectral sparsification of graphs: theory and algorithms"
		          revista="Science"
		   	      año="2002"
			      categoria="B">
		</Articulo>

		<Articulo nombre="Distance in Molecular Graphs Theory"
		          revista="American Journal of Mathematics"
		   	  año="2004"
			  categoria="A1">
		</Articulo>
		
		<Articulo nombre=" Field Theory, the Renormalization Group, and Critical Phenomena: Graphs to Computers"
		          revista="American Journal of Mathematics"
		   	  año="2008"
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
			     año_inicio="2000"
			     año_fin="2003"
			     cargo="Investigador">
		</Institucion>

		<Institucion nombre="MIT"
				 año_inicio="2004"
				 año_fin="2017"
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
    año CDATA #REQUIRED
    grado CDATA #IMPLIED>
    <!ELEMENT Reconocimientos (Reconocimiento+)>
    <!ELEMENT Reconocimiento (#PCDATA)>
    <!ATTLIST Reconocimiento
    nombre CDATA #REQUIRED
    institucion CDATA #REQUIRED
    año CDATA #REQUIRED>
    <!ELEMENT Articulos (Articulo+)>
    <!ELEMENT Articulo (#PCDATA)>
    <!ATTLIST Articulo
    nombre CDATA #REQUIRED
    revista CDATA #REQUIRED
    año CDATA #REQUIRED
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
    año_inicio CDATA #REQUIRED
    año_fin CDATA #IMPLIED
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
			 año = "2008"
			 grado="pregrado"> 
		</Titulo>			
	</Titulos>
	<Reconocimientos>
		<Reconocimiento nombre="Mejor articulo de psicologia"
				institucion="Harvard"
				año="2009">
		</Reconocimiento>
	</Reconocimientos>

	<Articulos>
		<Articulo nombre="Theories of social psychology"
		          revista="American Journal of Sociology"
		   	      año="2009"
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
			     año_inicio="2009"
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
    año CDATA #REQUIRED
    grado CDATA #IMPLIED>
    <!ELEMENT Reconocimientos (Reconocimiento+)>
    <!ELEMENT Reconocimiento (#PCDATA)>
    <!ATTLIST Reconocimiento
    nombre CDATA #REQUIRED
    institucion CDATA #REQUIRED
    año CDATA #REQUIRED>
    <!ELEMENT Articulos (Articulo+)>
    <!ELEMENT Articulo (#PCDATA)>
    <!ATTLIST Articulo
    nombre CDATA #REQUIRED
    revista CDATA #REQUIRED
    año CDATA #REQUIRED
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
    año_inicio CDATA #REQUIRED
    año_fin CDATA #IMPLIED
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
			 año = "2003"
			 grado="pregrado"> 
		</Titulo>	
		
		<Titulo  nombre="Maestria en Arquitectura"
			 año = "2006"
			 grado="Maestria"> 
		</Titulo>
	</Titulos>
	<Reconocimientos>
		<Reconocimiento nombre="Mejor director de semillero"
				institucion="Stanford university"
				año="2007">
		</Reconocimiento>
		
		<Reconocimiento nombre="Premio Pritzker"
				institucion="Stanford university"
				año="2009">
		</Reconocimiento>
	</Reconocimientos>

	<Articulos>
		<Articulo nombre="Modern architecture since 1900"
		          revista="The Nautilus"
		   	      año="2007"
			      categoria="A2">
		</Articulo>
		
		<Articulo nombre="TFractal geometry in architecture and design"
		          revista="The Sackbut"
		   	      año="2008"
			      categoria="C">
		</Articulo>
        <Articulo nombre="Modern architecture since 1900"
		          revista="The Nautilus"
		   	      año="2007"
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
			     año_inicio="2009"
			     cargo="Profesor de planta">
		</Institucion>
		
		<Institucion nombre="Harvard"
			     año_inicio="2015"
				 año_fin="2017"
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
    año CDATA #REQUIRED
    grado CDATA #IMPLIED>
    <!ELEMENT Reconocimientos (Reconocimiento+)>
    <!ELEMENT Reconocimiento (#PCDATA)>
    <!ATTLIST Reconocimiento
    nombre CDATA #REQUIRED
    institucion CDATA #REQUIRED
    año CDATA #REQUIRED>
    <!ELEMENT Articulos (Articulo+)>
    <!ELEMENT Articulo (#PCDATA)>
    <!ATTLIST Articulo
    nombre CDATA #REQUIRED
    revista CDATA #REQUIRED
    año CDATA #REQUIRED
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
    año_inicio CDATA #REQUIRED
    año_fin CDATA #IMPLIED
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
			 año = "2012"
			 grado="pregrado"> 
		</Titulo>	
	</Titulos>
	
	<Reconocimientos>
		<Reconocimiento nombre="Mejor articulo de arte moderno"
				institucion="Oxford university"
				año="2013">
		</Reconocimiento>
		
		<Reconocimiento nombre="Premio Kioto"
				institucion="Oxford university"
				año="2017">
		</Reconocimiento>
	</Reconocimientos>

	<Articulos>
		<Articulo nombre="New media in late 20 th-century art"
		          revista="The Veliger"
		   	      año="2014"
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
			     año_inicio="2013"
			     cargo="Profesor de planta">
		</Institucion>
	</Experiencia>
</hoja_de_vida>');

--drop table staff

--El nombre de los que tienen pos-doctorado en el área de informática
Select name from staff where extractvalue(hojas_de_vida,'/hoja_de_vida/Titulos/Titulo[@grado="Post-doctorado"]/@nombre') is not null and extractvalue(hojas_de_vida,'/hoja_de_vida/Areas/Area[@materia="informatica"]/@materia')is not null;
--Los profesores que han recibido más reconocimientos que el promedio (nombre y número de reconocimientos)

SELECT name,count(nombre)
	FROM  Staff S, XMLTABLE('/hoja_de_vida/Reconocimientos/Reconocimiento'
						passing S.hojas_de_vida
						columns nombre  PATH  '@nombre'
                            ) T group by name having count(nombre)> (SELECT count(nombre)
                                                                    FROM  Staff S, XMLTABLE('/hoja_de_vida/Reconocimientos/Reconocimiento'
                                                                    passing S.hojas_de_vida
                                                                    columns nombre  PATH  '@nombre'
                                                                    ) T)/(select count(id)from staff);



--Los artículos escritos por más de un profesor((nombre artículo, número de profesores)
SELECT nombre,count(name)
	FROM  Staff S, XMLTABLE('/hoja_de_vida/Articulos/Articulo'
						passing S.hojas_de_vida
						columns nombre  PATH  '@nombre', categoria path '@categoria'
                            ) T group by nombre having count(name)>1 ;

--Los artículos de los que no se conoce su categoría Colciencias.
SELECT nombre
	FROM  Staff S, XMLTABLE('/hoja_de_vida/Articulos/Articulo'
						passing S.hojas_de_vida
						columns nombre  PATH  '@nombre', categoria path '@categoria'
                            ) T where categoria is null;
--Los profesores que está trabajando actualmente. (nombre, institución, fecha inicio)
SELECT name,nombre,fechaini
	FROM  Staff S, XMLTABLE('/hoja_de_vida/Experiencia/Institucion'
						passing S.hojas_de_vida
						columns  fechafin PATH  '@año_fin',fechaini path '@año_inicio',nombre path'@nombre'
                            ) T where fechafin is null ;



--Propuestas
-- 1 los nombres de profesores  que han dictado una materia mas de 5 veces(nombre del profesor ,la materia y las veces que la ha dictado)
SELECT name,nombre,veces
	FROM  Staff S, XMLTABLE('/hoja_de_vida/Asignaturas/Asignatura'
						passing S.hojas_de_vida
						columns  nombre PATH  '@nombre',veces number path '@veces'
                            ) T   where veces >5;
--2 los articulos publicados despues de 2010
SELECT nombre,año
	FROM  Staff S, XMLTABLE('/hoja_de_vida/Articulos/Articulo'
						passing S.hojas_de_vida
						columns nombre  PATH  '@nombre', año number path '@año'
                            ) T where año >2010;
                            
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