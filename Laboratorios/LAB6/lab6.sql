
--insert into MBDAA01.DATOS (NOMBRE,CORREO,EMAIL,PAIS) VALUES ('juan camilo','juanAngel@mail.escuelaing.edu.co','juanAngel@mail.escuelaing.edu.co','Colombia') ;
--insert into MBDAA01.DATOS (NOMBRE,CORREO,EMAIL,PAIS) VALUES ('juan camilo Rojas','juanRojasO@mail.escuelaing.edu.co','juanRojas@mail.escuelaing.edu.co','Colombia') ;


insert into perfiles select distinct correo,nombre from  MBDAA01.DATOS where(NOT REGEXP_LIKE(nombre, '[0-9@"#$%&/()=¿?¡!<>*+;:|]') AND nombre LIKE '% %')and  (REGEXP_LIKE (correo,'[a-zA-Z0-9]+@[a-zA-Z0-9]' ) and  correo not like '%hotmail.com' and correo not like'%gmail.com' and correo not like'%yahoo.com' );

insert into profesionales select distinct correo,coalesce(pais,'N/A'),'N/A' from MBDAA01.DATOS where(NOT REGEXP_LIKE(nombre, '[0-9@"#$%&/()=¿?¡!<>*+;:|]') AND nombre LIKE '% %')and  (REGEXP_LIKE (correo,'[a-zA-Z0-9]+@[a-zA-Z0-9]' ) and  correo not like '%hotmail.com' and correo not like'%gmail.com' and correo not like'%yahoo.com' and url is null and tama_o is null) ;

insert into fundaciones select distinct correo,case when tama_o<=50 then '0-50' when tama_o>50 and tama_o<=100 then '50-100' else '100+' end,concat(url,'.html') from MBDAA01.DATOS where(NOT REGEXP_LIKE(nombre, '[0-9@"#$%&/()=¿?¡!<>*+;:|]') AND nombre LIKE '% %')and  (REGEXP_LIKE (correo,'[a-zA-Z0-9]+@[a-zA-Z0-9]' ) and  correo not like '%hotmail.com' and correo not like'%gmail.com' and correo not like'%yahoo.com'and url is not null and tama_o is not  null);


