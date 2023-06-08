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
-- Table structure for table `tbl_alumno`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_alumno` (
  `alumno_id` int(11) NOT NULL AUTO_INCREMENT,
  `alumno_nombre` varchar(255) COLLATE utf8_bin NOT NULL,
  `alumno_apellido` varchar(255) COLLATE utf8_bin NOT NULL,
  `alumno_fecha_nacimiento` date DEFAULT NULL,
  `alumno_foto` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`alumno_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_apoderado`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_apoderado` (
  `apoderado_id` int(11) NOT NULL AUTO_INCREMENT,
  `apoderado_nombre` varchar(255) COLLATE utf8_bin NOT NULL,
  `apoderado_apellido` varchar(255) COLLATE utf8_bin NOT NULL,
  `apoderado_telefono` varchar(255) COLLATE utf8_bin NOT NULL,
  `apoderado_documento_identidad` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `parentesco_id` int(11) NOT NULL,
  PRIMARY KEY (`apoderado_id`),
  KEY `fk_tbl_apoderado_tbl_parentesco` (`parentesco_id`),
  CONSTRAINT `fk_tbl_apoderado_tbl_parentesco` FOREIGN KEY (`parentesco_id`) REFERENCES `tbl_parentesco` (`parentesco_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_colegio`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_colegio` (
  `colegio_id` int(11) NOT NULL AUTO_INCREMENT,
  `colegio_nombre` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`colegio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_grado`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_grado` (
  `grado_id` int(11) NOT NULL AUTO_INCREMENT,
  `grado_nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `grado_nivel` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`grado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_movilidad`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_movilidad` (
  `movilidad_id` int(11) NOT NULL AUTO_INCREMENT,
  `movilidad_tipo_servicio` varchar(45) COLLATE utf8_bin NOT NULL,
  `movilidad_turno` varchar(45) COLLATE utf8_bin NOT NULL,
  `movilidad_seccion` varchar(45) COLLATE utf8_bin NOT NULL,
  `movilidad_docente` varchar(255) COLLATE utf8_bin NOT NULL,
  `movilidad_pago` double NOT NULL DEFAULT '0',
  `colegio_id` int(11) NOT NULL,
  `apoderado_id` int(11) NOT NULL,
  `grado_id` int(11) NOT NULL,
  `vehiculo_id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL,
  PRIMARY KEY (`movilidad_id`),
  KEY `fk_movilidad_tbl_colegio1` (`colegio_id`),
  KEY `fk_movilidad_tbl_apoderado1` (`apoderado_id`),
  KEY `fk_movilidad_tbl_grado1` (`grado_id`),
  KEY `fk_movilidad_tbl_vehiculo1` (`vehiculo_id`),
  KEY `fk_movilidad_tbl_alumno1` (`alumno_id`),
  CONSTRAINT `fk_movilidad_tbl_alumno1` FOREIGN KEY (`alumno_id`) REFERENCES `tbl_alumno` (`alumno_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movilidad_tbl_apoderado1` FOREIGN KEY (`apoderado_id`) REFERENCES `tbl_apoderado` (`apoderado_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movilidad_tbl_colegio1` FOREIGN KEY (`colegio_id`) REFERENCES `tbl_colegio` (`colegio_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movilidad_tbl_grado1` FOREIGN KEY (`grado_id`) REFERENCES `tbl_grado` (`grado_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movilidad_tbl_vehiculo1` FOREIGN KEY (`vehiculo_id`) REFERENCES `tbl_vehiculo` (`vehiculo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_parentesco`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_parentesco` (
  `parentesco_id` int(11) NOT NULL AUTO_INCREMENT,
  `parentesco_nombre` varchar(45) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`parentesco_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbl_vehiculo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_vehiculo` (
  `vehiculo_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehiculo_placa` varchar(20) COLLATE utf8_bin NOT NULL,
  `vehiculo_conductor` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`vehiculo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'db_movilidad_escolar'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07 20:31:16
