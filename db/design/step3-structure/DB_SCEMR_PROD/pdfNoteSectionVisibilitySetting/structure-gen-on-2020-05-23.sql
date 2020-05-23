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
-- Table structure for table `pdfNoteSectionVisibilitySetting`
--

DROP TABLE IF EXISTS `pdfNoteSectionVisibilitySetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pdfNoteSectionVisibilitySetting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `providerId` int(10) NOT NULL,
  `socialHistory` tinyint(1) NOT NULL DEFAULT 1,
  `majorLifeEvents` tinyint(1) NOT NULL DEFAULT 1,
  `selfHarmDetails` tinyint(1) NOT NULL DEFAULT 1,
  `substanceUseDetails` tinyint(1) NOT NULL DEFAULT 1,
  `hospitalisationHistory` tinyint(1) NOT NULL DEFAULT 1,
  `diagnosisHistory` tinyint(1) NOT NULL DEFAULT 1,
  `ruleOutDiagnosisHistory` tinyint(1) NOT NULL DEFAULT 1,
  `pastPRSDetails` tinyint(1) NOT NULL DEFAULT 1,
  `pastMSEDetails` tinyint(1) NOT NULL DEFAULT 1,
  `MSEDetails` tinyint(1) NOT NULL DEFAULT 1,
  `allergiesHistory` tinyint(1) NOT NULL DEFAULT 1,
  `bodyMeasurementDetails` tinyint(1) NOT NULL DEFAULT 1,
  `currentMedicineDetails` tinyint(1) NOT NULL DEFAULT 1,
  `discontinuedMedicineDetails` tinyint(1) NOT NULL DEFAULT 1,
  `currentPRSDetails` tinyint(1) NOT NULL DEFAULT 1,
  `medicationRefillDetails` tinyint(1) NOT NULL DEFAULT 1,
  `recommendationDetails` tinyint(1) NOT NULL DEFAULT 1,
  `reminderDetails` tinyint(1) NOT NULL DEFAULT 1,
  `serviceStatementDetails` tinyint(1) NOT NULL DEFAULT 1,
  `planCommentDetails` tinyint(1) NOT NULL DEFAULT 1,
  `medicalHistory` tinyint(1) NOT NULL DEFAULT 1,
  `outpatientTreatment` tinyint(1) NOT NULL DEFAULT 1,
  `medsTrials` tinyint(1) NOT NULL DEFAULT 1,
  `historyOfViolence` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `providerId` (`providerId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
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
