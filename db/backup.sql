-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: spring_jpa
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

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
-- Table structure for table `educacion`
--

DROP TABLE IF EXISTS `educacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `educacion` (
  `id` bigint(20) NOT NULL,
  `escuela` varchar(255) DEFAULT NULL,
  `escuela_image` varchar(255) DEFAULT NULL,
  `escuela_url` varchar(255) DEFAULT NULL,
  `fin` datetime(6) DEFAULT NULL,
  `inicio` datetime(6) DEFAULT NULL,
  `puntaje` int(11) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `persona_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8co4tldnpfbl6l8oc06veg4jr` (`persona_id`),
  CONSTRAINT `FK8co4tldnpfbl6l8oc06veg4jr` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educacion`
--

LOCK TABLES `educacion` WRITE;
/*!40000 ALTER TABLE `educacion` DISABLE KEYS */;
INSERT INTO `educacion` VALUES (23,'Harvard University','https://i.ibb.co/8Y0HVm6/harvard-logo.png','https://cs50.harvard.edu/x/2023/','2022-12-01 00:00:00.000000','2022-01-01 00:00:00.000000',10,'CS50: Introduction to Computer Science',NULL),(24,'EducacionIT','https://i.ibb.co/MsJwBWt/Educacion-IT-logo.png','https://www.educacionit.com/','2022-02-01 00:00:00.000000','2021-08-01 00:00:00.000000',9,'Full-Stack Engineer',NULL),(25,'Jackson Galaxy - Encantador de Gatos','https://i.ibb.co/7WYQyLS/v4-460px-Teach-Your-Cat-to-Do-Tricks-Step-1-Version-4.jpg','','2023-03-01 00:00:00.000000','2022-01-01 00:00:00.000000',10,'Aprendizaje en sociabilización gatuna',NULL),(26,'Jackson Galaxy - Encantador de Gatos','https://i.ibb.co/7WYQyLS/v4-460px-Teach-Your-Cat-to-Do-Tricks-Step-1-Version-4.jpg','','2023-03-01 00:00:00.000000','2022-01-01 00:00:00.000000',10,'Aprendizaje en sociabilización gatuna',NULL),(27,'Nintendo','https://i.ibb.co/zx1h70M/supermarioworld.jpg','','2000-12-01 00:00:00.000000','1990-01-01 00:00:00.000000',10,'Super Mario World',NULL),(28,'Harvard University','https://i.ibb.co/8Y0HVm6/harvard-logo.png','https://cs50.harvard.edu/x/2023/','2022-12-01 00:00:00.000000','2022-01-01 00:00:00.000000',10,'CS50: Introduction to Computer Science',NULL),(29,'EducacionIT','https://i.ibb.co/MsJwBWt/Educacion-IT-logo.png','https://www.educacionit.com/','2022-02-01 00:00:00.000000','2021-08-01 00:00:00.000000',9,'Full-Stack Engineer',NULL);
/*!40000 ALTER TABLE `educacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educacion_seq`
--

DROP TABLE IF EXISTS `educacion_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `educacion_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educacion_seq`
--

LOCK TABLES `educacion_seq` WRITE;
/*!40000 ALTER TABLE `educacion_seq` DISABLE KEYS */;
INSERT INTO `educacion_seq` VALUES (101);
/*!40000 ALTER TABLE `educacion_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiencia`
--

DROP TABLE IF EXISTS `experiencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiencia` (
  `id` bigint(20) NOT NULL,
  `compania` varchar(255) DEFAULT NULL,
  `fin` datetime(6) DEFAULT NULL,
  `inicio` datetime(6) DEFAULT NULL,
  `jornada` varchar(255) DEFAULT NULL,
  `puesto` varchar(255) DEFAULT NULL,
  `puesto_image` varchar(255) DEFAULT NULL,
  `puesto_url` varchar(255) DEFAULT NULL,
  `persona_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK30e9aa2tv4x2kirmadmmggsme` (`persona_id`),
  CONSTRAINT `FK30e9aa2tv4x2kirmadmmggsme` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiencia`
--

LOCK TABLES `experiencia` WRITE;
/*!40000 ALTER TABLE `experiencia` DISABLE KEYS */;
INSERT INTO `experiencia` VALUES (12,'YGMA Software','2022-12-01 00:00:00.000000','2022-01-01 00:00:00.000000','Part-time','React Native Developer','https://i.ibb.co/bd8yQYt/logohome.png','https://flexy.com.ar/',NULL),(13,'Purrina Meow Meow','2023-03-01 00:00:00.000000','2022-01-01 00:00:00.000000','Tiempo completo','Control de calidad de alimento balanceado','https://i.ibb.co/ydbvTgp/purrinameowmeow.jpg','',NULL),(14,'Purrina Meow Meow','2023-03-01 00:00:00.000000','2022-01-01 00:00:00.000000','Part-time','Control de calidad de objetos decorativos','https://i.ibb.co/m9QRQ9Q/istockphoto-1363605587-612x612.jpg','',NULL),(15,'Purrina Meow Meow','2023-03-01 00:00:00.000000','2021-01-01 00:00:00.000000','Tiempo completo','Control de calidad de agua mineral','https://i.ibb.co/Nn5gK9B/2c66d44cd6b6463f914b992031e7f5f3.jpg','',NULL),(16,'Purrina Meow Meow','2023-03-01 00:00:00.000000','2021-01-01 00:00:00.000000','Part-time','Control de calidad de cajones de placard','https://i.ibb.co/92jyxwv/3o4dkl9uko831.jpg','',NULL),(17,'Nintendo','2022-12-01 00:00:00.000000','2019-01-01 00:00:00.000000','Part-time','Super Mario Maker 2','https://i.ibb.co/1ZHPfrf/234495-7-sq.jpg','',NULL),(18,'Nintendo','2022-12-01 00:00:00.000000','2017-01-01 00:00:00.000000','Part-time','Super Mario Odyssey','https://i.ibb.co/rfHC4Pz/mario.png','',NULL),(19,'YGMA Software','2022-12-01 00:00:00.000000','2022-01-01 00:00:00.000000','Part-time','React Native Developer','https://i.ibb.co/bd8yQYt/logohome.png','https://flexy.com.ar/',NULL);
/*!40000 ALTER TABLE `experiencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiencia_seq`
--

DROP TABLE IF EXISTS `experiencia_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiencia_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiencia_seq`
--

LOCK TABLES `experiencia_seq` WRITE;
/*!40000 ALTER TABLE `experiencia_seq` DISABLE KEYS */;
INSERT INTO `experiencia_seq` VALUES (101);
/*!40000 ALTER TABLE `experiencia_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `id` bigint(20) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `contacto` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fecha_nacimiento` datetime(6) DEFAULT NULL,
  `nacionalidad` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `ocupacion` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `sobre_mi` text DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (13,'López','https://i.ibb.co/rvqYFPn/una-taza-de-javascript.png','alejandramelisalopez2@gmail.com','alejandramelisalopez2@gmail.com','1997-07-09 00:00:00.000000','Buenos Aires, Argentina','Alejandra Melisa','React Developer','ale123','https://i.ibb.co/MD5CDsW/1643384816564.jpg','Hola! Mi nombre es Alejandra y soy estudiante de Programación. Me encuentro trabajando en un proyecto freelance en una aplicación mobile en React Native con Expo, dónde aprendí el manejo de Git, interactuar con APIs, refactorear código (entre otras cosas) y lo más importante, trabajar en equipo. En este momento me encuentro búscando oportunidades para poder potenciar mi carrera como programadora.','ale'),(14,'López','https://i.ibb.co/JCXDWk4/pattern-cats-fish-abstract-4k-4z-1366x768.jpg','','','2022-05-05 00:00:00.000000','Buenos Aires, Argentina','Budín','Ingeniero en control de calidad de alimento balanceado','123','https://i.ibb.co/p4V6TfH/photo1664050883.jpg','Hola! Soy Budín, soy un gatito blanco y negro, y tengo asma. De vez en cuando suelo tener tos, pero a pesar de esto, soy un gato curioso y amoroso. Me encanta jugar y explorar, disfruto de la atención y el afecto de mis humanos. A veces necesito tomar mi inhalador o tomar otros medicamentos para controlar mi asma, pero esto no me detiene para disfrutar de la vida como cualquier otro gato. Aunque tenga algunos desafíos respiratorios, soy un gato feliz y agradecido por la vida que tengo.','budin'),(15,'López','https://i.ibb.co/QrYcBqS/101208.jpg','','','2022-05-05 00:00:00.000000','Buenos Aires, Argentina','Kiwi','Ingeniera en control de calidad de agua mineral','123','https://i.ibb.co/XJ2DGNH/kiwiwalppaper.jpg','Hola! Soy Kiwi, tengo un pelaje suave, sedoso y gris con hermosos matices de gris en él. Me gusta pasar mis días explorando, saltando de un mueble a otro y jugando con mis juguetes favoritos. A veces, sobre todo en el invierno, disfruto de largas siestas en lugares cómodos y cálidos, especialmente los cajones de la ropa, tirando y ensuciando todo. De todas formas, soy muy buena y muy cariñosa con mis humanos.','kiwi'),(16,'T. Munchakoopas','https://i.ibb.co/svBQNJh/mario-super-mario-odyssey-hd-wallpaper-preview.jpg','','','1997-07-09 00:00:00.000000','Nintendo, Japón','Yoshi','Super Mario World','123','https://i.ibb.co/R9hSXT3/yoshii.png','Yoshi posee la habilidad de manipular su lengua extensible de manera que puede ingerir a su presa y comer frutas, las cuales lo llenan de energía para poder poner huevos. Algunos confunden que Yoshi solo digiere y defeca huevos pero no es así: él da a luz un huevo, el cual es usado regularmente como arma al lanzarlo; o caso contrario, si se mantiene mucho tiempo el huevo intacto, pronto nacería otro Yoshi.','Yoshi');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_educaciones`
--

DROP TABLE IF EXISTS `persona_educaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona_educaciones` (
  `persona_id` bigint(20) NOT NULL,
  `educaciones_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_kt1imyekfs5eidiel754ewx4e` (`educaciones_id`),
  KEY `FK65vt6wplci7rp9ge6wg03ssvr` (`persona_id`),
  CONSTRAINT `FK65vt6wplci7rp9ge6wg03ssvr` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`),
  CONSTRAINT `FKep4fmw6eq36ih4vec68imjla1` FOREIGN KEY (`educaciones_id`) REFERENCES `educacion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_educaciones`
--

LOCK TABLES `persona_educaciones` WRITE;
/*!40000 ALTER TABLE `persona_educaciones` DISABLE KEYS */;
INSERT INTO `persona_educaciones` VALUES (13,23),(13,24),(14,25),(15,26),(16,27);
/*!40000 ALTER TABLE `persona_educaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_experiencias`
--

DROP TABLE IF EXISTS `persona_experiencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona_experiencias` (
  `persona_id` bigint(20) NOT NULL,
  `experiencias_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_opau9bdobomaxulnkmmx905rw` (`experiencias_id`),
  KEY `FK505cgyaprhhq9c0mj2385ep39` (`persona_id`),
  CONSTRAINT `FK505cgyaprhhq9c0mj2385ep39` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`),
  CONSTRAINT `FKoiilajr94gddma2k7kdmljefl` FOREIGN KEY (`experiencias_id`) REFERENCES `experiencia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_experiencias`
--

LOCK TABLES `persona_experiencias` WRITE;
/*!40000 ALTER TABLE `persona_experiencias` DISABLE KEYS */;
INSERT INTO `persona_experiencias` VALUES (13,12),(14,13),(14,14),(15,15),(15,16),(16,17),(16,18);
/*!40000 ALTER TABLE `persona_experiencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_proyectos`
--

DROP TABLE IF EXISTS `persona_proyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona_proyectos` (
  `persona_id` bigint(20) NOT NULL,
  `proyectos_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_bow55nkr2gii0vg08t3ex3l59` (`proyectos_id`),
  KEY `FK318a7k9m9hdd80xbfqv50g9il` (`persona_id`),
  CONSTRAINT `FK318a7k9m9hdd80xbfqv50g9il` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`),
  CONSTRAINT `FKnttxllj9t60vjyd7xovmm04ap` FOREIGN KEY (`proyectos_id`) REFERENCES `proyectos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_proyectos`
--

LOCK TABLES `persona_proyectos` WRITE;
/*!40000 ALTER TABLE `persona_proyectos` DISABLE KEYS */;
INSERT INTO `persona_proyectos` VALUES (13,23),(13,24);
/*!40000 ALTER TABLE `persona_proyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_seq`
--

DROP TABLE IF EXISTS `persona_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_seq`
--

LOCK TABLES `persona_seq` WRITE;
/*!40000 ALTER TABLE `persona_seq` DISABLE KEYS */;
INSERT INTO `persona_seq` VALUES (201);
/*!40000 ALTER TABLE `persona_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_skills`
--

DROP TABLE IF EXISTS `persona_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona_skills` (
  `persona_id` bigint(20) NOT NULL,
  `skills_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_9xy7mwwoee90ydbhcfn5viw4m` (`skills_id`),
  KEY `FKgmh26nr7dajm9vlfm666g8pmw` (`persona_id`),
  CONSTRAINT `FKain18y11ym7htj9aj9b9d9c60` FOREIGN KEY (`skills_id`) REFERENCES `skills` (`id`),
  CONSTRAINT `FKgmh26nr7dajm9vlfm666g8pmw` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_skills`
--

LOCK TABLES `persona_skills` WRITE;
/*!40000 ALTER TABLE `persona_skills` DISABLE KEYS */;
INSERT INTO `persona_skills` VALUES (13,45),(13,46),(13,47),(13,48),(14,49),(14,50),(14,51),(14,52),(15,53),(15,54),(15,55),(15,56),(16,57),(16,58),(16,59),(16,60);
/*!40000 ALTER TABLE `persona_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectos`
--

DROP TABLE IF EXISTS `proyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyectos` (
  `id` bigint(20) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha_final` datetime(6) DEFAULT NULL,
  `fecha_inicio` datetime(6) DEFAULT NULL,
  `nombre_proyecto` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectos`
--

LOCK TABLES `proyectos` WRITE;
/*!40000 ALTER TABLE `proyectos` DISABLE KEYS */;
INSERT INTO `proyectos` VALUES (23,'Este proyecto final fue muy difícil, tuve que enfrentarme con muchísimos desafíos, como aprender a lidiar con la frustración, y modificar mi manera de pensar para mejorar mi resolución de problemas lógicos. También tuve una pequeña introducción a otros lenguajes, las estructuras de datos y por último la implementación de mi proyecto final, el cuál es una fan page de Game of Thrones, que obtiene sus datos a través de una API propia que hice con Node.JS y Express, el cuál que también tuvo sus retos.','2022-12-01 00:00:00.000000','2021-12-01 00:00:00.000000','CS50: Introduction to Computer Science','https://cs50.harvard.edu/x/2023/'),(24,'Este es mi proyecto final realizado en el Bootcamp FullStack de EducacionIT. Se trata de una página responsive de ecommerce realizada con HTML, SCSS, Handlebars y Javascript. Este proyecto representa mis primeros pasos en la programación, y ¡estoy muy feliz con el resultado! Fue difícil, pero valió la pena el esfuerzo.','2022-02-01 00:00:00.000000','2021-07-01 00:00:00.000000','Connecticus:EducacionIT','https://connecticus-shop.glitch.me/'),(25,'Este proyecto final fue muy difícil, tuve que enfrentarme con muchísimos desafíos, como aprender a lidiar con la frustración, y modificar mi manera de pensar para mejorar mi resolución de problemas lógicos. También tuve una pequeña introducción a otros lenguajes, las estructuras de datos y por último la implementación de mi proyecto final, el cuál es una fan page de Game of Thrones, que obtiene sus datos a través de una API propia que hice con Node.JS y Express, el cuál que también tuvo sus retos.','2022-12-01 00:00:00.000000','2021-12-01 00:00:00.000000','CS50: Introduction to Computer Science','https://cs50.harvard.edu/x/2023/'),(26,'Este es mi proyecto final realizado en el Bootcamp FullStack de EducacionIT. Se trata de una página responsive de ecommerce realizada con HTML, SCSS, Handlebars y Javascript. Este proyecto representa mis primeros pasos en la programación, y ¡estoy muy feliz con el resultado! Fue difícil, pero valió la pena el esfuerzo.','2022-02-01 00:00:00.000000','2021-07-01 00:00:00.000000','Connecticus:EducacionIT','https://connecticus-shop.glitch.me/');
/*!40000 ALTER TABLE `proyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectos_seq`
--

DROP TABLE IF EXISTS `proyectos_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyectos_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectos_seq`
--

LOCK TABLES `proyectos_seq` WRITE;
/*!40000 ALTER TABLE `proyectos_seq` DISABLE KEYS */;
INSERT INTO `proyectos_seq` VALUES (101);
/*!40000 ALTER TABLE `proyectos_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `id` bigint(20) NOT NULL,
  `lenguaje` varchar(255) DEFAULT NULL,
  `porcentaje_de_conocimiento` varchar(255) DEFAULT NULL,
  `progreso` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (45,'React','70%','70%'),(46,'Java','50%','50%'),(47,'HTML','80%','80%'),(48,'CSS','80%','80%'),(49,'Comer Atún','100%','70%'),(50,'Dormir todo el día','100%','50%'),(51,'Robar comida de la mesa','60%','80%'),(52,'Romper sillones','50%','80%'),(53,'Comer Atún','100%','70%'),(54,'Dormir todo el día','100%','50%'),(55,'Robar agua de los vasos de mis humanos','100%','80%'),(56,'Romper sillones','50%','80%'),(57,'Ingerir Frutas','100%','70%'),(58,'Dar a luz huevos','100%','50%'),(59,'Ingerir caparazón de Koopa Troopa','100%','80%'),(60,'Correr a grandes velocidades','100%','80%'),(61,'React','70%','70%'),(62,'Java','50%','50%'),(63,'HTML','80%','80%'),(64,'CSS','80%','80%');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills_seq`
--

DROP TABLE IF EXISTS `skills_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills_seq`
--

LOCK TABLES `skills_seq` WRITE;
/*!40000 ALTER TABLE `skills_seq` DISABLE KEYS */;
INSERT INTO `skills_seq` VALUES (151);
/*!40000 ALTER TABLE `skills_seq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-17 12:32:59
