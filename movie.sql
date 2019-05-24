-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: movie
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `administrator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `img` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (2,'peng','232','444'),(3,'xu','233','滑稽'),(5,'zou','qqq','1111111');
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookingrecord`
--

DROP TABLE IF EXISTS `bookingrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bookingrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `showId` int(11) NOT NULL,
  `createtime` timestamp(6) NOT NULL,
  `paytime` timestamp(6) NULL DEFAULT NULL,
  `collectstring` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `rowNum` int(11) DEFAULT NULL,
  `col` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookingrecord`
--

LOCK TABLES `bookingrecord` WRITE;
/*!40000 ALTER TABLE `bookingrecord` DISABLE KEYS */;
INSERT INTO `bookingrecord` VALUES (1,1000,4,'2019-03-01 09:02:05.000000',NULL,'1212121',NULL,NULL,NULL),(2,1000,3,'2019-04-15 12:37:56.000000',NULL,'2121212',NULL,NULL,NULL),(3,1000,3,'2019-04-15 14:01:40.000000',NULL,'1111111',NULL,NULL,NULL),(9,1001,5,'2019-05-24 12:10:42.662000','2019-05-24 12:14:35.552000',NULL,-1,3,3);
/*!40000 ALTER TABLE `bookingrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cinema`
--

DROP TABLE IF EXISTS `cinema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cinema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `img` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cinema`
--

LOCK TABLES `cinema` WRITE;
/*!40000 ALTER TABLE `cinema` DISABLE KEYS */;
INSERT INTO `cinema` VALUES (200,'轩影国际影城','333','454','上海','宝山区聚丰园路165号沃尔玛三楼'),(201,'大地影院上海弘基广场宝山店','123','222','上海','宝山区聚丰园路57弄弘基文化广场1号楼商场3楼'),(202,'DFC影城','123','333','上海','宝山区共和新路5288号1楼'),(204,'斐王影城','334','1111111','上海','场北路700号');
/*!40000 ALTER TABLE `cinema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `img` varchar(45) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `phonenum` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1000,'peng','121','211','未知','15800000000','赣州'),(1001,'xu','222','234','男','18800000000','上海'),(1002,'shen','333','235','女','18700000000','上海'),(1003,'wang','444','236','女','13700000000','南昌'),(1005,'han','666','rainbow','男','13133331111','上海');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `img` varchar(45) DEFAULT NULL,
  `star` float DEFAULT NULL,
  `directors` varchar(45) DEFAULT NULL,
  `casts` varchar(45) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `countries` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `summary` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (1,'testAVG','233',2.5,'我',NULL,NULL,NULL,'科幻',NULL),(2,'testType','234',NULL,NULL,'我',NULL,NULL,'玄幻',NULL),(3,'testType2','235',NULL,NULL,NULL,2001,NULL,'动作',NULL),(4,'testTy','236',NULL,NULL,NULL,NULL,'中国','科幻',NULL),(5,'testTy2','237',NULL,NULL,NULL,NULL,'中国, 美国','爱情',NULL),(6,'testTy3','238',NULL,'我, 你',NULL,NULL,NULL,'动作',NULL);
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filmcomment`
--

DROP TABLE IF EXISTS `filmcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `filmcomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `filmId` int(11) NOT NULL,
  `filmstar` int(11) NOT NULL,
  `comment` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmcomment`
--

LOCK TABLES `filmcomment` WRITE;
/*!40000 ALTER TABLE `filmcomment` DISABLE KEYS */;
INSERT INTO `filmcomment` VALUES (1,1000,1,1,'我觉得8行'),(2,1002,1,2,'我觉得还行'),(3,1000,1,3,'鼓励一下'),(4,1001,1,4,'好看'),(5,1000,1,5,'刘涛！');
/*!40000 ALTER TABLE `filmcomment` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `filmcomment_AFTER_INSERT` AFTER INSERT ON `filmcomment` FOR EACH ROW BEGIN
update film set star=(select avg(filmstar) from filmcomment where filmId=new.filmId) where id=new.filmId;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `filmoffice`
--

DROP TABLE IF EXISTS `filmoffice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `filmoffice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cinemaId` int(11) NOT NULL,
  `officeId` int(11) NOT NULL,
  `rowNum` int(11) DEFAULT NULL,
  `col` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`cinemaId`,`officeId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmoffice`
--

LOCK TABLES `filmoffice` WRITE;
/*!40000 ALTER TABLE `filmoffice` DISABLE KEYS */;
INSERT INTO `filmoffice` VALUES (1,200,1,10,7),(2,200,2,12,10),(3,201,1,5,8),(4,201,2,6,9);
/*!40000 ALTER TABLE `filmoffice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filmshow`
--

DROP TABLE IF EXISTS `filmshow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `filmshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filmId` int(11) DEFAULT NULL,
  `cinemaId` int(11) DEFAULT NULL,
  `officeId` int(11) DEFAULT NULL,
  `beginTime` timestamp NOT NULL,
  `duration` varchar(45) DEFAULT NULL,
  `seat` varchar(2000) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmshow`
--

LOCK TABLES `filmshow` WRITE;
/*!40000 ALTER TABLE `filmshow` DISABLE KEYS */;
INSERT INTO `filmshow` VALUES (1,1,200,1,'2019-05-24 09:00:00','2',NULL,NULL),(2,1,200,1,'2019-05-24 11:30:00','2',NULL,NULL),(3,1,200,2,'2019-04-17 09:00:00','2',NULL,NULL),(4,1,200,2,'2019-05-31 04:00:00','2',NULL,0),(5,2,200,2,'2019-05-31 20:00:00','3','000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',54);
/*!40000 ALTER TABLE `filmshow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'movie'
--

--
-- Dumping routines for database 'movie'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-25  5:32:53
