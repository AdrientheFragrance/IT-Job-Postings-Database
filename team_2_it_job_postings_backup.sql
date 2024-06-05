-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: itjobs
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Temporary view structure for view `average_highest_paying_cities`
--

DROP TABLE IF EXISTS `average_highest_paying_cities`;
/*!50001 DROP VIEW IF EXISTS `average_highest_paying_cities`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `average_highest_paying_cities` AS SELECT 
 1 AS `city`,
 1 AS `country_code`,
 1 AS `city_average_salary`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `big_company_cities`
--

DROP TABLE IF EXISTS `big_company_cities`;
/*!50001 DROP VIEW IF EXISTS `big_company_cities`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `big_company_cities` AS SELECT 
 1 AS `company_id`,
 1 AS `company_size_from`,
 1 AS `company_size_to`,
 1 AS `company_size`,
 1 AS `city`,
 1 AS `country_code`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `company_id` int NOT NULL,
  `company_size_from` int DEFAULT NULL,
  `company_size_to` int DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,0,35),(2,0,30),(3,0,250),(4,0,100),(5,0,10),(6,0,35),(7,5,20),(8,5,20),(9,5,20),(10,0,50),(11,0,50),(12,0,130),(13,0,120),(14,0,30),(15,0,40);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `desired_experience`
--

DROP TABLE IF EXISTS `desired_experience`;
/*!50001 DROP VIEW IF EXISTS `desired_experience`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `desired_experience` AS SELECT 
 1 AS `job_title`,
 1 AS `experience`,
 1 AS `skill_name`,
 1 AS `skill_value`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `job_id` int NOT NULL,
  `location_id` int NOT NULL,
  `company_id` int NOT NULL,
  `job_title` varchar(45) DEFAULT NULL,
  `experience` varchar(45) DEFAULT NULL,
  `remote_workplace` varchar(45) DEFAULT NULL,
  `remote_interview` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (1,1,1,'Database Administrator/DevOps','senior','TRUE','TRUE'),(2,2,2,'Senior Scala Developer','senior','TRUE','TRUE'),(3,3,3,'Senior Frontend Developer','senior','TRUE','TRUE'),(4,4,4,'Engineering Director, Poland','senior','TRUE','TRUE'),(5,5,5,'Director of Engineering','mid','TRUE','FALSE'),(6,6,6,'Software Engineer, Backend','mid','TRUE','TRUE'),(7,7,7,'Senior Fullstack Developer','senior','TRUE','TRUE'),(8,8,8,'Sr.Fullstack Developer (Node.js/Angular)','senior','TRUE','TRUE'),(9,9,9,'Senior Data Engineer','senior','TRUE','TRUE'),(10,10,10,'Senior Frontend Engineer (Europe Remote)','senior','TRUE','TRUE'),(11,11,11,'Senior Backend Engineer (Europe - Remote)','senior','TRUE','TRUE'),(12,12,12,'Senior Frontend Engineer','senior','TRUE','TRUE'),(13,13,13,'Senior Software Engineer','senior','TRUE','TRUE'),(14,14,14,'Senior iOS Developer','senior','TRUE','TRUE'),(15,15,15,'Lead Engineer','senior','TRUE','TRUE');
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_salary_type`
--

DROP TABLE IF EXISTS `job_salary_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_salary_type` (
  `salary_id` int NOT NULL,
  `job_id` int NOT NULL,
  `salary_from_permanent` float DEFAULT NULL,
  `salary_to_permanent` float DEFAULT NULL,
  `salary_from_b2b` float DEFAULT NULL,
  `salary_to_b2b` float DEFAULT NULL,
  `salary_from_mandate` float DEFAULT NULL,
  `salary_to_mandate` float DEFAULT NULL,
  PRIMARY KEY (`salary_id`,`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_salary_type`
--

LOCK TABLES `job_salary_type` WRITE;
/*!40000 ALTER TABLE `job_salary_type` DISABLE KEYS */;
INSERT INTO `job_salary_type` VALUES (1,1,0,0,27757.3,37009.7,0,0),(2,2,0,0,26119.2,39178.8,0,0),(3,3,0,0,18752.1,28128.1,0,0),(4,4,0,0,26119.2,52238.3,0,0),(5,5,0,0,36262.1,65297.9,0,0),(6,6,0,0,27087,54173.9,0,0),(7,7,0,0,23942.6,30472.4,0,0),(8,8,0,0,23942.6,28295.8,0,0),(9,9,30472.4,39178.8,34825.6,43531.9,0,0),(10,10,0,0,17412.8,26119.2,0,0),(11,11,0,0,17412.8,32649,0,0),(12,12,0,0,25248.5,36131.5,0,0),(13,13,0,0,43531.9,69651.1,0,0),(14,14,0,0,22525.1,31535.2,0,0),(15,15,0,0,33084.3,33084.3,0,0);
/*!40000 ALTER TABLE `job_salary_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_skills`
--

DROP TABLE IF EXISTS `job_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_skills` (
  `job_id` int NOT NULL,
  `skill_id` int NOT NULL,
  `skill_value` int DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_skills`
--

LOCK TABLES `job_skills` WRITE;
/*!40000 ALTER TABLE `job_skills` DISABLE KEYS */;
INSERT INTO `job_skills` VALUES (1,1,3),(2,4,4),(3,7,3),(4,10,3),(5,12,4),(6,15,1),(7,11,1),(8,17,4),(9,18,4),(10,21,3),(11,2,4),(12,23,3),(13,26,2),(14,28,3),(15,31,4);
/*!40000 ALTER TABLE `job_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `location_id` int NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `country_code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Los Angeles','US'),(2,'Los Angeles','US'),(3,'Houston','US'),(4,'New York','US'),(5,'Indianapolis','US'),(6,'San Francisco','US'),(7,'Austin','US'),(8,'Round Rock','US'),(9,'San Francisco','US'),(10,'San Francisco','US'),(11,'San Francisco','US'),(12,'New York','US'),(13,'New York','US'),(14,'New York','US'),(15,'San Francisco','US');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `most_remote_workplaces`
--

DROP TABLE IF EXISTS `most_remote_workplaces`;
/*!50001 DROP VIEW IF EXISTS `most_remote_workplaces`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `most_remote_workplaces` AS SELECT 
 1 AS `city`,
 1 AS `country_code`,
 1 AS `remote_workplaces_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `salary_type`
--

DROP TABLE IF EXISTS `salary_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary_type` (
  `salary_id` int DEFAULT NULL,
  `if_permanent` text,
  `if_b2b` text,
  `if_mandate` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_type`
--

LOCK TABLES `salary_type` WRITE;
/*!40000 ALTER TABLE `salary_type` DISABLE KEYS */;
INSERT INTO `salary_type` VALUES (1,'FALSE','TRUE','FALSE'),(2,'FALSE','TRUE','FALSE'),(3,'FALSE','TRUE','FALSE'),(4,'FALSE','TRUE','FALSE'),(5,'FALSE','TRUE','FALSE'),(6,'FALSE','TRUE','FALSE'),(7,'FALSE','TRUE','FALSE'),(8,'FALSE','TRUE','FALSE'),(9,'TRUE','TRUE','FALSE'),(10,'FALSE','TRUE','FALSE'),(11,'FALSE','TRUE','FALSE'),(12,'FALSE','TRUE','FALSE'),(13,'FALSE','TRUE','FALSE'),(14,'FALSE','TRUE','FALSE'),(15,'FALSE','TRUE','FALSE');
/*!40000 ALTER TABLE `salary_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `skill_id` int NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'Terraform'),(2,'Amazon AWS'),(3,'Kubernetes'),(4,'Problem Solving'),(5,'Team Player'),(6,'Scala'),(7,'Redux'),(8,'React'),(9,'JavaScript'),(10,'Node.js'),(11,'AngularJS'),(12,'People Management'),(13,'Team Leadership'),(14,'Unknown'),(15,'Docker'),(16,'Google Cloud Photos'),(17,'TypeScript'),(18,'NoSQL'),(19,'Data Science'),(20,'Python'),(21,'React Native'),(22,'Nuxt'),(23,'Vue.js'),(24,'GraphQL'),(25,'Ruby On Rails'),(26,'Serverless'),(27,'MySQL'),(28,'SwiftUI'),(29,'Swift'),(30,'iOS'),(31,'PostgreSQL');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `valuable_jobs`
--

DROP TABLE IF EXISTS `valuable_jobs`;
/*!50001 DROP VIEW IF EXISTS `valuable_jobs`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `valuable_jobs` AS SELECT 
 1 AS `job_title`,
 1 AS `salary_from_b2b`,
 1 AS `salary_to_b2b`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `average_highest_paying_cities`
--

/*!50001 DROP VIEW IF EXISTS `average_highest_paying_cities`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `average_highest_paying_cities` AS select `subquery`.`city` AS `city`,`subquery`.`country_code` AS `country_code`,avg(`subquery`.`city_salary_difference`) AS `city_average_salary` from (select `location`.`city` AS `city`,`location`.`country_code` AS `country_code`,(`job_salary_type`.`salary_to_b2b` - `job_salary_type`.`salary_from_b2b`) AS `city_salary_difference` from ((`job_salary_type` join `job` on((`job_salary_type`.`job_id` = `job`.`job_id`))) join `location` on((`job`.`location_id` = `location`.`location_id`)))) `subquery` group by `subquery`.`city`,`subquery`.`country_code` order by `city_average_salary` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `big_company_cities`
--

/*!50001 DROP VIEW IF EXISTS `big_company_cities`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `big_company_cities` AS select `company`.`company_id` AS `company_id`,`company`.`company_size_from` AS `company_size_from`,`company`.`company_size_to` AS `company_size_to`,(`company`.`company_size_to` - `company`.`company_size_from`) AS `company_size`,`location`.`city` AS `city`,`location`.`country_code` AS `country_code` from ((`company` join `job` on((`job`.`company_id` = `company`.`company_id`))) join `location` on((`location`.`location_id` = `job`.`location_id`))) where ((`company`.`company_size_to` - `company`.`company_size_from`) >= 50) order by (`company`.`company_size_to` - `company`.`company_size_from`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `desired_experience`
--

/*!50001 DROP VIEW IF EXISTS `desired_experience`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `desired_experience` AS select `job`.`job_title` AS `job_title`,`job`.`experience` AS `experience`,`skills`.`skill_name` AS `skill_name`,`job_skills`.`skill_value` AS `skill_value` from ((`job` join `job_skills` on((`job`.`job_id` = `job_skills`.`job_id`))) join `skills` on((`job_skills`.`skill_id` = `skills`.`skill_id`))) where (`job_skills`.`skill_value` = 4) order by `job`.`experience` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `most_remote_workplaces`
--

/*!50001 DROP VIEW IF EXISTS `most_remote_workplaces`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `most_remote_workplaces` AS select `location`.`city` AS `city`,`location`.`country_code` AS `country_code`,count(`job`.`remote_workplace`) AS `remote_workplaces_count` from (`job` join `location` on((`job`.`location_id` = `location`.`location_id`))) where (`job`.`remote_workplace` = 'TRUE') group by `location`.`city`,`location`.`country_code` order by `remote_workplaces_count` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `valuable_jobs`
--

/*!50001 DROP VIEW IF EXISTS `valuable_jobs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `valuable_jobs` AS select `job`.`job_title` AS `job_title`,`job_salary_type`.`salary_from_b2b` AS `salary_from_b2b`,`job_salary_type`.`salary_to_b2b` AS `salary_to_b2b` from (`job` join `job_salary_type` on((`job`.`job_id` = `job_salary_type`.`job_id`))) order by `job_salary_type`.`salary_to_b2b` desc */;
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

-- Dump completed on 2024-05-11 23:55:02
