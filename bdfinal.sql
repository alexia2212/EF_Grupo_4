-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: bdfinal
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicio` (
  `idServicio` int NOT NULL AUTO_INCREMENT,
  `idTipoDeServicio` int NOT NULL,
  `costo` float NOT NULL,
  `tiempoDeRealizacion` float NOT NULL,
  `idUsuario` int NOT NULL,
  PRIMARY KEY (`idServicio`),
  KEY `fk_Servicio_Usuario_idx` (`idUsuario`),
  KEY `fk_Servicio_TipoDeServicio1_idx` (`idTipoDeServicio`),
  CONSTRAINT `fk_Servicio_TipoDeServicio1` FOREIGN KEY (`idTipoDeServicio`) REFERENCES `tipodeservicio` (`idTipoDeServicio`),
  CONSTRAINT `fk_Servicio_Usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` VALUES (1,2,20,40.4,1),(2,1,40.5,20.4,2),(3,3,60.4,30.1,2),(4,1,30.2,53.2,1);
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodeservicio`
--

DROP TABLE IF EXISTS `tipodeservicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipodeservicio` (
  `idTipoDeServicio` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idTipoDeServicio`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodeservicio`
--

LOCK TABLES `tipodeservicio` WRITE;
/*!40000 ALTER TABLE `tipodeservicio` DISABLE KEYS */;
INSERT INTO `tipodeservicio` VALUES (1,'Impresion 3D'),(2,'Corte Laser'),(3,'Escaneo Digital 3D');
/*!40000 ALTER TABLE `tipodeservicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodeusuario`
--

DROP TABLE IF EXISTS `tipodeusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipodeusuario` (
  `idTipoDeUsuario` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idTipoDeUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodeusuario`
--

LOCK TABLES `tipodeusuario` WRITE;
/*!40000 ALTER TABLE `tipodeusuario` DISABLE KEYS */;
INSERT INTO `tipodeusuario` VALUES (1,'Interno'),(2,'Externo');
/*!40000 ALTER TABLE `tipodeusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `contrasena` varchar(45) NOT NULL,
  `idTipoDeUsuario` int NOT NULL,
  `contrasena_hasheada` varchar(512) NOT NULL,
  PRIMARY KEY (`idUsuario`,`correo`),
  KEY `fk_Usuario_TipoDeUsuario1_idx` (`idTipoDeUsuario`),
  CONSTRAINT `fk_Usuario_TipoDeUsuario1` FOREIGN KEY (`idTipoDeUsuario`) REFERENCES `tipodeusuario` (`idTipoDeUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Christian','Gonzales','calledchristian79@gmail.com','maic',1,'1bb34f8cbe551b010b2a78a43f0ad82de41a28591bd56f8be9eeea4cd42fbb743cf8405f339bdf10db49423e91db21136889c9f0c383299740d493333e77934c'),(2,'Alexia','Jauregui','a20192270@pucp.edu.pe','123',1,'3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2'),(3,'Stuardo','Lucho','admin@admin.com','admin',1,'c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-29 14:08:26
