-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: argbrokerdemo
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `registroactividad`
--

DROP TABLE IF EXISTS `registroactividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registroactividad` (
  `idRegistroActividad` int NOT NULL,
  `fechaActividad` date NOT NULL,
  `tipoActividad` varchar(30) NOT NULL,
  `descripcionActividad` varchar(30) NOT NULL,
  `idInversor` int DEFAULT NULL,
  `idOrden` int DEFAULT NULL,
  `idCuenta` int DEFAULT NULL,
  PRIMARY KEY (`idRegistroActividad`),
  KEY `idInversor` (`idInversor`),
  KEY `idOrden` (`idOrden`),
  KEY `idCuenta` (`idCuenta`),
  CONSTRAINT `registroactividad_ibfk_1` FOREIGN KEY (`idInversor`) REFERENCES `inversor` (`idInversor`),
  CONSTRAINT `registroactividad_ibfk_2` FOREIGN KEY (`idOrden`) REFERENCES `orden` (`idOrden`),
  CONSTRAINT `registroactividad_ibfk_3` FOREIGN KEY (`idCuenta`) REFERENCES `cuenta` (`idCuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registroactividad`
--

LOCK TABLES `registroactividad` WRITE;
/*!40000 ALTER TABLE `registroactividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `registroactividad` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-24 17:21:15
