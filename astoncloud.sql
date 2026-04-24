CREATE DATABASE  IF NOT EXISTS `astoncloud` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `astoncloud`;
-- MySQL dump 10.13  Distrib 8.0.45, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: astoncloud
-- ------------------------------------------------------
-- Server version	9.6.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'dare.destinee','kelsi69@example.org','2026-04-24 05:23:39','$2y$12$vGAjlXRxzuVTRILwXIacq.SI/doRmRKHhX6DpoAkDCNe8OVqUDAte','iip5TEtQXu','2026-04-24 05:23:39','2026-04-24 05:23:39'),(2,'pkulas','xziemann@example.org','2026-04-24 05:23:39','$2y$12$vGAjlXRxzuVTRILwXIacq.SI/doRmRKHhX6DpoAkDCNe8OVqUDAte','hZTnljsSBy','2026-04-24 05:23:39','2026-04-24 05:23:39'),(3,'anne58','omedhurst@example.net','2026-04-24 05:23:39','$2y$12$vGAjlXRxzuVTRILwXIacq.SI/doRmRKHhX6DpoAkDCNe8OVqUDAte','9TcGdJK5GA','2026-04-24 05:23:39','2026-04-24 05:23:39'),(4,'upton.nicholaus','beatrice.bruen@example.org','2026-04-24 05:23:39','$2y$12$vGAjlXRxzuVTRILwXIacq.SI/doRmRKHhX6DpoAkDCNe8OVqUDAte','67RVeLZBfs','2026-04-24 05:23:39','2026-04-24 05:23:39'),(5,'eleazar03','watsica.tatyana@example.org','2026-04-24 05:23:39','$2y$12$vGAjlXRxzuVTRILwXIacq.SI/doRmRKHhX6DpoAkDCNe8OVqUDAte','ottwAPjSh1','2026-04-24 05:23:39','2026-04-24 05:23:39'),(6,'ProfessorManton','professor@gmail.com',NULL,'$2y$12$jd/chrwdFK6NEjKnq78rBuLg0FCG4djQlT8xkGI3VeMOdGsJX8gny',NULL,'2026-04-24 05:24:30','2026-04-24 05:24:30');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phase` enum('design','development','testing','deployment','complete') COLLATE utf8mb4_unicode_ci NOT NULL,
  `github_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `projects_user_id_foreign` (`user_id`),
  CONSTRAINT `projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Consequatur est eaque qui.','2026-03-01','2026-06-10','Recusandae magni dolorum totam deleniti veritatis. Eaque ab dolor aliquid occaecati maiores ut fuga.','design',NULL,1,'2026-04-24 05:23:39','2026-04-24 05:23:39'),(2,'Cum aut est.','2026-02-28','2026-05-13','Adipisci aperiam fugiat beatae neque at. Cumque error et et recusandae atque. Ab quae doloremque asperiores veniam.','development',NULL,1,'2026-04-24 05:23:39','2026-04-24 05:23:39'),(3,'Ipsum error voluptatem commodi.','2026-02-27','2026-05-06','Amet harum tempora quod est quas consequatur consequuntur. Est suscipit eos quia ipsum aut.','design',NULL,1,'2026-04-24 05:23:39','2026-04-24 05:23:39'),(4,'Quia provident ab.','2026-03-01','2026-06-09','Quo perferendis necessitatibus enim deserunt. Quae a sit atque placeat voluptatem aliquam qui.','testing',NULL,1,'2026-04-24 05:23:39','2026-04-24 05:23:39'),(5,'Dicta dignissimos beatae.','2026-03-03','2026-05-22','Optio numquam cumque rem iusto. Qui eum blanditiis aut dicta sit quam praesentium. Nobis eius et reiciendis consequatur.','complete',NULL,1,'2026-04-24 05:23:39','2026-04-24 05:23:39'),(6,'Odit itaque voluptatem.','2026-03-16','2026-05-23','Laboriosam occaecati blanditiis ex velit atque. Consequatur est itaque culpa facere iure dolorem quo earum. Sit a dolorem dicta tempore.','design','http://mueller.com/',2,'2026-04-24 05:23:39','2026-04-24 05:23:39'),(7,'Consequatur sunt maxime.','2026-03-05','2026-06-15','Voluptate amet quod dolor. Rem aut eius quis qui accusamus accusamus minus. Facere tempore modi ut non quos veritatis adipisci.','development',NULL,2,'2026-04-24 05:23:39','2026-04-24 05:23:39'),(8,'Voluptate dolor repellat.','2026-03-06','2026-06-18','Ut at sit sed ut ut possimus. Autem ducimus nemo ut hic eos voluptas. Odit molestiae repellat qui blanditiis in ut iusto.','development','http://bogan.com/dolorem-sunt-enim-illum-sed-praesentium',2,'2026-04-24 05:23:39','2026-04-24 05:23:39'),(9,'Rerum iusto qui accusamus.','2026-03-15','2026-05-31','Voluptatem at eaque sit consectetur assumenda. Sit velit et quaerat aperiam.','design',NULL,2,'2026-04-24 05:23:39','2026-04-24 05:23:39'),(10,'Ea quam aut.','2026-03-29','2026-05-15','Non sunt error doloremque sed. Placeat error eaque est quod fugiat.','complete','http://www.okon.com/',2,'2026-04-24 05:23:39','2026-04-24 05:23:39'),(11,'Voluptates quos porro omnis.','2026-02-28','2026-05-07','Fuga et et quo quo in vero et. Quia aut dolorum qui sequi dolores quam fugiat.','deployment','http://fisher.info/vel-aliquid-rerum-corrupti-vel-dolor-iusto.html',3,'2026-04-24 05:23:39','2026-04-24 05:23:39'),(12,'Qui fuga labore.','2026-03-26','2026-05-04','Ut veniam minima ea molestias sit animi iste saepe. Ut eos alias eos velit et porro quo.','complete',NULL,3,'2026-04-24 05:23:39','2026-04-24 05:23:39'),(13,'Dolorum inventore.','2026-03-25','2026-04-29','Voluptatibus in voluptatum est quaerat libero. Repellat accusantium sit non ut atque. Et iste dolore enim ea ut.','development','http://ledner.org/',3,'2026-04-24 05:23:39','2026-04-24 05:23:39'),(14,'Pariatur dignissimos nam iure.','2026-04-15','2026-06-07','Et voluptatum porro et et molestias dolorem culpa quod. Est officiis velit tempore quasi ex sit quibusdam.','development',NULL,3,'2026-04-24 05:23:39','2026-04-24 05:23:39'),(15,'Illo necessitatibus qui.','2026-04-14','2026-05-23','Eius accusantium dolorem provident labore dolores. Perspiciatis nesciunt est nobis sit sed.','testing',NULL,3,'2026-04-24 05:23:39','2026-04-24 05:23:39'),(16,'Voluptas cum distinctio vel.','2026-03-03','2026-05-31','Voluptas ab saepe minima error. Corporis sit nihil est dolorum voluptas. Eos aut maxime ipsa molestiae neque optio vel quos.','complete',NULL,4,'2026-04-24 05:23:39','2026-04-24 05:23:39'),(17,'Dolore voluptas labore.','2026-03-25','2026-05-26','Autem quia aliquam rerum quia facilis sed et quia. Sint doloribus nisi et adipisci natus omnis necessitatibus.','complete','http://feeney.info/',4,'2026-04-24 05:23:39','2026-04-24 05:23:39'),(18,'Excepturi quis consequuntur beatae et.','2026-03-27','2026-06-13','Quas ea eum voluptates ab fugit vitae. Provident eveniet quia voluptas odio quam repudiandae. Rerum voluptatum asperiores assumenda ut enim quam.','deployment','https://fritsch.com/nesciunt-atque-qui-libero-eos-ratione-molestiae-et.html',4,'2026-04-24 05:23:39','2026-04-24 05:23:39'),(19,'Qui voluptates magni pariatur.','2026-04-10','2026-04-30','Dolore enim consectetur omnis inventore sequi omnis non illo. Sit ad voluptas laborum architecto voluptatem est.','testing','http://hoppe.biz/ratione-sequi-autem-voluptatem',4,'2026-04-24 05:23:39','2026-04-24 05:23:39'),(20,'Dolores cum vel.','2026-04-21','2026-06-21','Et laudantium et dolorum ut aut. Quae saepe tenetur iure. Et nam recusandae unde sint.','complete',NULL,4,'2026-04-24 05:23:39','2026-04-24 05:23:39'),(21,'Iure velit sint rerum.','2026-04-03','2026-06-14','Natus aliquam nesciunt sequi provident porro qui rerum necessitatibus. Laborum et aliquid et temporibus voluptatem iusto. Est eos aperiam et excepturi incidunt.','testing',NULL,5,'2026-04-24 05:23:39','2026-04-24 05:23:39'),(22,'Adipisci dolor facere iusto.','2026-02-25','2026-06-11','Occaecati facilis labore repellat neque praesentium molestiae. Voluptatibus est quia expedita saepe corrupti dolorum natus unde.','deployment','https://bailey.info/deserunt-et-eius-sunt-non.html',5,'2026-04-24 05:23:39','2026-04-24 05:23:39'),(23,'Nesciunt ut deserunt.','2026-04-04','2026-05-20','Impedit quo distinctio cum et est et. Officiis aut numquam ipsa. Est enim eos ullam recusandae qui et.','complete',NULL,5,'2026-04-24 05:23:39','2026-04-24 05:23:39'),(24,'Culpa saepe.','2026-03-08','2026-06-13','Ipsum sequi accusantium doloremque illo natus. Possimus et repellat et alias. Neque aperiam delectus itaque nemo voluptatem praesentium sed.','testing','http://crist.com/omnis-voluptatem-reprehenderit-quo-doloremque',5,'2026-04-24 05:23:39','2026-04-24 05:23:39'),(25,'Repudiandae exercitationem illum ipsa.','2026-04-06','2026-05-23','Id autem quasi consectetur omnis voluptatem aut eligendi excepturi. Accusamus minus voluptas sequi doloremque. Dolore sunt adipisci temporibus.','deployment',NULL,5,'2026-04-24 05:23:39','2026-04-24 05:23:39');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'2026_04_16_152126_create_projects_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


-- Dump completed on 2026-04-24  9:34:03
