CREATE DATABASE  IF NOT EXISTS `exam_system` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `exam_system`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: exam_system
-- ------------------------------------------------------
-- Server version	5.6.20

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
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_id` int(11) NOT NULL,
  `question` varchar(45) NOT NULL,
  `answer` varchar(45) NOT NULL,
  `correct_answer` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (37,38,'Size of integer datatype in java?','4 byte','4 byte','correct'),(38,38,'ll','w','a','incorrect'),(39,38,'dff','q','q','correct'),(40,38,'jjh','w','w','correct'),(41,38,'dd','k','k','correct'),(42,38,'who is father of java?','James Gosling','James Gosling','correct'),(43,38,'jkk','w','e','incorrect'),(44,38,'rr','e','w','incorrect'),(45,38,'Which of the following is not a java keyword?','Int','Int','correct'),(46,38,'jkj','ss','ss','correct'),(47,40,'Size of integer datatype in java?','4 byte','4 byte','correct'),(48,40,'jkj','ww','ss','incorrect'),(49,40,'who is father of java?','James Gosling','James Gosling','correct'),(50,40,'dff','a','q','incorrect'),(51,40,'Which of the following is not a java keyword?','static','Int','incorrect'),(52,40,'jkk','e','e','correct'),(53,40,'ll','r','a','incorrect'),(54,40,'rr','e','w','incorrect'),(55,40,'jjh','q','w','incorrect'),(56,40,'dd','k','k','correct'),(57,43,'Which of the following is not a java keyword?','Int','Int','correct'),(58,43,'jkk','q','e','incorrect'),(59,43,'Size of integer datatype in java?','4 byte','4 byte','correct'),(60,43,'who is father of java?','James Gosling','James Gosling','correct'),(61,43,'ll','r','a','incorrect'),(62,43,'rr','q','w','incorrect'),(63,43,'jjh','e','w','incorrect'),(64,43,'dff','a','q','incorrect'),(65,43,'dd','k','k','correct'),(66,43,'jkj','d','ss','incorrect'),(67,44,'Father of physics','rock','rock','correct'),(68,46,'rr','w','w','correct'),(69,46,'dff','q','q','correct'),(70,46,'Size of integer datatype in java?','4 byte','4 byte','correct'),(71,46,'jkk','w','e','incorrect'),(72,46,'dd','h','k','incorrect');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `course_name` varchar(25) NOT NULL,
  `total_marks` int(11) NOT NULL,
  `time` varchar(45) NOT NULL,
  PRIMARY KEY (`course_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES ('c',12,'22'),('C++',10,'10'),('Java',10,'10'),('Physics',10,'10');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exams` (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `std_id` varchar(45) NOT NULL,
  `course_name` varchar(45) NOT NULL,
  `total_marks` varchar(45) NOT NULL,
  `obt_marks` varchar(45) DEFAULT NULL,
  `date` varchar(45) NOT NULL,
  `start_time` varchar(45) NOT NULL,
  `end_time` varchar(45) DEFAULT NULL,
  `exam_time` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
INSERT INTO `exams` VALUES (38,'5','Java','10','7','19-01-2019','11:05:39.407','11:06:25.433','10','Pass'),(39,'5','Java','10',NULL,'19-01-2019','18:02:56.731',NULL,'10',NULL),(40,'5','Java','10','4','20-01-2019','21:59:17.796','22:00:14.400','10','Fail'),(41,'5','c','12','0','26-01-2019','20:58:49.889','20:58:57.998','22','Fail'),(42,'5','c','12',NULL,'26-01-2019','20:59:09.092',NULL,'22',NULL),(43,'5','Java','10','4','26-01-2019','20:59:40.105','21:00:52.807','10','Fail'),(44,'5','Physics','10','10','07-02-2019','15:32:03.692','15:33:02.838','10','Pass'),(45,'5','c','12','0','07-02-2019','15:33:34.918','15:33:38.136','22','Fail'),(46,'5','Java','10',NULL,'07-02-2019','15:33:45.825',NULL,'10',NULL);
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(45) NOT NULL,
  `question` varchar(255) NOT NULL,
  `opt1` varchar(85) NOT NULL,
  `opt2` varchar(85) NOT NULL,
  `opt3` varchar(85) NOT NULL,
  `opt4` varchar(85) NOT NULL,
  `correct` varchar(85) NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (8,'Java','who is father of java?','Dennis Ritchie','Kane Thompson','James Gosling','Richard Martin','James Gosling'),(9,'Java','Size of integer datatype in java?','1 byte','4 byte','2 byte','8 byte','4 byte'),(10,'Java','Which of the following is not a java keyword?','try','Int','static','const','Int'),(11,'Java','dd','a','b','h','k','k'),(12,'Java','jjh','r','w','e','q','w'),(13,'Java','rr','a','q','w','e','w'),(14,'Java','jkj','ss','d','ww','qq','ss'),(15,'Java','ll','a','w','e','r','a'),(16,'Java','dff','s','aw','q','a','q'),(17,'Java','jkk','a','q','w','e','e'),(18,'Physics','Father of physics','daniel','rock','hh','kk','rock');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `name` varchar(25) NOT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `user_type` varchar(45) NOT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'debasish','x','dev1','dev1@gmail.com','qwerty','admin','9090890890','bbsr','odisha'),(5,'jyoti','sahoo','jyoti1','jyoti12@gmail.com','qwerty','student','9090898778','CUTTACK','BALIAPADA');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-11 14:39:01
