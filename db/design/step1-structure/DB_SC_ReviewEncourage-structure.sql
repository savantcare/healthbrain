-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: DB_SC_ReviewEncourage
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4-log

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
-- Current Database: `DB_SC_ReviewEncourage`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `DB_SC_ReviewEncourage` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `DB_SC_ReviewEncourage`;

--
-- Table structure for table `reviewEncourage`
--

DROP TABLE IF EXISTS `reviewEncourage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewEncourage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT NULL,
  `reviewRequestedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `uidOfReviewRequestedBy` int(11) unsigned DEFAULT NULL,
  `isReviewReceived` enum('Yes','No') NOT NULL DEFAULT 'No',
  `uidOfIsReviewReceivedAlteredBy` int(11) unsigned DEFAULT NULL,
  `toAddress` varchar(255) DEFAULT NULL,
  `toName` varchar(255) DEFAULT NULL,
  `fromAddress` varchar(255) DEFAULT NULL,
  `fromName` varchar(255) DEFAULT NULL,
  `ccAddress` varchar(255) DEFAULT NULL,
  `ccName` varchar(255) DEFAULT NULL,
  `subject` text,
  `messageBody` text,
  `contentType` enum('text','html') NOT NULL DEFAULT 'text',
  `mailRequestSentOn` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `uidOfReviewRequestedBy` (`uidOfReviewRequestedBy`),
  KEY `uidOfIsReviewReceivedAlteredBy` (`uidOfIsReviewReceivedAlteredBy`),
  CONSTRAINT `reviewEncourage_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `DB_SCEMR_PROD`.`users` (`id`),
  CONSTRAINT `reviewEncourage_ibfk_2` FOREIGN KEY (`uidOfReviewRequestedBy`) REFERENCES `DB_SCEMR_PROD`.`users` (`id`),
  CONSTRAINT `reviewEncourage_ibfk_3` FOREIGN KEY (`uidOfIsReviewReceivedAlteredBy`) REFERENCES `DB_SCEMR_PROD`.`users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reviewEncourageBkp`
--

DROP TABLE IF EXISTS `reviewEncourageBkp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewEncourageBkp` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT NULL,
  `reviewRequestedOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `uidOfReviewRequestedBy` int(11) unsigned DEFAULT NULL,
  `isReviewReceived` enum('Yes','No') NOT NULL DEFAULT 'No',
  `uidOfIsReviewReceivedAlteredBy` int(11) unsigned DEFAULT NULL,
  `toAddress` varchar(255) DEFAULT NULL,
  `toName` varchar(255) DEFAULT NULL,
  `fromAddress` varchar(255) DEFAULT NULL,
  `fromName` varchar(255) DEFAULT NULL,
  `ccAddress` varchar(255) DEFAULT NULL,
  `ccName` varchar(255) DEFAULT NULL,
  `subject` text,
  `messageBody` text,
  `contentType` enum('text','html') NOT NULL DEFAULT 'text',
  `mailRequestSentOn` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `uidOfReviewRequestedBy` (`uidOfReviewRequestedBy`),
  KEY `uidOfIsReviewReceivedAlteredBy` (`uidOfIsReviewReceivedAlteredBy`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
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