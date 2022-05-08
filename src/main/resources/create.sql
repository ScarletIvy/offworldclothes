CREATE DATABASE  IF NOT EXISTS `oc` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `oc`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: oc
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `onlineorder`
--

DROP TABLE IF EXISTS `onlineorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `onlineorder` (
                               `id` int NOT NULL AUTO_INCREMENT,
                               `userId` int DEFAULT NULL,
                               `shippingAddress` varchar(255) DEFAULT NULL,
                               `total` varchar(255) DEFAULT NULL,
                               PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onlineorder`
--

LOCK TABLES `onlineorder` WRITE;
/*!40000 ALTER TABLE `onlineorder` DISABLE KEYS */;
INSERT INTO `onlineorder` VALUES (1,1,'none none none none','1'),(2,123123,'none none none none','1'),(3,1,'none none none none','1'),(4,1,'none none none none','1'),(5,1,'none none none none','1');
/*!40000 ALTER TABLE `onlineorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
                        `id` int NOT NULL AUTO_INCREMENT,
                        `firstName` varchar(255) DEFAULT NULL,
                        `lastName` varchar(255) DEFAULT NULL,
                        `email` varchar(255) DEFAULT NULL,
                        `password` varchar(255) DEFAULT NULL,
                        `userName` varchar(255) DEFAULT NULL,
                        `streetAddress` varchar(255) DEFAULT NULL,
                        `zipCode` varchar(255) DEFAULT NULL,
                        `city` varchar(255) DEFAULT NULL,
                        `state` varchar(255) DEFAULT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','Admin','admin@gmail.com','password','Admin','none','none','none','none'),(2,'asa','saas','as','as','as','as','as','as','as'),(3,'qw','qw','qw','qw','qw','qw','qw','qw','qw'),(4,'qw','qw','qw','qw','qw','qw','qw','qw','qw'),(5,'12','12','12','12','12','12','12','12','12'),(6,'wer','wer','wer','wer','wer','wer','wer','wer','wer'),(7,'qw','qw','qw','qw','qw','qw','qw','qw','qw'),(8,'no','no','no','no','no','no','no','no','no'),(9,'qwqw','qwqw','qwqw','qwqw','qwqw','qwqw','qwqw','qwqw','qwqw');
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

-- Dump completed on 2022-05-08 15:01:21
CREATE DATABASE  IF NOT EXISTS `octest` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `octest`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: octest
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `onlineorder`
--

DROP TABLE IF EXISTS `onlineorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `onlineorder` (
                               `id` int NOT NULL AUTO_INCREMENT,
                               `userId` int DEFAULT NULL,
                               `shippingAddress` varchar(255) DEFAULT NULL,
                               `total` varchar(255) DEFAULT NULL,
                               PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=553 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onlineorder`
--

LOCK TABLES `onlineorder` WRITE;
/*!40000 ALTER TABLE `onlineorder` DISABLE KEYS */;
INSERT INTO `onlineorder` VALUES (547,1,'test address','12'),(548,2,'test address 2','31'),(549,3,'test address 3','56'),(550,4,'test address 4','56'),(551,5,'test address 5','89'),(552,6,'test address 6','47');
/*!40000 ALTER TABLE `onlineorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
                        `id` int NOT NULL AUTO_INCREMENT,
                        `firstName` varchar(255) DEFAULT NULL,
                        `lastName` varchar(255) DEFAULT NULL,
                        `email` varchar(255) DEFAULT NULL,
                        `password` varchar(255) DEFAULT NULL,
                        `userName` varchar(255) DEFAULT NULL,
                        `streetAddress` varchar(255) DEFAULT NULL,
                        `zipCode` varchar(255) DEFAULT NULL,
                        `city` varchar(255) DEFAULT NULL,
                        `state` varchar(255) DEFAULT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=892 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (886,'test1','test1','test1','test1','test1','test1','test1','test1','test1'),(887,'test2','test2','test2','test2','test2','test2','test2','test2','test2'),(888,'test3','test3','test3','test3','test3','test3','test3','test3','test3'),(889,'test4','test4','test4','test4','test4','test4','test4','test4','test4'),(890,'test5','test5','test5','test5','test5','test5','test5','test5','test5'),(891,'test6','test6','test6','test6','test6','test6','test6','test6','test6');
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

-- Dump completed on 2022-05-08 15:01:21
