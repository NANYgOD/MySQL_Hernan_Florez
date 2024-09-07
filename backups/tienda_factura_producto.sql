-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: tienda
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
-- Table structure for table `factura_producto`
--

DROP TABLE IF EXISTS `factura_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura_producto` (
  `idfactura_producto` int NOT NULL AUTO_INCREMENT,
  `cantidad` int DEFAULT NULL,
  `idproducto` int DEFAULT NULL,
  `idfactura` int DEFAULT NULL,
  PRIMARY KEY (`idfactura_producto`),
  KEY `idproducto` (`idproducto`),
  KEY `idfactura` (`idfactura`),
  CONSTRAINT `factura_producto_ibfk_1` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`),
  CONSTRAINT `factura_producto_ibfk_2` FOREIGN KEY (`idfactura`) REFERENCES `factura` (`idfactura`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_producto`
--

LOCK TABLES `factura_producto` WRITE;
/*!40000 ALTER TABLE `factura_producto` DISABLE KEYS */;
INSERT INTO `factura_producto` VALUES (1,1,1,1),(2,2,2,2),(3,2,3,2),(4,3,4,3),(5,3,5,3),(6,3,6,3),(7,4,8,4),(8,4,9,4),(9,4,10,4),(10,4,11,4),(11,5,12,5),(12,5,13,5),(13,5,15,5),(14,5,16,5),(15,5,1,5),(16,6,2,6),(17,7,3,7),(18,8,4,8),(19,9,5,9),(20,10,6,10),(21,11,8,11),(22,12,9,12),(23,13,10,13),(24,14,11,14),(25,15,12,15),(26,16,13,16),(27,17,15,17),(28,18,16,18),(29,19,1,19),(30,20,2,20),(31,1,1,21),(32,1,2,22),(33,1,3,23),(34,1,4,24),(35,1,1,25),(36,1,2,26),(37,1,3,27),(38,1,4,28),(39,1,1,1),(40,2,2,2),(41,2,3,2),(42,3,4,3),(43,3,5,3),(44,3,6,3),(45,4,8,4),(46,4,9,4),(47,4,10,4),(48,4,11,4),(49,5,12,5),(50,5,13,5),(51,5,15,5),(52,5,16,5),(53,5,1,5),(54,6,2,6),(55,7,3,7),(56,8,4,8),(57,9,5,9),(58,10,6,10),(59,11,8,11),(60,12,9,12),(61,13,10,13),(62,14,11,14),(63,15,12,15),(64,16,13,16),(65,17,15,17),(66,18,16,18),(67,19,1,19),(68,20,2,20),(69,1,1,21),(70,1,2,22),(71,1,3,23),(72,1,4,24),(73,1,1,25),(74,1,2,26),(75,1,3,27),(76,1,4,28);
/*!40000 ALTER TABLE `factura_producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-06 22:07:57
