CREATE DATABASE  IF NOT EXISTS `myfest` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `myfest`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: myfest
-- ------------------------------------------------------
-- Server version	5.1.45-community

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
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `fee` int(11) NOT NULL,
  `max_teamsize` int(11) NOT NULL,
  `min_teamsize` int(11) NOT NULL,
  `location` varchar(45) NOT NULL,
  `allowed_teams` int(11) DEFAULT NULL,
  `fk_supervisor_id` int(11) NOT NULL,
  `photopath` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `fk_Event_Supervisor_idx` (`fk_supervisor_id`),
  CONSTRAINT `fk_Event_Supervisor` FOREIGN KEY (`fk_supervisor_id`) REFERENCES `supervisor` (`supervisor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'Be A Rockstar',2000,3,2,'Building No 1, CSE Department',15,1,'singing'),(2,'Ultimate Paintball',500,15,5,'Building No 2, CSE Department',8,2,'paintball'),(3,'Lasertag',1000,15,2,'Building No 3, CSE Department',10,1,'lasertag'),(4,'Groove',1000,15,2,'Building No 3, CSE Department',10,1,'dance'),(5,'Treasure Hunt',1000,15,5,'Building No 3, CSE Department',10,1,'treasure_hunt'),(6,'CS:Go',100,5,3,'XYZ building',20,3,'csgo');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-07  9:22:06
