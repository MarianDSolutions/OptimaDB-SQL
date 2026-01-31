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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerId` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(40) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Company` varchar(80) DEFAULT NULL,
  `Fax` varchar(24) DEFAULT NULL,
  `Email` varchar(60) NOT NULL,
  `SupportRepId` int DEFAULT NULL,
  `IdAddress` int DEFAULT NULL,
  `VIP` enum('sí','no') DEFAULT 'no',
  `birthdate` date DEFAULT NULL,
  `username` varchar(12) DEFAULT NULL,
  `pwd` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`CustomerId`),
  KEY `fk_suportid_idx` (`SupportRepId`),
  KEY `fk_iddadresc_idx` (`IdAddress`),
  CONSTRAINT `fk_iddadresc` FOREIGN KEY (`IdAddress`) REFERENCES `Address` (`IdAddress`),
  CONSTRAINT `fk_suportid` FOREIGN KEY (`SupportRepId`) REFERENCES `employee` (`EmployeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Luís','Gonçalves','Embraer - Empresa Brasileira de Aeronáutica S.A.','+55 (12) 3923-5566','luisg@embraer.com.br',3,1,'no',NULL,NULL,NULL),(2,'Leonie','Köhler',NULL,NULL,'leonekohler@surfeu.de',5,2,'no',NULL,NULL,NULL),(3,'François','Tremblay',NULL,NULL,'ftremblay@gmail.com',3,3,'no',NULL,NULL,NULL),(4,'Bjør','Hanse',NULL,NULL,'bjorn.hansen@yahoo.no',4,4,'no',NULL,NULL,NULL),(5,'František','Wichterlová','JetBrains s.r.o.','+420 2 4172 5555','frantisekw@jetbrains.com',4,5,'no',NULL,NULL,NULL),(6,'Helena','Holý',NULL,NULL,'hholy@gmail.com',5,6,'no',NULL,NULL,NULL),(7,'Astrid','Gruber',NULL,NULL,'astrid.gruber@apple.at',5,7,'no',NULL,NULL,NULL),(8,'Daa','Peeters',NULL,NULL,'daan_peeters@apple.be',4,8,'no',NULL,NULL,NULL),(9,'Kara','Nielse',NULL,NULL,'kara.nielsen@jubii.dk',4,9,'no',NULL,NULL,NULL),(10,'Eduardo','Martins','Woodstock Discos','+55 (11) 3033-4564','eduardo@woodstock.com.br',4,10,'no',NULL,NULL,NULL),(11,'Alexandre','Rocha','Banco do Brasil S.A.','+55 (11) 3055-8131','alero@uol.com.br',5,11,'no',NULL,NULL,NULL),(12,'Roberto','Almeida','Riotur','+55 (21) 2271-7070','roberto.almeida@riotur.gov.br',3,12,'no',NULL,NULL,NULL),(13,'Fernanda','Ramos',NULL,'+55 (61) 3363-7855','fernadaramos4@uol.com.br',4,13,'no',NULL,NULL,NULL),(14,'Mark','Philips','Telus','+1 (780) 434-5565','mphilips12@shaw.ca',5,14,'no',NULL,NULL,NULL),(15,'Jennifer','Peterso','Rogers Canada','+1 (604) 688-8756','jenniferp@rogers.ca',3,15,'no',NULL,NULL,NULL),(16,'Frank','Harris','Google Inc.','+1 (650) 253-0000','fharris@google.com',4,16,'no',NULL,NULL,NULL),(17,'Jack','Smith','Microsoft Corporatio','+1 (425) 882-8081','jacksmith@microsoft.com',5,17,'no',NULL,NULL,NULL),(18,'Michelle','Brooks',NULL,'+1 (212) 221-4679','michelleb@aol.com',3,18,'no',NULL,NULL,NULL),(19,'Tim','Goyer','Apple Inc.','+1 (408) 996-1011','tgoyer@apple.com',3,19,'no',NULL,NULL,NULL),(20,'Da','Miller',NULL,NULL,'dmiller@comcast.com',4,20,'no',NULL,NULL,NULL),(21,'Kathy','Chase',NULL,NULL,'kachase@hotmail.com',5,21,'no',NULL,NULL,NULL),(22,'Heather','Leacock',NULL,NULL,'hleacock@gmail.com',4,22,'no',NULL,NULL,NULL),(23,'Joh','Gordo',NULL,NULL,'johngordon22@yahoo.com',4,23,'no',NULL,NULL,NULL),(24,'Frank','Ralsto',NULL,NULL,'fralston@gmail.com',3,24,'no',NULL,NULL,NULL),(25,'Victor','Stevens',NULL,NULL,'vstevens@yahoo.com',5,25,'no',NULL,NULL,NULL),(26,'Richard','Cunningham',NULL,NULL,'ricunningham@hotmail.com',4,26,'no',NULL,NULL,NULL),(27,'Patrick','Gray',NULL,NULL,'patrick.gray@aol.com',4,27,'no',NULL,NULL,NULL),(28,'Julia','Barnett',NULL,NULL,'jubarnett@gmail.com',5,28,'no',NULL,NULL,NULL),(29,'Robert','Brow',NULL,NULL,'robbrown@shaw.ca',3,29,'no',NULL,NULL,NULL),(30,'Edward','Francis',NULL,NULL,'edfrancis@yachoo.ca',3,30,'no',NULL,NULL,NULL),(31,'Martha','Silk',NULL,NULL,'marthasilk@gmail.com',5,31,'no',NULL,NULL,NULL),(32,'Aaro','Mitchell',NULL,NULL,'aaronmitchell@yahoo.ca',4,32,'no',NULL,NULL,NULL),(33,'Ellie','Sulliva',NULL,NULL,'ellie.sullivan@shaw.ca',3,33,'no',NULL,NULL,NULL),(34,'João','Fernandes',NULL,NULL,'jfernandes@yahoo.pt',4,34,'no',NULL,NULL,NULL),(35,'Madalena','Sampaio',NULL,NULL,'masampaio@sapo.pt',4,35,'no',NULL,NULL,NULL),(36,'Hannah','Schneider',NULL,NULL,'hannah.schneider@yahoo.de',5,36,'no',NULL,NULL,NULL),(37,'Fyn','Zimmerman',NULL,NULL,'fzimmermann@yahoo.de',3,37,'no',NULL,NULL,NULL),(38,'Niklas','Schröder',NULL,NULL,'nschroder@surfeu.de',3,38,'no',NULL,NULL,NULL),(39,'Camille','Bernard',NULL,NULL,'camille.bernard@yahoo.fr',4,39,'no',NULL,NULL,NULL),(40,'Dominique','Lefebvre',NULL,NULL,'dominiquelefebvre@gmail.com',4,40,'no',NULL,NULL,NULL),(41,'Marc','Dubois',NULL,NULL,'marc.dubois@hotmail.com',5,41,'no',NULL,NULL,NULL),(42,'Wyatt','Girard',NULL,NULL,'wyatt.girard@yahoo.fr',3,42,'no',NULL,NULL,NULL),(43,'Isabelle','Mercier',NULL,NULL,'isabelle_mercier@apple.fr',3,43,'no',NULL,NULL,NULL),(44,'Terhi','Hämäläine',NULL,NULL,'terhi.hamalainen@apple.fi',3,44,'no',NULL,NULL,NULL),(45,'Ladislav','Kovács',NULL,NULL,'ladislav_kovacs@apple.hu',3,45,'no',NULL,NULL,NULL),(46,'Hugh','O\'Reilly',NULL,NULL,'hughoreilly@apple.ie',3,46,'no',NULL,NULL,NULL),(47,'Lucas','Mancini',NULL,NULL,'lucas.mancini@yahoo.it',5,47,'no',NULL,NULL,NULL),(48,'Johannes','Van der Berg',NULL,NULL,'johavanderberg@yahoo.nl',5,48,'no',NULL,NULL,NULL),(49,'Stanisław','Wójcik',NULL,NULL,'stanisław.wójcik@wp.pl',4,49,'no',NULL,NULL,NULL),(50,'Enrique','Muñoz',NULL,NULL,'enrique_munoz@yahoo.es',5,50,'no',NULL,NULL,NULL),(51,'Joakim','Johansso',NULL,NULL,'joakim.johansson@yahoo.se',5,51,'no',NULL,NULL,NULL),(52,'Emma','Jones',NULL,NULL,'emma_jones@hotmail.com',3,52,'no',NULL,NULL,NULL),(53,'Phil','Hughes',NULL,NULL,'phil.hughes@gmail.com',3,53,'no',NULL,NULL,NULL),(54,'Steve','Murray',NULL,NULL,'steve.murray@yahoo.uk',5,54,'no',NULL,NULL,NULL),(55,'Mark','Taylor',NULL,NULL,'mark.taylor@yahoo.au',4,55,'no',NULL,NULL,NULL),(56,'Diego','Gutiérrez',NULL,NULL,'diego.gutierrez@yahoo.ar',4,56,'no',NULL,NULL,NULL),(57,'Luis','Rojas',NULL,NULL,'luisrojas@yahoo.cl',5,57,'no',NULL,NULL,NULL),(58,'Manoj','Pareek',NULL,NULL,'manoj.pareek@rediff.com',3,58,'no',NULL,NULL,NULL),(59,'Puja','Srivastava',NULL,NULL,'puja_srivastava@yahoo.i',3,59,'no',NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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

-- Dump completed on 2025-10-22 13:44:49
