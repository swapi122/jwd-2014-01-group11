CREATE DATABASE  IF NOT EXISTS `conceptmapsdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `conceptmapsdb`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: conceptmapsdb
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
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignment` (
  `idAssignment` varchar(20) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `deadLine` datetime DEFAULT NULL,
  `owner` varchar(20) DEFAULT NULL,
  `IDconceptMaps` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idAssignment`),
  KEY `fk_AsignMent_User_idx` (`owner`),
  KEY `fk_AssignMent_ConceptMaps_idx` (`IDconceptMaps`),
  CONSTRAINT `fk_AssignMent_ConceptMaps` FOREIGN KEY (`IDconceptMaps`) REFERENCES `conceptmaps` (`idConceptMaps`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_AssignMent_User` FOREIGN KEY (`owner`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment`
--

LOCK TABLES `assignment` WRITE;
/*!40000 ALTER TABLE `assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concept`
--

DROP TABLE IF EXISTS `concept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `concept` (
  `idConcept` varchar(50) NOT NULL,
  `name` varchar(45) NOT NULL,
  `docLink` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idConcept`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concept`
--

LOCK TABLES `concept` WRITE;
/*!40000 ALTER TABLE `concept` DISABLE KEYS */;
INSERT INTO `concept` VALUES ('hmtri92@gmail.com_test_power','power',NULL);
/*!40000 ALTER TABLE `concept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conceptmaps`
--

DROP TABLE IF EXISTS `conceptmaps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conceptmaps` (
  `idConceptMaps` varchar(30) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `owner` varchar(45) NOT NULL,
  `dateCreate` date DEFAULT NULL,
  `endEdit` datetime DEFAULT NULL,
  PRIMARY KEY (`idConceptMaps`),
  KEY `owner_idx` (`owner`),
  CONSTRAINT `owner` FOREIGN KEY (`owner`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conceptmaps`
--

LOCK TABLES `conceptmaps` WRITE;
/*!40000 ALTER TABLE `conceptmaps` DISABLE KEYS */;
INSERT INTO `conceptmaps` VALUES ('hmtri92@gmail.com_test','test','hmtri92@gmail.com','2014-01-11','2014-11-11 21:15:03');
/*!40000 ALTER TABLE `conceptmaps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link`
--

DROP TABLE IF EXISTS `link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link` (
  `idlink` varchar(80) NOT NULL,
  `text` varchar(100) DEFAULT NULL,
  `point` varchar(200) NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `idRelationship` varchar(80) NOT NULL,
  PRIMARY KEY (`idlink`),
  KEY `fk_link_node_idx` (`from`),
  KEY `fk_link_node2_idx` (`to`),
  KEY `fk_link_relationship_idx` (`idRelationship`),
  CONSTRAINT `kf_link_relationship` FOREIGN KEY (`idRelationship`) REFERENCES `relationship` (`idrelationship`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link`
--

LOCK TABLES `link` WRITE;
/*!40000 ALTER TABLE `link` DISABLE KEYS */;
/*!40000 ALTER TABLE `link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_assignment`
--

DROP TABLE IF EXISTS `member_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_assignment` (
  `idmember_Assignment` varchar(20) NOT NULL,
  `idAssignment` varchar(20) DEFAULT NULL,
  `idUser` varchar(20) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  PRIMARY KEY (`idmember_Assignment`),
  KEY `fk_memberAssignment_Assignment_idx` (`idAssignment`),
  KEY `fk_memberAssignment_idx` (`idUser`),
  CONSTRAINT `fk_memberAssignment` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_memberAssignment_Assignment` FOREIGN KEY (`idAssignment`) REFERENCES `assignment` (`idAssignment`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_assignment`
--

LOCK TABLES `member_assignment` WRITE;
/*!40000 ALTER TABLE `member_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `idMessage` varchar(20) NOT NULL,
  `title` text,
  `message` text,
  `idUser` varchar(20) NOT NULL,
  PRIMARY KEY (`idMessage`),
  KEY `fk_Message_User_idx` (`idUser`),
  CONSTRAINT `fk_Message_User` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node`
--

DROP TABLE IF EXISTS `node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node` (
  `idNode` varchar(40) NOT NULL,
  `idConcept` varchar(50) NOT NULL,
  `owner` varchar(20) NOT NULL,
  `loc` varchar(30) DEFAULT NULL,
  `key` int(11) NOT NULL,
  `text` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idNode`),
  KEY `fk_Node_Concet_idx` (`idConcept`),
  KEY `fk_Node_User_idx` (`owner`),
  CONSTRAINT `fk_Node_Concet` FOREIGN KEY (`idConcept`) REFERENCES `concept` (`idConcept`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Node_User` FOREIGN KEY (`owner`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node`
--

LOCK TABLES `node` WRITE;
/*!40000 ALTER TABLE `node` DISABLE KEYS */;
/*!40000 ALTER TABLE `node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationship`
--

DROP TABLE IF EXISTS `relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationship` (
  `idrelationship` varchar(80) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `idConceptMaps` varchar(30) DEFAULT NULL,
  `conceptFrom` varchar(50) NOT NULL,
  `conceptTo` varchar(50) NOT NULL,
  `idMemberAssignment` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idrelationship`),
  KEY `fk_relationship_Concept_idx` (`conceptFrom`),
  KEY `fk_relationship_MemberAssignment_idx` (`idMemberAssignment`),
  KEY `kf_relationship_ConceptMaps_idx` (`idConceptMaps`),
  KEY `fk_relationship_Concept2_idx` (`conceptTo`),
  CONSTRAINT `fk_relationship_Concept1` FOREIGN KEY (`conceptFrom`) REFERENCES `concept` (`idConcept`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_relationship_Concept2` FOREIGN KEY (`conceptTo`) REFERENCES `concept` (`idConcept`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_relationship_ConceptMaps` FOREIGN KEY (`idConceptMaps`) REFERENCES `conceptmaps` (`idConceptMaps`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_relationship_MemberAssignment` FOREIGN KEY (`idMemberAssignment`) REFERENCES `member_assignment` (`idmember_Assignment`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationship`
--

LOCK TABLES `relationship` WRITE;
/*!40000 ALTER TABLE `relationship` DISABLE KEYS */;
/*!40000 ALTER TABLE `relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `idRole` int(11) NOT NULL,
  `roleName` varchar(45) DEFAULT NULL,
  `notes` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idRole`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'admin','admin'),(2,'user','user');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `share`
--

DROP TABLE IF EXISTS `share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `share` (
  `idshare` varchar(20) NOT NULL,
  `idmember` varchar(20) DEFAULT NULL,
  `idConceptMaps` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idshare`),
  KEY `fk_share_User_idx` (`idmember`),
  KEY `fk_share_ConceptMaps_idx` (`idConceptMaps`),
  CONSTRAINT `fk_share_ConceptMaps` FOREIGN KEY (`idConceptMaps`) REFERENCES `conceptmaps` (`idConceptMaps`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_share_User` FOREIGN KEY (`idmember`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `share`
--

LOCK TABLES `share` WRITE;
/*!40000 ALTER TABLE `share` DISABLE KEYS */;
/*!40000 ALTER TABLE `share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `idUser` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `fullName` text,
  `dateBirth` date DEFAULT NULL,
  `mile` bit(1) DEFAULT NULL,
  `role` int(11) NOT NULL,
  `image` longblob,
  PRIMARY KEY (`idUser`),
  KEY `fk_User_Role_idx` (`role`),
  CONSTRAINT `fk_User_Role` FOREIGN KEY (`role`) REFERENCES `role` (`idRole`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('hmtri92@gmail.com','12345','Huỳnh Minh Trí','1992-05-10','\0',1,NULL);
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

-- Dump completed on 2014-11-11 21:42:36
