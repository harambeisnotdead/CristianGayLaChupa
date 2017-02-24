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

#TABLA ALUMNOS
INSERT INTO ALUMNO VALUES ("145687925G","145687925G","Pau","Sanxis","Terrassa, c/Barcelona 46","08-02-97","626548789","39","1A");
INSERT INTO ALUMNO VALUES ("452149865T","145687925G","Marta","Cots","Igualada, C/Guadalquivir 7","05/09/96","05/09/9","766753987","39","1A");

#TABLA ESEVALUADO
INSERT INTO ESEVALUADO VALUES ("145687925G",8,4,12);
INSERT INTO ESEVALUADO VALUES ("452149865T",8,8,35);

#TABLA UNIDAD
INSERT INTO UNIDAD VALUES(4,12);
INSERT INTO UNIDAD VALUES(7,35);

#TABLA ASIGNATURA
INSERT INTO ASIGNATURA VALUES (12,"Historia");
INSERT INTO ASIGNATURA VALUES (35,"Catalán");

#TABLA IMPARTE
INSERT INTO IMPARTE VALUES(12,"541695489U");
INSERT INTO IMPARTE VALUES(35,"548613478Y");

#TABLA PROFESOR
INSERT INTO PROFESOR VALUES("541695489U","Albert","06/11/82","López"," 32459628","albertikoLopixx@gmail.com");
INSERT INTO PROFESOR VALUES("548613478Y","Anna","12/04/67","Carulla","485462948","annacarulla@gmail.com");

#TABLA PERTENECE
INSERT INTO PERTENECE VALUES (37,"541695489U ");
INSERT INTO PERTENECE VALUES (87,"548613478Y");

#TABLA DEPARTA
INSERT INTO DEPARTAMENTO VALUES (37,"Ciencias",4);
INSERT INTO DEPARTAMENTO VALUES (87,"Catalán",6);

#TABLA EVENTO
INSERT INTO EVENTO VALUES("HBBSS","03/04/2017","8:00","salida al zoo para estudiar los monoS",37);
INSERT INTO EVENTO VALUES("X1BTX4","07/03/17","12:00","creación de la lluvia",87);

#TABLA EXCURSION
INSERT INTO EXCURSION VALUES("HBBSS","gratuito","zoo Barcelona");

#TABLA CONFERENCIA
INSERT INTO CONFERENCIA VALUES("X1BTX4","Miquel","els misteris de la creació de la pluja",32,2);

#TABLA AULA
INSERT INTO AULA VALUES(32,2);

#TABLA LIMPIA
INSERT INTO LIMPIA VALUES(32,2,"39388917S");

#TABLA PERSONAL_LIMPIEZA
INSERT INTO PERSONAL_LIMPIEZA VALUES("39388917S","Assumpte","Sunye","77260302");

#TABLA PLANTA
INSERT INTO PLANTA VALUES(2,34);

#TABLA TIENE
INSERT INTO TIENE VALUES(12,32,2,"1A",39);
INSERT INTO TIENE VALUES(35,32,2,"1A",39);

#TABLA GRUPO
INSERT INTO GRUPO VALUES("2A",39,"TARDE");

#TABLA CURSO
INSERT INTO CURSO VALUES(39,"Bachillerato tecnológico");
