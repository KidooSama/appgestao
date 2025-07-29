-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sg
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filiais`
--

DROP TABLE IF EXISTS `filiais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filiais` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `filial` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filiais`
--

LOCK TABLES `filiais` WRITE;
/*!40000 ALTER TABLE `filiais` DISABLE KEYS */;
/*!40000 ALTER TABLE `filiais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `uf` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES (1,'Jolesss','jollessites.com','2025-07-12 04:19:59','2025-07-22 18:53:31','CE','jolles@gmail.com',NULL),(2,'zim','zimbabuecity.org','2025-07-12 04:19:59','2025-07-22 18:53:40','CE','zimbascitys@gmail.com',NULL),(3,'Juves','juvesnger.com',NULL,'2025-07-22 22:17:55','AM','juvesnger@gmail.com','2025-07-22 22:17:55'),(4,'Talles Sousa Braga','www.talles.com','2025-07-18 07:58:53','2025-07-20 21:27:48','CE','tallesbraga63@gmail.com',NULL),(5,'leleles','www.aasdsd.com','2025-07-18 08:06:42','2025-07-18 08:06:42','CE','tallesbraga3@gmail.com',NULL),(6,'zimb','zimbabuecity.org','2025-07-20 18:21:00','2025-07-22 18:53:54','CE','zimbascitys@gmail.co',NULL);
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_acessos`
--

DROP TABLE IF EXISTS `log_acessos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_acessos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `log` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_acessos`
--

LOCK TABLES `log_acessos` WRITE;
/*!40000 ALTER TABLE `log_acessos` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_acessos` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (74,'2014_10_12_000000_create_users_table',1),(75,'2019_08_19_000000_create_failed_jobs_table',2),(76,'2025_04_04_205437_create_site_contatos_table',3),(77,'2025_04_05_133728_create_fornecedores_table',4),(78,'2025_04_05_135942_alter_fornecedores_novas_colunas',5),(79,'2025_04_06_203103_create_produtos_table',6),(80,'2025_04_06_205049_create_produto_detalhes_table',7),(81,'2025_04_07_121331_create_unidades_table',8),(82,'2025_04_07_124620_ajuste_produtos_filiais',9),(83,'2025_04_07_131131_alter_fornecedores_nova_coluna_site_com_after',10),(84,'2025_04_18_154335_alter_fornecedores_softdelete',11),(88,'2025_04_26_010338_create_motivo_contatos_table',12),(89,'2025_04_26_022536_alter_table_site_contatos_add_fk_motivo_contatos',13),(90,'2025_04_26_171856_create_log_acessos_table',13);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motivo_contatos`
--

DROP TABLE IF EXISTS `motivo_contatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `motivo_contatos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `motivo_contato` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motivo_contatos`
--

LOCK TABLES `motivo_contatos` WRITE;
/*!40000 ALTER TABLE `motivo_contatos` DISABLE KEYS */;
INSERT INTO `motivo_contatos` VALUES (1,'2025-07-12 04:18:02','2025-07-12 04:18:02','Dúvida'),(2,'2025-07-12 04:18:02','2025-07-12 04:18:02','Elogio'),(3,'2025-07-12 04:18:02','2025-07-12 04:18:02','Reclamação');
/*!40000 ALTER TABLE `motivo_contatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_detalhes`
--

DROP TABLE IF EXISTS `produto_detalhes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto_detalhes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `produto_id` bigint unsigned NOT NULL,
  `comprimento` double(8,2) NOT NULL,
  `largura` double(8,2) NOT NULL,
  `altura` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unidade_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `produto_detalhes_produto_id_unique` (`produto_id`),
  KEY `produto_detalhes_unidade_id_foreign` (`unidade_id`),
  CONSTRAINT `produto_detalhes_produto_id_foreign` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`),
  CONSTRAINT `produto_detalhes_unidade_id_foreign` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_detalhes`
--

LOCK TABLES `produto_detalhes` WRITE;
/*!40000 ALTER TABLE `produto_detalhes` DISABLE KEYS */;
INSERT INTO `produto_detalhes` VALUES (1,3,22.00,22.00,22.00,'2025-07-28 19:17:00','2025-07-28 21:25:43',1);
/*!40000 ALTER TABLE `produto_detalhes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_filiais`
--

DROP TABLE IF EXISTS `produto_filiais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto_filiais` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `produto_id` bigint unsigned NOT NULL,
  `filial_id` bigint unsigned NOT NULL,
  `preco_venda` decimal(8,2) NOT NULL,
  `estoque_maximo` int NOT NULL,
  `estoque_minimo` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `produto_filiais_produto_id_foreign` (`produto_id`),
  KEY `produto_filiais_filial_id_foreign` (`filial_id`),
  CONSTRAINT `produto_filiais_filial_id_foreign` FOREIGN KEY (`filial_id`) REFERENCES `filiais` (`id`),
  CONSTRAINT `produto_filiais_produto_id_foreign` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_filiais`
--

LOCK TABLES `produto_filiais` WRITE;
/*!40000 ALTER TABLE `produto_filiais` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto_filiais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci,
  `peso` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unidade_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `produtos_unidade_id_foreign` (`unidade_id`),
  CONSTRAINT `produtos_unidade_id_foreign` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (3,'Tv T50 Pro 4k','Tv SmartTV OLED 4k - 120hz',8,'2025-07-23 18:24:41','2025-07-23 18:24:41',1),(4,'Cocola','Geladinhar dimaiser',1,'2025-07-23 22:22:26','2025-07-25 01:35:05',1),(8,'PC NOGGERS','Ele é Noggers',4,'2025-07-25 01:32:08','2025-07-25 02:00:17',1),(9,'Purificador de augua','Purifica agua',3,'2025-07-25 01:59:56','2025-07-25 02:00:05',1);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_contatos`
--

DROP TABLE IF EXISTS `site_contatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_contatos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nome` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mensagem` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `motivo_contatos_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `site_contatos_motivo_contatos_id_foreign` (`motivo_contatos_id`),
  CONSTRAINT `site_contatos_motivo_contatos_id_foreign` FOREIGN KEY (`motivo_contatos_id`) REFERENCES `motivo_contatos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_contatos`
--

LOCK TABLES `site_contatos` WRITE;
/*!40000 ALTER TABLE `site_contatos` DISABLE KEYS */;
INSERT INTO `site_contatos` VALUES (1,'2025-07-12 04:14:20','2025-07-12 04:14:20','Tad Eichmann','(800) 963-9539','jenkins.rubie@cruickshank.net','Inventore quisquam et vel qui dolores consequatur. Voluptate porro magni perspiciatis nemo. Sed ipsum explicabo ut nulla voluptas ad blanditiis.',3),(2,'2025-07-12 04:14:20','2025-07-12 04:14:20','Mckenzie Green DDS','1-877-942-9350','moore.vidal@gmail.com','Iste iusto qui illo. Libero iusto culpa at ex. Sit quia neque velit cumque et qui et.',2),(3,'2025-07-12 04:14:20','2025-07-12 04:14:20','Dejon Abernathy Sr.','800.977.0424','beatrice60@hotmail.com','Et debitis vitae hic deleniti sint suscipit qui. Commodi nihil qui recusandae et. Quisquam eos omnis quos rem alias maxime ducimus.',1),(4,'2025-07-12 04:14:20','2025-07-12 04:14:20','Prof. Rudolph Nitzsche','855.581.7288','qkuhic@gmail.com','Impedit laborum at dolor recusandae voluptatem. Et dignissimos consequatur in optio voluptatibus amet.',1),(5,'2025-07-12 04:14:20','2025-07-12 04:14:20','Neil Schultz','800-553-7832','abbey90@yahoo.com','Earum harum non blanditiis reiciendis harum aut. Et et est ipsa nihil possimus non. Qui et omnis accusantium in.',1),(6,'2025-07-12 04:14:20','2025-07-12 04:14:20','Ned Buckridge','(877) 587-3392','mjaskolski@gleason.com','Aperiam quia nemo rerum ut dolore quo odio. Est repudiandae eum et velit vel. Amet nihil vel in repudiandae ratione.',3),(7,'2025-07-12 04:14:20','2025-07-12 04:14:20','Nyah Schumm','877.463.2580','dereck35@koelpin.org','Ut et qui ut suscipit doloremque possimus neque. Vero rerum dolores vel odio. Qui assumenda ipsum omnis repellendus dolor quod similique.',2),(8,'2025-07-12 04:14:20','2025-07-12 04:14:20','Ilene Reilly','877-879-5467','botsford.rylee@yahoo.com','Est sunt similique ab at reiciendis et. Sed et vero eius natus quis. Consequatur excepturi quibusdam expedita quis accusantium aut.',1),(9,'2025-07-12 04:14:20','2025-07-12 04:14:20','Kiley Grant','1-877-354-1305','tbrekke@hotmail.com','Mollitia tempora saepe ducimus tempora animi. Voluptatum et consequatur modi laborum voluptas qui. Id magni ab similique repudiandae ut sunt.',2),(10,'2025-07-12 04:14:20','2025-07-12 04:14:20','George Kemmer','877-514-8432','price@skiles.com','Sed officia aperiam nihil omnis ducimus. Voluptatem repudiandae hic dolorem qui placeat qui iusto. Enim veritatis similique nulla eius dolor non.',2),(11,'2025-07-12 04:14:20','2025-07-12 04:14:20','Mr. Maximilian Waelchi V','888.517.2664','bobbie.orn@yahoo.com','Illum qui ex hic sunt. Fugiat iste quibusdam ratione veniam recusandae. Autem quia voluptas et consequatur.',1),(12,'2025-07-12 04:14:20','2025-07-12 04:14:20','Ashtyn Cremin','888.846.6026','ogreen@yahoo.com','Pariatur et labore reiciendis. Nihil cum ipsum ipsum quaerat eum possimus. Dolore est earum facere esse.',1),(13,'2025-07-12 04:14:20','2025-07-12 04:14:20','Dr. Soledad Metz Jr.','1-800-539-4203','ratke.serenity@reinger.info','Voluptas nam perspiciatis mollitia et. Odit eum autem blanditiis voluptatum dolorem incidunt reiciendis. Perferendis ad natus culpa temporibus.',3),(14,'2025-07-12 04:14:20','2025-07-12 04:14:20','Hyman Gerlach','844.642.2750','vreilly@yahoo.com','Ad dolore nobis voluptas rem. Id consequatur cum sit qui numquam. Omnis hic sed atque repellendus atque. Illum labore non neque voluptate suscipit.',1),(15,'2025-07-12 04:14:20','2025-07-12 04:14:20','Ricky Rutherford DVM','866.901.7169','igleason@bins.com','Ut rerum est corrupti. Aut earum ipsa reiciendis corrupti iusto quidem. Minus est et sit quibusdam nemo.',2),(16,'2025-07-12 04:14:20','2025-07-12 04:14:20','Shayne Gutmann III','1-866-707-2395','satterfield.derick@zboncak.com','Id rem ut laudantium laudantium. Animi natus minima aut impedit delectus in. Provident qui explicabo ea doloremque.',2),(17,'2025-07-12 04:14:20','2025-07-12 04:14:20','Bryce Kiehn','1-888-975-6479','schamberger.janessa@mcclure.com','Non dolorem dolorum omnis ex corrupti cumque. Beatae ut ea in itaque.',3),(18,'2025-07-12 04:14:20','2025-07-12 04:14:20','Mitchel Hettinger','855.688.0155','zcollier@schultz.com','Omnis iusto sit itaque ea praesentium. Quia repellendus laborum enim nihil. Ut enim omnis dolorem est.',2),(19,'2025-07-12 04:14:20','2025-07-12 04:14:20','Prof. Frederik Zieme III','(888) 593-2913','karl29@cartwright.com','Totam corrupti aut aut eum. Consequatur nesciunt aut qui qui aut veniam exercitationem placeat. Quod perferendis pariatur sunt aliquam culpa cum.',1),(20,'2025-07-12 04:14:20','2025-07-12 04:14:20','Floyd Jacobi','800-403-5009','hbrown@mcclure.org','Et aut consequatur ea et. Repellat laudantium nostrum et consequatur consectetur. Facere omnis error aliquam ullam non nemo ab.',1),(21,'2025-07-12 04:14:20','2025-07-12 04:14:20','Lyric Turcotte','1-844-929-8906','hudson.gibson@hotmail.com','Maiores illo et debitis alias earum corrupti. Facilis eum velit culpa. Amet qui dolore deserunt quo. Neque minima est quia aspernatur.',1),(22,'2025-07-12 04:14:20','2025-07-12 04:14:20','Mr. Aron DuBuque','(844) 260-4526','bailee53@price.info','Expedita voluptatem non laborum id. Quam ducimus sit molestiae cum.',1),(23,'2025-07-12 04:14:20','2025-07-12 04:14:20','Dario Paucek','(877) 809-2585','wilbert.lebsack@ankunding.com','Vero non libero exercitationem porro nisi odit distinctio. Molestiae repellat eaque dolorum eum eos aut. Est rem dolore ex qui.',2),(24,'2025-07-12 04:14:20','2025-07-12 04:14:20','Edgar Schamberger','(855) 545-4219','ymohr@brown.com','Repudiandae iure impedit nostrum non voluptatem. Rerum dolor ut rerum ab temporibus nobis. Eos est quibusdam iusto quia quia sint sed reiciendis.',1),(25,'2025-07-12 04:14:20','2025-07-12 04:14:20','Prof. Lyric Prosacco','1-844-338-1937','hillard06@yahoo.com','Aperiam enim qui quibusdam omnis porro. Rerum distinctio explicabo doloremque quam et repudiandae.',2),(26,'2025-07-12 04:14:20','2025-07-12 04:14:20','Frances Mitchell','866.215.2767','schoen.whitney@olson.com','A quis sint voluptatem ex rerum earum ad. Magni repudiandae ex laudantium consequatur commodi esse incidunt magnam.',2),(27,'2025-07-12 04:14:20','2025-07-12 04:14:20','Elwyn Runolfsdottir','1-866-819-7326','concepcion51@rice.com','Sint quia sequi est voluptatum voluptatibus architecto inventore. Et aperiam quos sit ea.',2),(28,'2025-07-12 04:14:20','2025-07-12 04:14:20','Aaron Flatley','888.681.7873','cruz40@gmail.com','Sit sed quia in dolor. Rerum ut quas et facere nihil et sed. Nesciunt sed dignissimos aut sapiente.',2),(29,'2025-07-12 04:14:20','2025-07-12 04:14:20','Mrs. Eunice Hackett','1-800-588-0236','mohammed86@gmail.com','Et voluptas voluptates amet. Qui ut sit quisquam dicta nihil. Dolor inventore ea consectetur rem perspiciatis.',2),(30,'2025-07-12 04:14:20','2025-07-12 04:14:20','Mrs. Shanelle Koss Sr.','1-855-305-6764','ymurphy@yahoo.com','Eos deleniti molestiae exercitationem eaque. Quos nobis et quis eum. Et ipsa enim aut ut.',2),(31,'2025-07-12 04:14:20','2025-07-12 04:14:20','Lucious Weber','(844) 610-5748','sabina91@hotmail.com','Dolorem voluptatem autem et unde quo quisquam vitae. Molestiae nihil voluptates eaque ut qui assumenda. Esse sint voluptatem vel earum.',2),(32,'2025-07-12 04:14:20','2025-07-12 04:14:20','Brenna Oberbrunner','1-855-776-9474','esteban21@hotmail.com','Et quis voluptatum sit. Ab incidunt quam et repellendus illum quo et doloribus. Delectus eum ut vero magnam neque esse vitae.',3),(33,'2025-07-12 04:14:20','2025-07-12 04:14:20','Julia Morar','866.672.5639','jordy23@keeling.biz','Inventore sit provident voluptatem a tempora sint omnis. Aperiam et numquam animi earum. Facere quidem aut nobis explicabo quia qui.',1),(34,'2025-07-12 04:14:20','2025-07-12 04:14:20','Taurean Schultz','844-323-6387','katlynn23@gmail.com','Eaque ullam mollitia dicta. Voluptas soluta qui tempore neque vitae in tempore. Omnis sunt aut facere corrupti cumque hic.',3),(35,'2025-07-12 04:14:20','2025-07-12 04:14:20','Prof. Hilario Kuvalis IV','888-425-2813','earline14@hotmail.com','Et sed minus quam sint. Ut inventore occaecati non illo repellendus. Vitae at excepturi qui magnam nostrum. Distinctio qui aut ab.',3),(36,'2025-07-12 04:14:20','2025-07-12 04:14:20','Dr. Cesar Ortiz V','877.589.6210','patricia07@hotmail.com','Est quia et excepturi perferendis culpa aperiam. Perferendis similique dignissimos suscipit aut eos et. Aut quo culpa numquam voluptate.',2),(37,'2025-07-12 04:14:20','2025-07-12 04:14:20','Savannah Walker','800.800.1382','mlind@hotmail.com','Placeat tempore est omnis dolore dolor et. Impedit dolor aut porro dolorem sapiente.',2),(38,'2025-07-12 04:14:20','2025-07-12 04:14:20','Keara Skiles','1-844-459-9113','alana.wyman@harvey.com','Nam eum consequatur facere placeat. Maxime illo cum recusandae rerum eum corrupti sint. Voluptatem velit quisquam quis voluptatem numquam.',1),(39,'2025-07-12 04:14:20','2025-07-12 04:14:20','Ryleigh Anderson III','866-984-0033','schroeder.abraham@hotmail.com','Rem aut quis qui voluptates. Porro quod occaecati aut aut ullam qui dolorum. Voluptatibus quos molestiae qui ea sit molestiae aut.',2),(40,'2025-07-12 04:14:20','2025-07-12 04:14:20','Georgianna Kling IV','800.820.8197','pink.shields@hotmail.com','Quae sunt repudiandae laborum consectetur. Dignissimos et ut consequatur quasi enim. Omnis quisquam cupiditate ea accusantium nostrum nemo.',1),(41,'2025-07-12 04:14:20','2025-07-12 04:14:20','Mr. Garnett Feest II','(877) 242-3327','zkunde@hotmail.com','Ducimus cumque iure sit est dolorem quos. Et perferendis expedita quae nihil reiciendis suscipit vel. Ut nesciunt illo sit.',2),(42,'2025-07-12 04:14:20','2025-07-12 04:14:20','Candice Schuppe DDS','1-800-788-5364','carroll.yasmin@schulist.com','Sapiente nihil soluta iure. Saepe veritatis ea sapiente eos. Quam tempore et enim et saepe. Quaerat est officia aliquid.',1),(43,'2025-07-12 04:14:20','2025-07-12 04:14:20','Jensen Hyatt','1-888-348-2419','conroy.fermin@boyle.info','Eveniet est repudiandae unde pariatur. Odit recusandae architecto sit laudantium et aspernatur accusamus. Incidunt nisi quae voluptatem et modi.',1),(44,'2025-07-12 04:14:20','2025-07-12 04:14:20','Deion Nienow','855.994.1558','ukuphal@cormier.com','Non earum voluptas vel. Deserunt et nulla blanditiis accusamus. Facere illo autem debitis illo ut est assumenda.',1),(45,'2025-07-12 04:14:20','2025-07-12 04:14:20','Estevan Smith','1-844-865-0186','giles.wolff@yundt.info','Placeat quia dolores aut aliquid. Qui deserunt dolor eaque recusandae id nam optio explicabo. Animi veniam officia maxime eius dolores a.',2),(46,'2025-07-12 04:14:20','2025-07-12 04:14:20','Juanita Lynch','(877) 447-5549','johnathon.pacocha@gulgowski.com','Qui nulla blanditiis molestias facilis aut molestiae sed et. Explicabo assumenda velit id in in. Non quibusdam distinctio ea.',3),(47,'2025-07-12 04:14:20','2025-07-12 04:14:20','Jadyn Torp','866-775-4556','fcremin@gmail.com','Hic consequatur vel saepe dolorem. Incidunt adipisci vero est quo. Vel quisquam mollitia ut voluptatem quos.',1),(48,'2025-07-12 04:14:20','2025-07-12 04:14:20','Gwen Schmeler II','800.241.6710','fcole@jones.com','Et quod atque ut non. Eos nesciunt officia tempore quia qui et aperiam perspiciatis.',2),(49,'2025-07-12 04:14:20','2025-07-12 04:14:20','Van Trantow','(855) 382-7767','elittle@hotmail.com','Blanditiis temporibus aliquam eveniet nam sed id. Laudantium aut saepe nulla quia qui est. Ipsa est delectus ut natus fugit omnis.',3),(50,'2025-07-12 04:14:20','2025-07-12 04:14:20','Maudie Mayert','855.971.3522','yhuel@willms.com','Saepe quae rerum numquam sit. Facilis qui alias non ea qui. Consequatur et est beatae qui.',3),(51,'2025-07-12 04:14:20','2025-07-12 04:14:20','Miller Rippin','(866) 575-5637','daniel.vesta@powlowski.com','Libero sequi ex dolorem ut architecto ut. Totam eaque et quo est inventore rerum tenetur. Necessitatibus dolor eos iste in.',3),(52,'2025-07-12 04:14:20','2025-07-12 04:14:20','Zelma Ledner','800-287-1026','price.liliane@hotmail.com','Ratione et non dolores est consequatur fugit. Molestiae voluptatum magnam id consequatur suscipit non. Quae rerum dolorem doloremque a.',2),(53,'2025-07-12 04:14:20','2025-07-12 04:14:20','Deanna Parisian Jr.','877-309-2562','bergnaum.delmer@hotmail.com','Sed in voluptatibus autem qui tenetur sapiente. Consequatur quasi qui repudiandae odit. Dolorum officia quisquam autem incidunt eum inventore culpa.',3),(54,'2025-07-12 04:14:20','2025-07-12 04:14:20','Holly Feeney Sr.','844-678-8926','tyshawn.oberbrunner@yahoo.com','Ullam reprehenderit iusto beatae et et. Dolor possimus quasi dignissimos quia modi. Omnis dolores incidunt quas enim ut ipsam reprehenderit.',2),(55,'2025-07-12 04:14:20','2025-07-12 04:14:20','Glenna Osinski','1-888-417-6106','anya.daniel@yahoo.com','Voluptatem ut et quia expedita. Amet et vel vel sunt inventore tenetur labore.',2),(56,'2025-07-12 04:14:20','2025-07-12 04:14:20','Dr. Woodrow Hickle V','1-866-332-7403','orie68@will.com','Corrupti accusamus facere itaque voluptatem ipsam quia. Autem ut et ex illo repellendus quia illo. Quo eos et quia et rerum minima est qui.',2),(57,'2025-07-12 04:14:20','2025-07-12 04:14:20','Enos Leannon II','(888) 727-5665','xondricka@runolfsdottir.info','Quia nam dolor ducimus ex dolores. Autem aut dolor ut.',1),(58,'2025-07-12 04:14:20','2025-07-12 04:14:20','Dr. Amelia Romaguera','877-423-6057','jacinto04@schultz.com','Aperiam ut earum distinctio voluptatibus. Soluta dicta nostrum debitis adipisci voluptas corrupti deleniti. Suscipit magnam consectetur modi.',2),(59,'2025-07-12 04:14:20','2025-07-12 04:14:20','Lenore Kuhic','1-888-458-5919','lucious60@feest.info','Est iste est nesciunt eos. Recusandae fugiat optio voluptas aut deleniti.',2),(60,'2025-07-12 04:14:20','2025-07-12 04:14:20','Dr. Terrill Gibson I','(877) 865-7146','ron77@mertz.com','Aspernatur assumenda facere non assumenda non maiores est. In nihil quos sapiente eius. Est temporibus sunt facilis.',2),(61,'2025-07-12 04:14:20','2025-07-12 04:14:20','Adriel Kihn','1-800-338-0553','xfarrell@gmail.com','Dolorum eum sit quia sit. Aliquid eveniet rem recusandae voluptatibus. Nisi eveniet cum a nobis ipsum id.',1),(62,'2025-07-12 04:14:20','2025-07-12 04:14:20','Trycia Hayes','(855) 515-5123','aubrey.effertz@adams.net','Quo atque corrupti labore et laudantium voluptas. Quaerat minus soluta tempore deserunt. Fugit et fugiat reiciendis ut.',1),(63,'2025-07-12 04:14:20','2025-07-12 04:14:20','Ubaldo Emard','(888) 371-7709','eichmann.kenneth@lehner.com','Vel vel non asperiores architecto. Sed dignissimos voluptate a dignissimos qui laborum. Ducimus modi exercitationem ad nemo enim.',3),(64,'2025-07-12 04:14:20','2025-07-12 04:14:20','Ms. Idell Mayer','888.669.2188','morar.zoe@gmail.com','Possimus odit officiis magni iste facere. Odit fugiat excepturi maiores ut qui id in. Dolor rerum ut magnam fuga.',3),(65,'2025-07-12 04:14:20','2025-07-12 04:14:20','Devon Pfannerstill','855.525.4933','pacocha.adelbert@hotmail.com','Quis laborum voluptatum consequatur blanditiis. Temporibus qui voluptatem et doloribus et eum. Ipsam eligendi sunt est blanditiis corrupti.',1),(66,'2025-07-12 04:14:20','2025-07-12 04:14:20','Mr. Gonzalo Herzog','(888) 448-7960','ethelyn35@jones.biz','Voluptatum dolor et quis repellat ea molestiae. Error facere voluptatem eaque et ullam facilis molestias aliquid. Quis occaecati veniam quam totam.',1),(67,'2025-07-12 04:14:20','2025-07-12 04:14:20','Elian Bartoletti','(877) 344-5907','bashirian.eriberto@hotmail.com','Autem vitae est accusantium et. Non ut id nesciunt. Et aut molestiae non saepe excepturi harum mollitia. Totam ea sit nam dolorem accusamus.',3),(68,'2025-07-12 04:14:20','2025-07-12 04:14:20','Mallie Dach','(800) 635-9657','dejah.leannon@stracke.org','Necessitatibus fugit dolores similique sed sit aliquid totam. Nisi perspiciatis minima enim aliquam aut culpa. Non vitae ut atque vero eos.',2),(69,'2025-07-12 04:14:20','2025-07-12 04:14:20','Dulce Luettgen PhD','866.394.4631','megane.boehm@yahoo.com','Exercitationem aut animi iste et. Est fugit vitae velit laborum. Tempore porro enim magni tempora.',1),(70,'2025-07-12 04:14:20','2025-07-12 04:14:20','Ms. Rosie Jacobson III','(855) 212-1347','aylin.olson@nitzsche.com','Aut est ipsam recusandae enim laboriosam harum. Earum debitis provident pariatur reiciendis nulla sit.',2),(71,'2025-07-12 04:14:20','2025-07-12 04:14:20','Prof. Murphy Armstrong MD','1-888-475-8531','ecrona@hodkiewicz.com','Et velit laboriosam magnam. Omnis iste eaque possimus rerum. Esse aut ipsum atque omnis.',3),(72,'2025-07-12 04:14:20','2025-07-12 04:14:20','Oleta Daniel','844-775-9566','thomas87@kuhic.info','Et id quasi maiores aut. Maxime quo quia rem dignissimos enim exercitationem. Sit necessitatibus aut commodi amet. Deleniti odio iure quia velit.',1),(73,'2025-07-12 04:14:20','2025-07-12 04:14:20','Emil Green','1-888-306-9507','erik49@yahoo.com','Optio et aliquid sed provident deleniti. Qui porro sunt totam possimus ducimus. Ut iste qui tenetur velit voluptatem.',3),(74,'2025-07-12 04:14:20','2025-07-12 04:14:20','Prof. Dale Brown I','1-844-328-7458','akohler@hotmail.com','Non ducimus accusantium et quia. Id labore non et voluptatem deserunt qui. Fugiat corrupti odio necessitatibus corporis est suscipit rerum.',1),(75,'2025-07-12 04:14:20','2025-07-12 04:14:20','Yadira Kirlin','844-729-2478','simonis.iliana@hotmail.com','Ut sit sit enim deserunt perspiciatis perspiciatis. Et fuga voluptatum suscipit. Ut ipsa dignissimos et libero. Qui quia itaque hic aliquam.',1),(76,'2025-07-12 04:14:20','2025-07-12 04:14:20','Nicolas Cremin','844-580-4392','efrain06@sawayn.com','Culpa dolores aut quod aut omnis. Laboriosam fugit aperiam ipsa rem non fuga cumque. Veritatis sit et ea eum ipsa ut.',3),(77,'2025-07-12 04:14:20','2025-07-12 04:14:20','Carlee Monahan IV','(877) 613-7396','goyette.cyril@pfannerstill.info','Magni illo ducimus quia. Eos temporibus sed omnis nulla eveniet voluptatem. Fugit provident vero molestias hic. Nobis expedita sequi omnis sed.',1),(78,'2025-07-12 04:14:20','2025-07-12 04:14:20','Dr. Euna Zieme Jr.','877.756.9519','lmohr@gmail.com','Aspernatur optio deserunt et eius velit laboriosam. Incidunt nemo laudantium eos tempore. Aut quam suscipit dolores corrupti.',2),(79,'2025-07-12 04:14:20','2025-07-12 04:14:20','Ryleigh Bosco','855.362.5830','feeney.zena@gmail.com','Sed neque nobis quos consequatur ut. Et perspiciatis omnis dignissimos ipsam. Veniam aut et esse aut.',3),(80,'2025-07-12 04:14:20','2025-07-12 04:14:20','Natalia Anderson','866.777.8649','wisoky.esmeralda@farrell.info','Impedit quis sit neque sit corrupti. Harum deleniti sint accusantium asperiores placeat non. Laudantium accusantium magnam non.',3),(81,'2025-07-12 04:14:20','2025-07-12 04:14:20','Yadira Thiel','855.623.2167','cnader@macejkovic.net','Nisi ut maiores voluptatum quisquam illum. Saepe odit voluptate ipsam eum voluptas. Qui eius nisi dolorem id dolorem iure nam mollitia.',2),(82,'2025-07-12 04:14:20','2025-07-12 04:14:20','Lauriane Hagenes','(888) 992-6542','santiago00@johnson.com','Quos neque esse veritatis suscipit maiores. Ad quo occaecati debitis et.',2),(83,'2025-07-12 04:14:20','2025-07-12 04:14:20','Claudine Gottlieb','(877) 806-1148','hubert23@gmail.com','Nostrum iusto et debitis voluptas fuga. Exercitationem vel eos atque voluptatem quod quis hic. Deserunt ducimus ipsam consectetur libero est.',3),(84,'2025-07-12 04:14:20','2025-07-12 04:14:20','Juanita Harber','1-844-648-6332','henri26@yahoo.com','Ea nam dolore ab. Ratione eos et soluta id nostrum est. Est dolorem aut omnis velit.',3),(85,'2025-07-12 04:14:20','2025-07-12 04:14:20','Brittany Russel Sr.','800-488-7488','nhermann@hotmail.com','Qui rem soluta fugiat quam. Est id quaerat et ipsam. Maiores id sit dolorum quibusdam iste qui.',2),(86,'2025-07-12 04:14:20','2025-07-12 04:14:20','Bridget Fritsch','877.665.9229','lavina.wunsch@kulas.com','Sed expedita neque eos nihil. Voluptatem veritatis excepturi mollitia molestias nobis est reprehenderit. Facilis rerum et omnis alias saepe.',3),(87,'2025-07-12 04:14:20','2025-07-12 04:14:20','Valentin Hessel','855.861.5410','walsh.suzanne@jacobson.com','Numquam modi consequatur eum. Est aperiam velit ducimus consequatur. Rerum voluptatem autem enim laborum.',2),(88,'2025-07-12 04:14:20','2025-07-12 04:14:20','Carmella Schmeler DVM','844-454-5909','armstrong.lynn@yahoo.com','Illo qui quia quam neque animi. Distinctio maiores libero ducimus quos. Reiciendis in recusandae soluta rerum iure sit repudiandae.',2),(89,'2025-07-12 04:14:20','2025-07-12 04:14:20','Norberto Schumm IV','(855) 306-7247','uschmidt@zemlak.com','Veniam eum nisi qui. Ut dolore quae sit deleniti possimus eligendi iure. Quisquam ducimus aut vel illum sed sit enim.',2),(90,'2025-07-12 04:14:20','2025-07-12 04:14:20','Lionel DuBuque','(866) 945-0552','macey14@auer.info','Ducimus facere ipsum molestiae quia. Optio maiores labore et iusto. Quae animi aut dolores veniam et perferendis. Totam totam cum dolorum doloribus.',1),(91,'2025-07-12 04:14:20','2025-07-12 04:14:20','Mrs. Lavina Kirlin','1-888-422-2781','leffler.junius@gmail.com','Autem pariatur ullam assumenda dolore in. Ut soluta soluta consequatur ducimus soluta. Eveniet rem ab quibusdam atque enim sint.',1),(92,'2025-07-12 04:14:20','2025-07-12 04:14:20','Miss Susanna Schmeler Sr.','(877) 675-7126','howe.ivah@dietrich.com','Nostrum et sapiente assumenda unde. Sed odio dignissimos molestiae cumque unde. Ipsa unde qui eveniet dolores et ullam.',1),(93,'2025-07-12 04:14:20','2025-07-12 04:14:20','Chaya Torp','888-891-9843','ewalker@hotmail.com','Dolores dolorem pariatur rem omnis. Tempora nisi fugit nam numquam. Praesentium suscipit dolores nesciunt voluptatem.',2),(94,'2025-07-12 04:14:20','2025-07-12 04:14:20','Ms. Jade Crooks','1-888-612-7733','greenfelder.nathanial@yahoo.com','Occaecati autem asperiores voluptatem at quasi ad ullam. Ut sint omnis impedit laborum. Expedita ipsum omnis eius dolores. Sit velit delectus culpa.',3),(95,'2025-07-12 04:14:20','2025-07-12 04:14:20','Jared Padberg','844-777-9784','jbernhard@hotmail.com','Dolorem consequatur qui mollitia ad maxime id voluptatum. Nostrum quae enim earum ut. Perspiciatis dolorem repudiandae inventore dolore vitae id et.',2),(96,'2025-07-12 04:14:20','2025-07-12 04:14:20','Name Bode','(844) 818-8262','bernice.hyatt@turcotte.com','Incidunt possimus ea corporis id et in aut. Id provident error ut id vero quia fugiat. Qui consectetur consequatur et praesentium provident velit.',2),(97,'2025-07-12 04:14:20','2025-07-12 04:14:20','Miss Cassandra Mosciski','(844) 270-6536','probel@gmail.com','Et sed a perspiciatis velit nemo ut. Minima odit non placeat ea et quibusdam ipsum.',2),(98,'2025-07-12 04:14:20','2025-07-12 04:14:20','Heather Swift','844-945-6254','monica.schneider@gmail.com','Dolorem sequi ipsum architecto aliquid. Qui ut iste maxime et dolorum. Sit quidem laborum praesentium voluptas.',2),(99,'2025-07-12 04:14:20','2025-07-12 04:14:20','Dr. Candice Swaniawski DVM','(855) 940-0725','kutch.dayne@hotmail.com','Autem dolore est commodi et tempora expedita et dolores. Dolorem et sit et sed. Optio possimus autem placeat asperiores possimus officia inventore.',1),(100,'2025-07-12 04:14:20','2025-07-12 04:14:20','Dr. Ava Hackett','877-474-9883','altenwerth.diego@kunze.org','Consequatur autem quisquam laudantium autem quia tenetur. Qui aliquam facere repellendus cumque officiis molestiae sit. Velit ut ex deleniti.',3),(101,'2025-07-12 20:14:27','2025-07-12 20:14:27','Talles Sousa Braga','88998505067','tallesbraga63@gmail.com','Preencha aqui a sua mensagem',1);
/*!40000 ALTER TABLE `site_contatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidades`
--

DROP TABLE IF EXISTS `unidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unidades` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `unidade` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidades`
--

LOCK TABLES `unidades` WRITE;
/*!40000 ALTER TABLE `unidades` DISABLE KEYS */;
INSERT INTO `unidades` VALUES (1,'UN','Unidade','2025-07-23 18:08:52','2025-07-23 18:08:52');
/*!40000 ALTER TABLE `unidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'kido','kido@email.com',NULL,'123123',NULL,'2025-07-15 23:52:39','2025-07-15 23:52:39');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-29 12:04:45
