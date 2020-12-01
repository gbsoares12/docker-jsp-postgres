CREATE TABLE genero (
   cd_genero	 INTEGER       NOT NULL,
   ds_nome   	 VARCHAR(50)   NOT NULL,
   CONSTRAINT genero_pk PRIMARY KEY (cd_genero)
);

CREATE TABLE filmes(
   cd_filme	 	 INTEGER       NOT NULL,
   ds_nome   	 VARCHAR(200)  NOT NULL,
   nr_duracaomin INTEGER  	   NOT NULL,
   cd_genero 	 INTEGER  	   NOT NULL,
   PRIMARY KEY(cd_filme),
   CONSTRAINT fk_filmes
      FOREIGN KEY(cd_genero) 
	  REFERENCES genero(cd_genero)
);

CREATE TABLE oscares_melhor_filme(
   cd_filme	 INTEGER  NOT NULL,
   nr_ano   	 INTEGER  NOT NULL,
   PRIMARY KEY(cd_filme),
   CONSTRAINT fk_filmes
      FOREIGN KEY(cd_filme) 
	  REFERENCES filmes(cd_filme)
);

CREATE TABLE atores (
   cd_ator VARCHAR 		 NOT NULL,
   ds_nome VARCHAR(50)   NOT NULL,
   CONSTRAINT atores_pk PRIMARY KEY (cd_ator)
);

CREATE TABLE elenco(
	cd_ator	 	 VARCHAR  	NOT NULL,
	cd_filme 	 INTEGER	NOT NULL,
	sn_principal VARCHAR 	NOT NULL,
		PRIMARY KEY(cd_ator, cd_filme),
		CONSTRAINT fk_atores 
			FOREIGN KEY (cd_ator) REFERENCES atores (cd_ator),
		CONSTRAINT fk_filmes
			FOREIGN KEY (cd_filme) REFERENCES filmes (cd_filme)
);

CREATE TABLE servicos (
   cd_servico INTEGER	NOT NULL,
   ds_nome VARCHAR(50)  NOT NULL,
   CONSTRAINT servicos_pk PRIMARY KEY (cd_servico)
);

CREATE TABLE usuarios (
   cd_usuario INTEGER		NOT NULL,
   ds_nome 	  VARCHAR(50)   NOT NULL,
   ds_senha   CHAR(18)   NOT NULL,
   CONSTRAINT usuarios_pk PRIMARY KEY (cd_usuario)
);

CREATE TABLE servicos_autorizados(
	cd_usuario	  INTEGER  	NOT NULL,
	cd_servico 	  INTEGER	NOT NULL,
	sn_autorizado INTEGER 	NOT NULL,
		PRIMARY KEY(cd_usuario, cd_servico),
		CONSTRAINT fk_usuarios 
			FOREIGN KEY (cd_usuario) REFERENCES usuarios (cd_usuario),
		CONSTRAINT fk_servicos
			FOREIGN KEY (cd_servico) REFERENCES servicos (cd_servico)
);
/* PRIMARY KEY(cd_usuario, cd_servico),*/
CREATE TABLE servicos_usados(
	cd_usuario	INTEGER 	NOT NULL,
	cd_servico	INTEGER		NOT NULL,
	dt_momento	TIMESTAMP 	NOT NULL,
		CONSTRAINT fk_usuarios 
			FOREIGN KEY (cd_usuario) REFERENCES usuarios (cd_usuario),
		CONSTRAINT fk_servicos
			FOREIGN KEY (cd_servico) REFERENCES servicos (cd_servico)
);

CREATE TABLE filmes_assistidos(
	cd_usuario	  INTEGER  		NOT NULL,
	cd_filme 	  INTEGER		NOT NULL,
	dt_momento 	  TIMESTAMP 	NOT NULL,
		PRIMARY KEY(cd_usuario, cd_filme),
		CONSTRAINT fk_usuarios 
			FOREIGN KEY (cd_usuario) REFERENCES usuarios (cd_usuario),
		CONSTRAINT fk_filmes
			FOREIGN KEY (cd_filme) REFERENCES filmes (cd_filme)
);

CREATE TABLE classificacoes(
	cd_filme 	  INTEGER		NOT NULL,
	cd_usuario	  INTEGER  		NOT NULL,
	sn_gostou 	  INTEGER		NOT NULL,
	dt_momento 	  TIMESTAMP 	NOT NULL,
		PRIMARY KEY(cd_filme, cd_usuario),
		CONSTRAINT fk_filmes
			FOREIGN KEY (cd_filme) REFERENCES filmes (cd_filme)
		CONSTRAINT fk_usuarios 
			FOREIGN KEY (cd_usuario) REFERENCES usuarios (cd_usuario),
);

/*INSERTS*/
INSERT INTO  genero  ( cd_genero , ds_nome ) VALUES (1,'In Hendrerit Limited'),(2,'Ligula Institute'),(3,'Dolor Sit Amet Corporation'),(4,'Vulputate Velit Eu LLC'),(5,'Elit LLC'),(6,'Ipsum Incorporated'),(7,'Rhoncus Ltd'),(8,'Diam Associates'),(9,'Mauris Erat Eget Industries'),(10,'Amet Consectetuer Associates');
INSERT INTO  genero  ( cd_genero , ds_nome ) VALUES (11,'Vel Nisl Quisque Institute'),(12,'Sodales At Inc.'),(13,'Sagittis Limited'),(14,'Malesuada Vel Limited'),(15,'Odio Vel Limited'),(16,'Lectus Cum Sociis Inc.'),(17,'Molestie Incorporated'),(18,'Proin Eget Corp.'),(19,'Feugiat Ltd'),(20,'Ultrices Limited');
INSERT INTO  genero  ( cd_genero , ds_nome ) VALUES (21,'Libero Industries'),(22,'Commodo At Industries'),(23,'Pretium Et Rutrum Corporation'),(24,'Varius Ultrices Mauris Inc.'),(25,'Gravida Sit Industries'),(26,'Mauris Inc.'),(27,'Vel Institute'),(28,'Amet Risus Institute'),(29,'Felis Nulla Inc.'),(30,'Lacus Mauris Non Inc.');
INSERT INTO  genero  ( cd_genero , ds_nome ) VALUES (31,'Et Magna Praesent LLC'),(32,'Ligula Consectetuer Institute'),(33,'Blandit Viverra Donec Institute'),(34,'Nunc Risus Industries'),(35,'Nullam Industries'),(36,'Cum LLC'),(37,'Vitae Odio Sagittis Foundation'),(38,'Amet Ornare Institute'),(39,'Class Limited'),(40,'Magna LLC');
INSERT INTO  genero  ( cd_genero , ds_nome ) VALUES (41,'Tristique Aliquet Limited'),(42,'Varius Nam Inc.'),(43,'Sed Diam Lorem Corporation'),(44,'Felis Donec Tempor Industries'),(45,'Lobortis Tellus Incorporated'),(46,'Orci Quis LLC'),(47,'Ultrices LLP'),(48,'Tellus PC'),(49,'Penatibus Inc.'),(50,'Fringilla Est Industries');
INSERT INTO  genero  ( cd_genero , ds_nome ) VALUES (51,'Sed Pharetra Felis Foundation'),(52,'Bibendum Foundation'),(53,'Et Malesuada LLC'),(54,'Donec Corp.'),(55,'In Industries'),(56,'Luctus Incorporated'),(57,'Sapien Imperdiet Ornare Inc.'),(58,'Aliquam Limited'),(59,'Tincidunt Congue Turpis LLC'),(60,'In Consectetuer Ipsum Associates');
INSERT INTO  genero  ( cd_genero , ds_nome ) VALUES (61,'Nisi Cum Ltd'),(62,'Interdum Enim Non Incorporated'),(63,'Tempor Diam Limited'),(64,'Augue Id Ltd'),(65,'Non Bibendum Foundation'),(66,'Cursus Company'),(67,'Morbi Tristique LLC'),(68,'Nec Leo Foundation'),(69,'Adipiscing Elit Aliquam LLC'),(70,'Dictum Cursus Ltd');
INSERT INTO  genero  ( cd_genero , ds_nome ) VALUES (71,'Lacinia Mattis Foundation'),(72,'Ut Pellentesque Eget PC'),(73,'Molestie Sodales Corporation'),(74,'Diam Vel Corp.'),(75,'Cubilia Curae; Phasellus LLC'),(76,'Vehicula Incorporated'),(77,'Enim Suspendisse Corporation'),(78,'Feugiat Nec Ltd'),(79,'In PC'),(80,'Consectetuer Company');
INSERT INTO  genero  ( cd_genero , ds_nome ) VALUES (81,'In LLP'),(82,'Nulla Integer Urna Limited'),(83,'Amet Ultricies Sem Inc.'),(84,'Nam Foundation'),(85,'Mus Donec Dignissim Ltd'),(86,'Duis Inc.'),(87,'Vitae Purus Gravida Inc.'),(88,'Cursus In Limited'),(89,'Nascetur PC'),(90,'Orci Consulting');
INSERT INTO  genero  ( cd_genero , ds_nome ) VALUES (91,'Ut Sagittis Lobortis Foundation'),(92,'Et Ultrices Posuere LLP'),(93,'Eget Volutpat Ornare Institute'),(94,'Facilisis Suspendisse Consulting'),(95,'Ornare In Consulting'),(96,'Nec Corporation'),(97,'Quis Pede Industries'),(98,'Sem Vitae Incorporated'),(99,'Turpis Egestas Aliquam Ltd'),(100,'Fermentum Convallis Ligula Ltd');

INSERT INTO "filmes" (cd_filme,ds_nome,nr_duracaomin,cd_genero) VALUES (1,'Felis Nulla Institute',72,64),(2,'Ac Libero Nec Corporation',103,55),(3,'Tellus Corporation',55,53),(4,'Sem Industries',75,27),(5,'Aliquet Libero Integer Industries',99,83),(6,'Ac Mattis Ornare Consulting',62,9),(7,'Mauris Company',50,61),(8,'Iaculis Institute',70,36),(9,'Eu Euismod Limited',112,39),(10,'Ullamcorper LLP',119,66);
INSERT INTO "filmes" (cd_filme,ds_nome,nr_duracaomin,cd_genero) VALUES (11,'Libero Consulting',73,51),(12,'Pretium Et Rutrum Consulting',71,18),(13,'Feugiat Limited',104,82),(14,'Leo Ltd',87,85),(15,'Neque Sed Company',62,83),(16,'Mattis Cras Eget Industries',80,21),(17,'Blandit Viverra Incorporated',60,47),(18,'Semper Institute',115,39),(19,'Per Inceptos Hymenaeos Limited',104,44),(20,'Phasellus Industries',119,12);
INSERT INTO "filmes" (cd_filme,ds_nome,nr_duracaomin,cd_genero) VALUES (21,'Urna Et PC',102,43),(22,'Libero Mauris Aliquam Limited',96,84),(23,'Placerat Velit Quisque Incorporated',76,30),(24,'Egestas LLC',54,72),(25,'Feugiat Placerat Velit LLP',102,56),(26,'Hendrerit PC',59,72),(27,'Egestas A LLP',58,51),(28,'Porttitor Consulting',80,85),(29,'Enim Gravida Sit Ltd',96,84),(30,'Purus Gravida Sagittis Consulting',70,93);
INSERT INTO "filmes" (cd_filme,ds_nome,nr_duracaomin,cd_genero) VALUES (31,'Dictum Placerat Institute',83,56),(32,'Integer LLC',88,47),(33,'Dolor Dapibus Foundation',118,80),(34,'Ornare Foundation',80,33),(35,'Eros Corp.',66,17),(36,'Pede Malesuada Vel Incorporated',102,25),(37,'Volutpat Nulla Facilisis Associates',81,96),(38,'Ornare Incorporated',50,8),(39,'Non Justo Foundation',82,89),(40,'Ornare Corp.',104,93);
INSERT INTO "filmes" (cd_filme,ds_nome,nr_duracaomin,cd_genero) VALUES (41,'Arcu Vestibulum Ut Inc.',99,95),(42,'Lacus Quisque Purus Limited',62,3),(43,'Ac Company',97,9),(44,'Molestie Orci Tincidunt Institute',62,67),(45,'Nascetur Associates',68,92),(46,'Blandit Nam Incorporated',107,73),(47,'Arcu Company',90,80),(48,'Ac Eleifend Consulting',108,36),(49,'Posuere Enim Nisl Institute',54,17),(50,'Ut Odio Vel Industries',114,3);
INSERT INTO "filmes" (cd_filme,ds_nome,nr_duracaomin,cd_genero) VALUES (51,'Enim LLP',118,22),(52,'Non Lobortis Corporation',92,14),(53,'Vivamus Inc.',71,51),(54,'Ipsum Donec Sollicitudin LLC',117,71),(55,'Vel Incorporated',118,27),(56,'Fringilla Associates',97,50),(57,'Eu Company',102,4),(58,'Lacus Etiam Bibendum Corp.',98,45),(59,'Ut Corporation',96,96),(60,'Sed Orci Consulting',84,30);
INSERT INTO "filmes" (cd_filme,ds_nome,nr_duracaomin,cd_genero) VALUES (61,'Sagittis Associates',118,89),(62,'Tempor Lorem Eget LLP',66,76),(63,'Neque Consulting',77,54),(64,'Hendrerit Donec Porttitor Corp.',68,42),(65,'Ac Mattis Velit LLC',76,63),(66,'Pellentesque Limited',111,26),(67,'Fermentum Metus Aenean Institute',78,62),(68,'Quisque Libero LLP',50,25),(69,'Felis Donec LLP',119,4),(70,'Senectus LLC',57,55);
INSERT INTO "filmes" (cd_filme,ds_nome,nr_duracaomin,cd_genero) VALUES (71,'Ac Libero Consulting',101,33),(72,'Cursus Et LLP',78,58),(73,'Curae; Associates',54,4),(74,'Suspendisse Eleifend Cras Incorporated',66,94),(75,'Varius PC',97,99),(76,'Sem Elit Industries',100,40),(77,'Euismod Consulting',83,94),(78,'Egestas Fusce Company',108,44),(79,'Elit Pellentesque A Corp.',100,60),(80,'Et Magnis Foundation',103,23);
INSERT INTO "filmes" (cd_filme,ds_nome,nr_duracaomin,cd_genero) VALUES (81,'Malesuada PC',103,79),(82,'Pellentesque Corp.',103,100),(83,'Gravida Non Sollicitudin Institute',104,91),(84,'Purus Associates',102,61),(85,'Nulla Magna Malesuada Incorporated',61,39),(86,'Duis Consulting',73,17),(87,'Dapibus LLP',88,96),(88,'Enim Industries',76,61),(89,'In Condimentum Donec Institute',89,84),(90,'Quisque Limited',84,72);
INSERT INTO "filmes" (cd_filme,ds_nome,nr_duracaomin,cd_genero) VALUES (91,'Malesuada Augue Ut PC',78,46),(92,'Amet Consectetuer Adipiscing Consulting',51,81),(93,'Erat Nonummy Limited',103,3),(94,'Aliquam Institute',102,43),(95,'Magnis Dis Parturient Company',79,26),(96,'Tempor Diam LLC',115,35),(97,'Tellus Phasellus Elit Inc.',77,18),(98,'Semper LLC',59,4),(99,'Sed Company',79,46),(100,'Ullamcorper Nisl Corp.',110,25);

INSERT INTO "oscares_melhor_filme" (cd_filme,nr_ano) VALUES (1,2017),(2,2007),(3,2011),(4,2019),(5,1999),(6,2006),(7,2012),(8,2001),(9,2014),(10,1995);
INSERT INTO "oscares_melhor_filme" (cd_filme,nr_ano) VALUES (11,2013),(12,1995),(13,2010),(14,2012),(15,1997),(16,2010),(17,2019),(18,2010),(19,2014),(20,2005);
INSERT INTO "oscares_melhor_filme" (cd_filme,nr_ano) VALUES (21,2008),(22,1997),(23,2017),(24,1999),(25,2012),(26,1995),(27,2020),(28,2007),(29,1995),(30,2015);
INSERT INTO "oscares_melhor_filme" (cd_filme,nr_ano) VALUES (31,2020),(32,1994),(33,2008),(34,1994),(35,1996),(36,1992),(37,1998),(38,2019),(39,1998),(40,1997);
INSERT INTO "oscares_melhor_filme" (cd_filme,nr_ano) VALUES (41,2018),(42,1996),(43,2006),(44,1990),(45,2009),(46,1996),(47,1998),(48,2005),(49,1990),(50,2015);
INSERT INTO "oscares_melhor_filme" (cd_filme,nr_ano) VALUES (51,1995),(52,2020),(53,2005),(54,1999),(55,2000),(56,1997),(57,2011),(58,2006),(59,2014),(60,2015);
INSERT INTO "oscares_melhor_filme" (cd_filme,nr_ano) VALUES (61,2001),(62,2002),(63,1999),(64,2000),(65,2016),(66,1999),(67,2009),(68,2012),(69,2003),(70,1997);
INSERT INTO "oscares_melhor_filme" (cd_filme,nr_ano) VALUES (71,2019),(72,2012),(73,1994),(74,2008),(75,2018),(76,2012),(77,2013),(78,1995),(79,2006),(80,2002);
INSERT INTO "oscares_melhor_filme" (cd_filme,nr_ano) VALUES (81,2002),(82,2001),(83,2017),(84,1992),(85,2005),(86,2013),(87,2016),(88,2013),(89,1995),(90,1998);
INSERT INTO "oscares_melhor_filme" (cd_filme,nr_ano) VALUES (91,2001),(92,2011),(93,1991),(94,2008),(95,1997),(96,2020),(97,2014),(98,2007),(99,1996),(100,2010);

INSERT INTO "atores" (cd_ator,ds_nome) VALUES (1,'Casey'),(2,'Dara'),(3,'Baxter'),(4,'Akeem'),(5,'Elmo'),(6,'Autumn'),(7,'Valentine'),(8,'Ulla'),(9,'Guy'),(10,'Megan');
INSERT INTO "atores" (cd_ator,ds_nome) VALUES (11,'Carissa'),(12,'Keely'),(13,'Uriel'),(14,'Elmo'),(15,'Giacomo'),(16,'Preston'),(17,'Rashad'),(18,'Branden'),(19,'Buffy'),(20,'Sean');
INSERT INTO "atores" (cd_ator,ds_nome) VALUES (21,'Georgia'),(22,'Daquan'),(23,'Raphael'),(24,'Tatyana'),(25,'Rama'),(26,'Raven'),(27,'Summer'),(28,'Barry'),(29,'Zachary'),(30,'Cain');
INSERT INTO "atores" (cd_ator,ds_nome) VALUES (31,'Brady'),(32,'Xantha'),(33,'Lavinia'),(34,'Petra'),(35,'Fulton'),(36,'Christopher'),(37,'Grant'),(38,'Lester'),(39,'Barry'),(40,'Rhonda');
INSERT INTO "atores" (cd_ator,ds_nome) VALUES (41,'Inga'),(42,'Mannix'),(43,'Judah'),(44,'Maya'),(45,'Asher'),(46,'Blossom'),(47,'Shoshana'),(48,'Tatyana'),(49,'Ocean'),(50,'Lester');
INSERT INTO "atores" (cd_ator,ds_nome) VALUES (51,'Dahlia'),(52,'Octavius'),(53,'Danielle'),(54,'Blake'),(55,'Sonya'),(56,'Benjamin'),(57,'Quyn'),(58,'Jayme'),(59,'Brittany'),(60,'Eagan');
INSERT INTO "atores" (cd_ator,ds_nome) VALUES (61,'Macey'),(62,'Sylvia'),(63,'Amena'),(64,'Ariel'),(65,'Minerva'),(66,'Debra'),(67,'Murphy'),(68,'Melissa'),(69,'Yardley'),(70,'Xaviera');
INSERT INTO "atores" (cd_ator,ds_nome) VALUES (71,'Derek'),(72,'Kyle'),(73,'Mara'),(74,'Bruce'),(75,'Amaya'),(76,'Heather'),(77,'Calista'),(78,'Camille'),(79,'Dylan'),(80,'Xena');
INSERT INTO "atores" (cd_ator,ds_nome) VALUES (81,'Veronica'),(82,'Shannon'),(83,'Ramona'),(84,'Hanae'),(85,'Cleo'),(86,'Bree'),(87,'Kasper'),(88,'Bert'),(89,'Sylvester'),(90,'Tana');
INSERT INTO "atores" (cd_ator,ds_nome) VALUES (91,'Herman'),(92,'Owen'),(93,'Garth'),(94,'Xanthus'),(95,'Lane'),(96,'Boris'),(97,'Lynn'),(98,'Chancellor'),(99,'Adam'),(100,'Imelda');

INSERT INTO "elenco" (cd_ator,cd_filme,sn_principal) VALUES (1,1,'Stanley'),(2,2,'Cruz'),(3,3,'Rosa'),(4,4,'Donovan'),(5,5,'Guy'),(6,6,'Bailey'),(7,7,'Merrill'),(8,8,'Chen'),(9,9,'Reed'),(10,10,'Harrington');
INSERT INTO "elenco" (cd_ator,cd_filme,sn_principal) VALUES (11,11,'Hanson'),(12,12,'Lindsay'),(13,13,'Schroeder'),(14,14,'Barton'),(15,15,'Conley'),(16,16,'Russell'),(17,17,'Patton'),(18,18,'Ingram'),(19,19,'Miranda'),(20,20,'Sosa');
INSERT INTO "elenco" (cd_ator,cd_filme,sn_principal) VALUES (21,21,'Mcbride'),(22,22,'Norris'),(23,23,'Bean'),(24,24,'Morrison'),(25,25,'Hayden'),(26,26,'Black'),(27,27,'Carney'),(28,28,'Foreman'),(29,29,'Delacruz'),(30,30,'Downs');
INSERT INTO "elenco" (cd_ator,cd_filme,sn_principal) VALUES (31,31,'Sutton'),(32,32,'Fernandez'),(33,33,'Dennis'),(34,34,'Hernandez'),(35,35,'Tucker'),(36,36,'Martin'),(37,37,'Alvarez'),(38,38,'Acevedo'),(39,39,'Bradley'),(40,40,'Hays');
INSERT INTO "elenco" (cd_ator,cd_filme,sn_principal) VALUES (41,41,'Acevedo'),(42,42,'Holder'),(43,43,'Richardson'),(44,44,'Johnson'),(45,45,'Wilcox'),(46,46,'Spencer'),(47,47,'Jimenez'),(48,48,'Torres'),(49,49,'Woods'),(50,50,'Preston');
INSERT INTO "elenco" (cd_ator,cd_filme,sn_principal) VALUES (51,51,'Ferrell'),(52,52,'Walls'),(53,53,'Reilly'),(54,54,'Velazquez'),(55,55,'Bernard'),(56,56,'Richmond'),(57,57,'Webb'),(58,58,'Roberts'),(59,59,'Watson'),(60,60,'Hopkins');
INSERT INTO "elenco" (cd_ator,cd_filme,sn_principal) VALUES (61,61,'Hahn'),(62,62,'Wall'),(63,63,'Michael'),(64,64,'Tyler'),(65,65,'Mcclure'),(66,66,'Mack'),(67,67,'Bradford'),(68,68,'Arnold'),(69,69,'Hatfield'),(70,70,'Osborne');
INSERT INTO "elenco" (cd_ator,cd_filme,sn_principal) VALUES (71,71,'Thompson'),(72,72,'Ruiz'),(73,73,'Reilly'),(74,74,'Maddox'),(75,75,'Shannon'),(76,76,'Soto'),(77,77,'Pearson'),(78,78,'Macias'),(79,79,'Carney'),(80,80,'Bond');
INSERT INTO "elenco" (cd_ator,cd_filme,sn_principal) VALUES (81,81,'Lewis'),(82,82,'Roman'),(83,83,'Herrera'),(84,84,'Farmer'),(85,85,'Walker'),(86,86,'Summers'),(87,87,'Allison'),(88,88,'Shannon'),(89,89,'Henry'),(90,90,'Reese');
INSERT INTO "elenco" (cd_ator,cd_filme,sn_principal) VALUES (91,91,'Fischer'),(92,92,'Ellison'),(93,93,'Poole'),(94,94,'Norton'),(95,95,'Ferguson'),(96,96,'Wallace'),(97,97,'Brewer'),(98,98,'Allen'),(99,99,'Monroe'),(100,100,'Hendricks');

INSERT INTO "servicos" (cd_servico,ds_nome) VALUES (1,'Stella'),(2,'Sawyer'),(3,'Hedwig'),(4,'Alyssa'),(5,'Priscilla'),(6,'Jack'),(7,'Jasper'),(8,'Hu'),(9,'Brett'),(10,'Carla');
INSERT INTO "servicos" (cd_servico,ds_nome) VALUES (11,'Britanni'),(12,'Lionel'),(13,'Barclay'),(14,'Phyllis'),(15,'Karleigh'),(16,'Mona'),(17,'Dale'),(18,'Pascale'),(19,'Ralph'),(20,'Wyoming');
INSERT INTO "servicos" (cd_servico,ds_nome) VALUES (21,'Charles'),(22,'Clarke'),(23,'Acton'),(24,'Mannix'),(25,'Tobias'),(26,'Ignatius'),(27,'Nero'),(28,'Allegra'),(29,'Brianna'),(30,'Gray');
INSERT INTO "servicos" (cd_servico,ds_nome) VALUES (31,'Elmo'),(32,'Sigourney'),(33,'Francis'),(34,'Cally'),(35,'Quyn'),(36,'Yoko'),(37,'Wyoming'),(38,'Rina'),(39,'Sylvia'),(40,'Ian');
INSERT INTO "servicos" (cd_servico,ds_nome) VALUES (41,'Hedwig'),(42,'Signe'),(43,'Shea'),(44,'Fulton'),(45,'Jermaine'),(46,'Graham'),(47,'James'),(48,'Cheryl'),(49,'Ishmael'),(50,'Ryder');
INSERT INTO "servicos" (cd_servico,ds_nome) VALUES (51,'Lael'),(52,'Chester'),(53,'Yvonne'),(54,'Melyssa'),(55,'Keane'),(56,'Kuame'),(57,'Damon'),(58,'Neil'),(59,'Yardley'),(60,'Meredith');
INSERT INTO "servicos" (cd_servico,ds_nome) VALUES (61,'Kasimir'),(62,'Vivien'),(63,'Dakota'),(64,'Xanthus'),(65,'Davis'),(66,'Barry'),(67,'Regina'),(68,'Erasmus'),(69,'Rudyard'),(70,'Stella');
INSERT INTO "servicos" (cd_servico,ds_nome) VALUES (71,'Fay'),(72,'Kadeem'),(73,'Mark'),(74,'Cleo'),(75,'Nero'),(76,'Jana'),(77,'Amber'),(78,'Alea'),(79,'Allegra'),(80,'Rebecca');
INSERT INTO "servicos" (cd_servico,ds_nome) VALUES (81,'Darrel'),(82,'Garrison'),(83,'Leigh'),(84,'Jin'),(85,'Allen'),(86,'Dylan'),(87,'Francis'),(88,'Lucius'),(89,'Cara'),(90,'Desirae');
INSERT INTO "servicos" (cd_servico,ds_nome) VALUES (91,'Emily'),(92,'Amity'),(93,'Faith'),(94,'Nell'),(95,'Sage'),(96,'Abbot'),(97,'Zelda'),(98,'Armand'),(99,'Chester'),(100,'Ingrid');

INSERT INTO "usuarios" (cd_usuario,ds_nome,ds_senha) VALUES (1,'Castor','Phasellus'),(2,'Teagan','vehicula'),(3,'Cherokee','arcu'),(4,'Gwendolyn','magnis'),(5,'Blaine','dictum.'),(6,'Aspen','Duis'),(7,'Nevada','nec'),(8,'Hiram','nisl.'),(9,'Hedwig','metus'),(10,'Kamal','tellus');
INSERT INTO "usuarios" (cd_usuario,ds_nome,ds_senha) VALUES (11,'Wyatt','tincidunt'),(12,'Orla','Duis'),(13,'Georgia','amet'),(14,'Carl','Suspendisse'),(15,'Kylan','ac'),(16,'Burke','congue,'),(17,'Maia','nunc'),(18,'Wang','convallis'),(19,'Seth','metus.'),(20,'Zenaida','amet,');
INSERT INTO "usuarios" (cd_usuario,ds_nome,ds_senha) VALUES (21,'Alexander','Curabitur'),(22,'Walker','magna'),(23,'Hamilton','turpis'),(24,'Zelenia','lobortis.'),(25,'Kenneth','ipsum'),(26,'Velma','Donec'),(27,'Tatyana','mus.'),(28,'Blythe','mauris'),(29,'Cody','odio.'),(30,'Colin','fermentum');
INSERT INTO "usuarios" (cd_usuario,ds_nome,ds_senha) VALUES (31,'Kadeem','ut'),(32,'Lucius','dolor'),(33,'Nathan','nibh'),(34,'Geraldine','mauris'),(35,'Alexandra','arcu.'),(36,'Josiah','dolor.'),(37,'Drake','Ut'),(38,'Cecilia','a'),(39,'Tara','purus.'),(40,'Teegan','nisl.');
INSERT INTO "usuarios" (cd_usuario,ds_nome,ds_senha) VALUES (41,'Trevor','lobortis'),(42,'Elijah','Vivamus'),(43,'Summer','Sed'),(44,'Martin','Nullam'),(45,'Rhiannon','Proin'),(46,'Xerxes','lectus'),(47,'Maxwell','ante'),(48,'Quinlan','ornare.'),(49,'Theodore','dictum'),(50,'Hyacinth','sed');
INSERT INTO "usuarios" (cd_usuario,ds_nome,ds_senha) VALUES (51,'Sean','sed,'),(52,'Caryn','velit'),(53,'Abigail','aliquam'),(54,'Oren','amet'),(55,'Xena','commodo'),(56,'Hedy','molestie.'),(57,'Marny','metus.'),(58,'Mannix','tempus'),(59,'Arden','amet,'),(60,'Addison','malesuada');
INSERT INTO "usuarios" (cd_usuario,ds_nome,ds_senha) VALUES (61,'Timon','odio'),(62,'Arden','Morbi'),(63,'Ashton','sapien'),(64,'Nita','a'),(65,'Skyler','dictum'),(66,'Jane','ipsum'),(67,'Aiko','magnis'),(68,'Lev','odio'),(69,'Jared','Integer'),(70,'Christine','rutrum.');
INSERT INTO "usuarios" (cd_usuario,ds_nome,ds_senha) VALUES (71,'Veronica','cubilia'),(72,'Jolene','mauris'),(73,'Phillip','lobortis'),(74,'Hamilton','velit'),(75,'Colin','Nulla'),(76,'Whoopi','Mauris'),(77,'Hall','In'),(78,'Kalia','erat.'),(79,'Raja','in'),(80,'Geraldine','magna');
INSERT INTO "usuarios" (cd_usuario,ds_nome,ds_senha) VALUES (81,'Joseph','Mauris'),(82,'Serina','semper'),(83,'Zachery','vel,'),(84,'Vielka','lacinia'),(85,'Chaney','sociis'),(86,'Sierra','vehicula.'),(87,'Pearl','aliquam'),(88,'Dacey','nibh'),(89,'Sydney','quis'),(90,'Hasad','egestas');
INSERT INTO "usuarios" (cd_usuario,ds_nome,ds_senha) VALUES (91,'Ahmed','ut,'),(92,'Micah','scelerisque'),(93,'Nicholas','Pellentesque'),(94,'Warren','faucibus'),(95,'Galvin','elit'),(96,'Travis','lectus,'),(97,'Ahmed','mollis.'),(98,'Tanner','fermentum'),(99,'Catherine','lacinia.'),(100,'Caesar','in');

INSERT INTO "servicos_autorizados" (cd_usuario,cd_servico,sn_autorizado) VALUES (1,1,1),(2,2,30),(3,3,16),(4,4,8),(5,5,22),(6,6,1),(7,7,6),(8,8,30),(9,9,15),(10,10,15);
INSERT INTO "servicos_autorizados" (cd_usuario,cd_servico,sn_autorizado) VALUES (11,11,13),(12,12,29),(13,13,12),(14,14,10),(15,15,19),(16,16,18),(17,17,15),(18,18,10),(19,19,3),(20,20,23);
INSERT INTO "servicos_autorizados" (cd_usuario,cd_servico,sn_autorizado) VALUES (21,21,11),(22,22,1),(23,23,10),(24,24,10),(25,25,17),(26,26,10),(27,27,20),(28,28,13),(29,29,4),(30,30,16);
INSERT INTO "servicos_autorizados" (cd_usuario,cd_servico,sn_autorizado) VALUES (31,31,16),(32,32,22),(33,33,2),(34,34,23),(35,35,2),(36,36,3),(37,37,5),(38,38,6),(39,39,29),(40,40,7);
INSERT INTO "servicos_autorizados" (cd_usuario,cd_servico,sn_autorizado) VALUES (41,41,3),(42,42,13),(43,43,3),(44,44,30),(45,45,16),(46,46,30),(47,47,30),(48,48,10),(49,49,13),(50,50,19);
INSERT INTO "servicos_autorizados" (cd_usuario,cd_servico,sn_autorizado) VALUES (51,51,5),(52,52,12),(53,53,2),(54,54,13),(55,55,19),(56,56,20),(57,57,26),(58,58,8),(59,59,15),(60,60,4);
INSERT INTO "servicos_autorizados" (cd_usuario,cd_servico,sn_autorizado) VALUES (61,61,7),(62,62,29),(63,63,28),(64,64,7),(65,65,24),(66,66,19),(67,67,2),(68,68,11),(69,69,22),(70,70,29);
INSERT INTO "servicos_autorizados" (cd_usuario,cd_servico,sn_autorizado) VALUES (71,71,28),(72,72,6),(73,73,4),(74,74,15),(75,75,16),(76,76,11),(77,77,23),(78,78,7),(79,79,23),(80,80,25);
INSERT INTO "servicos_autorizados" (cd_usuario,cd_servico,sn_autorizado) VALUES (81,81,7),(82,82,30),(83,83,21),(84,84,12),(85,85,23),(86,86,10),(87,87,29),(88,88,17),(89,89,16),(90,90,1);
INSERT INTO "servicos_autorizados" (cd_usuario,cd_servico,sn_autorizado) VALUES (91,91,20),(92,92,16),(93,93,17),(94,94,15),(95,95,6),(96,96,27),(97,97,13),(98,98,17),(99,99,1),(100,100,29);

INSERT INTO "servicos_usados" (cd_usuario,cd_servico,dt_momento) VALUES (1,1,'09-06-20'),(2,2,'05-23-20'),(3,3,'12-17-20'),(4,4,'10-19-20'),(5,5,'11-22-20'),(6,6,'09-17-21'),(7,7,'11-30-20'),(8,8,'03-27-21'),(9,9,'07-08-20'),(10,10,'12-02-19');
INSERT INTO "servicos_usados" (cd_usuario,cd_servico,dt_momento) VALUES (11,11,'01-21-21'),(12,12,'04-12-21'),(13,13,'06-04-21'),(14,14,'07-03-21'),(15,15,'02-05-21'),(16,16,'07-06-20'),(17,17,'03-31-21'),(18,18,'09-01-21'),(19,19,'03-02-21'),(20,20,'07-10-20');
INSERT INTO "servicos_usados" (cd_usuario,cd_servico,dt_momento) VALUES (21,21,'03-30-20'),(22,22,'08-05-21'),(23,23,'06-28-20'),(24,24,'08-23-21'),(25,25,'02-24-21'),(26,26,'05-26-20'),(27,27,'01-29-21'),(28,28,'09-21-20'),(29,29,'10-31-21'),(30,30,'08-17-21');
INSERT INTO "servicos_usados" (cd_usuario,cd_servico,dt_momento) VALUES (31,31,'07-02-20'),(32,32,'02-07-20'),(33,33,'07-11-21'),(34,34,'12-11-19'),(35,35,'03-08-20'),(36,36,'11-06-21'),(37,37,'10-29-20'),(38,38,'10-17-20'),(39,39,'09-25-20'),(40,40,'02-03-21');
INSERT INTO "servicos_usados" (cd_usuario,cd_servico,dt_momento) VALUES (41,41,'07-23-21'),(42,42,'12-18-20'),(43,43,'08-09-21'),(44,44,'10-23-21'),(45,45,'06-26-20'),(46,46,'08-27-20'),(47,47,'07-08-21'),(48,48,'11-02-20'),(49,49,'10-12-20'),(50,50,'08-15-20');
INSERT INTO "servicos_usados" (cd_usuario,cd_servico,dt_momento) VALUES (51,51,'06-05-20'),(52,52,'11-20-19'),(53,53,'10-22-21'),(54,54,'03-18-21'),(55,55,'09-24-21'),(56,56,'02-20-21'),(57,57,'01-23-20'),(58,58,'07-27-21'),(59,59,'07-09-20'),(60,60,'01-07-21');
INSERT INTO "servicos_usados" (cd_usuario,cd_servico,dt_momento) VALUES (61,61,'04-09-21'),(62,62,'01-18-20'),(63,63,'05-13-20'),(64,64,'02-28-20'),(65,65,'01-24-21'),(66,66,'06-19-20'),(67,67,'01-30-21'),(68,68,'03-07-20'),(69,69,'11-25-19'),(70,70,'07-13-20');
INSERT INTO "servicos_usados" (cd_usuario,cd_servico,dt_momento) VALUES (71,71,'09-03-21'),(72,72,'07-17-21'),(73,73,'06-26-21'),(74,74,'11-07-21'),(75,75,'02-12-20'),(76,76,'11-05-21'),(77,77,'05-30-21'),(78,78,'05-05-20'),(79,79,'05-28-20'),(80,80,'10-07-20');
INSERT INTO "servicos_usados" (cd_usuario,cd_servico,dt_momento) VALUES (81,81,'01-26-21'),(82,82,'03-12-21'),(83,83,'06-13-21'),(84,84,'09-15-20'),(85,85,'12-28-20'),(86,86,'04-17-21'),(87,87,'01-09-20'),(88,88,'02-08-20'),(89,89,'04-27-21'),(90,90,'08-29-21');
INSERT INTO "servicos_usados" (cd_usuario,cd_servico,dt_momento) VALUES (91,91,'06-25-20'),(92,92,'12-23-20'),(93,93,'09-02-20'),(94,94,'12-21-20'),(95,95,'10-01-20'),(96,96,'10-06-21'),(97,97,'01-28-21'),(98,98,'03-08-20'),(99,99,'01-25-20'),(100,100,'06-17-21');

INSERT INTO "filmes_assistidos" (cd_usuario,cd_filme,dt_momento) VALUES (1,1,'09-26-21'),(2,2,'09-13-20'),(3,3,'05-21-20'),(4,4,'02-28-21'),(5,5,'03-25-20'),(6,6,'08-10-21'),(7,7,'04-12-20'),(8,8,'10-26-20'),(9,9,'07-14-20'),(10,10,'03-27-21');
INSERT INTO "filmes_assistidos" (cd_usuario,cd_filme,dt_momento) VALUES (11,11,'01-18-21'),(12,12,'04-15-20'),(13,13,'03-17-21'),(14,14,'10-03-20'),(15,15,'03-14-20'),(16,16,'05-11-21'),(17,17,'05-18-21'),(18,18,'04-18-20'),(19,19,'03-19-21'),(20,20,'11-16-20');
INSERT INTO "filmes_assistidos" (cd_usuario,cd_filme,dt_momento) VALUES (21,21,'04-14-21'),(22,22,'04-02-20'),(23,23,'05-13-21'),(24,24,'07-01-20'),(25,25,'10-04-20'),(26,26,'01-14-20'),(27,27,'10-07-20'),(28,28,'09-25-20'),(29,29,'05-29-20'),(30,30,'07-20-21');
INSERT INTO "filmes_assistidos" (cd_usuario,cd_filme,dt_momento) VALUES (31,31,'03-05-21'),(32,32,'12-29-19'),(33,33,'04-26-20'),(34,34,'04-15-21'),(35,35,'12-09-19'),(36,36,'08-23-21'),(37,37,'04-20-21'),(38,38,'08-04-20'),(39,39,'08-22-20'),(40,40,'10-11-20');
INSERT INTO "filmes_assistidos" (cd_usuario,cd_filme,dt_momento) VALUES (41,41,'01-29-20'),(42,42,'08-19-21'),(43,43,'08-23-21'),(44,44,'01-05-20'),(45,45,'10-20-21'),(46,46,'04-19-20'),(47,47,'03-04-20'),(48,48,'02-26-21'),(49,49,'07-23-21'),(50,50,'10-02-20');
INSERT INTO "filmes_assistidos" (cd_usuario,cd_filme,dt_momento) VALUES (51,51,'08-07-21'),(52,52,'11-09-21'),(53,53,'03-06-21'),(54,54,'07-26-21'),(55,55,'08-14-21'),(56,56,'08-08-20'),(57,57,'09-13-20'),(58,58,'01-02-20'),(59,59,'09-27-20'),(60,60,'01-22-21');
INSERT INTO "filmes_assistidos" (cd_usuario,cd_filme,dt_momento) VALUES (61,61,'08-08-21'),(62,62,'06-13-21'),(63,63,'08-26-21'),(64,64,'10-25-21'),(65,65,'03-23-21'),(66,66,'02-11-21'),(67,67,'05-09-21'),(68,68,'11-29-20'),(69,69,'04-22-21'),(70,70,'08-01-20');
INSERT INTO "filmes_assistidos" (cd_usuario,cd_filme,dt_momento) VALUES (71,71,'09-19-20'),(72,72,'08-05-21'),(73,73,'07-05-21'),(74,74,'11-06-21'),(75,75,'07-07-20'),(76,76,'09-14-20'),(77,77,'08-01-20'),(78,78,'12-11-20'),(79,79,'02-09-20'),(80,80,'08-08-21');
INSERT INTO "filmes_assistidos" (cd_usuario,cd_filme,dt_momento) VALUES (81,81,'12-02-19'),(82,82,'08-30-21'),(83,83,'09-25-21'),(84,84,'02-10-20'),(85,85,'11-16-21'),(86,86,'09-25-20'),(87,87,'01-02-20'),(88,88,'10-16-20'),(89,89,'06-06-21'),(90,90,'06-19-20');
INSERT INTO "filmes_assistidos" (cd_usuario,cd_filme,dt_momento) VALUES (91,91,'12-14-19'),(92,92,'08-10-21'),(93,93,'06-12-20'),(94,94,'07-10-20'),(95,95,'06-19-21'),(96,96,'11-16-20'),(97,97,'01-19-21'),(98,98,'10-08-20'),(99,99,'05-02-20'),(100,100,'03-13-20');

INSERT INTO "classificacoes" (cd_filme,cd_usuario,sn_gostou,dt_momento) VALUES (1,1,2,'05-04-21'),(2,2,7,'08-06-21'),(3,3,5,'12-03-19'),(4,4,4,'05-29-21'),(5,5,1,'11-13-21'),(6,6,1,'01-13-21'),(7,7,10,'08-02-21'),(8,8,10,'01-22-21'),(9,9,8,'12-31-20'),(10,10,10,'11-20-21');
INSERT INTO "classificacoes" (cd_filme,cd_usuario,sn_gostou,dt_momento) VALUES (11,11,4,'07-29-20'),(12,12,7,'09-14-20'),(13,13,7,'04-15-20'),(14,14,9,'12-02-19'),(15,15,4,'07-18-20'),(16,16,8,'10-04-20'),(17,17,5,'10-05-21'),(18,18,2,'10-04-21'),(19,19,4,'07-08-21'),(20,20,8,'02-05-20');
INSERT INTO "classificacoes" (cd_filme,cd_usuario,sn_gostou,dt_momento) VALUES (21,21,7,'01-15-21'),(22,22,2,'06-11-20'),(23,23,2,'05-26-20'),(24,24,5,'03-25-21'),(25,25,3,'09-23-20'),(26,26,4,'07-04-21'),(27,27,5,'04-27-20'),(28,28,4,'06-05-20'),(29,29,5,'08-02-20'),(30,30,8,'04-12-20');
INSERT INTO "classificacoes" (cd_filme,cd_usuario,sn_gostou,dt_momento) VALUES (31,31,9,'03-12-20'),(32,32,4,'04-27-20'),(33,33,7,'11-04-20'),(34,34,8,'11-13-21'),(35,35,1,'05-23-21'),(36,36,7,'08-14-20'),(37,37,3,'06-28-20'),(38,38,3,'11-01-21'),(39,39,6,'11-17-20'),(40,40,8,'01-19-21');
INSERT INTO "classificacoes" (cd_filme,cd_usuario,sn_gostou,dt_momento) VALUES (41,41,6,'03-28-20'),(42,42,3,'04-30-20'),(43,43,2,'07-06-20'),(44,44,8,'03-31-20'),(45,45,10,'03-03-21'),(46,46,10,'10-31-21'),(47,47,6,'05-25-20'),(48,48,5,'01-22-21'),(49,49,5,'10-07-21'),(50,50,7,'06-01-21');
INSERT INTO "classificacoes" (cd_filme,cd_usuario,sn_gostou,dt_momento) VALUES (51,51,7,'11-08-20'),(52,52,8,'07-03-20'),(53,53,10,'08-20-20'),(54,54,7,'05-08-20'),(55,55,5,'10-17-20'),(56,56,1,'09-14-21'),(57,57,5,'10-19-21'),(58,58,8,'12-25-20'),(59,59,7,'11-15-20'),(60,60,3,'10-15-20');
INSERT INTO "classificacoes" (cd_filme,cd_usuario,sn_gostou,dt_momento) VALUES (61,61,9,'08-28-20'),(62,62,3,'11-15-20'),(63,63,10,'09-10-20'),(64,64,5,'01-05-20'),(65,65,3,'02-18-20'),(66,66,1,'07-10-20'),(67,67,9,'10-07-21'),(68,68,5,'07-15-21'),(69,69,5,'04-04-20'),(70,70,2,'08-20-20');
INSERT INTO "classificacoes" (cd_filme,cd_usuario,sn_gostou,dt_momento) VALUES (71,71,4,'11-15-21'),(72,72,7,'06-28-20'),(73,73,9,'11-26-20'),(74,74,3,'05-08-21'),(75,75,4,'03-28-20'),(76,76,7,'01-22-21'),(77,77,7,'06-18-20'),(78,78,6,'11-30-19'),(79,79,10,'06-25-21'),(80,80,10,'03-10-20');
INSERT INTO "classificacoes" (cd_filme,cd_usuario,sn_gostou,dt_momento) VALUES (81,81,2,'04-30-20'),(82,82,8,'10-25-20'),(83,83,7,'11-10-20'),(84,84,5,'02-15-21'),(85,85,10,'06-25-21'),(86,86,1,'01-07-21'),(87,87,7,'07-24-20'),(88,88,5,'06-22-21'),(89,89,10,'07-03-21'),(90,90,9,'11-02-21');
INSERT INTO "classificacoes" (cd_filme,cd_usuario,sn_gostou,dt_momento) VALUES (91,91,7,'11-05-20'),(92,92,1,'07-05-21'),(93,93,7,'03-15-20'),(94,94,10,'05-13-21'),(95,95,9,'10-13-20'),(96,96,2,'11-20-20'),(97,97,6,'05-26-20'),(98,98,6,'04-09-21'),(99,99,8,'03-02-20'),(100,100,9,'03-12-21');
