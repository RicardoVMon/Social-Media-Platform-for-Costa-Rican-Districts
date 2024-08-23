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
  `nombre_canton` varchar(50) NOT NULL,
  `banner` varchar(255) DEFAULT 'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',
  `id_provincia` int(11) NOT NULL,
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
INSERT INTO `cantones` VALUES (1,'Central','https://c1.staticflickr.com/5/4244/34706235912_a6edfcd5e3_c.jpg',1),(2,'Escazú','https://images.trvl-media.com/lodging/29000000/28810000/28801400/28801323/c8900840.jpg?impolicy=resizecrop&rw=575&rh=575&ra=fill',1),(3,'Desamparados','https://www.desamparados.go.cr/sites/default/files/whatsapp_image_2019-01-02_at_9.13.27_am.jpeg',1),(4,'Puriscal','https://cloudfront-us-east-1.images.arcpublishing.com/gruponacion/NJET2RXJ35DIBAKE2SAD2ES37Y.JPG',1),(5,'Tarrazú','https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/San-marcos-tarrazu-church-costarica.jpg/640px-San-marcos-tarrazu-church-costarica.jpg',1),(6,'Aserrí','https://upload.wikimedia.org/wikipedia/commons/7/77/Municipalidadaserri.jpg',1),(7,'Mora','https://upload.wikimedia.org/wikipedia/commons/e/e0/Ciudad_Colon_Costa_Rica_april_2016%2C_aerial_image.jpg',1),(8,'Goicoechea','https://kraincostarica.com/en/content-images/GoicoecheaGuadalupeCostaRica.jpg',1),(9,'Santa Ana','https://www.govisitcostarica.co.cr/images/photos/mob-santa-ana-church-costa-rica.jpg',1),(10,'Alajuelita','https://munialajuelita.go.cr/images/2021/02/03/alajuelita.png',1),(11,'Vázquez De Coronado','https://www.coromuni.go.cr/images/2022/10/26/desk-coronado-church.jpg',1),(12,'Acosta','https://www.fotopaises.com/Fotos-Paises/t/2009/4/12/2786_1239500067.jpg',1),(13,'Tibás','https://periodicogente.co.cr/wp-content/uploads/2021/10/Screen-Shot-2021-10-29-at-22.24.24-1024x615.png',1),(14,'Moravia','https://upload.wikimedia.org/wikipedia/commons/3/33/Iglesia_de_Moravia.jpg',1),(15,'Montes De Oca','https://upload.wikimedia.org/wikipedia/commons/c/cf/Parque_JFK.jpg',1),(16,'Turrubares','https://upload.wikimedia.org/wikipedia/commons/4/49/Monta%C3%B1as_en_San_Luis_de_Turrubares_2.jpg',1),(17,'Dota','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Iglesia_Santa_Maria._Dota._Costa_Rica_%281%29.jpg/1200px-Iglesia_Santa_Maria._Dota._Costa_Rica_%281%29.jpg',1),(18,'Curridabat','https://upload.wikimedia.org/wikipedia/commons/5/51/Curridabat_Catedral_Iglesia_Catolica.jpg',1),(19,'Pérez Zeledón','https://www.rojassa.com/wp-content/uploads/2013/11/Perez-Zeledon.jpg',1),(20,'León Cortés Castro','https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Centro_del_Distrito_1%C2%B0_de_Le%C3%B3n_Cort%C3%A9s_Castro.jpg/640px-Centro_del_Distrito_1%C2%B0_de_Le%C3%B3n_Cort%C3%A9s_Castro.jpg',1),(21,'Central','https://media.istockphoto.com/id/1764690154/es/foto/estatua-del-h%C3%A9roe-nacional-juan-santamar%C3%ADa-en-alajuela-costa-rica.webp?b=1&s=170667a&w=0&k=20&c=6ZVbO7MQmIi9n6Am0rihS1XB256bi4TXzvAdwzA-7qU=',2),(22,'San Ramón','https://www.shutterstock.com/image-photo/alajuela-san-ramon-costa-rica-600nw-2176922487.jpg',2),(23,'Grecia','https://fusioninmobiliariacr.com/wp-content/uploads/2023/05/post2.jpg',2),(24,'San Mateo','https://a0.muscache.com/im/pictures/miso/Hosting-831164086509260971/original/60afcbca-428c-46fd-ba16-e228f5f75fe6.jpeg?im_w=720',2),(25,'Atenas','https://costarica.org/wp-content/uploads/2017/09/Atenas1.jpg',2),(26,'Naranjo','https://i.pinimg.com/originals/2a/6e/8d/2a6e8d98fd553674cfe1a77dfdb3d3a9.jpg',2),(27,'Palmares','https://www.magellanmag.com/blog/wp-content/uploads/2020/01/palmares1.jpg',2),(28,'Poás','https://www.visitcentroamerica.com/wp-content/uploads/2021/10/volcan-poas-costa-rica-1.jpg',2),(29,'Orotina','https://images.visitarcostarica.com/orotina-costa-rica.jpg',2),(30,'San Carlos','https://www.shutterstock.com/image-photo/costa-rica-arenal-volcano-spanish-260nw-1610456893.jpg',2),(31,'Zarcero','https://www.fotopaises.com/Fotos-Paises/t1024/2013/2/21/2786_1361425941.jpg',2),(32,'Sarchí','https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Costa_Rica_Sarchi_ox_drawn_cart.jpg/2560px-Costa_Rica_Sarchi_ox_drawn_cart.jpg',2),(33,'Upala','https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjROXv1RTwvpf_qQiJ_fk3pzRJab57CR1blOv5mp8gbs2EMrZ1vvS8efKdx8vrCE7ohBDSIbB4ecrKxEOyB7tULQQLLIeQ9PcXNrPr35qql-CMbtQgVNVIWeY0Gr1yNMof8TxEeccqLJIs/w1200-h630-p-k-no-nu/IMG-3569++A1+V+Tenorio.jpg',2),(34,'Los Chiles','https://st.depositphotos.com/2163051/2577/i/450/depositphotos_25773823-stock-photo-frio-river-in-costa-rica.jpg',2),(35,'Guatuso','https://mediaim.expedia.com/destination/1/0364a78d2c14d428844925583e234bc3.jpg?impolicy=fcrop&w=512&h=288&q=medium',2),(36,'Río Cuarto','https://www.vamosaturistear.com/wp-content/uploads/2024/01/Lagunaderiocuartotieneformade.lagunariocuartoacertijosthedronediarynationalgeographicnatgeolatamnatgeoadventurediscoverycostaricacostaricapuravidavisitcostaricadjicreatorscrvolcancostaric.jpg',2),(37,'Central','https://images.visitarcostarica.com/turismo-en-cartago.jpg',3),(38,'Paraíso','https://upload.wikimedia.org/wikipedia/commons/a/a0/Main_Facade_Colonial_Ruins_Church_Ujarras_02_2022_5358.jpg',3),(39,'La Unión','https://cdn-assets.alltrails.com/static-map/production/location/cities/costa-rica-cartago-la-union-49444-20200624080655000000000-1200x630-3-41593044335.jpg',3),(40,'Jiménez','https://upload.wikimedia.org/wikipedia/commons/b/b9/Cartago_-_panoramio_%282%29.jpg',3),(41,'Turrialba','https://www.tec.ac.cr/hoyeneltec/sites/default/files/styles/colorbox/public/media/img/main/volcan_turrialba_.jpeg',3),(42,'Alvarado','https://upload.wikimedia.org/wikipedia/commons/d/df/Municipalidad_Alvarado.JPG',3),(43,'Oreamuno','https://assets-teletica.ray.media/Files/Sizes/2018/9/23/1596047106_1140x520.jpg',3),(44,'El Guarco','https://guiascostarica.info/wp-content/gallery/elguarco/elguarco02.webp',3),(45,'Central','https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Ciudad_de_Heredia.JPG/1200px-Ciudad_de_Heredia.JPG',4),(46,'Barva','https://upload.wikimedia.org/wikipedia/commons/f/fc/Iglesia_de_Barva_de_Heredia.JPG',4),(47,'Santo Domingo','https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Bas%C3%ADlica_Santo_Domingo_de_Guzm%C3%A1n.JPG/1200px-Bas%C3%ADlica_Santo_Domingo_de_Guzm%C3%A1n.JPG',4),(48,'Santa Barbara','https://upload.wikimedia.org/wikipedia/commons/e/e6/Santa_B%C3%A1rbara_de_Heredia.jpg',4),(49,'San Rafael','https://images.visitarcostarica.com/san-rafael-heredia.jpg',4),(50,'San Isidro','https://upload.wikimedia.org/wikipedia/commons/c/c4/Iglesia_de_San_Isidro_de_Heredia.jpg',4),(51,'Belén','https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Parroquia_de_San_Antonio_de_Bel%C3%A9n%2C_Heredia.jpg/1200px-Parroquia_de_San_Antonio_de_Bel%C3%A9n%2C_Heredia.jpg',4),(52,'Flores','https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/San_Joaqu%C3%ADn_de_Flores.JPG/800px-San_Joaqu%C3%ADn_de_Flores.JPG',4),(53,'San Pablo','https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Iglesia_de_San_Pablo_de_Heredia.JPG/1200px-Iglesia_de_San_Pablo_de_Heredia.JPG',4),(54,'Sarapiquí','https://www.visitcentroamerica.com/wp-content/uploads/2020/02/ver-centroamerica-costa-rica-sarapiqui-03.jpg',4),(55,'Liberia','https://www.guanacasteairport.com/wp-content/uploads/2019/10/vuelos-y-destinos-big.jpg',5),(56,'Nicoya','https://media.gettyimages.com/id/541430728/es/foto/nicoya-peninsula-tambor-boat-trip-to-the-tortuga-island.jpg?s=612x612&w=gi&k=20&c=E9ZjtW_Fq3sa6Mp6DZmGDEs4AqR-zTJ6qr8a4qXunXo=',5),(57,'Santa Cruz','https://w0.peakpx.com/wallpaper/382/589/HD-wallpaper-santa-cruz-guanacaste-costa-rica-landscape-sunset-house-cathedral-sun-sky.jpg',5),(58,'Bagaces','https://www.fotopaises.com/Fotos-Paises/t1024/2008/4/6/2786_1207555662.jpg',5),(59,'Carrillo','https://www.bookaway.com/blog/wp-content/uploads/2022/11/carrillo-feature.jpg',5),(60,'Cañas','https://images.unsplash.com/photo-1557935007-42543bc7b028?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Z3VhbmFjYXN0ZXxlbnwwfHwwfHx8MA%3D%3D',5),(61,'Abangares','https://cdn-assets.alltrails.com/static-map/production/location/cities/costa-rica-guanacaste-abangares-98921-20190216001523000000000-1200x630-3-41618376872.jpg',5),(62,'Tilarán','https://www.monteterras.com/wp-content/uploads/2022/01/lago-arenal-costa-rica.jpg',5),(63,'Nandayure','https://micostaricadeantano.com/wp-content/uploads/2019/06/carmona-nandayure.jpg?w=810',5),(64,'La Cruz','https://delsolphotography.com/wp-content/uploads/2018/11/Dreams-Las-Mareas-Costa-Rica_0001.jpg',5),(65,'Hojancha','https://www.shutterstock.com/image-photo/observing-sun-peeking-through-trees-600nw-2455263017.jpg',5),(66,'Central','https://i.pinimg.com/originals/f7/f6/92/f7f6927c3ec7a758fb60df1ec41f9137.jpg',6),(67,'Esparza','https://images.visitarcostarica.com/esparza-costa-rica.jpg',6),(68,'Buenos Aires','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQvY7Wx1tj3-ZoQX0indfDUFEFaDVWYgGFNQ&s',6),(69,'Montes De Oro','https://3.bp.blogspot.com/-5qBSVbcnDtY/Wtet_BfwxTI/AAAAAAAAS9s/w0pVmZUN_TEIMRx9VwNRb7aUmh5KC9ccQCLcBGAs/s1600/tubu.jpg',6),(70,'Osa','https://c4.wallpaperflare.com/wallpaper/206/901/282/osa-peninsula-corcovado-national-park-costa-rica-wallpaper-preview.jpg',6),(71,'Quepos','https://images.unsplash.com/photo-1507525428034-b723cf961d3e?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8UGxheWElMjBNYW51ZWwlMjBBbnRvbmlvJTJDJTIwUHVudGFyZW5hcyUyMFByb3ZpbmNlJTJDJTIwUXVlcG9zJTJDJTIwQ29zdGElMjBSaWNhfGVufDB8fDB8fHww',6),(72,'Golfito','https://i.pinimg.com/736x/64/e1/84/64e18459da6bfc58da8ccbc1afce9275.jpg',6),(73,'Coto Brus','https://www.municotobrus.go.cr/img/articles/detail/16_1_201602130809511.jpg.jpeg',6),(74,'Parrita','https://www.bienesonline.com/costa-rica/photos/hotel-boutique-excelente-posicionamiento-en-esterillos-HOV342051606334365-548.jpg',6),(75,'Corredores','https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEi2S4CzNuzSpQBB_CkPDBXePLb4FgbscOueCsk3xQXWQH_zMP0aXlVVsre8ECdZL-AhqfG61gHPk70fRlQF3P1SAJLaixyn7CatWzGStUk0K_xd4ScdnCQT_wEmvbGbc-oKTRIh3AtkgtM/w1200-h630-p-k-no-nu/P1050088+B1.JPG',6),(76,'Garabito','https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/16/f1/08/jaco-beach-costa-rica.jpg?w=500&h=400&s=1',6),(77,'Central','https://costarica.org/wp-content/uploads/2017/09/Limon2.jpg',7),(78,'Pococí','https://upload.wikimedia.org/wikipedia/commons/5/54/Tortuguero_Nationalpark.jpg',7),(79,'Siquirres','https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjggggTmETCpZMxBSR2L23lESiTBh3iejrhmR2BCcq_xZi9QMGLXFoYR7wqfk-oI8Iuzt7IKV1FRzpYfO7bZYqXz5IPgMuiXx1ONY9ddpGzkPwhBcyU4d2_kBO8mlR4PBkjj1V0p-dpqmA/s1600/IMG_4726+B1.jpg',7),(80,'Talamanca','https://media-cdn.tripadvisor.com/media/photo-c/1280x250/0d/76/3c/73/puerto-viejo-de-talamanca.jpg',7),(81,'Matina','https://www.costaricain.com/wp-content/uploads/Limon-Costa-Rica-1-1155x600.jpg',7),(82,'Guácimo','https://upload.wikimedia.org/wikipedia/commons/e/ec/Universidad_EARTH%2C_campus_Gu%C3%A1cimo.png',7);
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
INSERT INTO `categoriapublicacion` VALUES (1,'Prueba'),(2,'Terremoto');
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
  `fecha` date NOT NULL,
  `id_publicacion` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_comentario`),
  KEY `fk_comentarios_publicaciones` (`id_publicacion`),
  KEY `fk_comentarios_usuarios` (`id_usuario`),
  CONSTRAINT `fk_comentarios_publicaciones` FOREIGN KEY (`id_publicacion`) REFERENCES `publicaciones` (`id_publicacion`),
  CONSTRAINT `fk_comentarios_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,'TEST COMENTARIO INUNDACION','2024-08-09',1,9),(2,'No puedo creer que puedo comentar en las publicaciones!!!!!!!!','2024-08-07',1,9),(3,'TEST COMENTARIO EXTERNO','2024-08-07',1,10),(5,'hola','2024-08-22',55,9),(17,'Comentario ','2024-08-22',64,24),(18,'Hola Danilo, la app sirve para comunicarse entre todas las comunidades de costa rica','2024-08-22',63,9);
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
  `nombre_distrito` varchar(50) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `banner` varchar(255) NOT NULL DEFAULT 'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',
  `icono` varchar(255) DEFAULT NULL,
  `id_canton` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_distrito`,`nombre_distrito`,`banner`),
  KEY `fk_distritos_cantones` (`id_canton`),
  CONSTRAINT `fk_distritos_cantones` FOREIGN KEY (`id_canton`) REFERENCES `cantones` (`id_canton`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distritos`
--

LOCK TABLES `distritos` WRITE;
/*!40000 ALTER TABLE `distritos` DISABLE KEYS */;
INSERT INTO `distritos` VALUES (1,'Carmen','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',1),(2,'Merced','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',1),(3,'Hospital','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',1),(4,'Catedral','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',1),(5,'Zapote','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',1),(6,'San Francisco De Dos Rios','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',1),(7,'Uruca','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',1),(8,'Mata Redonda','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',1),(9,'Pavas','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',1),(10,'Hatillo','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',1),(11,'San Sebastián','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',1),(12,'Escazú','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',2),(13,'San Antonio','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',2),(14,'San Rafael','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',2),(15,'Desamparados','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',3),(16,'San Miguel','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',3),(17,'San Juan De Dios','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',3),(18,'San Rafael Arriba','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',3),(19,'San Rafael Abajo','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',3),(20,'San Antonio','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',3),(21,'Frailes','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',3),(22,'Patarra','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',3),(23,'San Cristobal','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',3),(24,'Rosario','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',3),(25,'Damas','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',3),(26,'Gravilias','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',3),(27,'Los Guido','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',3),(28,'Santiago','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',4),(29,'Mercedes Sur','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',4),(30,'Barbacoas','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',4),(31,'Grifo Alto','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',4),(32,'San Rafael','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',4),(33,'Candelarita','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',4),(34,'Desamparaditos','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',4),(35,'San Antonio','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',4),(36,'Chires','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',4),(37,'San Marcos','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',5),(38,'San Lorenzo','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',5),(39,'San Carlos','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',5),(40,'Aserrí','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',6),(41,'Tarbaca','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',6),(42,'Vuelta De Jorco','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',6),(43,'San Gabriel','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',6),(44,'Legua','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',6),(45,'Monterrey','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',6),(46,'Salitrillos','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',6),(47,'Colón','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',7),(48,'Guayabo','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',7),(49,'Tabarcia','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',7),(50,'Piedras Negras','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',7),(51,'Picagres','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',7),(52,'Jaris','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',7),(53,'Guadalupe','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',8),(54,'San Francisco','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',8),(55,'Calle Blancos','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',8),(56,'Mata De Platano','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',8),(57,'Ipís','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',8),(58,'Rancho Redondo','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',8),(59,'Purral','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',8),(60,'Santa Ana','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',9),(61,'Salitral','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',9),(62,'Pozos','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',9),(63,'Uruca','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',9),(64,'Piedades','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',9),(65,'Brasil','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',9),(66,'Alajuelita','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',10),(67,'San Josecito','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',10),(68,'San Antonio','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',10),(69,'Concepción','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',10),(70,'San Felipe','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',10),(71,'San Isidro','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',11),(72,'San Rafael','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',11),(73,'Dulce Nombre De Jesus','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',11),(74,'Patalillo','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',11),(75,'Cascajal','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',11),(76,'San Ignacio','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',12),(77,'Guaitil','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',12),(78,'Palmichal','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',12),(79,'Cangrejal','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',12),(80,'Sabanillas','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',12),(81,'San Juan','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',13),(82,'Cinco Esquinas','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',13),(83,'Anselmo Llorente','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',13),(84,'Leon Xiii','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',13),(85,'Colima','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',13),(86,'San Vicente','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',14),(87,'San Jeronimo','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',14),(88,'La Trinidad','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',14),(89,'San Pedro','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',15),(90,'Sabanilla','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',15),(91,'Mercedes','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',15),(92,'San Rafael','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',15),(93,'San Pablo','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',16),(94,'San Pedro','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',16),(95,'San Juan De Mata','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',16),(96,'San Luis','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',16),(97,'Carara','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',16),(98,'Santa María','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',17),(99,'Jardin','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',17),(100,'Copey','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',17),(101,'Curridabat','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',18),(102,'Granadilla','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',18),(103,'Sanchez','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',18),(104,'Tirrases','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',18),(105,'San Isidro De El General','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',19),(106,'El General','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',19),(107,'Daniel Flores','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',19),(108,'Rivas','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',19),(109,'San Pedro','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',19),(110,'Platanares','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',19),(111,'Pejibaye','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',19),(112,'Cajon','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',19),(113,'Baru','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',19),(114,'Rio Nuevo','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',19),(115,'Páramo','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',19),(116,'San Pablo','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',20),(117,'San Andres','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',20),(118,'Llano Bonito','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',20),(119,'San Isidro','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',20),(120,'Santa Cruz','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',20),(121,'San Antonio','Bienvenidos a nuestra hermosa comunidad!','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp','https://ih1.redbubble.net/image.385341291.7123/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',20),(122,'Alajuela','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',21),(123,'San José','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',21),(124,'Carrizal','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',21),(125,'San Antonio','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',21),(126,'Guácima','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',21),(127,'San Isidro','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',21),(128,'Sabanilla','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',21),(129,'San Rafael','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',21),(130,'Rio Segundo','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',21),(131,'Desamparados','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',21),(132,'Turrucares','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',21),(133,'Tambor','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',21),(134,'Garita','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',21),(135,'Sarapiquí','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',21),(136,'San Ramón','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',22),(137,'Santiago','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',22),(138,'San Juan','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',22),(139,'Piedades Norte','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',22),(140,'Piedades Sur','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',22),(141,'San Rafael','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',22),(142,'San Isidro','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',22),(143,'Angeles','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',22),(144,'Alfaro','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',22),(145,'Volio','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',22),(146,'Concepción','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',22),(147,'Zapotal','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',22),(148,'Peñas Blancas','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',22),(149,'San Lorenzo','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',22),(150,'Grecia','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',23),(151,'San Isidro','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',23),(152,'San José','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',23),(153,'San Roque','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',23),(154,'Tacares','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',23),(155,'Rio Cuarto','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',23),(156,'Puente De Piedra','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',23),(157,'Bolivar','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',23),(158,'San Mateo','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',24),(159,'Desmonte','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',24),(160,'Jesús María','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',24),(161,'Labrador','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',24),(162,'Atenas','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',25),(163,'Jesús','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',25),(164,'Mercedes','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',25),(165,'San Isidro','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',25),(166,'Concepción','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',25),(167,'San José','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',25),(168,'Santa Eulalia','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',25),(169,'Escobal','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',25),(170,'Naranjo','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',26),(171,'San Juan','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',26),(172,'San Miguel','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',26),(173,'Palmitos','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',26),(174,'El Rosario','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',26),(175,'San José','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',26),(176,'Cirrí Sur','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',26),(177,'San Jerónimo','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',26),(178,'Palmares','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',27),(179,'Zaragoza','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',27),(180,'Buenos Aires','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',27),(181,'Santiago','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',27),(182,'Candelaria','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',27),(183,'Esquipulas','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',27),(184,'La Granja','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',27),(185,'San Pedro','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',28),(186,'San Juan','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',28),(187,'San Rafael','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',28),(188,'Carrillos','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',28),(189,'Sabana Redonda','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',28),(190,'Orotina','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',29),(191,'El Mastate','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',29),(192,'Hacienda Vieja','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',29),(193,'Coyolar','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',29),(194,'La Ceiba','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',29),(195,'Quesada','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',30),(196,'Florencia','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',30),(197,'Buenavista','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',30),(198,'Aguas Zarcas','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',30),(199,'Venecia','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',30),(200,'Pital','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',30),(201,'La Fortuna','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',30),(202,'La Tigra','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',30),(203,'La Palmera','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',30),(204,'Venado','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',30),(205,'Cutris','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',30),(206,'Monterrey','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',30),(207,'Pocosol','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',30),(208,'Zarcero','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',31),(209,'Laguna','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',31),(210,'Tapesco','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',31),(211,'Guadalupe','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',31),(212,'Palmira','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',31),(213,'Zapote','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',31),(214,'Brisas','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',31),(215,'Sarchí Norte','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',32),(216,'Sarchí Sur','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',32),(217,'Toro Amarillo','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',32),(218,'San Pedro','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',32),(219,'Rodriguez','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',32),(220,'Upala','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',33),(221,'Aguas Claras','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',33),(222,'San José o Pizote','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',33),(223,'Bijagua','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',33),(224,'Delicias','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',33),(225,'Dos Rios','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',33),(226,'Yolillal','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',33),(227,'Canalete','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',33),(228,'Los Chiles','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',34),(229,'Caño Negro','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',34),(230,'El Amparo','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',34),(231,'San Jorge','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',34),(232,'San Rafael','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',35),(233,'Buenavista','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',35),(234,'Cote','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',35),(235,'Katira','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',35),(236,'Río Cuarto','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',36),(237,'Santa Rita','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',36),(238,'Santa Isabel','Bienvenidos a nuestra hermosa comunidad!','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bandera_de_la_Provincia_de_Alajuela.svg/750px-Bandera_de_la_Provincia_de_Alajuela.svg.png',36),(239,'Oriental','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',37),(240,'Occidental','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',37),(241,'Carmen','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',37),(242,'San Nicolás','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',37),(243,'Aguacaliente o San Francisco','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',37),(244,'Guadalupe o Arenilla','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',37),(245,'Corralillo','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',37),(246,'Tierra Blanca','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',37),(247,'Dulce Nombre','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',37),(248,'Llano Grande','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',37),(249,'Quebradilla','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',37),(250,'Paraiso','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',38),(251,'Santiago','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',38),(252,'Orosi','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',38),(253,'Cachí','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',38),(254,'Llanos de Santa Lucía','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',38),(255,'Tres Rios','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',39),(256,'San Diego','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',39),(257,'San Juan','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',39),(258,'San Rafael','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',39),(259,'Concepción','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',39),(260,'Dulce Nombre','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',39),(261,'San Ramón','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',39),(262,'Rio Azul','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',39),(263,'Juan Viñas','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',40),(264,'Tucurrique','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',40),(265,'Pejibaye','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',40),(266,'Turrialba','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',41),(267,'La Suiza','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',41),(268,'Peralta','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',41),(269,'Santa Cruz','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',41),(270,'Santa Teresita','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',41),(271,'Pavones','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',41),(272,'Tuis','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',41),(273,'Tayutic','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',41),(274,'Santa Rosa','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',41),(275,'Tres Equis','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',41),(276,'La Isabel','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',41),(277,'Chirripó','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',41),(278,'Pacayas','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',42),(279,'Cervantes','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',42),(280,'Capellades','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',42),(281,'San Rafael','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',43),(282,'Cot','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',43),(283,'Potrero Cerrado','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',43),(284,'Cipreses','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',43),(285,'Santa Rosa','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',43),(286,'El Tejar','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',44),(287,'San Isidro','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',44),(288,'Tobosi','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',44),(289,'Patio De Agua','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',44),(290,'Heredia','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',45),(291,'Mercedes','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',45),(292,'San Francisco','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',45),(293,'Ulloa','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',45),(294,'Varablanca','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',45),(295,'Barva','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',46),(296,'San Pedro','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',46),(297,'San Pablo','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',46),(298,'San Roque','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',46),(299,'Santa Lucía','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',46),(300,'San José de la Montaña','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',46),(301,'Santo Domingo','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',47),(302,'San Vicente','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',47),(303,'San Miguel','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',47),(304,'Paracito','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',47),(305,'Santo Tomás','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',47),(306,'Santa Rosa','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',47),(307,'Tures','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',47),(308,'Para','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',47),(309,'Santa Bárbara','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',48),(310,'San Pedro','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',48),(311,'San Juan','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',48),(312,'Jesús','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',48),(313,'Santo Domingo','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',48),(314,'Puraba','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',48),(315,'San Rafael','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',49),(316,'San Josecito','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',49),(317,'Santiago','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',49),(318,'Los Ángeles','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',49),(319,'Concepción','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',49),(320,'San Isidro','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',50),(321,'San José','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',50),(322,'Concepción','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',50),(323,'San Francisco','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',50),(324,'San Antonio','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',51),(325,'La Ribera','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',51),(326,'La Asuncion','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',51),(327,'San Joaquín','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',52),(328,'Barrantes','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',52),(329,'Llorente','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',52),(330,'San Pablo','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',53),(331,'Rincon De Sabanilla','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',53),(332,'Puerto Viejo','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',54),(333,'La Virgen','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',54),(334,'Las Horquetas','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',54),(335,'Llanuras Del Gaspar','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',54),(336,'Cureña','Bienvenidos a nuestra hermosa comunidad!','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG','https://www.heredia.go.cr/sites/default/files/bandera-heredia_0.png',54),(337,'Liberia','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',55),(338,'Nacascolo','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',55),(339,'Cañas Dulces','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',55),(340,'Mayorga','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',55),(341,'Curubande','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',55),(342,'Nicoya','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',56),(343,'Mansión','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',56),(344,'San Antonio','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',56),(345,'Quebrada Honda','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',56),(346,'Sámara','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',56),(347,'Nosara','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',56),(348,'Belén De Nosarita','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',56),(349,'Santa Cruz','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',57),(350,'Bolson','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',57),(351,'Veintisiete de Abril','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',57),(352,'Tempate','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',57),(353,'Cartagena','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',57),(354,'Cuajiniquil','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',57),(355,'Diria','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',57),(356,'Cabo Velas','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',57),(357,'Tamarindo','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',57),(358,'Bagaces','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',58),(359,'La Fortuna','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',58),(360,'Mogote','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',58),(361,'Rio Naranjo','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',58),(362,'Filadelfia','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',59),(363,'Palmira','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',59),(364,'Sardinal','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',59),(365,'Belen','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',59),(366,'Cañas','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',60),(367,'Palmira','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',60),(368,'San Miguel','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',60),(369,'Bebedero','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',60),(370,'Porozal','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',60),(371,'Las Juntas','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',61),(372,'Sierra','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',61),(373,'San Juan','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',61),(374,'Colorado','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',61),(375,'Tilarán','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',62),(376,'Quebrada Grande','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',62),(377,'Tronadora','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',62),(378,'Santa Rosa','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',62),(379,'Líbano','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',62),(380,'Tierras Morenas','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',62),(381,'Arenal','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',62),(382,'Cabeceras','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',62),(383,'Carmona','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',63),(384,'Santa Rita','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',63),(385,'Zapotal','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',63),(386,'San Pablo','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',63),(387,'Porvenir','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',63),(388,'Bejuco','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',63),(389,'La Cruz','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',64),(390,'Santa Cecilia','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',64),(391,'La Garita','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',64),(392,'Santa Elena','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',64),(393,'Hojancha','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',65),(394,'Monte Romo','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',65),(395,'Puerto Carrillo','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',65),(396,'Huacas','Bienvenidos a nuestra hermosa comunidad!','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg','https://www.vamosaturistear.com/wp-content/uploads/2023/11/Escudo-de-Costa-Rica-2015-954x1024.jpg',65),(397,'Puntarenas','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',66),(398,'Pitahaya','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',66),(399,'Chomes','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',66),(400,'Lepanto','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',66),(401,'Paquera','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',66),(402,'Manzanillo','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',66),(403,'Guacimal','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',66),(404,'Barranca','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',66),(405,'Monte Verde','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',66),(406,'Isla Del Coco','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',66),(407,'Cóbano','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',66),(408,'Chacarita','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',66),(409,'Chira','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',66),(410,'Acapulco','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',66),(411,'El Roble','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',66),(412,'Arancibia','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',66),(413,'Espíritu Santo','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',67),(414,'San Juan Grande','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',67),(415,'Macacona','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',67),(416,'San Rafael','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',67),(417,'San Jerónimo','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',67),(418,'Caldera','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',67),(419,'Buenos Aires','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',68),(420,'Volcán','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',68),(421,'Potrero Grande','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',68),(422,'Boruca','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',68),(423,'Pilas','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',68),(424,'Colinas','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',68),(425,'Changuena','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',68),(426,'Biolley','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',68),(427,'Brunka','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',68),(428,'Miramar','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',69),(429,'La Unión','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',69),(430,'San Isidro','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',69),(431,'Puerto Cortés','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',70),(432,'Palmar','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',70),(433,'Sierpe','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',70),(434,'Bahía Ballena','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',70),(435,'Piedras Blancas','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',70),(436,'Bahía Drake','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',70),(437,'Quepos','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',71),(438,'Savegre','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',71),(439,'Naranjito','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',71),(440,'Golfito','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',72),(441,'Puerto Jiménez','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',72),(442,'Guaycara','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',72),(443,'Pavón','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',72),(444,'San Vito','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',73),(445,'Sabalito','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',73),(446,'Aguabuena','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',73),(447,'Limoncito','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',73),(448,'Pittier','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',73),(449,'Parrita','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',74),(450,'Corredor','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',75),(451,'La Cuesta','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',75),(452,'Canoas','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',75),(453,'Laurel','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',75),(454,'Jacó','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',76),(455,'Tárcoles','Bienvenidos a nuestra hermosa comunidad!','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg','https://ih1.redbubble.net/image.567401756.0200/flat,750x,075,f-pad,750x1000,f8f8f8.u2.jpg',76),(456,'Limón','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',77),(457,'Valle La Estrella','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',77),(458,'Rio Blanco','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',77),(459,'Matama','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',77),(460,'Guapiles','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',78),(461,'Jiménez','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',78),(462,'Rita','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',78),(463,'Roxana','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',78),(464,'Cariari','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',78),(465,'Colorado','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',78),(466,'La Colonia','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',78),(467,'Siquirres','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',79),(468,'Pacuarito','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',79),(469,'Florida','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',79),(470,'Germania','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',79),(471,'El Cairo','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',79),(472,'Alegría','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',79),(473,'Bratsi','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',80),(474,'Sixaola','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',80),(475,'Cahuita','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',80),(476,'Telire','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',80),(477,'Matina','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',81),(478,'Batán','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',81),(479,'Carrandi','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',81),(480,'Guácimo','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',82),(481,'Mercedes','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',82),(482,'Pocora','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',82),(483,'Rio Jiménez','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',82),(484,'Duacari','Bienvenidos a nuestra hermosa comunidad!','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg','https://pbs.twimg.com/media/FLXzRSzXwAEX19E?format=jpg&name=large',82);
/*!40000 ALTER TABLE `distritos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos` (
  `id_genero` int(11) NOT NULL,
  `nombre_genero` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'Masculino'),(2,'Femenino'),(3,'Otro'),(4,'No decir');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
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
  `nombre_provincia` varchar(50) NOT NULL,
  `banner` varchar(255) DEFAULT 'https://service.vas.al/media/Static/default.jpg?width=1920&height=500&mode=crop',
  PRIMARY KEY (`id_provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincias`
--

LOCK TABLES `provincias` WRITE;
/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
INSERT INTO `provincias` VALUES (1,'San José','https://revistasumma.com/wp-content/uploads/2022/08/San-Jose%CC%81-Costa-Rica-Revista-SUMMA.webp'),(2,'Alajuela','https://content.r9cdn.net/rimg/dimg/f5/51/19d94711-city-40517-166acab2b4c.jpg?width=1366&height=768&xhint=2434&yhint=2051&crop=true'),(3,'Cartago','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg/1200px-Basilica_Virgen_de_los_Angeles_CRI_07_2018_0316.jpg'),(4,'Heredia','https://upload.wikimedia.org/wikipedia/commons/c/ca/Fort%C3%ADn.JPG'),(5,'Guanacaste','https://www.travelexcellence.com/wp-content/uploads/2020/08/GUANACASTE_AND_LIBERIA_COSTA_RICA_TRAVEL_GUIDE-scaled.jpg'),(6,'Puntarenas','https://passporterapp.com/es/blog/wp-content/uploads/2021/11/Puntarenas-Costa-Rica.jpg'),(7,'Limón','https://www.larepublica.net/storage/images/2022/04/22/20220422172617.portada-limon.x2.jpg');
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
  `fecha` date NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_categoria_publicacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_publicacion`),
  KEY `fk_publicaciones_usuarios` (`id_usuario`),
  KEY `fk_publicaciones_categoria` (`id_categoria_publicacion`),
  CONSTRAINT `fk_publicaciones_categoria` FOREIGN KEY (`id_categoria_publicacion`) REFERENCES `categoriapublicacion` (`id_categoria_publicacion`),
  CONSTRAINT `fk_publicaciones_usuarios` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicaciones`
--

LOCK TABLES `publicaciones` WRITE;
/*!40000 ALTER TABLE `publicaciones` DISABLE KEYS */;
INSERT INTO `publicaciones` VALUES (1,'Inundación en el centro de SJM','Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae similique architecto harum ea veniam voluptatem suscipit necessitatibus velit dolorem, tenetur, illo dolorum repellendus. Aliquid, nihil odio. Nam, reprehenderit tempore illo quis mollitia libero qui rem ullam facilis sint tenetur, exercitationem ducimus? Aut facilis quo molestias iure alias voluptate unde eaque!','2023-11-03',9,1),(2,'Prueba','Prueba','2024-07-25',9,1),(3,'ACCIDENTE SOCORRO','Nos acabamos de accidentar en la plaza central, por favor llamen al 911','2024-07-25',9,1),(4,'Prueba','Prueba','2024-07-25',14,1),(5,'PRUEBA2','PRUEBA2','2024-07-25',14,1),(6,'PRUEBA3','PRUEBA3','2024-07-25',14,1),(7,'PRUEBA4','PRUEBA4','2024-07-25',14,1),(9,'PRUEBA5','PRUEBA5','2024-07-25',14,1),(10,'PRUEBA POCORA','PRUEBA POCORA','2024-07-25',11,1),(11,'SOY RICARDO Y CREE UNA NOTICIA EN BARVA','Prueba','2024-07-26',9,1),(12,'PRUEBA6','6','2024-07-26',9,1),(21,'PRUEBA','PRUEBA','2024-07-26',9,1),(22,'prueba','comunidad','2024-07-26',9,1),(23,'prueba','prueba','2024-07-26',9,1),(24,'1','2','2024-07-26',9,1),(25,'Q','R','2024-07-26',9,1),(26,'1','2222222222222222222','2024-07-26',9,1),(27,'qqqqqqqqqq','rrrrrrrrrrr','2024-07-26',9,1),(28,'4','4','2024-07-26',9,1),(29,'12312312','123123123','2024-07-26',9,1),(30,'DEFINITIVO','DEFINITIVO','2024-07-26',9,1),(31,'123','123','2024-07-26',15,1),(32,'PRUEBA RAPIDA','RAPIDA','2024-07-26',9,1),(33,'pruebacomn','pruebacomn','2024-07-26',9,1),(34,'123123','12312321','2024-07-26',9,1),(35,'4513312','413123','2024-07-26',9,1),(36,'titulo','terremoto','2024-07-26',9,2),(37,'412312312313','5123123123','2024-07-26',9,2),(38,'faffafaf','fafafaf','2024-07-26',9,1),(39,'PRUEBA NUEVA','ESTOY PROBANDO','2024-07-26',9,2),(40,'PRUEBA RAPIDA','RAPIDIN','2024-07-26',9,1),(41,'ESTA PASANDO UN TERREMOTO','AYUDA','2024-07-26',9,2),(42,'RAPIDA','POST RAPIDO','2024-07-26',9,1),(43,'PRUEBA NUEVA','PRUEBA NUEVA','2024-07-28',9,1),(44,'TERREMOTO','COMO LA CANCION','2024-07-28',9,2),(45,'PRUEBA RAPIDA','SE CAE LA CASA','2024-07-28',9,2),(46,'PRUEBA SANTA LUCIA','SANTA LUCIAAAAA','2024-07-28',17,2),(47,'PRUEBA NUEVA 10','..........','2024-07-29',9,1),(48,'PRUEBA DESPUES MERGE','MERGEEEE','2024-07-29',9,2),(51,'Prueba Merge','teeest','2024-07-30',9,2),(53,'Test despues de cambiar rutas','aaa','2024-07-30',9,1),(54,'PRUEBA ALBERTO SJM','PROBANDO','2024-08-03',20,2),(55,'PRUEBA NUEVA VISTA','PRUEBA','2024-08-03',9,1),(56,'PRUEBA CAMBIOS NUEVOS','Prueba detalles','2024-08-03',9,1),(57,'CATASTROFE EN SANTA ROSA','TODO SE INCENDIÓ','2024-08-03',21,1),(59,'PRUEBA IMAGENES','QWEWQEQWEQWE','2024-08-22',9,1),(63,'¿Cómo se utiliza esta aplicación?','Buenas, soy nuevo escuchando de community alert y quería saber cómo es que se usaba, veo que tiene mucho potencial y me realmente me interesa escuchar las principales ventajas o características de la app, gracias!','2024-08-22',23,1),(64,'Que se hace aca?','Ayuda, no tengo idea de como usar la aplicacion','2024-08-22',24,2);
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
  `fecha_seguimiento` date DEFAULT NULL,
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
INSERT INTO `usuario_distrito` VALUES (9,12,'2024-08-22'),(9,295,'2024-08-22'),(9,299,'2024-07-26'),(9,300,'2024-07-28'),(9,306,'2024-08-22'),(9,482,'2024-07-25'),(11,296,'2024-08-09'),(11,297,'2024-08-09'),(11,298,'2024-08-09'),(11,300,'2024-08-09'),(15,216,'2024-07-26'),(15,300,'2024-07-26'),(16,301,'2024-07-28'),(17,299,'2024-07-28'),(17,300,'2024-07-28'),(18,295,'2024-07-29'),(18,300,'2024-07-29'),(20,300,'2024-08-03'),(21,295,'2024-08-03'),(21,300,'2024-08-03'),(21,306,'2024-08-03'),(22,258,'2024-08-08'),(23,306,'2024-08-22'),(24,300,'2024-08-22'),(24,478,'2024-08-22');
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
  `id_genero` int(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `icono` varchar(255) NOT NULL,
  `fecha_ingreso` datetime NOT NULL DEFAULT current_timestamp(),
  `id_role` int(11) NOT NULL,
  `id_distrito` int(11) NOT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id_usuario`),
  KEY `fk_usuarios_roles` (`id_role`),
  KEY `fk_usuarios_distritos` (`id_distrito`),
  KEY `fk_usuarios_genero` (`id_genero`),
  CONSTRAINT `fk_usuarios_genero` FOREIGN KEY (`id_genero`) REFERENCES `generos` (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (9,'402620226','RICARDO AARON VARGAS MONTERO','ricardovm2803@gmail.com',1,'123','Me encanta usar Community Alert! PRUEBA CAMBIO 4','https://i.pinimg.com/474x/d8/6d/b6/d86db6399824681b0fab9092c617de48.jpg','2024-07-25 11:44:38',2,300,_binary ''),(10,'401230123','HILDA MARIA VILLALOBOS VILLALOBOS','hilda@gmail.com',1,'123','Estoy usando Community Alert!','','2024-07-25 11:44:38',2,5,_binary ''),(11,'401670123','ERICK RICARDO QUIROS GUTIERREZ','Erick@gmail.com',2,'123','Estoy usando Community Alert! PRUEBA CAMBIO','000','2024-07-25 11:44:38',2,296,_binary ''),(12,'402620227','JOSE DAVID PEREZ SOLIS','david@gmail.com',1,'123','Estoy usando Community Alert!','000','2024-07-25 11:45:13',2,324,_binary ''),(13,'402620228','VALERIA ALFARO VARGAS','valeria@gmail.com',1,'123','Estoy usando Community Alert!','000','2024-07-25 14:55:24',2,298,_binary ''),(14,'401540677','RONY GERARDO AGUILAR GOMEZ','rony@gmail.com',1,'123','Estoy usando Community Alert!','000','2024-07-25 19:19:51',2,296,_binary ''),(15,'401670876','RANDY ALBERTO MORA FONSECA','randy@gmail.com',1,'123','Estoy usando Community Alert!','','2024-07-26 16:16:44',2,216,_binary ''),(16,'401760123','MARIANNELA MATARRITA SOTO','mari@gmail.com',1,'123','Estoy usando Community Alert!','','2024-07-28 22:53:56',2,301,_binary ''),(17,'401230242','YAMILETH DEL CARMEN GONZALEZ SOTO','yami',1,'123','Estoy usando Community Alert!','','2024-07-28 22:55:24',2,299,_binary ''),(18,'402300855','FIORELLA HERNANDEZ MIRANDA','test@example.us',2,'123','Estoy usando Community Alert! Y SOY DE SJM','000','2024-07-29 12:46:26',2,300,_binary ''),(19,'117310079','JESUS DANIEL VEGA MARVEZ','jvega10079@ufide.ac.cr',1,'123','Estoy usando Community Alert!','https://static.vecteezy.com/system/resources/previews/007/409/979/non_2x/people-icon-design-avatar-icon-person-icons-people-icons-are-set-in-trendy-flat-style-user-icon-set-vector.jpg','2024-07-25 11:55:14',1,122,_binary ''),(20,'401200123','ALBERTO GERARDO ANTONIO CORDERO ARAYA','alberto',1,'123','Estoy usando Community Alert!','','2024-08-03 15:27:01',2,300,_binary ''),(21,'401820123','YENSY BEATRIZ MORA ABARCA','yensi@gmail.com',2,'123','Estoy usando Community Alert!','','2024-08-03 18:32:52',2,306,_binary ''),(22,'401780123','LILLIANA CORDOBA GUERRERO','lili@gmail.com',2,'123','Estoy usando Community Alert!','','2024-08-08 18:59:15',2,258,_binary ''),(23,'401010123','DANILO VICENTE ARCE ALFARO','danilo',1,'123',NULL,'','2024-08-22 19:10:10',2,306,_binary ''),(24,'501430123','CARLOS GILBERTO CRUZ CRUZ','carlos@gmail.com',1,'123',NULL,'','2024-08-22 19:28:50',2,478,_binary '');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'communityalert'
--

--
-- Dumping routines for database 'communityalert'
--
/*!50003 DROP PROCEDURE IF EXISTS `actualizarComunidadAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarComunidadAdmin`(`pId` int(11), `pDescripcion` text, `pBanner` varchar(225), `pIcono` varchar(225))
BEGIN
UPDATE communityalert.distritos
	SET 
    descripcion = IF(pDescripcion != '', pDescripcion, descripcion),
	banner = IF(pBanner != '', pBanner, banner),
	icono = IF(pIcono != '', pIcono, icono)
	WHERE id_distrito = pId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cambiarEstadoUsuarioAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cambiarEstadoUsuarioAdmin`(`pId` int(11))
BEGIN
    UPDATE communityalert.usuarios
    SET estado = NOT estado 
    WHERE id_usuario = pId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarIdDistrito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarIdDistrito`()
BEGIN

	SELECT  id_distrito, nombre_distrito
	FROM 	`communityalert`.`distritos`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarIdGenero` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarIdGenero`()
BEGIN

	SELECT  id_genero, nombre_genero
	FROM 	`communityalert`.`generos`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarUsuario`(`pId_usuario` INT)
BEGIN

	SELECT 
    u.id_usuario,
    u.cedula,
    u.nombre_usuario,
    u.email,
    u.id_genero,
    u.descripcion,
    u.icono,
    u.id_distrito,
    d.nombre_distrito,
    c.nombre_canton,
    p.nombre_provincia
	FROM 
		communityalert.usuarios u
	INNER JOIN 
		communityalert.distritos d ON u.id_distrito = d.id_distrito
	INNER JOIN
		communityalert.cantones c ON d.id_canton = c.id_canton
	INNER JOIN 
		communityalert.provincias p ON c.id_provincia = p.id_provincia
	WHERE 
		u.id_usuario = pId_usuario;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarUsuarioComentarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarUsuarioComentarios`(pId_usuario INT)
BEGIN

    SELECT COUNT(*) 'cantidad'
    FROM comentarios
    WHERE id_usuario = pId_usuario;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarUsuarioPosts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarUsuarioPosts`(pId_usuario INT)
BEGIN

    SELECT COUNT(*) 'cantidad'
    FROM publicaciones
    WHERE id_usuario = pId_usuario;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `contarCantidadUsuariosProvincia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `contarCantidadUsuariosProvincia`(IN pIdProvincia int(11))
BEGIN
	SELECT 
    count(DISTINCT ud.id_usuario) AS total_usuarios,
    count(pub.id_publicacion) AS total_publicaciones
	FROM 
		usuario_distrito ud
	INNER JOIN 
		distritos d ON d.id_distrito = ud.id_distrito
	INNER JOIN 
		cantones c ON d.id_canton = c.id_canton
	INNER JOIN 
		provincias p ON c.id_provincia = p.id_provincia
	LEFT JOIN 
		publicaciones pub ON pub.id_usuario = ud.id_usuario
	WHERE 
		p.id_provincia = pIdProvincia;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dejarDeSeguirComunidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dejarDeSeguirComunidad`(`pIdUsuario` int(11), `pIdComunidad` int(11))
BEGIN
		DELETE FROM communityalert.usuario_distrito
        WHERE id_usuario = pIdUsuario
        AND id_distrito = pIdComunidad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EditarPerfil` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarPerfil`(`pId_usuario` int,`pCedula` varchar(9), `pNombre_usuario` varchar(50),
					`pEmail` varchar(50),`pGenero` INT, `pDescripcion` varchar(50), `pIcono` varchar(255), `pId_distrito` int)
BEGIN

	UPDATE 	usuarios
    SET 	cedula = `pCedula`,
			nombre_usuario = `pNombre_usuario`,
            email = `pEmail`,
            id_genero = `pGenero`,
			descripcion = `pDescripcion`,
			icono = `pIcono`,
			id_distrito = `pId_distrito`
	WHERE 	id_usuario = `pId_usuario`;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EliminarComentarioPublicacionAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarComentarioPublicacionAdmin`(`pId` int(11))
BEGIN
	DELETE FROM communityalert.comentarios
    WHERE id_comentario = pId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarPublicacionAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarPublicacionAdmin`(`pId` int(11))
BEGIN
	DELETE FROM communityalert.comentarios 
    WHERE id_publicacion = pId;
    
	DELETE FROM communityalert.publicaciones 
    WHERE id_publicacion = pId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
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
		SELECT u.id_usuario, u.nombre_usuario, u.email, u.descripcion, u.icono, u.fecha_ingreso, u.id_distrito, d.nombre_distrito, u.id_role
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
/*!50003 DROP PROCEDURE IF EXISTS `obtenerCantones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerCantones`(`pIdProvincia` int(11))
BEGIN
	SELECT * FROM communityalert.cantones
    WHERE id_provincia = `pIdProvincia`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerCategorias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerCategorias`()
BEGIN
    SELECT id_categoria_publicacion, nombre_categoria_publicacion
    FROM communityalert.categoriapublicacion;
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
/*!50003 DROP PROCEDURE IF EXISTS `obtenerComentarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerComentarios`(
IN pIdPublicacion int(11)
)
BEGIN
		SELECT c.contenido, c.fecha, u.id_usuario, u.nombre_usuario, u.icono, d.nombre_distrito
        FROM comentarios c
        INNER JOIN communityalert.usuarios u ON c.id_usuario = u.id_usuario
        INNER JOIN communityalert.distritos d ON d.id_distrito = u.id_distrito
        WHERE c.id_publicacion = pIdPublicacion;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerComentariosPublicacionAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerComentariosPublicacionAdmin`(`pId` int(11))
BEGIN
	SELECT c.id_publicacion, c.id_comentario, c.contenido, c.fecha, u.nombre_usuario, u.icono
    FROM communityalert.comentarios c
    JOIN communityalert.usuarios u
    ON c.id_usuario = u.id_usuario
    WHERE id_publicacion = pId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerComentariosUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerComentariosUsuario`(
IN pIdUsuario int(11)
)
BEGIN
		SELECT c.contenido, c.fecha, u.nombre_usuario, u.icono, d.id_distrito , d.nombre_distrito, d.icono as icono_comunidad, p.id_publicacion , p.titulo, DATEDIFF(CURDATE(), c.fecha) AS dias_desde_comentario
        FROM comentarios c
        INNER JOIN communityalert.usuarios u ON c.id_usuario = u.id_usuario
        INNER JOIN communityalert.distritos d ON d.id_distrito = u.id_distrito
        INNER JOIN communityalert.publicaciones p ON p.id_publicacion = c.id_publicacion
        WHERE c.id_usuario = pIdUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerComunidadAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerComunidadAdmin`(`pId` int(11))
BEGIN

	SELECT id_distrito, nombre_distrito, descripcion, banner, icono
    FROM communityalert.distritos
    WHERE id_distrito = pId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerComunidadesAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerComunidadesAdmin`()
BEGIN
SELECT d.id_distrito, p.nombre_provincia, c.nombre_canton, d.nombre_distrito, COUNT(u.id_usuario) As cantidadUsuarios
FROM communityalert.provincias p 
JOIN communityalert.cantones c ON p.id_provincia = c.id_provincia
JOIN communityalert.distritos d ON c.id_canton = d.id_canton
LEFT JOIN communityalert.usuarios u ON u.id_distrito = d.id_distrito
GROUP BY p.nombre_provincia, c.nombre_canton, d.nombre_distrito;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerComunidadesSeguidas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerComunidadesSeguidas`(`pIdUsuario` int(11), `pIdComunidad` int(11))
BEGIN
		SELECT * FROM communityalert.usuario_distrito
        WHERE id_usuario = pIdUsuario
        AND id_distrito = pIdComunidad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerDistritos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerDistritos`(`pIdCanton` int(11))
BEGIN
	SELECT * FROM communityalert.distritos
    WHERE id_canton = `pIdCanton`;
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
/*!50003 DROP PROCEDURE IF EXISTS `obtenerIdUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerIdUsuario`(IN pCedula varchar(20))
BEGIN
	SELECT id_usuario
    FROM communityalert.usuarios
    WHERE cedula = pCedula;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerInformacionComunidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerInformacionComunidad`(`pIdComunidad` int(11))
BEGIN
		SELECT nombre_distrito, descripcion, banner, icono
        FROM communityalert.distritos
        WHERE id_distrito = `pIdComunidad`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerListaComunidadesSeguidas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerListaComunidadesSeguidas`(`pIdUsuario` int(11))
BEGIN
		SELECT ud.id_distrito, d.nombre_distrito, banner, descripcion
        FROM communityalert.usuario_distrito ud
        INNER JOIN distritos d on ud.id_distrito = d.id_distrito
        WHERE id_usuario = pIdUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerNombreProvinciaCanton` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerNombreProvinciaCanton`(IN p_IdDistrito int)
BEGIN
	SELECT nombre_provincia, nombre_canton
    FROM distritos d
    INNER JOIN cantones c ON c.id_canton = d.id_canton
    INNER JOIN provincias p ON p.id_provincia = c.id_provincia
    WHERE d.id_distrito = p_IdDistrito;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerNoticia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerNoticia`(`pIdPublicacion` int(11))
BEGIN
    SELECT A.*, U.id_usuario, U.nombre_usuario, U.icono, c.nombre_categoria_publicacion, d.nombre_distrito
	FROM usuarios U
	INNER JOIN publicaciones A ON A.id_usuario = U.id_usuario
    INNER JOIN communityalert.categoriapublicacion c ON A.id_categoria_publicacion = c.id_categoria_publicacion
    INNER JOIN communityalert.distritos d ON U.id_distrito = d.id_distrito
	WHERE A.id_publicacion = pIdPublicacion;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerNoticiaSegunContenido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerNoticiaSegunContenido`(
	IN ptitulo VARCHAR(70),
    IN pcontenido VARCHAR(255),
    IN pusuario INT,
    IN pcategoria INT
)
BEGIN
	SELECT id_publicacion
    FROM communityalert.publicaciones
    WHERE titulo = ptitulo
    AND contenido = pcontenido
    AND id_usuario = pusuario
    AND id_categoria_publicacion = pcategoria;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerPostsComunidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerPostsComunidad`(`pIdComunidad` int(11))
BEGIN
		SELECT p.id_publicacion, p.titulo, p.contenido, p.fecha, c.nombre_categoria_publicacion, u.nombre_usuario, u.icono, u.id_usuario, d.id_distrito, d.nombre_distrito
		FROM communityalert.publicaciones p
		INNER JOIN communityalert.usuarios u ON u.id_usuario = p.id_usuario
		INNER JOIN communityalert.categoriapublicacion c ON c.id_categoria_publicacion = p.id_categoria_publicacion
        INNER JOIN communityalert.distritos d ON d.id_distrito = u.id_distrito
		WHERE u.id_distrito = `pIdComunidad`
        ORDER BY p.fecha DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerPostsComunidadesSeguidas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerPostsComunidadesSeguidas`(`pIdUsuario` int (11))
BEGIN
	SELECT p.id_publicacion, p.titulo, p.contenido, p.fecha, u.nombre_usuario, c.nombre_categoria_publicacion, u.icono, u.id_usuario, ud.id_distrito, d.nombre_distrito
	FROM communityalert.publicaciones p
	INNER JOIN communityalert.usuarios u ON p.id_usuario = u.id_usuario
	INNER JOIN communityalert.usuario_distrito ud ON ud.id_distrito = u.id_distrito
	INNER JOIN communityalert.categoriapublicacion c ON p.id_categoria_publicacion = c.id_categoria_publicacion
    INNER JOIN communityalert.distritos d ON u.id_distrito = d.id_distrito
	WHERE ud.id_usuario = pIdUsuario
	ORDER BY p.fecha DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerPostsUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerPostsUsuario`(IN pIdUsuario int(11))
BEGIN
	SELECT p.id_publicacion, p.titulo, p.contenido, p.fecha, u.nombre_usuario, c.nombre_categoria_publicacion, u.icono, u.id_usuario, d.id_distrito, d.nombre_distrito
	FROM communityalert.publicaciones p
	INNER JOIN communityalert.usuarios u ON u.id_usuario = p.id_usuario
    INNER JOIN communityalert.categoriapublicacion c ON c.id_categoria_publicacion = p.id_categoria_publicacion
    INNER JOIN communityalert.distritos d ON d.id_distrito = u.id_distrito
    WHERE p.id_usuario = pIdUsuario
	ORDER BY p.fecha DESC;
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
/*!50003 DROP PROCEDURE IF EXISTS `obtenerPublicacionAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerPublicacionAdmin`(`pId` int(11))
BEGIN
	SELECT p.id_publicacion, p.titulo, p.contenido, p.fecha, u.nombre_usuario, u.icono
    FROM usuarios u JOIN publicaciones p ON u.id_usuario = p.id_usuario
    WHERE p.id_publicacion = pId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerPublicacionesAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerPublicacionesAdmin`()
BEGIN
	SELECT p.id_publicacion, p.titulo, p.contenido, COUNT(c.id_comentario) AS cantidadComentarios, cp.nombre_categoria_publicacion AS categoria
    FROM communityalert.publicaciones p
    LEFT JOIN communityalert.comentarios c
    ON p.id_publicacion = c.id_publicacion
    LEFT JOIN categoriapublicacion cp
    ON cp.id_categoria_publicacion = p.id_categoria_publicacion
    GROUP BY p.id_publicacion;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerSeguidoresYFecha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerSeguidoresYFecha`(IN p_IdDistrito int)
BEGIN
    
    SELECT DATE(NOW()) as fecha, COUNT(*) as seguidores FROM usuario_distrito
    WHERE id_distrito = p_IdDistrito;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerUsuariosAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerUsuariosAdmin`()
BEGIN
SELECT 
        u.estado, 
        u.id_usuario, 
        u.cedula, 
        u.nombre_usuario, 
        d.nombre_distrito,
        (SELECT COUNT(p.id_publicacion) 
         FROM communityalert.publicaciones p 
         WHERE p.id_usuario = u.id_usuario) AS cantidadPosts,
        (SELECT COUNT(DISTINCT c.id_comentario) 
         FROM communityalert.comentarios c 
         WHERE c.id_usuario = u.id_usuario) AS cantidadComentarios
    FROM 
        communityalert.usuarios u 
    JOIN 
        communityalert.distritos d ON u.id_distrito = d.id_distrito
    GROUP BY 
        u.estado, 
        u.id_usuario, 
        u.cedula, 
        u.nombre_usuario, 
        d.nombre_distrito;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procesoCambioDistrito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procesoCambioDistrito`(IN pIdUsuario int(11))
BEGIN
		DELETE FROM comentarios
		WHERE id_publicacion IN (
			SELECT id_publicacion
			FROM publicaciones
			WHERE id_usuario = pIdUsuario 
		);
		DELETE FROM publicaciones
		WHERE id_usuario = pIdUsuario; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `publicarComentario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `publicarComentario`(
IN pContenido text,
IN pIdPublicacion int(11),
IN pIdUsuario int(11)
)
BEGIN

	INSERT INTO communityalert.comentarios (contenido, fecha, id_publicacion, id_usuario)
    VALUES (pContenido, now(), pIdPublicacion, pIdUsuario);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PublicarNoticia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PublicarNoticia`(
    IN ptitulo VARCHAR(70),
    IN pcontenido VARCHAR(255),
    IN pusuario INT,
    IN pcategoria INT
)
BEGIN
    -- Insertar la información en la tabla publicaciones
    INSERT INTO publicaciones (titulo, contenido, fecha, id_usuario, id_categoria_publicacion)
    VALUES (ptitulo, pcontenido, DATE(NOW()), pusuario, pcategoria);

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
                `pGenero` INT, 
                `pContrasennia` varchar(50), 
                `pDistrito` varchar(50))
BEGIN
			
	INSERT INTO communityalert.usuarios (`cedula`, `nombre_usuario`, `email`, `id_genero`, `password` ,`id_role`, `id_distrito`)
	VALUES (`pCedula`, CONCAT(`pNombre`, ' ', `pApellidos`), `pCorreo`, `pGenero`, `pContrasennia`, 2, `pDistrito`);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `seguirComunidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `seguirComunidad`(`pIdUsuario` int(11), `pIdComunidad` int(11))
BEGIN
	INSERT INTO communityalert.usuario_distrito (id_usuario, id_distrito, fecha_seguimiento)
    VALUES (`pIdUsuario`, `pIdComunidad`, DATE(NOW()));
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

-- Dump completed on 2024-08-22 21:52:52
