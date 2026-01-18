-- MySQL dump 10.13  Distrib 8.4.7, for Win64 (x86_64)
--
-- Host: localhost    Database: django_localhost
-- ------------------------------------------------------
-- Server version	8.4.7

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add drinks category',7,'add_drinkscategory'),(26,'Can change drinks category',7,'change_drinkscategory'),(27,'Can delete drinks category',7,'delete_drinkscategory'),(28,'Can view drinks category',7,'view_drinkscategory'),(29,'Can add drinks',8,'add_drinks'),(30,'Can change drinks',8,'change_drinks'),(31,'Can delete drinks',8,'delete_drinks'),(32,'Can view drinks',8,'view_drinks'),(33,'Can add wine',9,'add_wine'),(34,'Can change wine',9,'change_wine'),(35,'Can delete wine',9,'delete_wine'),(36,'Can view wine',9,'view_wine'),(37,'Can add cider',10,'add_cider'),(38,'Can change cider',10,'change_cider'),(39,'Can delete cider',10,'delete_cider'),(40,'Can view cider',10,'view_cider'),(41,'Can add beer',11,'add_beer'),(42,'Can change beer',11,'change_beer'),(43,'Can delete beer',11,'delete_beer'),(44,'Can view beer',11,'view_beer'),(45,'Can add vodka',12,'add_vodka'),(46,'Can change vodka',12,'change_vodka'),(47,'Can delete vodka',12,'delete_vodka'),(48,'Can view vodka',12,'view_vodka'),(49,'Can add rum',13,'add_rum'),(50,'Can change rum',13,'change_rum'),(51,'Can delete rum',13,'delete_rum'),(52,'Can view rum',13,'view_rum'),(53,'Can add white rum',14,'add_whiterum'),(54,'Can change white rum',14,'change_whiterum'),(55,'Can delete white rum',14,'delete_whiterum'),(56,'Can view white rum',14,'view_whiterum'),(57,'Can add login',15,'add_login'),(58,'Can change login',15,'change_login'),(59,'Can delete login',15,'delete_login'),(60,'Can view login',15,'view_login'),(61,'Can add reservation',16,'add_reservation'),(62,'Can change reservation',16,'change_reservation'),(63,'Can delete reservation',16,'delete_reservation'),(64,'Can view reservation',16,'view_reservation'),(65,'Can add food category',17,'add_foodcategory'),(66,'Can change food category',17,'change_foodcategory'),(67,'Can delete food category',17,'delete_foodcategory'),(68,'Can view food category',17,'view_foodcategory'),(69,'Can add biriyani',18,'add_biriyani'),(70,'Can change biriyani',18,'change_biriyani'),(71,'Can delete biriyani',18,'delete_biriyani'),(72,'Can view biriyani',18,'view_biriyani'),(73,'Can add food item',19,'add_fooditem'),(74,'Can change food item',19,'change_fooditem'),(75,'Can delete food item',19,'delete_fooditem'),(76,'Can view food item',19,'view_fooditem'),(77,'Can add coffee',20,'add_coffee'),(78,'Can change coffee',20,'change_coffee'),(79,'Can delete coffee',20,'delete_coffee'),(80,'Can view coffee',20,'view_coffee'),(81,'Can add fruit juice',21,'add_fruitjuice'),(82,'Can change fruit juice',21,'change_fruitjuice'),(83,'Can delete fruit juice',21,'delete_fruitjuice'),(84,'Can view fruit juice',21,'view_fruitjuice'),(85,'Can add mocktail',22,'add_mocktail'),(86,'Can change mocktail',22,'change_mocktail'),(87,'Can delete mocktail',22,'delete_mocktail'),(88,'Can view mocktail',22,'view_mocktail'),(89,'Can add softdrinks',23,'add_softdrinks'),(90,'Can change softdrinks',23,'change_softdrinks'),(91,'Can delete softdrinks',23,'delete_softdrinks'),(92,'Can view softdrinks',23,'view_softdrinks'),(93,'Can add tea',24,'add_tea'),(94,'Can change tea',24,'change_tea'),(95,'Can delete tea',24,'delete_tea'),(96,'Can view tea',24,'view_tea'),(97,'Can add milkand milkshake',25,'add_milkandmilkshake'),(98,'Can change milkand milkshake',25,'change_milkandmilkshake'),(99,'Can delete milkand milkshake',25,'delete_milkandmilkshake'),(100,'Can view milkand milkshake',25,'view_milkandmilkshake');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$KiqFa5YY521iofI6TUPdGi$+hlT3oh0RRWZ0lslyhNm6JaOM8xE6Vu8QIqR0alaa5c=','2024-06-10 10:18:11.768799',1,'Sourav','','','mallicksourav487@gmail.com',1,1,'2024-04-24 18:23:31.764000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demoapp_beer`
--

DROP TABLE IF EXISTS `demoapp_beer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demoapp_beer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `beer_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `drink_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `demoapp_beer_drink_id_a3282a6a_fk_demoapp_drinks_id` (`drink_id`),
  CONSTRAINT `demoapp_beer_drink_id_a3282a6a_fk_demoapp_drinks_id` FOREIGN KEY (`drink_id`) REFERENCES `demoapp_drinks` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demoapp_beer`
--

LOCK TABLES `demoapp_beer` WRITE;
/*!40000 ALTER TABLE `demoapp_beer` DISABLE KEYS */;
INSERT INTO `demoapp_beer` VALUES (1,'Kingfisher',160,1),(2,'Carlsberg',230,1),(3,'Budweiser',190,1),(4,'Bira 91',190,1),(5,'Corona Extra',160,1),(6,'Heineken',210,1),(7,'Foster\'s',110,1),(8,'Tuborg',170,1),(9,'Hoegaarden',240,1),(10,'Bro Code',160,1),(11,'GodFather',170,1),(12,'King\'s',130,1);
/*!40000 ALTER TABLE `demoapp_beer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demoapp_biriyani`
--

DROP TABLE IF EXISTS `demoapp_biriyani`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demoapp_biriyani` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demoapp_biriyani`
--

LOCK TABLES `demoapp_biriyani` WRITE;
/*!40000 ALTER TABLE `demoapp_biriyani` DISABLE KEYS */;
/*!40000 ALTER TABLE `demoapp_biriyani` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demoapp_biriyani_categories`
--

DROP TABLE IF EXISTS `demoapp_biriyani_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demoapp_biriyani_categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `biriyani_id` bigint NOT NULL,
  `foodcategory_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `demoapp_biriyani_categor_biriyani_id_foodcategory_e430a29c_uniq` (`biriyani_id`,`foodcategory_id`),
  KEY `demoapp_biriyani_cat_foodcategory_id_24c2d1ee_fk_demoapp_f` (`foodcategory_id`),
  CONSTRAINT `demoapp_biriyani_cat_biriyani_id_6e2e5ccc_fk_demoapp_b` FOREIGN KEY (`biriyani_id`) REFERENCES `demoapp_biriyani` (`id`),
  CONSTRAINT `demoapp_biriyani_cat_foodcategory_id_24c2d1ee_fk_demoapp_f` FOREIGN KEY (`foodcategory_id`) REFERENCES `demoapp_foodcategory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demoapp_biriyani_categories`
--

LOCK TABLES `demoapp_biriyani_categories` WRITE;
/*!40000 ALTER TABLE `demoapp_biriyani_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `demoapp_biriyani_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demoapp_cider`
--

DROP TABLE IF EXISTS `demoapp_cider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demoapp_cider` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cider_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `drink_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `demoapp_cider_drink_id_dea84798_fk_demoapp_drinks_id` (`drink_id`),
  CONSTRAINT `demoapp_cider_drink_id_dea84798_fk_demoapp_drinks_id` FOREIGN KEY (`drink_id`) REFERENCES `demoapp_drinks` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demoapp_cider`
--

LOCK TABLES `demoapp_cider` WRITE;
/*!40000 ALTER TABLE `demoapp_cider` DISABLE KEYS */;
INSERT INTO `demoapp_cider` VALUES (1,'Citizen Cider the AmeriCran',1246,2),(2,'Ace Cider\'s Pineapple Hard Cider',3394,2),(3,'Square Mile Hopped Apple Cider',956,2),(4,'Angry Orchard Green Apple Cider',1122,2),(5,'Strongbow’s Gold Hard Apple Cider',1205,2),(6,'Crispin Cider Co.: The Saint',3660,2),(7,'Samuel Smith’s Organic Cider',1996,2),(8,'Woodchuck Raspberry Cider',997,2),(9,'Famille Dupont Organic Cider',1247,2),(10,'Brickworks Ciderhouse, Batch: 1904',930,2);
/*!40000 ALTER TABLE `demoapp_cider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demoapp_coffee`
--

DROP TABLE IF EXISTS `demoapp_coffee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demoapp_coffee` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Coffee_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `drink_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `demoapp_coffee_drink_id_8bdfa7dd_fk_demoapp_drinks_id` (`drink_id`),
  CONSTRAINT `demoapp_coffee_drink_id_8bdfa7dd_fk_demoapp_drinks_id` FOREIGN KEY (`drink_id`) REFERENCES `demoapp_drinks` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demoapp_coffee`
--

LOCK TABLES `demoapp_coffee` WRITE;
/*!40000 ALTER TABLE `demoapp_coffee` DISABLE KEYS */;
/*!40000 ALTER TABLE `demoapp_coffee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demoapp_drinks`
--

DROP TABLE IF EXISTS `demoapp_drinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demoapp_drinks` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `drink` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `category_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `demoapp_drinks_category_id_id_1968be2d_fk_demoapp_d` (`category_id_id`),
  CONSTRAINT `demoapp_drinks_category_id_id_1968be2d_fk_demoapp_d` FOREIGN KEY (`category_id_id`) REFERENCES `demoapp_drinkscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demoapp_drinks`
--

LOCK TABLES `demoapp_drinks` WRITE;
/*!40000 ALTER TABLE `demoapp_drinks` DISABLE KEYS */;
INSERT INTO `demoapp_drinks` VALUES (1,'Beer',175,2),(2,'Cider',249,2),(3,'Rum',1400,2),(4,'Vodka',340,2),(5,'White Rum',1500,2),(6,'Wine',999,2),(7,'Mlik',80,1),(8,'Soft Drinks',100,1),(9,'Fruit Juice',60,1),(10,'Tea',15,1),(11,'Coffee',40,1),(12,'Mocktail',150,1);
/*!40000 ALTER TABLE `demoapp_drinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demoapp_drinkscategory`
--

DROP TABLE IF EXISTS `demoapp_drinkscategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demoapp_drinkscategory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demoapp_drinkscategory`
--

LOCK TABLES `demoapp_drinkscategory` WRITE;
/*!40000 ALTER TABLE `demoapp_drinkscategory` DISABLE KEYS */;
INSERT INTO `demoapp_drinkscategory` VALUES (1,'Non-Alcoholic'),(2,'Alcoholic');
/*!40000 ALTER TABLE `demoapp_drinkscategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demoapp_foodcategory`
--

DROP TABLE IF EXISTS `demoapp_foodcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demoapp_foodcategory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demoapp_foodcategory`
--

LOCK TABLES `demoapp_foodcategory` WRITE;
/*!40000 ALTER TABLE `demoapp_foodcategory` DISABLE KEYS */;
INSERT INTO `demoapp_foodcategory` VALUES (1,'Non-veg'),(2,'Veg'),(3,'Fast Food'),(4,'Dessert');
/*!40000 ALTER TABLE `demoapp_foodcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demoapp_fooditem`
--

DROP TABLE IF EXISTS `demoapp_fooditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demoapp_fooditem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demoapp_fooditem`
--

LOCK TABLES `demoapp_fooditem` WRITE;
/*!40000 ALTER TABLE `demoapp_fooditem` DISABLE KEYS */;
INSERT INTO `demoapp_fooditem` VALUES (1,'Pastries','Pastries include pies, cobblers, and anything else made with a light and flaky bread crust.',70.00),(2,'Custards and Puddings','Made with a base of cream and milk, puddings and custards are remarkably similar.',105.00),(3,'Frozen','Cold, creamy, and absolutely delicious, frozen treats include ice cream, gelato, sorbet, shaved ice, frozen yogurt, and so much more.',95.00),(4,'Gelatin','Jellied desserts are made of gelatin, a processed collagen product that gives desserts the quintessential “jiggle.”',120.00),(5,'Cakes','Perhaps the most popular dessert of all time, cake contains a combination of flour, sugar, eggs, butter or oil, leavening agents (such as yeast or baking powder), and sometimes milk or water.',45.00),(6,'Rosogolla','Rasgulla is a syrupy dessert popular in the West bengal. It is made from ball-shaped and made with milk and sugar.',10.00),(7,'Gulab jamun','Gulab jamun is a sweet confectionary or dessert, originating in the Indian subcontinent and a type of mithai popular in India, Pakistan, Nepal, the Maldives, Bangladesh, and Myanmar.',10.00),(8,'Butter Chicken','It\'s a  North Indian dish. It is mainly made with Fresh Chicken and butter.',180.00),(9,'Tandoori Chicken','This is a dish from the Indian subcontinent. Tandoori chicken is prepared in a tandoor oven. Raw chicken parts are skinned and then marinated in a mixture of dahi (yoghurt) and tandoori masala, a spice blend.',399.00),(10,'Mutton curry','Mutton Curry is a one-pot dish where the mutton is marinated and cooked with plenty of spices, herbs, onions, tomatoes and yoghurt.',499.00);
/*!40000 ALTER TABLE `demoapp_fooditem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demoapp_fooditem_categories`
--

DROP TABLE IF EXISTS `demoapp_fooditem_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demoapp_fooditem_categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fooditem_id` bigint NOT NULL,
  `foodcategory_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `demoapp_fooditem_categor_fooditem_id_foodcategory_74d6b54d_uniq` (`fooditem_id`,`foodcategory_id`),
  KEY `demoapp_fooditem_cat_foodcategory_id_ff8944ad_fk_demoapp_f` (`foodcategory_id`),
  CONSTRAINT `demoapp_fooditem_cat_foodcategory_id_ff8944ad_fk_demoapp_f` FOREIGN KEY (`foodcategory_id`) REFERENCES `demoapp_foodcategory` (`id`),
  CONSTRAINT `demoapp_fooditem_cat_fooditem_id_6b222a9e_fk_demoapp_f` FOREIGN KEY (`fooditem_id`) REFERENCES `demoapp_fooditem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demoapp_fooditem_categories`
--

LOCK TABLES `demoapp_fooditem_categories` WRITE;
/*!40000 ALTER TABLE `demoapp_fooditem_categories` DISABLE KEYS */;
INSERT INTO `demoapp_fooditem_categories` VALUES (1,1,4),(2,2,4),(3,3,4),(4,4,4),(5,5,4),(6,6,4),(7,7,4),(8,8,1),(9,9,1),(10,9,3),(11,10,1);
/*!40000 ALTER TABLE `demoapp_fooditem_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demoapp_fruitjuice`
--

DROP TABLE IF EXISTS `demoapp_fruitjuice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demoapp_fruitjuice` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `FruitJuice_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `drink_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `demoapp_fruitjuice_drink_id_fc830e60_fk_demoapp_drinks_id` (`drink_id`),
  CONSTRAINT `demoapp_fruitjuice_drink_id_fc830e60_fk_demoapp_drinks_id` FOREIGN KEY (`drink_id`) REFERENCES `demoapp_drinks` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demoapp_fruitjuice`
--

LOCK TABLES `demoapp_fruitjuice` WRITE;
/*!40000 ALTER TABLE `demoapp_fruitjuice` DISABLE KEYS */;
/*!40000 ALTER TABLE `demoapp_fruitjuice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demoapp_login`
--

DROP TABLE IF EXISTS `demoapp_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demoapp_login` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_log` time(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demoapp_login`
--

LOCK TABLES `demoapp_login` WRITE;
/*!40000 ALTER TABLE `demoapp_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `demoapp_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demoapp_milkandmilkshake`
--

DROP TABLE IF EXISTS `demoapp_milkandmilkshake`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demoapp_milkandmilkshake` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `drink_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `demoapp_mlik_drink_id_3052f36c_fk_demoapp_drinks_id` (`drink_id`),
  CONSTRAINT `demoapp_mlik_drink_id_3052f36c_fk_demoapp_drinks_id` FOREIGN KEY (`drink_id`) REFERENCES `demoapp_drinks` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demoapp_milkandmilkshake`
--

LOCK TABLES `demoapp_milkandmilkshake` WRITE;
/*!40000 ALTER TABLE `demoapp_milkandmilkshake` DISABLE KEYS */;
/*!40000 ALTER TABLE `demoapp_milkandmilkshake` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demoapp_mocktail`
--

DROP TABLE IF EXISTS `demoapp_mocktail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demoapp_mocktail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Mocktail_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `drink_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `demoapp_mocktail_drink_id_991b8d27_fk_demoapp_drinks_id` (`drink_id`),
  CONSTRAINT `demoapp_mocktail_drink_id_991b8d27_fk_demoapp_drinks_id` FOREIGN KEY (`drink_id`) REFERENCES `demoapp_drinks` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demoapp_mocktail`
--

LOCK TABLES `demoapp_mocktail` WRITE;
/*!40000 ALTER TABLE `demoapp_mocktail` DISABLE KEYS */;
/*!40000 ALTER TABLE `demoapp_mocktail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demoapp_reservation`
--

DROP TABLE IF EXISTS `demoapp_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demoapp_reservation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ph_Number` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Number_of_tables` int NOT NULL,
  `person_count` int NOT NULL,
  `date` datetime(6) NOT NULL,
  `time` time(6) NOT NULL,
  `Note` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demoapp_reservation`
--

LOCK TABLES `demoapp_reservation` WRITE;
/*!40000 ALTER TABLE `demoapp_reservation` DISABLE KEYS */;
INSERT INTO `demoapp_reservation` VALUES (1,'Debu','Banerjee','9547259198',2,8,'2024-06-10 00:00:00.000000','19:55:00.000000','Give us the side rows or close to the window');
/*!40000 ALTER TABLE `demoapp_reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demoapp_rum`
--

DROP TABLE IF EXISTS `demoapp_rum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demoapp_rum` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rum_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `drink_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `demoapp_rum_drink_id_d6ba0b78_fk_demoapp_drinks_id` (`drink_id`),
  CONSTRAINT `demoapp_rum_drink_id_d6ba0b78_fk_demoapp_drinks_id` FOREIGN KEY (`drink_id`) REFERENCES `demoapp_drinks` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demoapp_rum`
--

LOCK TABLES `demoapp_rum` WRITE;
/*!40000 ALTER TABLE `demoapp_rum` DISABLE KEYS */;
INSERT INTO `demoapp_rum` VALUES (1,'Old Monk',850,3),(2,'Don Papa Small Batch Rum',3085,3),(3,'Brugal 1888 Double Aged Rum',3335,3),(4,'Ten To One Dark Rum',3085,3),(5,'Bumbu The Original Rum',2834,3),(6,'Flor de Caña 12 Year',2251,3),(7,'Deadhead Dark Chocolate Rum',4169,3);
/*!40000 ALTER TABLE `demoapp_rum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demoapp_softdrinks`
--

DROP TABLE IF EXISTS `demoapp_softdrinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demoapp_softdrinks` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Softdrinks_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `drink_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `demoapp_softdrinks_drink_id_efc39499_fk_demoapp_drinks_id` (`drink_id`),
  CONSTRAINT `demoapp_softdrinks_drink_id_efc39499_fk_demoapp_drinks_id` FOREIGN KEY (`drink_id`) REFERENCES `demoapp_drinks` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demoapp_softdrinks`
--

LOCK TABLES `demoapp_softdrinks` WRITE;
/*!40000 ALTER TABLE `demoapp_softdrinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `demoapp_softdrinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demoapp_tea`
--

DROP TABLE IF EXISTS `demoapp_tea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demoapp_tea` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Tea` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `drink_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `demoapp_tea_drink_id_d6c2051b_fk_demoapp_drinks_id` (`drink_id`),
  CONSTRAINT `demoapp_tea_drink_id_d6c2051b_fk_demoapp_drinks_id` FOREIGN KEY (`drink_id`) REFERENCES `demoapp_drinks` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demoapp_tea`
--

LOCK TABLES `demoapp_tea` WRITE;
/*!40000 ALTER TABLE `demoapp_tea` DISABLE KEYS */;
/*!40000 ALTER TABLE `demoapp_tea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demoapp_vodka`
--

DROP TABLE IF EXISTS `demoapp_vodka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demoapp_vodka` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `vodka_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `drink_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `demoapp_vodka_drink_id_d8f90216_fk_demoapp_drinks_id` (`drink_id`),
  CONSTRAINT `demoapp_vodka_drink_id_d8f90216_fk_demoapp_drinks_id` FOREIGN KEY (`drink_id`) REFERENCES `demoapp_drinks` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demoapp_vodka`
--

LOCK TABLES `demoapp_vodka` WRITE;
/*!40000 ALTER TABLE `demoapp_vodka` DISABLE KEYS */;
INSERT INTO `demoapp_vodka` VALUES (1,'Magic Moments',1076,4),(2,'Ciroc',4850,4),(3,'Grey Goose',5200,4),(4,'Belvedere',5151,4),(5,'Ketel One',3120,4),(6,'Skyy',2992,4),(7,'Absolut',2884,4);
/*!40000 ALTER TABLE `demoapp_vodka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demoapp_whiterum`
--

DROP TABLE IF EXISTS `demoapp_whiterum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demoapp_whiterum` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `white_rum_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `drink_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `demoapp_whiterum_drink_id_c22d56f5_fk_demoapp_drinks_id` (`drink_id`),
  CONSTRAINT `demoapp_whiterum_drink_id_c22d56f5_fk_demoapp_drinks_id` FOREIGN KEY (`drink_id`) REFERENCES `demoapp_drinks` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demoapp_whiterum`
--

LOCK TABLES `demoapp_whiterum` WRITE;
/*!40000 ALTER TABLE `demoapp_whiterum` DISABLE KEYS */;
INSERT INTO `demoapp_whiterum` VALUES (1,'Bacardi Limon Citrus',1610,5),(2,'Rock Paper Rum',1500,5),(3,'Amrut Two Indies White Rum',1700,5),(4,'Cabo Coconut Rum',2050,5),(5,'Maka Zai White Rum',1995,5),(6,'Old Monk Lemon Rum',890,5),(7,'Sitara White Rum',2300,5);
/*!40000 ALTER TABLE `demoapp_whiterum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demoapp_wine`
--

DROP TABLE IF EXISTS `demoapp_wine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demoapp_wine` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `wine_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `drink_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `demoapp_wine_drink_id_0aa57d78_fk_demoapp_drinks_id` (`drink_id`),
  CONSTRAINT `demoapp_wine_drink_id_0aa57d78_fk_demoapp_drinks_id` FOREIGN KEY (`drink_id`) REFERENCES `demoapp_drinks` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demoapp_wine`
--

LOCK TABLES `demoapp_wine` WRITE;
/*!40000 ALTER TABLE `demoapp_wine` DISABLE KEYS */;
INSERT INTO `demoapp_wine` VALUES (1,'Myra Reserve Shiraz (Red Wine)',950,6),(2,'KRSMA Sangiovese Wine',1000,6),(3,'Zampa Chene Grande Reserve (Red Wine)',1750,6),(4,'Charosa Sauvignon Blanc (White Wine)',820,6),(5,'Grover Zampa La Reserve (Red Wine)',2150,6),(6,'Fratelli Sette (Red Wine)',1500,6),(7,'Sula Chenin Blanc (White Wine)',1000,6);
/*!40000 ALTER TABLE `demoapp_wine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-04-27 20:37:43.055000','1','Rum object (1)',1,'[{\"added\": {}}]',13,1),(2,'2024-05-07 07:50:00.301000','1','Desearts',1,'[{\"added\": {}}]',17,1),(3,'2024-05-07 07:50:12.682000','2','Non-veg',1,'[{\"added\": {}}]',17,1),(4,'2024-05-07 07:50:20.681000','3','Veg',1,'[{\"added\": {}}]',17,1),(5,'2024-05-07 07:50:27.586000','4','Fast Food',1,'[{\"added\": {}}]',17,1),(6,'2024-05-07 07:56:51.836000','1','Pudding',1,'[{\"added\": {}}]',19,1),(7,'2024-05-07 09:14:04.600000','2','Yogurt',1,'[{\"added\": {}}]',19,1),(8,'2024-05-07 09:16:29.835000','3','Cheesecakes',1,'[{\"added\": {}}]',19,1),(9,'2024-05-07 09:22:00.132000','4','Pastry',1,'[{\"added\": {}}]',19,1),(10,'2024-05-07 09:23:42.252000','5','Brownie',1,'[{\"added\": {}}]',19,1),(11,'2024-05-07 09:27:55.517000','6','Doughnut',1,'[{\"added\": {}}]',19,1),(12,'2024-05-07 09:34:40.269000','7','Biryani',1,'[{\"added\": {}}]',19,1),(13,'2024-05-07 09:39:51.461000','8','Bengali Thali',1,'[{\"added\": {}}]',19,1),(14,'2024-05-07 09:42:42.353000','9','Punjabi Thali',1,'[{\"added\": {}}]',19,1),(15,'2024-05-07 09:46:23.042000','10','Fried rice and chili chicken',1,'[{\"added\": {}}]',19,1),(16,'2024-05-07 09:50:00.319000','11','Paneer butter Masala with jeera rice',1,'[{\"added\": {}}]',19,1),(17,'2024-05-07 10:05:07.407000','12','Tandoori Paneer Tikka.',1,'[{\"added\": {}}]',19,1),(18,'2024-05-07 10:06:11.856000','13','Burger',1,'[{\"added\": {}}]',19,1),(19,'2024-05-07 10:07:27.895000','14','Pizza',1,'[{\"added\": {}}]',19,1),(20,'2024-05-07 10:10:57.718000','15','Momos',1,'[{\"added\": {}}]',19,1),(21,'2024-05-07 10:12:50.602000','16','Rolls',1,'[{\"added\": {}}]',19,1),(22,'2024-05-07 10:14:16.603000','17','Sandwich',1,'[{\"added\": {}}]',19,1),(23,'2024-05-07 10:16:16.106000','18','Chow Mein',1,'[{\"added\": {}}]',19,1),(24,'2024-05-07 10:23:35.087000','12','Drinks object (12)',1,'[{\"added\": {}}]',8,1),(25,'2024-05-07 10:23:51.162000','13','Drinks object (13)',1,'[{\"added\": {}}]',8,1),(26,'2024-05-22 11:33:47.261905','1','DrinksCategory object (1)',1,'[{\"added\": {}}]',7,1),(27,'2024-05-22 11:33:58.370419','2','DrinksCategory object (2)',1,'[{\"added\": {}}]',7,1),(28,'2024-05-22 11:35:31.387839','1','Drinks object (1)',1,'[{\"added\": {}}]',8,1),(29,'2024-05-23 08:55:50.701321','2','Cider',1,'[{\"added\": {}}]',8,1),(30,'2024-05-23 08:56:51.081006','3','Rum',1,'[{\"added\": {}}]',8,1),(31,'2024-05-23 08:57:41.760516','4','Vodka',1,'[{\"added\": {}}]',8,1),(32,'2024-05-23 08:58:32.804214','5','White Rum',1,'[{\"added\": {}}]',8,1),(33,'2024-05-23 08:59:34.556083','6','Wine',1,'[{\"added\": {}}]',8,1),(34,'2024-05-23 09:03:25.589761','7','Mlik',1,'[{\"added\": {}}]',8,1),(35,'2024-05-23 09:05:27.305998','8','Soft Drinks',1,'[{\"added\": {}}]',8,1),(36,'2024-05-23 09:05:47.831749','9','Fruit Juice',1,'[{\"added\": {}}]',8,1),(37,'2024-05-23 09:05:59.238984','10','Tea',1,'[{\"added\": {}}]',8,1),(38,'2024-05-23 09:06:17.770762','11','Coffee',1,'[{\"added\": {}}]',8,1),(39,'2024-05-23 09:08:56.961859','12','Mocktail',1,'[{\"added\": {}}]',8,1),(40,'2024-05-25 10:36:03.974518','1','Kingfisher, 160',1,'[{\"added\": {}}]',11,1),(41,'2024-05-25 10:36:29.242861','2','Carlsberg, 230',1,'[{\"added\": {}}]',11,1),(42,'2024-05-25 10:36:52.603928','3','Budweiser, 190',1,'[{\"added\": {}}]',11,1),(43,'2024-05-25 10:37:13.118384','4','Bira 91, 190',1,'[{\"added\": {}}]',11,1),(44,'2024-05-25 10:37:36.291682','5','Corona Extra, 160',1,'[{\"added\": {}}]',11,1),(45,'2024-05-25 10:38:18.487055','6','Heineken, 210',1,'[{\"added\": {}}]',11,1),(46,'2024-05-25 10:38:42.681350','7','Foster\'s, 110',1,'[{\"added\": {}}]',11,1),(47,'2024-05-25 10:39:23.695462','8','Tuborg, 170',1,'[{\"added\": {}}]',11,1),(48,'2024-05-25 10:39:42.515659','9','Hoegaarden, 240',1,'[{\"added\": {}}]',11,1),(49,'2024-05-25 10:40:04.029195','10','Bro Code, 160',1,'[{\"added\": {}}]',11,1),(50,'2024-05-25 10:40:23.326846','11','GodFather, 170',1,'[{\"added\": {}}]',11,1),(51,'2024-05-25 10:41:05.432417','12','King\'s, 130',1,'[{\"added\": {}}]',11,1),(52,'2024-05-28 10:47:09.763103','1','Cider object (1)',1,'[{\"added\": {}}]',10,1),(53,'2024-05-28 10:48:26.679483','2','Cider object (2)',1,'[{\"added\": {}}]',10,1),(54,'2024-05-28 10:49:24.074829','3','Cider object (3)',1,'[{\"added\": {}}]',10,1),(55,'2024-05-28 10:50:19.950681','4','Cider object (4)',1,'[{\"added\": {}}]',10,1),(56,'2024-05-28 10:51:04.768791','5','Cider object (5)',1,'[{\"added\": {}}]',10,1),(57,'2024-05-28 10:52:15.745037','6','Cider object (6)',1,'[{\"added\": {}}]',10,1),(58,'2024-05-28 10:54:01.236150','7','Cider object (7)',1,'[{\"added\": {}}]',10,1),(59,'2024-05-28 10:54:39.470765','8','Cider object (8)',1,'[{\"added\": {}}]',10,1),(60,'2024-05-28 10:56:10.058870','9','Cider object (9)',1,'[{\"added\": {}}]',10,1),(61,'2024-05-28 10:57:09.578768','10','Cider object (10)',1,'[{\"added\": {}}]',10,1),(62,'2024-06-05 19:07:22.213973','1','Old Monk, 850',1,'[{\"added\": {}}]',13,1),(63,'2024-06-05 19:08:06.647822','2','Don Papa Small Batch Rum, 3085',1,'[{\"added\": {}}]',13,1),(64,'2024-06-05 19:08:34.444791','3','Brugal 1888 Double Aged Rum, 3335',1,'[{\"added\": {}}]',13,1),(65,'2024-06-05 19:09:02.534191','4','Ten To One Dark Rum, 3085',1,'[{\"added\": {}}]',13,1),(66,'2024-06-05 19:10:01.065985','5','Bumbu The Original Rum, 2834',1,'[{\"added\": {}}]',13,1),(67,'2024-06-05 19:10:54.358200','6','Flor de Caña 12 Year, 2251',1,'[{\"added\": {}}]',13,1),(68,'2024-06-05 19:11:57.923366','7','Deadhead Dark Chocolate Rum, 4169',1,'[{\"added\": {}}]',13,1),(69,'2024-06-05 19:15:54.519587','1','Magic Moments, 1076',1,'[{\"added\": {}}]',12,1),(70,'2024-06-05 19:16:49.585729','2','Ciroc, 4850',1,'[{\"added\": {}}]',12,1),(71,'2024-06-05 19:17:19.814507','3','Grey Goose, 5200',1,'[{\"added\": {}}]',12,1),(72,'2024-06-05 19:18:07.007630','4','Belvedere, 5151',1,'[{\"added\": {}}]',12,1),(73,'2024-06-05 19:18:34.305649','5','Ketel One, 3120',1,'[{\"added\": {}}]',12,1),(74,'2024-06-05 19:19:08.694401','6','Skyy, 2992',1,'[{\"added\": {}}]',12,1),(75,'2024-06-05 19:19:53.105185','7','Absolut, 2884',1,'[{\"added\": {}}]',12,1),(76,'2024-06-05 19:23:33.435680','1','Bacardi Limon Citrus, 1610',1,'[{\"added\": {}}]',14,1),(77,'2024-06-05 19:24:00.130500','2','Rock Paper Rum, 1500',1,'[{\"added\": {}}]',14,1),(78,'2024-06-05 19:24:37.928640','3','Amrut Two Indies White Rum, 1700',1,'[{\"added\": {}}]',14,1),(79,'2024-06-05 19:25:03.166579','4','Cabo Coconut Rum, 2050',1,'[{\"added\": {}}]',14,1),(80,'2024-06-05 19:25:28.144136','5','Maka Zai White Rum, 1995',1,'[{\"added\": {}}]',14,1),(81,'2024-06-05 19:26:09.342979','6','Old Monk Lemon Rum, 890',1,'[{\"added\": {}}]',14,1),(82,'2024-06-05 19:26:26.880797','7','Sitara White Rum, 2300',1,'[{\"added\": {}}]',14,1),(83,'2024-06-05 19:30:45.291639','1','Myra Reserve Shiraz (Red Wine), 950',1,'[{\"added\": {}}]',9,1),(84,'2024-06-05 19:31:01.844105','2','KRSMA Sangiovese Wine, 1000',1,'[{\"added\": {}}]',9,1),(85,'2024-06-05 19:31:24.628397','3','Zampa Chene Grande Reserve (Red Wine), 1750',1,'[{\"added\": {}}]',9,1),(86,'2024-06-05 19:31:46.721997','4','Charosa Sauvignon Blanc (White Wine), 820',1,'[{\"added\": {}}]',9,1),(87,'2024-06-05 19:32:02.205802','5','Grover Zampa La Reserve (Red Wine), 2150',1,'[{\"added\": {}}]',9,1),(88,'2024-06-05 19:32:19.578262','6','Fratelli Sette (Red Wine), 1500',1,'[{\"added\": {}}]',9,1),(89,'2024-06-05 19:32:42.803035','7','Sula Chenin Blanc (White Wine), 1000',1,'[{\"added\": {}}]',9,1),(90,'2024-06-05 20:00:32.495315','1','Non-veg',1,'[{\"added\": {}}]',17,1),(91,'2024-06-05 20:00:37.298990','2','Veg',1,'[{\"added\": {}}]',17,1),(92,'2024-06-05 20:01:00.855733','3','Fast Food',1,'[{\"added\": {}}]',17,1),(93,'2024-06-05 20:01:16.521111','4','Desert',1,'[{\"added\": {}}]',17,1),(94,'2024-06-10 10:20:04.418805','4','Dessert',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',17,1),(95,'2024-06-10 10:22:10.993304','1','Pastries',1,'[{\"added\": {}}]',19,1),(96,'2024-06-10 10:24:50.939268','2','Custards and Puddings',1,'[{\"added\": {}}]',19,1),(97,'2024-06-10 10:25:52.882016','3','Frozen',1,'[{\"added\": {}}]',19,1),(98,'2024-06-10 10:27:31.357536','4','Gelatin',1,'[{\"added\": {}}]',19,1),(99,'2024-06-10 10:28:16.018783','5','Cakes',1,'[{\"added\": {}}]',19,1),(100,'2024-06-10 10:31:47.964715','6','Rosogolla',1,'[{\"added\": {}}]',19,1),(101,'2024-06-10 10:32:46.074583','7','Gulab jamun',1,'[{\"added\": {}}]',19,1),(102,'2024-06-10 11:05:25.173032','8','Butter Chicken',1,'[{\"added\": {}}]',19,1),(103,'2024-06-10 11:10:16.183801','9','Tandoori Chicken',1,'[{\"added\": {}}]',19,1),(104,'2024-06-10 11:13:47.891526','10','Mutton curry',1,'[{\"added\": {}}]',19,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(11,'demoapp','beer'),(18,'demoapp','biriyani'),(10,'demoapp','cider'),(20,'demoapp','coffee'),(8,'demoapp','drinks'),(7,'demoapp','drinkscategory'),(17,'demoapp','foodcategory'),(19,'demoapp','fooditem'),(21,'demoapp','fruitjuice'),(15,'demoapp','login'),(25,'demoapp','milkandmilkshake'),(22,'demoapp','mocktail'),(16,'demoapp','reservation'),(13,'demoapp','rum'),(23,'demoapp','softdrinks'),(24,'demoapp','tea'),(12,'demoapp','vodka'),(14,'demoapp','whiterum'),(9,'demoapp','wine'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-05-22 11:01:45.358807'),(2,'auth','0001_initial','2024-05-22 11:01:56.741207'),(3,'admin','0001_initial','2024-05-22 11:01:59.549298'),(4,'admin','0002_logentry_remove_auto_add','2024-05-22 11:01:59.627426'),(5,'admin','0003_logentry_add_action_flag_choices','2024-05-22 11:01:59.688997'),(6,'contenttypes','0002_remove_content_type_name','2024-05-22 11:02:01.366236'),(7,'auth','0002_alter_permission_name_max_length','2024-05-22 11:02:03.186056'),(8,'auth','0003_alter_user_email_max_length','2024-05-22 11:02:03.367772'),(9,'auth','0004_alter_user_username_opts','2024-05-22 11:02:03.418255'),(10,'auth','0005_alter_user_last_login_null','2024-05-22 11:02:04.361571'),(11,'auth','0006_require_contenttypes_0002','2024-05-22 11:02:04.439518'),(12,'auth','0007_alter_validators_add_error_messages','2024-05-22 11:02:04.785890'),(13,'auth','0008_alter_user_username_max_length','2024-05-22 11:02:05.835708'),(14,'auth','0009_alter_user_last_name_max_length','2024-05-22 11:02:06.886213'),(15,'auth','0010_alter_group_name_max_length','2024-05-22 11:02:07.052862'),(16,'auth','0011_update_proxy_permissions','2024-05-22 11:02:07.102977'),(17,'auth','0012_alter_user_first_name_max_length','2024-05-22 11:02:08.063671'),(18,'demoapp','0001_initial','2024-05-22 11:02:08.425689'),(19,'demoapp','0002_rename_name_menu_item_name','2024-05-22 11:02:08.667767'),(20,'demoapp','0003_menu_category_menu_category_id','2024-05-22 11:02:09.927069'),(21,'demoapp','0004_alter_menu_category_id','2024-05-22 11:02:11.684039'),(22,'demoapp','0005_alter_menu_category_id','2024-05-22 11:02:14.175518'),(23,'demoapp','0006_mainmenu_delete_menu','2024-05-22 11:02:15.821606'),(24,'demoapp','0007_alter_mainmenu_category_id','2024-05-22 11:02:15.885543'),(25,'demoapp','0008_alter_mainmenu_category_id','2024-05-22 11:02:16.967445'),(26,'demoapp','0009_author_book_delete_mainmenu_delete_menu_category','2024-05-22 11:02:19.350603'),(27,'demoapp','0010_remove_book_author_delete_author_delete_book','2024-05-22 11:02:21.058800'),(28,'demoapp','0011_initial','2024-05-22 11:02:22.688968'),(29,'demoapp','0012_wine_whiterum_vodka_rum_cider_beer','2024-05-22 11:02:32.395252'),(30,'demoapp','0013_login','2024-05-22 11:02:33.037500'),(31,'demoapp','0014_reservation','2024-05-22 11:02:33.601066'),(32,'demoapp','0015_foodcategory_fooditem_biriyani','2024-05-22 11:02:40.846325'),(33,'demoapp','0016_alter_reservation_ph_number','2024-05-22 11:02:41.597363'),(34,'demoapp','0017_remove_beer_drink_remove_biriyani_categories_and_more','2024-05-22 11:03:08.313084'),(35,'sessions','0001_initial','2024-05-22 11:03:09.820288'),(36,'demoapp','0018_initial','2024-05-22 11:10:34.624145'),(37,'demoapp','0002_coffee_fruitjuice_mlik_mocktail_softdrinks_tea','2026-01-15 17:38:09.660468'),(38,'demoapp','0003_rename_mlik_milkandmilkshake','2026-01-15 17:38:09.721225');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7i45rlg5sk1kfser5ausfjprn8t95h6w','.eJxVjDsOwjAQRO_iGlnxlywlPWew1t41DiBbipMKcXcSKQVMOe_NvEXAdSlh7TyHicRFKHH67SKmJ9cd0APrvcnU6jJPUe6KPGiXt0b8uh7u30HBXra1JUNm8EhagbLkDGqdM7uzTprzYBDHCBHNFoJBoU9Z-TEptg7BA4jPF-HTN8M:1s1XhX:n5FqDQXtBCx69e5ODvdKliwDLMEkP66_rNUBxwZM-AM','2024-05-13 20:34:15.924000'),('chmcf854x3c0jo4m5pqleo03g1lg4e9g','.eJxVjDsOwjAQRO_iGlnxlywlPWew1t41DiBbipMKcXcSKQVMOe_NvEXAdSlh7TyHicRFKHH67SKmJ9cd0APrvcnU6jJPUe6KPGiXt0b8uh7u30HBXra1JUNm8EhagbLkDGqdM7uzTprzYBDHCBHNFoJBoU9Z-TEptg7BA4jPF-HTN8M:1s0olY:HocqmKEAbu9wNtRkKYq0oHUfujatWcJRXFo3FqIHEuU','2024-05-11 20:35:24.043000'),('ks01svcidaq2ehv69eiwggqvltc63mor','.eJxVjEEOwiAQAP_C2RCWQmk9eu8byLLL2qopSWlPxr8bkh70OjOZt4p47HM8at7iwuqqQF1-WUJ65rUJfuB6L5rKum9L0i3Rp616Kpxft7P9G8xY57bt-i7k4PsxgYHOeg-AdrAcAojvRQzBwCJkOI3BgkvixAhZchSAUX2-tCw3kw:1s9k9B:DQFq6H8zNL_5dufG4WU5aVGnMvcn_MZlwt51YCmcE0I','2024-06-05 11:28:41.179831');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-18 16:51:54
