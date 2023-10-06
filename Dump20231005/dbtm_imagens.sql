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
-- Table structure for table `imagens`
--

DROP TABLE IF EXISTS `imagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagens` (
  `ImagemID` int NOT NULL AUTO_INCREMENT,
  `UsuarioID` int DEFAULT NULL,
  `Caminho` varchar(255) NOT NULL,
  `Descricao` text,
  `DataUpload` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `PostID` int DEFAULT NULL,
  PRIMARY KEY (`ImagemID`),
  KEY `UsuarioID` (`UsuarioID`),
  KEY `PostID` (`PostID`),
  CONSTRAINT `imagens_ibfk_1` FOREIGN KEY (`UsuarioID`) REFERENCES `usuarios` (`UsuarioID`),
  CONSTRAINT `imagens_ibfk_2` FOREIGN KEY (`PostID`) REFERENCES `posts` (`PostID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagens`
--

LOCK TABLES `imagens` WRITE;
/*!40000 ALTER TABLE `imagens` DISABLE KEYS */;
INSERT INTO `imagens` VALUES (1,1,'https://caminho/para/imagem1.jpg','Descrição da Imagem 1','2023-10-01 12:00:00',NULL),(2,2,'https://caminho/para/imagem2.jpg','Descrição da Imagem 2','2023-10-02 13:00:00',NULL),(3,3,'https://caminho/para/imagem3.jpg','Descrição da Imagem 3','2023-10-03 14:00:00',NULL),(4,4,'https://caminho/para/imagem4.jpg','Descrição da Imagem 4','2023-10-04 15:00:00',NULL),(5,5,'https://caminho/para/imagem5.jpg','Descrição da Imagem 5','2023-10-05 16:00:00',NULL),(6,6,'https://caminho/para/imagem6.jpg','Descrição da Imagem 6','2023-10-06 17:00:00',NULL),(7,7,'https://caminho/para/imagem7.jpg','Descrição da Imagem 7','2023-10-07 18:00:00',NULL),(8,8,'https://caminho/para/imagem8.jpg','Descrição da Imagem 8','2023-10-08 19:00:00',NULL),(9,9,'https://caminho/para/imagem9.jpg','Descrição da Imagem 9','2023-10-09 20:00:00',NULL),(10,10,'https://caminho/para/imagem10.jpg','Descrição da Imagem 10','2023-10-10 21:00:00',NULL);
/*!40000 ALTER TABLE `imagens` ENABLE KEYS */;
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
