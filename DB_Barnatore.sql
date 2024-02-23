-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: db_barnatore
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `barna_kategoria`
--

DROP TABLE IF EXISTS `barna_kategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `barna_kategoria` (
  `barna_id` int DEFAULT NULL,
  `kategoria_id` int DEFAULT NULL,
  KEY `fk_barna_kategoria_barna_id_idx` (`barna_id`),
  KEY `fk_barna_kategoria_kategoria_id_idx` (`kategoria_id`),
  CONSTRAINT `fk_barna_kategoria_barna_id` FOREIGN KEY (`barna_id`) REFERENCES `barnat` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_barna_kategoria_kategoria_id` FOREIGN KEY (`kategoria_id`) REFERENCES `kategoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barna_kategoria`
--

LOCK TABLES `barna_kategoria` WRITE;
/*!40000 ALTER TABLE `barna_kategoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `barna_kategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barnat`
--

DROP TABLE IF EXISTS `barnat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `barnat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Emri` varchar(45) DEFAULT NULL,
  `Kategoria` varchar(45) DEFAULT NULL,
  `Sasia` int DEFAULT NULL,
  `Cmimi` int DEFAULT NULL,
  `Data_e_skadimit` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barnat`
--

LOCK TABLES `barnat` WRITE;
/*!40000 ALTER TABLE `barnat` DISABLE KEYS */;
INSERT INTO `barnat` VALUES (89,'Anallgin','Analgjetik',100,40,'2028-12-05'),(90,'Cefaleksin','Antibiotik',50,120,'2026-11-01'),(91,'Vitamin C','Vitamina',80,250,'2025-10-05'),(92,'Amosikllav','Antibiotik',30,150,'2027-02-02'),(93,'Paracetamoll','Analgjetik',40,50,'2028-05-10'),(94,'Vitamina B6','Vitamina',20,100,'2026-01-08');
/*!40000 ALTER TABLE `barnat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategoria`
--

DROP TABLE IF EXISTS `kategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Emri` varchar(45) NOT NULL,
  `Sasia` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategoria`
--

LOCK TABLES `kategoria` WRITE;
/*!40000 ALTER TABLE `kategoria` DISABLE KEYS */;
INSERT INTO `kategoria` VALUES (1,'Analgjetik',140),(2,'Antibiotik',80),(3,'Vitamina',100);
/*!40000 ALTER TABLE `kategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menaxher_punëtorët`
--

DROP TABLE IF EXISTS `menaxher_punëtorët`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menaxher_punëtorët` (
  `menaxher_id` int NOT NULL,
  `punëtorët_id` int NOT NULL,
  KEY `fk_menaxher_punëtorët_menaxher_id_idx` (`menaxher_id`),
  KEY `fk_menaxher_punëtorët_punëtorët_id_idx` (`punëtorët_id`),
  CONSTRAINT `fk_menaxher_punëtorët_menaxher_id` FOREIGN KEY (`menaxher_id`) REFERENCES `menaxheri` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_menaxher_punëtorët_punëtorët_id` FOREIGN KEY (`punëtorët_id`) REFERENCES `punëtorët` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menaxher_punëtorët`
--

LOCK TABLES `menaxher_punëtorët` WRITE;
/*!40000 ALTER TABLE `menaxher_punëtorët` DISABLE KEYS */;
/*!40000 ALTER TABLE `menaxher_punëtorët` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menaxheri`
--

DROP TABLE IF EXISTS `menaxheri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menaxheri` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Emri` varchar(45) NOT NULL,
  `Mbiemri` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Email_index` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menaxheri`
--

LOCK TABLES `menaxheri` WRITE;
/*!40000 ALTER TABLE `menaxheri` DISABLE KEYS */;
INSERT INTO `menaxheri` VALUES (1,'Fatime','Saliji','fatime_hotmail.com');
/*!40000 ALTER TABLE `menaxheri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacient`
--

DROP TABLE IF EXISTS `pacient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Emri` varchar(45) NOT NULL,
  `Mbiemri` varchar(45) NOT NULL,
  `Numri_amë` varchar(45) NOT NULL,
  `Mosha` int NOT NULL,
  `Gjinia` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacient`
--

LOCK TABLES `pacient` WRITE;
/*!40000 ALTER TABLE `pacient` DISABLE KEYS */;
INSERT INTO `pacient` VALUES (1,'Sara','Ajeti','1234567892145',25,'Femër'),(2,'Bunjamin','Sinani','2569871236589',40,'Mashkull'),(3,'Alban','Sulejmani','1567823698521',36,'Mashkull'),(4,'Blerta','Sahiti','1523697896523',24,'Femer'),(5,'Hylja','Ajruli','1368942589632',50,'Femer');
/*!40000 ALTER TABLE `pacient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacient_recepti`
--

DROP TABLE IF EXISTS `pacient_recepti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacient_recepti` (
  `pacient_id` int DEFAULT NULL,
  `recept_id` int DEFAULT NULL,
  `pagesa_id` int DEFAULT NULL,
  KEY `fk_pacient_recepti_pacient_id_idx` (`pacient_id`),
  KEY `fk_pacient_recepti_recept_id_idx` (`recept_id`),
  CONSTRAINT `fk_pacient_recepti_pacient_id` FOREIGN KEY (`pacient_id`) REFERENCES `pacienti` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_pacient_recepti_recept_id` FOREIGN KEY (`recept_id`) REFERENCES `recepti` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacient_recepti`
--

LOCK TABLES `pacient_recepti` WRITE;
/*!40000 ALTER TABLE `pacient_recepti` DISABLE KEYS */;
/*!40000 ALTER TABLE `pacient_recepti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacienti`
--

DROP TABLE IF EXISTS `pacienti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacienti` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Emri` varchar(45) NOT NULL,
  `Mbiemri` varchar(45) NOT NULL,
  `Numri_amë` varchar(45) NOT NULL,
  `Mosha` int NOT NULL,
  `Gjinia` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacienti`
--

LOCK TABLES `pacienti` WRITE;
/*!40000 ALTER TABLE `pacienti` DISABLE KEYS */;
INSERT INTO `pacienti` VALUES (4,'Arta','Iseni','1234567891236',25,'Femër'),(5,'Bunjamin','Sinani','1254789652368',40,'Mashkull'),(6,'Shpresa','Nuredini','1235874123658',50,'Femër');
/*!40000 ALTER TABLE `pacienti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagesa`
--

DROP TABLE IF EXISTS `pagesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagesa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Mënyra e pagesës` enum('card','cash') NOT NULL DEFAULT 'cash',
  `Data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  CONSTRAINT `fr_pagesa_id` FOREIGN KEY (`id`) REFERENCES `punëtorët` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagesa`
--

LOCK TABLES `pagesa` WRITE;
/*!40000 ALTER TABLE `pagesa` DISABLE KEYS */;
INSERT INTO `pagesa` VALUES (1,'cash','2024-02-23 13:30:38');
/*!40000 ALTER TABLE `pagesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `porosia`
--

DROP TABLE IF EXISTS `porosia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `porosia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Kategoria` varchar(45) NOT NULL,
  `Sasia` int NOT NULL,
  `Totali` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `porosia`
--

LOCK TABLES `porosia` WRITE;
/*!40000 ALTER TABLE `porosia` DISABLE KEYS */;
INSERT INTO `porosia` VALUES (1,'Analgjetik',140,6000),(2,'Antibiotik',80,10500),(3,'Vitamina',100,22000);
/*!40000 ALTER TABLE `porosia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `punëtori_porosia`
--

DROP TABLE IF EXISTS `punëtori_porosia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `punëtori_porosia` (
  `punëtorët_id` int DEFAULT NULL,
  `porosia_id` int DEFAULT NULL,
  KEY `fk_punëtori_porosia_punëtorët_id_idx` (`punëtorët_id`),
  KEY `fk_punëtori_porosia_porosia_id_idx` (`porosia_id`),
  CONSTRAINT `fk_punëtori_porosia_porosia_id` FOREIGN KEY (`porosia_id`) REFERENCES `porosia` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_punëtori_porosia_punëtorët_id` FOREIGN KEY (`punëtorët_id`) REFERENCES `punëtorët` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punëtori_porosia`
--

LOCK TABLES `punëtori_porosia` WRITE;
/*!40000 ALTER TABLE `punëtori_porosia` DISABLE KEYS */;
/*!40000 ALTER TABLE `punëtori_porosia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `punëtorë_barna`
--

DROP TABLE IF EXISTS `punëtorë_barna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `punëtorë_barna` (
  `punëtorë_id` int DEFAULT NULL,
  `barna_id` int DEFAULT NULL,
  KEY `fk_punëtorë_barna_punëtorë_id_idx` (`punëtorë_id`),
  KEY `fk_punëtorë_barna_barna_id_idx` (`barna_id`),
  CONSTRAINT `fk_punëtorë_barna_barna_id` FOREIGN KEY (`barna_id`) REFERENCES `barnat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_punëtorë_barna_punëtorë_id` FOREIGN KEY (`punëtorë_id`) REFERENCES `punëtorët` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punëtorë_barna`
--

LOCK TABLES `punëtorë_barna` WRITE;
/*!40000 ALTER TABLE `punëtorë_barna` DISABLE KEYS */;
/*!40000 ALTER TABLE `punëtorë_barna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `punëtorë_pacient`
--

DROP TABLE IF EXISTS `punëtorë_pacient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `punëtorë_pacient` (
  `punëtorë_id` int DEFAULT NULL,
  `pacient_id` int DEFAULT NULL,
  KEY `fk_punëtorë_pacient_punëtorë_idt_id_idx` (`punëtorë_id`),
  KEY `fk_pacient_barna_pacient_id_idx` (`pacient_id`),
  CONSTRAINT `fk_punëtorë_pacient_pacient_id` FOREIGN KEY (`pacient_id`) REFERENCES `pacienti` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_punëtorë_pacient_punëtorë_id` FOREIGN KEY (`punëtorë_id`) REFERENCES `punëtorët` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punëtorë_pacient`
--

LOCK TABLES `punëtorë_pacient` WRITE;
/*!40000 ALTER TABLE `punëtorë_pacient` DISABLE KEYS */;
/*!40000 ALTER TABLE `punëtorë_pacient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `punëtorë_recept`
--

DROP TABLE IF EXISTS `punëtorë_recept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `punëtorë_recept` (
  `punëtorë_id` int DEFAULT NULL,
  `recept_id` int DEFAULT NULL,
  KEY `fk_punëtorë_recept_punëtorë_id_idx` (`punëtorë_id`),
  KEY `fk_punëtorë_recept_recept_id_idx` (`recept_id`),
  CONSTRAINT `fk_punëtorë_recept_punëtorë_id` FOREIGN KEY (`punëtorë_id`) REFERENCES `punëtorët` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_punëtorë_recept_recept_id` FOREIGN KEY (`recept_id`) REFERENCES `recepti` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punëtorë_recept`
--

LOCK TABLES `punëtorë_recept` WRITE;
/*!40000 ALTER TABLE `punëtorë_recept` DISABLE KEYS */;
/*!40000 ALTER TABLE `punëtorë_recept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `punëtorët`
--

DROP TABLE IF EXISTS `punëtorët`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `punëtorët` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Emri` varchar(45) NOT NULL,
  `Mbiemri` varchar(45) NOT NULL,
  `Adresa` varchar(45) NOT NULL,
  `Pozita` varchar(45) NOT NULL,
  `Rroga` int NOT NULL,
  `Email` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Emri_index` (`Emri`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punëtorët`
--

LOCK TABLES `punëtorët` WRITE;
/*!40000 ALTER TABLE `punëtorët` DISABLE KEYS */;
INSERT INTO `punëtorët` VALUES (1,'Shpresa','Nesimi','Nene Tereza,nr.','Farmacist',30000,'shpresa@hotmail.com'),(2,'Arta','Xhemaili','11 Tetori, nr.12','Farmacist',30000,'arta@live.com'),(3,'Liridona','Xhaferi','5 shtatori, nr.1','Teknik Farmacist',21000,'liridona@hotmail.com'),(4,'Arber','Tahiri','Ismail Qemajli, nr.53','Teknik Farmacist',21000,'arber@yahoo.com');
/*!40000 ALTER TABLE `punëtorët` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recepti`
--

DROP TABLE IF EXISTS `recepti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recepti` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Emri_i_barnave` varchar(45) NOT NULL,
  `Mënyra_e_përdorimit` varchar(45) NOT NULL,
  `Data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recepti`
--

LOCK TABLES `recepti` WRITE;
/*!40000 ALTER TABLE `recepti` DISABLE KEYS */;
INSERT INTO `recepti` VALUES (1,'Anallgin','2 herë','2024-02-29'),(2,'Paracetamoll','1 herë','2024-03-01'),(3,'Vitamina B6','1 herë','2024-02-27');
/*!40000 ALTER TABLE `recepti` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-23 21:07:24
