



-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: FBTRTest
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
-- Table structure for table `Difficulty`
--

DROP TABLE IF EXISTS `Difficulty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Difficulty` (
                              `id` int(11) NOT NULL AUTO_INCREMENT,
                              `name` varchar(255) DEFAULT NULL,
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Difficulty`
--

LOCK TABLES `Difficulty` WRITE;
/*!40000 ALTER TABLE `Difficulty` DISABLE KEYS */;
/*!40000 ALTER TABLE `Difficulty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroomingType`
--

DROP TABLE IF EXISTS `GroomingType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroomingType` (
                                `id` int(11) NOT NULL AUTO_INCREMENT,
                                `name` varchar(255) DEFAULT NULL,
                                PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroomingType`
--

LOCK TABLES `GroomingType` WRITE;
/*!40000 ALTER TABLE `GroomingType` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroomingType` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Location`;
CREATE TABLE `Location` (
                            `id` int(11) NOT NULL AUTO_INCREMENT,
                            `address1` varchar(120) DEFAULT NULL,
                            `address2` varchar(120) DEFAULT NULL,
                            `city` varchar(120) DEFAULT NULL,
                            `state` varchar(2) DEFAULT NULL,
                            `postalcode` varchar(16) DEFAULT NULL,
                            `lat` decimal(9,6) DEFAULT NULL,
                            `lon` decimal(9,6) DEFAULT NULL,
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Location` WRITE;

UNLOCK TABLES;

DROP TABLE IF EXISTS `Role`;
CREATE TABLE `Role` (
                        `id` int(11) NOT NULL AUTO_INCREMENT,
                        `createDate` datetime DEFAULT NULL,
                        `role` varchar(255) DEFAULT NULL,
                        `updateDate` datetime DEFAULT NULL,
                        `userName` varchar(255) NOT NULL,
                        PRIMARY KEY (`id`),
                        UNIQUE KEY `userName_UNIQUE` (`userName`),
                        CONSTRAINT `Role_User_userName_fk` FOREIGN KEY (`userName`) REFERENCES `User` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

LOCK TABLES `Role` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `Trail`;
CREATE TABLE `Trail` (
                         `id` int(11) NOT NULL AUTO_INCREMENT,
                         `createDate` datetime DEFAULT NULL,
                         `description` varchar(255) DEFAULT NULL,
                         `length` decimal(19,2) DEFAULT NULL,
                         `lengthUnits` varchar(255) DEFAULT NULL,
                         `name` varchar(255) DEFAULT NULL,
                         `trailMap` varchar(255) DEFAULT NULL,
                         `updateDate` datetime DEFAULT NULL,
                         `website` varchar(255) DEFAULT NULL,
                         `difficulty` int(11) DEFAULT NULL,
                         `type` int(11) DEFAULT NULL,
                         PRIMARY KEY (`id`),
                         KEY `Trail_Difficulty_id_fk` (`difficulty`),
                         KEY `Trail_TrailType_id_fk` (`type`),
                         CONSTRAINT `Trail_Difficulty_id_fk` FOREIGN KEY (`difficulty`) REFERENCES `Difficulty` (`id`),
                         CONSTRAINT `Trail_TrailType_id_fk` FOREIGN KEY (`type`) REFERENCES `TrailType` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Trail` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `TrailHead`;
CREATE TABLE `TrailHead` (
                             `name` varchar(100) DEFAULT NULL,
                             `id` int(11) NOT NULL AUTO_INCREMENT,
                             `location` int(11) DEFAULT NULL,
                             `description` varchar(1000) DEFAULT NULL,
                             `createDate` datetime DEFAULT NULL,
                             `updateDate` datetime DEFAULT NULL,
                             `trail` int(11) DEFAULT NULL,
                             PRIMARY KEY (`id`),
                             UNIQUE KEY `TrailHead_id_uindex` (`id`),
                             KEY `TrailHead_Trail_id_fk` (`trail`),
                             KEY `TrailHead_Location_id_fk` (`location`),
                             CONSTRAINT `TrailHead_Location_id_fk` FOREIGN KEY (`location`) REFERENCES `Location` (`id`),
                             CONSTRAINT `TrailHead_Trail_id_fk` FOREIGN KEY (`trail`) REFERENCES `Trail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `TrailHead` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `TrailReport`;
CREATE TABLE `TrailReport` (
                               `id` int(11) NOT NULL AUTO_INCREMENT,
                               `comments` varchar(1000) DEFAULT NULL,
                               `conditions` varchar(1000) DEFAULT NULL,
                               `createDate` varchar(45) NOT NULL,
                               `rideDate` varchar(45) DEFAULT NULL,
                               `updateDate` varchar(45) NOT NULL,
                               `grooming` int(11) DEFAULT NULL,
                               `trail` int(11) DEFAULT NULL,
                               `user` int(11) DEFAULT NULL,
                               PRIMARY KEY (`id`),
                               KEY `TrailReport_GroomingType_id_fk` (`grooming`),
                               KEY `TrailReport_Trail_id_fk` (`trail`),
                               KEY `TrailReport_User_id_fk` (`user`),
                               CONSTRAINT `TrailReport_GroomingType_id_fk` FOREIGN KEY (`grooming`) REFERENCES `GroomingType` (`id`),
                               CONSTRAINT `TrailReport_Trail_id_fk` FOREIGN KEY (`trail`) REFERENCES `Trail` (`id`),
                               CONSTRAINT `TrailReport_User_id_fk` FOREIGN KEY (`user`) REFERENCES `User` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `TrailReport` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `TrailType`;
CREATE TABLE `TrailType` (
                             `id` int(11) NOT NULL AUTO_INCREMENT,
                             `name` varchar(45) DEFAULT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `TrailType` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
                        `id` int(11) NOT NULL AUTO_INCREMENT,
                        `createDate` datetime DEFAULT NULL,
                        `email` varchar(255) DEFAULT NULL,
                        `firstName` varchar(255) DEFAULT NULL,
                        `lastName` varchar(255) DEFAULT NULL,
                        `password` varchar(255) DEFAULT NULL,
                        `updateDate` datetime DEFAULT NULL,
                        `userName` varchar(255) NOT NULL,
                        PRIMARY KEY (`id`),
                        UNIQUE KEY `userName_UNIQUE` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

LOCK TABLES `User` WRITE;
UNLOCK TABLES;
