-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: bankloan
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `information_on_customer`
--

DROP TABLE IF EXISTS `information_on_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `information_on_customer` (
  `Gender` varchar(255) DEFAULT NULL,
  `Married` varchar(255) DEFAULT NULL,
  `Dependents` int DEFAULT NULL,
  `Education` varchar(255) DEFAULT NULL,
  `Self_Employed` varchar(255) DEFAULT NULL,
  `Id` int NOT NULL,
  `Income` int DEFAULT NULL,
  `LoanAmount` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information_on_customer`
--

LOCK TABLES `information_on_customer` WRITE;
/*!40000 ALTER TABLE `information_on_customer` DISABLE KEYS */;
INSERT INTO `information_on_customer` VALUES ('Man','Yes',1,'Student','No',1,2000,21000),('Girl','Yes',1,'Graduated','No',2,2500,4000),('Man','No',0,'Student','Yes',3,1000,50000),('Girl','No',1,'Graduated','yes',4,1500,40000),('Man','Yes',0,'Student','No',5,2000,21000),('Girl','Yes',1,'Graduated','No',6,2500,4000),('Girl','No',0,'Student','Yes',7,800,5000),('Man','No',1,'Graduated','yes',8,850,4000),('Girl','No',0,'Graduated','yes',9,1500,40000),('Man','Yes',1,'Student','No',10,2000,21000),('Girl','Yes',0,'Graduated','No',11,2500,4000),('Girl','No',1,'Student','Yes',12,800,5000),('Man','No',0,'Graduated','yes',13,850,4000);
/*!40000 ALTER TABLE `information_on_customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-29 15:00:18
