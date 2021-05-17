USE copa;



-- inserindo dados na tabela cartao_tipos - INICIO
INSERT INTO cartao_tipos
	(cartao_tipo_id, cor)
VALUES 
	(1,'amarelo'),
	(2,'segundo_amarelo'),
	(3,'vermelho');
-- inserindo dados na tabela cartao_tipos - FIM


-- Inserindo dados na tabela escalacao_situacoes - INICIO
INSERT INTO escalacao_situacoes
	(escalacao_situacao_id, nome)
VALUES 
	(1,'titular'),
	(2,'reserva');
-- Inserindo dados na tabela escalacao_situacoes - FIM


-- inserindo dados na tabela grupos - INICIO
INSERT INTO grupos 
	(grupo_id, nome)
VALUES 
	(1,'A'),
	(2,'B'),
	(3,'C'),
	(4,'D'),
	(5,'E'),
	(6,'F'),
	(7,'G'),
	(8,'H');
-- inserindo dados na tabela grupos - FIM


-- inserindo dados na tabela locais - INICIO
INSERT INTO locais 
	(local_id, cidade, estadio)
VALUES 
	(1,'sao paulo','arena morumbi'),
	(2,'rio de janeiro','maracanã'),
	(3,'belo horizonte','mineirão'),
	(4,'brasilia','mane garrinhca'),
	(5,'porto alegre ','beira rio'),
    (6,'natal','arena das dunas');
    
-- inserindo dados na tabela locais - FIM

-- inserindo dados na tabela jogos - INICIO
INSERT INTO jogos 
	(jogo_id, data, hora, local_id, grupo_id)
VALUES
	(1,'2014-06-12','17:00:00',2,1),
	(2,'2014-06-13','21:00:00',1,1),
	(3,'2014-06-13','18:00:00',3,2),
	(4,'2014-06-13','20:00:00',2,2),
    (5,'2014-06-15','14:00:00',6,1),
    (6,'2014-06-16','21:00:00',5,2),
    (7,'2014-06-18','20:00:00',1,2),
    (8,'2014-06-20','16:00:00',4,1);
-- inserindo dados na tabela jogos - FIM

-- inserindo dados na tabela partida_situacoes - INICIO
INSERT INTO partida_situacoes
	(partida_situacao_id, situacao)
VALUES 
	(1,'vitoria'),
	(2,'empate'),
    (3,'derrota');
-- inserindo dados na tabela partida_situacoes - FIM

-- inserindo dados na tabela selecoes - INICIO
INSERT INTO selecoes
	(selecao_id, nome, grupo_id)
VALUES 
	(1,'Brasil',1),
	(2,'Croacia',1),
	(3,'Camarões',1),
	(4,'Mexico',1),
	(5,'Australia',2),
	(6,'Chile',2),
	(7,'Holanda',2),
	(8,'Espanha',2),
	(9,'Colombia',3),
	(10,'Grécia',3),
	(11,'Costa do marfim',3),
	(12,'Japão',3),
	(13,'Costa Rica',4),
	(14,'Inglaterra',4),
	(15,'Itália',4),
	(16,'Uruguai',4),
	(17,'Equador',5),
	(18,'França',5),
	(19,'Honduras',5),
	(20,'Suiça',5),
	(21,'Argentina',6),
	(22,'Bosnia e Herzegovina',6),
	(23,'Irã',6),
	(24,'Nigéria',6),
	(25,'Alemanha',7),
	(26,'Gana',7),
	(27,'Portugal',7),
	(28,'Estados Unidos',7),
	(29,'Argélia',8),
	(30,'Bélgica',8),
	(31,'Russia',8),
	(32,'Coréia do Sul',8);
-- inserindo dados na tabela selecoes - FIM

-- inserindo dados na tabela jogadores - INICIO
INSERT INTO jogadores 
	(jogador_id, nome, selecao_id)
VALUES (1,'zico',1),(2,'messi',1),(3,'eder',1),(4,'falcao',1),(5,'socrates',1),(6,'adriano',1),(7,'romario',1),(8,'rivaldo',1),(9,'renato',1),(10,'junior',1),(11,'ederaldo',1),(12,'fernando',1),(13,'jose',1),(14,'ronaldo',1),(15,'ronaldinho',1),(16,'josue',1),(17,'oscar',1),(18,'wagner',1),(19,'jefferson',1),(20,'osvaldo',1),(21,'hernando',1),(22,'serginho',1),(23,'mario',1),(24,'kiko',2),(25,'fabio',2),(26,'fabiano',2),(27,'giovani',2),(28,'dario',2),(29,'dinho',2),(30,'sergio',2),(31,'fernandinho',2),(32,'caue',2),(33,'vito',2),(34,'nando',2),(35,'bruno',2),(36,'carlos',2),(37,'carlinhos',2),(38,'breno',2),(39,'silvano',2),(40,'nino',2),(41,'ze',2),(42,'antonio',2),(43,'cassio',2),(44,'bernardo',2),(45,'daniel',2),(46,'quentin',2),(47,'Halsy',3),(48,'Ephraim',3),(49,'Warde',3),(50,'Tad',3),(51,'Romain',3),(52,'Thane',3),(53,'Gasper',3),(54,'Udale',3),(55,'Alden',3),(56,'Ephrayim',3),(57,'Jarid',3),(58,'Ric',3),(59,'Glen',3),(60,'Correy',3),(61,'Kendell',3),(62,'Kimbell',3),(63,'Nappy',3),(64,'Emmett',3),(65,'Verney',3),(66,'Bob',3),(67,'Rene',3),(68,'Gaelan',3),(69,'Rich',3),(70,'Adolf',4),(71,'Rog',4),(72,'Farris',4),(73,'Artemas',4),(74,'Horatio',4),(75,'Weidar',4),(76,'Tuckie',4),(77,'Lennie',4),(78,'Niki',4),(79,'Ransom',4),(80,'Kerwinn',4),(81,'Tristan',4),(82,'Frederic',4),(83,'Travus',4),(84,'Merrel',4),(85,'Bradley',4),(86,'Ozzie',4),(87,'Holden',4),(88,'Giffer',4),(89,'Emmott',4),(90,'Bronny',4),(91,'Eddy',4),(92,'Darb',4),(93,'Burk',5),(94,'Wang',5),(95,'Mendie',5),(96,'Edmund',5),(97,'Benedetto',5),(98,'Mikol',5),(99,'Chrissy',5),(100,'Marlow',5),(101,'Felix',5),(102,'Bing',5),(103,'Eddie',5),(104,'Guthry',5),(105,'Ambrosius',5),(106,'Currie',5),(107,'Randal',5),(108,'Niles',5),(109,'Temp',5),(110,'Yorker',5),(111,'Asa',5),(112,'Orlando',5),(113,'Bar',5),(114,'Arron',5),(115,'Vick',5),(116,'Gayle',6),(117,'Hall',6),(118,'Zeb',6),(119,'Taylor',6),(120,'Orland',6),(121,'Braden',6),(122,'Luca',6),(123,'Verney',6),(124,'Hurley',6),(125,'Rodge',6),(126,'Mikael',6),(127,'Douglas',6),(128,'Jeremie',6),(129,'Meyer',6),(130,'Jay',6),(131,'Thorsten',6),(132,'Hyatt',6),(133,'Pancho',6),(134,'Alfredo',6),(135,'Sullivan',6),(136,'Bryant',6),(137,'Conant',6),(138,'Willy',6),(139,'Olivero',7),(140,'Morris',7),(141,'Archibold',7),(142,'Kale',7),(143,'De witt',7),(144,'Humphrey',7),(145,'Alex',7),(146,'Bernard',7),(147,'Vidovik',7),(148,'Brander',7),(149,'Hayward',7),(150,'Ive',7),(151,'Amby',7),(152,'Inglis',7),(153,'Solly',7),(154,'Daryl',7),(155,'Glenn',7),(156,'Bryanty',7),(157,'Trstram',7),(158,'Judas',7),(159,'Stan',7),(160,'Leopold',7),(161,'Chick',7),(162,'Hanan',8),(163,'Carleton',8),(164,'Georg',8),(165,'Norrie',8),(166,'Taite',8),(167,'Barton',8),(168,'David',8),(169,'Stavro',8),(170,'Kristofer',8),(171,'Pieter',8),(172,'Chandler',8),(173,'Caddric',8),(174,'Bevan',8),(175,'Jamil',8),(176,'Pedro',8),(177,'Aube',8),(178,'Wilmar',8),(179,'Charley',8),(180,'Stu',8),(181,'Giffie',8),(182,'Jervis',8),(183,'Thorny',8),(184,'Markos',8),(185,'Kimble',9),(186,'Dannel',9),(187,'Algernon',9),(188,'Lon',9),(189,'Alexandro',9),(190,'Shepard',9),(191,'Humphrey',9),(192,'Filippo',9),(193,'Jasen',9),(194,'Klement',9),(195,'Jonah',9),(196,'Ethelbert',9),(197,'Oates',9),(198,'Grant',9),(199,'Raphael',9),(200,'Paolo',9),(201,'Brade',9),(202,'Virgil',9),(203,'Freddy',9),(204,'Aubert',9),(205,'Hadlee',9),(206,'Durante',9),(207,'Casey',9),(208,'Gill',10),(209,'Stanislaus',10),(210,'Hymie',10),(211,'Levy',10),(212,'Dun',10),(213,'Boone',10),(214,'Meryl',10),(215,'Friedrich',10),(216,'Timothee',10),(217,'Waring',10),(218,'Jereme',10),(219,'Hershel',10),(220,'Francklyn',10),(221,'Vaughn',10),(222,'Weylin',10),(223,'Josh',10),(224,'Erny',10),(225,'Burlie',10),(226,'Hanan',10),(227,'Stanly',10),(228,'Axe',10),(229,'Kelbee',10),(230,'Bev',10),(231,'Malachi',11),(232,'Cameron',11),(233,'Prince',11),(234,'Renault',11),(235,'Addison',11),(236,'Gasparo',11),(237,'Thorin',11),(238,'Prince',11),(239,'Meredith',11),(240,'Sayers',11),(241,'Lindsey',11),(242,'Toddy',11),(243,'Sid',11),(244,'Tann',11),(245,'Talbot',11),(246,'Michail',11),(247,'Marchall',11),(248,'Reidar',11),(249,'Massimo',11),(250,'Haley',11),(251,'Saxon',11),(252,'Allard',11),(253,'Kendrick',11),(254,'Erhart',12),(255,'Lou',12),(256,'Gonzales',12),(257,'Enrico',12),(258,'Anders',12),(259,'Archie',12),(260,'Wainwright',12),(261,'Emlyn',12),(262,'Alaster',12),(263,'Faulkner',12),(264,'Peirce',12),(265,'Rene',12),(266,'Tripp',12),(267,'Burk',12),(268,'Sandro',12),(269,'Christos',12),(270,'Hunter',12),(271,'Ingram',12),(272,'Kerr',12),(273,'Gardiner',12),(274,'Sonny',12),(275,'Wilfred',12),(276,'Matty',12),(277,'Fabio',13),(278,'Levin',13),(279,'Bryant',13),(280,'Horst',13),(281,'Andros',13),(282,'Janek',13),(283,'Dorie',13),(284,'Francesco',13),(285,'Tore',13),(286,'Urbano',13),(287,'Virge',13),(288,'Lou',13),(289,'Eberto',13),(290,'Bartolomeo',13),(291,'Phillipe',13),(292,'Colver',13),(293,'Clayton',13),(294,'Tait',13),(295,'Ambrosius',13),(296,'Pren',13),(297,'Torry',13),(298,'Garvy',13),(299,'Olivero',13),(300,'Peyter',14),(301,'Link',14),(302,'Garrard',14),(303,'Garwood',14),(304,'Jose',14),(305,'Paulie',14),(306,'Jecho',14),(307,'Waylin',14),(308,'Zacharia',14),(309,'Claiborn',14),(310,'Federico',14),(311,'Tades',14),(312,'Osbourn',14),(313,'Fran',14),(314,'Trumaine',14),(315,'Putnam',14),(316,'Quill',14),(317,'Kristoffer',14),(318,'Horatio',14),(319,'Augusto',14),(320,'Alleyn',14),(321,'Pierson',14),(322,'Adrien',14),(323,'Judd',15),(324,'Heath',15),(325,'Warde',15),(326,'Gifford',15),(327,'Giordano',15),(328,'Giovanni',15),(329,'Berky',15),(330,'Thebault',15),(331,'Garwin',15),(332,'Sydney',15),(333,'Tuck',15),(334,'Alyosha',15),(335,'Avrom',15),(336,'Jared',15),(337,'Davidson',15),(338,'Clare',15),(339,'Anatole',15),(340,'Braden',15),(341,'Meredith',15),(342,'Buddie',15),(343,'Cassie',15),(344,'Iorgo',15),(345,'Lion',16),(346,'Panchito',16),(347,'Marsh',16),(348,'John',16),(349,'Virge',16),(350,'Bendick',16),(351,'Gardiner',16),(352,'Jarrid',16),(353,'Mahmoud',16),(354,'Judas',16),(355,'Dimitry',16),(356,'Errol',16),(357,'Paxton',16),(358,'Maxie',16),(359,'Thayne',16),(360,'Lazar',16),(361,'Errol',16),(362,'Chic',16),(363,'Gavan',16),(364,'Reinhard',16),(365,'Zerk',16),(366,'Barnard',16),(367,'Berky',16),(368,'Finley',17),(369,'Boy',17),(370,'Callean',17),(371,'Bondie',17),(372,'Garrett',17),(373,'Bing',17),(374,'Shepherd',17),(375,'Dmitri',17),(376,'Mort',17),(377,'Louie',17),(378,'Wilmer',17),(379,'Angus',17),(380,'Corty',17),(381,'Bryn',17),(382,'Rudie',17),(383,'Myrwyn',17),(384,'Elwyn',17),(385,'Wes',17),(386,'Abran',17),(387,'Fee',17),(388,'Quent',17),(389,'Ricardo',17),(390,'Connie',17),(391,'Alphard',18),(392,'Haslett',18),(393,'Sol',18),(394,'Sayre',18),(395,'Nickolai',18),(396,'Paolo',18),(397,'Hobey',18),(398,'Krishna',18),(399,'Isaak',18),(400,'Culver',18),(401,'Kimbell',18),(402,'Arlan',18),(403,'Klemens',18),(404,'Moses',18),(405,'Lem',18),(406,'Rockey',18),(407,'Renard',18),(408,'Ambrosius',18),(409,'Tabby',18),(410,'Cordie',18),(411,'Job',18),(412,'Coleman',18),(413,'Beaufort',18),(414,'Arie',19),(415,'Pierce',19),(416,'Olly',19),(417,'Leonid',19),(418,'Shepard',19),(419,'Geoffrey',19),(420,'Jon',19),(421,'Hermon',19),(422,'Giorgio',19),(423,'Duncan',19),(424,'Mitchael',19),(425,'Araldo',19),(426,'Sigismund',19),(427,'Aubert',19),(428,'Woodie',19),(429,'Francklyn',19),(430,'Biron',19),(431,'Jarid',19),(432,'Heindrick',19),(433,'Foss',19),(434,'Ive',19),(435,'Vidovik',19),(436,'Ruddy',19),(437,'Arlen',20),(438,'Franz',20),(439,'Erwin',20),(440,'Giacobo',20),(441,'Darbee',20),(442,'Quentin',20),(443,'Anatol',20),(444,'Brandon',20),(445,'Matthaeus',20),(446,'Cesar',20),(447,'Sydney',20),(448,'Ambrose',20),(449,'Rolland',20),(450,'Stanislas',20),(451,'Mikel',20),(452,'Cos',20),(453,'Gare',20),(454,'Lewie',20),(455,'Derward',20),(456,'Esme',20),(457,'Arri',20),(458,'Gardie',20),(459,'Ermanno',20),(460,'Lodovico',21),(461,'Julian',21),(462,'Myrwyn',21),(463,'Chancey',21),(464,'Aldus',21),(465,'Killian',21),(466,'Glen',21),(467,'Morrie',21),(468,'Terence',21),(469,'Timoteo',21),(470,'Padriac',21),(471,'Norry',21),(472,'Percival',21),(473,'Gasper',21),(474,'Nolan',21),(475,'Linoel',21),(476,'Richart',21),(477,'King',21),(478,'Willdon',21),(479,'Cristobal',21),(480,'Jdavie',21),(481,'Reinaldo',21),(482,'Roderick',21),(483,'Jarad',22),(484,'Gabriel',22),(485,'Ezequiel',22),(486,'Raul',22),(487,'Bill',22),(488,'Cirstoforo',22),(489,'Hardy',22),(490,'Earle',22),(491,'Colet',22),(492,'Allin',22),(493,'Angelico',22),(494,'Johann',22),(495,'Erich',22),(496,'Briant',22),(497,'Barr',22),(498,'Wilbur',22),(499,'Cash',22),(500,'Clair',22),(501,'Giles',22),(502,'Dal',22),(503,'Muhammad',22),(504,'Lin',22),(505,'Ange',22),(506,'Andy',23),(507,'Gawen',23),(508,'Farlay',23),(509,'Marietta',23),(510,'Tyson',23),(511,'Shaine',23),(512,'Quincy',23),(513,'Vincenty',23),(514,'Stavro',23),(515,'Wheeler',23),(516,'Sargent',23),(517,'Jamie',23),(518,'Rutger',23),(519,'Hurleigh',23),(520,'Thibaud',23),(521,'Ash',23),(522,'Donny',23),(523,'Bertrand',23),(524,'Christy',23),(525,'Enrique',23),(526,'Caleb',23),(527,'Haywood',23),(528,'Terry',23),(529,'Torrin',24),(530,'Fabe',24),(531,'Benjie',24),(532,'Mickie',24),(533,'Kendricks',24),(534,'Hugues',24),(535,'Shellysheldon',24),(536,'Nikki',24),(537,'Fabe',24),(538,'Addie',24),(539,'Nil',24),(540,'Cole',24),(541,'Dolph',24),(542,'Chrissie',24),(543,'Theodor',24),(544,'Zerk',24),(545,'Teodoro',24),(546,'Perren',24),(547,'Stefan',24),(548,'Brody',24),(549,'Stearne',24),(550,'Lovell',24),(551,'Stanwood',24),(552,'Spense',25),(553,'Emery',25),(554,'Archy',25),(555,'Jozef',25),(556,'Hale',25),(557,'Abraham',25),(558,'Hurleigh',25),(559,'Cullan',25),(560,'Aharon',25),(561,'Carlin',25),(562,'Royall',25),(563,'Elvin',25),(564,'Stevy',25),(565,'Dunstan',25),(566,'Horatio',25),(567,'Chas',25),(568,'Scottie',25),(569,'Robers',25),(570,'Mendie',25),(571,'Reinaldos',25),(572,'Baudoin',25),(573,'Jeremiah',25),(574,'Nico',25),(575,'Base',26),(576,'Nilson',26),(577,'Julian',26),(578,'Vite',26),(579,'Tate',26),(580,'Shem',26),(581,'Hasty',26),(582,'Troy',26),(583,'Bartie',26),(584,'Russ',26),(585,'Albrecht',26),(586,'Rodrique',26),(587,'Farlie',26),(588,'Tome',26),(589,'Eward',26),(590,'Stearn',26),(591,'Julie',26),(592,'Parsifal',26),(593,'Fredrick',26),(594,'Wyndham',26),(595,'Raoul',26),(596,'Urbanus',26),(597,'Warren',26),(598,'Rolland',27),(599,'Calhoun',27),(600,'Cass',27),(601,'Lannie',27),(602,'Stanly',27),(603,'Mart',27),(604,'Giusto',27),(605,'Rey',27),(606,'Renard',27),(607,'Kelsey',27),(608,'Torrence',27),(609,'Peyter',27),(610,'Lorens',27),(611,'Ron',27),(612,'Mordecai',27),(613,'Pennie',27),(614,'David',27),(615,'Clive',27),(616,'Mohandis',27),(617,'Rand',27),(618,'Zollie',27),(619,'Iggy',27),(620,'Leicester',27),(621,'Ware',28),(622,'Dell',28),(623,'Lind',28),(624,'Lev',28),(625,'Glyn',28),(626,'Justus',28),(627,'Sarge',28),(628,'Howie',28),(629,'Carleton',28),(630,'Jaime',28),(631,'Onfre',28),(632,'Garner',28),(633,'Nikolaus',28),(634,'Sigismondo',28),(635,'Nolan',28),(636,'Jerrold',28),(637,'Cullie',28),(638,'Elihu',28),(639,'Lyle',28),(640,'Efren',28),(641,'Vaughn',28),(642,'Elvis',28),(643,'Haslett',28),(644,'Thaddus',29),(645,'Bastien',29),(646,'Kellby',29),(647,'Toddie',29),(648,'Yance',29),(649,'Pat',29),(650,'Alwyn',29),(651,'Hogan',29),(652,'Wyatan',29),(653,'Kincaid',29),(654,'Cooper',29),(655,'Ashley',29),(656,'Addison',29),(657,'Tate',29),(658,'Herbie',29),(659,'Davy',29),(660,'Bastian',29),(661,'Nikola',29),(662,'Cyrill',29),(663,'Peter',29),(664,'Lionel',29),(665,'Yance',29),(666,'Yule',29),(667,'Hamlen',30),(668,'Glendon',30),(669,'Heinrik',30),(670,'Merry',30),(671,'Keene',30),(672,'Bent',30),(673,'Jules',30),(674,'Terry',30),(675,'Isidro',30),(676,'Haleigh',30),(677,'Niko',30),(678,'Barri',30),(679,'Rowland',30),(680,'Preston',30),(681,'Kendal',30),(682,'Codi',30),(683,'Barris',30),(684,'Cornell',30),(685,'Adelbert',30),(686,'Lancelot',30),(687,'Kale',30),(688,'Bastien',30),(689,'Bruce',30),(690,'Sayres',31),(691,'Fritz',31),(692,'Tedman',31),(693,'Bowie',31),(694,'Kevon',31),(695,'Barri',31),(696,'Dav',31),(697,'Jamison',31),(698,'Radcliffe',31),(699,'Louis',31),(700,'Kleon',31),(701,'Keen',31),(702,'Barn',31),(703,'Salmon',31),(704,'Nahum',31),(705,'Beltran',31),(706,'Berk',31),(707,'Onofredo',31),(708,'Everard',31),(709,'Teodoro',31),(710,'Abbot',31),(711,'Flint',31),(712,'Jean',31),(713,'Gordie',32),(714,'Chandler',32),(715,'Lawry',32),(716,'Fonz',32),(717,'Romain',32),(718,'Lennard',32),(719,'Morgun',32),(720,'Marijn',32),(721,'Jamil',32),(722,'Bryanty',32),(723,'Boone',32),(724,'Welby',32),(725,'See',32),(726,'Mordecai',32),(727,'Culley',32),(728,'Rolph',32),(729,'Gaby',32),(730,'Pernell',32),(731,'Gill',32),(732,'Luciano',32),(733,'Paulinho',32),(734,'Fred',32),(735,'Mauricio',32),(736,'Lino',32);
-- inserindo dados na tabela jogadores - FIM

-- inserindo dados na tabela escalacoes - INICIO
INSERT INTO escalacoes 
	(jogo_id, jogador_id, situacao_id)
VALUES
	(1,1,1),(1,2,1),(1,3,1),(1,4,1),(1,5,1),(1,6,1),(1,7,1),(1,8,1),(1,9,1),(1,10,1),(1,11,1),(1,12,2),(1,13,2),(1,14,2),(1,15,2),(1,16,2),(1,17,2),(1,18,2),(1,19,2),(1,20,2),(1,21,2),(1,22,2),(1,23,2),(1,24,1),(1,25,1),(1,26,1),(1,27,1),(1,28,1),(1,29,1),(1,30,1),(1,31,1),(1,32,1),(1,33,1),(1,34,1),(1,35,2),(1,36,2),(1,37,2),(1,38,2),(1,39,2),(1,40,2),(1,41,2),(1,42,2),(1,43,2),(1,44,2),(1,45,2),(1,46,2),
	(2,70,1),(2,71,1),(2,72,1),(2,73,1),(2,74,1),(2,75,1),(2,76,1),(2,77,1),(2,78,1),(2,79,2),(2,80,2),(2,81,2),(2,82,2),(2,83,2),(2,84,2),(2,85,2),(2,86,2),(2,87,2),(2,88,2),(2,89,2),(2,90,2),(2,91,2),(2,92,2),(2,47,1),(2,48,1),(2,49,1),(2,50,1),(2,51,1),(2,52,1),(2,53,1),(2,54,1),(2,55,1),(2,56,1),(2,57,1),(2,58,2),(2,59,2),(2,60,2),(2,61,2),(2,62,2),(2,63,2),(2,64,2),(2,65,2),(2,66,2),(2,67,2),(2,68,2),(2,69,2),
	(3,162,1),(3,163,1),(3,164,1),(3,165,1),(3,166,1),(3,167,1),(3,168,1),(3,169,1),(3,170,1),(3,171,1),(3,172,1),(3,173,2),(3,174,2),(3,175,2),(3,176,2),(3,177,2),(3,178,2),(3,179,2),(3,180,2),(3,181,2),(3,182,2),(3,183,2),(3,184,2),(3,139,1),(3,140,1),(3,141,1),(3,142,1),(3,143,1),(3,144,1),(3,145,1),(3,146,1),(3,147,1),(3,148,1),(3,149,1),(3,150,2),(3,151,2),(3,152,2),(3,153,2),(3,154,2),(3,155,2),(3,156,2),(3,157,2),(3,158,2),(3,159,2),(3,160,2),(3,161,2),
    (4,116,1),(4,117,1),(4,118,1),(4,119,1),(4,120,1),(4,121,1),(4,122,1),(4,123,1),(4,124,1),(4,125,1),(4,126,1),(4,127,2),(4,128,2),(4,129,2),(4,130,2),(4,131,2),(4,132,2),(4,133,2),(4,134,2),(4,135,2),(4,136,2),(4,137,2),(4,138,2),(4,93,1),(4,94,1),(4,95,1),(4,96,1),(4,97,1),(4,98,1),(4,99,1),(4,100,1),(4,101,1),(4,102,1),(4,103,1),(4,104,2),(4,105,2),(4,106,2),(4,107,2),(4,108,2),(4,109,2),(4,110,2),(4,111,2),(4,112,2),(4,113,2),(4,114,2),(4,115,2),
	(5,1,1),(5,2,1),(5,3,1),(5,4,1),(5,5,1),(5,6,1),(5,7,1),(5,8,1),(5,9,1),(5,10,1),(5,11,1),(5,12,2),(5,13,2),(5,14,2),(5,15,2),(5,16,2),(5,17,2),(5,18,2),(5,19,2),(5,20,2),(5,21,2),(5,22,2),(5,23,2),(5,70,1),(5,71,1),(5,72,1),(5,73,1),(5,74,1),(5,75,1),(5,76,1),(5,77,1),(5,78,1),(5,79,1),(5,80,1),(5,81,2),(5,82,2),(5,83,2),(5,84,2),(5,85,2),(5,86,2),(5,87,2),(5,88,2),(5,89,2),(5,90,2),(5,91,2),(5,92,2),
    (6,93,1),(6,94,1),(6,95,1),(6,96,1),(6,97,1),(6,98,1),(6,99,1),(6,100,1),(6,101,1),(6,102,1),(6,103,1),(6,104,2),(6,105,2),(6,106,2),(6,107,2),(6,108,2),(6,109,2),(6,110,2),(6,111,2),(6,112,2),(6,113,2),(6,114,2),(6,115,2),(6,139,1),(6,140,1),(6,141,1),(6,142,1),(6,143,1),(6,144,1),(6,145,1),(6,146,1),(6,147,1),(6,148,1),(6,149,1),(6,150,2),(6,151,2),(6,152,2),(6,153,2),(6,154,2),(6,155,2),(6,156,2),(6,157,2),(6,158,2),(6,159,2),(6,160,2),(6,161,2),
    (7,162,1),(7,163,1),(7,164,1),(7,165,1),(7,166,1),(7,167,1),(7,168,1),(7,169,1),(7,170,1),(7,171,1),(7,172,1),(7,173,2),(7,174,2),(7,175,2),(7,176,2),(7,177,2),(7,178,2),(7,179,2),(7,180,2),(7,181,2),(7,182,2),(7,183,2),(7,184,2),(7,116,1),(7,117,1),(7,118,1),(7,119,1),(7,120,1),(7,121,1),(7,122,1),(7,123,1),(7,124,1),(7,125,1),(7,126,1),(7,127,2),(7,128,2),(7,129,2),(7,130,2),(7,131,2),(7,132,2),(7,133,2),(7,134,2),(7,135,2),(7,136,2),(7,137,2),(7,138,2),
    (8,47,1),(8,48,1),(8,49,1),(8,50,1),(8,51,1),(8,52,1),(8,53,1),(8,54,1),(8,55,1),(8,56,1),(8,57,1),(8,58,2),(8,59,2),(8,60,2),(8,61,2),(8,62,2),(8,63,2),(8,64,2),(8,65,2),(8,66,2),(8,67,2),(8,68,2),(8,69,2),(8,24,1),(8,25,1),(8,26,1),(8,27,1),(8,28,1),(8,29,1),(8,30,1),(8,31,1),(8,32,1),(8,33,1),(8,34,1),(8,35,2),(8,36,2),(8,37,2),(8,38,2),(8,39,2),(8,40,2),(8,41,2),(8,42,2),(8,43,2),(8,44,2),(8,45,2),(8,46,2);
-- inserindo dados na tabela escalacoes - FIM


-- inserindo dados na tabela pontuacoes - INICIO
INSERT INTO pontuacoes 
	(pontuacao_id, numero_jogos, numero_vitorias, numero_empates, numero_derrotas, gols_pro, gols_contra, saldo_gols, pontos, selecao_id)
VALUES 
	(1,1,1,0,0,3,1,2,3,1),
	(2,1,1,0,1,1,3,-2,0,2),
	(3,1,1,0,0,1,0,1,3,4),
	(4,1,0,0,1,0,1,-1,0,3),
    (5,1,0,0,1,1,5,-4,0,8),
    (6,1,1,0,0,5,1,4,3,7),
    (7,1,1,0,0,3,1,2,3,6),
    (8,1,0,0,1,1,3,-2,0,5),
    (9,1,1,0,0,3,0,3,3,9),
    (10,1,0,0,1,0,3,-3,0,10),
    (11,1,0,0,1,1,3,-2,0,16),
    (12,1,1,0,0,3,1,2,3,13),
    (13,1,0,0,1,1,2,-1,0,14),
    (14,1,1,0,0,2,1,1,3,15);
-- inserindo dados na tabela pontuacoes - FIM


-- inserindo dados na tabela substituicao_condicoes - INICIO
INSERT INTO substituicao_condicoes 
	(substituicao_condicao_id, condicao)
VALUES 
	(1,'sai'),
	(2,'entra');
-- inserindo dados na tabela substituicao_condicoes - FIM


-- inserindo dados na tabela substituicoes - INICIO
INSERT INTO substituicoes 
	(substituicao_condicao_id, jogo_id, jogador_id)
VALUES 
	(1,1,5),
	(2,1,22),
    (1,1,4),
    (2,1,23),
    (1,1,26),
    (2,1,45),
    (1,2,76),
    (2,2,92),
    (1,2,55),
    (2,2,68),
    (1,3,162),
    (2,3,183),
    (1,5,5),
    (2,5,20);
-- inserindo dados na tabela substituicoes - FIM


-- inserindo dados na tabela partidas - INICIO
INSERT INTO partidas
	(selecao_id, jogo_id, gols_feitos, gols_levados, partida_situacao_id)
VALUES
	(1,1,3,1,1),
	(2,1,1,3,3),
	(4,2,1,0,1),
	(3,2,0,1,3),
    (8,3,1,5,3),
    (7,3,5,1,1),
    (6,4,3,1,1),
    (5,4,1,3,3),
    (1,5,0,0,2),
    (4,5,0,0,2),
    (5,6,2,3,3),
    (7,6,3,2,1),
    (8,7,0,2,3),
    (6,7,2,0,1),
    (3,8,0,4,3),
    (2,8,4,0,1);
    -- inserindo dados na tabela partidas - FIM

-- inserindo dados na tabela cartoes - INICIO
INSERT INTO cartoes 
	(cartao_tipo_id, jogo_id, jogador_id)
VALUES
	(1,1,6),
    (1,1,8),
    (1,1,10),
    (2,1,10),
    (2,1,6),
    (3,1,24),
    (1,2,72),
    (1,2,76),
    (1,2,50),
    (2,2,50),
    (1,2,55),
    (1,3,163),
    (2,3,163),
    (3,3,165),
    (1,3,166),
    (1,3,139),
    (2,3,139),
    (1,3,140),
    (3,3,143),
    (1,3,144),
    (1,4,117),
    (3,4,120),
    (1,4,121),
    (1,4,93),
    (2,4,93),
    (3,4,97),
    (1,5,5),
    (1,5,2),
    (3,5,6),
    (1,5,72),
    (2,5,72),
    (1,5,74),
    (1,5,75),
    (1,6,94),
    (1,6,140),
    (1,7,165),
    (2,7,165),
    (1,7,118),
    (1,8,49),
    (1,8,28);
-- inserindo dados na tabela cartoes - FIM









