CREATE DATABASE  IF NOT EXISTS `communityalert` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `communityalert`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: communityalert
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cantones`
--

DROP TABLE IF EXISTS `cantones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cantones` (
  `id_canton` int(11) NOT NULL,
  `nombre_canton` varchar(50) DEFAULT NULL,
  `id_provincia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_canton`),
  KEY `fk_cantones_provincias` (`id_provincia`),
  CONSTRAINT `fk_cantones_provincias` FOREIGN KEY (`id_provincia`) REFERENCES `provincias` (`id_provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cantones`
--

LOCK TABLES `cantones` WRITE;
/*!40000 ALTER TABLE `cantones` DISABLE KEYS */;
INSERT INTO `cantones` VALUES (1,'Central',1),(2,'Escazú',1),(3,'Desamparados',1),(4,'Puriscal',1),(5,'Tarrazú',1),(6,'Aserrí',1),(7,'Mora',1),(8,'Goicoechea',1),(9,'Santa Ana',1),(10,'Alajuelita',1),(11,'Vázquez De Coronado',1),(12,'Acosta',1),(13,'Tibás',1),(14,'Moravia',1),(15,'Montes De Oca',1),(16,'Turrubares',1),(17,'Dota',1),(18,'Curridabat',1),(19,'Pérez Zeledón',1),(20,'León Cortés Castro',1),(21,'Central',2),(22,'San Ramón',2),(23,'Grecia',2),(24,'San Mateo',2),(25,'Atenas',2),(26,'Naranjo',2),(27,'Palmares',2),(28,'Poás',2),(29,'Orotina',2),(30,'San Carlos',2),(31,'Zarcero',2),(32,'Sarchí',2),(33,'Upala',2),(34,'Los Chiles',2),(35,'Guatuso',2),(36,'Río Cuarto',2),(37,'Central',3),(38,'Paraíso',3),(39,'La Unión',3),(40,'Jiménez',3),(41,'Turrialba',3),(42,'Alvarado',3),(43,'Oreamuno',3),(44,'El Guarco',3),(45,'Central',4),(46,'Barva',4),(47,'Santo Domingo',4),(48,'Santa Barbara',4),(49,'San Rafael',4),(50,'San Isidro',4),(51,'Belén',4),(52,'Flores',4),(53,'San Pablo',4),(54,'Sarapiquí',4),(55,'Liberia',5),(56,'Nicoya',5),(57,'Santa Cruz',5),(58,'Bagaces',5),(59,'Carrillo',5),(60,'Cañas',5),(61,'Abangares',5),(62,'Tilarán',5),(63,'Nandayure',5),(64,'La Cruz',5),(65,'Hojancha',5),(66,'Central',6),(67,'Esparza',6),(68,'Buenos Aires',6),(69,'Montes De Oro',6),(70,'Osa',6),(71,'Quepos',6),(72,'Golfito',6),(73,'Coto Brus',6),(74,'Parrita',6),(75,'Corredores',6),(76,'Garabito',6),(77,'Central',7),(78,'Pococí',7),(79,'Siquirres',7),(80,'Talamanca',7),(81,'Matina',7),(82,'Guácimo',7);
/*!40000 ALTER TABLE `cantones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoriapublicacion`
--

DROP TABLE IF EXISTS `categoriapublicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoriapublicacion` (
  `id_categoria_publicacion` int(11) NOT NULL,
  `nombre_categoria_publicacion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_categoria_publicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoriapublicacion`
--

LOCK TABLES `categoriapublicacion` WRITE;
/*!40000 ALTER TABLE `categoriapublicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoriapublicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios` (
  `id_comentario` int(11) NOT NULL AUTO_INCREMENT,
  `contenido` text NOT NULL,
  `fecha` datetime NOT NULL,
  `id_publicacion` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_comentario`),
  KEY `fk_comentarios_publicaciones` (`id_publicacion`),
  KEY `fk_comentarios_usuarios` (`id_usuario`),
  CONSTRAINT `fk_comentarios_publicaciones` FOREIGN KEY (`id_publicacion`) REFERENCES `publicaciones` (`id_publicacion`),
  CONSTRAINT `fk_comentarios_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distritos`
--

DROP TABLE IF EXISTS `distritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distritos` (
  `id_distrito` int(11) NOT NULL,
  `nombre_distrito` varchar(50) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `icono` varchar(255) DEFAULT NULL,
  `id_canton` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_distrito`),
  KEY `fk_distritos_cantones` (`id_canton`),
  CONSTRAINT `fk_distritos_cantones` FOREIGN KEY (`id_canton`) REFERENCES `cantones` (`id_canton`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distritos`
--

LOCK TABLES `distritos` WRITE;
/*!40000 ALTER TABLE `distritos` DISABLE KEYS */;
INSERT INTO `distritos` VALUES (1,'Carmen',NULL,NULL,NULL,1),(2,'Merced',NULL,NULL,NULL,1),(3,'Hospital',NULL,NULL,NULL,1),(4,'Catedral',NULL,NULL,NULL,1),(5,'Zapote',NULL,NULL,NULL,1),(6,'San Francisco De Dos Rios',NULL,NULL,NULL,1),(7,'Uruca',NULL,NULL,NULL,1),(8,'Mata Redonda',NULL,NULL,NULL,1),(9,'Pavas',NULL,NULL,NULL,1),(10,'Hatillo',NULL,NULL,NULL,1),(11,'San Sebastián',NULL,NULL,NULL,1),(12,'Escazú',NULL,NULL,NULL,2),(13,'San Antonio',NULL,NULL,NULL,2),(14,'San Rafael',NULL,NULL,NULL,2),(15,'Desamparados',NULL,NULL,NULL,3),(16,'San Miguel',NULL,NULL,NULL,3),(17,'San Juan De Dios',NULL,NULL,NULL,3),(18,'San Rafael Arriba',NULL,NULL,NULL,3),(19,'San Rafael Abajo',NULL,NULL,NULL,3),(20,'San Antonio',NULL,NULL,NULL,3),(21,'Frailes',NULL,NULL,NULL,3),(22,'Patarra',NULL,NULL,NULL,3),(23,'San Cristobal',NULL,NULL,NULL,3),(24,'Rosario',NULL,NULL,NULL,3),(25,'Damas',NULL,NULL,NULL,3),(26,'Gravilias',NULL,NULL,NULL,3),(27,'Los Guido',NULL,NULL,NULL,3),(28,'Santiago',NULL,NULL,NULL,4),(29,'Mercedes Sur',NULL,NULL,NULL,4),(30,'Barbacoas',NULL,NULL,NULL,4),(31,'Grifo Alto',NULL,NULL,NULL,4),(32,'San Rafael',NULL,NULL,NULL,4),(33,'Candelarita',NULL,NULL,NULL,4),(34,'Desamparaditos',NULL,NULL,NULL,4),(35,'San Antonio',NULL,NULL,NULL,4),(36,'Chires',NULL,NULL,NULL,4),(37,'San Marcos',NULL,NULL,NULL,5),(38,'San Lorenzo',NULL,NULL,NULL,5),(39,'San Carlos',NULL,NULL,NULL,5),(40,'Aserrí',NULL,NULL,NULL,6),(41,'Tarbaca',NULL,NULL,NULL,6),(42,'Vuelta De Jorco',NULL,NULL,NULL,6),(43,'San Gabriel',NULL,NULL,NULL,6),(44,'Legua',NULL,NULL,NULL,6),(45,'Monterrey',NULL,NULL,NULL,6),(46,'Salitrillos',NULL,NULL,NULL,6),(47,'Colón',NULL,NULL,NULL,7),(48,'Guayabo',NULL,NULL,NULL,7),(49,'Tabarcia',NULL,NULL,NULL,7),(50,'Piedras Negras',NULL,NULL,NULL,7),(51,'Picagres',NULL,NULL,NULL,7),(52,'Jaris',NULL,NULL,NULL,7),(53,'Guadalupe',NULL,NULL,NULL,8),(54,'San Francisco',NULL,NULL,NULL,8),(55,'Calle Blancos',NULL,NULL,NULL,8),(56,'Mata De Platano',NULL,NULL,NULL,8),(57,'Ipís',NULL,NULL,NULL,8),(58,'Rancho Redondo',NULL,NULL,NULL,8),(59,'Purral',NULL,NULL,NULL,8),(60,'Santa Ana',NULL,NULL,NULL,9),(61,'Salitral',NULL,NULL,NULL,9),(62,'Pozos',NULL,NULL,NULL,9),(63,'Uruca',NULL,NULL,NULL,9),(64,'Piedades',NULL,NULL,NULL,9),(65,'Brasil',NULL,NULL,NULL,9),(66,'Alajuelita',NULL,NULL,NULL,10),(67,'San Josecito',NULL,NULL,NULL,10),(68,'San Antonio',NULL,NULL,NULL,10),(69,'Concepción',NULL,NULL,NULL,10),(70,'San Felipe',NULL,NULL,NULL,10),(71,'San Isidro',NULL,NULL,NULL,11),(72,'San Rafael',NULL,NULL,NULL,11),(73,'Dulce Nombre De Jesus',NULL,NULL,NULL,11),(74,'Patalillo',NULL,NULL,NULL,11),(75,'Cascajal',NULL,NULL,NULL,11),(76,'San Ignacio',NULL,NULL,NULL,12),(77,'Guaitil',NULL,NULL,NULL,12),(78,'Palmichal',NULL,NULL,NULL,12),(79,'Cangrejal',NULL,NULL,NULL,12),(80,'Sabanillas',NULL,NULL,NULL,12),(81,'San Juan',NULL,NULL,NULL,13),(82,'Cinco Esquinas',NULL,NULL,NULL,13),(83,'Anselmo Llorente',NULL,NULL,NULL,13),(84,'Leon Xiii',NULL,NULL,NULL,13),(85,'Colima',NULL,NULL,NULL,13),(86,'San Vicente',NULL,NULL,NULL,14),(87,'San Jeronimo',NULL,NULL,NULL,14),(88,'La Trinidad',NULL,NULL,NULL,14),(89,'San Pedro',NULL,NULL,NULL,15),(90,'Sabanilla',NULL,NULL,NULL,15),(91,'Mercedes',NULL,NULL,NULL,15),(92,'San Rafael',NULL,NULL,NULL,15),(93,'San Pablo',NULL,NULL,NULL,16),(94,'San Pedro',NULL,NULL,NULL,16),(95,'San Juan De Mata',NULL,NULL,NULL,16),(96,'San Luis',NULL,NULL,NULL,16),(97,'Carara',NULL,NULL,NULL,16),(98,'Santa María',NULL,NULL,NULL,17),(99,'Jardin',NULL,NULL,NULL,17),(100,'Copey',NULL,NULL,NULL,17),(101,'Curridabat',NULL,NULL,NULL,18),(102,'Granadilla',NULL,NULL,NULL,18),(103,'Sanchez',NULL,NULL,NULL,18),(104,'Tirrases',NULL,NULL,NULL,18),(105,'San Isidro De El General',NULL,NULL,NULL,19),(106,'El General',NULL,NULL,NULL,19),(107,'Daniel Flores',NULL,NULL,NULL,19),(108,'Rivas',NULL,NULL,NULL,19),(109,'San Pedro',NULL,NULL,NULL,19),(110,'Platanares',NULL,NULL,NULL,19),(111,'Pejibaye',NULL,NULL,NULL,19),(112,'Cajon',NULL,NULL,NULL,19),(113,'Baru',NULL,NULL,NULL,19),(114,'Rio Nuevo',NULL,NULL,NULL,19),(115,'Páramo',NULL,NULL,NULL,19),(116,'San Pablo',NULL,NULL,NULL,20),(117,'San Andres',NULL,NULL,NULL,20),(118,'Llano Bonito',NULL,NULL,NULL,20),(119,'San Isidro',NULL,NULL,NULL,20),(120,'Santa Cruz',NULL,NULL,NULL,20),(121,'San Antonio',NULL,NULL,NULL,20),(122,'Alajuela',NULL,NULL,NULL,21),(123,'San José',NULL,NULL,NULL,21),(124,'Carrizal',NULL,NULL,NULL,21),(125,'San Antonio',NULL,NULL,NULL,21),(126,'Guácima',NULL,NULL,NULL,21),(127,'San Isidro',NULL,NULL,NULL,21),(128,'Sabanilla',NULL,NULL,NULL,21),(129,'San Rafael',NULL,NULL,NULL,21),(130,'Rio Segundo',NULL,NULL,NULL,21),(131,'Desamparados',NULL,NULL,NULL,21),(132,'Turrucares',NULL,NULL,NULL,21),(133,'Tambor',NULL,NULL,NULL,21),(134,'Garita',NULL,NULL,NULL,21),(135,'Sarapiquí',NULL,NULL,NULL,21),(136,'San Ramón',NULL,NULL,NULL,22),(137,'Santiago',NULL,NULL,NULL,22),(138,'San Juan',NULL,NULL,NULL,22),(139,'Piedades Norte',NULL,NULL,NULL,22),(140,'Piedades Sur',NULL,NULL,NULL,22),(141,'San Rafael',NULL,NULL,NULL,22),(142,'San Isidro',NULL,NULL,NULL,22),(143,'Angeles',NULL,NULL,NULL,22),(144,'Alfaro',NULL,NULL,NULL,22),(145,'Volio',NULL,NULL,NULL,22),(146,'Concepción',NULL,NULL,NULL,22),(147,'Zapotal',NULL,NULL,NULL,22),(148,'Peñas Blancas',NULL,NULL,NULL,22),(149,'San Lorenzo',NULL,NULL,NULL,22),(150,'Grecia',NULL,NULL,NULL,23),(151,'San Isidro',NULL,NULL,NULL,23),(152,'San José',NULL,NULL,NULL,23),(153,'San Roque',NULL,NULL,NULL,23),(154,'Tacares',NULL,NULL,NULL,23),(155,'Rio Cuarto',NULL,NULL,NULL,23),(156,'Puente De Piedra',NULL,NULL,NULL,23),(157,'Bolivar',NULL,NULL,NULL,23),(158,'San Mateo',NULL,NULL,NULL,24),(159,'Desmonte',NULL,NULL,NULL,24),(160,'Jesús María',NULL,NULL,NULL,24),(161,'Labrador',NULL,NULL,NULL,24),(162,'Atenas',NULL,NULL,NULL,25),(163,'Jesús',NULL,NULL,NULL,25),(164,'Mercedes',NULL,NULL,NULL,25),(165,'San Isidro',NULL,NULL,NULL,25),(166,'Concepción',NULL,NULL,NULL,25),(167,'San José',NULL,NULL,NULL,25),(168,'Santa Eulalia',NULL,NULL,NULL,25),(169,'Escobal',NULL,NULL,NULL,25),(170,'Naranjo',NULL,NULL,NULL,26),(171,'San Juan',NULL,NULL,NULL,26),(172,'San Miguel',NULL,NULL,NULL,26),(173,'Palmitos',NULL,NULL,NULL,26),(174,'El Rosario',NULL,NULL,NULL,26),(175,'San José',NULL,NULL,NULL,26),(176,'Cirrí Sur',NULL,NULL,NULL,26),(177,'San Jerónimo',NULL,NULL,NULL,26),(178,'Palmares',NULL,NULL,NULL,27),(179,'Zaragoza',NULL,NULL,NULL,27),(180,'Buenos Aires',NULL,NULL,NULL,27),(181,'Santiago',NULL,NULL,NULL,27),(182,'Candelaria',NULL,NULL,NULL,27),(183,'Esquipulas',NULL,NULL,NULL,27),(184,'La Granja',NULL,NULL,NULL,27),(185,'San Pedro',NULL,NULL,NULL,28),(186,'San Juan',NULL,NULL,NULL,28),(187,'San Rafael',NULL,NULL,NULL,28),(188,'Carrillos',NULL,NULL,NULL,28),(189,'Sabana Redonda',NULL,NULL,NULL,28),(190,'Orotina',NULL,NULL,NULL,29),(191,'El Mastate',NULL,NULL,NULL,29),(192,'Hacienda Vieja',NULL,NULL,NULL,29),(193,'Coyolar',NULL,NULL,NULL,29),(194,'La Ceiba',NULL,NULL,NULL,29),(195,'Quesada',NULL,NULL,NULL,30),(196,'Florencia',NULL,NULL,NULL,30),(197,'Buenavista',NULL,NULL,NULL,30),(198,'Aguas Zarcas',NULL,NULL,NULL,30),(199,'Venecia',NULL,NULL,NULL,30),(200,'Pital',NULL,NULL,NULL,30),(201,'La Fortuna',NULL,NULL,NULL,30),(202,'La Tigra',NULL,NULL,NULL,30),(203,'La Palmera',NULL,NULL,NULL,30),(204,'Venado',NULL,NULL,NULL,30),(205,'Cutris',NULL,NULL,NULL,30),(206,'Monterrey',NULL,NULL,NULL,30),(207,'Pocosol',NULL,NULL,NULL,30),(208,'Zarcero',NULL,NULL,NULL,31),(209,'Laguna',NULL,NULL,NULL,31),(210,'Tapesco',NULL,NULL,NULL,31),(211,'Guadalupe',NULL,NULL,NULL,31),(212,'Palmira',NULL,NULL,NULL,31),(213,'Zapote',NULL,NULL,NULL,31),(214,'Brisas',NULL,NULL,NULL,31),(215,'Sarchí Norte',NULL,NULL,NULL,32),(216,'Sarchí Sur',NULL,NULL,NULL,32),(217,'Toro Amarillo',NULL,NULL,NULL,32),(218,'San Pedro',NULL,NULL,NULL,32),(219,'Rodriguez',NULL,NULL,NULL,32),(220,'Upala',NULL,NULL,NULL,33),(221,'Aguas Claras',NULL,NULL,NULL,33),(222,'San José o Pizote',NULL,NULL,NULL,33),(223,'Bijagua',NULL,NULL,NULL,33),(224,'Delicias',NULL,NULL,NULL,33),(225,'Dos Rios',NULL,NULL,NULL,33),(226,'Yolillal',NULL,NULL,NULL,33),(227,'Canalete',NULL,NULL,NULL,33),(228,'Los Chiles',NULL,NULL,NULL,34),(229,'Caño Negro',NULL,NULL,NULL,34),(230,'El Amparo',NULL,NULL,NULL,34),(231,'San Jorge',NULL,NULL,NULL,34),(232,'San Rafael',NULL,NULL,NULL,35),(233,'Buenavista',NULL,NULL,NULL,35),(234,'Cote',NULL,NULL,NULL,35),(235,'Katira',NULL,NULL,NULL,35),(236,'Río Cuarto',NULL,NULL,NULL,36),(237,'Santa Rita',NULL,NULL,NULL,36),(238,'Santa Isabel',NULL,NULL,NULL,36),(239,'Oriental',NULL,NULL,NULL,37),(240,'Occidental',NULL,NULL,NULL,37),(241,'Carmen',NULL,NULL,NULL,37),(242,'San Nicolás',NULL,NULL,NULL,37),(243,'Aguacaliente o San Francisco',NULL,NULL,NULL,37),(244,'Guadalupe o Arenilla',NULL,NULL,NULL,37),(245,'Corralillo',NULL,NULL,NULL,37),(246,'Tierra Blanca',NULL,NULL,NULL,37),(247,'Dulce Nombre',NULL,NULL,NULL,37),(248,'Llano Grande',NULL,NULL,NULL,37),(249,'Quebradilla',NULL,NULL,NULL,37),(250,'Paraiso',NULL,NULL,NULL,38),(251,'Santiago',NULL,NULL,NULL,38),(252,'Orosi',NULL,NULL,NULL,38),(253,'Cachí',NULL,NULL,NULL,38),(254,'Llanos de Santa Lucía',NULL,NULL,NULL,38),(255,'Tres Rios',NULL,NULL,NULL,39),(256,'San Diego',NULL,NULL,NULL,39),(257,'San Juan',NULL,NULL,NULL,39),(258,'San Rafael',NULL,NULL,NULL,39),(259,'Concepción',NULL,NULL,NULL,39),(260,'Dulce Nombre',NULL,NULL,NULL,39),(261,'San Ramón',NULL,NULL,NULL,39),(262,'Rio Azul',NULL,NULL,NULL,39),(263,'Juan Viñas',NULL,NULL,NULL,40),(264,'Tucurrique',NULL,NULL,NULL,40),(265,'Pejibaye',NULL,NULL,NULL,40),(266,'Turrialba',NULL,NULL,NULL,41),(267,'La Suiza',NULL,NULL,NULL,41),(268,'Peralta',NULL,NULL,NULL,41),(269,'Santa Cruz',NULL,NULL,NULL,41),(270,'Santa Teresita',NULL,NULL,NULL,41),(271,'Pavones',NULL,NULL,NULL,41),(272,'Tuis',NULL,NULL,NULL,41),(273,'Tayutic',NULL,NULL,NULL,41),(274,'Santa Rosa',NULL,NULL,NULL,41),(275,'Tres Equis',NULL,NULL,NULL,41),(276,'La Isabel',NULL,NULL,NULL,41),(277,'Chirripó',NULL,NULL,NULL,41),(278,'Pacayas',NULL,NULL,NULL,42),(279,'Cervantes',NULL,NULL,NULL,42),(280,'Capellades',NULL,NULL,NULL,42),(281,'San Rafael',NULL,NULL,NULL,43),(282,'Cot',NULL,NULL,NULL,43),(283,'Potrero Cerrado',NULL,NULL,NULL,43),(284,'Cipreses',NULL,NULL,NULL,43),(285,'Santa Rosa',NULL,NULL,NULL,43),(286,'El Tejar',NULL,NULL,NULL,44),(287,'San Isidro',NULL,NULL,NULL,44),(288,'Tobosi',NULL,NULL,NULL,44),(289,'Patio De Agua',NULL,NULL,NULL,44),(290,'Heredia',NULL,NULL,NULL,45),(291,'Mercedes',NULL,NULL,NULL,45),(292,'San Francisco',NULL,NULL,NULL,45),(293,'Ulloa',NULL,NULL,NULL,45),(294,'Varablanca',NULL,NULL,NULL,45),(295,'Barva',NULL,NULL,NULL,46),(296,'San Pedro',NULL,NULL,NULL,46),(297,'San Pablo',NULL,NULL,NULL,46),(298,'San Roque',NULL,NULL,NULL,46),(299,'Santa Lucía',NULL,NULL,NULL,46),(300,'San José de la Montaña',NULL,NULL,NULL,46),(301,'Santo Domingo',NULL,NULL,NULL,47),(302,'San Vicente',NULL,NULL,NULL,47),(303,'San Miguel',NULL,NULL,NULL,47),(304,'Paracito',NULL,NULL,NULL,47),(305,'Santo Tomás',NULL,NULL,NULL,47),(306,'Santa Rosa',NULL,NULL,NULL,47),(307,'Tures',NULL,NULL,NULL,47),(308,'Para',NULL,NULL,NULL,47),(309,'Santa Bárbara',NULL,NULL,NULL,48),(310,'San Pedro',NULL,NULL,NULL,48),(311,'San Juan',NULL,NULL,NULL,48),(312,'Jesús',NULL,NULL,NULL,48),(313,'Santo Domingo',NULL,NULL,NULL,48),(314,'Puraba',NULL,NULL,NULL,48),(315,'San Rafael',NULL,NULL,NULL,49),(316,'San Josecito',NULL,NULL,NULL,49),(317,'Santiago',NULL,NULL,NULL,49),(318,'Los Ángeles',NULL,NULL,NULL,49),(319,'Concepción',NULL,NULL,NULL,49),(320,'San Isidro',NULL,NULL,NULL,50),(321,'San José',NULL,NULL,NULL,50),(322,'Concepción',NULL,NULL,NULL,50),(323,'San Francisco',NULL,NULL,NULL,50),(324,'San Antonio',NULL,NULL,NULL,51),(325,'La Ribera',NULL,NULL,NULL,51),(326,'La Asuncion',NULL,NULL,NULL,51),(327,'San Joaquín',NULL,NULL,NULL,52),(328,'Barrantes',NULL,NULL,NULL,52),(329,'Llorente',NULL,NULL,NULL,52),(330,'San Pablo',NULL,NULL,NULL,53),(331,'Rincon De Sabanilla',NULL,NULL,NULL,53),(332,'Puerto Viejo',NULL,NULL,NULL,54),(333,'La Virgen',NULL,NULL,NULL,54),(334,'Las Horquetas',NULL,NULL,NULL,54),(335,'Llanuras Del Gaspar',NULL,NULL,NULL,54),(336,'Cureña',NULL,NULL,NULL,54),(337,'Liberia',NULL,NULL,NULL,55),(338,'Nacascolo',NULL,NULL,NULL,55),(339,'Cañas Dulces',NULL,NULL,NULL,55),(340,'Mayorga',NULL,NULL,NULL,55),(341,'Curubande',NULL,NULL,NULL,55),(342,'Nicoya',NULL,NULL,NULL,56),(343,'Mansión',NULL,NULL,NULL,56),(344,'San Antonio',NULL,NULL,NULL,56),(345,'Quebrada Honda',NULL,NULL,NULL,56),(346,'Sámara',NULL,NULL,NULL,56),(347,'Nosara',NULL,NULL,NULL,56),(348,'Belén De Nosarita',NULL,NULL,NULL,56),(349,'Santa Cruz',NULL,NULL,NULL,57),(350,'Bolson',NULL,NULL,NULL,57),(351,'Veintisiete de Abril',NULL,NULL,NULL,57),(352,'Tempate',NULL,NULL,NULL,57),(353,'Cartagena',NULL,NULL,NULL,57),(354,'Cuajiniquil',NULL,NULL,NULL,57),(355,'Diria',NULL,NULL,NULL,57),(356,'Cabo Velas',NULL,NULL,NULL,57),(357,'Tamarindo',NULL,NULL,NULL,57),(358,'Bagaces',NULL,NULL,NULL,58),(359,'La Fortuna',NULL,NULL,NULL,58),(360,'Mogote',NULL,NULL,NULL,58),(361,'Rio Naranjo',NULL,NULL,NULL,58),(362,'Filadelfia',NULL,NULL,NULL,59),(363,'Palmira',NULL,NULL,NULL,59),(364,'Sardinal',NULL,NULL,NULL,59),(365,'Belen',NULL,NULL,NULL,59),(366,'Cañas',NULL,NULL,NULL,60),(367,'Palmira',NULL,NULL,NULL,60),(368,'San Miguel',NULL,NULL,NULL,60),(369,'Bebedero',NULL,NULL,NULL,60),(370,'Porozal',NULL,NULL,NULL,60),(371,'Las Juntas',NULL,NULL,NULL,61),(372,'Sierra',NULL,NULL,NULL,61),(373,'San Juan',NULL,NULL,NULL,61),(374,'Colorado',NULL,NULL,NULL,61),(375,'Tilarán',NULL,NULL,NULL,62),(376,'Quebrada Grande',NULL,NULL,NULL,62),(377,'Tronadora',NULL,NULL,NULL,62),(378,'Santa Rosa',NULL,NULL,NULL,62),(379,'Líbano',NULL,NULL,NULL,62),(380,'Tierras Morenas',NULL,NULL,NULL,62),(381,'Arenal',NULL,NULL,NULL,62),(382,'Cabeceras',NULL,NULL,NULL,62),(383,'Carmona',NULL,NULL,NULL,63),(384,'Santa Rita',NULL,NULL,NULL,63),(385,'Zapotal',NULL,NULL,NULL,63),(386,'San Pablo',NULL,NULL,NULL,63),(387,'Porvenir',NULL,NULL,NULL,63),(388,'Bejuco',NULL,NULL,NULL,63),(389,'La Cruz',NULL,NULL,NULL,64),(390,'Santa Cecilia',NULL,NULL,NULL,64),(391,'La Garita',NULL,NULL,NULL,64),(392,'Santa Elena',NULL,NULL,NULL,64),(393,'Hojancha',NULL,NULL,NULL,65),(394,'Monte Romo',NULL,NULL,NULL,65),(395,'Puerto Carrillo',NULL,NULL,NULL,65),(396,'Huacas',NULL,NULL,NULL,65),(397,'Puntarenas',NULL,NULL,NULL,66),(398,'Pitahaya',NULL,NULL,NULL,66),(399,'Chomes',NULL,NULL,NULL,66),(400,'Lepanto',NULL,NULL,NULL,66),(401,'Paquera',NULL,NULL,NULL,66),(402,'Manzanillo',NULL,NULL,NULL,66),(403,'Guacimal',NULL,NULL,NULL,66),(404,'Barranca',NULL,NULL,NULL,66),(405,'Monte Verde',NULL,NULL,NULL,66),(406,'Isla Del Coco',NULL,NULL,NULL,66),(407,'Cóbano',NULL,NULL,NULL,66),(408,'Chacarita',NULL,NULL,NULL,66),(409,'Chira',NULL,NULL,NULL,66),(410,'Acapulco',NULL,NULL,NULL,66),(411,'El Roble',NULL,NULL,NULL,66),(412,'Arancibia',NULL,NULL,NULL,66),(413,'Espíritu Santo',NULL,NULL,NULL,67),(414,'San Juan Grande',NULL,NULL,NULL,67),(415,'Macacona',NULL,NULL,NULL,67),(416,'San Rafael',NULL,NULL,NULL,67),(417,'San Jerónimo',NULL,NULL,NULL,67),(418,'Caldera',NULL,NULL,NULL,67),(419,'Buenos Aires',NULL,NULL,NULL,68),(420,'Volcán',NULL,NULL,NULL,68),(421,'Potrero Grande',NULL,NULL,NULL,68),(422,'Boruca',NULL,NULL,NULL,68),(423,'Pilas',NULL,NULL,NULL,68),(424,'Colinas',NULL,NULL,NULL,68),(425,'Changuena',NULL,NULL,NULL,68),(426,'Biolley',NULL,NULL,NULL,68),(427,'Brunka',NULL,NULL,NULL,68),(428,'Miramar',NULL,NULL,NULL,69),(429,'La Unión',NULL,NULL,NULL,69),(430,'San Isidro',NULL,NULL,NULL,69),(431,'Puerto Cortés',NULL,NULL,NULL,70),(432,'Palmar',NULL,NULL,NULL,70),(433,'Sierpe',NULL,NULL,NULL,70),(434,'Bahía Ballena',NULL,NULL,NULL,70),(435,'Piedras Blancas',NULL,NULL,NULL,70),(436,'Bahía Drake',NULL,NULL,NULL,70),(437,'Quepos',NULL,NULL,NULL,71),(438,'Savegre',NULL,NULL,NULL,71),(439,'Naranjito',NULL,NULL,NULL,71),(440,'Golfito',NULL,NULL,NULL,72),(441,'Puerto Jiménez',NULL,NULL,NULL,72),(442,'Guaycara',NULL,NULL,NULL,72),(443,'Pavón',NULL,NULL,NULL,72),(444,'San Vito',NULL,NULL,NULL,73),(445,'Sabalito',NULL,NULL,NULL,73),(446,'Aguabuena',NULL,NULL,NULL,73),(447,'Limoncito',NULL,NULL,NULL,73),(448,'Pittier',NULL,NULL,NULL,73),(449,'Parrita',NULL,NULL,NULL,74),(450,'Corredor',NULL,NULL,NULL,75),(451,'La Cuesta',NULL,NULL,NULL,75),(452,'Canoas',NULL,NULL,NULL,75),(453,'Laurel',NULL,NULL,NULL,75),(454,'Jacó',NULL,NULL,NULL,76),(455,'Tárcoles',NULL,NULL,NULL,76),(456,'Limón',NULL,NULL,NULL,77),(457,'Valle La Estrella',NULL,NULL,NULL,77),(458,'Rio Blanco',NULL,NULL,NULL,77),(459,'Matama',NULL,NULL,NULL,77),(460,'Guapiles',NULL,NULL,NULL,78),(461,'Jiménez',NULL,NULL,NULL,78),(462,'Rita',NULL,NULL,NULL,78),(463,'Roxana',NULL,NULL,NULL,78),(464,'Cariari',NULL,NULL,NULL,78),(465,'Colorado',NULL,NULL,NULL,78),(466,'La Colonia',NULL,NULL,NULL,78),(467,'Siquirres',NULL,NULL,NULL,79),(468,'Pacuarito',NULL,NULL,NULL,79),(469,'Florida',NULL,NULL,NULL,79),(470,'Germania',NULL,NULL,NULL,79),(471,'El Cairo',NULL,NULL,NULL,79),(472,'Alegría',NULL,NULL,NULL,79),(473,'Bratsi',NULL,NULL,NULL,80),(474,'Sixaola',NULL,NULL,NULL,80),(475,'Cahuita',NULL,NULL,NULL,80),(476,'Telire',NULL,NULL,NULL,80),(477,'Matina',NULL,NULL,NULL,81),(478,'Batán',NULL,NULL,NULL,81),(479,'Carrandi',NULL,NULL,NULL,81),(480,'Guácimo',NULL,NULL,NULL,82),(481,'Mercedes',NULL,NULL,NULL,82),(482,'Pocora',NULL,NULL,NULL,82),(483,'Rio Jiménez',NULL,NULL,NULL,82),(484,'Duacari',NULL,NULL,NULL,82);
/*!40000 ALTER TABLE `distritos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `fecha` datetime NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_publicacion` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_publicacion`),
  KEY `fk_likes_publicaciones` (`id_publicacion`),
  CONSTRAINT `fk_likes_publicaciones` FOREIGN KEY (`id_publicacion`) REFERENCES `publicaciones` (`id_publicacion`),
  CONSTRAINT `fk_likes_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincias`
--

DROP TABLE IF EXISTS `provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincias` (
  `id_provincia` int(11) NOT NULL,
  `nombre_provincia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincias`
--

LOCK TABLES `provincias` WRITE;
/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
INSERT INTO `provincias` VALUES (1,'San José'),(2,'Alajuela'),(3,'Cartago'),(4,'Heredia'),(5,'Guanacaste'),(6,'Puntarenas'),(7,'Limón');
/*!40000 ALTER TABLE `provincias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicaciones`
--

DROP TABLE IF EXISTS `publicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicaciones` (
  `id_publicacion` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `contenido` text NOT NULL,
  `fecha` datetime NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_categoria_publicacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_publicacion`),
  KEY `fk_publicaciones_usuarios` (`id_usuario`),
  KEY `fk_publicaciones_categoria` (`id_categoria_publicacion`),
  CONSTRAINT `fk_publicaciones_categoria` FOREIGN KEY (`id_categoria_publicacion`) REFERENCES `categoriapublicacion` (`id_categoria_publicacion`),
  CONSTRAINT `fk_publicaciones_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicaciones`
--

LOCK TABLES `publicaciones` WRITE;
/*!40000 ALTER TABLE `publicaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `publicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id_role` int(11) NOT NULL,
  `nombre_rol` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin'),(2,'Usuario');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_distrito`
--

DROP TABLE IF EXISTS `usuario_distrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_distrito` (
  `id_usuario` int(11) NOT NULL,
  `id_distrito` int(11) NOT NULL,
  `fecha_seguimiento` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id_usuario`,`id_distrito`),
  KEY `fk_usuario` (`id_usuario`),
  KEY `fk_distrito` (`id_distrito`),
  CONSTRAINT `fk_usuario_distrito_distritos` FOREIGN KEY (`id_distrito`) REFERENCES `distritos` (`id_distrito`),
  CONSTRAINT `fk_usuario_distrito_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_distrito`
--

LOCK TABLES `usuario_distrito` WRITE;
/*!40000 ALTER TABLE `usuario_distrito` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_distrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(9) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `genero` varchar(45) NOT NULL,
  `password` varchar(50) NOT NULL,
  `descripcion` text DEFAULT 'Estoy usando Community Alert!',
  `icono` varchar(255) DEFAULT NULL,
  `fecha_ingreso` datetime NOT NULL DEFAULT current_timestamp(),
  `id_role` int(11) NOT NULL,
  `id_distrito` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `fk_usuarios_roles` (`id_role`),
  KEY `fk_usuarios_distritos` (`id_distrito`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (9,'402620226','RICARDO AARON VARGAS MONTERO','ricardovm2803@gmail.com','Masculino','123','Estoy usando Community Alert!',NULL,'2024-07-25 11:44:38',2,300),(10,'401230123','HILDA MARIA VILLALOBOS VILLALOBOS','hilda@gmail.com','Femenino','123','Estoy usando Community Alert!',NULL,'2024-07-25 11:44:38',2,5),(11,'401670123','ERICK RICARDO QUIROS GUTIERREZ','Erick@gmail.com','Masculino','123','Estoy usando Community Alert!',NULL,'2024-07-25 11:44:38',2,482),(12,'402620227','JOSE DAVID PEREZ SOLIS','david@gmail.com','Masculino','123','Estoy usando Community Alert!',NULL,'2024-07-25 11:45:13',2,325);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'communityalert'
--

--
-- Dumping routines for database 'communityalert'
--
/*!50003 DROP PROCEDURE IF EXISTS `loginUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `loginUsuario`(`pCedula` varchar(9), `pPassword` varchar(50))
BEGIN
		SELECT u.id_usuario, u.nombre_usuario, u.email, u.id_distrito, d.nombre_distrito, u.id_role
        FROM communityalert.usuarios u
        INNER JOIN communityalert.distritos d ON u.id_distrito = d.id_distrito
        WHERE u.cedula = pCedula
        AND u.password = pPassword;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerCedula` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerCedula`(`pCedula` varchar(9))
BEGIN
		SELECT cedula
        FROM communityalert.usuarios
        WHERE cedula = pCedula;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerIdDistrito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerIdDistrito`(`pNombreProvincia` varchar(50), `pNombreCanton` varchar(50), `pNombreDistrito` varchar(50))
BEGIN
	SELECT id_distrito
	FROM communityalert.distritos d
	INNER JOIN communityalert.cantones c ON d.id_canton = c.id_canton
    INNER JOIN communityalert.provincias p ON c.id_provincia = p.id_provincia
    WHERE p.nombre_provincia = pNombreProvincia
    AND c.nombre_canton = pNombreCanton
    AND d.nombre_distrito = pNombreDistrito;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerProvincias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerProvincias`()
BEGIN
		SELECT *
        FROM communityalert.provincias;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registrarUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registrarUsuario`(
				`pCedula` varchar(9), 
				`pNombre` varchar(50), 
                `pApellidos` varchar(50), 
                `pCorreo` varchar(50), 
                `pGenero` varchar(45), 
                `pContrasennia` varchar(50), 
                `pDistrito` varchar(50))
BEGIN
			
	INSERT INTO communityalert.usuarios (`cedula`, `nombre_usuario`, `email`, `genero`, `password` ,`id_role`, `id_distrito`)
	VALUES (`pCedula`, CONCAT(`pNombre`, ' ', `pApellidos`), `pCorreo`, `pGenero`, `pContrasennia`, 2, `pDistrito`);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-25 11:46:48
