-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: kadai_db
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

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
-- Table structure for table `kadai2_table`
--

DROP TABLE IF EXISTS `kadai2_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kadai2_table` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `date1text` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `date2text` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `date3text` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `Indate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kadai2_table`
--

LOCK TABLES `kadai2_table` WRITE;
/*!40000 ALTER TABLE `kadai2_table` DISABLE KEYS */;
INSERT INTO `kadai2_table` VALUES (5,'高橋','ＯＫ','出張の為ＮＧ','ＯＫ','村田さんこれから宜しくね！','2020-02-22 11:48:01'),(6,'佐藤','ＯＫ','ＯＫ','ＯＫ','宜しくお願いします～','2020-02-22 11:51:47'),(7,'村田','ＯＫ','ＯＫ','ＯＫ','これから宜しくお願いします。','2020-02-22 11:52:54'),(8,'','','','','','2020-02-23 14:10:11');
/*!40000 ALTER TABLE `kadai2_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kadai_table`
--

DROP TABLE IF EXISTS `kadai_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kadai_table` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `organizername` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `memo` text COLLATE utf8_unicode_ci NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `date3` date NOT NULL,
  `Indate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kadai_table`
--

LOCK TABLES `kadai_table` WRITE;
/*!40000 ALTER TABLE `kadai_table` DISABLE KEYS */;
INSERT INTO `kadai_table` VALUES (36,'歓迎会','佐藤','今月、入社した加藤さんの歓迎会を開きたいと思います。スケジュールの確認お願いします！！！','2020-03-02','2020-03-03','2020-03-04','2020-02-22 11:39:51'),(37,'送別会','高橋','今月末で退職される小林さんの送別会を開きたいと思います。スケジュールの確認お願いします！！！','2020-03-24','2020-03-25','2020-03-26','2020-02-22 11:44:07'),(38,'歓迎会','石井','新入社員の村田さんの歓迎会を開きたいと思います。スケジュールの確認お願いします！！！','2020-04-12','2020-04-13','2020-04-14','2020-02-22 11:46:26'),(39,'','','','0000-00-00','0000-00-00','0000-00-00','2020-02-23 14:09:40');
/*!40000 ALTER TABLE `kadai_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-11 22:20:15
