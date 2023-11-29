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
-- Dumping data for table `documento`
--

LOCK TABLES `documento` WRITE;
/*!40000 ALTER TABLE `documento` DISABLE KEYS */;
INSERT INTO `documento`(id,link,descricao,arquivo) VALUES 
(1,'https://tribodoci.net/podcast/tribo-do-ci-001-apresentacao-e-saldo-flisol/','Tribo do C.I. Podcast – Episódio #001 – Apresentação e Saldo Flisol','../../tribodoci-podcast-transcript/tribodoci_001_flisol.txt'),
(2,'https://tribodoci.net/podcast/tribo-do-c-i-podcast-episodio-002-html5/','Tribo do C.I. Podcast – Episódio #002 – HTML5','../../tribodoci-podcast-transcript/tribodoci_002_html5.txt'),
(3,'https://tribodoci.net/podcast/tribo-do-c-i-podcast-episodio-003-eng-de-software/','Tribo do C.I. Podcast – Episódio #003 – Engenharia de Software','../../tribodoci-podcast-transcript/tribodoci_003_pds.txt'),
(4,'https://tribodoci.net/podcast/tribo-do-c-i-podcast-episodio-004-arquitetura-de-computadores/','Tribo do C.I. Podcast – Episódio #004 – Arquitetura de Computadores','../../tribodoci-podcast-transcript/tribodoci_004_ipd.txt'),
(5,'https://tribodoci.net/podcast/tribo-do-c-i-podcast-episodio-005-redes-de-computadores/','Tribo do C.I. Podcast – Episódio #005 – Redes de Computadores','../../tribodoci-podcast-transcript/tribodoci_005_redes.txt'),
(6,'https://tribodoci.net/podcast/tribo-do-c-i-podcast-episodio-006-see-project/','Tribo do C.I. Podcast – Episódio #006 – See Project','../../tribodoci-podcast-transcript/tribodoci_006_seeproject.txt'),
(7,'https://tribodoci.net/podcast/tribo-do-c-i-podcast-episodio-007-eventos-de-ti/','Tribo do C.I. Podcast – Episódio #007 – Porque Festa de Nerd é Evento de TI','../../tribodoci-podcast-transcript/tribodoci_007_eventos_ti.txt'),
(8,'https://tribodoci.net/podcast/tribo-do-c-i-podcast-episodio-008-semiretrospectiva-2010/','Tribo do C.I. Podcast – Episódio #008 – SemiRetrospectiva 2010','../../tribodoci-podcast-transcript/tribodoci_008_retrospectiva2010.txt'),
(9,'https://tribodoci.net/podcast/tribo-do-c-i-podcast-episodio-009-mnt-em-um-batepapo-de-meninas-primeira-parte/','Tribo do C.I. Podcast – Episódio #009 – /mnt em um BatePapo de Meninas Primeira Parte','../../tribodoci-podcast-transcript/tribodoci_009_mnt_batepapomeninas.txt'),
(10,'https://tribodoci.net/podcast/tribo-do-c-i-podcast-episodio-010-mnt-em-um-batepapo-de-meninas-segunda-parte/','Tribo do C.I. Podcast – Episódio #010 – /mnt em um BatePapo de Meninas Segunda Parte','../../tribodoci-podcast-transcript/tribodoci_010_mnt_batepapomeninasb.txt'),
(11,'https://tribodoci.net/podcast/tribo-do-c-i-podcast-episodio-011-loiane-groner/','Tribo do C.I. Podcast – Episódio #011 – Loiane Groner','../../tribodoci-podcast-transcript/tribodoci_011_loiane_groner.txt'),
(12,'https://tribodoci.net/podcast/tribo-do-c-i-podcast-episodio-012-dpto-comercial-em-ti/','Tribo do C.I. Podcast – Episódio #012 – Dpto Comercial em TI','../../tribodoci-podcast-transcript/tribodoci_012_dpto_comercial.txt'),
(13,'https://tribodoci.net/podcast/tribo-do-c-i-podcast-episodio-013-programadorabr/','Tribo do C.I. Podcast – Episódio #013 – @ProgramadoraBR','../../tribodoci-podcast-transcript/tribodoci_013_programadorabr.txt'),
(14,'https://tribodoci.net/podcast/tribo-do-c-i-podcast-episodio-014-mozart-couto-primeira-parte/','Tribo do C.I. Podcast – Episódio #014 – Mozart Couto Primeira Parte','../../tribodoci-podcast-transcript/tribodoci_014_mozart_couto_1.txt'),
(15,'https://tribodoci.net/podcast/tribo-do-c-i-podcast-episodio-015-mozart-couto-segunda-parte/','Tribo do C.I. Podcast – Episódio #015 – Mozart Couto Segunda Parte','../../tribodoci-podcast-transcript/tribodoci_015_mozart_couto_2.txt'),
(16,'https://tribodoci.net/podcast/tribo-do-ci-episodio-016-cicero-moraes-cogitas-3d/','Tribo do C.I. Podcast – Episódio #016 – Cicero Moraes, Cogitas 3D','../../tribodoci-podcast-transcript/tribodoci_016_cogitas3d.txt'),
(17,'https://tribodoci.net/podcast/tribo-do-ci-podcast-episodio-017-karlisson-bezerra-hacktoon/','Tribo do C.I. Podcast – Episódio #017 – Karlisson M. Bezerra, Hacktoon','../../tribodoci-podcast-transcript/tribodoci_017_nerdson.txt'),
(18,'https://tribodoci.net/podcast/tribo-do-c-i-podcast-episodio-018-bate-papo-software-livre/','Tribo do C.I. Podcast – Episódio #018 – Bate papo – Software Livre','../../tribodoci-podcast-transcript/tribodoci_018_batepapo_sofwarelivre.txt');
/*!40000 ALTER TABLE `documento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-29 10:59:58
