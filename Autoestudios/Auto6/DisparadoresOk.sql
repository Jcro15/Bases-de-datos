insert into staff(name,hojas_de_vida) values ('Angel, Dr carlos',
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
        <Reconocimiento nombre="premio turing" institucion="MIT" año="2012">
		</Reconocimiento>
        

          
        
        
	</Reconocimientos>

	<Articulos>
		<Articulo nombre="Theoretical neuroscience: computational and mathematical modeling of neural systems" revista="Science" año="2005 " categoria="A1">
		</Articulo>

		<Articulo nombre="Multivalued logics: A uniform approach to reasoning in artificial intelligence" revista="Technology and Culture " año="2004" categoria="A1">
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

insert into staff (name,hojas_de_vida) values ('Rojas, Prof Camilo',
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
        <Reconocimiento nombre="premio turing" institucion="MIT" año="2012">
		</Reconocimiento>
        

          
        
        
	</Reconocimientos>

	<Articulos>
		<Articulo nombre="Theoretical neuroscience: computational and mathematical modeling of neural systems" revista="Science" año="2005 " categoria="A1">
		</Articulo>

		<Articulo nombre="Multivalued logics: A uniform approach to reasoning in artificial intelligence" revista="Technology and Culture " año="2004" categoria="A1">
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

insert into staff (name,hojas_de_vida) values ('Gomez, Daniel',
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
        <Reconocimiento nombre="premio turing" institucion="MIT" año="2012">
		</Reconocimiento>
        

          
        
        
	</Reconocimientos>

	<Articulos>
		<Articulo nombre="Theoretical neuroscience: computational and mathematical modeling of neural systems" revista="Science" año="2005 " categoria="A1">
		</Articulo>

		<Articulo nombre="Multivalued logics: A uniform approach to reasoning in artificial intelligence" revista="Technology and Culture " año="2004" categoria="A1">
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




update staff set  name='Angel, carlos' where id='co.Ac';
update staff set  name='Rojas, Dr Camilo' where id='co.RC';
update staff set name='Gomez, Dr Daniel' where id='co.GD';