-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: practices
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CUSTOMERID` int NOT NULL,
  `FIRSTNAME` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `LASTNAME` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CITY` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `STATE` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ZIP` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`CUSTOMERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (101,'AENIJ','JINDANI','PORBANDAR','GUJARAT','360550'),(102,'MOHNISH','JINDANI','PORBANDAR','GUJARAT','360550'),(103,'ASHIK','PIRANI','HYDERABAD','TELANGANA','500001'),(104,'ARIF','KHETANI','HYDERABAD','TELANGANA','500016'),(105,'ROHIT','HAMDANI','KESHOD','GUJARAT','360001'),(106,'MANSI','JOSHI','MUMBAI','MH','400001');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `PRD_ID` int NOT NULL,
  `PRD_NAME` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `RECOMMENDED_PRICE` int DEFAULT NULL,
  `CATEGORY` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`PRD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'COLGATE',75,'TOOTHPASTE'),(2,'MAXFRESH',65,'TOOTHPASTE'),(3,'HIMALIYA',55,'FACEWASH'),(4,'GARNIER',60,'FACEWASH'),(5,'VLC',70,'FACEWASH');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `SALES_ID` int NOT NULL,
  `PRD_ID` int DEFAULT NULL,
  `CUST_ID` int DEFAULT NULL,
  `SALESPRICE` int DEFAULT NULL,
  `SALESDATE` date DEFAULT NULL,
  PRIMARY KEY (`SALES_ID`),
  KEY `PRD_ID` (`PRD_ID`),
  KEY `CUST_ID` (`CUST_ID`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`PRD_ID`) REFERENCES `product` (`PRD_ID`),
  CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUSTOMERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (401,2,104,100,'2020-12-09'),(402,5,103,120,'2020-10-25'),(403,1,101,90,'2022-03-11'),(404,5,102,100,'2022-03-17'),(405,2,102,120,'2022-08-10'),(406,3,106,205,'2022-12-05');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-16 17:21:27
