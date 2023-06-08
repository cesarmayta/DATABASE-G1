-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: db_movilidad_escolar
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Dumping data for table `tbl_alumno`
--

LOCK TABLES `tbl_alumno` WRITE;
/*!40000 ALTER TABLE `tbl_alumno` DISABLE KEYS */;
INSERT INTO `tbl_alumno` VALUES (1,'SUSANA','CASTILLO','2009-11-13','imagen1.jpg'),(2,'MARLENE','GOMEZ','2008-11-03','imagen2.jpg'),(3,'MARIBEL','GOMEZ','2010-03-01','imagen3.jpg');
/*!40000 ALTER TABLE `tbl_alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_apoderado`
--

LOCK TABLES `tbl_apoderado` WRITE;
/*!40000 ALTER TABLE `tbl_apoderado` DISABLE KEYS */;
INSERT INTO `tbl_apoderado` VALUES (1,'JOEL','GOMEZ','99999','444444',1),(2,'ROCIO','ALBERCAR','88888','55555',2);
/*!40000 ALTER TABLE `tbl_apoderado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_colegio`
--

LOCK TABLES `tbl_colegio` WRITE;
/*!40000 ALTER TABLE `tbl_colegio` DISABLE KEYS */;
INSERT INTO `tbl_colegio` VALUES (1,'FE Y ALEGRIA');
/*!40000 ALTER TABLE `tbl_colegio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_grado`
--

LOCK TABLES `tbl_grado` WRITE;
/*!40000 ALTER TABLE `tbl_grado` DISABLE KEYS */;
INSERT INTO `tbl_grado` VALUES (1,'1ERO','PRIMARIA'),(2,'2DO','PRIMARIA'),(3,'1ERO','SECUNDARIA');
/*!40000 ALTER TABLE `tbl_grado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_movilidad`
--

LOCK TABLES `tbl_movilidad` WRITE;
/*!40000 ALTER TABLE `tbl_movilidad` DISABLE KEYS */;
INSERT INTO `tbl_movilidad` VALUES (1,'COMPLETO','MAÑANA','A','ALICIA MARTINEZ',150,1,1,1,1,1),(2,'RECOJO','MAÑANA','B','FELIX PEREZ',120,1,2,1,1,2),(3,'RETORNO','MAÑANA','A','GLORIA RAMOS',120,1,1,3,2,3);
/*!40000 ALTER TABLE `tbl_movilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_parentesco`
--

LOCK TABLES `tbl_parentesco` WRITE;
/*!40000 ALTER TABLE `tbl_parentesco` DISABLE KEYS */;
INSERT INTO `tbl_parentesco` VALUES (1,'PADRE'),(2,'MADRE');
/*!40000 ALTER TABLE `tbl_parentesco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tbl_vehiculo`
--

LOCK TABLES `tbl_vehiculo` WRITE;
/*!40000 ALTER TABLE `tbl_vehiculo` DISABLE KEYS */;
INSERT INTO `tbl_vehiculo` VALUES (1,'VHT-890','CESAR ALVAREZ'),(2,'VTU-100','MARIA LOPEZ');
/*!40000 ALTER TABLE `tbl_vehiculo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07 20:30:12
