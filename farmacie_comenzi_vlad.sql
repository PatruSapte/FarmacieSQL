-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: farmacie
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `comenzi_vlad`
--

DROP TABLE IF EXISTS `comenzi_vlad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comenzi_vlad` (
  `id_comanda` int NOT NULL AUTO_INCREMENT,
  `id_produs` int DEFAULT NULL,
  `cantitate` int DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id_comanda`),
  KEY `id_produs` (`id_produs`),
  CONSTRAINT `comenzi_vlad_ibfk_1` FOREIGN KEY (`id_produs`) REFERENCES `produse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comenzi_vlad`
--

LOCK TABLES `comenzi_vlad` WRITE;
/*!40000 ALTER TABLE `comenzi_vlad` DISABLE KEYS */;
INSERT INTO `comenzi_vlad` VALUES (1,10,10,'2021-07-15'),(2,3,5,'2021-07-15'),(3,13,2,'2021-09-15'),(4,12,9,'2021-09-25'),(5,10,55,'2021-02-10'),(6,8,20,'2021-12-15'),(7,7,41,'2020-10-20'),(8,5,1,'2021-02-01'),(9,4,18,'2021-06-25'),(10,5,38,'2020-02-10'),(11,6,65,'2021-10-20'),(12,6,28,'2021-05-17'),(13,3,12,'2021-02-10');
/*!40000 ALTER TABLE `comenzi_vlad` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-30 23:01:42
