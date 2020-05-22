use DB_SC_Surescripts
-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: DB_SC_Surescripts
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
-- Table structure for table `271MasterSegmentDetailDataElementSummaryAdditionalCode`
--

DROP TABLE IF EXISTS `271MasterSegmentDetailDataElementSummaryAdditionalCode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `271MasterSegmentDetailDataElementSummaryAdditionalCode` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `segmentDetailDataElementSummaryMasterId` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `segmentHeaderMasterId` (`segmentDetailDataElementSummaryMasterId`),
  CONSTRAINT `271segmentdetaildataelementsummarymasteradditionalcode_ibfk_1` FOREIGN KEY (`segmentDetailDataElementSummaryMasterId`) REFERENCES `271MasterSegmentDetailDataElementSummary` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `271MasterSegmentDetailDataElementSummaryAdditionalCode`
--

LOCK TABLES `271MasterSegmentDetailDataElementSummaryAdditionalCode` WRITE;
/*!40000 ALTER TABLE `271MasterSegmentDetailDataElementSummaryAdditionalCode` DISABLE KEYS */;
INSERT INTO `271MasterSegmentDetailDataElementSummaryAdditionalCode` VALUES (1,'20',2,'Information Source\r\nIdentifies the payer, maintainer, or source of the information'),(2,'1',3,'Additional Subordinate HL Data Segment in This Hierarchical Structure.'),(3,'N',4,'No'),(4,'Y',4,'Yes'),(5,'04',5,'Authorized Quantity Exceeded'),(6,'41',5,'Authorization/Access Restrictions'),(7,'42',5,'Unable to Respond at Current Time'),(8,'79',5,'Invalid Participant Identification'),(9,'C',6,'Please Correct and Resubmit'),(10,'N',6,'Resubmission Not Allowed'),(11,'P',6,'Please Resubmit Original Transaction'),(12,'R',6,'Resubmission Allowed'),(13,'S',6,'Do Not Resubmit; Inquiry Initiated to a Third Party'),(14,'Y',6,'Do Not Resubmit; We Will Hold Your Request and\r\nRespond Again Shortly'),(15,'2B',7,'Third-Party Administrator (Recommended by Surescripts)'),(16,'1',8,'Person'),(17,'2',8,'Non-Person Entity (Recommended by Surescripts)'),(18,'PI',10,'Payer Identification (Recommended by Surescripts)'),(19,'N',12,'No'),(20,'Y',12,'Yes'),(21,'04',13,'Authorized Quantity Exceeded'),(22,'41',13,'Authorization/Access Restrictions'),(23,'42',13,'Unable to Respond at Current Time'),(24,'79',13,'Invalid Participant Identification'),(25,'80',13,'No Response received – Transaction Terminated'),(26,'T4',13,'Payer Name or Identifier Missing'),(27,'C',14,'Please Correct and Resubmit'),(28,'N',14,'Resubmission Not Allowed'),(29,'P',14,'Please Resubmit Original Transaction'),(30,'R',14,'Resubmission Allowed'),(31,'S',14,'Do Not Resubmit; Inquiry Initiated to a Third Party'),(32,'W',14,'Please Wait 30 Days and Resubmit'),(33,'X',14,'Please Wait 10 Days and Resubmit'),(34,'Y',14,'Do Not Resubmit; We Will Hold Your Request and\r\nRespond Again Shortly'),(35,'21',17,'Information Receiver'),(36,'1',18,'Additional Subordinate HL Data Segment in This Hierarchical Structure.'),(37,'1P',19,'Provider (Recommended by Surescripts)'),(38,'1',20,'Person (Recommended by Surescripts)'),(39,'2',20,'Non-Person Entity'),(40,'XX',25,'Centers for Medicare and Medicaid Services National Provider Identifier.'),(41,'EO',28,'Submitter Identification Number'),(42,'N',31,'No'),(43,'Y',31,'Yes'),(44,'15',32,'Required application data missing'),(45,'41',32,'Authorization/Access Restrictions'),(46,'43',32,'Invalid/Missing Provider Identification (Surescripts recommends this for NPI error.)'),(47,'44',32,'Invalid/Missing Provider Name'),(48,'45',32,'Invalid/Missing Provider Specialty'),(49,'46',32,'Invalid/Missing Provider Phone Number'),(50,'47',32,'Invalid/Missing Provider State'),(51,'48',32,'Invalid/Missing Referring Provider Identification Number'),(52,'50',32,'Provider Ineligible for Inquiries'),(53,'51',32,'Provider Not on File'),(54,'79',32,'Invalid Participant Identification'),(55,'97',32,'Invalid or Missing Provider Address'),(56,'T4',32,'Payer Name or Identifier Missing'),(57,'C',33,'Please Correct and Resubmit'),(58,'N',33,'Resubmission Not Allowed'),(59,'R',33,'Resubmission Allowed'),(60,'S',33,'Do Not Resubmit; Inquiry Initiated to a Third Party'),(61,'W',33,'Please Wait 30 Days and Resubmit'),(62,'X',33,'Please Wait 10 Days and Resubmit'),(63,'Y',33,'Do Not Resubmit; We Will Hold Your Request and Respond Again Shortly'),(64,'22',36,'Subscriber'),(65,'0',37,'No Subordinate HL Segment in This Hierarchical Structure.'),(66,'1',37,'Additional Subordinate HL Data Segment in This Hierarchical Structure.'),(67,'1',38,'Current Transaction Trace Numbers'),(68,'IL',42,'Insured or Subscriber'),(69,'1',43,'Person'),(70,'MI',48,'Member Identification Number'),(71,'49',50,'Family Unit Member'),(72,'SY',50,'Social Security Number'),(73,'EJ',50,'Patient Account Number'),(74,'N',59,'No'),(75,'Y',59,'Yes'),(76,'15',60,'Required application data missing'),(77,'35',60,'Out of Network'),(78,'42',60,'Unable to Respond at Current Time'),(79,'43',60,'Invalid/Missing Provider Identification'),(80,'45',60,'Invalid/Missing Provider Specialty'),(81,'47',60,'Invalid/Missing Provider State'),(82,'48',60,'Invalid/Missing Referring Provider Identification Number'),(83,'49',60,'Provider is Not Primary Care Physician'),(84,'51',60,'Provider Not on File'),(85,'52',60,'Service Dates Not Within Provider Plan Enrollment'),(86,'56',60,'Inappropriate Date'),(87,'57',60,'Invalid/Missing Date(s) of Service'),(88,'58',60,'Invalid/Missing Date-of-Birth'),(89,'60',60,'Date of Birth Follows Date(s) of Service'),(90,'61',60,'Date of Death Precedes Date(s) of Service'),(91,'62',60,'Date of Service Not Within Allowable Inquiry Period'),(92,'63',60,'Date of Service in Future'),(93,'71',60,'Patient Birth Date Does Not Match That for the Patient on the Database'),(94,'72',60,'Invalid/Missing Subscriber/Insured ID'),(95,'73',60,'Invalid/Missing Subscriber/Insured Name'),(96,'74',60,'Invalid/Missing Subscriber/Insured Gender Code\r\n'),(97,'75',60,'Subscriber/Insured Not Found'),(98,'76',60,'Duplicate Subscriber/Insured ID Number'),(99,'78',60,'Subscriber/Insured Not in Group/Plan Identified'),(100,'C',61,'Please Correct and Resubmit'),(101,'N',61,'Resubmission Not Allowed'),(102,'R',61,'Resubmission Allowed'),(103,'S',61,'Do Not Resubmit; Inquiry Initiated to a Third Party'),(104,'W',61,'Please Wait 30 Days and Resubmit'),(105,'X',61,'Please Wait 10 Days and Resubmit'),(106,'Y',61,'Do Not Resubmit; We Will Hold Your Request and Respond Again Shortly'),(107,'D8',62,'Date Expressed in Format CCYYMMDD'),(108,'F',64,'Female'),(109,'M',64,'Male'),(110,'U',64,'Unknown'),(111,'Y',65,'Yes'),(112,'18',66,'Self'),(113,'001',67,'Change'),(114,'25',68,'Change in Identifying Data Elements'),(115,'291',69,'Plan'),(116,'D8',70,'Date Expressed in Format CCYYMMDD'),(117,'RD8',70,'Range of Dates express in Format CCYYMMDD- CCYYMMDD'),(118,'1',72,'Active Coverage'),(119,'6',72,'Inactive'),(120,'V',72,'Cannot Process'),(121,'30',73,'Health Plan Benefit Coverage'),(122,'47',74,'Medicare Secondary, Other Liability Insurance is Primary'),(123,'CP',74,'Medicare Conditionally Primary'),(124,'MC',74,'Medicaid'),(125,'MP',74,'Medicare Primary'),(126,'OT',74,'Other (Used for Medicare Part D)'),(127,'18',77,'Plan ID'),(128,'6P',77,'Group Number'),(129,'ALS',77,'Alternate List ID'),(130,'CLI',77,'Coverage List ID'),(131,'FO',77,'Drug Formulary Number ID'),(132,'IG',77,'Insurance Policy Number (*Copay ID)-'),(133,'N6',77,'Plan Network ID (*BIN/PCN)'),(134,'291',80,'Plan'),(135,'D8',81,'Date Expressed in Format CCYYMMDD'),(136,'RD8',81,'Range of Dates express in Format CCYYMMDD- CCYYMMDD'),(137,'N',83,'No'),(138,'Y',83,'Yes'),(139,'15',84,'Required application data missing'),(140,'33',84,'Input Errors'),(141,'52',84,'Service Dates Not Within Provider Plan Enrollment'),(142,'53',84,'Inquired Benefit Inconsistent with Provider Type'),(143,'54',84,'Inappropriate Product/Service ID Qualifier'),(144,'55',84,'Inappropriate Product/Service ID'),(145,'56',84,'Inappropriate Date'),(146,'57',84,'Invalid/Missing Date(s) of Service'),(147,'60',84,'Date of Birth Follows Date(s) of Service'),(148,'61',84,'Date of Death Precedes Date(s) of Service'),(149,'62',84,'Date of Service Not Within Allowable Inquiry Period'),(150,'63',84,'Date of Service in Future'),(151,'69',84,'Inconsistent with Patient\'s Age'),(152,'70',84,'Inconsistent with Patient\'s Gender'),(153,'C',85,'Please Correct and Resubmit'),(154,'N',85,'Resubmission Not Allowed'),(155,'R',85,'Resubmission Allowed'),(156,'W',85,'Please Wait 30 Days and Resubmit'),(157,'X',85,'Please Wait 10 Days and Resubmit'),(158,'Y',85,'Do Not Resubmit; We Will Hold Your Request and\r\nRespond Again Shortly'),(159,'PRP',88,'Primary Payer'),(160,'SEP',88,'Secondary Payer'),(161,'TTP',88,'Tertiary Payer'),(162,'1',89,'Person'),(163,'2',89,'Non-Person Entity'),(164,'PI',94,'Payer Identification'),(165,'1',97,'Active Coverage'),(166,'G',97,'Out of Pocket (Stop Loss)'),(167,'I',97,'Non-Covered'),(168,'88',98,'Pharmacy (*Retail Benefit)'),(169,'90',98,'Mail Order Prescription Drug'),(170,'Empty/Null',98,'Specialty Pharmacy or LTC (See MSG segment)'),(171,'47',99,'Medicare Secondary, Other Liability Insurance is Primary'),(172,'CP',99,'Medicare Conditionally Primary'),(173,'MC',99,'Medicaid'),(174,'MP',99,'Medicare Primary'),(175,'OT',99,'Other (Used for Medicare Part D)'),(176,'291',102,'Plan'),(177,'D8',103,'Date Expressed in Format CCYYMMDD'),(178,'RD8',103,'Range of Dates express in Format CCYYMMDD- CCYYMMDD'),(179,'N',105,'No'),(180,'Y',105,'Yes'),(181,'15',106,'Required application data missing'),(182,'33',106,'Input Errors'),(183,'52',106,'Service Dates Not Within Provider Plan Enrollment\r\n'),(184,'53',106,'Inquired Benefit Inconsistent with Provider Type'),(185,'54',106,'Inappropriate Product/Service ID Qualifier'),(186,'55',106,'Inappropriate Product/Service ID'),(187,'56',106,'Inappropriate Date'),(188,'57',106,'Invalid/Missing Date(s) of Service'),(189,'60',106,'Date of Birth Follows Date(s) of Service'),(190,'61',106,'Date of Death Precedes Date(s) of Service'),(191,'62',106,'Date of Service Not Within Allowable Inquiry Period'),(192,'63',106,'Date of Service in Future'),(193,'69',106,'Inconsistent with Patient\'s Age'),(194,'70',106,'Inconsistent with Patient\'s Gender'),(195,'C',107,'Please Correct and Resubmit'),(196,'N',107,'Resubmission Not Allowed'),(197,'R',107,'Resubmission Allowed'),(198,'W',107,'Please Wait 30 Days and Resubmit'),(199,'X',107,'Please Wait 10 Days and Resubmit\r\n'),(200,'Y',107,'Do Not Resubmit; We Will Hold Your Request and\r\nRespond Again Shortly'),(201,'13',110,'Contracted Service Provider'),(202,'PRP',110,'Primary Payer'),(203,'SEP',110,'Secondary Payer'),(204,'TTP',110,'Tertiary Payer'),(205,'1',111,'Person'),(206,'2',111,'Non-Person Entity'),(207,'SV',116,'Service Provider Number (Recommended by Surescripts)'),(208,'PI',116,'Payer Identification');
/*!40000 ALTER TABLE `271MasterSegmentDetailDataElementSummaryAdditionalCode` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed