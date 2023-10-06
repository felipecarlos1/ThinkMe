-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbtm
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios` (
  `ComentarioID` int NOT NULL AUTO_INCREMENT,
  `PostID` int DEFAULT NULL,
  `UsuarioID` int DEFAULT NULL,
  `Conteudo` text,
  `DataComentario` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ComentarioID`),
  KEY `PostID` (`PostID`),
  KEY `UsuarioID` (`UsuarioID`),
  CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`PostID`) REFERENCES `posts` (`PostID`),
  CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`UsuarioID`) REFERENCES `usuarios` (`UsuarioID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,1,2,'Concordo, Alice!','2023-10-01 12:45:00'),(2,1,3,'Também acho!','2023-10-01 13:00:00'),(3,2,4,'Que notícia maravilhosa!','2023-10-02 13:30:00'),(4,3,5,'Incrível! Quais lugares você visitou?','2023-10-03 15:00:00'),(5,4,6,'Qual é o nome do restaurante? Estou curioso!','2023-10-04 16:00:00'),(6,5,7,'Qual filme você está assistindo?','2023-10-05 17:30:00'),(7,6,8,'Esportes são ótimos para a saúde!','2023-10-06 18:45:00'),(8,7,9,'Qual banda tocou?','2023-10-07 20:00:00'),(9,8,10,'Espero que fique delicioso!','2023-10-08 21:00:00'),(10,9,1,'Suas pinturas são incríveis, Ivy!','2023-10-09 22:15:00');
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-05 22:06:26
