-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: icx0p32.cu5so1xdpnd5.eu-west-1.rds.amazonaws.com    Database: fp_204_25_7
-- ------------------------------------------------------
-- Server version	8.0.42

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EmployeeId` int NOT NULL AUTO_INCREMENT,
  `LastName` varchar(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `Title` varchar(30) DEFAULT NULL,
  `ReportsTo` int DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `HireDate` date DEFAULT NULL,
  `Fax` varchar(24) DEFAULT NULL,
  `Email` varchar(60) DEFAULT NULL,
  `IdAddress` int DEFAULT NULL,
  PRIMARY KEY (`EmployeeId`),
  KEY `fk_idaddrese_idx` (`IdAddress`),
  CONSTRAINT `fk_idaddrese` FOREIGN KEY (`IdAddress`) REFERENCES `Address` (`IdAddress`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Adams','Andrew','General Manager',NULL,'1962-02-18','2002-08-14','+1 (780) 428-3457','andrew@chinookcorp.com',60),(2,'Edwards','Nancy','Sales Manager',1,'1958-12-08','2002-05-01','+1 (403) 262-3322','nancy@chinookcorp.com',61),(3,'Peacock','Jane','Sales Support Agent',2,'1973-08-29','2002-04-01','+1 (403) 262-6712','jane@chinookcorp.com',62),(4,'Park','Margaret','Sales Support Agent',2,'1947-09-19','2003-05-03','+1 (403) 263-4289','margaret@chinookcorp.com',63),(5,'Johnso','Steve','Sales Support Agent',2,'1965-03-03','2003-10-17','1 (780) 836-9543','steve@chinookcorp.com',64),(6,'Mitchell','Michael','IT Manager',1,'1973-07-01','2003-10-17','+1 (403) 246-9899','michael@chinookcorp.com',65),(7,'King','Robert','IT Staff',6,'1970-05-29','2004-01-02','+1 (403) 456-8485','robert@chinookcorp.com',66),(8,'Callaha','Laura','IT Staff',6,'1968-01-09','2004-03-04','+1 (403) 467-8772','laura@chinookcorp.com',67);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-22 13:44:42
