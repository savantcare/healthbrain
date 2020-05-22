use DB_SC_Screen
-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: DB_SC_Screen
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
-- Table structure for table `screenAnnonymousReportIdMaster`
--

DROP TABLE IF EXISTS `screenAnnonymousReportIdMaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `screenAnnonymousReportIdMaster` (
  `annonymousScreenReportID` varchar(5) NOT NULL,
  `idOfScreen` tinyint(4) NOT NULL,
  `timeAnswered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `totalScore` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screenAnnonymousReportIdMaster`
--

LOCK TABLES `screenAnnonymousReportIdMaster` WRITE;
/*!40000 ALTER TABLE `screenAnnonymousReportIdMaster` DISABLE KEYS */;
INSERT INTO `screenAnnonymousReportIdMaster` VALUES ('7ejaq',5,'2015-11-06 14:38:35',3),('kegnf',5,'2015-11-06 14:39:47',3),('ikmsn',5,'2015-11-06 14:41:06',1),('rgs4v',5,'2015-11-06 14:42:12',2),('pzqyg',5,'2015-11-06 14:44:18',2),('9wblq',5,'2015-11-06 14:48:44',1),('qtow6',5,'2015-11-06 14:59:58',1),('s2m7k',5,'2015-11-06 15:07:03',19),('pycue',5,'2015-11-06 15:12:30',0),('0ivt4',7,'2015-11-06 15:18:51',1),('zddew',7,'2015-11-06 15:19:39',1),('aqmtl',1,'2015-11-06 15:27:15',3),('ubk3o',5,'2015-11-06 16:04:56',11),('5kquf',5,'2015-11-09 06:50:43',18),('vpsj4',7,'2015-11-09 06:52:15',4),('knllj',7,'2015-11-09 06:53:07',4),('r4uk7',7,'2015-11-09 06:57:46',4),('3byl8',4,'2015-11-09 07:00:28',8),('za7op',7,'2015-11-09 07:05:47',1),('zwkkc',4,'2015-11-09 07:13:13',24),('8az71',7,'2015-11-09 07:17:32',4),('ieqpp',7,'2015-11-09 07:21:36',4),('46k3p',1,'2015-11-09 07:24:24',26),('urtbg',6,'2015-11-09 07:31:03',18),('57g66',5,'2015-11-09 07:51:25',19),('k4n3s',4,'2015-11-09 07:56:34',2),('4gxed',4,'2015-11-09 08:24:23',2),('japyc',4,'2015-11-09 08:24:46',2),('8lgbo',4,'2015-11-09 08:30:17',1),('ritk2',4,'2015-11-09 09:05:13',2),('z9alo',4,'2015-11-09 09:19:27',2),('cevpl',4,'2015-11-09 09:19:42',2),('iwj84',1,'2015-11-11 12:40:30',1),('39kex',1,'2015-11-11 13:14:26',8),('329ev',1,'2015-11-11 13:18:43',0),('nbtlh',1,'2015-11-11 13:31:40',5),('bcshn',1,'2015-11-11 16:25:09',1),('m6f14',1,'2015-11-11 16:27:09',4),('zwvji',1,'2015-11-11 16:28:49',1),('y6ocm',1,'2015-11-11 16:30:13',3),('8ey07',1,'2015-11-11 16:37:52',4),('69nwm',1,'2015-11-11 16:38:53',4),('ckcsp',1,'2015-11-11 16:43:53',3),('stlzq',1,'2015-11-11 16:46:35',0),('sxxih',1,'2015-11-16 06:48:54',12),('kyxrn',1,'2015-11-16 08:02:34',0),('ldosg',1,'2015-11-16 08:07:53',1),('qryxt',1,'2015-11-16 08:11:57',1),('6ymr7',1,'2015-11-16 08:13:55',1),('1d6hs',1,'2015-11-16 08:28:49',4),('gzwmo',1,'2015-11-16 08:31:52',1),('5vkz6',1,'2015-11-16 08:36:21',0),('iwjn0',1,'2015-11-16 08:41:03',1),('x7rc6',1,'2015-11-16 08:42:49',1),('yhkqf',1,'2015-11-16 08:47:10',1),('jqgup',1,'2015-11-16 08:53:14',0),('no7nx',1,'2015-11-16 08:54:47',1),('iqho2',1,'2015-11-16 09:13:37',1),('2htc3',1,'2015-11-16 09:27:09',3),('u5ori',1,'2015-11-16 09:28:01',2),('cwx8j',1,'2015-11-16 09:29:43',1),('x4xyp',1,'2015-11-16 09:32:40',2),('ggeuw',1,'2015-11-16 09:50:37',1),('91l1e',1,'2015-11-16 09:51:53',2),('is3i7',1,'2015-11-16 10:45:30',3),('lph29',1,'2015-11-16 12:07:02',8),('4ztce',1,'2015-11-16 12:56:28',3),('bvxs2',1,'2015-11-16 13:17:27',13),('5ic4g',1,'2015-11-16 13:18:14',9),('m9u3g',1,'2015-11-16 14:26:00',0),('xxeov',1,'2015-11-16 14:39:43',1),('ds98e',1,'2015-11-16 14:40:30',0),('6jmnm',1,'2015-11-16 14:57:21',0),('caxki',1,'2015-11-16 15:11:06',1),('s9kqw',1,'2015-11-16 15:14:38',0),('mhime',1,'2015-11-16 15:15:02',0),('4jkz6',1,'2015-11-16 15:15:16',3),('rgcc0',1,'2015-11-16 15:15:45',0),('bzcyj',1,'2015-11-16 15:16:04',0),('idfsr',1,'2015-11-16 15:17:11',7),('ginml',1,'2015-11-16 15:22:49',3),('66ved',1,'2015-11-16 15:23:11',1),('ea33y',1,'2015-11-16 15:27:54',0),('lcfj8',1,'2015-11-16 15:29:32',1),('aprma',1,'2015-11-16 15:29:43',2),('6mq0z',1,'2015-11-16 15:37:02',0),('sfhlv',1,'2015-11-16 15:38:42',2),('3h566',1,'2015-11-16 15:38:57',1),('bkmid',1,'2015-11-16 15:40:40',1),('z5y2w',1,'2015-11-16 15:42:10',0),('gc6au',1,'2015-11-16 15:45:07',0),('phzl2',1,'2015-11-16 15:45:14',1),('1f05w',1,'2015-11-16 15:47:46',4),('o6wpr',1,'2015-11-16 15:48:03',4),('llu10',1,'2015-11-16 15:51:38',0),('ib78b',1,'2015-11-16 15:53:29',1),('x0hex',1,'2015-11-16 15:55:24',1),('v74hy',1,'2015-11-16 16:00:25',2),('t98aj',1,'2015-11-16 16:03:27',7),('iotcn',1,'2015-11-16 16:03:35',7),('3jupk',1,'2015-11-16 16:12:18',4),('7ptww',1,'2015-11-16 16:16:17',0),('07n19',1,'2015-11-16 16:16:38',0),('4vrkg',1,'2015-11-16 16:19:09',0),('lymlg',1,'2015-11-16 16:22:12',3),('5voq3',1,'2015-11-16 16:24:04',6),('5yelu',1,'2015-11-16 16:36:14',0),('fcq43',1,'2015-11-17 06:57:53',10),('gcjt6',1,'2015-11-17 07:52:02',1),('l5k9c',1,'2015-11-17 07:52:32',1),('e8wf4',1,'2015-11-17 08:05:07',1),('pz2bk',1,'2015-11-17 08:05:23',2),('dp57y',1,'2015-11-17 08:05:48',4),('w6w08',1,'2015-11-17 08:15:00',2),('tbyj7',1,'2015-11-17 09:35:24',1),('8nbtz',1,'2015-11-17 09:38:53',0),('tj448',1,'2015-11-17 09:41:49',2),('qzp0c',1,'2015-11-17 09:43:21',0),('8mnbf',1,'2015-11-17 09:45:22',1),('akmyp',1,'2015-11-17 09:56:22',0),('dt3g5',1,'2015-11-17 09:59:37',2),('u34oc',1,'2015-11-17 10:07:27',1),('39ze0',1,'2015-11-17 10:09:02',1),('0vnvj',1,'2015-11-17 10:42:18',1),('ejgps',1,'2015-11-17 10:50:28',1),('6sq8f',1,'2015-11-17 10:58:23',0),('7ye72',1,'2015-11-17 11:04:59',2),('et7so',1,'2015-11-17 11:14:22',2),('rvvlh',1,'2015-11-17 11:14:59',27),('nc1sk',1,'2015-11-17 11:22:50',2),('xxes5',1,'2015-11-17 11:30:41',6),('9u7t0',1,'2015-11-17 11:32:29',2),('0ub5p',1,'2015-11-17 11:35:09',1),('al8c3',1,'2015-11-17 12:41:29',1),('dqbql',1,'2015-11-17 12:51:30',0),('av79r',1,'2015-11-17 12:51:56',2),('hytf2',1,'2015-11-17 12:54:16',1),('csirn',1,'2015-11-17 13:01:04',1),('84fi9',5,'2015-11-17 13:01:51',1),('xs9kh',5,'2015-11-17 13:03:15',0),('t9tj0',5,'2015-11-17 13:08:37',1),('4nt8i',5,'2015-11-17 13:10:50',1),('6f1ha',3,'2015-11-17 13:27:20',0),('sz66m',3,'2015-11-17 13:29:12',1),('cz2p9',3,'2015-11-17 13:30:08',5),('sjm4r',3,'2015-11-17 13:31:07',1),('q702n',3,'2015-11-17 13:32:18',0),('3vihm',3,'2015-11-17 13:33:29',3),('ozmb8',4,'2015-11-17 13:45:03',0),('lwx4h',4,'2015-11-17 13:45:29',6),('i0q9b',4,'2015-11-17 13:46:28',21),('j7ste',4,'2015-11-17 13:46:59',24),('x2t0d',5,'2015-11-17 13:55:46',2),('vdczm',5,'2015-11-17 13:57:07',0),('g2463',6,'2015-11-17 13:57:51',2),('odfzr',7,'2015-11-17 14:08:27',2),('7131l',7,'2015-11-17 14:09:09',2),('jd6ew',2,'2015-11-17 14:20:22',2),('hubfm',2,'2015-11-17 14:22:55',1),('v8ppx',2,'2015-11-17 14:30:07',1),('ysjfm',1,'2015-11-17 14:43:07',0),('uiw7w',1,'2015-11-17 14:52:41',0),('yaxgk',1,'2015-11-17 14:52:51',3),('gfgox',1,'2015-11-17 15:07:51',0),('8sri7',1,'2015-11-17 15:08:26',3),('2nlpq',1,'2015-11-17 15:09:12',1),('m9ktv',1,'2015-11-17 15:11:16',4),('4symc',7,'2015-11-17 15:31:59',0),('j3qcu',2,'2015-11-17 15:32:16',1),('vjmzr',2,'2015-11-17 15:39:00',1),('va9l6',2,'2015-11-17 15:40:42',1),('wcv3r',2,'2015-11-17 16:04:26',1),('qq6dk',2,'2015-11-17 16:13:17',1),('6berj',2,'2015-11-17 16:16:09',1),('cfgqr',1,'2015-11-17 16:31:52',2),('zv14i',1,'2015-11-17 17:06:24',0),('au46x',1,'2015-11-17 17:06:45',6),('t6uwb',1,'2015-11-18 07:15:32',1),('71oup',1,'2015-11-18 09:12:12',0),('5zmj5',1,'2015-11-18 09:50:29',3),('ddojv',1,'2015-11-18 09:52:48',0),('q0jv4',1,'2015-11-18 10:07:53',1),('i3jet',1,'2015-11-18 10:09:19',1),('cgumf',1,'2015-11-18 10:14:00',1),('0s4lk',1,'2015-11-18 11:10:00',1),('jp2ld',1,'2015-11-18 11:50:21',2),('gkzme',1,'2015-11-18 11:51:18',0),('ioyvn',1,'2015-11-18 12:28:36',1),('mf4pq',1,'2015-11-18 13:40:01',0),('cpast',1,'2015-11-18 14:17:33',0),('kirrd',1,'2015-11-19 13:11:11',1),('aea4r',1,'2015-11-19 13:31:11',0),('phv6y',1,'2015-11-19 13:45:46',4),('by4fg',1,'2015-11-19 14:34:16',1),('4jwbj',1,'2015-11-19 14:47:36',1),('thvvy',1,'2015-11-19 15:06:57',2),('v6jto',1,'2015-11-19 15:16:44',0),('xg3z9',1,'2015-11-19 15:27:43',0),('3kfho',1,'2015-11-20 03:55:53',15),('c0myo',1,'2015-11-20 05:23:04',18),('wfrcu',1,'2015-11-20 05:42:34',6),('sf58a',1,'2015-11-20 07:26:21',2),('bnuw5',1,'2015-11-20 08:04:10',0),('d68z8',1,'2015-11-20 08:08:10',1),('k3ozg',1,'2015-11-20 08:09:41',0),('zu545',1,'2015-11-20 08:10:22',0),('6s76v',1,'2015-11-20 08:18:49',1),('r8bvc',1,'2015-11-20 08:29:52',0),('4l0de',1,'2015-11-20 09:25:15',15),('r9pk4',1,'2015-11-20 10:54:24',1),('4jmym',1,'2015-11-20 10:55:56',2),('btti0',1,'2015-11-20 10:57:35',0),('y7m4x',1,'2015-11-20 10:59:55',0),('2dwmf',1,'2015-11-20 13:27:51',1),('k2bpg',1,'2015-11-20 13:56:33',0),('0j836',1,'2015-11-20 14:13:17',0),('o0gi8',1,'2015-11-20 14:25:46',0),('kwo7w',1,'2015-11-20 14:29:26',0),('z9acv',1,'2015-11-20 14:30:19',0),('tpte9',1,'2015-11-20 14:30:55',1),('uzi7q',1,'2015-11-20 14:32:29',0),('wwb03',1,'2015-11-20 14:36:55',4),('n3tcf',1,'2015-11-20 14:40:29',1),('6065o',1,'2015-11-20 14:44:59',1),('lsxrl',1,'2015-11-20 14:56:32',0),('nqke0',1,'2015-11-20 15:02:20',0),('pjy6v',1,'2015-11-20 15:03:03',1),('yi1r8',1,'2015-11-20 15:06:52',0),('wohyj',1,'2015-11-20 15:09:57',0),('3gb9o',1,'2015-11-20 15:11:47',0),('yvlg4',1,'2015-11-20 15:14:15',2),('vxvy0',1,'2015-11-20 15:18:32',0),('avj61',1,'2015-11-20 15:19:02',1),('d1ceg',1,'2015-11-20 15:20:08',1),('zfdur',1,'2015-11-20 15:23:57',3),('m0tvc',1,'2015-11-20 15:24:15',2),('wqeah',1,'2015-11-20 15:25:36',0),('v83hi',1,'2015-11-20 15:32:06',0),('clgun',1,'2015-11-20 15:37:05',0),('ilgpn',1,'2015-11-20 15:48:29',0),('9veyf',1,'2015-11-20 15:52:49',2),('2pmx4',1,'2015-11-20 15:56:35',1),('lo3i6',1,'2015-11-20 16:06:52',0),('9itgz',1,'2015-11-20 16:09:27',2),('s8tjx',1,'2015-11-20 16:10:41',1),('e79ru',1,'2015-11-20 16:20:11',0),('70t9k',1,'2015-11-20 16:22:18',0),('ky90n',1,'2015-11-20 16:23:35',0),('wsmer',1,'2015-11-23 07:21:26',3),('ob3sc',1,'2015-11-23 09:08:22',0),('wkubw',1,'2015-11-23 09:14:01',0),('x7qfc',1,'2015-11-23 09:25:03',0),('e5rtd',1,'2015-11-23 09:25:30',0),('tw0lq',1,'2015-11-23 09:25:54',0),('dc2lc',1,'2015-11-23 09:27:07',0),('cleka',1,'2015-11-23 10:57:14',1),('us3t8',1,'2015-11-23 11:00:54',22),('ui6in',1,'2015-11-23 11:05:57',3),('2uaxg',1,'2015-11-23 11:27:49',3),('vamt7',1,'2015-11-23 11:34:51',3),('w949q',1,'2015-11-23 12:10:14',2),('t0qvg',1,'2015-11-23 12:16:46',1),('7smbc',1,'2015-11-23 12:18:34',2),('hpa7p',1,'2015-11-23 12:48:22',3),('e9mrc',1,'2015-11-25 07:54:43',13),('cb5iy',1,'2015-11-25 12:11:20',3),('r6cnl',1,'2015-11-26 11:48:56',2),('f8rut',1,'2015-11-26 11:50:06',3),('nbk42',1,'2015-11-26 11:50:21',0),('ryyp7',1,'2015-11-26 11:52:23',2),('stmyk',1,'2015-11-26 11:54:05',2),('ls018',1,'2015-11-27 07:27:23',1),('6kb9a',1,'2015-11-27 07:41:32',3),('lk7os',1,'2015-11-27 07:47:33',2),('dj65w',1,'2015-11-27 07:48:56',1),('48fxe',1,'2015-11-27 07:52:09',0),('g5uqw',1,'2015-11-27 10:05:17',3),('4bp6j',1,'2015-11-27 12:28:14',0),('dvdrb',1,'2015-11-27 12:41:01',21),('yelg6',1,'2015-11-27 12:41:31',21),('uw03z',1,'2015-11-27 13:09:14',5),('xzwo7',1,'2015-11-27 13:46:35',0),('rapb3',1,'2015-11-27 13:48:43',1),('oeqy0',1,'2015-11-30 08:46:02',1),('afewp',1,'2015-11-30 09:03:18',5),('ja00m',1,'2015-11-30 09:36:00',2),('0llrm',1,'2015-11-30 09:48:25',2),('rfxco',1,'2015-11-30 10:47:28',3),('6misn',1,'2015-11-30 12:03:40',12),('jp4e3',1,'2015-11-30 12:29:44',0),('ys8w7',1,'2015-11-30 14:39:51',1),('i1i8c',1,'2015-11-30 16:01:56',2),('eaapp',1,'2015-11-30 16:05:07',0),('t0ast',1,'2015-12-02 15:50:43',9),('na108',1,'2015-12-03 03:17:38',9),('x8dpt',1,'2015-12-03 04:20:48',4),('28o8v',1,'2015-12-03 05:56:02',12),('hesol',1,'2015-12-03 07:18:12',13),('y9z0m',1,'2015-12-03 07:37:49',13),('qbik0',1,'2015-12-03 07:43:24',8),('2c1y8',1,'2015-12-03 09:31:31',8),('dkl3m',1,'2015-12-03 10:16:21',23),('5t1n8',1,'2015-12-03 10:52:50',23),('0fe2c',1,'2015-12-03 11:08:28',19),('95f37',1,'2015-12-03 11:47:13',17),('9ewd9',1,'2015-12-03 12:40:33',0),('zbjub',1,'2015-12-03 12:41:27',0),('y7ayp',1,'2015-12-03 12:42:01',0),('f6eab',1,'2015-12-03 13:46:23',0),('3u0ts',1,'2015-12-03 15:10:06',0),('b3p8j',1,'2015-12-03 15:10:46',0),('24vy0',1,'2015-12-04 09:26:04',22),('efd6j',1,'2015-12-04 10:47:57',23),('bhfym',1,'2015-12-04 10:49:04',26),('rli53',1,'2015-12-04 10:50:40',27),('kqcpj',1,'2015-12-04 10:54:47',19),('umz85',1,'2015-12-04 11:51:08',23),('4ue4i',1,'2015-12-04 11:59:05',16);
/*!40000 ALTER TABLE `screenAnnonymousReportIdMaster` ENABLE KEYS */;
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