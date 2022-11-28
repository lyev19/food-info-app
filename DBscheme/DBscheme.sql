CREATE DATABASE  IF NOT EXISTS `comida` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `comida`;
-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: comida
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.22.04.1

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
-- Table structure for table `Carnes`
--

DROP TABLE IF EXISTS `Carnes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Carnes` (
  `id` int DEFAULT NULL,
  `Alimento` text,
  `Género - especie - variedad` text,
  `Energía kj` int DEFAULT NULL,
  `Energía kcal` int DEFAULT NULL,
  `Agua g` double DEFAULT NULL,
  `Proteínas g` double DEFAULT NULL,
  `Grasa Total g` double DEFAULT NULL,
  `Carbohidratos totales g` double DEFAULT NULL,
  `Cenizas g` double DEFAULT NULL,
  `Sodio mg` int DEFAULT NULL,
  `Potasio mg` int DEFAULT NULL,
  `Calcio mg` int DEFAULT NULL,
  `Fósforo mg` int DEFAULT NULL,
  `Hierro mg` double DEFAULT NULL,
  `Zinc mg` int DEFAULT NULL,
  `Tiamina mg` double DEFAULT NULL,
  `Rivoflavina mg` double DEFAULT NULL,
  `Niacina mg` double DEFAULT NULL,
  `Vitamina C mg` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Carnes`
--

LOCK TABLES `Carnes` WRITE;
/*!40000 ALTER TABLE `Carnes` DISABLE KEYS */;
INSERT INTO `Carnes` VALUES (218,'Cerdo, chorizo, fresco, crudo','Cerdo',1901,454,39.8,13,44.2,1.1,1.9,0,0,0,0,0,0,0.107,0.162,2.7,2.6),(213,'Cerdo, costilla flaca, cruda','Cerdo',1047,250,60.7,19.9,18.9,0,0.8,99,380,2,233,1.39,0,0.584,0.089,11.6,0),(214,'Cerdo, costilla, a la parrilla','Cerdo',1340,320,50,25.2,24.3,0,0.5,106,359,6,209,1.16,0,0,0,0,0),(216,'Cerdo, jamón cocido','Cerdo',884,211,60.4,20.3,14.4,0,4.9,1900,107,15,143,7.45,0,0,0,0,0),(215,'Cerdo, jamón crudo','Cerdo',1981,473,28.9,18,44.6,0,8.5,2940,219,11,152,4.02,0,0,0,0,0),(217,'Cerdo, panceta','Cerdo',2805,670,14.3,8.3,70.8,0,6.6,1780,17,37,38,1.27,0,0,0,0,0),(219,'Cordero, carne de la paleta, crudo','Cordero',415,99,77,18.7,2.7,0,1.6,97,361,13,170,1.69,0,0.115,0.111,10.6,0),(220,'Cordero, carne de la paleta, flaca, a la parrilla','Cordero',762,182,62,28,7.8,0,2.2,122,446,17,242,5.65,0,0,0,0,0),(224,'Pollo, asado a la parrilla','Pollo',703,168,63.8,29.8,5.4,0,1,0,333,11,249,1.97,0,0,0,0,0),(223,'Pollo, asado al horno','Pollo',678,162,64.4,28.4,5.4,0,1.8,129,327,12,193,3.34,0,0,0,0,0),(221,'Pollo, carne-pellejo-menudos, fresco, crudo','Pollo',369,88,80,16.3,2.5,0,1.2,119,292,2,200,5.04,0,0,0,0,0),(222,'Pollo, hervido','Pollo',829,198,63,23.1,11.7,0,2.2,110,363,2,158,1.71,0,0,0,0,0),(225,'Rana, carne de la pata, fresca, cruda','Rana',268,64,83.7,15.5,0.2,0,0.6,0,0,0,0,0,0,0,0,0,0),(226,'Vacuno, asado, fresco, crudo','Vacuno',712,170,69.5,18.4,10.7,0,1.4,0,0,0,0,0,0,0,0,0,0),(503,'Vacuno, bife angosto c/c de novillito, fresco, crudo','Vacuno',796,190,67,21,12,0,0,42,0,0,0,0,0,0,0,0,0),(227,'Vacuno, bife, a la parrilla','Vacuno',791,189,63.9,24.6,10.1,0,1.4,97,367,4,238,3.52,0,0,0,0,0),(504,'Vacuno, bola de lomo de novillito, fresco, crudo','Vacuno',477,114,74.3,22,3.2,0,1.1,44,0,0,0,0,0,0,0,0,0),(505,'Vacuno, brazuelo de novillito, fresco, crudo','Vacuno',502,120,73.8,21,3.9,0,0.97,56,0,0,0,0,0,0,0,0,0),(228,'Vacuno, caracú (médula de hueso largo), crudo','Vacuno',3287,785,0,0.5,87,0,12.5,0,0,0,0,0,0,0,0,0,0),(506,'Vacuno, colita de cuadril de novillito, fresco, crudo','Vacuno',599,143,71.6,21,6.7,0,1,36,0,0,0,0,0,0,0,0,0),(507,'Vacuno, corazón de cuadril de novillito, fresco, crudo','Vacuno',486,116,73.7,22,2.6,0,1,39,0,0,0,0,0,0,0,0,0),(229,'Vacuno, cuadril y bife angosto flaco, fresco, crudo','Vacuno',465,111,74,21,3,0,2,47,368,2,234,3.18,0,0,0,0,0),(230,'Vacuno, en conserva, enlatado','Vacuno',938,224,59.5,23.7,14.4,0,2.4,895,148,14,145,13.45,0,0,0,0,0),(554,'Vacuno, hamburguesas cocidas','Vacuno',1038,248,59.6,20.5,18.4,0,2.6,834,322,9,0,2.4,5,0,0,0,0),(553,'Vacuno, hamburguesas crudas','Vacuno',913,218,63.9,17.3,16.5,0,2.62,703,278,7,0,1.79,4,0,0,0,0),(556,'Vacuno, hamburguesas light cocidas','Vacuno',833,199,62.8,21,12.8,0,2.69,862,342,12,0,2.66,5,0,0,0,0),(555,'Vacuno, hamburguesas light crudas','Vacuno',733,175,68.2,18.4,11.3,0,2.39,754,320,11,0,2.01,4,0,0,0,0),(231,'Vacuno, hígado, crudo','Vacuno',553,132,69.7,19.7,3.2,6,1.4,86,320,4,376,9.95,0,0.187,2.3,12.7,0),(232,'Vacuno, jugo de carne','Vacuno',138,33,91.4,6.8,0.6,0,1.2,247,618,2,252,1.08,0,0,0,0,0),(233,'Vacuno, lomo, fresco, crudo','Vacuno',486,116,71.6,20,4,0,2.1,79,369,2,188,2.73,0,0,0,0,0),(510,'Vacuno, nalga de novillito, fresco, crudo','Vacuno',444,106,74.5,22,1.7,0,1.2,38,0,0,0,0,0,0,0,0,0),(234,'Vacuno, nalga, fresco, crudo','Vacuno',406,97,75.3,21.2,1.4,0,2.1,63,399,3,186,3.46,0,0,0,0,0),(511,'Vacuno, paleta de novillito, fresco, crudo','Vacuno',523,125,74.7,19,5.5,0,1,63,0,0,0,0,0,0,0,0,0),(512,'Vacuno, paletín o marucha de novillito, fresco, crudo','Vacuno',553,132,73.6,20,6.1,0,1,80,0,0,0,0,0,0,0,0,0),(513,'Vacuno, palomita de novillito, fresco, crudo','Vacuno',486,116,74.4,20,3.7,0,1.1,61,0,0,0,0,0,0,0,0,0),(235,'Vacuno, pasta de hígado','Vacuno',1403,335,52.6,14,31,0,2.4,627,209,25,317,7.6,0,0,0,0,0),(514,'Vacuno, peceto de novillito, fresco, crudo','Vacuno',523,125,74.1,23,1.9,0,1.1,50,0,0,0,0,0,0,0,0,0),(515,'Vacuno, pecho de novillito, fresco, crudo','Vacuno',582,139,72.1,20,6.5,0,1.29,170,0,0,0,0,0,0,0,0,0),(236,'Vacuno, riñon, fresco, crudo','Vacuno',574,137,74.9,15,8.1,0.9,1.1,245,231,14,262,15,0,0.24,1.7,10.5,0),(521,'Vacuno, tapa de cuadril de novillito, fresco, crudo','Vacuno',884,211,64.4,20,15,0,1.03,53,0,0,0,0,0,0,0,0,0),(237,'Vacuno, ternera, costilla flaca, a la parrilla','Vacuno',582,139,67.8,27.2,3.4,0,1.6,74,406,4,224,4.09,0,0,0,0,0),(238,'Vacuno, ternera, costilla flaca, fresco, crudo','Vacuno',398,95,76.3,20,1.7,0,2,88,325,5,201,2.04,0,0,0,0,0),(516,'Vacuno, tortuguita de novillito, fresco, crudo','Vacuno',645,154,70.1,22,7.6,0,0.9,69,0,0,0,0,0,0,0,0,0),(517,'Vacuno, vacío de novillito, fresco, crudo','Vacuno',729,174,68.9,20,11,0,0.9,53,0,0,0,0,0,0,0,0,0),(239,'Vacuno, vacío flaco, fresco, crudo','Vacuno',716,171,66.5,23.8,8.4,0,1.3,70,359,2,213,3.15,0,0,0,0,0),(240,'Vacuno, vacío, a la parrilla','Vacuno',1080,258,55.6,25.6,17.3,0,1.5,91,381,3,204,4.12,0,0,0,0,0),(241,'Vacuno, vacío, al horno','Vacuno',1009,241,56.1,28.1,14.3,0,1.5,63,339,3,234,4.37,0,0,0,0,0),(242,'Bife, cocido','Vacuno caribu',976,233,52.7,36,9.9,0.1,1.35,0,0,0,0,0,0,0,0,0,0),(243,'Bife, crudo','Vacuno caribu',502,120,71.6,20.7,2.2,4.3,1.18,0,0,0,0,0,0,0,0,0,0),(244,'Nalga, cocida','Vacuno caribu',825,197,55.3,38.6,4.4,0.7,0.99,0,0,0,0,0,0,0,0,0,0),(245,'Nalga, cruda','Vacuno caribu',410,98,74.4,19.5,0,4.9,1.14,0,0,0,0,0,0,0,0,0,0),(246,'Paleta, cocida','Vacuno caribu',867,207,54.6,37,6.4,0.4,1.56,0,0,0,0,0,0,0,0,0,0),(247,'Paleta, cruda','Vacuno caribu',448,107,76.4,19,3.4,0.2,1.02,0,0,0,0,0,0,0,0,0,0),(248,'Vacío, cocido','Vacuno caribu',967,231,48.9,41.1,6.8,1.2,1.86,0,0,0,0,0,0,0,0,0,0),(249,'Vacío, crudo','Vacuno caribu',440,105,75.3,18.4,2.2,3.1,1.06,0,0,0,0,0,0,0,0,0,0),(250,'Bife, cocido','Vacuno. Criolla',988,236,51.8,36.5,9.8,0.3,1.6,0,0,0,0,0,0,0,0,0,0),(251,'Bife, crudo','Vacuno. Criolla',502,120,72.2,21.1,2.5,3.2,1.07,0,0,0,0,0,0,0,0,0,0),(252,'Nalga, cocida','Vacuno. Criolla',741,177,59.6,35.1,3.8,0.6,0.87,0,0,0,0,0,0,0,0,0,0),(253,'Nalga, cruda','Vacuno. Criolla',431,103,74.4,21,1.1,2.5,1.09,0,0,0,0,0,0,0,0,0,0),(254,'Paleta, cocida','Vacuno. Criolla',804,192,56.8,35.5,5.2,0.9,1.58,0,0,0,0,0,0,0,0,0,0),(255,'Paleta, cruda','Vacuno. Criolla',444,106,75.8,18.4,2.7,2,1.02,0,0,0,0,0,0,0,0,0,0),(256,'Vacío, cocido','Vacuno. Criolla',850,203,53.9,38.4,5,1.2,1.54,0,0,0,0,0,0,0,0,0,0),(257,'Vacío, crudo','Vacuno. Criolla',448,107,75.3,18.4,2.5,2.7,1.03,0,0,0,0,0,0,0,0,0,0),(522,'Jamon cocido \"Villafranca Novissimo\"\".El Bierzo. Reducido en colesterol\"','Fiambres',410,98,74.3,18,2.5,0,3.1,486,0,0,0,0,0,0,0,0,0),(523,'Lomo ahumado de cerdo cocido \"Villafranca Novissimo\"\". El Bierzo. Reducido en sodio y en colesterol\"','Fiambres',398,95,73.6,19,2,0,4.3,902,0,0,0,0,0,0,0,0,0),(524,'Mortadela\" Villafranca Novissimo\"\". El Bierzo - reducida en grasa y en sodio\"','Fiambres',582,139,66.7,16,5.7,0,4,655,0,0,0,0,0,0,0,0,0),(525,'Pastron ahumado \"Villafranca Novissimo\"\". El Bierzo. Reducido en sodio y en colesterol\"','Fiambres',331,79,75.5,16,0.4,0,3.4,658,0,0,0,0,0,0,0,0,0),(526,'Salame \"Villafranca Novissimo\"\".El Bierzo.Reducido en sodio y en colesterol\"','Fiambres',561,134,67.6,22,4.6,0,3.9,740,0,0,0,0,0,0,0,0,0),(557,'Carne de vizcacha','Lagostomus maximus maximus Blainv',193,46,73,23.9,3.7,7.7,3.61,0,260,69,29,2.57,0,0,0,0,9.9);
/*!40000 ALTER TABLE `Carnes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cereales`
--

DROP TABLE IF EXISTS `Cereales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cereales` (
  `id` int DEFAULT NULL,
  `Alimento` text,
  `Género - especie - variedad` text,
  `MyUnknownColumn` text,
  `Energía kj` int DEFAULT NULL,
  `Energía kcal` int DEFAULT NULL,
  `Agua g` double DEFAULT NULL,
  `Proteinas g` double DEFAULT NULL,
  `Grasa Total g` double DEFAULT NULL,
  `Carbohidratos totales g` double DEFAULT NULL,
  `Carbohidratos disponibles g` double DEFAULT NULL,
  `Fibra dietética g` double DEFAULT NULL,
  `Cenizas g` double DEFAULT NULL,
  `Sodio mg` int DEFAULT NULL,
  `Potasio mg` int DEFAULT NULL,
  `Calcio mg` int DEFAULT NULL,
  `Fósforo mg` int DEFAULT NULL,
  `Hierro mg` double DEFAULT NULL,
  `Zinc mg` double DEFAULT NULL,
  `Tiamina mg` text,
  `Rivoflavina mg` text,
  `Niacina mg` text,
  `Vitamina C mg` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cereales`
--

LOCK TABLES `Cereales` WRITE;
/*!40000 ALTER TABLE `Cereales` DISABLE KEYS */;
INSERT INTO `Cereales` VALUES (484,'Amaranto, semilla, cruda (Amarantus caudatus)','Amarantus Caudatus','',1608,384,11.2,15.3,7.6,63.6,0,0,2.29,0,0,0,0,12.17,4.8,'','','',''),(486,'Amaranto, semilla, cruda (Amarantus hipochondriacus)','Amarantus Hipochondriacus','',1596,381,11.5,14.4,7.4,64.3,0,0,2.47,0,0,0,0,13.5,4.9,'','','',''),(483,'Amaranto, semilla, cruda (Amarantus mantegazzianus)','Amarantus Mantegazzianus','',1623,388,10.8,15.4,8.4,62.7,0,0,2.75,0,0,0,0,8.22,4,'','','',''),(485,'Amaranto, semillia, cruda (Amarantus cruentus)','Amarantus Cruentus','',1608,384,11.3,15.6,7.6,63.4,0,0,2.18,0,0,0,0,10.89,3.8,'','','',''),(1,'Arroz, grano, blanco, pulido, crudo','','',1419,339,12.5,6.9,0.2,79.2,77.5,1.7,1.2,4,78,9,93,0.7,0,'0.038','0.091','4.7',''),(2,'Arroz, grano, blanco, pulido, hervido','','',343,82,79,1.4,0.1,19.4,19.1,0.3,0.1,5,80,3,26,0.63,0,'','','',''),(3,'Avena , grano, arrollada, cruda','','',1604,383,11.9,15.6,7.8,62.5,0,0,2.2,47,391,36,360,4.13,0,'0.594','0.158','1.4',''),(4,'Avena, grano, arrollada, cruda','','',1436,343,10.9,12.8,7.1,0,56.9,10.4,1.9,65,460,21,333,4.2,4.4,'','','',''),(5,'Avena, grano, arrollada, hervida','','',360,86,77.1,3.8,1.9,15.8,13.4,2.4,1.4,21,87,12,90,1.09,0,'','','',''),(6,'Cebada, grano, mondado, perlado, crudo','','',1326,317,12,10.2,1.5,74.9,65.6,9.3,1.4,6,138,15,204,2.77,0,'0.085','0.118','7.4',''),(7,'Cebada, grano, mondado, perlado, hervido','','',344,82,77.2,3.8,0.1,19.3,16.5,2.8,0,13,59,7,35,0.68,0,'','','',''),(9,'Centeno, harina, clara, cruda','','',1392,332,11,8.9,0.9,78.5,72.2,6.3,0.7,0,0,0,0,0,0,'0.143','0.258','1.3',''),(10,'Centeno, pan','','',863,206,40.2,8.7,0.6,48.9,41.5,7.4,1.6,219,205,23,156,2.3,0,'','','',''),(11,'Centeno, pan con harina integral','','',894,214,38.4,10.4,0.9,49,41,8,1.3,466,259,31,278,2.16,0,'','','',''),(490,'Maiz amarillo, pisingallo, grano entero, crudo','Zea Mays','',1445,345,12.7,10.9,0.5,74.6,0,0,1.34,0,0,0,203,7.74,1.8,'','','',''),(491,'Maiz amarillo, sémola, grano entero, crudo','Zea Mays','',1277,305,12.8,9,1.1,76.4,0,0,0.68,0,0,0,38,1.11,1,'','','',''),(488,'Maiz, amarillo Leales, grano entero, crudo','Zea Mays','',1449,346,13.4,10.6,0.8,74.1,0,0,1.13,0,0,0,281,9.46,3.2,'','','',''),(489,'Maiz, amarillo trópico 327, grano entero, crudo  ','Zea Mays','',1439,344,13.9,9.8,1.1,73.6,0,0,1.55,0,0,0,251,6.37,2,'','','',''),(487,'Maiz, blanco 8 rayas, grano entero, crudo','Zea Mays','',1424,340,13,7.3,0.9,77.7,0,0,1.13,0,0,0,261,3.38,1.8,'','','',''),(482,'Maiz, blanco perla, grano entero, crudo','Zea mays','',1403,335,13.9,9,0.9,74.8,0,0,1.48,0,0,0,325,11.5,2.5,'','','',''),(12,'Maiz, choclo','','',405,97,73.9,3.7,1.2,20.5,17.8,2.7,0.7,40,113,6,103,0.47,0,'0.134','0.081','2','8.2'),(13,'Maiz, grano, entero (Zea mays spp)','Zea mays','',1449,346,13.4,9.5,0.9,74.9,67.6,7.3,1.3,0,0,0,280,0,0,'','','',''),(15,'Maiz, harina amarilla (polenta), cruda','','',1415,338,11.9,9.1,4.9,73.4,64.5,8.9,0.72,35,299,26,170,2.9,2,'','','',''),(14,'Maiz, harina amarilla (polenta), cruda','','',1545,369,10.7,11.1,3.2,73.9,0,0,1.1,25,269,12,87,2.61,0,'0.189','0.131','2.4',''),(16,'Maiz, harina amarilla (polenta), hervida','','',285,68,82.7,3.2,0.8,13.7,11.9,1.8,0.1,11,55,8,42,0.92,0,'','','',''),(17,'Maiz, pan','','',1151,275,33.8,9.1,2.9,53.2,0,0,1,0,0,0,0,0,0,'','','',''),(19,'Trigo, bizcochos \"Bay Biscuit\"\"\"','','',1653,382,15.2,5.9,10.1,72.5,67.1,1.5,2.6,171,97,212,125,1.24,0,'','','',''),(21,'Trigo, bizcochos, vainillas','','',1679,401,6.2,10.2,8.9,70,0,0,4.7,111,138,69,339,1.09,0,'','','',''),(22,'Trigo, galleta de campo','','',1256,300,24.8,9.8,1,63,0,0,1.4,295,136,28,194,0.14,0,'','','',''),(23,'Trigo, galleta marinera','','',1512,361,10.5,12.8,0.7,75.9,0,0,0.1,30,10,16,115,0.14,0,'','','',''),(24,'Trigo, galletitas de agua \"Express\"\"\"','','',1851,442,5.1,13.5,15.5,62,0,0,3.9,323,99,44,174,0.93,0,'','','',''),(25,'Trigo, galletitas de agua \"Traviata\"\"\"','','',1830,437,3.7,12.2,13.1,67.6,0,0,3.4,640,52,51,117,3.65,0,'','','',''),(26,'Trigo, galletitas de harina blanca','','',1717,410,6,12.2,11.6,0,64.2,4.7,1.3,141,160,18,59,1.7,2.2,'','','',''),(27,'Trigo, galletitas de harina integral','','',1721,411,5.4,10.6,15.8,0,56.5,9.8,1.89,141,182,19,200,2,2.2,'','','',''),(28,'Trigo, galletitas dulces \"Manón\"\"\"','','',1746,417,3,8.5,10.1,73,0,0,5.4,233,41,42,111,0.99,0,'','','',''),(29,'Trigo, galletitas dulces \"Minue\"\"\"','','',1754,419,6.2,8.2,13.1,67,0,0,5.5,209,97,40,180,1.79,0,'','','',''),(30,'Trigo, galletitas oblea \"Opera\"\"\"','','',1851,442,12,4.9,21.1,58,0,0,4,208,43,46,128,1.79,0,'','','',''),(18,'Trigo, grano entero, crudo','','',1453,347,12.7,12.4,2,69.8,0,0,3.1,9,355,14,333,2.62,0,'','','',''),(31,'Trigo, grisines','','',1432,342,10,12.5,0.2,72.6,0,0,4.7,628,148,24,143,1.68,0,'','','',''),(33,'Trigo, harina cuatro ceros','','',1457,348,12.7,10.2,2.6,0,70.8,3.3,0.31,3,144,11,91,0.8,1.2,'0.165','0.064','1.1',''),(34,'Trigo, harina integral','','',1290,308,12.4,11.4,3,0,58.8,12.6,1.81,16,605,27,267,3.3,3.8,'1.557','0.364','5.2',''),(32,'Trigo, harina tres cero','','',1424,340,13.1,10.3,2.7,0,68.7,4.6,0.64,10,176,11,171,1.5,1.8,'0.219','0.09','1.7',''),(38,'Trigo, pan alemán','','',1105,264,34,8.9,0.2,56.7,0,0,0.2,150,69,19,97,1.4,0,'0.197','0.273','2.5',''),(39,'Trigo, pan criollo','','',1172,280,29.2,8.7,0.3,60.7,0,0,1.1,264,128,20,121,1.2,0,'','','',''),(40,'Trigo, pan de Viena','','',1285,307,24.7,9.8,1.9,62.6,0,0,1,71,132,39,157,1.2,0,'','','',''),(41,'Trigo, pan de salvado','','',934,223,35,9.8,1.6,0,42.3,9.2,2.1,112,338,68,209,1.2,0,'','','',''),(37,'Trigo, pan francés','','',1122,268,29.8,8.4,0.7,0,57,2.8,1.37,136,175,19,136,1,1.8,'','','',''),(36,'Trigo, pan francés','','',1126,269,30.9,9.3,0.2,57.4,0,0,2,274,93,22,107,1.1,0,'0.242','0.282','2.3',''),(42,'Trigo, pan negro con levadura agria','','',1135,271,31.6,8.4,0.5,58.3,0,0,1.2,84,165,21,208,2.9,0,'','','',''),(43,'Trigo, pan negro con levadura comprimida','','',1126,269,34,9.5,2.4,52.4,0,0,1.7,123,161,21,379,2.9,0,'','','',''),(44,'Trigo, pan negro sin levadura','','',1126,269,32.2,9.6,0.6,56.3,0,0,1.3,45,214,24,210,2.3,0,'','','',''),(35,'Trigo, salvado','','',716,171,14,16.3,5.5,0,14,44.7,5.42,27,1304,74,904,9.2,9.6,'1.058','0.5','19.1',''),(47,'Trigo, tallarines, frescos, hervidos','','',410,98,74.6,4.1,1.5,16.9,0,0,2.9,0,0,0,0,0,0,'0','0','0','');
/*!40000 ALTER TABLE `Cereales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Frutas`
--

DROP TABLE IF EXISTS `Frutas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Frutas` (
  `id` int DEFAULT NULL,
  `Alimento` text,
  `Género - especie - variedad` text,
  `MyUnknownColumn` text,
  `Energía kj` int DEFAULT NULL,
  `Energía kcal` int DEFAULT NULL,
  `Agua g` double DEFAULT NULL,
  `Proteínas g` double DEFAULT NULL,
  `Grasa Total g` double DEFAULT NULL,
  `Carbohidratos totales g` double DEFAULT NULL,
  `Cenizas g` double DEFAULT NULL,
  `Sodio mg` int DEFAULT NULL,
  `Potasio mg` int DEFAULT NULL,
  `Calcio mg` int DEFAULT NULL,
  `Fósforo mg` int DEFAULT NULL,
  `Hierro mg` double DEFAULT NULL,
  `Zinc mg` text,
  `Tiamina mg` double DEFAULT NULL,
  `Rivoflavina mg` double DEFAULT NULL,
  `Niacina mg` double DEFAULT NULL,
  `Vitamina C mg` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Frutas`
--

LOCK TABLES `Frutas` WRITE;
/*!40000 ALTER TABLE `Frutas` DISABLE KEYS */;
INSERT INTO `Frutas` VALUES (496,'Aceituna de monte','Zyziphus sativa','',389,93,77.7,1.6,0.4,19.4,0.85,0,192,33,29,0.59,'',0,0,0,10),(119,'Aceituna verde, pulpa, encurtida','Olea europaea','',603,144,75.2,1.5,13.5,4,5.8,2250,91,61,17,1.03,'',0.025,0.137,2.6,1.6),(121,'Ananá enlatado, contenido envase','','',364,87,78,0.4,0.1,21.1,0.4,1,57,13,5,1.7,'',0.08,0.081,0.6,12.8),(120,'Ananá, pulpa, fresco','Ananassa sativa L.','',243,58,85.3,0.4,0.2,13.7,0.4,2,247,12,8,0.42,'',0.066,0.078,1,40.3),(122,'Banana, pulpa, fresca','Musa sapientum L.','',415,99,74.8,1.2,0.2,23,0.8,1,348,7,28,0.41,'',0.061,0.087,1.2,6.1),(123,'Cereza, pulpa, fresca','Prunus avium L','',285,68,83,1.1,0.5,14.8,0.6,3,275,16,17,0.38,'',0.002,0.035,0.8,5.6),(125,'Ciruela, pasa, cruda','Prunus domestica L','',1068,255,32.9,1.9,0.1,61.6,3.5,21,846,46,92,1.81,'',0.172,0.569,2.7,7.4),(126,'Ciruela, pasa, hervida','Prunus domestica L','',691,165,56.4,1,0.1,40.1,2.4,16,534,31,64,3.25,'',0,0,0,0),(124,'Ciruela, pulpa, fresca','Prunus domestica L','',235,56,85.7,0.7,0.2,12.9,0.5,2,261,24,16,0.41,'',0.026,0.059,0.8,4.2),(127,'Coco, pulpa, fresco, crudo','Cocos nucifera','',1599,382,46.9,3.4,34.7,14,1,17,436,13,94,2.08,'',0.173,0,0.1,0),(128,'Damasco, pulpa, fresco, crudo','Prunus Armeniaca L.','',239,57,85.4,1,0.1,12.9,0.6,1,320,17,21,0.37,'',0.015,0.066,1.2,3.1),(542,'Doca','Morrenia odorata','',205,49,85.1,1.6,1,11.5,0.8,0,312,41,35,0.6,'',0,0,0,41.6),(131,'Durazno orejón, pulpa y piel, hervido','Prunus persica L.','',168,40,89.3,2.5,0,7.5,0.7,14,276,20,43,2.84,'',0,0,0,0),(130,'Durazno, pulpa, envasado al natural','Prunus persica L.','',314,75,80.9,0.4,0.1,18.2,0.4,1,151,4,10,1.93,'',0.021,0.045,1,3.6),(129,'Durazno, pulpa, fresco, crudo','Prunus persica L.','',214,51,86.9,0.5,0.1,12,0.5,3,259,5,19,0.38,'',0.02,0.04,0.8,6.3),(132,'Frutilla pulpa, fresca, cruda','Fragarta h chiloensis Duch Var, ananassa B.','',172,41,90,0.8,0.6,8.1,0.5,2,161,22,23,0.71,'',0.041,0.051,0.4,88.7),(133,'Granada, pulpa, fresca','Punica granatium L.','',314,75,81,0.6,0.2,17.7,0.5,85,63,11,105,0.78,'',0.01,0.03,0,0),(497,'Guaraniná, Brumelia obtusifolia','Brumelia obtusifolia','',616,147,65.6,1.6,3.2,23.7,0.85,0,200,56,23,1.33,'',0,0,0,16.4),(134,'Higo, pulpa, fresca','Ficus carica L.','',369,88,78,1.4,0.4,19.6,0.6,2,268,34,32,0.42,'',0.01,0.045,0.7,0.6),(135,'Kaki, pulpa, fresco','Diospyrus Kaki L.','',364,87,78.2,0.8,0.4,20,0.6,0,0,0,0,0,'',0.016,0.001,0.1,13.1),(136,'Kinoto, pulpa y cáscara, fresco, crudo','Fortunella spp.','',306,73,81.3,0.9,0.1,17.1,0.6,0,0,0,0,0,'',0.083,0.096,0,57.6),(137,'Limón, pulpa, fresco','Citrus limonia','',184,44,89.3,0.9,0.6,8.7,0.5,6,163,107,21,0.35,'',0.091,0.012,0,62.6),(139,'Manzana, hervida','Malus sylvestria','',109,26,92,0.5,0,6,1.5,4,58,3,5,0.64,'',0,0,0,0),(138,'Manzana, pulpa, fresca, cruda','Malus sylvestria','',268,64,84.1,0.3,0.4,14.9,0.3,5,122,4,9,0.5,'',0.041,0.047,0.2,2.8),(544,'Mburucuyá maduro','Passiflora sp.','',352,84,68.9,4.7,1.7,23.4,1.38,0,253,14,110,1.3,'',0,0,0,14.6),(543,'Mburucuyá verde','Passiflora sp.','',247,59,78.6,3.2,1.6,15.7,0.88,0,241,15,52,5,'',0,0,0,26.4),(140,'Melón, pulpa, fresco','Cucumis melo L.','',117,28,92.7,0.6,0.2,5.9,0.6,17,275,17,18,0.52,'',0.042,0.031,0.3,14.8),(141,'Membrillo, pulpa, fresco, crudo','Cydonia oblonga L.','',243,58,85.3,0.3,0.1,13.9,0.4,3,203,14,19,0.32,'',0.032,0.054,0.9,3.4),(142,'Mora, fresca','Morus spp.','',289,69,82.8,1.2,0.6,14.6,0.8,2,257,36,48,1.57,'',0.053,0.079,1.1,2.4),(143,'Palta, pulpa, fresca','Persea gratissima','',1080,258,65.4,1.7,26.4,3.3,3.2,16,396,15,31,0.53,'',0.043,0.14,0.4,5.8),(145,'Pera, orejón, crudo','Pirus comimunis L.','',1252,299,24,2.3,0.4,71.6,1.7,0,0,0,0,0,'',0.061,0.106,1.3,9.2),(144,'Pera, pulpa, fresca, cruda','Pirus comimunis L.','',293,70,82.7,0.7,0.4,15.8,0.4,2,129,8,10,0.19,'',0.057,0.074,0.2,3),(146,'Pomelo, pulpa, fresco','Citrus grandis Osbeck','',109,26,92.9,0.5,0,5.9,0.7,37,147,13,10,0.21,'',0.104,0.078,0,47.8),(545,'Ubajay','Eugenia  myrciantes','',205,49,89,1.1,1.6,8.1,0.29,0,97,32,19,0.4,'',0,0,0,75.1),(502,'Ñandapirí','Eugenia uniflora','',293,70,82.8,1.7,0.7,14.3,0.6,0,213,34,32,0.84,'',0,0,0,21.5);
/*!40000 ALTER TABLE `Frutas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Grasas`
--

DROP TABLE IF EXISTS `Grasas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Grasas` (
  `id` int DEFAULT NULL,
  `Alimento` text,
  `Género - especie - variedad` text,
  `MyUnknownColumn` text,
  `Energía kj` int DEFAULT NULL,
  `Energía kcal` int DEFAULT NULL,
  `Agua g` double DEFAULT NULL,
  `Grasa Total g` double DEFAULT NULL,
  `Ac. grasos saturados g` double DEFAULT NULL,
  `Ac. grasos monoinsaturados g` double DEFAULT NULL,
  `Ac. grasos poliinsaturados g` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Grasas`
--

LOCK TABLES `Grasas` WRITE;
/*!40000 ALTER TABLE `Grasas` DISABLE KEYS */;
INSERT INTO `Grasas` VALUES (148,'Aceite comestible mezcla Lira, 85% girasol, 15% oliva','','',3768,900,0,100,12,33.6,54.6),(149,'Aceite comestible mezcla Patito, 94% girasol, 6% maiz','','',3768,900,0,100,11,27.6,61.1),(150,'Aceite de canola','','',3768,900,0,100,6.1,55,33.9),(151,'Aceite de girasol Familiar','','',3768,900,0,100,10.9,23,61.7),(152,'Aceite de girasol Ideal','','',3768,900,0,100,11,27,62),(153,'Aceite de girasol Natura','','',3768,900,0,100,9.9,24.8,60.9),(154,'Aceite de maiz Arcor','','',3768,900,0,100,14.4,33.6,47.7),(155,'Aceite de maiz Cocinero','Oil','',3768,900,0,100,16,37.8,46.6),(156,'Aceite de maiz Mazzola','','',3768,900,0,100,15.2,31.8,48.7),(157,'Aceite de oliva Cocinero','','',3768,900,0,100,17,71.1,12.4),(158,'Aceite de uva Cocinero','','',3768,900,0,100,11,23.6,65.6),(160,'Grasa Vacuna','','',3764,899,0.1,99.9,0,0,0),(159,'Grasa de cerdo','','',3760,898,0.1,99.8,0,0,0),(162,'Margarina 100% vegetal Delicia','','',3128,747,16,83,20.3,49.8,12.9),(161,'Margarina 100% vegetal Manty (en pote y en pan)','','',3128,747,16,83,14.1,41.5,27.4),(163,'Margarina reducida en calorias Manty liviana','','',2110,504,42,56,13.5,33,9.5);
/*!40000 ALTER TABLE `Grasas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lacteos`
--

DROP TABLE IF EXISTS `Lacteos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Lacteos` (
  `id` int DEFAULT NULL,
  `Alimento` text,
  `Género - especie - variedad` text,
  `Energía kj` int DEFAULT NULL,
  `Energía kcal` int DEFAULT NULL,
  `Agua g` double DEFAULT NULL,
  `Proteínas g` double DEFAULT NULL,
  `Grasa Total g` double DEFAULT NULL,
  `Carbohidratos totales g` double DEFAULT NULL,
  `Cenizas g` double DEFAULT NULL,
  `Sodio g` text,
  `Potasio mg` text,
  `Calcio mg` text,
  `Fósforo mg` text,
  `Hierro mg` text,
  `Zinc mg` text,
  `Tiamina mg` text,
  `Rivoflavina mg` text,
  `Niacina mg` text,
  `Vitamina C mg` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lacteos`
--

LOCK TABLES `Lacteos` WRITE;
/*!40000 ALTER TABLE `Lacteos` DISABLE KEYS */;
INSERT INTO `Lacteos` VALUES (296,'Leche de burra, entera, fluida','',188,45,90.5,1.9,1.4,6.2,0,'','','','','','','','','',''),(297,'Leche de cabra, entera, fluida','',327,78,86.2,3.3,5.9,3,1.6,'27','171','153','139','0.26','','','','',''),(298,'Leche de oveja, entera, fluida','',415,99,82.6,5.5,6.5,4.5,0.9,'30','187','207','123','','','','','',''),(303,'Leche de vaca parcialm. descremada, adic. con vit A y D','',184,44,90.1,3.2,1.4,4.6,0.68,'55','138','120','109','0.08','0.3','','','',''),(302,'Leche de vaca, entera, fluida, adicionada con vitamina A','',239,57,88.7,3.1,2.9,4.6,0.7,'','','','','','','','','',''),(301,'Leche de vaca, entera, fluida, pasteurizada','',239,57,88.7,3.1,2.9,4.6,0.66,'57','137','123','95','0.07','0.3','','','',''),(305,'Leche en polvo descremada','',1549,370,3.2,35.5,1,52.2,8.2,'563','1640','1303','1027','0.53','0.3','','','',''),(304,'Leche en polvo entera','',2047,489,2.8,25.8,24.8,40.9,5.7,'404','1224','821','761','0.54','3.3','','','',''),(300,'Leche humana, entera, en polvo','',2177,520,7,9.6,31.5,49.5,2.4,'114','383','229','110','0.48','','','','',''),(299,'Leche humana, entera, fluida','',297,71,87,1.1,4.2,7.1,0.6,'11','44','32','14','0.04','','0.018','0.035','0.4','4.4'),(306,'Leche, condensada, Nestlé','',1373,328,23.6,8,8.1,55.8,4.5,'','','','','','','','','',''),(307,'Manteca, fresca','',3174,758,15.3,0.5,84,0,0.2,'223','15','15','24','0.16','','','','',''),(308,'Queso crema, entero, untable ','',1030,246,66.2,6.6,22.6,3.9,0.64,'74','148','56','97','','','','','',''),(310,'Queso descremado, untable','',343,82,78.6,13.7,0.3,6.1,1.29,'106','260','116','198','','','','','',''),(309,'Queso semidescremado, untable','',435,104,77.8,11.5,4,5.5,1.14,'90','202','102','175','','','','','',''),(311,'Queso, Petit Suisse untable','',762,182,68.1,14.1,14,0,3.8,'30','81','75','161','','','','','',''),(552,'Queso  Blanco Argentino Semimagro (blando)','  ',435,104,77.8,11.5,4,5.6,1.14,'90','202','102','175','','','','','',''),(312,'Queso Belpaese (blando)','',1294,309,47.7,20.3,25.3,0,6.7,'510','56','610','450','','','0.037','0.448','',''),(313,'Queso Camembert (blando)','',1202,287,55.3,20.1,23,0,1.6,'1240','66','75','330','','','','','',''),(318,'Queso Limburgués (blando)','',1357,324,47.8,21.8,26.3,0,4.1,'800','59','225','250','','','0.03','0.648','',''),(319,'Queso Por Salut (blando)','',1260,301,49.8,20.4,22.7,3.7,3.3,'','','','','','','','','',''),(315,'Queso cremoso (blando)','',1265,302,49.9,19.7,22.9,4.2,3.3,'','','','','','','','','',''),(316,'Queso cuartirolo (blando)','',1218,291,50.2,20.8,21.4,3.9,3.7,'360','64','625','700','','','0.037','0.929','',''),(317,'Queso doble crema (blando)','',1089,260,59.5,18,20.9,0,1.6,'500','69','460','321','','','','','',''),(314,'Queso mozarella (blando)','',1181,282,50.7,23.6,19.3,3.3,3.1,'','','','','','','','','',''),(320,'Queso Cheddar (semiduro)','',1495,357,36,29.5,26.5,0,8,'390','41','800','750','','','0.049','1.229','',''),(321,'Queso Chubut  (semiduro)','',1373,328,42.1,25.9,24.9,0,7.1,'270','68','450','500','','','','','',''),(322,'Queso Fontina  (semiduro)','',1424,340,36.4,24.3,33.6,0,5.7,'690','72','765','450','','','0.069','0.312','',''),(323,'Queso Gorgonzola  (semiduro)','',2010,480,31.7,21.6,43.7,0,3,'930','123','340','215','','','0.045','0.39','',''),(324,'Queso Gruyere  (semiduro)','',1587,379,37.1,28.6,29.4,0,4.9,'542','128','1080','698','0.26','','0.04','0.612','',''),(325,'Queso Holanda  (semiduro)','',1445,345,37.6,25.1,27.2,0,10.1,'730','84','890','630','','','0.056','0.268','',''),(326,'Queso Pategrás  (semiduro)','',1717,410,33.7,24.8,34.5,0,7,'720','74','475','530','','','','','',''),(327,'Queso Roquefort  (semiduro)','',1784,426,37.6,19.2,38.8,0,4.4,'1210','74','200','250','','','0.239','0.404','',''),(328,'Queso Suizo  (semiduro)','',1692,404,34,28.6,31.3,1.9,4.2,'','','','','','','','','',''),(329,'Queso Tafí  (semiduro)','',1499,358,41,21.8,30.1,0,7.1,'750','69','340','272','','','','','',''),(330,'Queso Tandil  (semiduro)','',1445,345,41.9,25.5,27,0,5.6,'','','','','','','','','',''),(550,'Queso azul  (semiduro)','  ',1579,377,40.2,20,31.1,4.3,4.41,'','','','','','','','','',''),(331,'Queso tipo Mar del Plata  (semiduro)','',1390,332,39,25.4,25.6,0,9.7,'','','','','','','','','',''),(332,'Queso Goya (duro)','',1683,402,29.2,29.7,31.5,0,9.6,'1020','68','950','510','','','0.054','0.613','',''),(333,'Queso Parmesano (duro)','',1465,350,34.3,32.7,24.4,0,8.6,'680','61','1170','775','','','','','',''),(334,'Queso Provolone (duro)','',1637,391,31.9,32.1,29.2,0,6.8,'1190','72','925','765','','','0.068','0.28','',''),(335,'Queso Reggianito (duro)','',1528,365,33.6,33.4,24.2,3.4,5.46,'1230','61','950','610','','','0.045','0.274','',''),(336,'Queso Sardo (duro)','',1683,402,30.8,30,29.1,5,5.14,'','','','','','','','','',''),(337,'Queso Sbrinz (duro)','',1495,357,35.1,29.4,26.6,0,8.9,'870','67','985','830','','','0.051','0.245','',''),(338,'Ricota de leche entera','',703,168,70.9,11.6,11.8,4,1.58,'146','155','193','241','0.26','','','','',''),(551,'Ricotta semidescremada','  ',703,168,70.9,11.6,11.7,4,1.58,'160','155','207','243','0.42','','','','',''),(341,'Yogur descremado','',247,59,88.5,4.3,0.2,5.9,1.1,'75','177','110','125','0.09','0.37','','','',''),(343,'Yogur descremado bebible','',126,30,91.8,3.3,0.1,4.1,0.79,'','','','','','','','','',''),(432,'Yogur descremado fortificado con Ca','',201,48,86.8,4.6,0.1,7.1,1.4,'121','200','247','188','0.1','0.5','','','',''),(342,'Yogur entero bebible','',343,82,81.7,2.8,2.2,12.7,0.6,'','','','','','','','','',''),(339,'Yogur entero natural','',276,66,86.1,4.6,3,5.3,1,'','','','','','','','','',''),(340,'Yogur entero saborizado','',369,88,79.8,4.4,2.4,12.4,1,'59','172','125','114','0.1','0.4','','','','');
/*!40000 ALTER TABLE `Lacteos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pescados`
--

DROP TABLE IF EXISTS `Pescados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pescados` (
  `id` int DEFAULT NULL,
  `Alimento` text,
  `Género - especie - variedad` text,
  `Energía kj` int DEFAULT NULL,
  `Energía kcal` int DEFAULT NULL,
  `Agua g` double DEFAULT NULL,
  `Proteínas g` double DEFAULT NULL,
  `Grasa Total g` double DEFAULT NULL,
  `Carbohidratos totales g` double DEFAULT NULL,
  `Cenizas g` double DEFAULT NULL,
  `Ac. grasos saturados g` double DEFAULT NULL,
  `Ac. grasos monoinsaturados g` double DEFAULT NULL,
  `Ac. grasos poliinsaturados g` double DEFAULT NULL,
  `Sodio mg` int DEFAULT NULL,
  `Potasio mg` int DEFAULT NULL,
  `Calcio mg` int DEFAULT NULL,
  `Fósforo mg` int DEFAULT NULL,
  `Hierro mg` double DEFAULT NULL,
  `Zinc mg` int DEFAULT NULL,
  `Tiamina mg` int DEFAULT NULL,
  `Rivoflavina mg` int DEFAULT NULL,
  `Niacina mg` int DEFAULT NULL,
  `Vitamina C mg` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pescados`
--

LOCK TABLES `Pescados` WRITE;
/*!40000 ALTER TABLE `Pescados` DISABLE KEYS */;
INSERT INTO `Pescados` VALUES (164,'Abadejo, fresco, crudo, carne','Genypterus blacodes',302,72,81.9,15.8,0.9,0.2,1.21,0,0,0,0,0,0,0,0,0,0,0,0,0),(398,'Amarillo, fresco, a la parrilla, músculo dorsal','Pimedolus clarias maculatus',766,183,65.9,21.3,10.9,0,2.22,3.36,5.66,1.48,0,0,0,0,0,0,0,0,0,0),(397,'Amarillo, fresco, al horno, músculo dorsal','Pimedolus clarias maculatus',974,233,61.3,19.9,17,0,2.01,5.07,8.53,2.22,0,0,0,0,0,0,0,0,0,0),(395,'Amarillo, fresco, crudo, músculo dorsal','Pimedolus clarias maculatus',592,141,73.7,17.3,8,0,1.07,5.44,8.75,1.93,0,0,13,0,0.6,0,0,0,0,0),(399,'Amarillo, fresco, frito, músculo dorsal','Pimedolus clarias maculatus',970,232,59.4,22.8,15.6,0,1.9,5.11,8.58,2.23,0,0,0,0,0,0,0,0,0,0),(396,'Amarillo, fresco, hervido, músculo dorsal','Pimedolus clarias maculatus',754,180,68.5,18.7,11.7,0,1.09,3.13,5.27,1.38,0,0,0,0,0,0,0,0,0,0),(165,'Anchoa, fresca, cruda, carne','Pomatomus saltatrix',385,92,76.4,21.5,0.4,0.5,1.2,0,0,0,80,266,20,220,1.4,0,0,1,16,0),(166,'Anchoita, fresca, cruda, carne','Engraulis anchoita hubbs larini',540,129,73,19.2,5.4,0.8,1.59,0,0,0,0,0,0,0,0,0,0,0,0,0),(403,'Armado, fresco, al horno, músculo dorsal','Pterodotas granulosus',537,128,69.5,23.7,3.7,0,1.93,0.92,1.12,0.54,0,0,0,0,0,0,0,0,0,0),(400,'Armado, fresco, crudo, músculo dorsal','Pterodotas granulosus',314,75,81.6,15.4,1.5,0,1.24,0.37,0.34,0.19,0,0,7,0,1.36,0,0,0,0,0),(401,'Armado, fresco, crudo, músculo ventral','Pterodotas granulosus',430,103,79.9,14.6,4.9,0,1.04,1.08,1.6,0.54,0,0,0,0,0,0,0,0,0,0),(404,'Armado, fresco, frito, músculo dorsal','Pterodotas granulosus',543,130,70.6,21.4,4.9,0,2.15,1.22,1.51,0.7,0,0,0,0,0,0,0,0,0,0),(402,'Armado, fresco, hervido, músculo dorsal','Pterodotas granulosus',426,102,74.6,20.8,2.1,0,1.21,0.51,0.63,0.29,0,0,0,0,0,0,0,0,0,0),(408,'Boga, fresca, a la parrilla, músculo dorsal','Leporinus obtusidens',628,150,68.6,23.7,6.1,0,2.04,1.78,8.58,0.49,0,0,0,0,0,0,0,0,0,0),(407,'Boga, fresca, al horno, músculo dorsal','Leporinus obtusidens',627,150,67.4,25.1,5.5,0,2.35,2.04,3.45,0.56,0,0,0,0,0,0,0,0,0,0),(168,'Boga, fresca, cruda (carne entre aleta dorsal y ventral)','Leporinus affinis',0,0,0,0,3.9,0,0,1.02,1.39,0.29,0,0,0,0,0,0,0,0,0,0),(405,'Boga, fresca, cruda, músculo ventral','Leporinus obtusidens',755,180,68.5,18.5,11.8,0,1.19,0,0,0,0,0,0,0,0,0,0,0,0,0),(409,'Boga, fresca, frita, músculo dorsal','Leporinus obtusidens',703,168,65.8,24.3,7.9,0,2.35,2.34,3.97,0.64,0,0,0,0,0,0,0,0,0,0),(406,'Boga, fresca, hervida, músculo dorsal','Leporinus obtusidens',663,158,69.4,22.7,7.5,0,1.13,2.27,3.85,0.63,0,0,0,0,0,0,0,0,0,0),(169,'Bonito, fresco, crudo, carne','Sarda sarda',917,219,62.2,22,14.5,0,1.25,0,0,0,0,0,0,0,0,0,0,0,0,0),(170,'Brótola, fresca, cruda, carne','Urophycis brasilensis',348,83,79.5,17.6,1.2,0.4,1.38,0,0,0,82,282,18,207,2.1,0,0,0,27,3),(171,'Caballa, fresca, cruda, carne','Pneumatophorus japonicus marplatensis',971,232,60.4,22,15.8,0.4,1.41,0,0,0,0,0,0,0,0,0,0,0,0,0),(173,'Castañeta, fresca, cruda, carne','Cheilodactylus bergi',398,95,77.6,18.4,2.3,0.3,1.42,0,0,0,0,0,0,0,0,0,0,0,0,0),(172,'Castañeta, fresca, cruda, entera','Cheilodactylus bergi',712,170,67.4,17,11.1,0.5,3.97,0,0,0,0,0,0,0,0,0,0,0,0,0),(174,'Congrio, fresco, crudo, carne','Leptocephalus orbignyanus',448,107,77,17.2,4,0.7,1.2,0,0,0,0,0,0,0,0,0,0,0,0,0),(175,'Cornalito, fresco, crudo, entero','Sorgentinia incisa',360,86,79.2,16,2.2,0.6,2.15,0,0,0,90,296,680,590,2,0,0,0,0,0),(176,'Corvina blanca, fresca, cruda, carne','Micropogonias undulatus',406,97,77,19.5,1.9,0.4,1.28,0,0,0,0,0,0,0,0,0,0,0,3,3),(177,'Corvina negra, fresca, cruda, carne','Pagonias cromis',352,84,78.8,18.8,0.8,0.4,1.15,0,0,0,0,0,0,0,0,0,0,0,0,0),(178,'Dorado, fresco, crudo (carne entre aleta ventral y dorsal)','Salminus maxilosus',0,0,0,0,2.6,0,0,0.63,0.85,0.29,0,0,0,0,0,0,0,0,0,0),(179,'Dorado, fresco, crudo, carne','Salminus maxilosus',335,80,79.5,18.8,0.5,0.1,1.13,0,0,0,0,0,0,0,0,0,0,0,0,0),(180,'Gatuso, fresco, crudo, carne','',302,72,81.7,17.4,0.2,0.1,0.57,0,0,0,0,0,0,0,0,0,0,0,0,0),(181,'Jurel, fresco, crudo, carne','Trachurus pictatus',624,149,71.5,19,8,0.2,1.26,0,0,0,0,0,0,0,0,0,0,0,0,0),(183,'Lisa, fresca, cruda, carne','',611,146,72.3,17.9,7.8,1.1,0.96,0,0,0,0,0,0,0,0,0,0,0,0,0),(184,'Merluza, fresca, cruda, carne','Merluccis merluccis',339,81,80.2,17.1,1.3,0.1,1.24,0,0,0,91,262,21,216,1.9,0,0,0,1,1),(185,'Mero, fresco, crudo, carne','Acanthistis brasilianus',348,83,79.4,17.9,1,0.5,1.2,0,0,0,0,0,0,0,0,0,0,0,0,0),(413,'Moncholo, fresco, al horno, músculo dorsal','Pimelodus albicans',792,189,65,22,11.3,0,1.87,3.03,4.87,1.57,0,0,0,0,0,0,0,0,0,0),(410,'Moncholo, fresco, crudo, músculo dorsal','Pimelodus albicans',468,112,76.6,17.5,4.7,0,1.11,3.67,6.26,1.64,0,0,7,0,0.8,0,0,0,0,0),(411,'Moncholo, fresco, crudo, músculo ventral','Pimelodus albicans',622,148,73.1,16.7,9.1,0,1.11,3.89,7.47,1.74,0,0,0,0,0,0,0,0,0,0),(412,'Moncholo, fresco, hervido, músculo dorsal','Pimelodus albicans',781,187,69.5,16.7,13.3,0,0.94,2,3.33,0.96,0,0,0,0,0,0,0,0,0,0),(186,'Palometa, fresca, cruda, carne','Parona signata',900,215,63.4,20.1,14.8,0.4,1.24,0,0,0,0,0,0,0,0,0,0,0,0,0),(187,'Pargo, fresco, crudo, carne','Umbrina canosal',473,113,75.4,19.1,3.9,0.3,1.28,0,0,0,0,0,0,0,0,0,0,0,0,0),(416,'Patí, fresco, a la parrilla, músculo dorsal','Luciopimelodus pati',708,169,66.5,22.6,8.8,0,2.52,2.77,3.92,1.17,0,0,0,0,0,0,0,0,0,0),(415,'Patí, fresco, al horno, músculo dorsal','Luciopimelodus pati',768,183,67.2,20.6,11.2,0,2.17,3.49,4.85,1.47,0,0,0,0,0,0,0,0,0,0),(188,'Patí, fresco, crudo (carne entre dorsal y ventral)','Luciopimelodus pati',0,0,0,0,3.4,0,0,0.25,1.15,0.37,0,0,0,0,0,0,0,0,0,0),(189,'Patí, fresco, crudo, carne','Luciopimelodus pati',377,90,78.7,18.2,1.8,0.3,0.99,0,0,0,68,256,18,201,1.9,0,0,0,0,0),(428,'Patí, fresco, crudo, músculo dorsal','Luciopimelodus pati',673,161,72.5,15.9,10.8,0,1,3.28,4.7,1.39,0,0,9,0,0.88,0,0,0,0,0),(429,'Patí, fresco, crudo, músculo ventral','Luciopimelodus pati',666,159,72.9,15.2,10.9,0,0.97,3.65,3.18,1.64,0,0,0,0,0,0,0,0,0,0),(417,'Patí, fresco, frito, músculo dorsal','Luciopimelodus pati',899,215,60.5,23,13.6,0,2.16,4.33,6.11,1.81,0,0,0,0,0,0,0,0,0,0),(414,'Patí, fresco, hervido, músculo dorsal','Luciopimelodus pati',557,133,73.8,19.6,6.1,0,1.03,1.91,2.71,0.8,0,0,0,0,0,0,0,0,0,0),(190,'Pejerrey agua dulce, fresco, crudo, carne','',322,77,80,18.3,0.4,0,1.3,0,0,0,68,256,20,210,1.9,0,0,0,0,0),(192,'Pescadilla, fresca, crudo, carne','Cynosción striatus',406,97,77.7,17.8,2.8,0.2,1.5,0,0,0,90,279,18,205,2.2,0,0,0,4,1),(194,'Pez palo, fresco, crudo, carne','Perophis brasilensis',402,96,77.4,20.1,1.7,0,1.26,0,0,0,0,0,0,0,0,0,0,0,0,0),(195,'Rubio, fresco, crudo, carne','Helicolenus dactylopterus labillei',456,109,76.9,17.1,4.5,0,1.95,0,0,0,0,0,0,0,0,0,0,0,0,0),(196,'Sardina fueguina, fresca, cruda, carne','Fueguine sardine',569,136,70.2,14,8.9,0,6.86,0,0,0,0,0,0,0,0,0,0,0,0,0),(426,'Surubí, fresco, al horno, músculo dorsal','Pseudoplastistoma coruscans',1068,255,55.3,23.5,17.9,0,3.18,5.52,7.79,2.48,0,0,0,0,0,0,0,0,0,0),(199,'Surubí, fresco, crudo, carne','',461,110,76.5,18.2,4,0.2,1.07,0,0,0,72,276,20,203,1.9,0,0,0,0,0),(198,'Surubí, fresco, crudo, carne zona dorsal','Pseudoplastistoma coruscans',0,0,0,0,0.9,0,0,1.21,1.22,1.17,0,0,0,0,0,0,0,0,0,0),(197,'Surubí, fresco, crudo, carne zona ventral','Pseudoplastistoma coruscans',0,0,0,0,1.7,0,0,0.23,0.66,0.35,0,0,0,0,0,0,0,0,0,0),(427,'Surubí, fresco, frito, músculo dorsal','Pseudoplastistoma coruscans',1125,269,51.5,26.7,18,0,3.68,5.3,7.48,2.39,0,0,0,0,0,0,0,0,0,0),(425,'Surubí, fresco, hervido, músculo dorsal','Pseudoplastistoma coruscans',781,186,65.1,23.4,10.3,0,1.17,3.17,4.48,1.44,0,0,0,0,0,0,0,0,0,0),(422,'Sábalo, fresco, a la parrilla, músculo dorsal','Prochilodus lineatus',544,130,69.5,23.4,4,0,2.61,1.8,1.87,0.52,0,0,0,0,0,0,0,0,0,0),(421,'Sábalo, fresco, al horno, músculo dorsal','Prochilodus lineatus',639,153,65.2,25.1,5.8,0,3.15,1.71,1.77,0.52,0,0,0,0,0,0,0,0,0,0),(418,'Sábalo, fresco, crudo, músculo dorsal','Prochilodus lineatus',606,145,73.2,18,8.1,0,1.15,2.14,2.35,0.58,0,0,10,0,0.62,0,0,0,0,0),(419,'Sábalo, fresco, crudo, músculo ventral','Prochilodus lineatus',632,151,72.4,17.5,9,0,1.16,0,0,0,0,0,0,0,0,0,0,0,0,0),(423,'Sábalo, fresco, frito, músculo dorsal','Prochilodus lineatus',694,166,65.5,24.9,7.4,0,2.59,0.81,1.88,0.54,0,0,0,0,0,0,0,0,0,0),(200,'Tararira, fresca, cruda, carne','',331,79,79.9,18.1,0.6,0.4,1.04,0,0,0,0,0,0,0,0,0,0,0,0,0),(201,'Testolin, fresco, crudo, carne','Prionotus punctatus',410,98,77,18.9,2.4,0.2,1.45,0,0,0,0,0,0,0,0,0,0,0,0,0),(203,'Calamar, fresco, crudo (tubo aletas y tentáculos)','Illex ilexebrosus',331,79,79.3,18.4,0.6,0,1.73,0,0,0,0,0,0,0,0,0,0,0,0,0),(202,'Calamar, fresco, entero, crudo','Illex ilexebrosus',335,80,79.1,18.5,0.7,0,1.73,0,0,0,0,0,0,0,0,0,0,0,0,0),(204,'Camarón, fresco, crudo, carne de cola','Artemesia longinaris',381,91,76.6,21,0.8,0,1.55,0,0,0,0,0,0,0,0,0,0,0,0,0),(206,'Centolla, fresca (carne de pata solamente)','Lithodes antarcticus',348,83,78.4,18.8,0.8,0,1.85,0,0,0,0,0,0,0,0,0,0,0,0,0),(205,'Centolla, fresca, carne, cruda','Lithodes antarcticus',276,66,83.9,13.9,1.1,0,1.55,0,0,0,0,0,0,0,0,0,0,0,0,0),(207,'Langostino, fresco, crudo, carne de cola','Hymenopenaeus multeri',406,97,75.3,22,0.9,0.2,1.65,0,0,0,0,0,0,0,0,0,0,0,0,0),(209,'Mejillón, fresco, crudo (capturado en primavera)','Mytilus platensis spp',398,95,77.9,17.6,1.6,2.5,2.98,0,0,0,0,0,0,0,0,0,0,0,0,0),(208,'Mejillón, fresco, crudo, carne','Mytilus platensis spp',268,64,83,11.9,1.1,1.7,2.27,0,0,0,289,315,88,236,5.8,0,0,0,3,0),(210,'Mejillón, fresco, pre-cocido, carne','',352,84,72.8,21.1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(211,'Ancho, pasta','',846,202,56.5,20.2,11.6,4.3,1.15,0,0,0,0,0,0,0,0,0,0,0,0,0),(212,'Caballa, tronco','Scomber japonicus marplatensis',888,212,62.5,26.5,11.8,0,2.26,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `Pescados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vegetales`
--

DROP TABLE IF EXISTS `Vegetales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Vegetales` (
  `id` int DEFAULT NULL,
  `Alimento` text,
  `Género - especie - variedad` text,
  `Energía kj` int DEFAULT NULL,
  `Energía kcal` int DEFAULT NULL,
  `Agua g` double DEFAULT NULL,
  `Proteínas g` double DEFAULT NULL,
  `Grasa Total g` double DEFAULT NULL,
  `Carbohidratos totales g` double DEFAULT NULL,
  `Carbohidratos disponibles g` double DEFAULT NULL,
  `Fibra dietética g` double DEFAULT NULL,
  `Cenizas g` double DEFAULT NULL,
  `Sodio mg` int DEFAULT NULL,
  `Potasio mg` int DEFAULT NULL,
  `Calcio mg` int DEFAULT NULL,
  `Fósforo mg` int DEFAULT NULL,
  `Hierro mg` double DEFAULT NULL,
  `Zinc mg` double DEFAULT NULL,
  `Tiamina mg` double DEFAULT NULL,
  `Rivoflavina mg` double DEFAULT NULL,
  `Niacina mg` double DEFAULT NULL,
  `Vitamina C mg` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vegetales`
--

LOCK TABLES `Vegetales` WRITE;
/*!40000 ALTER TABLE `Vegetales` DISABLE KEYS */;
INSERT INTO `Vegetales` VALUES (494,'Acelga, hoja','Beta vulgaris cycla',62,15,90.6,2.9,0.2,0,0.4,3.9,2,235,493,101,41,1.8,0.4,0.089,0.14,0.5,21.1),(495,'Acelga, tallo','Beta vulgaris cycla',33,8,94,1.2,0.1,0,0.6,2.9,2,150,470,53,23,0.34,0.2,0,0,0,0),(499,'Achicoria de Monte','Hipochaeris sp.',193,46,86.5,2.8,1.2,7.7,0,0,1.8,0,260,69,29,2.57,0,0,0,0,9.9),(50,'Achicoria, hoja, fresca, cruda','Cichorium intybus',88,21,94.2,1.6,0.3,2.9,0,0,1,7,182,18,21,0.69,0,0,0,0,49.3),(498,'Achira (raíces)','Canna coccinea',142,34,88.8,1.7,0.2,7.9,0,0,1.33,0,677,36,53,0.77,0,0,0,0,5.6),(51,'Ajo, bulbo, fresco, crudo','Alium satyvum',415,99,74.2,4.4,0.2,20,0,0,1.2,0,0,0,0,0,0,0.296,0.061,0.7,8.8),(52,'Alcaucil, inflorescencia, fresco, crudo','Cynara scolymus',264,63,83.7,2.9,0.4,11.9,0,0,1.1,0,0,40,94,1.89,0,0.05,0,0.8,21.7),(53,'Alfalfa, hoja, fresca, cruda','Medicago sativa',239,57,80.6,6.6,0.4,6.8,0,0,5.6,12,976,525,155,3.89,0,0.256,0.347,1.7,183.6),(54,'Arveja, semilla, fresca, cruda','Pisum sativum L.',427,102,71.2,8.9,0,16.6,0,0,3.3,38,395,21,129,1.63,0,0.21,0.158,1.2,24.2),(56,'Arveja, semilla, fresca, enlatada','Noname',440,105,70.4,6,0.8,0,18.3,3.4,1.1,88,155,54,67,1.5,1.5,0.086,0.087,2.9,2.2),(55,'Arveja, semilla, fresca, hervida','Noname',322,77,79.4,5.8,0,13.4,0,0,1.4,20,159,17,69,1.13,0,0,0,0,6.7),(57,'Arveja, semilla, seca, entera, cruda ','Pisum sativum L.',1273,304,11.6,22.5,2.9,0,46.9,13.5,2.56,14,1096,52,340,4.3,4.2,0,0,0,0),(58,'Arveja, semilla, seca, partida, cruda','Noname',1302,311,11.1,22,2.9,0,49.1,12.2,2.65,16,988,51,349,4.5,3.7,0,0,0,0),(59,'Arveja, semilla, seca, partida, hervida','Noname',540,129,68,8.2,0.7,22.5,0,0,0.6,7,215,17,91,2.5,0,0,0,0,0),(60,'Avellana, pepita, seca','Corylus, avellana',2797,668,6,12.7,60.9,17.7,0,0,2.7,19,618,287,354,4.1,0,0.52,0.428,5,0),(63,'Batata, frita','Ipomaea batatas Lam',888,212,54,1.7,7.2,35,0,0,2.1,19,819,50,90,0.9,0,0,0,0,0),(62,'Batata, hervida','Ipomaea batatas Lam',385,92,76.1,1.2,0,21.7,0,0,1,6,516,32,66,0.42,0,0,0,0,10),(61,'Batata, raiz, fresca, cruda','Ipomaea batatas Lam',352,84,78,1.1,0,19.8,0,0,1.1,6,417,34,64,0.25,0,0.103,0.14,1.1,20.1),(64,'Berenjena, pulpa, fresca, cruda','Solaun melongena',117,28,92.7,1.1,0.2,5.5,0,0,0.5,3,238,10,12,0.39,0,0.118,0.479,1.8,2.2),(65,'Berro (hojas y tallo), fresco, crudo','Nasturtium officinale R. Br.',96,23,93.6,1.7,0.3,3.3,0,0,1.1,60,314,222,52,1.62,0,0.118,0.207,0.6,111.3),(66,'Brócoli, tallo de hoja, fresco, crudo','Brassica oleracea itálica Plank',155,37,89.9,3.3,0.2,5.5,0,0,1.1,0,0,0,0,0,0,0.076,0.165,0.7,93.3),(67,'Cardo (penca y hojas), fresco, crudo','Cynara Cardundulus',105,25,91.8,1.4,0.2,4.4,0,0,2.2,86,318,150,40,3.09,0,0.018,0.055,0.1,1.8),(68,'Castaña de Pará, pepita, cruda','Bertholletia exceisa',3061,731,3,18.1,72.1,2.4,0,0,4.4,100,1344,161,573,1.51,0,0,0,0,0),(69,'Cebolla blanca, bulbo, cruda','Allium cepa',71,17,94.7,0.8,0,3.5,0,0,1,26,100,26,20,0.58,0,0.06,0.07,0.3,9.1),(70,'Cebolla blanca, bulbo, hervida','Alllium cepa',42,10,97.4,0.6,0,1.8,0,0,0.2,26,87,12,14,0,0,0,0,0,0),(72,'Chaucha, vaina y semilla, cruda','Phaseolus vulgaris',92,22,91.6,2.4,0,3.2,0,0,2.8,23,247,32,100,2.8,0,0.048,0.28,0.7,19.6),(71,'Coliflor, pimpollo, fresco, crudo','Brassica oleracea Acephala DC',130,31,91.7,2.4,0.2,4.9,0,0,0.8,41,313,25,65,0.9,0,0.137,0.08,0.5,59.3),(539,'Diente de león, hoja','Taraxacum  officinale',137,33,88.8,2.6,0.4,6.6,0,0,1.63,0,350,72,63,1.9,0,0,0,0,4.5),(73,'Escarola crespa, hoja, cruda','Cichorioum endivia',101,24,93.3,1.6,0.2,4,0,0,0.9,10,381,44,67,2.77,0,0.026,0.035,0.4,11.1),(74,'Esparrago, tallo tierno, fresco, crudo','Asparagus officinalis',109,26,93,2.2,0.2,3.9,0,0,0.7,7,196,25,39,1,0,0.186,0.162,0.4,16.5),(75,'Espinaca, hoja, fresca, cruda','Spinacia oleracea',101,24,92.3,3.9,0,2,0,0,1.8,36,918,95,92,3.08,0,0.098,0.21,0,57),(76,'Espinaca, hoja, fresca, hervida','Noname',54,13,96,2.5,0,0.7,0,0,0.8,18,274,32,47,1.05,0,0,0,0,23.7),(77,'Garbanzo, grano entero, seco, hervido','Cicer arietinum',523,125,70,6.1,2.2,20.2,0,0,1.5,8,333,35,158,2.5,0,0,0,0,0),(78,'Habas, semilla inmadura, fresca, cruda','Vicia faba',415,99,73.4,6.7,0.8,16.3,0,0,2.8,12,502,36,157,1.39,0,0.2,0.152,0.8,38.3),(79,'Hinojo, tallo, fresco, crudo','Foeniculum vulgare Gaerth',101,24,92.8,1.9,0.2,3.6,0,0,1.5,0,0,0,0,0,0,0.036,0.036,0.3,15.9),(540,'Lengua de vaca, hojas, tejido fresco, parte comestible','Rumex spp.',178,43,87.1,3.1,0.8,7.6,0,0,1.46,0,315,50,38,1.2,0,0,0,0,48.9),(80,'Lenteja, semilla entera, seca, cruda','Lens esculenta',1465,350,10.9,20.8,0.8,64.8,0,0,2.7,12,1104,46,265,3.86,0,0.385,0.189,1.5,0),(492,'Lupino andino, con cáscara, semilla, crudo','Lupinus mutabilis sweet',1671,399,9.5,37.8,10,39.5,0,0,3.25,0,0,0,0,0,0,0,0,0,0),(493,'Lupino andino, sin cáscara, semilla, crudo','Lupinus mutabilis sweet',1723,411,8.2,38.4,11.6,38.3,0,0,3.43,0,0,0,0,0,0,0,0,0,0),(81,'Maní, semilla con piel, crudo','Arachis Hypogea',2412,576,5.1,33.2,44.3,11.1,0,0,6.3,11,737,128,491,4.06,0,0.668,0.272,22,0),(82,'Maní, semilla sin piel, tostado','Noname',2479,592,3,34.8,45.5,10.8,0,0,5.9,11,725,146,530,2.68,0,0.325,0.249,18,0),(83,'Mastuerzo (hoja y pecíolo), fresco, crudo','Lepidium sativum',214,51,87.2,4.2,1.4,5.3,0,0,1.9,0,0,0,0,0,0,0.093,0.156,1.3,66.8),(501,'Mastuerzo, hoja','Coronupos didimus',209,50,84.6,3.7,1.4,8.1,0,0,2.2,0,276,172,46,3.98,0,0,0,0,11.5),(85,'Nabo, hervido','Noname',46,11,93.9,0.8,0,1.9,0,0,3.4,23,168,72,31,0,0,0,0,0,0),(84,'Nabo, raiz (pulpa), fresco, crudo','Brassica rapa L.',42,10,96,1,0,1.5,0,0,1.5,28,304,28,16,0.56,0,0.043,0.02,0.4,44.5),(86,'Nuez, pepita','Juglans regia',2994,715,3.5,13.9,67.4,13.2,0,0,2,3,687,61,510,2.35,0,0.152,0.442,5.1,0),(87,'Papa, pulpa sin cáscara, fresca, cruda','Solanum tuberosum',369,88,78,2.7,0,19.3,0,0,0.5,24,493,36,72,0.86,0,0.13,0.106,1.9,21.2),(89,'Papa, pulpa sin cáscara, frita, bastón','Noname',678,162,65.8,2.9,6.2,23.6,0,0,1.5,35,510,14,79,0.44,0,0,0,0,14.4),(88,'Papa, pulpa sin cáscara, hervida ','Noname',369,88,78,2.4,0,19.6,0,0,0.2,17,405,21,69,1.84,0,0,0,0,4.9),(90,'Pepino, pulpa, fresco, crudo','Cucumis sativus',63,15,96.1,0.7,0.1,2.7,0,0,0.4,13,141,23,24,0.3,0,0.044,0.057,0.1,6.1),(91,'Perejil, hoja, fresco, crudo','Petroselium sativus Hoffm',251,60,83.9,3.7,1,9,0,0,2.4,0,0,0,0,0,0,0.096,0.054,0.3,282),(93,'Pistacho, pepita, crudo','Pistacia Vera',2713,648,4.2,22.3,54,18.1,0,0,1.4,0,0,0,0,0,0,0,0,0,0),(92,'Piñon de araucaria, pepita, crudo','Noname',925,221,42.4,14.6,1.2,37.9,0,0,3.9,5,305,17,181,1.71,0,0.403,0.221,14.4,0),(528,'Poroto Alubia, semilla, seco','Phaseolus vulgaris ',1411,337,12.7,19.8,0.8,62.8,0,0,3.97,0,0,0,468,11.41,2.5,0,0,0,0),(530,'Poroto Carioca, semilla, seco','Phaseolus vulgaris ',1407,336,13.3,20,0.9,62,0,0,3.87,0,0,0,295,8.91,3,0,0,0,0),(529,'Poroto Colorado, semilla, seco','Phaseolus vulgaris ',1394,333,13.2,19.6,1.2,61,0,0,5,0,0,0,542,13.76,3.6,0,0,0,0),(531,'Poroto Grand Berry, semilla, seco','Phaseolus vulgaris ',1407,336,13.4,21.5,1,60.4,0,0,3.79,0,0,0,440,17.7,3.2,0,0,0,0),(532,'Poroto Great Northern, semilla, seco','Phaseolus vulgaris ',1365,326,13,21,0.5,60.6,0,0,4.89,0,0,0,478,9.8,3.6,0,0,0,0),(533,'Poroto Negro, semilla, seco','Phaseolus vulgaris ',1281,306,12.9,20.6,1,61.5,0,0,4.09,0,0,0,418,15.9,3.5,0,0,0,0),(534,'Poroto Novy Bean, semilla, seco','Phaseolus vulgaris ',1407,336,13.8,26,1.1,55.6,0,0,3.46,0,0,0,334,22.89,3.2,0,0,0,0),(535,'Poroto Oval, semilla, seco','Phaseolus vulgaris ',1373,328,12.7,18.2,1.1,63.7,0,0,4.35,0,0,0,460,9.5,3.9,0,0,0,0),(536,'Poroto Pallares, semilla, seco','Phaseolus vulgaris ',1348,322,14.2,16.6,0.6,63.3,0,0,5.26,0,0,0,577,0,6.1,0,0,0,0),(537,'Poroto Small Red, semilla, seco','Phaseolus vulgaris ',1407,336,13.7,25.3,0.8,56.7,0,0,3.45,0,0,0,442,14.56,2.5,0,0,0,0),(95,'Poroto, semilla, enlatado','Phaseolus vulgaris',373,89,70.6,8.4,0.9,0,11.9,6.7,1.5,92,366,49,105,1.7,1.3,0,0,0,0),(94,'Poroto, semilla, seco, crudo','Phaseolus vulgaris',1214,290,11.7,23.9,2.8,0,42.3,16.1,3.2,8,1710,125,352,8.2,2.7,0.399,0.185,1.7,0),(96,'Puerro (bulbo, tallo y hojas), fresco, crudo','Allium porrum',188,45,88.2,2.5,0.4,7.9,0,0,1,81,199,58,6,0.65,0,0.111,0.03,0.5,10.2),(98,'Quinua, harina','Noname',1428,341,13.7,4.4,1,78.7,0,0,2.2,0,0,94,97,7.46,0,0,0,0,0),(97,'Quinua, semilla, cruda','Chenopodium quinoa vild',1482,354,11.7,13.8,5.1,63.3,0,0,6.1,6,394,171,122,9.5,0,0.089,0.199,3,0.5),(99,'Rabanito, raiz, fresco, crudo','Raphanus sativus',121,29,91.8,1.3,0.1,5.8,0,0,1,0,0,0,0,0,0,0.067,0,0.5,17.7),(100,'Radicheta, hoja, fresco, cruda','Cichorium intybus',0,0,90,2.2,0,0,0,0,0,97,339,138,64,1.71,0,0,0,0,14.8),(101,'Remolacha, tubérculo, fresca, cruda','Beta Vulgaris',226,54,85.6,2.4,0,11.1,0,0,0.9,51,399,13,46,2.86,0,0.065,0.053,0.7,9.4),(102,'Remolacha, tubérculo, hervida','Beta Vulgaris',151,36,90.3,1,0,7.9,0,0,0.8,63,338,11,39,1.82,0,0,0,0,0),(103,'Repollito Bruselas, hoja, fresco, crudo ','Brassica oleracea gemmifera',243,58,84.9,4.4,0.5,8.9,0,0,1.3,0,0,0,0,0,0,0,0,0,136),(104,'Repollo blanco, hoja, fresco, crudo','Brassica oleracea capitata',71,17,94,2.4,0,1.9,0,0,1.7,0,0,0,0,0,0,0.102,0.16,0,23),(105,'Repollo blanco, hoja, hervido','Brassica oleracea capitata',67,16,95,2.2,0,1.8,0,0,1,11,126,47,40,1.27,0,0,0,0,27.4),(106,'Salsifí, raiz, fresco, crudo','Trapogon porrifolium',356,85,79.1,3.5,1,15.5,0,0,0.9,0,0,0,0,0,0,0.058,0.068,0.7,4.9),(538,'Soja FT11, poroto seco','Glycine max ',1541,368,10.2,36.9,6.8,39.8,0,0,6.29,0,0,0,695,7.61,4.2,0,0,0,0),(107,'Soja, semilla madura, seca, cruda','Glycine max. L',1491,356,9.6,34.6,24.2,0,11.2,16,4.41,7,2008,175,498,7.6,3.7,0,0,0,0),(108,'Tapioca, cruda (harina mandioca)','Noname',1407,336,14.8,2,0,82,0,0,1.2,0,0,0,0,0,0,0,0,0,0),(109,'Tapioca, hervida','Noname',230,55,85.7,0.1,0,13.7,0,0,0.5,0,0,0,0,0,0,0,0,0,0),(110,'Tomate, fresco, crudo','Licopersicum sculentum',84,20,94,1,0,4.1,0,0,0.9,5,267,9,43,1.67,0,0.071,0.067,0.4,18.1),(111,'Tomate, hervido','Licopersicum sculentum',88,21,94,1,0,4.2,0,0,0.8,7,307,5,28,1.84,0,0,0,0,9.7),(112,'Tomate, jugo, fresco','Licopersicum sculentum',46,11,96,1,0,1.7,0,0,1.3,8,338,2,44,0.71,0,0,0,0,0),(500,'Verdolaga, hoja','Portulaca oleracea',134,32,89.5,2.4,0.5,5.7,0,0,1.7,0,332,84,41,3.02,0,0,0,0,11),(113,'Verdolaga, hoja y tallo, fresca, cruda','Portulaca oleracea',96,23,93.2,1.6,0.4,3.3,0,0,1.5,0,0,0,0,0,0,0.062,0.139,1.2,12.3),(541,'Yuyo colorado, hoja','Amarantus quitensis',249,60,81,4.1,0.7,11.1,0,0,3.16,0,293,274,46,6.4,0,0,0,0,25.7),(116,'Zanahoria, jugo, fresco','Noname',92,22,94,1,0,4.4,0,0,0.6,53,305,14,47,0.3,0,0,0,0,0),(114,'Zanahoria, raiz, pelada, fresca','Daucus carota',0,0,86,1.1,0,12,0,0,0.9,22,366,37,46,0.47,0,0.08,0.069,0.3,3.9),(115,'Zanahoria, raiz, pelada, hervida','Daucus carota',0,0,0,0,0,0,0,0,0,22,284,34,37,1.36,0,0,0,0,1),(117,'Zapallito, parte tierna, fresco, crudo','Noname',54,13,96,0.8,0,2.4,0,0,0.8,2,203,24,33,1.51,0,0,0,0,0),(118,'Zapallito, parte tierna, hervido ','Noname',67,16,95,1.3,0,2.8,0,0,0.9,4,165,35,40,0.85,0,0,0,0,0),(430,'Zapallo, pulpa, fresco, crudo','Cucurbita pepo',113,27,91,0.5,0.2,5.8,0,0,2.5,2,162,23,14,0.9,0,0.044,0.058,0.4,4.8),(431,'Zapallo, pulpa, hervido','Cucurbita pepo',84,20,94,0.4,0,4.6,0,0,1,4,142,17,13,0.59,0,0,0,0,0);
/*!40000 ALTER TABLE `Vegetales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-28  7:44:24
