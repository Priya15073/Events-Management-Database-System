CREATE DATABASE  IF NOT EXISTS `events_info` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `events_info`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: events_info
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `Category_ID` int(11) NOT NULL,
  `Categ_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Category_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`Category_ID`, `Categ_Name`) VALUES (1,'Art'),(2,'Performing'),(3,'Dance'),(4,'Concert'),(5,'Meet'),(6,'Festival'),(7,'Conference');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `community`
--

DROP TABLE IF EXISTS `community`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `community` (
  `Community_ID` int(11) NOT NULL,
  `Comm_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Community_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community`
--

LOCK TABLES `community` WRITE;
/*!40000 ALTER TABLE `community` DISABLE KEYS */;
INSERT INTO `community` (`Community_ID`, `Comm_Name`) VALUES (1,'ABC'),(2,'DEF'),(3,'XYZ'),(4,'4'),(5,'5'),(6,'6'),(7,'7');
/*!40000 ALTER TABLE `community` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `Event_ID` int(11) NOT NULL,
  `E_Name` varchar(45) NOT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date NOT NULL,
  `Start_Age` int(11) NOT NULL,
  `End_Age` int(11) NOT NULL,
  `Capacity` int(11) NOT NULL DEFAULT '100',
  `Stat_ID` int(11) NOT NULL,
  `Org_ID` int(11) NOT NULL,
  `Ven_ID` int(11) NOT NULL,
  PRIMARY KEY (`Event_ID`),
  UNIQUE KEY `Event_ID_UNIQUE` (`Event_ID`),
  UNIQUE KEY `E_Name_UNIQUE` (`E_Name`),
  KEY `Stat_ID_idx` (`Stat_ID`),
  KEY `Org_ID_idx` (`Org_ID`),
  KEY `Ven_ID_idx` (`Ven_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` (`Event_ID`, `E_Name`, `Start_Date`, `End_Date`, `Start_Age`, `End_Age`, `Capacity`, `Stat_ID`, `Org_ID`, `Ven_ID`) VALUES (1,'A_event','2018-05-10','2018-05-12',12,18,1100,4,1,1),(2,'B_event','2018-06-02','2018-06-20',13,30,522,4,2,2),(3,'C_event','2018-07-01','2018-07-02',10,18,2000,4,3,3),(4,'D_event','2018-07-01','2018-07-10',20,30,5000,2,4,4),(5,'E_event','2018-06-14','2018-06-16',20,60,500,4,5,5),(6,'F_event','2018-04-20','2018-04-25',30,50,900,1,1,5),(7,'G_event','2018-04-01','2018-04-02',20,40,600,3,2,4),(8,'H_event','2018-05-15','2018-05-25',10,15,655,4,3,3),(9,'I_event','2018-04-20','2018-04-22',15,35,750,1,4,2),(10,'J_event','2018-05-31','2018-06-06',8,18,814,2,5,1),(11,'K_event','2018-07-02','2018-07-03',15,40,950,4,1,2),(12,'L_event','2018-05-27','2018-06-05',20,60,640,4,2,3),(13,'M_event','2018-02-28','2018-03-03',14,50,964,3,3,4),(14,'N_event','2018-03-25','2018-03-26',25,60,540,2,4,1),(15,'P_event','2018-03-15','2018-03-20',14,23,190,3,2,3);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofcategory`
--

DROP TABLE IF EXISTS `ofcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ofcategory` (
  `CategoryID` int(11) NOT NULL,
  `EventID` int(11) NOT NULL,
  PRIMARY KEY (`CategoryID`,`EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofcategory`
--

LOCK TABLES `ofcategory` WRITE;
/*!40000 ALTER TABLE `ofcategory` DISABLE KEYS */;
INSERT INTO `ofcategory` (`CategoryID`, `EventID`) VALUES (1,1),(1,14),(2,2),(2,6),(2,8),(2,11),(3,3),(3,9),(3,12),(4,4),(4,10),(4,12),(5,5),(5,15),(6,6),(6,13),(7,7);
/*!40000 ALTER TABLE `ofcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofcommunity`
--

DROP TABLE IF EXISTS `ofcommunity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ofcommunity` (
  `CommunityID` int(11) NOT NULL,
  `Event__ID` int(11) NOT NULL,
  PRIMARY KEY (`CommunityID`,`Event__ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofcommunity`
--

LOCK TABLES `ofcommunity` WRITE;
/*!40000 ALTER TABLE `ofcommunity` DISABLE KEYS */;
INSERT INTO `ofcommunity` (`CommunityID`, `Event__ID`) VALUES (1,1),(1,3),(1,6),(1,7),(1,13),(1,14),(2,2),(2,5),(2,6),(2,8),(2,11),(2,15),(3,2),(3,3),(3,4),(3,5),(3,9),(3,10);
/*!40000 ALTER TABLE `ofcommunity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organiser`
--

DROP TABLE IF EXISTS `organiser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organiser` (
  `Organiser_ID` int(11) NOT NULL,
  `O_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Organiser_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organiser`
--

LOCK TABLES `organiser` WRITE;
/*!40000 ALTER TABLE `organiser` DISABLE KEYS */;
INSERT INTO `organiser` (`Organiser_ID`, `O_Name`) VALUES (1,'Sam'),(2,'Tom'),(3,'Harry'),(4,'Ron'),(5,'Jane');
/*!40000 ALTER TABLE `organiser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `Status_ID` int(11) NOT NULL,
  `S_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Status_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` (`Status_ID`, `S_Name`) VALUES (1,'Active'),(2,'Cancelled'),(3,'Completed'),(4,'Pending');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venue`
--

DROP TABLE IF EXISTS `venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venue` (
  `VenueID` int(11) NOT NULL,
  `V_Name` varchar(45) NOT NULL,
  `Address` longtext NOT NULL,
  PRIMARY KEY (`VenueID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue`
--

LOCK TABLES `venue` WRITE;
/*!40000 ALTER TABLE `venue` DISABLE KEYS */;
INSERT INTO `venue` (`VenueID`, `V_Name`, `Address`) VALUES (1,'Delhi','Jantar Mantar,New Delhi'),(2,'Mumbai','Prithvi Theatre,Mumbai'),(3,'Chennai','Marina Beach,Chennai'),(4,'Delhi','Pragati Maidan,New Delhi'),(5,'Mumbai','Taj Mahal Palace,Mumbai');
/*!40000 ALTER TABLE `venue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-21  1:59:17
