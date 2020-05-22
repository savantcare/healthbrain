use DB_SCEMR_PROD
-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: DB_SCEMR_PROD
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
-- Table structure for table `eventRemindersMasterSettings`
--

DROP TABLE IF EXISTS `eventRemindersMasterSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventRemindersMasterSettings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `isSendingScriptEnabled` enum('Yes','No') NOT NULL DEFAULT 'No',
  `emailSubjectTemplate` text NOT NULL,
  `emailBodyTemplate` text NOT NULL,
  `smsBodyTemplate` text NOT NULL,
  `isItLatest` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: old, 1: latest',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `isItLatest` (`isItLatest`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventRemindersMasterSettings`
--

LOCK TABLES `eventRemindersMasterSettings` WRITE;
/*!40000 ALTER TABLE `eventRemindersMasterSettings` DISABLE KEYS */;
INSERT INTO `eventRemindersMasterSettings` VALUES (1,'Yes','Appointment Reminder','Hi!\r\nThis is a system generated %eType% reminder for %salutation% %fullNameOfUser%.\r\nThe %eType% is scheduled on %eStartTime%.','Hi!\r\nThis is a system generated %eType% reminder for %salutation% %fullNameOfUser%.\r\nThe %eType% is scheduled on %eStartTime%.',0,'2015-11-19 09:38:35','2015-11-30 11:21:50'),(2,'No','Appointment Reminder','Dear %salutation% %fullNameOfUser%.,\n        \nYour appointment with Dr. %doctorName% is confirmed for %eStartTime%.\n\nAddress: 4966 El Camino Real, Suite 224\n\nLos Altos, CA - 94022\n\nSavant Care\'s Cancellation Policy: You will be financially responsible for the full session fee if you miss your appointment or fail to cancel your appointment within at least 3 business days of the appointment.  If an appointment must be missed for whatever reason, you have the option of rescheduling your appointment within the same week of the missed appointment depending on the doctor\'s availability; in this scenario, you will not be charged for a missed appointment.\n\nThis email serves as an appointment reminder only, and you do not need to respond.\n\nRegards \n\n%doctorAdminName%\nAdministrative Assistant\nSavant Care\n4966 El Camino Real Suite 224\nLos Altos, CA 94022\nPhone: (650) 690-2362\nFax: (650) 590-4938\n\nEmail Confidentiality Notice: The information contained in this transmission is privileged and confidential and/or protected health information (PHI) and may be subject to protection under the law, including the Health Insurance Portability and Accountability Act of 1996, as amended (HIPAA). This transmission is intended for the sole use of the individual or entity to whom it is addressed. If you are not the intended recipient, you are notified that any use, dissemination, distribution, printing or copying of this transmission is strictly prohibited and may subject you to criminal or civil penalties. If you have received this transmission in error, please contact the sender immediately by replying to this email and deleting this email and any attachments from any computer.','Hi!\r\nThis is a system generated %eType% reminder for %salutation% %fullNameOfUser%.\r\nThe %eType% is scheduled on %eStartTime%.',0,'2015-11-30 11:21:50','2015-11-30 11:23:37'),(3,'Yes','Appointment Reminder','Dear %salutation% %fullNameOfUser%.,\n        \nYour appointment with Dr. %doctorName% is confirmed for %eStartTime%.\n\nAddress: 4966 El Camino Real, Suite 224\n\nLos Altos, CA - 94022\n\nSavant Care\'s Cancellation Policy: You will be financially responsible for the full session fee if you miss your appointment or fail to cancel your appointment within at least 3 business days of the appointment.  If an appointment must be missed for whatever reason, you have the option of rescheduling your appointment within the same week of the missed appointment depending on the doctor\'s availability; in this scenario, you will not be charged for a missed appointment.\n\nThis email serves as an appointment reminder only, and you do not need to respond.\n\nRegards \n\n%doctorAdminName%\nAdministrative Assistant\nSavant Care\n4966 El Camino Real Suite 224\nLos Altos, CA 94022\nPhone: (650) 690-2362\nFax: (650) 590-4938\n\nEmail Confidentiality Notice: The information contained in this transmission is privileged and confidential and/or protected health information (PHI) and may be subject to protection under the law, including the Health Insurance Portability and Accountability Act of 1996, as amended (HIPAA). This transmission is intended for the sole use of the individual or entity to whom it is addressed. If you are not the intended recipient, you are notified that any use, dissemination, distribution, printing or copying of this transmission is strictly prohibited and may subject you to criminal or civil penalties. If you have received this transmission in error, please contact the sender immediately by replying to this email and deleting this email and any attachments from any computer.','Hi!\r\nThis is a system generated %eType% reminder for %salutation% %fullNameOfUser%.\r\nThe %eType% is scheduled on %eStartTime%.',0,'2015-11-30 11:23:37','2015-11-30 11:29:21'),(4,'No','Appointment Reminder','Dear %salutation% %fullNameOfUser%.,\n        \nYour appointment with Dr. %doctorName% is confirmed for %eStartTime%.\n\nAddress: 4966 El Camino Real, Suite 224\n\nLos Altos, CA - 94022\n\nSavant Care\'s Cancellation Policy: You will be financially responsible for the full session fee if you miss your appointment or fail to cancel your appointment within at least 3 business days of the appointment.  If an appointment must be missed for whatever reason, you have the option of rescheduling your appointment within the same week of the missed appointment depending on the doctor\'s availability; in this scenario, you will not be charged for a missed appointment.\n\nThis email serves as an appointment reminder only, and you do not need to respond.\n\nRegards \n\n%doctorAdminName%\nAdministrative Assistant\nSavant Care\n4966 El Camino Real Suite 224\nLos Altos, CA 94022\nPhone: (650) 690-2362\nFax: (650) 590-4938\n\nEmail Confidentiality Notice: The information contained in this transmission is privileged and confidential and/or protected health information (PHI) and may be subject to protection under the law, including the Health Insurance Portability and Accountability Act of 1996, as amended (HIPAA). This transmission is intended for the sole use of the individual or entity to whom it is addressed. If you are not the intended recipient, you are notified that any use, dissemination, distribution, printing or copying of this transmission is strictly prohibited and may subject you to criminal or civil penalties. If you have received this transmission in error, please contact the sender immediately by replying to this email and deleting this email and any attachments from any computer.','Hi!\r\nThis is a system generated %eType% reminder for %salutation% %fullNameOfUser%.\r\nThe %eType% is scheduled on %eStartTime%.',0,'2015-11-30 11:29:21','2015-12-01 09:43:44'),(5,'No','Appointment Reminder','Dear %salutation% %fullNameOfUser%,\n        \nYour appointment with Dr. %doctorName% is confirmed for %eStartTime%.\n\nAddress: 4966 El Camino Real, Suite 224\n\nLos Altos, CA - 94022\n\nSavant Care\'s Cancellation Policy: You will be financially responsible for the full session fee if you miss your appointment or fail to cancel your appointment within at least 3 business days of the appointment.  If an appointment must be missed for whatever reason, you have the option of rescheduling your appointment within the same week of the missed appointment depending on the doctor\'s availability; in this scenario, you will not be charged for a missed appointment.\n\nThis email serves as an appointment reminder only, and you do not need to respond.\n\nRegards \n\n%doctorAdminName%\nAdministrative Assistant\nSavant Care\n4966 El Camino Real Suite 224\nLos Altos, CA 94022\nPhone: (650) 690-2362\nFax: (650) 590-4938\n\nEmail Confidentiality Notice: The information contained in this transmission is privileged and confidential and/or protected health information (PHI) and may be subject to protection under the law, including the Health Insurance Portability and Accountability Act of 1996, as amended (HIPAA). This transmission is intended for the sole use of the individual or entity to whom it is addressed. If you are not the intended recipient, you are notified that any use, dissemination, distribution, printing or copying of this transmission is strictly prohibited and may subject you to criminal or civil penalties. If you have received this transmission in error, please contact the sender immediately by replying to this email and deleting this email and any attachments from any computer.','Hi!\r\nThis is a system generated %eType% reminder for %salutation% %fullNameOfUser%.\r\nThe %eType% is scheduled on %eStartTime%.',0,'2015-12-01 09:43:44','2015-12-01 11:17:22'),(6,'No','Appointment Reminder.','Dear %salutation% %fullNameOfUser%,\n        \nYour appointment with Dr. %doctorName% is confirmed for %eStartTime%.\n\nAddress: 4966 El Camino Real, Suite 224\n\nLos Altos, CA - 94022\n\nSavant Care\'s Cancellation Policy: You will be financially responsible for the full session fee if you miss your appointment or fail to cancel your appointment within at least 3 business days of the appointment.  If an appointment must be missed for whatever reason, you have the option of rescheduling your appointment within the same week of the missed appointment depending on the doctor\'s availability; in this scenario, you will not be charged for a missed appointment.\n\nThis email serves as an appointment reminder only, and you do not need to respond.\n\nRegards \n\n%doctorAdminName%\nAdministrative Assistant\nSavant Care\n4966 El Camino Real Suite 224\nLos Altos, CA 94022\nPhone: (650) 690-2362\nFax: (650) 590-4938\n\nEmail Confidentiality Notice: The information contained in this transmission is privileged and confidential and/or protected health information (PHI) and may be subject to protection under the law, including the Health Insurance Portability and Accountability Act of 1996, as amended (HIPAA). This transmission is intended for the sole use of the individual or entity to whom it is addressed. If you are not the intended recipient, you are notified that any use, dissemination, distribution, printing or copying of this transmission is strictly prohibited and may subject you to criminal or civil penalties. If you have received this transmission in error, please contact the sender immediately by replying to this email and deleting this email and any attachments from any computer.','Hi!\r\nThis is a system generated %eType% reminder for %salutation% %fullNameOfUser%.\r\nThe %eType% is scheduled on %eStartTime%.',0,'2015-12-01 11:17:22','2015-12-09 02:27:13'),(7,'No','Appointment Reminder.','Dear %fullNameOfUser%,\n        \nYour appointment with Dr. %doctorName% is confirmed for %eStartTime%.\n\nAddress: 4966 El Camino Real, Suite 224\n\nLos Altos, CA - 94022\n\nSavant Care\'s Cancellation Policy: You will be financially responsible for the full session fee if you miss your appointment or fail to cancel your appointment within at least 3 business days of the appointment.  If an appointment must be missed for whatever reason, you have the option of rescheduling your appointment within the same week of the missed appointment depending on the doctor\'s availability; in this scenario, you will not be charged for a missed appointment.\n\nThis email serves as an appointment reminder only, and you do not need to respond.\n\nRegards \n\n%doctorAdminName%\nAdministrative Assistant\nSavant Care\n4966 El Camino Real Suite 224\nLos Altos, CA 94022\nPhone: (650) 690-2362\nFax: (650) 590-4938\n\nEmail Confidentiality Notice: The information contained in this transmission is privileged and confidential and/or protected health information (PHI) and may be subject to protection under the law, including the Health Insurance Portability and Accountability Act of 1996, as amended (HIPAA). This transmission is intended for the sole use of the individual or entity to whom it is addressed. If you are not the intended recipient, you are notified that any use, dissemination, distribution, printing or copying of this transmission is strictly prohibited and may subject you to criminal or civil penalties. If you have received this transmission in error, please contact the sender immediately by replying to this email and deleting this email and any attachments from any computer.','Hi!\r\nThis is a system generated %eType% reminder for %salutation% %fullNameOfUser%.\r\nThe %eType% is scheduled on %eStartTime%.',0,'2015-12-09 02:27:13','2015-12-09 11:53:02'),(8,'No','Appointment reminder.','Dear %fullNameOfUser%,\n        \nYour appointment with Dr. %doctorName% is confirmed for %eStartTime%.\n\nAddress: 4966 El Camino Real, Suite 224\n\nLos Altos, CA - 94022\n\nSavant Care\'s Cancellation Policy: You will be financially responsible for the full session fee if you miss your appointment or fail to cancel your appointment within at least 3 business days of the appointment.  If an appointment must be missed for whatever reason, you have the option of rescheduling your appointment within the same week of the missed appointment depending on the doctor\'s availability; in this scenario, you will not be charged for a missed appointment.\n\nThis email serves as an appointment reminder only, and you do not need to respond.\n\nRegards \n\n%doctorAdminName%\nAdministrative Assistant\nSavant Care\n4966 El Camino Real Suite 224\nLos Altos, CA 94022\nPhone: (650) 690-2362\nFax: (650) 590-4938\n\nEmail Confidentiality Notice: The information contained in this transmission is privileged and confidential and/or protected health information (PHI) and may be subject to protection under the law, including the Health Insurance Portability and Accountability Act of 1996, as amended (HIPAA). This transmission is intended for the sole use of the individual or entity to whom it is addressed. If you are not the intended recipient, you are notified that any use, dissemination, distribution, printing or copying of this transmission is strictly prohibited and may subject you to criminal or civil penalties. If you have received this transmission in error, please contact the sender immediately by replying to this email and deleting this email and any attachments from any computer.','Hi!\r\nThis is a system generated %eType% reminder for %salutation% %fullNameOfUser%.\r\nThe %eType% is scheduled on %eStartTime%.',0,'2015-12-09 11:53:02','2016-03-07 19:58:40'),(9,'No','Appointment reminder.','Dear %fullNameOfUser%,\n        \nYour appointment with Dr. %doctorName% is confirmed for %eStartTime%.\n\nAddress: 4966 El Camino Real, Suite 224\n\nLos Altos, CA - 94022\n\nSavant Care\'s Cancellation Policy: You will be financially responsible for the full session fee if you miss your appointment or fail to cancel your appointment within at least 3 business days of the appointment.  If an appointment must be missed for whatever reason, you have the option of rescheduling your appointment within the same week of the missed appointment depending on the doctor\'s availability; in this scenario, you will not be charged for a missed appointment.\n\nIf you are unable to go up the stairs make sure your appointment is on a Monday or a Wednesday, and in that case you can be see in suite #119.\n\nThis email serves as an appointment reminder only, and you do not need to respond.\n\nRegards \n\n%doctorAdminName%\nAdministrative Assistant\nSavant Care\n4966 El Camino Real Suite 224\nLos Altos, CA 94022\nPhone: (650) 690-2362\nFax: (650) 590-4938\n\nEmail Confidentiality Notice: The information contained in this transmission is privileged and confidential and/or protected health information (PHI) and may be subject to protection under the law, including the Health Insurance Portability and Accountability Act of 1996, as amended (HIPAA). This transmission is intended for the sole use of the individual or entity to whom it is addressed. If you are not the intended recipient, you are notified that any use, dissemination, distribution, printing or copying of this transmission is strictly prohibited and may subject you to criminal or civil penalties. If you have received this transmission in error, please contact the sender immediately by replying to this email and deleting this email and any attachments from any computer.','Hi!\r\nThis is a system generated %eType% reminder for %salutation% %fullNameOfUser%.\r\nThe %eType% is scheduled on %eStartTime%.',0,'2016-03-07 19:58:40','2016-05-25 06:35:41'),(10,'No','Appointment reminder','Dear %fullNameOfUser%,\n        \nYour appointment with Dr. %doctorName% is confirmed for %eStartTime%.\n\nAddress: 4966 El Camino Real, Suite 224\n\nLos Altos, CA - 94022\n\nSavant Care\'s Cancellation Policy: You will be financially responsible for the full session fee if you miss your appointment or fail to cancel your appointment within at least 3 business days of the appointment.  If an appointment must be missed for whatever reason, you have the option of rescheduling your appointment within the same week of the missed appointment depending on the doctor\'s availability; in this scenario, you will not be charged for a missed appointment.\n\nIf you are unable to go up the stairs make sure your appointment is on a Monday or a Wednesday, and in that case you can be see in suite #119.\n\nThis email serves as an appointment reminder only, and you do not need to respond.\n\nRegards \n\n%doctorAdminName%\nAdministrative Assistant\nSavant Care\n4966 El Camino Real Suite 224\nLos Altos, CA 94022\nPhone: (650) 690-2362\nFax: (650) 590-4938\n\nEmail Confidentiality Notice: The information contained in this transmission is privileged and confidential and/or protected health information (PHI) and may be subject to protection under the law, including the Health Insurance Portability and Accountability Act of 1996, as amended (HIPAA). This transmission is intended for the sole use of the individual or entity to whom it is addressed. If you are not the intended recipient, you are notified that any use, dissemination, distribution, printing or copying of this transmission is strictly prohibited and may subject you to criminal or civil penalties. If you have received this transmission in error, please contact the sender immediately by replying to this email and deleting this email and any attachments from any computer.','Hi!\r\nThis is a system generated %eType% reminder for %salutation% %fullNameOfUser%.\r\nThe %eType% is scheduled on %eStartTime%.',0,'2016-05-25 06:35:41','2016-05-25 06:40:01'),(11,'No','Appointment reminder','Dear %fullNameOfUser%,\n        \nYour appointment with Dr. %doctorName% is confirmed for %eStartTime%.\n\nAddress: 4966 El Camino Real, Suite 224\n\nLos Altos, CA - 94022\n\nSavant Care\'s Cancellation Policy: You will be financially responsible for the full session fee if you miss your appointment or fail to cancel your appointment within at least 3 business days of the appointment.  If an appointment must be missed for whatever reason, you have the option of rescheduling your appointment within the same week of the missed appointment depending on the doctor\'s availability; in this scenario, you will not be charged for a missed appointment.\n\nIf you are unable to go up the stairs make sure your appointment is on a Monday or a Wednesday, and in that case you can be seen in suite #119.\n\nThis email serves as an appointment reminder only, and you do not need to respond.\n\nRegards \n\n%doctorAdminName%\nAdministrative Assistant\nSavant Care\n4966 El Camino Real Suite 224\nLos Altos, CA 94022\nPhone: (650) 690-2362\nFax: (650) 590-4938\n\nEmail Confidentiality Notice: The information contained in this transmission is privileged and confidential and/or protected health information (PHI) and may be subject to protection under the law, including the Health Insurance Portability and Accountability Act of 1996, as amended (HIPAA). This transmission is intended for the sole use of the individual or entity to whom it is addressed. If you are not the intended recipient, you are notified that any use, dissemination, distribution, printing or copying of this transmission is strictly prohibited and may subject you to criminal or civil penalties. If you have received this transmission in error, please contact the sender immediately by replying to this email and deleting this email and any attachments from any computer.','Hi!\r\nThis is a system generated %eType% reminder for %salutation% %fullNameOfUser%.\r\nThe %eType% is scheduled on %eStartTime%.',0,'2016-05-25 06:40:01','2016-08-12 13:34:51'),(12,'No','Appointment reminder','Dear %fullNameOfUser%,\n        \nYour appointment with Dr. %doctorName% is confirmed for %eStartTime%.\n\nAddress: %addressLine1%, %addressLine2%\n\n%city%, %state% - %zip%\n\nSavant Care\'s Cancellation Policy: You will be financially responsible for the full session fee if you miss your appointment or fail to cancel your appointment within at least 3 business days of the appointment.  If an appointment must be missed for whatever reason, you have the option of rescheduling your appointment within the same week of the missed appointment depending on the doctor\'s availability; in this scenario, you will not be charged for a missed appointment.\n\nIf you are unable to go up the stairs make sure your appointment is on a Monday or a Wednesday, and in that case you can be seen in suite #119.\n\nThis email serves as an appointment reminder only, and you do not need to respond.\n\nRegards \n\n%doctorAdminName%\nAdministrative Assistant\nSavant Care\nPhone: (650) 690-2362\nFax: (650) 590-4938\n\nEmail Confidentiality Notice: The information contained in this transmission is privileged and confidential and/or protected health information (PHI) and may be subject to protection under the law, including the Health Insurance Portability and Accountability Act of 1996, as amended (HIPAA). This transmission is intended for the sole use of the individual or entity to whom it is addressed. If you are not the intended recipient, you are notified that any use, dissemination, distribution, printing or copying of this transmission is strictly prohibited and may subject you to criminal or civil penalties. If you have received this transmission in error, please contact the sender immediately by replying to this email and deleting this email and any attachments from any computer.','Hi!\r\nThis is a system generated %eType% reminder for %salutation% %fullNameOfUser%.\r\nThe %eType% is scheduled on %eStartTime%.',0,'2016-08-12 13:34:51','2016-10-26 08:40:33'),(13,'No','Appointment reminder','Dear %fullNameOfUser%,\n        \nYour appointment with %doctorName% is confirmed for %eStartTime%.\n\nAddress: %addressLine1%, %addressLine2%\n\n%city%, %state% - %zip%\n\nSavant Care\'s Cancellation Policy: You will be financially responsible for the full session fee if you miss your appointment or fail to cancel your appointment within at least 3 business days of the appointment.  If an appointment must be missed for whatever reason, you have the option of rescheduling your appointment within the same week of the missed appointment depending on the doctor\'s availability; in this scenario, you will not be charged for a missed appointment.\n\nIf you are unable to go up the stairs make sure your appointment is on a Monday or a Wednesday, and in that case you can be seen in suite #119.\n\nThis email serves as an appointment reminder only, and you do not need to respond.\n\nRegards \n\n%doctorAdminName%\nAdministrative Assistant\nSavant Care\nPhone: (650) 690-2362\nFax: (650) 590-4938\n\nEmail Confidentiality Notice: The information contained in this transmission is privileged and confidential and/or protected health information (PHI) and may be subject to protection under the law, including the Health Insurance Portability and Accountability Act of 1996, as amended (HIPAA). This transmission is intended for the sole use of the individual or entity to whom it is addressed. If you are not the intended recipient, you are notified that any use, dissemination, distribution, printing or copying of this transmission is strictly prohibited and may subject you to criminal or civil penalties. If you have received this transmission in error, please contact the sender immediately by replying to this email and deleting this email and any attachments from any computer.','Hi!\r\nThis is a system generated %eType% reminder for %salutation% %fullNameOfUser%.\r\nThe %eType% is scheduled on %eStartTime%.',1,'2016-10-26 08:40:33','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `eventRemindersMasterSettings` ENABLE KEYS */;
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