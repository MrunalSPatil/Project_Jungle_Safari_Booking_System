-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: wildlife
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `admin_id` smallint(6) NOT NULL,
  `aname` varchar(20) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `np_id` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  KEY `np_id` (`np_id`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`np_id`) REFERENCES `np` (`np_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Rahul','8087407171','rahul123',1),(2,'Akshay','8087407172','akshay123',2),(3,'Kajal','8087407173','kajal123',3);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `np`
--

DROP TABLE IF EXISTS `np`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `np` (
  `np_id` smallint(6) NOT NULL,
  `np_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`np_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `np`
--

LOCK TABLES `np` WRITE;
/*!40000 ALTER TABLE `np` DISABLE KEYS */;
INSERT INTO `np` VALUES (1,'WL1'),(2,'WL2'),(3,'WL3');
/*!40000 ALTER TABLE `np` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package` (
  `package_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `pname` varchar(30) DEFAULT NULL,
  `no_of_days` smallint(6) DEFAULT NULL,
  `no_of_seats_available` int(11) DEFAULT NULL,
  `details` varchar(200) DEFAULT NULL,
  `a_rate` int(11) DEFAULT NULL,
  `c_rate` int(11) DEFAULT NULL,
  `admin_id` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`package_id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `package_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES (2,'Expereincing wildlife',2,37,'Includes:Jeep,Jeep.',14000,6000,1),(3,'Be natural',2,35,'Includes:Jeep,Food.Excludes:Stay',8000,3000,1),(4,'Paradise 2',1,50,'Includes:Jeep,Food.Excludes:Stay',3000,1000,2),(5,'Expereincing wildlife 2',2,39,'Includes:Jeep,Food.Excludes:Stay',6000,3000,2),(6,'Be natural 2',3,24,'Includes:Jeep,Food.Excludes:Stay',12000,6000,2),(7,'Paradise 3',2,35,'Includes:Jeep,Food.Excludes:Stay',6000,3000,3),(8,'Expereincing wildlife 3',3,2,'Includes:Jeep,Food.Excludes:Stay',15000,7000,3),(9,'Be natural 3',1,50,'Includes:Jeep,Food.Excludes:Stay',3000,2000,3),(11,'Wildernest',2,50,'Includes:Jeep,Food.Excludes:Stay.',10000,5000,3);
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `season`
--

DROP TABLE IF EXISTS `season`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `season` (
  `s_id` smallint(6) NOT NULL,
  `sname` varchar(20) DEFAULT NULL,
  `duration` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `season`
--

LOCK TABLES `season` WRITE;
/*!40000 ALTER TABLE `season` DISABLE KEYS */;
INSERT INTO `season` VALUES (101,'Spring','Feb18-April19'),(102,'Summer','April19-June21'),(103,'Monsoon','June21-August22'),(104,'Autumn','August22-Oct23'),(105,'Prewinter','Oct23-Dec21'),(106,'Winter','Dec21-Feb18');
/*!40000 ALTER TABLE `season` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_book`
--

DROP TABLE IF EXISTS `tour_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tour_book` (
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `no_adult` smallint(6) DEFAULT NULL,
  `no_child` smallint(6) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `admin_id` smallint(6) DEFAULT NULL,
  `package_id` smallint(6) DEFAULT NULL,
  `guide` tinyint(4) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`book_id`),
  KEY `user_id` (`user_id`),
  KEY `package_id` (`package_id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `tour_book_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `tour_book_ibfk_2` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`),
  CONSTRAINT `tour_book_ibfk_3` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_book`
--

LOCK TABLES `tour_book` WRITE;
/*!40000 ALTER TABLE `tour_book` DISABLE KEYS */;
INSERT INTO `tour_book` VALUES ('raj','raj@gmail.com','Pune','8087407171',4,3,NULL,1,3,7,NULL,NULL,2),('Shakshi','shakshi@gmail.com','Pune','8087407171',4,2,NULL,1,2,5,NULL,30000,7),('shrey','shreay@gmail.com','Mumbai','9850385536',3,3,NULL,8,2,6,NULL,54000,8),('Purva','purva@gmail.com','Pune','9850385536',2,1,NULL,9,3,8,NULL,37000,9);
/*!40000 ALTER TABLE `tour_book` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger t1 before insert  on tour_book for each row begin set new.amount=new.no_adult*(select a_rate from package where package_id=new.package_id)+new.no_child*(select c_rate from package where package_id=new.package_id);
update package
set no_of_seats_available=no_of_seats_available-(new.no_adult+new.no_child)
where package_id=new.package_id;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `phone_no` varchar(10) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Raj','9075286759','21raj.rathi@gmail.com','Amravati','raj123'),(6,'Mahima','7709101702','mahima@gmail.com','Nasik','mahimia123'),(7,'mrunal','9850385536','mrunal@gmail.com','Kolhapur','mrunal123'),(8,'Gautami','8087407171','gautami@gmail.com','Pune','gautami123'),(9,'Rahul','8087407171','rahul@gmail.com','Pune','rahul123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weather`
--

DROP TABLE IF EXISTS `weather`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weather` (
  `admin_id` smallint(6) DEFAULT NULL,
  `s_id` smallint(6) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  KEY `s_id` (`s_id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `weather_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `season` (`s_id`),
  CONSTRAINT `weather_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather`
--

LOCK TABLES `weather` WRITE;
/*!40000 ALTER TABLE `weather` DISABLE KEYS */;
INSERT INTO `weather` VALUES (1,101,'Mild,Pleasant Weather'),(1,102,'Hot Weather'),(1,103,'Heavily Rains'),(1,104,'Hot Weather recedes'),(1,105,'Moderate Cold'),(1,106,'Extreme Cold'),(2,102,'Hot Weather'),(2,103,'Heavily Rains'),(2,104,'Hot Weather recedes'),(2,105,'Moderate Cold'),(2,106,'Extreme Cold'),(2,101,'Mild,Pleasant Weather'),(3,101,'Mild,Pleasant Weather'),(3,102,'Hot Weather'),(3,103,'Heavily Rains'),(3,104,'Hot Weather recedes'),(3,105,'Moderate Cold'),(3,106,'Extreme Cold');
/*!40000 ALTER TABLE `weather` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-23 11:42:35
