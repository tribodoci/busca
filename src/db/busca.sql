CREATE DATABASE  IF NOT EXISTS `busca` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `busca`;
-- MySQL dump 10.13  Distrib 8.0.32, for macos13 (x86_64)
--
-- Host: localhost    Database: busca
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `documento`
--

DROP TABLE IF EXISTS `documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documento` (
  `id` bigint NOT NULL,
  `link` varchar(500) DEFAULT NULL,
  `descricao` varchar(1024) DEFAULT NULL,
  `arquivo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `documento_palavra`
--

DROP TABLE IF EXISTS `documento_palavra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documento_palavra` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `documento_id` bigint DEFAULT NULL,
  `palavra_id` bigint DEFAULT NULL,
  `posicao` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documento_id_fk_idx` (`documento_id`),
  KEY `palavra_id_fk_idx` (`palavra_id`),
  KEY `doc_palav_ps_unq_idx` (`documento_id`,`palavra_id`,`posicao`),
  CONSTRAINT `documento_id_fk` FOREIGN KEY (`documento_id`) REFERENCES `documento` (`id`),
  CONSTRAINT `palavra_id_fk` FOREIGN KEY (`palavra_id`) REFERENCES `palavra` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25763 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `documento_palavra_distancia`
--

DROP TABLE IF EXISTS `documento_palavra_distancia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documento_palavra_distancia` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `documento_id` bigint DEFAULT NULL,
  `palavra_id` bigint DEFAULT NULL,
  `d_palavra_id` bigint DEFAULT NULL,
  `distancia` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `document_id_fk_idx` (`documento_id`),
  KEY `palavra_id_fk_idx` (`palavra_id`),
  KEY `d_palavra_id_fk_idx` (`d_palavra_id`),
  KEY `dpd_document_id_fk_idx` (`documento_id`),
  KEY `dpd_palavra_id_fk_idx` (`palavra_id`),
  KEY `dpd_d_palavra_id_fk_idx` (`d_palavra_id`),
  CONSTRAINT `d_d_palavra_id_fk` FOREIGN KEY (`d_palavra_id`) REFERENCES `palavra` (`id`),
  CONSTRAINT `d_document_id_fk` FOREIGN KEY (`documento_id`) REFERENCES `documento` (`id`),
  CONSTRAINT `d_palavra_id_fk` FOREIGN KEY (`palavra_id`) REFERENCES `palavra` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `palavra`
--

DROP TABLE IF EXISTS `palavra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `palavra` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `palavra` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `palavra_unq_idx` (`palavra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-29 10:59:12
