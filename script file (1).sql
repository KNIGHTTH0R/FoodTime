CREATE DATABASE  IF NOT EXISTS `nbad3_create_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `nbad3_create_db`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: nbad3_create_db
-- ------------------------------------------------------
-- Server version	5.7.13-log

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `cartID` int(10) NOT NULL AUTO_INCREMENT,
  `menunumber` varchar(20) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `orderID` varchar(20) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  PRIMARY KEY (`cartID`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (49,'1',1,'38',2),(50,'1',1,'39',2),(51,'1',1,'39',2),(52,'1',1,'40',2),(53,'1',1,'41',2),(54,'1',1,'42',2),(55,'1',1,'42',2),(56,'1',1,'43',2),(57,'2',1,'43',3),(58,'3',1,'43',2),(59,'4',2,'44',30),(60,'5',2,'45',35),(61,'3',1,'44',25),(62,'7',2,'46',18),(63,'8',3,'46',24),(64,'1',1,'46',2),(65,'7',4,'47',36),(68,'8',5,'47',40);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `MenuID` int(11) NOT NULL AUTO_INCREMENT,
  `MenuNumber` varchar(50) DEFAULT NULL,
  `MenuItem` varchar(50) DEFAULT NULL,
  `MenuType` varchar(50) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  PRIMARY KEY (`MenuID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'1','Water','NA',2),(2,'2','Bread','NA',3),(3,'3','Silverware','NA',1),(4,'4','Napkins','NA',1),(5,'5','Pepsi','NA',5),(6,'6','Juice','NA',4),(7,'7','Vodka','A',9),(8,'8','Beer','A',8),(9,'9','Dessert','NA',6);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL AUTO_INCREMENT,
  `TableNumber` varchar(50) DEFAULT NULL,
  `ProcessTime` datetime DEFAULT NULL,
  `ResponseTime` datetime DEFAULT NULL,
  `ProcessorNumber` varchar(50) DEFAULT NULL,
  `ServerNumber` varchar(50) DEFAULT NULL,
  `OrderTime` datetime DEFAULT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (42,'6','2016-06-20 15:26:06','2016-06-20 15:26:06','1','1','2016-06-20 15:26:06'),(43,'6','2016-06-20 15:32:21','2016-06-20 15:32:21','1','1','2016-06-20 15:32:21'),(44,'3','2016-06-21 09:32:21','2016-06-21 09:32:21','1','1','2016-06-21 09:32:21'),(45,'5','2016-06-21 15:32:21','2016-06-21 15:32:21','1','1','2016-06-21 15:32:21'),(46,'7','2016-06-22 15:32:21','2016-06-22 15:32:21','2','2','2016-06-22 15:32:21'),(47,'21','2016-06-22 09:32:21','2016-06-22 09:32:21','3','3','2016-06-22 09:32:21');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `RoleName` varchar(50) NOT NULL,
  PRIMARY KEY (`RoleName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('barattender'),('busboy'),('host'),('manager'),('waiter');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rtables`
--

DROP TABLE IF EXISTS `rtables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rtables` (
  `TableNumber` varchar(50) NOT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `Capacity` int(11) DEFAULT NULL,
  `TableStatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`TableNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rtables`
--

LOCK TABLES `rtables` WRITE;
/*!40000 ALTER TABLE `rtables` DISABLE KEYS */;
INSERT INTO `rtables` VALUES ('1','firstfloor',4,'active'),('10','secondfloor',5,'inactive'),('11','secondfloor',6,'active'),('12','secondfloor',6,'inactive'),('13','secondfloor',4,'inactive'),('14','secondfloor',8,'inactive'),('15','secondfloor',8,'active'),('16','secondfloor',5,'inactive'),('17','thirdfloor',4,'inactive'),('18','thirdfloor',3,'inactive'),('19','thirdfloor',8,'inactive'),('2','firstfloor',6,'inactive'),('20','thirdfloor',6,'inactive'),('21','thirdfloor',4,'inactive'),('22','thirdfloor',4,'inactive'),('23','thirdfloor',4,'active'),('24','thirdfloor',4,'inactive'),('25','fourthfloor',4,'inactive'),('26','fourthfloor',6,'inactive'),('27','fourthfloor',8,'active'),('28','fourthfloor',8,'inactive'),('29','fourthfloor',5,'active'),('3','firstfloor',6,'active'),('30','fourthfloor',4,'inactive'),('31','fourthfloor',3,'active'),('32','fourthfloor',4,'inactive'),('33','fourthfloor',6,'inactive'),('34','fourthfloor',6,'inactive'),('35','fourthfloor',2,'inactive'),('4','firstfloor',4,'active'),('5','firstfloor',8,'active'),('6','firstfloor',5,'active'),('7','firstfloor',4,'active'),('8','firstfloor',2,'inactive'),('9','secondfloor',6,'active');
/*!40000 ALTER TABLE `rtables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userrole` (
  `UserName` varchar(50) NOT NULL,
  `RoleName` varchar(50) NOT NULL,
  PRIMARY KEY (`UserName`,`RoleName`),
  KEY `UserRole_foreign_key_2` (`RoleName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrole`
--

LOCK TABLES `userrole` WRITE;
/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
INSERT INTO `userrole` VALUES ('barattender1','barattender'),('busboy1','busboy'),('busBoy2','busboy'),('host1','host'),('manager1','manager'),('waiter1','waiter'),('waiter2','waiter'),('waiter3','waiter');
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `UserName` varchar(50) NOT NULL,
  `UserPassword` varchar(1000) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `salt` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('barattender1','0b9d04d068190fccb1357773124351c7d80269e8ece4d4e3c61ecc341617559d','barattender1@email.com','barattender1first','barattender1last','IdZSb3QP3mwpctBkl2QG6Gs9+bZUtgSOOzlrA7iGtgU='),('barattender2','86ba9389d4eb3b04be8f7667f7d01282bdd0378982209ae7945697b971734011','barattender2@email.com','barattender2first','barattender2last','ehraYRWAJM2cVqtCzwktZ9EyFXpTVs7GYFkoXpLyEC8='),('barattender3','0b436b0fbbcfda9aff5a54be0fef649d03f4c9e7c254280f2e4000e73ec865eb','barattender3@email.com','barattender3first','barattender3last','K+TyeLHpEwWiriEe4oDW1DYWAaZ6V5BxZPEkzA5Gq7Y='),('busBoy1','0b7c15ab489227d4553f98267ffd18e59d367299f715f66c2e7061c7d49e9653','busBoy1@email.com','busBoy1first','busBoy1last','Ajz3CdnG/w+8NRTG7Zc236o53TCzROe+IX56sG/xjbI='),('busBoy2','74148f77c73a7a8f0ea381caea86200f79c98d8bb7845f7c288b8e924fb873fc','busBoy2@email.com','busBoy2first','busBoy2last','WfT4ay+RVHt8Z3C+68PyEjDc8pcUaqXlw0L4cUklVFA='),('busBoy3','7bd72ef695af35639846885f3bcdb4881038cc77b8ee16fb655919a49667330c','busBoy3@email.com','busBoy3first','busBoy3last','Hi8eFzu7fXGdD+8avWsfjQIUUDLDnJ/zUgi4MW/XsT8='),('host1','659766a95361582cafcaedf66c12439b53939e0ea08eba938f4fa41a51efa5a9','host1@email.com','host1first','host1last','DMnf2Sp1+/027OeXnoWBbvu4VzMpHkYDoUE1HocT6i8='),('manager1','8c90ea8d0e83e4e99117128c1637245413c2fc8b675a3141aa3669f36179a0e6','sgadhala@uncc.edu','manager1first','manager1last','PPdGWaYewtYeIk3/JoMUNk7ZkqfVbNC5w2O6X1eGLRU='),('waiter1','922af451549d842223a38c46756fa2339e25ed9bd6a311cef70990a687c86f81','waiter1@email.com','waiter1first','waiter1last','JmPmWDwdd+UK/WZTd+ZbW6zAZK2Zz7bUJ+CJp7TEbtA='),('waiter2','b191a5ba6dca227eab58565be9fdf6b0f61c8faf08034d7287525cb194290f4f','waiter2@email.com','waiter2first','waiter2last','gNvHor/wAP9Bvo4KoTI5mJ9KuJHUp1EBS1Qvau9jbGc='),('waiter3','db223603a2ccce830a2aac856164aa1dc0dfab9f78c1de70cb58e6c245fa277a','waiter3@email.com','waiter3first','waiter3last','7vKj5MTtOaR3K+JRw7ub06k7WRI3fjYQMkz3m3RISus=');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertable`
--

DROP TABLE IF EXISTS `usertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertable` (
  `UserName` varchar(50) NOT NULL,
  `TableNumber` varchar(50) NOT NULL,
  PRIMARY KEY (`UserName`,`TableNumber`),
  KEY `UserTable_foreign_key_2` (`TableNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertable`
--

LOCK TABLES `usertable` WRITE;
/*!40000 ALTER TABLE `usertable` DISABLE KEYS */;
INSERT INTO `usertable` VALUES ('barattender1','1'),('busBoy1','1'),('waiter1','1'),('busBoy1','10'),('waiter2','10'),('busBoy2','11'),('waiter1','11'),('barattender2','12'),('busBoy2','12'),('waiter2','12'),('busBoy2','13'),('waiter1','13'),('busBoy2','14'),('waiter2','14'),('barattender1','15'),('busBoy2','15'),('waiter1','15'),('barattender2','16'),('busBoy2','16'),('barattender2','17'),('busBoy2','17'),('barattender1','18'),('barattender2','18'),('busBoy2','18'),('barattender1','19'),('busBoy2','19'),('busBoy2','2'),('waiter2','2'),('barattender1','20'),('busBoy2','20'),('busBoy2','21'),('barattender2','22'),('busBoy2','22'),('busBoy2','23'),('barattender1','24'),('busBoy2','24'),('busBoy2','25'),('busBoy2','26'),('barattender1','27'),('busBoy2','27'),('busBoy2','28'),('barattender1','29'),('busBoy2','29'),('barattender1','3'),('busBoy1','3'),('busBoy2','3'),('waiter1','3'),('busBoy2','30'),('barattender1','31'),('busBoy2','31'),('busBoy2','32'),('busBoy1','4'),('busBoy2','4'),('waiter2','4'),('busBoy2','5'),('waiter1','5'),('barattender1','6'),('barattender2','6'),('busBoy2','6'),('waiter2','6'),('barattender1','7'),('busBoy1','7'),('busBoy2','7'),('waiter1','7'),('barattender2','8'),('busBoy2','8'),('waiter2','8'),('barattender1','9'),('busBoy2','9'),('waiter1','9');
/*!40000 ALTER TABLE `usertable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-27 22:32:04
