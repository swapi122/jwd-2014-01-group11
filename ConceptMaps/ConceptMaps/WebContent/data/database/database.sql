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
  `idConcept` varchar(20) NOT NULL,
  `name` varchar(45) NOT NULL,
  `docLink` varchar(45) NOT NULL,
  PRIMARY KEY (`idConcept`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concept`
--

LOCK TABLES `concept` WRITE;
/*!40000 ALTER TABLE `concept` DISABLE KEYS */;
/*!40000 ALTER TABLE `concept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conceptmaps`
--

DROP TABLE IF EXISTS `conceptmaps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conceptmaps` (
  `idConceptMaps` varchar(20) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `owner` varchar(45) NOT NULL,
  `dateCreate` date DEFAULT NULL,
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
/*!40000 ALTER TABLE `conceptmaps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concepts`
--

DROP TABLE IF EXISTS `concepts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `concepts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `class` longtext,
  `nodeDataArray` longtext,
  `linkDataArray` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concepts`
--

LOCK TABLES `concepts` WRITE;
/*!40000 ALTER TABLE `concepts` DISABLE KEYS */;
INSERT INTO `concepts` VALUES (1,'Computer','go.GraphLinksModel','[{\"loc\":\"172.61524999999997 51.019500000000036\",\"text\":\"Computer\",\"key\":-1},{\"loc\":\"348.39000000000004 117.96749999999999\",\"text\":\"mouse\",\"key\":-2},{\"loc\":\"107.659125 193.323375\",\"text\":\"keyboard\",\"key\":-3}]','[{\"from\":-1,\"to\":-3,\"text\":\"have\",\"points\":[213.83340408155436,90.99400832174688,202.95630018765152,129.3931614291198,186.76351404788983,163.53047468374578,165.88583740293524,193.41616654282413]},{\"from\":-1,\"to\":-2,\"text\":\"have\",\"points\":[263.9718143809846,82.81039833116819,293.98725759836157,90.7111210975327,324.4394698737729,103.12151714083356,354.78522940540734,121.04295492246652]}]'),(2,'Frient','go.GraphLinksModel','[{\"loc\":\"236.9999999999999 61.99999999999996\",\"text\":\"Minh Tri\",\"key\":-1},{\"loc\":\"146 153\",\"text\":\"Vu hung\",\"key\":-2},{\"loc\":\"70 1\",\"text\":\"ChÃ­ TÃ¢m\",\"key\":-3}]','[{\"from\":-3,\"to\":-1,\"text\":\"frient\",\"points\":[156.34860793153513,33.44092304802821,181.47137370098258,39.48033822087375,208.87543449690455,49.368009506415255,243.12693575392328,66.19948195330191]},{\"from\":-1,\"to\":-2,\"text\":\"frient\",\"points\":[266.2076796079783,106.6160817143602,253.92006328754425,127.42197708045084,238.8783709756519,143.06492633051812,222.04999828223367,153.92655470016737]}]'),(4,'abc','go.GraphLinksModel','[{\"loc\":\"95 68\",\"text\":\"New Concept\",\"key\":-1},{\"loc\":\"254 -46\",\"text\":\"New Concept\",\"key\":-2}]','[]'),(6,'11234','go.GraphLinksModel','[{\"loc\":\"121 36\",\"text\":\"New Concept\",\"key\":-1},{\"loc\":\"99 -34\",\"text\":\"New Concept\",\"key\":-2},{\"loc\":\"-1.157625000000003 122.70825000000002\",\"text\":\"New Concept\",\"key\":-3}]','[]'),(7,'424235','go.GraphLinksModel','[{\"loc\":\"97 51\",\"text\":\"New Concept\",\"key\":-1},{\"loc\":\"1.157625000000003 -65.984625\",\"text\":\"New Concept\",\"key\":-2},{\"loc\":\"135.34965970312504 209.05491993750007\",\"text\":\"New Concept\",\"key\":-3}]','[]'),(8,'424235','go.GraphLinksModel','[{\"loc\":\"62 76\",\"text\":\"New Concept\",\"key\":-1},{\"loc\":\"88 -28\",\"text\":\"New Concept\",\"key\":-2}]','[]'),(43,'cm','go.GraphLinksModel','[{\"loc\":\"71 35\",\"text\":\"New Concept\",\"key\":-1},{\"loc\":\"162 -63\",\"text\":\"New Concept\",\"key\":-2}]','[]'),(64,'dgdg','go.GraphLinksModel','[{\"loc\":\"218 111\",\"text\":\"New Concept\",\"key\":-1},{\"loc\":\"353 8\",\"text\":\"New Concept\",\"key\":-2}]','[]');
/*!40000 ALTER TABLE `concepts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link`
--

DROP TABLE IF EXISTS `link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link` (
  `idRelationship` varchar(20) NOT NULL,
  `from` varchar(20) NOT NULL,
  `to` varchar(20) NOT NULL,
  `point` varchar(200) DEFAULT NULL,
  `text` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idRelationship`,`from`,`to`),
  KEY `fk_link_node_idx` (`from`),
  KEY `fk_link_node_to_idx` (`to`),
  CONSTRAINT `fk_link_node_from` FOREIGN KEY (`from`) REFERENCES `node` (`idNode`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_link_node_to` FOREIGN KEY (`to`) REFERENCES `node` (`idNode`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_link_relationship` FOREIGN KEY (`idRelationship`) REFERENCES `relationship` (`idrelationship`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  `idNode` varchar(20) NOT NULL,
  `idConcept` varchar(20) NOT NULL,
  `owner` varchar(20) NOT NULL,
  `loc` varchar(30) DEFAULT NULL,
  `key` int(11) NOT NULL,
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
  `idrelationship` varchar(20) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `idConceptMaps` varchar(20) DEFAULT NULL,
  `concept1` varchar(20) NOT NULL,
  `concept2` varchar(20) NOT NULL,
  `idMemberAssignment` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idrelationship`),
  KEY `fk_relationship_Concept_idx` (`concept1`),
  KEY `fk_relationship_MemberAssignment_idx` (`idMemberAssignment`),
  KEY `kf_relationship_ConceptMaps_idx` (`idConceptMaps`),
  KEY `fk_relationship_Concept2_idx` (`concept2`),
  CONSTRAINT `fk_relationship_Concept1` FOREIGN KEY (`concept1`) REFERENCES `concept` (`idConcept`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_relationship_Concept2` FOREIGN KEY (`concept2`) REFERENCES `concept` (`idConcept`) ON DELETE NO ACTION ON UPDATE NO ACTION,
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

-- Dump completed on 2014-11-02 19:10:52
