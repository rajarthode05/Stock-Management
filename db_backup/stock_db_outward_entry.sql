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
-- Table structure for table `outward_entry`
--

DROP TABLE IF EXISTS `outward_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outward_entry` (
  `outward_entry_id` int(11) NOT NULL AUTO_INCREMENT,
  `out_ent_ProductDesription` varchar(50) DEFAULT NULL,
  `out_ent_ProductName` varchar(100) DEFAULT NULL,
  `out_ent_catlogNo` varchar(100) DEFAULT NULL,
  `out_ent_Quantity` varchar(20) DEFAULT NULL,
  `out_ent_Unit` varchar(20) DEFAULT NULL,
  `out_ent_Date` varchar(20) DEFAULT NULL,
  `out_ent_Time` varchar(20) DEFAULT NULL,
  `out_ent_ChallanNo` varchar(20) DEFAULT NULL,
  `out_ent_SiteNo` varchar(20) DEFAULT NULL,
  `out_ent_Remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`outward_entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outward_entry`
--

LOCK TABLES `outward_entry` WRITE;
/*!40000 ALTER TABLE `outward_entry` DISABLE KEYS */;
INSERT INTO `outward_entry` VALUES (17,'2.5 sqmm  X 4 core copper armad cable','Polycab','','50','Mtr.','03/12/2018','2:16:18 PM','CH145','Narhe','Supply.'),(18,'6 sqmm X 3core copper armored cable','Polycab','','40','Mtr.','03/12/2018','2:23:08 PM','1234','caple','despatch');
/*!40000 ALTER TABLE `outward_entry` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-13 18:03:30
