#CONSULTAS

#LISTAR LOS ALUMNOS DEL GRUPO 2A QUE NO TENGAN EL DNI ACABADO EN VOCAL:
SELECT nombre, apellidos FROM ALUMNO WHERE (idGrupo = "2A") 
AND (DNIAlumno NOT REGEXP "[$AEIOU]" ) ORDER BY apellidos;

#SUBIR UN PUNTO LA NOTA DE LOS ALUMNOS SUSPENDIDOS
UPDATE ES_EVALUADO SET (nota=nota+1) WHERE (nota<5);

#MOSTRAR NOMBRE PROFESOR, NOMBRE DEPARTAMENTO Y SU ID
SELECT nombreDepartamento, a.idDepartamento, nombre 
FROM PERTENECE a JOIN PROFESOR b ON (a.DNIProfesor = b.DNIProfesor)
JOIN DEPARTAMENTO c ON (a.idDepartamento = c.idDepartamento);

#MOSTRAR TODAS LAS AULAS DE LAS PLANTAS Y LA PERSONA QUE LA LIMPIA
SELECT idAula, idPlanta, nombre FROM LIMPIA a JOIN `PERSONAL_LIMPIEZA` b 
ON (a.DNIPersonalLimpieza = b.DNIPersonalLimpieza) ORDER BY idPlanta;


#SUBCONSULTAS

#MOSTRAR LOS ALUMNOS QUE TENGAN UNA NOTA MENOR A LA MEDIA 5 o menos de 5.
SELECT (SELECT nombre FROM ALUMNO WHERE DNIAlumno = ES_EVALUADO.DNIAlumno) 
AS Nombre ,DNIALUMNO, nota FROM ES_EVALUADO 
WHERE ES_EVALUADO.nota <(select avg(ES_EVALUADO.nota) FROM ES_EVALUADO);

#QUITAR UN 20% DE LA NOTA DE CATALÁN POR NO CALLAR EN CLASES Y ESCUCHAR MÚSICA MUY ALTA
UPDATE ES_EVALUADO SET nota=nota-(nota*2/10) WHERE idAsignatura 
IN (SELECT idAsignatura FROM ASIGNATURA WHERE nombreAsig = 'Catalán');

#PASAR TODOS LOS PROFESORES DE CATALÁN A INFORMÁTICA, PORQUE MOLA MÁS 
UPDATE PERTENECE SET idDepartamento = idDepartamento + (SELECT `idDepartamento` FROM `DEPARTAMENTO` WHERE nombreDepartamento = "Informatica") 
WHERE idDepartamento = (SELECT idDepartamento FROM DEPARTAMENTO WHERE nombreDepartamento = "Catalán");
