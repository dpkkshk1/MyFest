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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `stream` varchar(45) NOT NULL,
  `course` varchar(45) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Rajat Kumar','1234','it','it','abesh1@gmail.com','[SL@@+<nS'),(2,'Phani','7846478','ME','Btech','phani@gmail.com','[SL@@+<nS'),(3,'Deepak Kumar','78464348','Civil','Btech','deepak@gmail.com','[SL@@+<nS'),(4,'Abhishek Kumar','788800890','CSE','Btech','shake@gmail.com','[SL@@+<nS'),(5,'Divya','1234567','CSE','Btech','div@gmail.com','[SL@@+<nS'),(6,'Bhatta','999999','EE','Btech','bhattu@gmail.com','[SL@@+<nS'),(7,'Bhatta','9999994','EE','Btech','bhattu4@gmail.com','[SL@@+<nS'),(8,'','9563719','It','ABc','','K?Ic=2'),(19,'Rajat','123','q','q','fdhfh@gmail.com','K?Ic=2'),(20,'Rajat kumar','123222','qq','qq','fdhfhdd@gmail.com','K?Ic=2'),(21,'Rajat Kumar','9563719871','It','ABVG','rajat2sinhahh@gmail.com','K?Ic=2'),(22,'Abhishek Kumar','99999999','it','cogni','abhishekjambo@gmail.com','K?Ic=2'),(23,'Abhishek Kumar','99999998','it','cogni','abhishekjambo1@gmail.com','K?Ic=2'),(24,'phani kumar','800830','bb','csr','phani9613@gmail.com','K?Ic=2'),(25,'Deepak','1234567890','afgh','sfhjty','dgvdgh@gmail.com','K?Ic=2'),(26,'A','1','c','d','gyd@gmhd.com','K?Ic=2'),(28,'phani','8008309613','CSE','B.Tech','phani96630@gmail.com','[SL@@+<nS'),(29,'Abesh ','89875432','it','Btech','abesh.chowdhury@gmail.com','[SL@@+<nS');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-07  9:22:02
