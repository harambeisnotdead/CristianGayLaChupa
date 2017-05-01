#--------------------------------------------------TABLA CURSO----------------------------------------------------------

		#BTCH
INSERT INTO CURSO VALUES("39","Bachillerato tecnológico");
INSERT INTO CURSO VALUES("40","Bachillerato social");
		#ESO
INSERT INTO CURSO VALUES("29","3o ESO");
INSERT INTO CURSO VALUES("30","4o ESO");

#--------------------------------------------------TABLA GRUPO----------------------------------------------------------
		#BTCH tecnologico
INSERT INTO GRUPO VALUES("2A","39","TARDE");
		#btch social
INSERT INTO GRUPO VALUES("1A","40","MAÑANA");
		#3oESO
INSERT INTO GRUPO VALUES("3A","29","MAÑANA");
		#4oESO
INSERT INTO GRUPO VALUES("4A","30","MAÑANA");

#--------------------------------------------------TABLA ALUMNO----------------------------------------------------------

		#ALUMNOS DE BACH TECNOLOGICO
INSERT INTO ALUMNO VALUES ("14568792G","14568792G","Pau","Sanxis","Terrassa, c/Barcelona 46","08/02/1997","jpkistanes@gmail.com","626548789","39","2A");
INSERT INTO ALUMNO VALUES ("45214986T","14568792G","Marta","Cots","Igualada, C/Guadalquivir 7","05/09/1996","queinsabe@gmail.com","766753987","39","2A");
INSERT INTO ALUMNO VALUES ("49589647F","14568792G","Albert","Correa","San Cugat, C/Monolito 11","17/03/1995","albertoculoabi@gmail.com","982564572","39","2A");
INSERT INTO ALUMNO VALUES ("48541234R","14568792G","Forgencio","De Pepinos","Monserrat, C/Miquel Vives 32","11/07/1996","forgenpepinoscome11@gmail.com","936448144","39","2A");
INSERT INTO ALUMNO VALUES ("98652348O","14568792G","Ignasi","Robles","Rubí, C/Miquel Vives 32","11/07/1996","roblesfuertesygordos@gmail.com","935684968","39","2A");

		#ALUMNOS DE BATCH SOCIAL
INSERT INTO ALUMNO VALUES ("78966325R","78966325R","Pau","Exevarria","Horta d'Avinyó, c/Balmes 03","08/06/1999","jpkistanes01@gmail.com","635486354","40","1A");
INSERT INTO ALUMNO VALUES ("85469235P","78966325R","Sandra","Cayuela","Terrassa, c/Quintana 09","20/04/1999","reaggeville@gmail.com","698654759","40","1A");
INSERT INTO ALUMNO VALUES ("45632187I","78966325R","Laura","Roca","Vall d'Aran, c/Atayuela 05","22/03/1999","lauritareshulona@gmail.com","632541698","40","1A");
INSERT INTO ALUMNO VALUES ("56324189E","78966325R","Pol","Castillo","Oló, c/Barcelona 190","04/08/1999","polcastilloymurayas@gmail.com","789654235","40","1A");
INSERT INTO ALUMNO VALUES ("39420864W","78966325R","Adri","Comas","Prats, c/Bilbao 50","08/09/1999","adricomasypunto@gmail.com","659832145","40","1A");

		#ALUMNOS DE 3o ESO
INSERT INTO ALUMNO VALUES ("98657264P","98657264P","Pau","Silva","Sanfructuoso, c/Diagonal 86","16/03/2001","silvomuybien@gmail.com","653265748","29","3A");
INSERT INTO ALUMNO VALUES ("25634897O","98657264P","Gemma","Vila","Sanpedor, c/Dumenech 14","08/06/2001","gemma.sanpe@gmail.com","653248963","29","3A");
INSERT INTO ALUMNO VALUES ("65329718S","98657264P","Ignasi","Garcia","Manresa, c/Raval 12","01/08/2001","garcilasso@gmail.com","657984136","29","3A");
INSERT INTO ALUMNO VALUES ("32653218W","98657264P","Aaron","Constantino","Calaf, c/Madrid 420","03/04/2001","constatntico04@gmail.com","789456385","29","3A");
INSERT INTO ALUMNO VALUES ("89647563E","98657264P","Xenia","Brunet","Cambrils, c/Mallorca 63","26/11/2001","catotpastissers@gmail.com","769813652","29","3A");

		#ALUMNOS DE 4o ESO
INSERT INTO ALUMNO VALUES ("39362548B","39362548B","Imma","Questaki","Artés, c/La Parra 76","04/04/2000","vivoenlaparra@gmail.com","698536969","30","4A");
INSERT INTO ALUMNO VALUES ("89546235B","39362548B","Carlos","Mesas","Calafell, c/San Víctor 03","04/05/2000","mesas.carlos@gmail.com","658493216","30","4A");
INSERT INTO ALUMNO VALUES ("53624896U","39362548B","Anna","Comas","Barcelona, c/Major 48","15/12/2000","anna.c@gmail.com","5632462518","30","4A");
INSERT INTO ALUMNO VALUES ("01329745R","39362548B","Fernando","Ferrer","Girona, c/Nou 04","12/08/2000","ferricochefernando@gmail.com","632519654","30","4A");
INSERT INTO ALUMNO VALUES ("14526358F","39362548B","Salomon","Lopez","Lleida, c/Barquera 65","06/01/2000","vivoenlaparra@gmail.com","635986428","30","4A");


#--------------------------------------------------TABLA ASIGNATURA----------------------------------------------------------

INSERT INTO ASIGNATURA VALUES ("05","Inglés");
INSERT INTO ASIGNATURA VALUES ("04","Bilogía");
INSERT INTO ASIGNATURA VALUES ("03","Informática");

#--------------------------------------------------TABLA UNIDAD---------------------------------------------------------
		#UDD INGLÉS
INSERT INTO UNIDAD VALUES("1","05");
INSERT INTO UNIDAD VALUES("2","05");
		#UDD Bilogía
INSERT INTO UNIDAD VALUES("6","04");
INSERT INTO UNIDAD VALUES("8","04");
		#UDD Informática
INSERT INTO UNIDAD VALUES("2","03");
INSERT INTO UNIDAD VALUES("3","03");
		#UDD Catalán
INSERT INTO UNIDAD VALUES("7","35");
INSERT INTO UNIDAD VALUES("8","35");
		#UDD Historia
INSERT INTO UNIDAD VALUES("4","12");
INSERT INTO UNIDAD VALUES("5","12");
        
        
#--------------------------------------------------TABLA ES_EVALUADO---------------------------------------------------------
		#ALUMNOS DE BACH TECNOLOGICO
INSERT INTO ES_EVALUADO VALUES ("14568792G","4","4","03");
INSERT INTO ES_EVALUADO VALUES ("45214986T","6","4","03");
INSERT INTO ES_EVALUADO VALUES ("49589647F","7","4","03");
INSERT INTO ES_EVALUADO VALUES ("48541234R","3","4","03");
INSERT INTO ES_EVALUADO VALUES ("98652348O","5","4","03");
		#ALUMNOS DE BACH SOCIAL
INSERT INTO ES_EVALUADO VALUES ("78966325R","8","5","12");
INSERT INTO ES_EVALUADO VALUES ("85469235P","9","5","12");
INSERT INTO ES_EVALUADO VALUES ("45632187I","7","5","12");
INSERT INTO ES_EVALUADO VALUES ("56324189E","8","5","12");
INSERT INTO ES_EVALUADO VALUES ("39420864W","10","5","12");
		#ALUMNOS DE 3o ESO
INSERT INTO ES_EVALUADO VALUES ("98657264P","8","1","05");
INSERT INTO ES_EVALUADO VALUES ("25634897O","4","1","05");
INSERT INTO ES_EVALUADO VALUES ("65329718S","5","1","05");
INSERT INTO ES_EVALUADO VALUES ("32653218W","6","1","05");
INSERT INTO ES_EVALUADO VALUES ("89647563E","7","1","05");
		#ALUMNOS DE 4o ESO
INSERT INTO ES_EVALUADO VALUES ("39362548B","7","8","35");
INSERT INTO ES_EVALUADO VALUES ("89546235B","5","8","35");
INSERT INTO ES_EVALUADO VALUES ("53624896U","6","8","35");
INSERT INTO ES_EVALUADO VALUES ("01329745R","9","8","35");
INSERT INTO ES_EVALUADO VALUES ("14526358F","4","8","35");

#--------------------------------------------------TABLA PROFESOR-------------------------------------------------------
INSERT INTO PROFESOR VALUES("63241896L","Jaume","07/09/1986","López","63254187","jaumeijadosme@gmail.com");
INSERT INTO PROFESOR VALUES("24635218J","Rosa","12/04/1970","Pujal","98635298","rosaderoses@gmail.com");
INSERT INTO PROFESOR VALUES("75436528K","Carme","03/07/1979","Real","45236985","carmasutra@gmail.com");

#--------------------------------------------------TABLA IMPARTE--------------------------------------------------------
INSERT INTO IMPARTE VALUES("05","63241896L");
INSERT INTO IMPARTE VALUES("03","24635218J");

#--------------------------------------------------TABLA DEPARTAMENTO---------------------------------------------------

	#INSERCIONES NUEVAS
INSERT INTO DEPARTAMENTO VALUES ("04","Lenguas Extrangeras","10");
INSERT INTO DEPARTAMENTO VALUES ("13", "Sociales", "7");
	#INSERTS ANTIGUAS     (ALGUNA LA HE RENOVADO)
INSERT INTO DEPARTAMENTO VALUES ("37","Ciencias","7");
INSERT INTO DEPARTAMENTO VALUES ("12","Catalan","6");
INSERT INTO DEPARTAMENTO VALUES ("05", "Informática", "5");


#--------------------------------------------------TABLA PERTENECE------------------------------------------------------
		#INSERTS ANTIGUOS MEJORADOS
INSERT INTO PERTENECE VALUES ("12","54861347Y");
INSERT INTO PERTENECE VALUES ("13","54169548U");
		#INSERTS ANTIGUOS MEJORADOS
INSERT INTO PERTENECE VALUES ("05","63241896L");
INSERT INTO PERTENECE VALUES ("04","24635218J");
INSERT INTO PERTENECE VALUES ("37","75436528K");

#--------------------------------------------------TABLA EVENTO---------------------------------------------------------
#--------------------------------------------------TABLA EXCURSION------------------------------------------------------
#--------------------------------------------------TABLA PLANTA---------------------------------------------------------
				#	NO SE CAMBIAN



#--------------------------------------------------TABLA TIENE----------------------------------------------------------

	#VALORES ANTIGUOS MODIFICADOS
INSERT INTO TIENE VALUES("12","32","2","1A","39");
INSERT INTO TIENE VALUES("35","32","2","4A","30");

	#VALORES NUEVOS
INSERT INTO TIENE VALUES("05","15","1","3A","29");
INSERT INTO TIENE VALUES("03","25","2","2A","39");
INSERT INTO TIENE VALUES("03","32","2","2A","39");







