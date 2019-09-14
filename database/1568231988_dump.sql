-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: adMe
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns` (
  `campaignID` int(11) NOT NULL AUTO_INCREMENT,
  `companyID` int(11) NOT NULL,
  `campaignTitle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preferredContentType` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirements` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `runSpace` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rewards` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submissionsReceived` int(11) NOT NULL,
  `campaignContent` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timeCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`campaignID`),
  KEY `companyID` (`companyID`),
  CONSTRAINT `campaigns_ibfk_1` FOREIGN KEY (`companyID`) REFERENCES `companies` (`companyID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
INSERT INTO `campaigns` VALUES (1,1,'Targetti','Targetti make an add for this new pasta brilliance ','video','Just do it','MySpace','$1',0,'','2019-09-10 23:39:02'),(2,1,'Sock Galore','Give me the socks!','video','B.A. in Marketing','Facebook','$1',0,'/mnt/c/Users/smcgr/lfz/c619_adme/server/public/uploads/2019-09-07T18:38:23.852Znodejs.png','2019-09-10 23:39:02'),(3,1,'Peanuts','Peanut Sauce','video','Must be a video that shows love for peanuts','MySpace','$4',1,'/home/dev/lfz/c619_adme/server/public/uploads/2019-09-10T19:24:40.290Zkool-aid.jpg','2019-09-10 23:39:02'),(4,1,'Sauced','I have too much sauce inside me','video','Make a video with some sauce for me sounding saucy sauce yeah','GrubHub','$7.00',0,'/home/dev/lfz/c619_adme/server/public/uploads/2019-09-10T23:55:21.303Zlemon-lime.png','2019-09-10 23:55:21');
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `companyID` int(11) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companyLogo` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companyType` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`companyID`),
  UNIQUE KEY `companyName` (`companyName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Target','https://www.aiga.org/globalassets/aiga/content/inspiration/corporate-awards/2006-target/target_header.png','Super Store');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creators`
--

DROP TABLE IF EXISTS `creators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creators` (
  `creatorID` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profilePicture` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`creatorID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creators`
--

LOCK TABLES `creators` WRITE;
/*!40000 ALTER TABLE `creators` DISABLE KEYS */;
INSERT INTO `creators` VALUES (1,'daniel-paschal@gmail.com','Daniel','Paschal','My name is Daniel Wayne Paschal and I am the best server & client engineer to ever bless this planet.','https://learningfuze.com/blog/wp-content/uploads/2014/12/Dan420x280.jpg'),(2,'timhorist@learnandfuze.com','Timothy','Horist Jr','I am LearningFuze','https://media.licdn.com/dms/image/C5603AQFCMXpqJ3VSSw/profile-displayphoto-shrink_800_800/0?e=1573689600&v=beta&t=m8JOm-rhB5GwAo3Xlvq3XLt9jx3gXnLObxu9dn6LG7Q');
/*!40000 ALTER TABLE `creators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests` (
  `requestID` int(11) NOT NULL AUTO_INCREMENT,
  `companyID` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preferredContentType` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirements` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `runSpace` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rewards` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submissionsReceived` int(11) NOT NULL,
  `campaignContent` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`requestID`),
  KEY `companyID` (`companyID`),
  CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`companyID`) REFERENCES `companies` (`companyID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
INSERT INTO `requests` VALUES (1,1,'Targetti','Targetti make an add for this new pasta brilliance ','video','Just do it','MySpace','$1',0,''),(2,1,'Sock Galore','Give me the socks!','video','B.A. in Marketing','Facebook','$1',0,'/mnt/c/Users/smcgr/lfz/c619_adme/server/public/uploads/2019-09-07T18:38:23.852Znodejs.png'),(3,1,'Peanuts','Peanut Sauce','video','Must be a video that shows love for peanuts','MySpace','$4',1,'/home/dev/lfz/c619_adme/server/public/uploads/2019-09-10T19:24:40.290Zkool-aid.jpg');
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submissions`
--

DROP TABLE IF EXISTS `submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submissions` (
  `submissionID` int(11) NOT NULL AUTO_INCREMENT,
  `creatorID` int(11) NOT NULL,
  `typeOfContent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submissionThumbnail` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submissionContent` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campaignID` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `submissionDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`submissionID`),
  KEY `creatorID` (`creatorID`),
  KEY `requestID` (`campaignID`),
  CONSTRAINT `submissions_ibfk_1` FOREIGN KEY (`creatorID`) REFERENCES `creators` (`creatorID`),
  CONSTRAINT `submissions_ibfk_2` FOREIGN KEY (`campaignID`) REFERENCES `campaigns` (`campaignID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submissions`
--

LOCK TABLES `submissions` WRITE;
/*!40000 ALTER TABLE `submissions` DISABLE KEYS */;
INSERT INTO `submissions` VALUES (1,2,'video','/home/dev/lfz/c619_adme/server/public/uploads/2019-09-10T23:45:30.440Z0219-Q40A9816-1.jpg','/home/dev/lfz/c619_adme/server/public/uploads/2019-09-10T23:45:29.670ZSampleVideo_1280x720_30mb.mp4','Owl and Bunny',1,0,'The Owl is not kind at all. It is very mean I hate him.','2019-09-10 23:45:30'),(2,2,'video','/home/dev/lfz/c619_adme/server/public/uploads/2019-09-10T23:46:26.621Z0219-Q40A9816-1.jpg','/home/dev/lfz/c619_adme/server/public/uploads/2019-09-10T23:46:25.850ZSampleVideo_1280x720_30mb.mp4','Owl and Bunny 2',1,0,'The Second Owl is not kind at all. It is very mean I hate him.','2019-09-10 23:46:26'),(3,2,'video','/home/dev/lfz/c619_adme/server/public/uploads/2019-09-10T23:46:44.589Z0219-Q40A9816-1.jpg','/home/dev/lfz/c619_adme/server/public/uploads/2019-09-10T23:46:43.883ZSampleVideo_1280x720_30mb.mp4','Owl and Bunny 3',1,0,'The Third Owl is not kind at all. It is very mean I hate him.','2019-09-10 23:46:44'),(4,2,'video','/home/dev/lfz/c619_adme/server/public/uploads/2019-09-10T23:46:59.467Z0219-Q40A9816-1.jpg','/home/dev/lfz/c619_adme/server/public/uploads/2019-09-10T23:46:58.737ZSampleVideo_1280x720_30mb.mp4','Owl and Bunny 4',1,0,'The Fourth Owl is not kind at all. It is very mean I hate him.','2019-09-10 23:46:59');
/*!40000 ALTER TABLE `submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `winningAds`
--

DROP TABLE IF EXISTS `winningAds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `winningAds` (
  `submissionID` int(11) NOT NULL,
  KEY `submissionID` (`submissionID`),
  CONSTRAINT `winningAds_ibfk_1` FOREIGN KEY (`submissionID`) REFERENCES `submissions` (`submissionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `winningAds`
--

LOCK TABLES `winningAds` WRITE;
/*!40000 ALTER TABLE `winningAds` DISABLE KEYS */;
/*!40000 ALTER TABLE `winningAds` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-11 12:59:48
