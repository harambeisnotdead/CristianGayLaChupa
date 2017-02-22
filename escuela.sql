DROP DATABASE IF EXISTS escuela;
CREATE DATABASE escuela;
USE escuela;

CREATE TABLE PROFESOR (
	DNIProfesor char(9),
    nombreProfesor varchar(30) default null,
    fechaNacimiento date default "00-00-0000",
    apellido varchar(30),
    numeroSS varchar(30),
    email varchar(30),
	PRIMARY KEY(DNIProfesor)
) ENGINE=INNODB; 

CREATE TABLE IMPARTE (
	idAsignatura varchar(10),
    DNIProfesor char(9),
	PRIMARY KEY(idAsignatura, DNIProfesor)
) ENGINE=INNODB; 


CREATE TABLE TIENE (
	idAsignatura varchar(10),
    idAula varchar(10),
    idPlanta varchar(10),
    idGrupo varchar(10),
    idCurso varchar(10),
	PRIMARY KEY(idAsignatura, idAula, idPlanta, idGrupo, idCurso)
) ENGINE=INNODB; 

CREATE TABLE GRUPO (
	idGrupo varchar(10),
    idCurso varchar(10),
    turno varchar(10),
	PRIMARY KEY(idGrupo, idCurso)
) ENGINE=INNODB; 

CREATE TABLE CURSO (
	idCurso varchar(10),
    nombreCurso varchar(30),
	PRIMARY KEY(idCurso)
) ENGINE=INNODB; 

CREATE TABLE PLANTA (
	idPlanta varchar(10),
    cantidadAdulas char(2) default 0,
	PRIMARY KEY(idPlanta)
) ENGINE=INNODB; 


CREATE TABLE ASIGNATURA (
	nombre varchar(30),
    idAsignatura varchar(10),
	PRIMARY KEY(idAsignatura)
) ENGINE=INNODB; 


CREATE TABLE PERTENECE (
	idDepartamento varchar(10),
    DNIProfesor char(9),
	PRIMARY KEY(idDepartamento, DNIProfesor)
) ENGINE=INNODB; 

CREATE TABLE UNIDAD (
	idUnidad varchar(10),
    idAsignatura varchar(10),
	PRIMARY KEY(idUnidad, idAsignatura)
) ENGINE=INNODB; 

CREATE TABLE DEPARTAMENTO (
	idDepartamento varchar(10),
    nombreDepartamento varchar(30),
    numeroProfesores varchar(3),
	PRIMARY KEY(idDepartamento)
) ENGINE=INNODB; 

CREATE TABLE AULA (
	idAula varchar(10),
    idPlanta varchar(10),
	PRIMARY KEY(idAula, idPlanta)
) ENGINE=INNODB; 

CREATE TABLE LIMPIA  (
	idAula varchar(10),
    idPlanta varchar(10),
    DNIPersonalLimpieza char(9),
	PRIMARY KEY(idAula, idPlanta, DNIPersonalLimpieza)
) ENGINE=INNODB; 

CREATE TABLE ESEVALUADO (
	DNIAlumno char(9),
    idUnidad varchar(10),
    idAsignatura varchar(10),
    nota varchar(3),
	PRIMARY KEY(DNIAlumno, idUnidad, idAsignatura)
) ENGINE=INNODB; 

CREATE TABLE EVENTO (
	idEvento varchar(10),
    fechaEvento date default "00-00-0000",
    horaEvento varchar(5),
    descripcionEvento varchar(50),
    idDepartamento varchar(10),
	PRIMARY KEY(idEvento, idDepartamento)
) ENGINE=INNODB; 

CREATE TABLE CONFERENCIA (
	idEvento varchar(10),
    nombreInvitado varchar(30),
    temaConferencia varchar(30),
    idAula varchar(10),
    idPlanta varchar(10),
	PRIMARY KEY(idEvento, idAula, idPlanta)
) ENGINE=INNODB; 

CREATE TABLE EXCURSION (
	idEvento varchar(10),
    precio varchar(4),
    sitio varchar(30),
	PRIMARY KEY(idEvento)
) ENGINE=INNODB; 

CREATE TABLE ALUMNO (
	DNIAlumno char(9),
    DNIDelegado char(9),
    nombre varchar(30),
    apellidos varchar(50),
    fechaNacimiento date default "00-00-0000",
    email varchar(30),
    telefonoResponsable char(12),
	PRIMARY KEY(DNIAlumno)
) ENGINE=INNODB; 

CREATE TABLE PERSONAL_LIMPIEZA (
	DNIPersonalLimpieza char(9),
    nombrePL varchar(30),
    apellidosPL varchar(50),
    numeroSSPL varchar(15),
	PRIMARY KEY(DNIPersonalLimpieza)
) ENGINE=INNODB; 