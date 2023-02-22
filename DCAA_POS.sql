-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: dcaa_pos
-- ------------------------------------------------------
-- Server version	8.0.11

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
-- Table structure for table `credit_history`
--

DROP TABLE IF EXISTS `credit_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `credit_history` (
  `idCredit_history` int(11) NOT NULL AUTO_INCREMENT,
  `StudentID` varchar(45) DEFAULT NULL,
  `Credit` double(15,2) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `userID` varchar(45) DEFAULT NULL,
  `Transaction_type` varchar(20) DEFAULT NULL,
  `OR_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idCredit_history`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_history`
--

LOCK TABLES `credit_history` WRITE;
/*!40000 ALTER TABLE `credit_history` DISABLE KEYS */;
INSERT INTO `credit_history` VALUES (1,'111111111',5978.04,'2023-01-26 12:53:56','1','debit','0000000038'),(2,'111111111',2886.00,'2023-02-09 15:18:33','1','debit','0000000047'),(3,'55',140.00,'2023-02-09 16:36:56','1','debit','0000000048'),(4,'55',11228.00,'2023-02-09 16:38:17','1','debit','0000000049'),(5,'55',1000.00,'2023-02-10 12:02:07','1','credit','C000000001'),(6,'55',1000.00,'2023-02-10 12:02:20','1','credit','C000000001'),(7,'55',200.00,'2023-02-10 12:04:52','1','credit','C000000021'),(8,'55',300.00,'2023-02-10 12:07:36','1','credit','C000000004'),(9,'55',12000.00,'2023-02-10 12:57:42','1','credit','C000000005'),(10,'55',240.00,'2023-02-10 12:58:40','1','debit','0000000050'),(11,'55',1210.00,'2023-02-10 12:59:12','1','debit','0000000051'),(12,'85',1000.00,'2023-02-10 13:15:05','1','credit','C000000006'),(13,'85',240.00,'2023-02-10 13:15:39','1','debit','0000000052'),(14,'85',500.00,'2023-02-10 13:24:13','1','credit','C000000007');
/*!40000 ALTER TABLE `credit_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `invoice` (
  `idInvoice` bigint(20) NOT NULL AUTO_INCREMENT,
  `Item_name` varchar(100) DEFAULT NULL,
  `quantity` double(15,2) DEFAULT NULL,
  `price` double(15,2) DEFAULT NULL,
  `subTotal` double(15,2) DEFAULT NULL,
  `OR_` varchar(100) DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `StudentID` varchar(45) DEFAULT NULL,
  `Items_idItems` int(11) NOT NULL,
  PRIMARY KEY (`idInvoice`),
  KEY `fk_Invoice_Items1_idx` (`Items_idItems`),
  CONSTRAINT `fk_Invoice_Items1` FOREIGN KEY (`Items_idItems`) REFERENCES `items` (`iditems`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1,'11',1.00,20.00,20.00,'0000000000','1','2023-01-11 15:10:13','Student_ID',11),(2,'1',2.00,50.00,100.00,'0000000000','1','2023-01-11 15:10:13','Student_ID',1),(3,'6',2.00,922.00,1844.00,'0000000000','1','2023-01-11 15:10:13','Student_ID',6),(4,'11',1.00,20.00,20.00,'0000000001','1','2023-01-11 15:15:14','Student_ID',11),(5,'9',1.00,9034.00,9034.00,'0000000001','1','2023-01-11 15:15:14','Student_ID',9),(6,'6',1.00,922.00,922.00,'0000000002','1','2023-01-12 12:31:12','Student_ID',6),(7,'11',1.00,20.00,20.00,'0000000002','1','2023-01-12 12:31:12','Student_ID',11),(8,'6',1.00,922.00,922.00,'0000000003','1','2023-01-13 12:12:05','Student_ID',6),(9,'11',1.00,20.00,20.00,'0000000004','1','2023-01-13 12:19:40','Student_ID',11),(10,'1',1.00,50.00,50.00,'0000000004','1','2023-01-13 12:19:40','Student_ID',1),(11,'6',1.00,922.00,922.00,'0000000004','1','2023-01-13 12:19:40','Student_ID',6),(12,'11',1.00,20.00,20.00,'0000000004','1','2023-01-13 12:19:40','Student_ID',11),(13,'11',1.00,20.00,20.00,'0000000005','1','2023-01-13 12:43:59','Student_ID',11),(14,'11',1.00,20.00,20.00,'0000000006','1','2023-01-13 12:47:30','Student_ID',11),(15,'11',1.00,20.00,20.00,'0000000007','1','2023-01-13 12:51:31','Student_ID',11),(16,'11',1.00,20.00,20.00,'0000000008','1','2023-01-13 12:51:58','Student_ID',11),(17,'11',2.00,20.00,40.00,'0000000009','1','2023-01-13 12:52:35','Student_ID',11),(18,'11',1.00,20.00,20.00,'0000000010','1','2023-01-13 12:59:49','Student_ID',11),(19,'11',1.00,20.00,20.00,'0000000011','1','2023-01-13 14:30:57','Student_ID',11),(20,'11',21.00,20.00,420.00,'0000000012','1','2023-01-13 14:33:19','Student_ID',11),(21,'6',3.00,922.00,2766.00,'0000000013','1','2023-01-13 14:34:05','Student_ID',6),(22,'11',1.00,20.00,20.00,'0000000014','1','2023-01-13 15:47:34','Student_ID',11),(23,'1',1.00,50.00,50.00,'0000000014','1','2023-01-13 15:47:34','Student_ID',1),(24,'11',1.00,20.00,20.00,'0000000014','1','2023-01-13 15:47:34','Student_ID',11),(25,'1',1.00,50.00,50.00,'0000000014','1','2023-01-13 15:47:34','Student_ID',1),(26,'6',1.00,922.00,922.00,'0000000014','1','2023-01-13 15:47:34','Student_ID',6),(27,'6',1.00,922.00,922.00,'0000000014','1','2023-01-13 15:47:34','Student_ID',6),(28,'6',1.00,922.00,922.00,'0000000014','1','2023-01-13 15:47:34','Student_ID',6),(29,'1',1.00,50.00,50.00,'0000000014','1','2023-01-13 15:47:34','Student_ID',1),(30,'11',1.00,20.00,20.00,'0000000014','1','2023-01-13 15:47:34','Student_ID',11),(31,'1',1.00,50.00,50.00,'0000000014','1','2023-01-13 15:47:34','Student_ID',1),(32,'6',1.00,922.00,922.00,'0000000014','1','2023-01-13 15:47:34','Student_ID',6),(33,'11',1.00,20.00,20.00,'0000000014','1','2023-01-13 15:47:34','Student_ID',11),(34,'6',1.00,922.00,922.00,'0000000014','1','2023-01-13 15:47:34','Student_ID',6),(35,'11',1.00,20.00,20.00,'0000000015','1','2023-01-13 16:39:51','Student_ID',11),(36,'11',1.00,20.00,20.00,'0000000016','1','2023-01-13 16:40:15','Student_ID',11),(37,'1',2.00,50.00,100.00,'0000000017','1','2023-01-13 16:40:47','Student_ID',1),(38,'11',1.00,20.00,20.00,'0000000017','1','2023-01-13 16:40:47','Student_ID',11),(39,'11',1.00,20.00,20.00,'0000000018','1','2023-01-16 12:50:32','Student_ID',11),(40,'1',2.00,50.00,100.00,'0000000018','1','2023-01-16 12:50:32','Student_ID',1),(41,'6',2.00,922.00,1844.00,'0000000018','1','2023-01-16 12:50:32','Student_ID',6),(42,'11',1.00,20.00,20.00,'0000000019','1','2023-01-16 13:33:49','Student_ID',11),(43,'11',1.00,20.00,20.00,'0000000020','1','2023-01-16 14:07:20','Student_ID',11),(44,'11',1.00,20.00,20.00,'0000000021','1','2023-01-16 14:27:25','Student_ID',11),(45,'11',1.00,20.00,20.00,'0000000022','1','2023-01-17 13:32:47','Student_ID',11),(46,'1',1.00,50.00,50.00,'0000000022','1','2023-01-17 13:32:47','Student_ID',1),(47,'6',1.00,922.00,922.00,'0000000022','1','2023-01-17 13:32:47','Student_ID',6),(48,'11',1.00,20.00,20.00,'0000000023','1','2023-01-17 13:36:42','Student_ID',11),(49,'1',1.00,50.00,50.00,'0000000023','1','2023-01-17 13:36:42','Student_ID',1),(50,'6',1.00,922.00,922.00,'0000000023','1','2023-01-17 13:36:42','Student_ID',6),(51,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(52,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(53,'6',1.00,922.00,922.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',6),(54,'9',1.00,9034.00,9034.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',9),(55,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(56,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(57,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(58,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(59,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(60,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(61,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(62,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(63,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(64,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(65,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(66,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(67,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(68,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(69,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(70,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(71,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(72,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(73,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(74,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(75,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(76,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(77,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(78,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(79,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(80,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(81,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(82,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(83,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(84,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(85,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(86,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(87,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(88,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(89,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(90,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(91,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(92,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(93,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(94,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(95,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(96,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(97,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(98,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(99,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(100,'11',1.00,20.00,20.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',11),(101,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(102,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(103,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(104,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(105,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(106,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(107,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(108,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(109,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(110,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(111,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(112,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(113,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(114,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(115,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(116,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(117,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(118,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(119,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(120,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(121,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(122,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(123,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(124,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(125,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(126,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(127,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(128,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(129,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(130,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(131,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(132,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(133,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(134,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(135,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(136,'1',1.00,50.00,50.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',1),(137,'6',1.00,922.00,922.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',6),(138,'6',1.00,922.00,922.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',6),(139,'6',1.00,922.00,922.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',6),(140,'6',1.00,922.00,922.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',6),(141,'6',1.00,922.00,922.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',6),(142,'6',1.00,922.00,922.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',6),(143,'9',1.00,9034.00,9034.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',9),(144,'9',1.00,9034.00,9034.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',9),(145,'9',1.00,9034.00,9034.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',9),(146,'9',1.00,9034.00,9034.00,'0000000024','1','2023-01-17 13:43:18','Student_ID',9),(147,'11',1.00,20.00,20.00,'0000000025','1','2023-01-17 13:56:52','Student_ID',11),(148,'11',1.00,20.00,20.00,'0000000025','1','2023-01-17 13:56:52','Student_ID',11),(149,'11',1.00,20.00,20.00,'0000000025','1','2023-01-17 13:56:52','Student_ID',11),(150,'11',1.00,20.00,20.00,'0000000025','1','2023-01-17 13:56:52','Student_ID',11),(151,'11',1.00,20.00,20.00,'0000000025','1','2023-01-17 13:56:52','Student_ID',11),(152,'11',1.00,20.00,20.00,'0000000025','1','2023-01-17 13:56:52','Student_ID',11),(153,'11',1.00,20.00,20.00,'0000000025','1','2023-01-17 13:56:52','Student_ID',11),(154,'11',1.00,20.00,20.00,'0000000025','1','2023-01-17 13:56:52','Student_ID',11),(155,'11',1.00,20.00,20.00,'0000000025','1','2023-01-17 13:56:52','Student_ID',11),(156,'1',3.00,50.00,150.00,'0000000025','1','2023-01-17 13:56:52','Student_ID',1),(157,'11',1.00,20.00,20.00,'0000000026','1','2023-01-17 16:01:54','',11),(158,'11',1.00,20.00,20.00,'0000000026','1','2023-01-17 16:01:54','',11),(159,'11',1.00,20.00,20.00,'0000000026','1','2023-01-17 16:01:54','',11),(160,'11',1.00,20.00,20.00,'0000000026','1','2023-01-17 16:01:54','',11),(161,'11',1.00,20.00,20.00,'0000000026','1','2023-01-17 16:01:54','',11),(162,'11',1.00,20.00,20.00,'0000000026','1','2023-01-17 16:01:54','',11),(163,'11',1.00,20.00,20.00,'0000000026','1','2023-01-17 16:01:54','',11),(164,'11',1.00,20.00,20.00,'0000000026','1','2023-01-17 16:01:54','',11),(165,'11',1.00,20.00,20.00,'0000000026','1','2023-01-17 16:01:54','',11),(166,'11',1.00,20.00,20.00,'0000000027','1','2023-01-17 16:04:47','',11),(167,'1',1.00,50.00,50.00,'0000000027','1','2023-01-17 16:04:47','',1),(168,'6',1.00,922.00,922.00,'0000000027','1','2023-01-17 16:04:47','',6),(169,'9',1.00,9034.00,9034.00,'0000000027','1','2023-01-17 16:04:47','',9),(170,'11',1.00,20.00,20.00,'0000000028','1','2023-01-17 16:09:07','',11),(171,'1',1.00,50.00,50.00,'0000000028','1','2023-01-17 16:09:07','',1),(172,'6',1.00,922.00,922.00,'0000000028','1','2023-01-17 16:09:07','',6),(173,'11',1.00,20.00,20.00,'0000000029','1','2023-01-17 16:11:44','8998888',11),(174,'1',1.00,50.00,50.00,'0000000029','1','2023-01-17 16:11:44','8998888',1),(175,'6',1.00,922.00,922.00,'0000000029','1','2023-01-17 16:11:44','8998888',6),(176,'11',1.00,20.00,20.00,'0000000029','1','2023-01-17 16:11:44','8998888',11),(177,'1',1.00,50.00,50.00,'0000000029','1','2023-01-17 16:11:44','8998888',1),(178,'6',1.00,922.00,922.00,'0000000029','1','2023-01-17 16:11:44','8998888',6),(179,'9',1.00,9034.00,9034.00,'0000000029','1','2023-01-17 16:11:44','8998888',9),(180,'11',1.00,20.00,20.00,'0000000029','1','2023-01-17 16:11:44','8998888',11),(181,'11',1.00,20.00,20.00,'0000000029','1','2023-01-17 16:11:44','8998888',11),(182,'1',1.00,50.00,50.00,'0000000029','1','2023-01-17 16:11:44','8998888',1),(183,'6',1.00,922.00,922.00,'0000000029','1','2023-01-17 16:11:44','8998888',6),(184,'9',1.00,9034.00,9034.00,'0000000029','1','2023-01-17 16:11:44','8998888',9),(185,'11',1.00,20.00,20.00,'0000000030','1','2023-01-19 13:35:16','',11),(186,'11',1.00,20.00,20.00,'0000000030','1','2023-01-19 13:35:16','',11),(187,'11',1.00,20.00,20.00,'0000000030','1','2023-01-19 13:35:16','',11),(188,'11',1.00,20.00,20.00,'0000000030','1','2023-01-19 13:35:16','',11),(189,'11',1.00,20.00,20.00,'0000000030','1','2023-01-19 13:35:16','',11),(190,'11',1.00,20.00,20.00,'0000000030','1','2023-01-19 13:35:16','',11),(191,'11',1.00,20.00,20.00,'0000000030','1','2023-01-19 13:35:16','',11),(192,'11',1.00,20.00,20.00,'0000000030','1','2023-01-19 13:35:16','',11),(193,'11',1.00,20.00,20.00,'0000000030','1','2023-01-19 13:35:16','',11),(194,'11',1.00,20.00,20.00,'0000000030','1','2023-01-19 13:35:16','',11),(195,'11',1.00,20.00,20.00,'0000000030','1','2023-01-19 13:35:16','',11),(196,'11',1.00,20.00,20.00,'0000000030','1','2023-01-19 13:35:16','',11),(197,'11',1.00,20.00,20.00,'0000000030','1','2023-01-19 13:35:16','',11),(198,'11',1.00,20.00,20.00,'0000000030','1','2023-01-19 13:35:16','',11),(199,'11',1.00,20.00,20.00,'0000000030','1','2023-01-19 13:35:16','',11),(200,'11',1.00,20.00,20.00,'0000000030','1','2023-01-19 13:35:16','',11),(201,'11',1.00,20.00,20.00,'0000000030','1','2023-01-19 13:35:16','',11),(202,'11',1.00,20.00,20.00,'0000000030','1','2023-01-19 13:35:16','',11),(203,'11',1.00,20.00,20.00,'0000000030','1','2023-01-19 13:35:16','',11),(204,'2',2.00,20.00,40.00,'0000000031','1','2023-01-25 13:33:11','',2),(205,'11',2.00,20.00,40.00,'0000000031','1','2023-01-25 13:33:11','',11),(206,'8',2.00,123.34,246.68,'0000000031','1','2023-01-25 13:33:11','',8),(207,'11',1.00,20.00,20.00,'0000000031','1','2023-01-25 13:33:11','',11),(208,'9',2.00,9034.00,18068.00,'0000000031','1','2023-01-25 13:33:11','',9),(209,'11',3.00,20.00,60.00,'0000000032','1','2023-01-25 14:01:17','',11),(210,'4',3.00,90.00,270.00,'0000000033','1','2023-01-25 14:12:17','',4),(211,'11',1.00,20.00,20.00,'0000000033','1','2023-01-25 14:12:17','',11),(212,'1',1.00,12.00,12.00,'0000000033','1','2023-01-25 14:12:17','',1),(213,'11',4.00,20.00,80.00,'0000000034','1','2023-01-26 12:43:38','',11),(214,'11',1.00,20.00,20.00,'0000000034','1','2023-01-26 12:43:38','',11),(215,'11',1.00,20.00,20.00,'0000000034','1','2023-01-26 12:43:38','',11),(216,'11',1.00,20.00,20.00,'0000000034','1','2023-01-26 12:43:38','',11),(217,'11',1.00,20.00,20.00,'0000000035','1','2023-01-26 12:44:15','',11),(218,'11',1.00,20.00,20.00,'0000000035','1','2023-01-26 12:44:15','',11),(219,'11',1.00,20.00,20.00,'0000000035','1','2023-01-26 12:44:15','',11),(220,'11',1.00,20.00,20.00,'0000000035','1','2023-01-26 12:44:15','',11),(221,'11',1.00,20.00,20.00,'0000000035','1','2023-01-26 12:44:15','',11),(222,'11',1.00,20.00,20.00,'0000000036','1','2023-01-26 12:45:03','',11),(223,'11',1.00,20.00,20.00,'0000000036','1','2023-01-26 12:45:03','',11),(224,'11',1.00,20.00,20.00,'0000000036','1','2023-01-26 12:45:03','',11),(225,'11',1.00,20.00,20.00,'0000000036','1','2023-01-26 12:45:03','',11),(226,'3',1.00,90.00,90.00,'0000000037','1','2023-01-26 12:47:26','',3),(227,'5',1.00,12.00,12.00,'0000000037','1','2023-01-26 12:47:26','',5),(228,'7',1.00,9812.00,9812.00,'0000000037','1','2023-01-26 12:47:26','',7),(229,'6',10.00,922.00,9220.00,'0000000037','1','2023-01-26 12:47:26','',6),(230,'8',3.00,123.34,370.02,'0000000038','1','2023-01-26 12:53:56','111111111',8),(231,'8',3.00,123.34,370.02,'0000000038','1','2023-01-26 12:53:56','111111111',8),(232,'4',1.00,90.00,90.00,'0000000038','1','2023-01-26 12:53:56','111111111',4),(233,'1',1.00,50.00,50.00,'0000000039','1','2023-01-27 17:06:12','',1),(234,'11',1.00,20.00,20.00,'0000000039','1','2023-01-27 17:06:12','',11),(235,'1',1.00,50.00,50.00,'0000000039','1','2023-01-27 17:06:12','',1),(236,'1',1.00,50.00,50.00,'0000000039','1','2023-01-27 17:06:12','',1),(237,'4',1.00,90.00,90.00,'0000000040','1','2023-01-27 21:49:57','',4),(238,'9',2.00,9034.00,18068.00,'0000000040','1','2023-01-27 21:49:57','',9),(239,'11',1.00,20.00,20.00,'0000000041','1','2023-01-27 21:50:42','',11),(240,'6',1.00,922.00,922.00,'0000000041','1','2023-01-27 21:50:42','',6),(241,'10',1.00,90.03,90.03,'0000000041','1','2023-01-27 21:50:42','',10),(242,'1',1.00,50.00,50.00,'0000000042','1','2023-01-27 21:51:02','',1),(243,'11',200.00,20.00,4000.00,'0000000043','1','2023-01-30 15:57:49','',11),(244,'11',1.00,20.00,20.00,'0000000044','1','2023-02-09 15:08:59','111111111',11),(245,'1',1.00,50.00,50.00,'0000000044','1','2023-02-09 15:08:59','111111111',1),(246,'6',3.00,922.00,2766.00,'0000000044','1','2023-02-09 15:08:59','111111111',6),(247,'11',12.00,20.00,240.00,'0000000045','1','2023-02-09 15:10:21','111111111',11),(248,'1',23.00,50.00,1150.00,'0000000045','1','2023-02-09 15:10:21','111111111',1),(249,'6',1.00,922.00,922.00,'0000000045','1','2023-02-09 15:10:21','111111111',6),(250,'11',1.00,20.00,20.00,'0000000046','1','2023-02-09 15:12:55','111111111',11),(251,'11',1.00,20.00,20.00,'0000000046','1','2023-02-09 15:12:55','111111111',11),(252,'11',1.00,20.00,20.00,'0000000046','1','2023-02-09 15:12:55','111111111',11),(253,'1',2.00,50.00,100.00,'0000000046','1','2023-02-09 15:12:55','111111111',1),(254,'11',1.00,20.00,20.00,'0000000047','1','2023-02-09 15:18:33','111111111',11),(255,'6',3.00,922.00,2766.00,'0000000047','1','2023-02-09 15:18:33','111111111',6),(256,'1',2.00,50.00,100.00,'0000000047','1','2023-02-09 15:18:33','111111111',1),(257,'11',1.00,20.00,20.00,'0000000048','1','2023-02-09 16:36:56','55',11),(258,'11',1.00,20.00,20.00,'0000000048','1','2023-02-09 16:36:56','55',11),(259,'1',2.00,50.00,100.00,'0000000048','1','2023-02-09 16:36:56','55',1),(260,'11',1.00,20.00,20.00,'0000000049','1','2023-02-09 16:38:17','55',11),(261,'1',12.00,12.00,144.00,'0000000049','1','2023-02-09 16:38:17','55',1),(262,'6',12.00,922.00,11064.00,'0000000049','1','2023-02-09 16:38:17','55',6),(263,'11',12.00,20.00,240.00,'0000000050','1','2023-02-10 12:58:40','55',11),(264,'11',3.00,20.00,60.00,'0000000051','1','2023-02-10 12:59:12','55',11),(265,'1',23.00,50.00,1150.00,'0000000051','1','2023-02-10 12:59:12','55',1),(266,'11',12.00,20.00,240.00,'0000000052','1','2023-02-10 13:15:39','85',11),(267,'11',1.00,20.00,20.00,'0000000053','1','2023-02-21 15:23:55','',11);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_type`
--

DROP TABLE IF EXISTS `item_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `item_type` (
  `idItem_type` int(11) NOT NULL AUTO_INCREMENT,
  `Item_type_Name` varchar(45) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`idItem_type`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_type`
--

LOCK TABLES `item_type` WRITE;
/*!40000 ALTER TABLE `item_type` DISABLE KEYS */;
INSERT INTO `item_type` VALUES (1,'jamie','jamie jamie jamie ','2022-10-06 13:59:56','2022-10-06 13:59:56'),(2,'jamie','jamie jamie jamie ','2022-10-06 14:04:00','2022-10-06 14:04:00'),(3,'jamie ','jamie jamie jamie ','2022-10-06 14:19:52','2022-10-06 14:19:52'),(4,'jamie ','jamie jamie jamie ','2022-10-06 14:20:05','2022-10-06 14:20:05'),(5,'jamie ','jamie jamie jamie ','2022-10-06 14:20:06','2022-10-06 14:20:06'),(6,'jamie ','jamie jamie jamie ','2022-10-06 14:20:06','2022-10-06 14:20:06'),(7,'jamie ','jamie jamie jamie ','2022-10-06 14:20:06','2022-10-06 14:20:06'),(8,'jamie ','jamie jamie jamie ','2022-10-06 14:20:07','2022-10-06 14:20:07'),(9,'jamie ','jamie jamie jamie ','2022-10-06 14:20:07','2022-10-06 14:20:07'),(10,'Jamie ','jamie jamie jamie ','2022-10-06 14:31:03','2022-10-06 14:31:03'),(11,'jamie ','jamie','2022-10-06 14:31:41','2022-10-06 14:31:41'),(12,'test','test','2022-10-26 20:51:01','2022-10-26 20:51:01'),(13,'wowowow','wowowow','2023-01-23 16:12:48','2023-01-23 16:12:48');
/*!40000 ALTER TABLE `item_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `items` (
  `idItems` int(11) NOT NULL AUTO_INCREMENT,
  `Item_name` varchar(100) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Price` double(15,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `Item_type_idItem_type` int(11) NOT NULL,
  PRIMARY KEY (`idItems`),
  KEY `fk_Items_Item_type_idx` (`Item_type_idItem_type`),
  CONSTRAINT `fk_Items_Item_type` FOREIGN KEY (`Item_type_idItem_type`) REFERENCES `item_type` (`iditem_type`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Jamie','Edaurdo',12.00,'2022-10-13 12:04:00','2022-10-13 12:04:00',11),(2,'Item 2','asldalsdjalskjdlk',20.00,'2022-10-13 13:31:25','2022-10-13 13:31:25',1),(3,'jamie ','kkkk',90.00,'2022-10-13 20:26:11','2022-10-13 20:26:11',2),(4,'hahah','hahah',90.00,'2022-10-13 20:50:52','2022-10-13 20:50:52',2),(5,'aa','aaaa',12.00,'2022-10-13 21:26:18','2022-10-13 21:26:18',5),(6,'jaasd','llkajslkd',922.00,'2022-10-13 21:30:33','2022-10-13 21:30:33',6),(7,'jasdkk','asdjkl',9812.00,'2022-10-13 21:31:00','2022-10-13 21:31:00',6),(8,'qq','qqwertrt',123.34,'2022-10-17 15:08:54','2022-10-17 15:08:54',2),(9,'ajas','sdf',9034.00,'2022-10-17 20:37:37','2022-10-17 20:37:37',3),(10,'ksjdflkj','lksjdlfkj',90.03,'2022-10-18 12:51:38','2022-10-18 12:51:38',3),(11,'Hamberger','Burger with egg',20.00,'2023-01-11 13:14:08','2023-01-11 13:14:08',3);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shortcut_settings`
--

DROP TABLE IF EXISTS `shortcut_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shortcut_settings` (
  `idShortcut_Settings` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(45) DEFAULT NULL,
  `Price` double(15,3) DEFAULT NULL,
  `Product_Name` varchar(45) DEFAULT NULL,
  `Product_Description` varchar(255) DEFAULT NULL,
  `item_type_id` varchar(45) DEFAULT NULL,
  `Button_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idShortcut_Settings`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shortcut_settings`
--

LOCK TABLES `shortcut_settings` WRITE;
/*!40000 ALTER TABLE `shortcut_settings` DISABLE KEYS */;
INSERT INTO `shortcut_settings` VALUES (100,'11',20.000,'Hamberger','Burger with egg','3','1'),(101,'1',50.000,'Jamie','Edaurdo','11','2'),(102,'6',922.000,'jaasd','llkajslkd','6','3'),(103,'9',9034.000,'ajas','sdf','3','4'),(104,NULL,NULL,NULL,NULL,NULL,'5'),(105,NULL,NULL,NULL,NULL,NULL,'6'),(106,'9',9034.000,'ajas','sdf','3','7'),(107,NULL,NULL,NULL,NULL,NULL,'8'),(108,'8',123.340,'qq','qqwertrt','2','9'),(109,NULL,NULL,NULL,NULL,NULL,'10'),(110,'1',12.000,'Jamie','Edaurdo','11','11'),(111,NULL,NULL,NULL,NULL,NULL,'12'),(112,NULL,NULL,NULL,NULL,NULL,'13'),(113,NULL,NULL,NULL,NULL,NULL,'14'),(114,'6',922.000,'jaasd','llkajslkd','6','15'),(115,NULL,NULL,NULL,NULL,NULL,'16'),(116,NULL,NULL,NULL,NULL,NULL,'17'),(117,NULL,NULL,NULL,NULL,NULL,'18'),(118,NULL,NULL,NULL,NULL,NULL,'19'),(119,NULL,NULL,NULL,NULL,NULL,'20');
/*!40000 ALTER TABLE `shortcut_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_info`
--

DROP TABLE IF EXISTS `student_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student_info` (
  `idStudent_info` int(11) NOT NULL AUTO_INCREMENT,
  `F_name` varchar(45) DEFAULT NULL,
  `M_name` varchar(45) DEFAULT NULL,
  `L_Name` varchar(45) DEFAULT NULL,
  `Student_ID` varchar(45) DEFAULT NULL,
  `Credit` double(15,2) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `userID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idStudent_info`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_info`
--

LOCK TABLES `student_info` WRITE;
/*!40000 ALTER TABLE `student_info` DISABLE KEYS */;
INSERT INTO `student_info` VALUES (1,'Jamie','Middle','Lastname','899923057793',NULL,'2023-02-03 12:28:19','test'),(2,'Jamie','Middle','Lastname','899923057793',NULL,'2023-02-03 12:28:21','test'),(3,'asdasdasfgfg','fgfg','fgfgfgfg','8888823',NULL,'2023-02-08 13:06:20','test'),(4,'jjdsfkkk','ljkjd','sdflklkjlkj','9849',NULL,'2023-02-08 13:09:17','test'),(5,'jjdsfkkk','ljkjd','sdflklkjlkj','9849',NULL,'2023-02-08 13:09:23','test'),(6,'jjdsfkkk','ljkjd','sdflklkjlkj','9849',NULL,'2023-02-08 13:09:33','test'),(7,'uuuu','uu','uu','88888',NULL,'2023-02-08 13:24:23','test'),(8,'uuuu','uu','uu','88888',NULL,'2023-02-08 13:24:23','test'),(9,'uuuu','uu','uu','88888',NULL,'2023-02-08 13:24:23','test'),(10,'uuuu','uu','uu','88888',NULL,'2023-02-08 13:24:23','test'),(11,'uuuu','uu','uu','88888',NULL,'2023-02-08 13:24:23','test'),(12,'uuuu','uu','uu','88888',NULL,'2023-02-08 13:24:23','test'),(13,'asd','asdasd','dfdf','123123',NULL,'2023-02-08 13:46:12','test'),(14,'asd','asdasd','dfdf','123123',NULL,'2023-02-08 13:46:16','test'),(15,'asd','asdasd','dfdf','123123',NULL,'2023-02-08 13:46:20','test'),(16,'asd','asd','asd','2222',NULL,'2023-02-08 13:52:04','test'),(17,'asd','asd','asd','2222',NULL,'2023-02-08 13:52:09','test'),(18,'23','23','23','4444',NULL,'2023-02-08 13:55:31','test'),(19,'23','23','23','4444',NULL,'2023-02-08 13:55:35','test'),(20,'23','23','23','4444',NULL,'2023-02-08 13:55:38','test'),(21,'aa','asf','df','55',NULL,'2023-02-08 13:59:55','test'),(22,'aa','asf','df','',NULL,'2023-02-08 14:00:01','test'),(23,'aa','asf','df','a',NULL,'2023-02-08 14:00:06','test'),(24,'Chuy','Chuy','Chuy','85',NULL,'2023-02-10 13:14:01','test');
/*!40000 ALTER TABLE `student_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `idusers` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `usertype` varchar(45) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jamie Jamie','Jamie','Jamie','Casher','2023-02-10 16:04:36'),(2,'test','test','test','Manager','2023-02-10 16:08:25');
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

-- Dump completed on 2023-02-22 10:15:10
