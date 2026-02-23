/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.2.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: u25581288_dextech
-- ------------------------------------------------------
-- Server version	12.2.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `accessory`
--

DROP TABLE IF EXISTS `accessory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `accessory` (
  `AccessoryID` int(11) NOT NULL AUTO_INCREMENT,
  `AccessoryType` varchar(50) NOT NULL,
  `Brand` varchar(50) NOT NULL,
  PRIMARY KEY (`AccessoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessory`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `accessory` WRITE;
/*!40000 ALTER TABLE `accessory` DISABLE KEYS */;
INSERT INTO `accessory` VALUES
(1,'Mouse','Lenovo'),
(2,'Laptop Bag','Volcano'),
(3,'Keyboard','Dell'),
(4,'USB-C Hub','Anker'),
(5,'Laptop Stand','Targus'),
(6,'External Hard Drive','Seagate'),
(7,'Headset','HP'),
(8,'Wireless Mouse','Dell'),
(9,'Cooling Pad','Cooler Master'),
(10,'Monitor','Samsung');
/*!40000 ALTER TABLE `accessory` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `ClientID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `PhoneNumber` varchar(15) NOT NULL,
  `ClientType` enum('Buyer','Seller') NOT NULL,
  PRIMARY KEY (`ClientID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES
(1,'Tebello Mohohoma','tebellomohohoma03@gmail.com','0612632196','Buyer'),
(2,'Lerato Mokoena','lerato.m@gmail.com','0723456789','Buyer'),
(3,'Thabo Nkosi','thabo.nkosi@gmail.com','0812345678','Seller'),
(4,'Naledi Khumalo','naledi.k@gmail.com','0734567890','Buyer'),
(5,'Sipho Dlamini','sipho.d@gmail.com','0745678901','Buyer'),
(6,'Ayanda Zulu','ayanda.z@gmail.com','0823456789','Seller'),
(7,'Kabelo Ndlovu','kabelo.n@gmail.com','0834567890','Buyer'),
(8,'Boitumelo Seema','boitumelo.s@gmail.com','0845678901','Buyer'),
(9,'Neo Molefe','neo.m@gmail.com','0712345678','Buyer'),
(10,'Refilwe Tau','refilwe.t@gmail.com','0798765432','Seller'),
(11,'Mpho Sithole','mpho.s@gmail.com','0781234567','Buyer'),
(12,'Tshepo Radebe','tshepo.r@gmail.com','0765432109','Buyer'),
(13,'Karabo Maseko','karabo.m@gmail.com','0754321098','Seller'),
(14,'Nokuthula Mthembu','noku.m@gmail.com','0743210987','Buyer'),
(15,'Lungile Hadebe','lungile.h@gmail.com','0732109876','Buyer'),
(16,'Zanele Buthelezi','zanele.b@gmail.com','0721098765','Seller'),
(17,'Palesa Mabena','palesa.m@gmail.com','0710987654','Buyer'),
(18,'Sibusiso Mhlongo','sibusiso.m@gmail.com','0791122334','Buyer'),
(19,'Nandi Cele','nandi.c@gmail.com','0789988776','Seller'),
(20,'Tumelo Phiri','tumelo.p@gmail.com','0776655443','Buyer');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `laptop`
--

DROP TABLE IF EXISTS `laptop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `laptop` (
  `LaptopID` int(11) NOT NULL AUTO_INCREMENT,
  `Model` varchar(100) NOT NULL,
  `Brand` varchar(100) NOT NULL,
  `Specs` text DEFAULT NULL,
  `ConditionType` varchar(50) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`LaptopID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laptop`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `laptop` WRITE;
/*!40000 ALTER TABLE `laptop` DISABLE KEYS */;
INSERT INTO `laptop` VALUES
(1,'ThinkPad X1','Lenovo','16GB RAM, 512GB SSD','New',12000.00),
(2,'Inspiron 15','Dell','8GB RAM, 256GB SSD','Used',5500.00),
(3,'MacBook Air M1','Apple','8GB RAM, 256GB SSD','New',15000.00),
(4,'EliteBook 840','HP','16GB RAM, 512GB SSD','Refurbished',8000.00),
(5,'Aspire 5','Acer','8GB RAM, 1TB HDD','New',6000.00),
(6,'VivoBook 14','Asus','12GB RAM, 512GB SSD','New',7500.00),
(7,'Latitude 7490','Dell','16GB RAM, 512GB SSD','Used',7000.00),
(8,'Pavilion 15','HP','8GB RAM, 512GB SSD','New',6500.00),
(9,'IdeaPad 3','Lenovo','8GB RAM, 256GB SSD','New',5800.00),
(10,'MacBook Pro 13','Apple','16GB RAM, 512GB SSD','Used',18000.00),
(11,'Swift 3','Acer','16GB RAM, 512GB SSD','New',9000.00),
(12,'ZenBook 13','Asus','16GB RAM, 1TB SSD','New',11000.00),
(13,'ThinkPad T14','Lenovo','16GB RAM, 512GB SSD','Refurbished',9500.00),
(14,'Envy 13','HP','8GB RAM, 256GB SSD','Used',7200.00),
(15,'Surface Laptop 4','Microsoft','16GB RAM, 512GB SSD','New',14000.00),
(16,'thinkpad','lenovo','16gb ram','New',5000.00);
/*!40000 ALTER TABLE `laptop` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `laptop_accessory`
--

DROP TABLE IF EXISTS `laptop_accessory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `laptop_accessory` (
  `LaptopID` int(11) NOT NULL,
  `AccessoryID` int(11) NOT NULL,
  PRIMARY KEY (`LaptopID`,`AccessoryID`),
  KEY `AccessoryID` (`AccessoryID`),
  CONSTRAINT `1` FOREIGN KEY (`LaptopID`) REFERENCES `laptop` (`LaptopID`),
  CONSTRAINT `2` FOREIGN KEY (`AccessoryID`) REFERENCES `accessory` (`AccessoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laptop_accessory`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `laptop_accessory` WRITE;
/*!40000 ALTER TABLE `laptop_accessory` DISABLE KEYS */;
INSERT INTO `laptop_accessory` VALUES
(1,1),
(1,2),
(12,3),
(3,4),
(10,6),
(5,9),
(15,10);
/*!40000 ALTER TABLE `laptop_accessory` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `TransactionID` int(11) NOT NULL AUTO_INCREMENT,
  `ClientID` int(11) DEFAULT NULL,
  `TransactionType` varchar(50) DEFAULT NULL,
  `TransactionDate` date NOT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`TransactionID`),
  KEY `ClientID` (`ClientID`),
  CONSTRAINT `1` FOREIGN KEY (`ClientID`) REFERENCES `client` (`ClientID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES
(1,1,'Purchase','2025-01-05',12000.00),
(2,2,'Purchase','2025-01-10',5500.00),
(3,3,'Sale','2025-01-12',8000.00),
(4,4,'Purchase','2025-01-15',6000.00),
(5,5,'Accessory Purchase','2025-01-18',350.00),
(6,6,'Sale','2025-01-20',7500.00),
(7,7,'Purchase','2025-01-22',7000.00),
(8,8,'Purchase','2025-01-25',6500.00),
(9,9,'Accessory Purchase','2025-02-01',900.00),
(10,10,'Purchase','2025-02-05',18000.00),
(11,11,'Repair','2025-02-08',1200.00),
(12,12,'Purchase','2025-02-12',9000.00),
(13,13,'Sale','2025-02-15',9500.00),
(14,14,'Purchase','2025-02-18',7200.00),
(15,15,'Repair','2025-02-20',500.00),
(16,16,'Purchase','2025-02-22',14000.00),
(17,17,'Accessory Purchase','2025-02-25',400.00),
(18,18,'Purchase','2025-03-01',11000.00),
(19,19,'Repair','2025-03-05',700.00),
(20,20,'Purchase','2025-03-10',5800.00);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-02-22 21:35:12
