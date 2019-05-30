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
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (2,'peng','111','444'),(3,'xu','111','滑稽'),(9,'shen','111','666');
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookingrecord`
--

DROP TABLE IF EXISTS `bookingrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bookingrecord` (
  `id` bigint(18) NOT NULL,
  `userId` int(11) NOT NULL,
  `showId` int(11) NOT NULL,
  `createtime` timestamp(6) NOT NULL,
  `paytime` timestamp(6) NULL DEFAULT NULL,
  `collectstring` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `rowNum` int(11) DEFAULT NULL,
  `col` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookingrecord`
--

LOCK TABLES `bookingrecord` WRITE;
/*!40000 ALTER TABLE `bookingrecord` DISABLE KEYS */;
INSERT INTO `bookingrecord` VALUES (1,10000000,4,'2019-03-01 09:02:05.000000',NULL,'1212121',3,NULL,NULL),(2,10000000,3,'2019-04-15 12:37:56.000000',NULL,'2121212',3,NULL,NULL),(3,10000000,3,'2019-04-15 14:01:40.000000',NULL,'1111111',3,NULL,NULL),(4,10000000,1,'2019-05-27 16:00:00.000000',NULL,NULL,3,NULL,NULL),(9,10000001,5,'2019-05-24 12:10:42.662000','2019-05-24 12:14:35.552000',NULL,-1,3,3),(190528104325000000,10000001,5,'2019-05-27 18:43:25.354000',NULL,NULL,-1,2,3),(190530001210000000,10000000,5,'2019-05-29 08:12:10.338000','2019-05-29 08:12:22.322000','c9OovHnVDzJlwwIX',3,5,5),(190530001537000000,10000000,5,'2019-05-29 08:15:37.385000','2019-05-29 08:15:44.006000','twjCc0OdFXVIpKAN',3,1,1),(190530094944000000,10000000,5,'2019-05-29 17:49:44.315000','2019-05-29 17:49:47.760000','fOr4thq3P794JA9R',3,1,4),(190530100946000000,10000000,5,'2019-05-26 18:09:46.209000','2019-05-26 18:09:51.304000','Jfl6E3cm3Dj06BQH',3,5,6),(190530101048000000,10000002,5,'2019-05-25 18:10:48.223000','2019-05-25 18:10:51.972000','lmb1BbYEe917Xxmc',3,3,5),(190530101413000000,10000001,4,'2019-05-24 18:14:13.627000','2019-05-24 18:14:16.359000','A5C1HVZ4MRHVIvj9',3,1,5),(190530102642000000,10000001,5,'2019-05-23 18:26:42.554000','2019-05-23 18:26:45.087000','eRxjeGBsI6RCXDxm',3,10,7);
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
  `img` varchar(255) DEFAULT '13',
  `city` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20000016 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cinema`
--

LOCK TABLES `cinema` WRITE;
/*!40000 ALTER TABLE `cinema` DISABLE KEYS */;
INSERT INTO `cinema` VALUES (20000000,'轩影国际影城','111','13','上海','宝山区聚丰园路165号沃尔玛三楼'),(20000001,'大地影院上海弘基广场宝山店','111','13','上海','宝山区聚丰园路57弄弘基文化广场1号楼商场3楼'),(20000002,'DFC影城','111','13','上海','宝山区共和新路5288号1楼'),(20000004,'斐王影城','111','13','上海','场北路700号'),(20000005,'橙天欢乐影院','111','13','赣州','赣县区梅林大街赣县中学旁'),(20000006,'中影国际影城','111','13','赣州','黄金广场九方商业中心4楼'),(20000015,'test','111','13','111','111');
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
  `img` varchar(255) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `phonenum` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000006 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (10000000,'peng','111','10','男','15800000000','赣州'),(10000001,'xu','111','12','男','18800000022','上海'),(10000002,'shen','111','14','女','18700000000','上海'),(10000003,'wang','111','16','女','13700000000','南昌'),(10000005,'han','111','18','男','13133331111','上海');
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
  `img` varchar(255) DEFAULT NULL,
  `star` float DEFAULT NULL,
  `directors` varchar(100) DEFAULT NULL,
  `casts` varchar(100) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
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
INSERT INTO `film` VALUES (6,'testTy3','238',NULL,'我, 你',NULL,NULL,NULL,'动作',NULL),(26731376,'天上再见','f1',3,'阿尔贝·杜邦泰尔','纳威尔·佩雷兹·毕斯卡亚特, 阿尔贝·杜邦泰尔, 罗兰·拉斐特, 尼尔斯·阿贺斯图普',2017,'法国, 加拿大','喜剧, 战争, 犯罪','演而优则导的法国演技派男星亚伯杜庞蒂自导自演的《天上再见》，改编自犯罪小说大师皮耶勒梅特的同名小说，讲述两名因目睹长官犯罪而惨遭惩处的军人，没想到退役后长官飞黄腾达，自己却一贫如洗，为不让小人得志，他们决定要为自己讨回公道。影片精采刻画第一次世界大战过后法国社会，从血肉横飞的泥泞战场到纸醉金迷的华美派对，但即便面具绚丽华美，也掩盖不住背后的人生伤痛。'),(26835471,'大侦探皮卡丘','f2',4,'罗伯·莱特曼','瑞恩·雷诺兹, 贾斯蒂斯·史密斯, 凯瑟琳·纽顿, 克里斯·吉尔',2019,'美国, 日本','喜剧, 动画, 奇幻','好莱坞真人电影《大侦探皮卡丘》（暂译）讲述了蒂姆·古德曼（贾 斯 提·史密斯饰） 为寻找下落不明的父亲来到莱姆市，意外与父亲的前宝可梦搭档大侦探皮卡丘相遇，并惊讶地发现自己是唯一能听懂皮卡丘说话的人类，他们决定组队踏上揭开真相的刺激冒险之路。探案过程中他们邂逅了各式各样 的宝可梦，并意外发现了一个足以毁灭整个宝可梦宇宙的惊天阴谋。该电影改编自任天堂3DS同名游戏，由罗伯·莱特曼导演，瑞安·雷诺兹为大侦探皮卡丘配音，贾斯提斯·史密斯、凯瑟琳·纽顿等主演。'),(26879542,'捉妖学院','f3',2,'田梓橙','王泽宗, 慈婉彤, 周海媚',2019,'中国大陆','奇幻, 冒险','一次意外，作为魔法界“土系”后裔的小魔豆穿过时空之门，来到了隐藏在密林深处的捉妖学院，见到了校长和学院的老师，并与其他几位作为魔法界五行家族后裔的小伙伴们一起在学院学习。但校园里一系列奇怪的事情接连发生，小魔豆和他的小伙伴们从校长口中得知，在学院的地宫之下镇压着一个绝世大魔头—闪影。闪影一旦冲破封印，捉妖学院乃至整个魔法界都将面临巨大的危机，而只有五大家族后裔合力五行能量才能消灭闪影。在联手抗敌的过程中，他们发现在闪影复活的背后隐藏着更大的秘密……'),(26891256,'阿拉丁','f4',3,'盖·里奇','梅纳·玛索德, 娜奥米·斯科特, 威尔·史密斯, 马尔万·肯扎里',2019,'美国','爱情, 奇幻, 冒险','在充满异域风情的古代阿拉伯王国，善良的穷小子阿拉丁（莫纳·马苏德 饰）和勇敢的茉莉公主（娜奥米·斯科特 饰）浪漫邂逅，在可以满足主人三个愿望的神灯精灵（威尔·史密斯 饰）的帮助下，两人踏上了一次寻找真爱和自我的魔幻冒险。'),(27042544,'邻座的怪同学','f5',4,'月川翔','菅田将晖, 土屋太凤, 古川雄辉, 山田裕贵',2018,'日本','剧情, 喜剧, 爱情','学习成绩优异的水谷雫（土屋太凤 饰）性格冷淡，不愿与周围的人打交道。这一天，她被老师委派去给一位许久不曾来校的男生送作业。那个男生名叫吉田春（菅田将晖 饰），开学第一天就因为打架斗殴而被停课，但是处分解除后也迟迟不见他来学校。见了面才发现，传说中凶神恶煞一般的吉田其实是个十分单纯的大男孩，他会因为别人对他的好而欣喜非常。出于对小雫的信任，吉田终于回到学校。在此期间，夏目朝子（池田エライザ 饰）、山口贤二（山田裕贵 饰）等性格各异的青春男女也相继聚到他们身边。男孩女孩的青春注定不留白……\n本片根据ろびこ的同名漫画改编。©豆瓣'),(27074316,'一条狗的使命2','f6',4,'盖尔·曼库索','丹尼斯·奎德, 凯瑟琳·普雷斯科特, 刘宪华, 玛格·海根柏格',2019,'美国','剧情, 喜剧, 家庭','小狗贝利延续使命，在主人伊森的嘱托下，通过不断的生命轮回， 执着守护伊森的孙女CJ，将伊森对孙女的爱与陪伴，当做最重要的 使命和意义，最终帮助CJ收获幸福，再次回到主人伊森身边。'),(30158971,'企鹅公路','f7',5,'石田祐康','北香那, 苍井优, 钉宫理惠, 潘惠美',2018,'日本','动画, 奇幻, 冒险','讲述了在一个原本百无聊赖的平凡夏天，一群企鹅凭空出现在远离大海的小镇之上。在目睹了牙医大姐姐所投掷的可乐罐变成企鹅之后，有着强烈好奇心的小少年青山同学决心一探究竟，并展开了一场不可思议而令人难忘的夏季冒险。\n本片改编自日本著名作家森见登美彦同名小说作品。'),(30464313,'夜伴歌声','f8',1,'陆诗雷','梅俪儿, 李泽宇, 曹鹤夕, 张亚奇',2019,'中国大陆','惊悚, 恐怖','午夜别墅，传来一个死去女孩的歌声！恐怖时刻，又惊现尖细妖魅的女鬼笑声，突如其来的掏心利爪，画中人眼角渗出的血泪，划向脖颈的手术刀，在走廊空中漂浮的玫瑰花……一连串心惊胆寒的离奇事件接踵而至，难道只是因为死去女孩的男友找了新女友，遭致女鬼缠身？！躲不过的凶险与惊悚，最终汇集在一间神秘的地下室，血光与尖叫中，唱歌的女鬼倏然现身……'),(30467175,'真爱不迟到','f9',2,'马雍','邱昊奇, 崔菁格, 李志希, 何承熹',2019,'中国大陆','剧情, 爱情','杨幻儿（崔菁格饰）、李嘉珍（何承熹饰）和齐郁芳（梁骞饰）是三个多年好友。虽已年过三十，却一直保持单身。面对感情的问题，她们不约而同地表现出被动的态度。纵使她们曾经伤痕累累的情感经历令她们对感情望而却步，但这是拒绝恋爱的唯一理由吗？若真爱再次降临，她们又会如何把握……'),(33434703,'午夜怪谈','f10',1,'卫立洲','张驰, 王子清, 梁国荣, 张公乐',2019,'中国大陆','悬疑, 惊悚, 恐怖','电竞顶尖女主播夏梓曦因为想转型做艺人引发行业震荡，各种负面新闻和粉丝骚扰不断。为了摆脱老板的纠缠，夏梓曦答应最后一次代言游戏，谁知代言后发生连串恐怖事件。前男友高权因为游戏代言事件非常不满。老板被杀害后事情却愈加复杂诡异，孤立无助的夏梓曦获得新邻居杨博文出手相助。夏梓曦越来越依赖杨博文，然而事情却并没有这么简单...');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmcomment`
--

LOCK TABLES `filmcomment` WRITE;
/*!40000 ALTER TABLE `filmcomment` DISABLE KEYS */;
INSERT INTO `filmcomment` VALUES (1,10000000,26835471,2,'我觉得8行'),(2,10000002,26835471,5,'我觉得还行'),(3,10000000,1,3,'鼓励一下'),(4,10000001,1,4,'好看'),(5,10000000,26835471,5,'刘涛！'),(7,10000000,26731376,3,'还行'),(8,10000000,26879542,2,'这是什么电影啊'),(9,10000000,26891256,3,'一般般'),(10,10000000,27042544,4,'挺有意思'),(11,10000000,27074316,4,'很感人'),(12,10000000,30158971,5,'太有意思了'),(13,10000000,30464313,1,'这种恐怖片没意思'),(14,10000000,30467175,2,'土得掉渣'),(15,10000000,33434703,1,'幸好看着看着睡着了');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmoffice`
--

LOCK TABLES `filmoffice` WRITE;
/*!40000 ALTER TABLE `filmoffice` DISABLE KEYS */;
INSERT INTO `filmoffice` VALUES (1,20000000,1,10,7),(2,20000000,2,12,10),(3,20000001,1,5,8),(4,20000001,2,6,9),(6,20000002,1,2,2),(9,20000000,3,4,4),(10,20000015,1,4,4);
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
  `seat` varchar(2000) NOT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmshow`
--

LOCK TABLES `filmshow` WRITE;
/*!40000 ALTER TABLE `filmshow` DISABLE KEYS */;
INSERT INTO `filmshow` VALUES (1,26835471,20000000,1,'2019-05-24 09:00:00','2','0000000000000000000000000000000000000000000000000000000000000000000000',26),(2,26835471,20000000,1,'2019-05-24 11:30:00','2','0000000000000000000000000000000000000000000000000000000000000000000000',30),(3,26731376,20000000,2,'2019-04-17 09:00:00','2','000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',50),(4,27042544,20000000,2,'2019-05-31 04:00:00','2','000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',25),(5,26835471,20000000,2,'2019-05-31 20:00:00','2','100100000000000000000000100000000000000000001100000000000000000000000000000000000000000000000000100000000000000000000000',54);
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

-- Dump completed on 2019-05-30 11:57:38
