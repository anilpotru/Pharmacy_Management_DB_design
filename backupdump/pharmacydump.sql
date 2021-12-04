-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: pharmacy
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `BillSummary`
--

DROP TABLE IF EXISTS `BillSummary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BillSummary` (
  `BillID` int NOT NULL,
  `OrderID` int NOT NULL,
  `TotalAmount` int NOT NULL,
  `BillDate` timestamp NOT NULL,
  `PatientID` int NOT NULL,
  `PaymentType` varchar(32) NOT NULL,
  `TotalPaid` tinyint(1) NOT NULL,
  PRIMARY KEY (`BillID`),
  KEY `BillSummary_OrderSummary` (`OrderID`),
  KEY `BillSummary_Patient` (`PatientID`),
  KEY `index_billDate` (`BillDate`),
  CONSTRAINT `BillSummary_OrderSummary` FOREIGN KEY (`OrderID`) REFERENCES `OrderSummary` (`OrderID`),
  CONSTRAINT `BillSummary_Patient` FOREIGN KEY (`PatientID`) REFERENCES `Patient` (`PatientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BillSummary`
--

LOCK TABLES `BillSummary` WRITE;
/*!40000 ALTER TABLE `BillSummary` DISABLE KEYS */;
INSERT INTO `BillSummary` VALUES (12345,751,34,'2022-11-11 01:00:00',3,'Online',1),(12346,752,12,'2022-11-11 01:00:00',1,'Cheque',1),(12347,753,45,'2022-11-11 01:00:00',7,'Online',1),(12348,754,125,'2022-11-11 01:00:00',9,'Online',1),(12349,755,200,'2022-11-11 01:00:00',5,'Online',0),(12350,756,100,'2022-11-11 01:00:00',2,'Online',1);
/*!40000 ALTER TABLE `BillSummary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `Bills_Above_Average_TotalAmount`
--

DROP TABLE IF EXISTS `Bills_Above_Average_TotalAmount`;
/*!50001 DROP VIEW IF EXISTS `Bills_Above_Average_TotalAmount`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Bills_Above_Average_TotalAmount` AS SELECT 
 1 AS `BillID`,
 1 AS `TotalAmount`,
 1 AS `PatientID`,
 1 AS `TotalPaid`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Doctor`
--

DROP TABLE IF EXISTS `Doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Doctor` (
  `DoctorID` int NOT NULL,
  `FirstName` varchar(32) NOT NULL,
  `LastName` varchar(32) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `DoctorType` int NOT NULL,
  `Active` tinyint(1) NOT NULL,
  PRIMARY KEY (`DoctorID`),
  KEY `index_doctorType` (`DoctorType`),
  CONSTRAINT `Doctor_DoctorType` FOREIGN KEY (`DoctorType`) REFERENCES `DoctorType` (`DoctorType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Doctor`
--

LOCK TABLES `Doctor` WRITE;
/*!40000 ALTER TABLE `Doctor` DISABLE KEYS */;
INSERT INTO `Doctor` VALUES (1,'Sanjay','Gupta','Male',2,1),(2,'Mark','Hyman','Male',4,1),(3,'Ben','Carson','Male',1,0),(4,'Virginia','Apgar','Female',5,1),(5,'William','Frist','Male',6,1),(6,'Patch','Adams','Male',8,1),(7,'Jennifer','Ashton','Female',1,1),(8,'Howard','Dean','Male',2,0),(9,'Ron','Paul','Male',7,1),(10,'Atul','Gawande','Male',3,1),(11,'Anil','Potru','Male',6,1);
/*!40000 ALTER TABLE `Doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DoctorPrescription`
--

DROP TABLE IF EXISTS `DoctorPrescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DoctorPrescription` (
  `PrescriptionID` int NOT NULL,
  `PatientID` int NOT NULL,
  `DoctorID` int NOT NULL,
  `PrescriptionDate` timestamp NOT NULL,
  PRIMARY KEY (`PrescriptionID`),
  KEY `DoctorPrescription_Doctor` (`DoctorID`),
  KEY `DoctorPrescription_Patient` (`PatientID`),
  CONSTRAINT `DoctorPrescription_Doctor` FOREIGN KEY (`DoctorID`) REFERENCES `Doctor` (`DoctorID`),
  CONSTRAINT `DoctorPrescription_Patient` FOREIGN KEY (`PatientID`) REFERENCES `Patient` (`PatientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DoctorPrescription`
--

LOCK TABLES `DoctorPrescription` WRITE;
/*!40000 ALTER TABLE `DoctorPrescription` DISABLE KEYS */;
INSERT INTO `DoctorPrescription` VALUES (201,4,2,'2022-11-11 01:00:00'),(202,1,7,'2022-11-12 01:00:00'),(203,6,4,'2022-11-13 01:00:00'),(204,3,2,'2022-11-16 01:00:00'),(205,7,8,'2022-11-19 01:00:00'),(206,2,6,'2022-11-19 01:00:00'),(207,5,6,'2022-11-19 01:00:00');
/*!40000 ALTER TABLE `DoctorPrescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DoctorType`
--

DROP TABLE IF EXISTS `DoctorType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DoctorType` (
  `DoctorType` int NOT NULL,
  `Description` varchar(100) NOT NULL,
  PRIMARY KEY (`DoctorType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DoctorType`
--

LOCK TABLES `DoctorType` WRITE;
/*!40000 ALTER TABLE `DoctorType` DISABLE KEYS */;
INSERT INTO `DoctorType` VALUES (1,'Allergist/Immunologist'),(2,'Cardiologist'),(3,'Dermatologist'),(4,'Gastroenterologist'),(5,'Hematologist'),(6,'Neurologist'),(7,'Pathologist'),(8,'Physiatrist'),(9,'Radiologist'),(10,'Radiologist');
/*!40000 ALTER TABLE `DoctorType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MedicalStaffEmployee`
--

DROP TABLE IF EXISTS `MedicalStaffEmployee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MedicalStaffEmployee` (
  `MedicalStaffID` int NOT NULL,
  `FirstName` varchar(32) NOT NULL,
  `LastName` varchar(32) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `HiringDate` timestamp NOT NULL,
  `Role` varchar(32) NOT NULL,
  PRIMARY KEY (`MedicalStaffID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MedicalStaffEmployee`
--

LOCK TABLES `MedicalStaffEmployee` WRITE;
/*!40000 ALTER TABLE `MedicalStaffEmployee` DISABLE KEYS */;
INSERT INTO `MedicalStaffEmployee` VALUES (1001,'James','Smith','Abington','2020-11-11 01:00:00','Admin'),(1002,'Michael','Smith','Avon','2019-01-01 10:00:00','SuperAdmin'),(1003,'Robert','Smith','Bellingham','2018-05-18 10:00:00','Admin'),(1004,'Maria','Garcia','Brockton','2015-11-18 06:00:00','Admin'),(1005,'David','Smith','Chelmsford','2018-03-03 05:00:00','Admin'),(1006,'Maria','Rodriguez','Hadley','2020-11-05 12:00:00','SuperAdmin');
/*!40000 ALTER TABLE `MedicalStaffEmployee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MedicineStock`
--

DROP TABLE IF EXISTS `MedicineStock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MedicineStock` (
  `MedicineID` int NOT NULL,
  `MedicineName` varchar(100) NOT NULL,
  `BatchNumber` int NOT NULL,
  `MedicineManufacturer` varchar(100) NOT NULL,
  `StockQty` int NOT NULL,
  `Price` int NOT NULL,
  `ExpiryDate` timestamp NOT NULL,
  PRIMARY KEY (`MedicineID`),
  KEY `index_medicineName` (`MedicineName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MedicineStock`
--

LOCK TABLES `MedicineStock` WRITE;
/*!40000 ALTER TABLE `MedicineStock` DISABLE KEYS */;
INSERT INTO `MedicineStock` VALUES (110,'Vicodin',436578,'AstraZeneca',1200,32,'2022-11-18 11:00:00'),(111,'Albuterol',6576867,'Novartis',30,22,'2022-08-05 11:00:00'),(112,'Lisinopril',786987,'Merck',50,10,'2022-05-05 11:00:00'),(113,'Levothyroxine',34587534,'GlaxoSmithKline',200,5,'2022-05-20 11:00:00'),(114,'Gabapentin',6753453,'Johnson & Johnson',125,2,'2022-11-22 11:00:00'),(115,'Metformin',5346782,'AbbVie',80,1,'2022-12-03 11:00:00'),(116,'Lipitor',12345223,'Sanofi',56,12,'2023-04-04 11:00:00'),(117,'Amlodipine',5646783,'Bristol-Myers Squibb',70,15,'2023-02-06 11:00:00'),(118,'Omeprazole',7548662,'AstraZeneca',80,50,'2022-10-28 11:00:00'),(119,'Losartan',89706453,'AstraZeneca',20,100,'2024-11-11 11:00:00'),(120,'Paracetor',5435435,'AstraZeneca',45,100,'2025-11-11 11:00:00');
/*!40000 ALTER TABLE `MedicineStock` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `medicine_update_check` BEFORE UPDATE ON `MedicineStock` FOR EACH ROW BEGIN
INSERT INTO Medicine_Audit (MedicineID, MedicineName, StockQty, Price, ExpiryDate) VALUES (OLD.MedicineID, OLD.MedicineName, OLD.StockQty, OLD.Price, OLD.ExpiryDate);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Medicine_Audit`
--

DROP TABLE IF EXISTS `Medicine_Audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Medicine_Audit` (
  `MedicineID` int NOT NULL,
  `MedicineName` varchar(100) NOT NULL,
  `StockQty` int NOT NULL,
  `Price` int NOT NULL,
  `ExpiryDate` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Medicine_Audit`
--

LOCK TABLES `Medicine_Audit` WRITE;
/*!40000 ALTER TABLE `Medicine_Audit` DISABLE KEYS */;
INSERT INTO `Medicine_Audit` VALUES (120,'Paracetor',60,100,'2025-11-11 11:00:00'),(120,'Paracetor',50,100,'2025-11-11 11:00:00'),(110,'Vicodin',1200,30,'2022-11-18 11:00:00');
/*!40000 ALTER TABLE `Medicine_Audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderSummary`
--

DROP TABLE IF EXISTS `OrderSummary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderSummary` (
  `OrderID` int NOT NULL,
  `PrescriptionID` int NOT NULL,
  `OrderDate` timestamp NOT NULL,
  `MedicalStaffID` int NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `OrderSummary_DoctorPrescription` (`PrescriptionID`),
  KEY `OrderSummary_MedicalStaffEmployee` (`MedicalStaffID`),
  CONSTRAINT `OrderSummary_DoctorPrescription` FOREIGN KEY (`PrescriptionID`) REFERENCES `DoctorPrescription` (`PrescriptionID`),
  CONSTRAINT `OrderSummary_MedicalStaffEmployee` FOREIGN KEY (`MedicalStaffID`) REFERENCES `MedicalStaffEmployee` (`MedicalStaffID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderSummary`
--

LOCK TABLES `OrderSummary` WRITE;
/*!40000 ALTER TABLE `OrderSummary` DISABLE KEYS */;
INSERT INTO `OrderSummary` VALUES (751,201,'2022-11-12 01:00:00',1002),(752,202,'2022-11-13 01:00:00',1001),(753,203,'2022-11-14 01:00:00',1004),(754,204,'2022-11-15 01:00:00',1002),(755,205,'2022-11-18 01:00:00',1003),(756,206,'2022-11-18 01:00:00',1005);
/*!40000 ALTER TABLE `OrderSummary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patient`
--

DROP TABLE IF EXISTS `Patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Patient` (
  `PatientID` int NOT NULL,
  `FirstName` varchar(32) NOT NULL,
  `LastName` varchar(32) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Age` int NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL,
  PRIMARY KEY (`PatientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient`
--

LOCK TABLES `Patient` WRITE;
/*!40000 ALTER TABLE `Patient` DISABLE KEYS */;
INSERT INTO `Patient` VALUES (1,'Liam','Olivia','Female',36,'4164 Ritter Avenue','olivia23@egmail.com','(123) 456-7809'),(2,'Noah','Emma','Male',76,'3517 Musgrave Street','emma43@egmail.com','(123) 456-7809'),(3,'Oliver','Ava','Male',55,'2635 Perry Street','oliver@egmail.com','(123) 456-7809'),(4,'Elijah','Charlotte','Female',22,'1367 Strother Street','elijah@egmail.com','(123) 456-7809'),(5,'William','Sophia','Male',65,'3698 Elk Street','william3454@egmail.com','(123) 456-7809'),(6,'James','Amelia','Female',54,'4545 bd Street','jamesamelia23@egmail.com','(123) 456-7809'),(7,'Benjamin','Isabella','Male',34,'8734 brad Street','benjamin@egmail.com','(123) 456-7809'),(8,'Lucas','Mia','Male',45,'452 Disney Street','lucasmia@egmail.com','(123) 456-7809'),(9,'Henry','Evelynl','Male',47,'5498 Perry Street','henryevel@egmail.com','(123) 456-7809'),(10,'Alexander','Harper','Male',50,'9090 Musgrave Street','alexander@egmail.com','(123) 456-7809');
/*!40000 ALTER TABLE `Patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PrescriptionDetails`
--

DROP TABLE IF EXISTS `PrescriptionDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PrescriptionDetails` (
  `ID` int NOT NULL,
  `PrescriptionID` int NOT NULL,
  `MedicineID` int NOT NULL,
  `Quantity` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `PrescriptionDetails_DoctorPrescription` (`PrescriptionID`),
  KEY `PrescriptionDetails_MedicineStock` (`MedicineID`),
  CONSTRAINT `PrescriptionDetails_DoctorPrescription` FOREIGN KEY (`PrescriptionID`) REFERENCES `DoctorPrescription` (`PrescriptionID`),
  CONSTRAINT `PrescriptionDetails_MedicineStock` FOREIGN KEY (`MedicineID`) REFERENCES `MedicineStock` (`MedicineID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PrescriptionDetails`
--

LOCK TABLES `PrescriptionDetails` WRITE;
/*!40000 ALTER TABLE `PrescriptionDetails` DISABLE KEYS */;
INSERT INTO `PrescriptionDetails` VALUES (301,201,115,3),(302,202,112,1),(303,203,117,6),(304,204,116,2),(305,205,118,2),(306,206,114,1),(307,207,113,2);
/*!40000 ALTER TABLE `PrescriptionDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `Shortage_Medicine_Stock`
--

DROP TABLE IF EXISTS `Shortage_Medicine_Stock`;
/*!50001 DROP VIEW IF EXISTS `Shortage_Medicine_Stock`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Shortage_Medicine_Stock` AS SELECT 
 1 AS `MedicineID`,
 1 AS `MedicineName`,
 1 AS `MedicineManufacturer`,
 1 AS `StockQty`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `Bills_Above_Average_TotalAmount`
--

/*!50001 DROP VIEW IF EXISTS `Bills_Above_Average_TotalAmount`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Bills_Above_Average_TotalAmount` AS select `BillSummary`.`BillID` AS `BillID`,`BillSummary`.`TotalAmount` AS `TotalAmount`,`BillSummary`.`PatientID` AS `PatientID`,`BillSummary`.`TotalPaid` AS `TotalPaid` from `BillSummary` where (`BillSummary`.`TotalAmount` > (select avg(`BillSummary`.`TotalAmount`) from `BillSummary`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Shortage_Medicine_Stock`
--

/*!50001 DROP VIEW IF EXISTS `Shortage_Medicine_Stock`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Shortage_Medicine_Stock` AS select `MedicineStock`.`MedicineID` AS `MedicineID`,`MedicineStock`.`MedicineName` AS `MedicineName`,`MedicineStock`.`MedicineManufacturer` AS `MedicineManufacturer`,`MedicineStock`.`StockQty` AS `StockQty` from `MedicineStock` where (`MedicineStock`.`StockQty` < 60) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-04 21:50:17