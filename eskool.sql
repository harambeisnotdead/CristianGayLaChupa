DROP DATABASE IF EXISTS escuela;
CREATE DATABASE escuela;
USE escuela;

CREATE TABLE PROFESOR (
    DNIProfesor char(9),
    nombre varchar(30),
    fechaNacimiento char(10),
    apellidos varchar(30),
    numeroSS varchar(30),
    email varchar(30),
    PRIMARY KEY(DNIProfesor)
);

CREATE TABLE IMPARTE (
    idAsignatura varchar(6),
    DNIProfesor char(9),
    PRIMARY KEY(idAsignatura, DNIProfesor)
);

CREATE TABLE TIENE (
    idAsignatura varchar(6),
    idAula varchar(6),
    idPlanta varchar(6),
    idGrupo varchar(6),
    idCurso varchar(6),
    PRIMARY KEY(idAsignatura, idAula, idPlanta, idGrupo, idCurso)
);

CREATE TABLE GRUPO (
    idGrupo varchar(6),
    idCurso varchar(6),
    turno varchar(10),
    PRIMARY KEY(idGrupo, idCurso)
);

CREATE TABLE CURSO (
    idCurso varchar(6),
    nombreCurso varchar(30),
    PRIMARY KEY(idCurso)
);

CREATE TABLE PLANTA (
    idPlanta varchar(6),
    cantidadAdulas varchar(2),
    PRIMARY KEY(idPlanta)
);

CREATE TABLE ASIGNATURA (
    idAsignatura varchar(6),
    nombre varchar(30),
    PRIMARY KEY(idAsignatura)
);

CREATE TABLE PERTENECE (
    idDepartamento varchar(6),
    DNIProfesor char(9),
    PRIMARY KEY(idDepartamento, DNIProfesor)
);

CREATE TABLE UNIDAD (
    idUnidad varchar(6),
    idAsignatura varchar(6),
    PRIMARY KEY(idUnidad, idAsignatura)
);

CREATE TABLE DEPARTAMENTO (
    idDepartamento varchar(6),
    nombreDepartamento varchar(30),
    numeroProfesores varchar(3),
    PRIMARY KEY(idDepartamento)
);

CREATE TABLE AULA (
    idAula varchar(6),
    idPlanta varchar(6),
    PRIMARY KEY(idAula, idPlanta)
);

CREATE TABLE LIMPIA  (
    idAula varchar(6),
    idPlanta varchar(6),
    DNIPersonalLimpieza char(9),
    PRIMARY KEY(idAula, idPlanta, DNIPersonalLimpieza)
);

CREATE TABLE ES_EVALUADO (
    DNIAlumno char(9),
    nota varchar(2),
    idUnidad varchar(6),
    idAsignatura varchar(6),
    PRIMARY KEY(DNIAlumno, idUnidad, idAsignatura)
);

CREATE TABLE EVENTO (
    idEvento varchar(6),
    fecha char(10),
    hora varchar(6),
    descripcion varchar(50),
    idDepartamento varchar(6),
    PRIMARY KEY(idEvento)
);

CREATE TABLE CONFERENCIA (
    idEvento varchar(6),
    nombreInvitado varchar(30),
    tema varchar(50),
    idAula varchar(6),
    idPlanta varchar(6),
    PRIMARY KEY(idEvento)
);

CREATE TABLE EXCURSION (
    idEvento varchar(6),
    precio varchar(10),
    sitio varchar(30),
    PRIMARY KEY(idEvento)
);

CREATE TABLE ALUMNO (
    DNIAlumno char(9),
    DNIDelegado char(9),
    nombre varchar(30),
    apellidos varchar(50),
    direccion varchar(40),
    fechaNacimiento char(10),
    email varchar(30),
    telefonoResponsable char(9),
    idCurso varchar(6),
    idGrupo varchar(6),
    PRIMARY KEY(DNIAlumno)
);

CREATE TABLE PERSONAL_LIMPIEZA (
    DNIPersonalLimpieza char(9),
    nombre varchar(30),
    apellidos varchar(50),
    numeroSS varchar(15),
    PRIMARY KEY(DNIPersonalLimpieza)
);

#--------------------------------------------------TABLA CURSO----------------------------------------------------------
INSERT INTO CURSO VALUES("39","Bachillerato tecnológico");

#--------------------------------------------------TABLA GRUPO----------------------------------------------------------
ALTER TABLE GRUPO ADD CONSTRAINT fk_GRUPO_idCurso FOREIGN KEY (idCurso) REFERENCES CURSO(idCurso);

INSERT INTO GRUPO VALUES("2A","39","TARDE");

#--------------------------------------------------TABLA ALUMNO---------------------------------------------------------
ALTER TABLE ALUMNO ADD CONSTRAINT fk_ALUMNO_idGrupo FOREIGN KEY (idGrupo) REFERENCES GRUPO(idGrupo),
                   ADD CONSTRAINT fk_ALUMNO_idCurso FOREIGN KEY (idCurso) REFERENCES GRUPO(idCurso);

INSERT INTO ALUMNO VALUES ("14568792G","14568792G","Pau","Sanxis","Terrassa, c/Barcelona 46","08/02/1997","jpkistanes@gmail.com","626548789","39","2A");
INSERT INTO ALUMNO VALUES ("45214986T","14568792G","Marta","Cots","Igualada, C/Guadalquivir 7","05/09/1996","queinsabe@gmail.com","766753987","39","2A");
INSERT INTO ALUMNO VALUES ("49589647F","14568792G","Albert","Correa","San Cugat, C/Monolito 11","17/03/1995","albertoculoabi@gmail.com","982564572","39","2A");
INSERT INTO ALUMNO VALUES ("48541234R","14568792G","Forgencio","De Pepinos","Monserrat, C/Miquel Vives 32","11/07/1996","forgenpepinoscome11@gmail.com","936448144","39","2A");

#--------------------------------------------------TABLA ASIGNATURA-----------------------------------------------------
INSERT INTO ASIGNATURA VALUES ("12","Historia");
INSERT INTO ASIGNATURA VALUES ("35","Catalán");

#--------------------------------------------------TABLA UNIDAD---------------------------------------------------------
ALTER TABLE UNIDAD ADD CONSTRAINT fk_UNIDAD_idAsignatura FOREIGN KEY (idAsignatura) REFERENCES ASIGNATURA(idAsignatura);

INSERT INTO UNIDAD VALUES("4","12");
INSERT INTO UNIDAD VALUES("8","35");

#--------------------------------------------------TABLA ES_EVALUADO----------------------------------------------------
ALTER TABLE ES_EVALUADO ADD CONSTRAINT fk_ES_EVALUADO_DNIAlumno FOREIGN KEY (DNIAlumno) REFERENCES ALUMNO(DNIAlumno),
                        ADD CONSTRAINT fk_ES_EVALUADO_idUnidad FOREIGN KEY (idUnidad) REFERENCES UNIDAD(idUnidad),
                        ADD CONSTRAINT fk_ES_EVALUADO_idAsignatura FOREIGN KEY (idAsignatura) REFERENCES UNIDAD(idAsignatura);

INSERT INTO ES_EVALUADO VALUES ("14568792G","8","4","12");
INSERT INTO ES_EVALUADO VALUES ("45214986T","8","8","35");

#--------------------------------------------------TABLA PROFESOR-------------------------------------------------------
INSERT INTO PROFESOR VALUES("54169548U","Albert","06/11/1982","López"," 32459628","albertikoLopixx@gmail.com");
INSERT INTO PROFESOR VALUES("54861347Y","Anna","12/04/1967","Carulla","485462948","annacarulla@gmail.com");

#--------------------------------------------------TABLA IMPARTE--------------------------------------------------------
ALTER TABLE IMPARTE ADD CONSTRAINT fk_IMPARTE_idAsignatura FOREIGN KEY (idAsignatura) REFERENCES ASIGNATURA(idAsignatura),
                    ADD CONSTRAINT fk_IMPARTE_DNIProfesor FOREIGN KEY (DNIProfesor) REFERENCES PROFESOR(DNIProfesor);

INSERT INTO IMPARTE VALUES("12","54169548U");
INSERT INTO IMPARTE VALUES("35","54861347Y");

#--------------------------------------------------TABLA DEPARTAMENTO---------------------------------------------------
INSERT INTO DEPARTAMENTO VALUES ("37","Ciencias","4");
INSERT INTO DEPARTAMENTO VALUES ("87","Catalán","6");

#--------------------------------------------------TABLA PERTENECE------------------------------------------------------
ALTER TABLE PERTENECE ADD CONSTRAINT fk_PERTENECE_idDepartamento FOREIGN KEY (idDepartamento) REFERENCES DEPARTAMENTO(idDepartamento),
                      ADD CONSTRAINT fk_PERTENECE_DNIProfesor FOREIGN KEY (DNIProfesor) REFERENCES PROFESOR(DNIProfesor);

INSERT INTO PERTENECE VALUES ("37","54169548U ");
INSERT INTO PERTENECE VALUES ("87","54861347Y");

#--------------------------------------------------TABLA EVENTO---------------------------------------------------------
ALTER TABLE EVENTO ADD CONSTRAINT fk_EVENTO_idDepartamento FOREIGN KEY (idDepartamento) REFERENCES DEPARTAMENTO(idDepartamento);

INSERT INTO EVENTO VALUES("HBBSS","03/04/2017","8:00","salida al zoo para estudiar los monos","37");
INSERT INTO EVENTO VALUES("X1BTX4","07/03/2017","12:00","creación de la lluvia","87");

#--------------------------------------------------TABLA EXCURSION------------------------------------------------------
ALTER TABLE EXCURSION ADD CONSTRAINT fk_EXCURSION_idEvento FOREIGN KEY (idEvento) REFERENCES EVENTO(idEvento);

INSERT INTO EXCURSION VALUES("HBBSS","gratuito","zoo Barcelona");

#--------------------------------------------------TABLA PLANTA---------------------------------------------------------
INSERT INTO PLANTA VALUES("2","34");
INSERT INTO PLANTA VALUES("1","26");

#--------------------------------------------------TABLA AULA-----------------------------------------------------------
ALTER TABLE AULA ADD CONSTRAINT fk_AULA_idPlanta FOREIGN KEY (idPlanta) REFERENCES PLANTA(idPlanta);

INSERT INTO AULA VALUES("32","2");
INSERT INTO AULA VALUES("21","1");
INSERT INTO AULA VALUES("25","1");
INSERT INTO AULA VALUES("12","1");
INSERT INTO AULA VALUES("23","2");
INSERT INTO AULA VALUES("15","1");
INSERT INTO AULA VALUES("25","2");

#--------------------------------------------------TABLA CONFERENCIA----------------------------------------------------
ALTER TABLE CONFERENCIA ADD CONSTRAINT fk_CONFERENCIA_idEvento FOREIGN KEY (idEvento) REFERENCES EVENTO(idEvento),
                        ADD CONSTRAINT fk_CONFERENCIA_idAula FOREIGN KEY (idAula) REFERENCES AULA(idAula),
                        ADD CONSTRAINT fk_CONFERENCIA_idPlanta FOREIGN KEY (idPlanta) REFERENCES AULA(idPlanta);

INSERT INTO CONFERENCIA VALUES("X1BTX4","Miquel","els misteris de la creació de la pluja","32","2");

#-------------------------------------------------TABLA PERSONAL_LIMPIEZA-----------------------------------------------
INSERT INTO PERSONAL_LIMPIEZA VALUES("39388917S","Assumpte","Sunye","77260302");
INSERT INTO PERSONAL_LIMPIEZA VALUES("85496532Y","Maria","Barriga","25647893");
INSERT INTO PERSONAL_LIMPIEZA VALUES("56894356T","Fermín","Gutierrez","654893125");
INSERT INTO PERSONAL_LIMPIEZA VALUES("78934568O","Joan","Escalé","45793856");


#--------------------------------------------------TABLA LIMPIA---------------------------------------------------------
ALTER TABLE LIMPIA ADD CONSTRAINT fk_LIMPIA_idAula FOREIGN KEY (idAula) REFERENCES AULA(idAula),
                   ADD CONSTRAINT fk_LIMPIA_idPlanta FOREIGN KEY (idPlanta) REFERENCES AULA(idPlanta),
                   ADD CONSTRAINT fk_LIMPIA_DNIPersonalLimpieza FOREIGN KEY (DNIPersonalLimpieza) REFERENCES PERSONAL_LIMPIEZA(DNIPersonalLimpieza);

INSERT INTO LIMPIA VALUES("32","2","39388917S");
INSERT INTO LIMPIA VALUES("21","1","85496532Y");
INSERT INTO LIMPIA VALUES("25","1","39388917S");
INSERT INTO LIMPIA VALUES("12","1","56894356T");
INSERT INTO LIMPIA VALUES("23","2","78934568O");
INSERT INTO LIMPIA VALUES("15","1","56894356T");
INSERT INTO LIMPIA VALUES("25","2","78934568O");


#--------------------------------------------------TABLA TIENE----------------------------------------------------------
ALTER TABLE TIENE ADD CONSTRAINT fk_TIENE_idAsignatura FOREIGN KEY (idAsignatura) REFERENCES ASIGNATURA(idAsignatura),
                  ADD CONSTRAINT fk_TIENE_idAula FOREIGN KEY (idAula) REFERENCES AULA(idAula),
                  ADD CONSTRAINT fk_TIENE_idPlanta FOREIGN KEY (idPlanta) REFERENCES AULA(idPlanta),
                  ADD CONSTRAINT fk_TIENE_idGrupo FOREIGN KEY (idGrupo) REFERENCES GRUPO(idGrupo),
                  ADD CONSTRAINT fk_TIENE_idCurso FOREIGN KEY (idCurso) REFERENCES GRUPO(idCurso);

INSERT INTO TIENE VALUES("12","32","2","2A","39");
INSERT INTO TIENE VALUES("35","32","2","2A","39");
