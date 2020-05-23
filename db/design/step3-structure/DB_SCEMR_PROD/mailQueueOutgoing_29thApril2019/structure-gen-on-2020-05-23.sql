use DB_SCEMR_PROD;
-- MariaDB dump 10.17  Distrib 10.4.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: DB_SCEMR_PROD
-- ------------------------------------------------------
-- Server version	10.4.13-MariaDB-1:10.4.13+maria~bionic

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mailQueueOutgoing_29thApril2019`
--

DROP TABLE IF EXISTS `mailQueueOutgoing_29thApril2019`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailQueueOutgoing_29thApril2019` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `toAddress` varchar(255) DEFAULT NULL,
  `toName` varchar(255) DEFAULT NULL,
  `toMultiple` text DEFAULT NULL,
  `fromAddress` varchar(255) DEFAULT NULL,
  `fromName` varchar(255) DEFAULT NULL,
  `ccAddress` varchar(255) DEFAULT NULL,
  `ccName` varchar(255) DEFAULT NULL,
  `ccToMultiple` text DEFAULT NULL,
  `bccAddress` varchar(255) DEFAULT NULL,
  `bccName` varchar(255) DEFAULT NULL,
  `bccToMultiple` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `messageHeader` text DEFAULT NULL,
  `messageBody` text DEFAULT NULL,
  `contentType` enum('text','html') NOT NULL DEFAULT 'text',
  `returnPath` varchar(255) DEFAULT NULL,
  `insertedFrom` varchar(255) DEFAULT NULL,
  `developedBy` varchar(255) DEFAULT NULL,
  `additionalInfo` text DEFAULT NULL,
  `errorFound` enum('yes','no') NOT NULL DEFAULT 'no',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129866 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
