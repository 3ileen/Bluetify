-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bluetifyv2
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `contenidos`
--

DROP TABLE IF EXISTS `contenidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contenidos` (
  `id_contenido` int NOT NULL AUTO_INCREMENT,
  `id_categoria` int NOT NULL,
  `id_autores` int NOT NULL,
  `promocion` tinyint(1) DEFAULT NULL,
  `precio` float NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `archivo` varchar(1000) NOT NULL,
  `imagen` varchar(1000) NOT NULL,
  PRIMARY KEY (`id_contenido`),
  KEY `id_categoria_idx` (`id_categoria`),
  KEY `id_autores_idx` (`id_autores`),
  CONSTRAINT `fk_contenidos_autores` FOREIGN KEY (`id_autores`) REFERENCES `autores` (`id_autor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_contenidos_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenidos`
--

LOCK TABLES `contenidos` WRITE;
/*!40000 ALTER TABLE `contenidos` DISABLE KEYS */;
INSERT INTO `contenidos` VALUES (116,2,2,NULL,1234,'.mp3','testing3','testing3','uploads/videoplayback.mp4-1667531444315.mp4-1667537896514.mp4','uploads/ceviche.jpg-1667537896516.jpeg'),(117,2,2,NULL,123,'.mp3','testing4','testing4','uploads/Arctic Monkeys - Fluorescent Adolescent (Official Video) (320kbps).mp3-1667537935773.mpeg','uploads/artic_cover.jpg-1667537935774.jpeg'),(118,2,2,NULL,23,'.mp3','testing5','testing5','uploads/analisis.pdf-1667537987738.pdf','uploads/WhatsApp Image 2022-10-22 at 17.46.13.jpeg-1667537987736.jpeg');
/*!40000 ALTER TABLE `contenidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-04  0:03:43
