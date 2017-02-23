DROP DATABASE IF EXISTS escuela;
CREATE DATABASE escuela;
USE escuela;

CREATE TABLE PROFESOR (
    DNIProfesor char(9),
    nombre varchar(30),
    fechaNacimiento date default "00-00-0000",
    apellidos varchar(30),
    numeroSS varchar(30),
    email varchar(30),
    PRIMARY KEY(DNIProfesor)
);

CREATE TABLE IMPARTE (
    idAsignatura int,
    DNIProfesor char(9),
    PRIMARY KEY(idAsignatura, DNIProfesor)
);

CREATE TABLE TIENE (
    idAsignatura int,
    idAula int,
    idPlanta int,
    idGrupo int,
    idCurso int,
    PRIMARY KEY(idAsignatura, idAula, idPlanta, idGrupo, idCurso)
);

CREATE TABLE GRUPO (
    idGrupo int,
    idCurso int,
    turno varchar(10),
    PRIMARY KEY(idGrupo, idCurso)
);

CREATE TABLE CURSO (
    idCurso int,
    nombreCurso varchar(30),
    PRIMARY KEY(idCurso)
);

CREATE TABLE PLANTA (
    idPlanta int,
    cantidadAdulas int,
    PRIMARY KEY(idPlanta)
);

CREATE TABLE ASIGNATURA (
    nombre varchar(30),
    idAsignatura int,
    PRIMARY KEY(idAsignatura)
);

CREATE TABLE PERTENECE (
    idDepartamento int,
    DNIProfesor char(9),
    PRIMARY KEY(idDepartamento, DNIProfesor)
);

CREATE TABLE UNIDAD (
    idUnidad int,
    idAsignatura int,
    PRIMARY KEY(idUnidad, idAsignatura)
);

CREATE TABLE DEPARTAMENTO (
    idDepartamento int,
    nombreDepartamento varchar(30),
    numeroProfesores int,
    PRIMARY KEY(idDepartamento)
);

CREATE TABLE AULA (
    idAula int,
    idPlanta int,
    PRIMARY KEY(idAula, idPlanta)
);

CREATE TABLE LIMPIA  (
    idAula int,
    idPlanta int,
    DNIPersonalLimpieza char(9),
    PRIMARY KEY(idAula, idPlanta, DNIPersonalLimpieza)
);

CREATE TABLE ES_EVALUADO (
    DNIAlumno char(9),
    idUnidad int,
    idAsignatura int,
    nota int(3),
    PRIMARY KEY(DNIAlumno, idUnidad, idAsignatura)
);

CREATE TABLE EVENTO (
    idEvento int,
    fecha date default "00-00-0000",
    hora varchar(5),
    descripcion varchar(50),
    idDepartamento int,
    PRIMARY KEY(idEvento)
);

CREATE TABLE CONFERENCIA (
    idEvento int,
    nombreInvitado varchar(30),
    tema varchar(30),
    idAula int,
    idPlanta int,
    PRIMARY KEY(idEvento)
);

CREATE TABLE EXCURSION (
    idEvento int,
    precio int,
    sitio varchar(30),
    PRIMARY KEY(idEvento)
);

CREATE TABLE ALUMNO (
    DNIAlumno char(9),
    DNIDelegado char(9),
    nombre varchar(30),
    apellidos varchar(50),
    direccion varchar(40),
    fechaNacimiento date default "00-00-0000",
    email varchar(30),
    telefonoResponsable int(12),
    idGrupo int,
    idCurso int,
    PRIMARY KEY(DNIAlumno)
);

CREATE TABLE PERSONAL_LIMPIEZA (
    DNIPersonalLimpieza char(9),
    nombre varchar(30),
    apellidos varchar(50),
    numeroSS varchar(15),
    PRIMARY KEY(DNIPersonalLimpieza)
);
