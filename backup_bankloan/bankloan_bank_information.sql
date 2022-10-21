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
-- Table structure for table `bank_information`
--

DROP TABLE IF EXISTS `bank_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_information` (
  `Id` int NOT NULL,
  `NameId` varchar(255) DEFAULT NULL,
  `JobTitle` varchar(255) DEFAULT NULL,
  `AlreadyGotLoan` varchar(255) DEFAULT NULL,
  `Depth` int DEFAULT NULL,
  `ClientReputation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_information`
--

LOCK TABLES `bank_information` WRITE;
/*!40000 ALTER TABLE `bank_information` DISABLE KEYS */;
INSERT INTO `bank_information` VALUES (1,'Eden_Lecarpentier','Data_Analyst','No',0,'Good'),(2,'Cynthia_marceny','Drawer','Yes',4000,'Okay'),(3,'Samuel_Fasquelle','pro_yugioh_player','No',0,'Good'),(4,'Victoria_Williams','fish_monger','Yes',0,'Good'),(5,'Pam_Williams','Office_Work','Yes',0,'Good'),(6,'Louis_Lecarpentier','fish_monger','Yes',4000,'Okay'),(7,'Hyppolite_Lecarpentier','EEnergy_Engenieur','No',300,'okay'),(8,'Typhaine_le_voisin_barbier','Care_Assistant','Yes',40000,'Bad'),(9,'Quentin_Walbeck','Pet_Cleaner','No',0,'Good'),(10,'Cynthia_marceny_theault','Drawer','Yes',40,'Okay'),(11,'Willem_Marceny','Different_Jobs','No',0,'Good'),(12,'Cynthia_marceny','Drawer','Yes',4000,'Okay'),(13,'Eden_Lecarpentier','Data_Analyst','Yes',0,'Good');
/*!40000 ALTER TABLE `bank_information` ENABLE KEYS */;
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
