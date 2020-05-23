use DB_SC_HR;
-- MariaDB dump 10.17  Distrib 10.4.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: DB_SC_HR
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
-- Table structure for table `main_leavemanagement_summary`
--

DROP TABLE IF EXISTS `main_leavemanagement_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_leavemanagement_summary` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `leavemgmt_id` bigint(20) unsigned DEFAULT NULL,
  `cal_startmonth` int(11) unsigned DEFAULT NULL,
  `cal_startmonthname` varchar(100) DEFAULT NULL,
  `weekend_startday` int(11) unsigned DEFAULT NULL,
  `weekend_startdayname` varchar(100) DEFAULT NULL,
  `weekend_endday` int(11) unsigned DEFAULT NULL,
  `weekend_enddayname` varchar(100) DEFAULT NULL,
  `businessunit_id` int(11) unsigned DEFAULT NULL,
  `businessunit_name` varchar(100) DEFAULT NULL,
  `department_id` int(11) unsigned DEFAULT NULL,
  `department_name` varchar(100) DEFAULT NULL,
  `hours_day` int(11) DEFAULT NULL,
  `is_satholiday` tinyint(1) DEFAULT NULL COMMENT '1-Yes,2-No',
  `is_halfday` tinyint(1) DEFAULT NULL COMMENT '1-Yes,2-No',
  `is_leavetransfer` tinyint(1) DEFAULT NULL COMMENT '1-Yes,2-No',
  `is_skipholidays` tinyint(1) DEFAULT NULL COMMENT '1-Yes,2-No',
  `description` varchar(255) DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
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
