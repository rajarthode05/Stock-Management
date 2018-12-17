-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: stock_db
-- ------------------------------------------------------
-- Server version	5.5.62-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `stock_menufacture`
--

DROP TABLE IF EXISTS `stock_menufacture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_menufacture` (
  `stock_menufacture_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`stock_menufacture_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_menufacture`
--

LOCK TABLES `stock_menufacture` WRITE;
/*!40000 ALTER TABLE `stock_menufacture` DISABLE KEYS */;
INSERT INTO `stock_menufacture` VALUES (1,'LEGRAND-MOSAIC'),(2,'LEGRAND-ARTEOR'),(4,'LEGRAND-MYLINC'),(5,'Polycab'),(6,'KEI'),(7,'RR'),(8,'FINOLEX'),(9,'LEGRAND'),(10,'T CAB'),(11,'Nickon'),(12,'LEGRAND-MYRIUS'),(14,'HAGER'),(15,'Schneider'),(16,'Greatwhite-Fiana'),(17,'Greatwhite'),(18,'Anchor-Roma'),(19,'North West-Nova'),(20,'MK'),(21,'MK-BLACK'),(22,'Havells Cabtree'),(23,'Indo Asian'),(24,'GUTS'),(25,'Siemens'),(26,'Local'),(27,'Anchor'),(28,'Pressfit'),(29,'Mahajan'),(30,'HMI'),(31,'Hex'),(32,'VBI'),(33,'Metro'),(34,'MCI'),(35,'Braco'),(36,'Secure'),(37,'SKI'),(38,'MKI'),(39,'Bharat'),(40,'Dowells'),(41,'MBP'),(42,'Lifestyle'),(43,'Vinay'),(44,'Flex'),(45,'Extra Power'),(46,'Real Power'),(47,'Platinum'),(48,'J.K.'),(49,'Hurricane'),(50,'MG'),(51,'ECC'),(52,'CAA'),(53,'Electro'),(54,'Roshani'),(55,'Ugam'),(56,'DMI'),(57,'MMI'),(58,'Bestex'),(59,'Taparia'),(60,'Steelgrip'),(61,'Diamond'),(62,'Precision'),(63,'Presto Plast');
/*!40000 ALTER TABLE `stock_menufacture` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-13 18:03:29
