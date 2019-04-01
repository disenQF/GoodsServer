-- MySQL dump 10.13  Distrib 5.1.63, for apple-darwin10.3.0 (i386)
--
-- Host: localhost    Database: foods_msj
-- ------------------------------------------------------
-- Server version	5.1.63-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can add group',3,'add_group'),(9,'Can change group',3,'change_group'),(10,'Can delete group',3,'delete_group'),(11,'Can add user',4,'add_user'),(12,'Can change user',4,'change_user'),(13,'Can delete user',4,'delete_user'),(14,'Can view group',3,'view_group'),(15,'Can view permission',2,'view_permission'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Bookmark',7,'add_bookmark'),(26,'Can change Bookmark',7,'change_bookmark'),(27,'Can delete Bookmark',7,'delete_bookmark'),(28,'Can add User Setting',8,'add_usersettings'),(29,'Can change User Setting',8,'change_usersettings'),(30,'Can delete User Setting',8,'delete_usersettings'),(31,'Can add User Widget',9,'add_userwidget'),(32,'Can change User Widget',9,'change_userwidget'),(33,'Can delete User Widget',9,'delete_userwidget'),(34,'Can add log entry',10,'add_log'),(35,'Can change log entry',10,'change_log'),(36,'Can delete log entry',10,'delete_log'),(37,'Can view Bookmark',7,'view_bookmark'),(38,'Can view log entry',10,'view_log'),(39,'Can view User Setting',8,'view_usersettings'),(40,'Can view User Widget',9,'view_userwidget'),(41,'Can add revision',11,'add_revision'),(42,'Can change revision',11,'change_revision'),(43,'Can delete revision',11,'delete_revision'),(44,'Can add version',12,'add_version'),(45,'Can change version',12,'change_version'),(46,'Can delete version',12,'delete_version'),(47,'Can view revision',11,'view_revision'),(48,'Can view version',12,'view_version'),(49,'Can add 优惠劵活动',13,'add_qaunactive'),(50,'Can change 优惠劵活动',13,'change_qaunactive'),(51,'Can delete 优惠劵活动',13,'delete_qaunactive'),(52,'Can add 优惠劵详情',14,'add_quaninfo'),(53,'Can change 优惠劵详情',14,'change_quaninfo'),(54,'Can delete 优惠劵详情',14,'delete_quaninfo'),(55,'Can view 优惠劵活动',13,'view_qaunactive'),(56,'Can view 优惠劵详情',14,'view_quaninfo'),(57,'Can add 食物分类',15,'add_category'),(58,'Can change 食物分类',15,'change_category'),(59,'Can delete 食物分类',15,'delete_category'),(60,'Can add 菜谱',16,'add_foods'),(61,'Can change 菜谱',16,'change_foods'),(62,'Can delete 菜谱',16,'delete_foods'),(63,'Can view 食物分类',15,'view_category'),(64,'Can view 菜谱',16,'view_foods'),(65,'Can add crontab',17,'add_crontabschedule'),(66,'Can change crontab',17,'change_crontabschedule'),(67,'Can delete crontab',17,'delete_crontabschedule'),(68,'Can add periodic task',18,'add_periodictask'),(69,'Can change periodic task',18,'change_periodictask'),(70,'Can delete periodic task',18,'delete_periodictask'),(71,'Can add interval',19,'add_intervalschedule'),(72,'Can change interval',19,'change_intervalschedule'),(73,'Can delete interval',19,'delete_intervalschedule'),(74,'Can add periodic tasks',20,'add_periodictasks'),(75,'Can change periodic tasks',20,'change_periodictasks'),(76,'Can delete periodic tasks',20,'delete_periodictasks'),(77,'Can add task state',21,'add_taskmeta'),(78,'Can change task state',21,'change_taskmeta'),(79,'Can delete task state',21,'delete_taskmeta'),(80,'Can add saved group result',22,'add_tasksetmeta'),(81,'Can change saved group result',22,'change_tasksetmeta'),(82,'Can delete saved group result',22,'delete_tasksetmeta'),(83,'Can add task',23,'add_taskstate'),(84,'Can change task',23,'change_taskstate'),(85,'Can delete task',23,'delete_taskstate'),(86,'Can add worker',24,'add_workerstate'),(87,'Can change worker',24,'change_workerstate'),(88,'Can delete worker',24,'delete_workerstate');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$nDeV5iSYzReQ$c5HYhtqz/jSXRqSwzy8fqHsiLobx3wFxWBXbOeUO+48=','2019-03-30 03:45:45',1,'admin','','','610039018@qq.com',1,1,'2019-03-28 02:09:35');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `celery_taskmeta`
--

DROP TABLE IF EXISTS `celery_taskmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `celery_taskmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `result` longtext,
  `date_done` datetime NOT NULL,
  `traceback` longtext,
  `hidden` tinyint(1) NOT NULL,
  `meta` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `celery_taskmeta_hidden_23fd02dc` (`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `celery_taskmeta`
--

LOCK TABLES `celery_taskmeta` WRITE;
/*!40000 ALTER TABLE `celery_taskmeta` DISABLE KEYS */;
INSERT INTO `celery_taskmeta` VALUES (1,'6eac5c0f-2a96-4afc-9cb4-8dc9f4758155','SUCCESS','gAJYDAAAAOWFgeiuuOaKoui0rXEALg==','2019-03-30 09:43:32',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(2,'9502b10f-6cc4-4333-b115-6705fb4654f5','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:43:32',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(3,'687fb804-a2ec-4a34-bc55-73e861d8e2f2','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:43:32',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(4,'cb68a6f5-60bb-46eb-8dc4-f327824ac6be','SUCCESS','gAJYDAAAAOWFgeiuuOaKoui0rXEALg==','2019-03-30 09:43:32',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(5,'67e91d08-1a00-4b25-a623-71a85b58885e','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:43:32',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(6,'2a84aeee-ea75-4fc1-b197-8f8ca318fdc3','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:43:42',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(7,'e24d989a-805e-453c-bf56-e9866b1aa4ab','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:43:43',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(8,'2ef51690-6662-457d-9481-c455c8820539','SUCCESS','gAJYDAAAAOWFgeiuuOaKoui0rXEALg==','2019-03-30 09:43:43',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(9,'63b3c407-3cc7-4d6e-98f3-c0af600dea88','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:43:44',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(10,'f63a4863-fb23-4eca-b40f-ba08c2c32c95','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:43:45',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(11,'129bf89e-b198-4159-b221-975db1a59579','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:43:45',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(12,'25a03396-7841-4cd0-9688-b440e89f5d88','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:43:46',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(13,'89c33bb9-f1d6-4e1b-9104-cf472f6618b8','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:43:47',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(14,'d59610a7-f265-4775-8026-5519458df57b','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:43:48',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(15,'40469bee-836f-4b59-acc2-84a723fc0bc4','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:43:49',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(16,'d240a333-e9de-4d22-b3f0-ffe2a62ba3e8','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:43:49',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(17,'714c12b2-c39b-45bc-b8ac-f88f0cf194d6','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:43:51',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(18,'271f6329-b365-4ce0-aa54-f9f6865ebf3f','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:43:51',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(19,'fa9f608a-ce2d-44fb-b010-eaef968f2bc5','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:43:52',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(20,'f5379baf-7acc-4baf-b7c8-910b483b9fdc','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:43:52',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(21,'37921de4-2772-4a50-b33f-66c5e420f713','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:43:53',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(22,'3353a709-4266-4658-b5cb-ba3dd197e3fe','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:43:54',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(23,'643f0543-a43e-43b2-b8a4-01fd1437ed52','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:43:55',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(24,'8cdee303-3308-438e-add3-6bf5896da86c','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:43:56',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(25,'109e826c-adb3-439f-a768-97a8fb41a339','SUCCESS','gAJYDAAAAOWFgeiuuOaKoui0rXEALg==','2019-03-30 09:43:59',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(26,'d6427885-26a3-4c54-8828-cf86534a0a04','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:00',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(27,'f7cf9ed0-4d5c-4d31-b81c-1177f5d02b8d','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:01',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(28,'fbfde095-1f99-44ff-b84c-64411e9308ed','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:02',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(29,'f91d4e17-0b92-4841-8f1d-4917d0c8cee8','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:03',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(30,'270ba410-1998-42f1-9135-11684d47f436','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:04',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(31,'0a39cb35-a459-4e7e-8350-1db32a09bbfb','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:07',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(32,'9b5ca74a-9ab9-4068-af70-fa8ecc1996cc','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:08',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(33,'b2f19c0d-4ad5-450f-9db8-af82b473a1cb','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:09',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(34,'e12448c8-a609-44f8-ab98-201119011196','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:09',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(35,'b2c5a711-37a1-49e4-9793-de7e5e2e041f','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:10',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(36,'27c8b68f-69d5-42a3-9697-3edbccae50e4','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:12',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(37,'6fe6de8f-8e1b-4485-bf03-35f247feefff','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:13',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(38,'21c71c65-f71d-4178-8e3a-36e16ab8f3be','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:13',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(39,'19796720-33c1-4060-a1ea-e7978e43d779','SUCCESS','gAJYDAAAAOWFgeiuuOaKoui0rXEALg==','2019-03-30 09:44:15',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(40,'604c1262-c259-4ea6-964f-64a25af01570','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:18',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(41,'1300c42c-2ef7-4c65-af0f-c83cc283dfee','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:24',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(42,'1140014b-8ede-49d0-a313-4765de604678','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:24',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(43,'d31e7fce-f01b-4de0-b986-67a83c9e1365','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:25',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(44,'471f11da-6673-4376-9566-0df8396f274c','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:25',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(45,'cd22a6cb-140d-4384-90ff-be5f9ed2866f','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:25',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(46,'8f3a5f10-6bce-4c6d-94d9-b1f487fb60bd','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:26',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(47,'e91adafd-7bd3-4c64-8b08-66d4c203f934','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:26',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(48,'4445ca9d-816f-412a-804d-09a3463aba65','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:27',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(49,'da35603a-09a3-41f9-bf17-bb598f2b3813','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:27',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(50,'9f36eafc-829c-4fd7-9ade-af9c0662480d','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:27',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(51,'daa2b66a-12e4-41de-aa09-de4d9920415b','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:28',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(52,'c4c631d9-6e5d-40dc-9d1c-2646d7760d19','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:28',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(53,'e14daf6c-1ffd-40d6-a7d9-090786f46fa0','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:28',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(54,'2579df89-73c8-4bd5-800a-284ffce340b4','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:29',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(55,'5061492f-121d-4ec3-834c-52cfae48780b','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:29',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(56,'6a33d420-eee1-46d0-9edf-951940c2b03a','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:29',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(57,'7c1e8dcd-f3d8-44f2-b8b8-36a083d432a0','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:30',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(58,'d10d12fa-e1fe-47d3-a95e-647926716b5e','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:30',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(59,'177edc5f-2322-4762-9008-595600b39137','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:30',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(60,'2fd08545-0928-40eb-a98b-1a7bc2cc3d58','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:30',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(61,'7e30f5e7-ec68-4b80-a776-df242b9b59da','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:31',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(62,'21333f91-f592-4099-9797-3a86b2f51361','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:32',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(63,'d7e2d774-323d-4986-9a86-e24dd6712960','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:32',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(64,'f9d6ee6c-3b71-4d71-b11c-7802948f2b55','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:32',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(65,'315fdbd1-c2e5-4c1c-b886-8d0ea9ce2cf3','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:33',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(66,'e928b4d6-fcfb-4385-b86d-34c7ae5a696d','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:33',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(67,'6e964a2c-fd90-4111-bd01-f7dc9c188fb6','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:33',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(68,'f7864123-18f2-437c-a96f-eb17ae7d14a0','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:33',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(69,'83a1b1bd-e656-4f01-b2f7-54a30367e67b','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:34',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(70,'9e651892-01e5-42c1-977a-3f8097a09e4f','SUCCESS','gAJYDAAAAOWFgeiuuOaKoui0rXEALg==','2019-03-30 09:44:36',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(71,'580aab18-6e2e-4b28-94cf-50a79d822599','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:36',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(72,'3b38a6c9-3605-4de8-bfb5-170a648231de','SUCCESS','gAJYDAAAAOWFgeiuuOaKoui0rXEALg==','2019-03-30 09:44:39',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(73,'c4923634-4cb0-4a2f-836f-d03a36ff822e','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:39',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(74,'c69a4555-e86f-456f-a54e-c4094067024c','SUCCESS','gAJYDAAAAOWFgeiuuOaKoui0rXEALg==','2019-03-30 09:44:40',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(75,'110d911a-69ec-41c8-8228-946f61b4a7f0','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:40',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(76,'6bef0016-c235-44f4-901e-25b51e56a440','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:40',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(77,'45381667-c993-44be-8bfc-41c64c46bd7e','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:41',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(78,'53160973-8bad-488a-ba15-2d2ce43cbd90','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:41',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(79,'5e481da5-2017-4e2d-bb89-e4d44c9ec42b','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:42',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(80,'95ef62b1-cd60-450d-a5c0-cc2109f9f56d','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:42',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(81,'4843b4a6-52c4-43ef-84a3-cd47526bc7df','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:42',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(82,'8416f48b-68bb-4e31-a698-dca4c8344373','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:43',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(83,'17277cf4-7b59-4aca-9783-fd18208fdfb4','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:44',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(84,'10d8c921-727b-4470-bb16-2ff76ecf5af8','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:44',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(85,'8995c985-d378-4d88-ba6f-d31b875c05a9','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:44',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(86,'d15628ae-e8dc-4880-a142-41b8f62c7b88','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:46',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(87,'f1a9c35a-4184-49b0-86a0-4839bed2f32b','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:46',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(88,'60bfb10d-744c-492f-a7c5-1e2eeeb117cb','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:47',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(89,'7d71af30-a5ff-408d-a249-3e1263d366a7','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:47',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(90,'88fa3111-db22-414c-9b3a-528fe12219c1','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:47',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(91,'162c4573-b9cb-44c6-9aae-b7f3caf1c494','SUCCESS','gAJYDAAAAOWFgeiuuOaKoui0rXEALg==','2019-03-30 09:44:48',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(92,'88f4ade1-82ff-4e3c-9aa5-e123c4c523de','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:48',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(93,'7845640a-91c2-443f-b6bf-54f31a777eff','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:48',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(94,'fbc0fcde-d8e6-4f03-b6bd-020f54cf96a6','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:48',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(95,'30a1f51b-3f36-4c67-8578-bd37316dd4cf','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:49',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(96,'beb1f64c-99ac-485e-9127-2755ec4f1109','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:49',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(97,'c4473694-6313-433c-95d1-5b877185c310','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:50',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(98,'967ad8c2-2ee5-47ef-abe5-c4098b91e499','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:50',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(99,'e9de5ba4-1c4f-4c6b-a192-2d464844a67c','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:51',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(100,'26dae917-561c-435a-8ef9-66305236574c','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:51',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(101,'10f13ec3-e429-4a05-a19f-e054b457d5b3','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:51',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(102,'ada3ba00-961d-4aed-a6d6-becc627fb30e','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:51',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(103,'4cd37bf3-b4cc-495a-8469-85861552d788','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:51',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(104,'a47267be-6caf-460e-b878-0e3273a0c284','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:51',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(105,'76d5351d-823f-4a38-8d9d-7f9b07891f08','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:51',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(106,'9f4bf5b2-6abb-4f19-9e28-ff1a87d8d418','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:51',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(107,'715b7653-abab-4164-a0ee-e554c3c87058','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:52',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(108,'9340c6b4-5e6a-43e9-a800-3564cd0b6591','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:52',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(109,'de247491-ff5e-4402-9fdc-97ece0bd16f7','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:52',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(110,'67e2face-db96-4371-852f-d2962fb8640a','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:52',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(111,'0902663f-3a4f-4f3b-a982-7bfb7d3bf79b','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:52',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(112,'2f1bee07-1fa8-4cc4-b80e-69048bcdb48a','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:52',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(113,'ebfa3847-68d3-4152-863c-9165ca88f6b0','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:52',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(114,'ac6818f5-2177-44b9-bb8e-c5d17013a3e8','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:52',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(115,'087cdb6e-c53f-469e-b834-34dd15f92785','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:53',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(116,'5b985855-b5fe-4ad0-afd8-8df71b2afd1a','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:53',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(117,'d6d0f154-142c-413f-a87c-1e6d1c70e982','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:53',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(118,'a044b272-f556-4dc1-9b88-8d9f86610026','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:53',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(119,'eaf1e93c-0980-4c76-90d5-5465175fc0af','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:53',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(120,'c9044621-5a86-4e3b-9cef-fc119f1bf6a1','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:54',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(121,'4e29d454-a1aa-43cd-a6b3-d02dc7cc995e','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:54',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(122,'d5a141cf-c4c7-4331-a1f2-c6919a9bc738','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:54',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(123,'2e46ff7d-c29f-4c2d-88e1-e326f4f7cbe9','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:54',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(124,'dcd70391-c409-47cb-aab1-71ba0cd684d6','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:54',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(125,'78e6a694-cc94-4849-881d-e811696ad201','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:55',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(126,'f9a823f5-ddf7-4c8d-8ac6-9fe8fceb9c6a','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:55',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(127,'39f0fe17-780f-4aab-87af-1b8af6d15865','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:55',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(128,'66249ade-dbf5-4f69-94d4-cbbf29efc9a4','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:55',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(129,'0492eec5-8e7c-421c-963e-65b0d615b40c','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:56',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(130,'028a3312-e64c-46f2-9729-5030a862e95d','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:56',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(131,'02670ecf-5a09-4382-bdc0-9c9e7bfe35bc','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:57',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(132,'34e608ba-5dc7-4587-b042-64bf2935c465','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:58',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(133,'bc78c553-d247-40f0-8dd6-64d433d6daac','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:58',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(134,'e383bb84-3a5e-4688-9b9d-8da5b1c35d10','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:44:59',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(135,'7c8847ea-acb2-43eb-ad92-fd1e45e36dc9','SUCCESS','gAJYDAAAAOS7iuaXpeW3suaKonEALg==','2019-03-30 09:45:00',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(136,'39f163c7-184b-4ec4-93b4-ca92e890c150','SUCCESS','gAJYDAAAAOWFgeiuuOaKoui0rXEALg==','2019-03-30 09:45:00',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(137,'432169de-9c25-42d9-aca9-8b48e027369c','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:00',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(138,'a2b2cea6-47e6-4bc6-8865-99fec3f1a690','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:00',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(139,'4d6c7e78-7a7d-4edb-bd91-eb1fd10fe207','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:00',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(140,'d451740c-7881-4254-ac09-67aece03db74','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:01',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(141,'94d34a7f-ece6-4578-a1af-96907a0912e0','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:01',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(142,'fdaafe99-e913-4227-a5b5-635e05eef076','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:01',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(143,'25e6ff35-2165-46f7-8b71-f6a12dcb469f','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:01',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(144,'4c2f08b8-2ffa-4dec-b326-9e315fdcf2d7','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:01',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(145,'ca594b35-aacf-499f-8b41-5de61b0ebb72','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:01',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(146,'f0a9c6ff-1ddd-46f1-8729-c72c34de1f71','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:02',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(147,'797f97bf-e33d-45cc-a4da-23c595e9d74d','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:02',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(148,'47a4a0c8-e675-401d-9dcc-77f7d2ecd4eb','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:02',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(149,'825665ea-55b0-49f8-bb98-afb5b001e2d3','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:02',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(150,'2c55908c-036d-4298-a076-c16cb3b40995','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:02',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(151,'01400155-8441-47a5-9bf9-ac6dbb7fc779','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:02',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(152,'e309bc89-7ead-48e0-a9dd-55535dddc90a','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:02',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(153,'8d8afcf7-3d29-47f3-991b-9beb09540222','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:03',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(154,'70a56773-8f77-49cf-91e9-3381b5f7b8ed','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:03',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(155,'9c3b2c3b-dbe9-476d-bbd1-3cd4ce6d417d','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:03',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(156,'a4798180-54f8-467b-839f-754efaeba8a1','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:03',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(157,'05e696bb-b239-48c5-a4ea-74e08c1537b2','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:03',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(158,'aa7c38ad-b72b-4d79-b9e1-6dbe620fbb7f','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:03',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(159,'6aa24d5f-6060-4abd-886b-ea763b8a8fd9','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:03',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(160,'f0e92f13-6d72-4ae8-a3e0-ba425a241827','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:04',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(161,'093d3c66-be3c-4153-bb8a-17238c75aa60','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:04',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(162,'8a5eb522-3bcf-48a1-a155-b1128828c5f9','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:04',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(163,'0f718da4-ef78-48a1-bd57-a8af5c35e844','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:04',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(164,'7d41a27d-d32f-4df2-af44-2760a7f69448','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:04',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(165,'eb4efa2c-465a-44d7-bccd-e5fad4d4dee7','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:05',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(166,'fc68c979-3346-46d9-ab99-12863e7894f5','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:05',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(167,'e849efc7-ca4c-488c-b94a-f0f07afcdb6a','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:05',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(168,'8528e040-b054-456e-a635-bf2dca8d098b','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:06',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(169,'9903383d-b9d9-414f-8b4c-14c8ee70ad64','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:06',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(170,'bb3a292c-b53a-48cd-bee8-1a5c499ca247','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:06',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(171,'eed046a0-185d-4ce9-b905-1fd516ce42a4','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:06',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(172,'74d57358-2019-419f-a579-74fa21052b97','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:07',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(173,'8392f45f-d2c8-40e9-92b7-6169a71db7d5','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:07',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(174,'af78abcd-3146-47c4-94d1-a5d7904fb457','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:08',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(175,'3054ffdd-e5ea-4602-b50d-eabde523fdfc','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:08',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(176,'641f68d3-4072-49bb-bc88-d55cbd627b0e','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:09',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(177,'1fe97a09-6a5a-429a-9cd1-5deff46700de','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:09',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(178,'e21a1562-6aa6-48ea-983e-d92fbd4209c2','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:09',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(179,'74d29989-6376-40c7-bd60-02a83934f183','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:10',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(180,'e705e756-ceb0-4c42-b1da-4b8d77f71a75','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:10',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(181,'721045d9-6175-4348-bf6c-11a024727a45','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:11',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(182,'860da592-31e7-41d7-9d3d-94394ddd0408','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:45:40',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(183,'55c3c74c-4cfc-4fdd-96a1-d63ce075d2fa','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:09',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(184,'c10c9578-3223-4f08-b578-3db1b4efd84a','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:13',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(185,'e1687210-261d-428c-ab84-6e24eedc5bcf','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:14',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(186,'78494032-737c-4c16-a588-d61c0d16dd0c','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:16',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(187,'2f1f0f59-8e22-4d5d-92a3-1659687eae28','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:16',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(188,'205fb55e-2f0d-4a7d-80a7-7118808256d3','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:18',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(189,'e4c4f436-b181-41fa-b269-bd9d2919c34e','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:19',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(190,'62d1ed5a-9e8d-4e03-b6b9-94957fae4778','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:21',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(191,'77b288ed-5825-4d46-a5f2-46a2519378ee','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:22',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(192,'554f8945-1e8f-4bae-8d68-c3724f2b5f2e','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:22',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(193,'567a689f-48c7-46f0-9452-b35e6ac18c4e','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:23',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(194,'4595db5c-4315-4624-9113-2fe095f19683','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:24',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(195,'dbc3501d-31ad-451f-8377-cb87e2b51a68','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:24',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(196,'41f63ecb-8826-42de-a4b7-682c2fd94edf','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:24',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(197,'29b51cef-7db4-42c3-ba16-2bdd2f746d7c','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:25',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(198,'94d9a28e-7919-42c8-9795-245f90e1af4c','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:26',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(199,'eceb4332-a93c-4ac6-bc9e-1caaa220b7ff','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:27',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(200,'efbf1069-bc3b-4710-8f6f-7442f584e857','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:42',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(201,'96586dba-b9d2-4a26-a2b7-303e6e97031f','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:44',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(202,'79eb087e-668b-49ed-925e-74ad394d042c','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:45',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(203,'d44ad048-0cbb-4196-a59d-9f99e886d738','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:45',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(204,'45835094-a212-4cc9-84b4-632a20c3a57f','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:45',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(205,'469a70bd-977f-4362-835f-37b2fee7d886','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:46',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(206,'741e4659-8b13-43ef-b075-7c9907f342cb','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:47',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(207,'4d6b68bd-0e47-42f5-a23f-fa076331ac3a','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:53',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(208,'4ee829df-e200-4105-ba07-0e97c35fcf53','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:55',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(209,'91320a2d-6b4d-4eba-a2a7-905af50ea2b7','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:56',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(210,'e3f0d16a-57d0-48cd-ab4b-103735426e46','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:56',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(211,'3d65c1b8-6eb8-4bc8-95ad-61604edab395','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:57',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(212,'3512667c-d437-469a-b42d-635436202701','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:59',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(213,'f6972e4f-a70e-40d7-b0ae-2a9fce8e568e','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:59',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(214,'d16928bb-1374-4824-8b7b-ff98542d61b0','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:46:59',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(215,'d6b54a31-79b6-48f9-9b53-8fe580819cc5','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:00',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(216,'0d28729f-b595-40d8-a307-b7d2dda68003','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:00',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(217,'05227350-876c-435e-9390-5221b5161d5a','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:01',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(218,'824a563d-b22a-475e-92e3-b423b5a1aa51','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:02',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(219,'d1a14805-e2bc-4314-9887-07e3e8db5d5b','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:03',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(220,'33a98dd7-bfb7-4300-b782-b55f879c3b43','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:04',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(221,'eaa58455-6698-4029-88e9-aee70c93b658','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:04',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(222,'5a6fd325-d4ac-4a67-938e-5ec7fbcd1e9b','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:05',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(223,'4a3ed55d-a48b-4bbf-b4d3-efe6b54b74dc','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:05',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(224,'676f8c01-be23-4699-8c7e-6b76bdf4e50d','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:06',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(225,'f684f5ac-0cb7-4171-86ff-6bb55791d1f6','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:06',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(226,'d7f64ea3-5cbb-4a73-88fe-8cf1a844e270','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:06',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(227,'e3e56de3-5e93-449b-81c3-587605c095b8','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:06',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(228,'29db48bc-4711-44da-9a73-a1c1a6f93ed0','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:07',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(229,'8f9aa9b6-4ee4-4519-b1fd-1f2f75092c41','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:07',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(230,'853966cb-1ac5-466c-b9b7-149ac4d40106','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:07',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(231,'b32f8ee7-b06b-4ffd-977e-32246b3ac4d4','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:07',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(232,'c8ead9fd-ab57-4242-ab56-785b1be8073b','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:07',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(233,'37e03de3-debf-42e6-9ed4-c2990944d477','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:07',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(234,'3b47090f-4cfd-4ff9-8715-cec3ff3cd7ab','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:08',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(235,'ff0680b3-a1c6-43f5-b249-7d0f983e1f8a','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:09',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(236,'ea13fe0a-d099-40c0-b6b2-2928dc722d6d','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:09',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(237,'84d80933-4043-43ca-8665-7fff1b35e1e3','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:11',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(238,'efb67991-1a7a-4516-987f-1cf4c7af0f96','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:11',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(239,'ce8557d2-a42f-43e7-8ec2-29e2b7321d6b','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:11',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(240,'28be523c-8788-472c-b7d2-f9aa8c1cb450','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:14',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(241,'a5961302-a934-4d04-b0a9-c78d3311c9a0','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:14',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(242,'964d7090-74dc-4795-b736-bbe98516249d','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:14',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(243,'93de3a64-2264-4741-89ab-cf89ae25d088','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:14',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(244,'5ff9e2cd-a1a1-4ee7-80b6-aa42080375c6','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:14',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(245,'3089309c-9506-48c6-82b0-faf443392e8d','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:14',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(246,'3c6d3193-53e2-4e4d-b231-dd7f49e9454f','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:14',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(247,'1d1e5e00-4653-4dfe-bef9-4f01cd877e24','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:14',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(248,'4e7d45bd-f7d7-4d70-bb0e-9dca4a8fa271','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:14',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(249,'6a01ad05-30ab-4655-bcbc-68db01ca5ff1','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:15',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(250,'838e29a9-795a-4a79-9bc2-c86367e1b659','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:17',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(251,'8333b97d-b962-4882-b816-3b7b37a4f583','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:18',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(252,'3300415d-641a-497a-bde7-fc183be48c6c','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:18',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9'),(253,'c9ef5c1f-3e2b-4ab5-87cc-48d56eca2e65','SUCCESS','gAJYCQAAAOW3suaKouWujHEALg==','2019-03-30 09:47:18',NULL,0,'eJxrYKotZIjgYGBgSM7IzEkpSs0rZIwtZCrWAwBWnQb9');
/*!40000 ALTER TABLE `celery_taskmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `celery_tasksetmeta`
--

DROP TABLE IF EXISTS `celery_tasksetmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `celery_tasksetmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskset_id` varchar(255) NOT NULL,
  `result` longtext NOT NULL,
  `date_done` datetime NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taskset_id` (`taskset_id`),
  KEY `celery_tasksetmeta_hidden_593cfc24` (`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `celery_tasksetmeta`
--

LOCK TABLES `celery_tasksetmeta` WRITE;
/*!40000 ALTER TABLE `celery_tasksetmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `celery_tasksetmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(17,'djcelery','crontabschedule'),(19,'djcelery','intervalschedule'),(18,'djcelery','periodictask'),(20,'djcelery','periodictasks'),(21,'djcelery','taskmeta'),(22,'djcelery','tasksetmeta'),(23,'djcelery','taskstate'),(24,'djcelery','workerstate'),(15,'foods','category'),(16,'foods','foods'),(13,'quan','qaunactive'),(14,'quan','quaninfo'),(11,'reversion','revision'),(12,'reversion','version'),(6,'sessions','session'),(7,'xadmin','bookmark'),(10,'xadmin','log'),(8,'xadmin','usersettings'),(9,'xadmin','userwidget');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-03-28 01:50:33'),(2,'auth','0001_initial','2019-03-28 01:50:34'),(3,'admin','0001_initial','2019-03-28 01:50:34'),(4,'admin','0002_logentry_remove_auto_add','2019-03-28 01:50:34'),(5,'contenttypes','0002_remove_content_type_name','2019-03-28 01:50:34'),(6,'auth','0002_alter_permission_name_max_length','2019-03-28 01:50:34'),(7,'auth','0003_alter_user_email_max_length','2019-03-28 01:50:34'),(8,'auth','0004_alter_user_username_opts','2019-03-28 01:50:34'),(9,'auth','0005_alter_user_last_login_null','2019-03-28 01:50:34'),(10,'auth','0006_require_contenttypes_0002','2019-03-28 01:50:34'),(11,'auth','0007_alter_validators_add_error_messages','2019-03-28 01:50:34'),(12,'auth','0008_alter_user_username_max_length','2019-03-28 01:50:34'),(13,'foods','0001_initial','2019-03-28 01:50:34'),(14,'foods','0002_foods','2019-03-28 01:50:34'),(15,'foods','0003_auto_20190327_1716','2019-03-28 01:50:34'),(16,'quan','0001_initial','2019-03-28 01:50:34'),(17,'quan','0002_quaninfo','2019-03-28 01:50:34'),(18,'reversion','0001_squashed_0004_auto_20160611_1202','2019-03-28 01:50:34'),(19,'sessions','0001_initial','2019-03-28 01:50:34'),(20,'xadmin','0001_initial','2019-03-28 01:50:35'),(21,'xadmin','0002_log','2019-03-28 01:50:35'),(22,'xadmin','0003_auto_20160715_0100','2019-03-28 01:50:35'),(23,'djcelery','0001_initial','2019-03-30 09:19:11');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1mlcuj1p630kzatqbf9m44ocolm44jgx','N2I2NjllNmIwYmNhMjkxZWJlNWM5YjM0MDc1YWIzNmYyMWY1MjQ4MDp7InVzZXJfcGhvbmUiOiIxMzQ1NTU1NTU1NSJ9','2019-04-13 09:44:38'),('28q6c8edpcr0dcgbdikncyebbv0k9a4u','YzQ3N2ViODQ3ODZlYTlhNjRiYzQxMTMzODgyYzVkZGI4YjIxMGZjZTp7InVzZXJfcGhvbmUiOiIxNTY5MTc1NTA4NyJ9','2019-04-13 09:46:52'),('5z7i2xj90vi6dqq2yvnx05pr9dhz5alv','NmUwY2NjOWRjMzRkM2JiZDdjMzNhYmNiZDI0MWRjNzZjOWU0NWM5Nzp7InVzZXJfcGhvbmUiOiIxMzEwMjAyMDIwMiJ9','2019-04-13 09:41:56'),('7xuvqeowd3tt26ht4wr5hmetjdl9k5pb','NjAyMjBiNWU3ZmU0MWY3YjdmMGM4YzdkN2RlNGIyNjE0MjVkYzk1MDp7InVzZXJfcGhvbmUiOiIxMzc3MjAxOTg2NSJ9','2019-04-13 09:44:33'),('84mb4cqkfxlgx1fkx3hg0ceugfr9jyak','MDNiMzdmY2E0NDRhMmNmODRmNGRlNzkxOThmZjZkOGE3MzJmNmYyNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NDI5NTFjZTk1NDA3ZGU5YmRhNGZkYzkyMjZiZWIzMDQ3OWEyZWFhIiwiTElTVF9RVUVSWSI6W1siZm9vZHMiLCJmb29kcyJdLCIiXSwidXNlcl9waG9uZSI6IjE3NzkxNjkyMDk1In0=','2019-04-13 08:16:40'),('dtii4pra7tmzf0ojpcizs1wsv0hxw2k3','NDI2YWJmOTFkOTU1ZWRkZmViODhlM2Y1YjQwNDFhOGRjODcyMTc3MDp7InVzZXJfcGhvbmUiOiIxNTA5MTA2Nzg3MCJ9','2019-04-13 09:44:45'),('gqjoo5rw1125ck4s3v41nrl8fv5w8jwu','MzFhZjQzMzc2YTQ1NmU1ZDg3NDg1M2ZmMDIyNmI5ZTczZTYxN2U4YTp7InVzZXJfcGhvbmUiOiIxNTMzOTAzMDAwMCJ9','2019-04-13 09:44:32'),('it0vv58nu4c99po8iaxabe3zls8fnrng','ZDQ5YmYyYTE1Njc2NjIzMjg2MmY4Yzg0MTJkZDdmYWRlZmFmZGQwMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NDI5NTFjZTk1NDA3ZGU5YmRhNGZkYzkyMjZiZWIzMDQ3OWEyZWFhIiwiTElTVF9RVUVSWSI6W1siZm9vZHMiLCJjYXRlZ29yeSJdLCIiXX0=','2019-04-11 03:02:11'),('llnkh61us3ouhvsqa317tpve8glhfclo','OTUxOTQ0N2QwYzhlNGExODdhNjliY2Q2YTk4YjM0ZDZkZmNlNTAzZjp7InVzZXJfcGhvbmUiOiIxNTExNzI1NDkyMiJ9','2019-04-13 09:46:45'),('pasec715tpp8scx4gdfhmfmamx5mwuwd','N2E3MjlmOWVjZTk3YjZmODk1ZDA1Y2QyODdhN2UyOTdmM2FlZTZhZDp7InVzZXJfcGhvbmUiOiIxODc5NzM2OTY2MSJ9','2019-04-13 09:44:58'),('vxdfjzwwbkb3lrf60ey2ahl9k6mzvsjf','MGNhNjJjZDNmM2E1MjFhZjVjOWIyMGJhN2MzMTE1MGY0YzRiODg0NTp7InVzZXJfcGhvbmUiOiIxODgyOTI3NDU2MiJ9','2019-04-13 09:43:57'),('y5s18oemyxgqnoghj30zbgtnhwz429lw','NWU0MmNkOWU0NDg5NmY5OWYwNzU3MTk2ZjJlZjNhZmQ0OGNlZTVlNjp7InVzZXJfcGhvbmUiOiIxODc5MTQ1NzYzMiJ9','2019-04-13 09:42:08');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_crontabschedule`
--

DROP TABLE IF EXISTS `djcelery_crontabschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_crontabschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minute` varchar(64) NOT NULL,
  `hour` varchar(64) NOT NULL,
  `day_of_week` varchar(64) NOT NULL,
  `day_of_month` varchar(64) NOT NULL,
  `month_of_year` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_crontabschedule`
--

LOCK TABLES `djcelery_crontabschedule` WRITE;
/*!40000 ALTER TABLE `djcelery_crontabschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_crontabschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_intervalschedule`
--

DROP TABLE IF EXISTS `djcelery_intervalschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_intervalschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `every` int(11) NOT NULL,
  `period` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_intervalschedule`
--

LOCK TABLES `djcelery_intervalschedule` WRITE;
/*!40000 ALTER TABLE `djcelery_intervalschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_intervalschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_periodictask`
--

DROP TABLE IF EXISTS `djcelery_periodictask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_periodictask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `task` varchar(200) NOT NULL,
  `args` longtext NOT NULL,
  `kwargs` longtext NOT NULL,
  `queue` varchar(200) DEFAULT NULL,
  `exchange` varchar(200) DEFAULT NULL,
  `routing_key` varchar(200) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime DEFAULT NULL,
  `total_run_count` int(10) unsigned NOT NULL,
  `date_changed` datetime NOT NULL,
  `description` longtext NOT NULL,
  `crontab_id` int(11) DEFAULT NULL,
  `interval_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `djcelery_periodictas_crontab_id_75609bab_fk_djcelery_` (`crontab_id`),
  KEY `djcelery_periodictas_interval_id_b426ab02_fk_djcelery_` (`interval_id`),
  CONSTRAINT `djcelery_periodictas_interval_id_b426ab02_fk_djcelery_` FOREIGN KEY (`interval_id`) REFERENCES `djcelery_intervalschedule` (`id`),
  CONSTRAINT `djcelery_periodictas_crontab_id_75609bab_fk_djcelery_` FOREIGN KEY (`crontab_id`) REFERENCES `djcelery_crontabschedule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_periodictask`
--

LOCK TABLES `djcelery_periodictask` WRITE;
/*!40000 ALTER TABLE `djcelery_periodictask` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_periodictask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_periodictasks`
--

DROP TABLE IF EXISTS `djcelery_periodictasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_periodictasks` (
  `ident` smallint(6) NOT NULL,
  `last_update` datetime NOT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_periodictasks`
--

LOCK TABLES `djcelery_periodictasks` WRITE;
/*!40000 ALTER TABLE `djcelery_periodictasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_periodictasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_taskstate`
--

DROP TABLE IF EXISTS `djcelery_taskstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_taskstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(64) NOT NULL,
  `task_id` varchar(36) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `tstamp` datetime NOT NULL,
  `args` longtext,
  `kwargs` longtext,
  `eta` datetime DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `result` longtext,
  `traceback` longtext,
  `runtime` double DEFAULT NULL,
  `retries` int(11) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `worker_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `djcelery_taskstate_state_53543be4` (`state`),
  KEY `djcelery_taskstate_name_8af9eded` (`name`),
  KEY `djcelery_taskstate_tstamp_4c3f93a1` (`tstamp`),
  KEY `djcelery_taskstate_hidden_c3905e57` (`hidden`),
  KEY `djcelery_taskstate_worker_id_f7f57a05_fk_djcelery_workerstate_id` (`worker_id`),
  CONSTRAINT `djcelery_taskstate_worker_id_f7f57a05_fk_djcelery_workerstate_id` FOREIGN KEY (`worker_id`) REFERENCES `djcelery_workerstate` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_taskstate`
--

LOCK TABLES `djcelery_taskstate` WRITE;
/*!40000 ALTER TABLE `djcelery_taskstate` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_taskstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djcelery_workerstate`
--

DROP TABLE IF EXISTS `djcelery_workerstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djcelery_workerstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(255) NOT NULL,
  `last_heartbeat` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hostname` (`hostname`),
  KEY `djcelery_workerstate_last_heartbeat_4539b544` (`last_heartbeat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djcelery_workerstate`
--

LOCK TABLES `djcelery_workerstate` WRITE;
/*!40000 ALTER TABLE `djcelery_workerstate` DISABLE KEYS */;
/*!40000 ALTER TABLE `djcelery_workerstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reversion_revision`
--

DROP TABLE IF EXISTS `reversion_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reversion_revision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime NOT NULL,
  `comment` longtext NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reversion_revision_user_id_17095f45_fk_auth_user_id` (`user_id`),
  KEY `reversion_revision_date_created_96f7c20c` (`date_created`),
  CONSTRAINT `reversion_revision_user_id_17095f45_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reversion_revision`
--

LOCK TABLES `reversion_revision` WRITE;
/*!40000 ALTER TABLE `reversion_revision` DISABLE KEYS */;
/*!40000 ALTER TABLE `reversion_revision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reversion_version`
--

DROP TABLE IF EXISTS `reversion_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reversion_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` varchar(191) NOT NULL,
  `format` varchar(255) NOT NULL,
  `serialized_data` longtext NOT NULL,
  `object_repr` longtext NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `revision_id` int(11) NOT NULL,
  `db` varchar(191) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reversion_version_db_content_type_id_objec_b2c54f65_uniq` (`db`,`content_type_id`,`object_id`,`revision_id`),
  KEY `reversion_version_content_type_id_7d0ff25c_fk_django_co` (`content_type_id`),
  KEY `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` (`revision_id`),
  CONSTRAINT `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` FOREIGN KEY (`revision_id`) REFERENCES `reversion_revision` (`id`),
  CONSTRAINT `reversion_version_content_type_id_7d0ff25c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reversion_version`
--

LOCK TABLES `reversion_version` WRITE;
/*!40000 ALTER TABLE `reversion_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `reversion_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_category`
--

DROP TABLE IF EXISTS `t_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `order_seq` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `t_category_parent_id_d09fe067_fk_t_category_id` (`parent_id`),
  CONSTRAINT `t_category_parent_id_d09fe067_fk_t_category_id` FOREIGN KEY (`parent_id`) REFERENCES `t_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_category`
--

LOCK TABLES `t_category` WRITE;
/*!40000 ALTER TABLE `t_category` DISABLE KEYS */;
INSERT INTO `t_category` VALUES (1,'家常菜谱',1,NULL),(3,'中华菜系',2,NULL),(4,'凉菜',2,1),(5,'家常菜',1,1),(6,'川菜',1,3),(7,'东北菜',3,3),(8,'私家菜',2,1),(9,'热菜',4,1),(10,'海鲜',5,1),(11,'素食',6,1),(12,'甜品点心',7,1);
/*!40000 ALTER TABLE `t_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_foods`
--

DROP TABLE IF EXISTS `t_foods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_foods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `step_minute` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `info` longtext NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `t_foods_category_id_dbbe7d1f_fk_t_category_id` (`category_id`),
  CONSTRAINT `t_foods_category_id_dbbe7d1f_fk_t_category_id` FOREIGN KEY (`category_id`) REFERENCES `t_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_foods`
--

LOCK TABLES `t_foods` WRITE;
/*!40000 ALTER TABLE `t_foods` DISABLE KEYS */;
INSERT INTO `t_foods` VALUES (1,'家常凉菜',8,4,'foods/43e91287bedf3f1b7b106c8404acf5af.jpg','<h2 class=\"cpc_h2\"><span style=\"text-decoration: none;\">家常凉菜的做法</span></h2><p><em class=\"step\" id=\"step_num1\">1.</em></p><p><em class=\"step\" id=\"step_num1\"><br/></em></p><p>准备香菜20g切丝，大蒜5g切末、白菜1颗切丝、胡萝卜50g切丝、黄瓜切丝；</p><p><br/></p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154460637634882.jpg\" alt=\"\"/></p><p><br/></p><p><br/></p><p><br/></p><p><em class=\"step\" id=\"step_num2\">2.</em></p><p><br/></p><p>碗中倒入准备好的食材，并加入拉皮30g，</p><p><br/></p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154460640662329.jpg\" alt=\"\"/></p><p><br/></p><p><br/></p><p><br/></p><p><em class=\"step\" id=\"step_num3\">3.</em></p><p><br/></p><p>醋5g，生抽3g、白砂糖8g、盐2g、香油2g、蒜末5g；</p><p><br/></p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154460642018432.jpg\" alt=\"\"/></p><p><br/></p><p><br/></p><p><br/></p><p><em class=\"step\" id=\"step_num4\">4.</em></p><p><br/></p><p>搅拌均匀，完成。</p><p><br/></p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154460642610082.jpg\" alt=\"\"/></p><p><br/></p><p><br/></p><p><br/></p><h2 class=\"cpc_h2\">家常凉菜成品图</h2><p><br/></p><p><br/></p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154460643858839.jpg\" alt=\"家常凉菜成品图\"/></p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154460643858839.jpg\" alt=\"家常凉菜成品图\"/></p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154460643858839.jpg\" alt=\"家常凉菜成品图\"/></p><p><br/></p><p><span class=\"swiper-pagination-bullet swiper-pagination-bullet-active\"><br/></span></p><h2 class=\"cpc_h2\">烹饪技巧</h2><p><br/></p>',5),(2,'蒜蓉蒸虾',30.5,10,'foods/7d108db512f6a6a929cd0d0ad3b593e8.jpg','<p><input type=\"text\" class=\"text\" name=\"q\" autocomplete=\"off\" id=\"inputString\" placeholder=\"蒜蓉蒸虾的做法\"/></p><p><span id=\"searchslideup_btn\" class=\"pngFix\" style=\"background-position:0px -48px;\">自动收缩</span>\r\n	</p><p><a href=\"https://www.meishij.net/zuofa/suanrongzhengxia_15.html#\" title=\"返回蒜蓉蒸虾的顶部\" class=\"backtotop pngFix\">回到顶部</a></p><p>\r\n	</p><ul class=\"pathstlye1 list-paddingleft-2\"><li><p><a id=\"tongji_shouye\" href=\"https://www.meishij.net/\">首页</a></p></li><li><p>&gt;</p></li><li><p><a id=\"tongji_caipudaquan\" href=\"https://www.meishij.net/chufang/diy/\">菜谱大全</a></p></li><li><p>&gt;</p></li><li><p><a id=\"tongji_toolbar_10270\" class=\"curzt\" href=\"https://www.meishij.net/chufang/diy/jiangchangcaipu/\">#家常菜#</a> <a id=\"tongji_toolbar_10366\" class=\"curzt\" href=\"https://www.meishij.net/chufang/diy/wucan/\">#午餐#</a> <a id=\"tongji_toolbar_10367\" class=\"curzt\" href=\"https://www.meishij.net/chufang/diy/wancan/\">#晚餐#</a></p></li></ul><p>\r\n		</p><p>\r\n		</p><p><img alt=\"蒜蓉蒸虾的做法\" src=\"https://s1.st.meishij.net/r/41/203/113291/s113291_155365238539360.jpg\"/></p><p>		</p><p>\r\n			</p><p>	\r\n				</p><h1 class=\"title\"><a id=\"tongji_title\" title=\"蒜蓉蒸虾的做法\" href=\"https://www.meishij.net/zuofa/suanrongzhengxia_15.html\">蒜蓉蒸虾</a></h1><p>\r\n				<span class=\"favbtns\"><a title=\"蒜蓉蒸虾的做法\" class=\"addToFav_con\" id=\"addToFav_con\">收藏<span id=\"f_num\">(4)</span></a></span></p><p><a class=\"bds_more\" data-cmd=\"more\" style=\"display:block;position:absolute;left:0px;top:0px;height:48px;width:167px;text-indent:-9999px;background:none;margin:0px;padding:0px;border:1px solid #e5e5e5;border-left:0px;\">更多</a><span style=\"display:block;height:50px;font-size:14px;font-weight:bold;color:#999;width:78px;text-align:right;float:left;\">分享到：</span></p><p>\r\n				</p><p></p><ul class=\"yj_tags clearfix list-paddingleft-2\"><li><p><a id=\"tongji_gx_0\">抵抗力</a></p></li><li><p><a id=\"tongji_gx_1\">下奶</a></p></li><li><p><a id=\"tongji_gx_2\">安神助眠</a></p></li><li><p><a id=\"tongji_gx_3\">动脉硬化</a></p></li><li><p><a id=\"tongji_gx_4\">助睡眠</a></p></li></ul><p>			</p><p>\r\n			</p><p>\r\n				</p><ul class=\"clearfix list-paddingleft-2\"><li><p><strong>工艺</strong><a id=\"tongji_gy\" title=\"蒜蓉蒸虾的工艺\" class=\"big\">蒸</a></p></li><li><p><strong>难度</strong></p><p><span class=\"icon icon_nd\"></span><span class=\"processing processing_nd1\"></span><a id=\"tongji_nd\" title=\"蒜蓉蒸虾的难度\" class=\"small\">新手尝试</a></p></li><li><p><strong>人数</strong></p><p><span class=\"icon icon_rs\"></span><span class=\"processing processing_nd9\"></span><a id=\"tongji_rsh\" title=\"蒜蓉蒸虾的人数\" class=\"small\">3人份</a></p></li><li><p><strong>口味</strong><a id=\"tongji_kw\" title=\"蒜蓉蒸虾的口味\" class=\"big\">咸鲜味</a></p></li><li><p><strong>准备时间</strong></p><p><span class=\"icon icon_zb\"></span><span class=\"processing processing_nd5\"></span><a id=\"tongji_zbsj\" title=\"蒜蓉蒸虾的准备时间\" class=\"small\">15分钟</a></p></li><li><p><strong>烹饪时间</strong></p><p><span class=\"icon icon_pr\"></span><span class=\"processing processing_nd7\"></span><a id=\"tongji_prsj\" title=\"蒜蓉蒸虾的烹饪时间\" class=\"small\">&lt;30分钟</a></p></li></ul><p>\r\n			</p><p>\r\n			</p><p>\r\n					</p><p>\r\n											<a target=\"_blank\" id=\"tongji_author_img\" href=\"https://i.meishi.cc/cook.php?id=113291\" class=\"img\"><img src=\"https://s1.st.meishij.net/user/41/203/t113291_86576.jpg\"/><span class=\"masker pngFix\"></span></a>\r\n						</p><p>\r\n							</p><h4>\r\n								<a id=\"tongji_author\" target=\"_blank\" href=\"https://i.meishi.cc/cook.php?id=113291\">美食小编</a>\r\n																			\r\n															</h4><p>\r\n							菜谱：1022　/　关注：121　/　粉丝：1083060							<strong>2019-03-27　/　<em id=\"viewclicknum\">414</em>人看过</strong>\r\n						</p><p>\r\n										</p><p>\r\n				</p><p>\r\n		</p><p>\r\n				\r\n			\r\n											</p><p>\r\n								</p><p><strong>“</strong>无<strong>”</strong></p><p>\r\n													<strong class=\"cpc_h2\">用料</strong>\r\n					</p><p>\r\n												</p><p>\r\n							</p><h3><a title=\"蒜蓉蒸虾的主料\">主料</a></h3><p>\r\n							</p><ul class=\"clearfix list-paddingleft-2\"><li><p><a target=\"_blank\" href=\"https://www.meishij.net/蒜末\" class=\"img\"><img src=\"http://images.meishij.net/p/20160815/fd8568f321da667d70a2350083c58040_60x60.jpg\"/></a></p><h4><a target=\"_blank\" href=\"https://www.meishij.net/蒜末\">蒜末</a>50克</h4></li><li><p><a target=\"_blank\" href=\"https://www.meishij.net/细香葱\" class=\"img\"><img src=\"http://images.meishij.net/p/20140411/04aed6e8e593be8dac71f085c6249720_60x60.jpg\"/></a></p><h4><a target=\"_blank\" href=\"https://www.meishij.net/细香葱\">葱花</a>10克</h4></li><li><p><a target=\"_blank\" href=\"https://www.meishij.net/虾\" class=\"img\"><img src=\"http://images.meishij.net/p/20170330/23da49e7bb0dd02111b14d640c2a90eb_60x60.jpg\"/></a></p><h4><a target=\"_blank\" href=\"https://www.meishij.net/虾\">虾</a>300克</h4></li></ul><p>\r\n						</p><p>\r\n																		</p><p>\r\n							</p><h3><a title=\"蒜蓉蒸虾的辅料\">辅料</a></h3><p>\r\n							</p><ul class=\"clearfix list-paddingleft-2\"><li><h4><a target=\"_blank\" href=\"https://www.meishij.net/食油\">食用油</a></h4><p>5毫升</p></li><li><h4><a target=\"_blank\" href=\"https://www.meishij.net/生抽\">生抽</a></h4><p>5克</p></li><li><h4><a target=\"_blank\" href=\"https://www.meishij.net/白糖\">白糖</a></h4><p>3克</p></li><li><h4><a target=\"_blank\" href=\"https://www.meishij.net/精盐\">盐</a></h4><p>2克</p></li></ul><p>\r\n						</p><p>\r\n											</p><p>\r\n								</p><p>								\r\n										</p><h2 class=\"cpc_h2\">蒜蓉蒸虾的做法</h2><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num1\">1.</em>\r\n						</p><p>\r\n														</p><p>蒜末50克、葱花10克，虾300克开背去虾线</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154466745372251.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num2\">2.</em>\r\n						</p><p>\r\n														</p><p>锅中放入食用油5ML，倒入蒜末，大火爆香</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154466746698846.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num3\">3.</em>\r\n						</p><p>\r\n														</p><p>加入生抽5克，白砂糖3克、盐2克，翻炒均匀</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154466749458743.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num4\">4.</em>\r\n						</p><p>\r\n														</p><p>虾隔水放入蒸屉，再放入蒜蓉、料酒7克，大火蒸10分钟，撒入葱花即可</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154466750553510.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n															</p><h2 class=\"cpc_h2\">蒜蓉蒸虾成品图</h2><p>\r\n\r\n					</p><p>\r\n						</p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154466751210263.jpg\" alt=\"蒜蓉蒸虾成品图\"/></p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154466751210263.jpg\" alt=\"蒜蓉蒸虾成品图\"/></p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154466751210263.jpg\" alt=\"蒜蓉蒸虾成品图\"/></p><p>\r\n						</p><p><span class=\"swiper-pagination-bullet swiper-pagination-bullet-active\"></span></p><p>\r\n					</p><p>\r\n										\r\n					</p><h2 class=\"cpc_h2\">烹饪技巧</h2><p>无<br/></p><br/>',5),(3,'萝卜丸子',8.5,9,'foods/6dfe8354f0f8d8d2fe2fde1061251636.jpg','<h2 class=\"cpc_h2\">萝卜丸子的做法</h2><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num1\">1.</em>\r\n						</p><p>\r\n														</p><p>葱花，白萝卜切末</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/64/39/13384814/n13384814_155304929520987.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num2\">2.</em>\r\n						</p><p>\r\n														</p><p>容器中倒入萝卜末，盐，面粉，淀粉，鸡蛋，葱末，五香粉，清水，搅拌成糊</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/64/39/13384814/n13384814_155304930423036.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num3\">3.</em>\r\n						</p><p>\r\n														</p><p>锅中倒油，油温烧至七成热</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/64/39/13384814/n13384814_155304931697796.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num4\">4.</em>\r\n						</p><p>\r\n														</p><p>放入丸子，小火炸至金黄色</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/64/39/13384814/n13384814_155304932932600.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n															</p><h2 class=\"cpc_h2\">萝卜丸子成品图</h2><p>\r\n\r\n					</p><p>\r\n						</p><p><img src=\"https://s1.st.meishij.net/rs/64/39/13384814/n13384814_155304933534023.jpg\" alt=\"萝卜丸子成品图\"/></p><p><img src=\"https://s1.st.meishij.net/rs/64/39/13384814/n13384814_155304933534023.jpg\" alt=\"萝卜丸子成品图\"/></p><p><img src=\"https://s1.st.meishij.net/rs/64/39/13384814/n13384814_155304933534023.jpg\" alt=\"萝卜丸子成品图\"/></p><p>\r\n						</p><p><span class=\"swiper-pagination-bullet swiper-pagination-bullet-active\"></span></p><p>\r\n					</p><p>\r\n										\r\n					</p><h2 class=\"cpc_h2\">烹饪技巧</h2><p style=\"padding-left:100px;\">无</p><p>										</p><p><br/></p>',5),(4,'蜜汁鸡翅',10,10,'foods/9b81ee590d27c91277ce8f36280285e3.jpg','<h2 class=\"cpc_h2\">蜜汁鸡翅的做法</h2><p><br/></p><p><br/></p><p><em class=\"step\" id=\"step_num1\">1.</em> </p><p><br/></p><p>鸡翅中浸泡20分钟去去血水，冲洗干净，沥干水分。</p><p><br/></p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/155/60/5140155/n5140155_155196478207066.jpg\" alt=\"\"/> </p><p><br/></p><p><br/></p><p><br/></p><p><em class=\"step\" id=\"step_num2\">2.</em> </p><p><br/></p><p>给鸡翅划上2～3刀，便于入味。</p><p><br/></p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/155/60/5140155/n5140155_155196478676886.jpg\" alt=\"\"/> </p><p><br/></p><p><br/></p><p><br/></p><p><em class=\"step\" id=\"step_num3\">3.</em> </p><p><br/></p><p>碗内加入蒜泥、料酒、酱油、蚝油、蜂蜜、盐、甜红椒粉、白胡椒粉。</p><p><br/></p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/155/60/5140155/n5140155_155196479367603.jpg\" alt=\"\"/> </p><p><br/></p><p><br/></p><p><br/></p><p><em class=\"step\" id=\"step_num4\">4.</em> </p><p><br/></p><p>倒入热开水，搅拌均匀。</p><p><br/></p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/155/60/5140155/n5140155_155196479804346.jpg\" alt=\"\"/> </p><p><br/></p><p><br/></p><p><br/></p><p><em class=\"step\" id=\"step_num5\">5.</em> </p><p><br/></p><p>把鸡翅里倒入混合好的酱料，搅拌均匀，盖上保鲜膜，放冰箱冷藏腌制一天。</p><p><br/></p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/155/60/5140155/n5140155_155196477814096.jpg\" alt=\"\"/> </p><p><br/></p><p><br/></p><p><br/></p><p><em class=\"step\" id=\"step_num6\">6.</em> </p><p><br/></p><p>腌制好的鸡翅，用厨房纸吸干表面的水份，煎制时才能上色。开中火，不粘锅里倒入少许食用油，油热后放入鸡翅。</p><p><br/></p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/155/60/5140155/n5140155_155196487804791.jpg\" alt=\"\"/> </p><p><br/></p><p><br/></p><p><br/></p><p><em class=\"step\" id=\"step_num7\">7.</em> </p><p><br/></p><p>把鸡翅两面煎至金黄色。</p><p><br/></p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/155/60/5140155/n5140155_155196495143167.jpg\" alt=\"\"/> </p><p><br/></p><p><br/></p><p><br/></p><p><em class=\"step\" id=\"step_num8\">8.</em> </p><p><br/></p><p>加入与鸡翅齐平的开水，稍搅动均匀。</p><p><br/></p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/155/60/5140155/n5140155_155196487383621.jpg\" alt=\"\"/> </p><p><br/></p><p><br/></p><p><br/></p><p><em class=\"step\" id=\"step_num9\">9.</em> </p><p><br/></p><p>盖上锅盖，中火焖炖15分钟。</p><p><br/></p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/155/60/5140155/n5140155_155196499469908.jpg\" alt=\"\"/> </p><p><br/></p><p><br/></p><p><br/></p><p><em class=\"step\" id=\"step_num10\">10.</em> </p><p><br/></p><p>炖好后，开大火收汁，完全收干，让酱汁在鸡翅上挂住。</p><p><br/></p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/155/60/5140155/n5140155_155196502246241.jpg\" alt=\"\"/> </p><p><br/></p><p><br/></p><p><br/></p><h2 class=\"cpc_h2\">蜜汁鸡翅成品图</h2><p><br/></p><p><br/></p><p><img src=\"https://s1.st.meishij.net/rs/155/60/5140155/n5140155_155196509444181.jpg\" alt=\"蜜汁鸡翅成品图\"/> </p><p><img src=\"https://s1.st.meishij.net/rs/155/60/5140155/n5140155_155196506176328.jpg\" alt=\"蜜汁鸡翅成品图\"/> </p><p><img src=\"https://s1.st.meishij.net/rs/155/60/5140155/n5140155_155196507926838.jpg\" alt=\"蜜汁鸡翅成品图\"/> </p><p><img src=\"https://s1.st.meishij.net/rs/155/60/5140155/n5140155_155196508666654.jpg\" alt=\"蜜汁鸡翅成品图\"/> </p><p><img src=\"https://s1.st.meishij.net/rs/155/60/5140155/n5140155_155196509444181.jpg\" alt=\"蜜汁鸡翅成品图\"/> </p><p><img src=\"https://s1.st.meishij.net/rs/155/60/5140155/n5140155_155196506176328.jpg\" alt=\"蜜汁鸡翅成品图\"/> </p><p><br/></p><p><span class=\"swiper-pagination-bullet\"></span><span class=\"swiper-pagination-bullet\"></span><span class=\"swiper-pagination-bullet\"></span><span class=\"swiper-pagination-bullet swiper-pagination-bullet-active\"></span></p><p><br/></p><p><br/></p><h2 class=\"cpc_h2\">烹饪技巧</h2><p style=\"padding-left:100px;\">1、如果腌制时间不够，最少腌制1小时，建议冷藏过夜味道更佳。 <br/>2、若一次做的比较多，鸡翅可以分几次来煎，不要一次全部下锅。</p><p><br/></p><p><br/> </p>',5),(5,'姜糖膏',5,30,'foods/4cf6bbd0622ddb1f84d8ad519cbe0a80.jpg','<h2 class=\"cpc_h2\">姜糖膏的做法</h2><p>\r\n					\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num1\">1.</em>\r\n						</p><p>\r\n														</p><p>黄姜红枣切片备用</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154469360047853.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num2\">2.</em>\r\n						</p><p>\r\n														</p><p>将黄姜红枣枸杞一起加水打成泥</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154469363762093.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num3\">3.</em>\r\n						</p><p>\r\n														</p><p>将打成泥的倒入锅中后加入黑糖</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154469370644701.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num4\">4.</em>\r\n						</p><p>\r\n														</p><p>微火炖两小时 即可大功告成</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154469376094571.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n															</p><h2 class=\"cpc_h2\">姜糖膏成品图</h2><p>\r\n\r\n					\r\n						</p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154469379674300.jpg\" alt=\"姜糖膏成品图\"/></p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154469379674300.jpg\" alt=\"姜糖膏成品图\"/></p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154469379674300.jpg\" alt=\"姜糖膏成品图\"/></p><p><br/></p>',5),(6,'烤玉米',5,30,'foods/b03bffd09032838a5ede8ca054f80880.jpg','<h2 class=\"cpc_h2\">烤玉米的做法</h2><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num1\">1.</em>\r\n						</p><p>\r\n														</p><p>玉米两个去皮洗净，放入烤盘</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_155082489424649.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num2\">2.</em>\r\n						</p><p>\r\n														</p><p>蜂蜜均匀涂抹在玉米上</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_155082490982885.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num3\">3.</em>\r\n						</p><p>\r\n														</p><p>烤箱预热220℃上下火，30分钟</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_155082492252322.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num4\">4.</em>\r\n						</p><p>\r\n														</p><p>烤好即可</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_155082492479163.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n															</p><h2 class=\"cpc_h2\">烤玉米成品图</h2><p>\r\n\r\n					</p><p>\r\n						</p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_155082493571143.jpg\" alt=\"烤玉米成品图\"/></p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_155082493571143.jpg\" alt=\"烤玉米成品图\"/></p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_155082493571143.jpg\" alt=\"烤玉米成品图\"/></p><p>\r\n						</p><p><span class=\"swiper-pagination-bullet swiper-pagination-bullet-active\"></span></p><p>\r\n					</p><p>\r\n										\r\n					</p><h2 class=\"cpc_h2\">烹饪技巧</h2><p style=\"padding-left:100px;\">无</p><p>										</p><p><br/></p>',5),(7,'珍珠翡翠白玉汤',6,10,'foods/fc9e624f188aec38d71096487227d9e5.jpg','<h2 class=\"cpc_h2\">珍珠翡翠白玉汤的做法</h2><p>\r\n					\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num1\">1.</em>\r\n						</p><p>\r\n														</p><p>准备葱末，豆腐切丁，娃娃菜切段</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_155349295281510.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num2\">2.</em>\r\n						</p><p>\r\n														</p><p>锅中放入清水，倒入豆腐</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_155349302615256.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num3\">3.</em>\r\n						</p><p>\r\n														</p><p>放入毛豆、盐、鸡粉，大火煮沸</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_155349309628408.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num4\">4.</em>\r\n						</p><p>\r\n														</p><p>倒入娃娃菜、葱末、香油，搅拌均匀</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_155349330310491.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n															</p><h2 class=\"cpc_h2\">珍珠翡翠白玉汤成品图</h2><p>\r\n\r\n					\r\n						</p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_155349276441817.jpg\" alt=\"珍珠翡翠白玉汤成品图\"/></p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_155349276441817.jpg\" alt=\"珍珠翡翠白玉汤成品图\"/></p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_155349276441817.jpg\" alt=\"珍珠翡翠白玉汤成品图\"/></p><p><br/></p>',5),(8,'红烧肉',20,30,'foods/1d7b6a1b2b825ea714feb7898fad6f47.jpg','<h2 class=\"cpc_h2\">红烧肉的做法</h2><p><br/> </p><p><br/> </p><p><em class=\"step\" id=\"step_num1\">1.</em> </p><p><br/> </p><p>准备好红烧肉所需的食材，这里我们最好选用肥瘦相间的三层肉（五花肉）来做</p><p><br/> </p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/55/17/2316805/n2316805_146804675305191.jpg\" alt=\"\"/> </p><p><br/> </p><p><br/> </p><p><br/> </p><p><em class=\"step\" id=\"step_num2\">2.</em> </p><p><br/> </p><p>五花肉事先用冷水浸泡出血水，洗净，切2厘米见方的块</p><p><br/> </p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/55/17/2316805/n2316805_146804676521907.jpg\" alt=\"\"/> </p><p><br/> </p><p><br/> </p><p><br/> </p><p><em class=\"step\" id=\"step_num3\">3.</em> </p><p><br/> </p><p>将五花肉倒入冷水锅中，加入2片姜、几颗花椒粒，水开后焯烫3分钟</p><p><br/> </p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/55/17/2316805/n2316805_146804678436946.jpg\" alt=\"\"/> </p><p><br/> </p><p><br/> </p><p><br/> </p><p><em class=\"step\" id=\"step_num4\">4.</em> </p><p><br/> </p><p>将五花肉捞出，将水分沥干备用</p><p><br/> </p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/55/17/2316805/n2316805_146804679586719.jpg\" alt=\"\"/> </p><p><br/> </p><p><br/> </p><p><br/> </p><p><em class=\"step\" id=\"step_num5\">5.</em> </p><p><br/> </p><p>锅加倒入适量的色拉油，将冰糖倒入锅中，炒出糖色</p><p><br/> </p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/55/17/2316805/n2316805_146804681029471.jpg\" alt=\"\"/> </p><p><br/> </p><p><br/> </p><p><br/> </p><p><em class=\"step\" id=\"step_num6\">6.</em> </p><p><br/> </p><p>将五花肉倒入锅中，快速的煸炒</p><p><br/> </p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/55/17/2316805/n2316805_146804682874046.jpg\" alt=\"\"/> </p><p><br/> </p><p><br/> </p><p><br/> </p><p><em class=\"step\" id=\"step_num7\">7.</em> </p><p><br/> </p><p>倒入2茶匙的红烧酱油（约10毫升）</p><p><br/> </p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/55/17/2316805/n2316805_146804684639533.jpg\" alt=\"\"/> </p><p><br/> </p><p><br/> </p><p><br/> </p><p><em class=\"step\" id=\"step_num8\">8.</em> </p><p><br/> </p><p>加入香味、桂皮、八角，翻炒</p><p><br/> </p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/55/17/2316805/n2316805_146804686337881.jpg\" alt=\"\"/> </p><p><br/> </p><p><br/> </p><p><br/> </p><p><em class=\"step\" id=\"step_num9\">9.</em> </p><p><br/> </p><p>倒入2茶匙的黄酒，迅速翻炒均匀后关火</p><p><br/> </p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/55/17/2316805/n2316805_146804687993595.jpg\" alt=\"\"/> </p><p><br/> </p><p><br/> </p><p><br/> </p><p><em class=\"step\" id=\"step_num10\">10.</em> </p><p><br/> </p><p>将上好糖色的红花肉倒入电压力锅锅胆内</p><p><br/> </p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/55/17/2316805/n2316805_146804690761588.jpg\" alt=\"\"/> </p><p><br/> </p><p><br/> </p><p><br/> </p><p><em class=\"step\" id=\"step_num11\">11.</em> </p><p><br/> </p><p>加入适量的清水和小葱段、姜片，加入少许食盐</p><p><br/> </p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/55/17/2316805/n2316805_146804693409920.jpg\" alt=\"\"/> </p><p><br/> </p><p><br/> </p><p><br/> </p><p><em class=\"step\" id=\"step_num12\">12.</em> </p><p><br/> </p><p>盖上锅盖，旋转压力把手至“合”的位置</p><p><br/> </p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/55/17/2316805/n2316805_146804694603842.jpg\" alt=\"\"/> </p><p><br/> </p><p><br/> </p><p><br/> </p><p><em class=\"step\" id=\"step_num13\">13.</em> </p><p><br/> </p><p>接通电源，开启电压力锅，轻点功能键选择“肉/鸡”菜单</p><p><br/> </p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/55/17/2316805/n2316805_146804696256246.jpg\" alt=\"\"/> </p><p><br/> </p><p><br/> </p><p><br/> </p><p><em class=\"step\" id=\"step_num14\">14.</em> </p><p><br/> </p><p>轻点定制口感的“软烂”按键，选第六档口感，轻点开始按钮</p><p><br/> </p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/55/17/2316805/n2316805_146804697814145.jpg\" alt=\"\"/> </p><p><br/> </p><p><br/> </p><p><br/> </p><p><em class=\"step\" id=\"step_num15\">15.</em> </p><p><br/> </p><p>电压力锅开始工作</p><p><br/> </p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/55/17/2316805/n2316805_146804699409945.jpg\" alt=\"\"/> </p><p><br/> </p><p><br/> </p><p><br/> </p><p><em class=\"step\" id=\"step_num16\">16.</em> </p><p><br/> </p><p>经过大约25-30分钟，红烧肉烧好啦 ，装盘淋入剩余的汤汁撒入小葱段即可食用</p><p><br/> </p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/55/17/2316805/n2316805_146804701604497.jpg\" alt=\"\"/> </p><p><br/> </p><p><br/> </p><p><br/> </p><h2 class=\"cpc_h2\">红烧肉成品图</h2><p><br/> </p><p><br/> </p><p><img src=\"https://s1.st.meishij.net/rs/55/17/2316805/n2316805_146804716164441.jpg\" alt=\"红烧肉成品图\"/> </p><p><img src=\"https://s1.st.meishij.net/rs/55/17/2316805/n2316805_146804713085977.jpg\" alt=\"红烧肉成品图\"/> </p><p><img src=\"https://s1.st.meishij.net/rs/55/17/2316805/n2316805_146804715309509.jpg\" alt=\"红烧肉成品图\"/> </p><p><img src=\"https://s1.st.meishij.net/rs/55/17/2316805/n2316805_146804715908290.jpg\" alt=\"红烧肉成品图\"/> </p><p><img src=\"https://s1.st.meishij.net/rs/55/17/2316805/n2316805_146804716164441.jpg\" alt=\"红烧肉成品图\"/> </p><p><img src=\"https://s1.st.meishij.net/rs/55/17/2316805/n2316805_146804713085977.jpg\" alt=\"红烧肉成品图\"/> </p><p><br/> </p><p><span class=\"swiper-pagination-bullet\"></span><span class=\"swiper-pagination-bullet\"></span><span class=\"swiper-pagination-bullet\"></span><span class=\"swiper-pagination-bullet swiper-pagination-bullet-active\"></span></p><p><br/> </p><p><br/> </p><h2 class=\"cpc_h2\">烹饪技巧</h2><p style=\"padding-left:100px;\">1、最好选用选用肥瘦相间的三层肉（五花肉）来做，这样烧出来红烧肉更软烂，口感更佳。<br/>2、选择冰糖炒糖色，上色效果更佳</p><p><br/> </p><p><br/> </p>',5),(9,'松仁玉米',12,10,'foods/7f6635efcd293a86db7a923b2b6070f5.jpg','<h2 class=\"cpc_h2\">松仁玉米的做法</h2><p>\r\n					\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num1\">1.</em>\r\n						</p><p>\r\n														</p><p>黄瓜去瓤</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154469280232727.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num2\">2.</em>\r\n						</p><p>\r\n														</p><p>黄瓜切丁，胡萝卜切丁</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154469281735152.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num3\">3.</em>\r\n						</p><p>\r\n														</p><p>玉米粒焯水1分钟</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154469283355787.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num4\">4.</em>\r\n						</p><p>\r\n														</p><p>黄瓜丁和胡萝卜丁焯水30秒</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154469284399654.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num5\">5.</em>\r\n						</p><p>\r\n														</p><p>锅内倒食用油，放入所有食材</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154469286010261.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num6\">6.</em>\r\n						</p><p>\r\n														</p><p>加盐和水淀粉，翻炒均匀</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154469287669694.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n															</p><h2 class=\"cpc_h2\">松仁玉米成品图</h2><p>\r\n\r\n					\r\n						</p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154469288309974.jpg\" alt=\"松仁玉米成品图\"/></p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154469288309974.jpg\" alt=\"松仁玉米成品图\"/></p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154469288309974.jpg\" alt=\"松仁玉米成品图\"/></p><p><br/></p>',5),(10,'炒白菜',5,8,'foods/43d8be33dc00a33132c82adb9d0d3a54.jpg','<h2 class=\"cpc_h2\">炒白菜的做法</h2><p>\r\n					\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num1\">1.</em>\r\n						</p><p>\r\n														</p><p>1、准备葱花、蒜片、辣椒段、香菇块、胡萝卜片、白菜段<br/></p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154469276644246.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num2\">2.</em>\r\n						</p><p>\r\n														</p><p>2、白菜、胡萝卜、香菇焯水30秒<br/></p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154469278981911.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num3\">3.</em>\r\n						</p><p>\r\n														</p><p>3、倒入食用油，放入蒜片、葱花、辣椒，大火爆香<br/></p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154469279813634.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num4\">4.</em>\r\n						</p><p>\r\n														</p><p>4、倒入白菜、香菇、胡萝卜片，翻炒均匀<br/></p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154469280510420.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num5\">5.</em>\r\n						</p><p>\r\n														</p><p>5、加白胡椒粉、盐、生抽，翻炒均匀，装盘即可</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154469285715551.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num6\">6.</em>\r\n						</p><p>\r\n														</p><p>6、出锅即可食用。</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154469287227167.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p><br/></p>',5),(11,'煎蛋饺',2,5,'foods/1e7e10d5cf9c2ba8126d80bfe5e958dc.jpg','<h2 class=\"cpc_h2\">煎蛋饺的做法</h2><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num1\">1.</em>\r\n						</p><p>\r\n														</p><p>香葱切末，倒入肉末碗中，加入白胡椒粉、料酒、生抽，搅匀腌制20分钟<br/></p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154806478582722.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num2\">2.</em>\r\n						</p><p>\r\n														</p><p>碗中打入2个鸡蛋，搅匀</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154806478734259.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num3\">3.</em>\r\n						</p><p>\r\n														</p><p>汤勺刷油，加热，倒入蛋液，煎至成蛋饼</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154806479211881.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num4\">4.</em>\r\n						</p><p>\r\n														</p><p>放入肉馅，卷成饺子状</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154806479639157.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num5\">5.</em>\r\n						</p><p>\r\n														</p><p>摆盘<br/></p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154806481092111.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n															</p><h2 class=\"cpc_h2\">煎蛋饺成品图</h2><p>\r\n\r\n					</p><p>\r\n						</p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154806481617192.jpg\" alt=\"煎蛋饺成品图\"/></p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154806481617192.jpg\" alt=\"煎蛋饺成品图\"/></p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154806481617192.jpg\" alt=\"煎蛋饺成品图\"/></p><p>\r\n						</p><p><span class=\"swiper-pagination-bullet swiper-pagination-bullet-active\"></span></p><p>\r\n					</p><p>\r\n										\r\n					</p><h2 class=\"cpc_h2\">烹饪技巧</h2><p style=\"padding-left:100px;\">无</p><p>										</p><p><br/></p>',5),(12,'花生豆腐',10,30,'foods/7ee3fa699fdc32417324541203453407.jpg','<h2 class=\"cpc_h2\">花生豆腐的做法</h2><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num1\">1.</em>\r\n						</p><p>\r\n														</p><p>毛豆腐切块，花生切碎</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154806417988905.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num2\">2.</em>\r\n						</p><p>\r\n														</p><p>锅中倒油，倒入豆腐</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154806417412004.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num3\">3.</em>\r\n						</p><p>\r\n														</p><p>小火煎至表面金黄</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154806418905864.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n										</p><p>\r\n						<em class=\"step\" id=\"step_num4\">4.</em>\r\n						</p><p>\r\n														</p><p>滤油，倒入花生碎，生抽，盐，翻炒均匀</p><p>\r\n							</p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154806419994033.jpg\" alt=\"\"/></p><p>						</p><p>\r\n					</p><p>\r\n															</p><h2 class=\"cpc_h2\">花生豆腐成品图</h2><p>\r\n\r\n					</p><p>\r\n						</p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154806420573850.jpg\" alt=\"花生豆腐成品图\"/></p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154806420573850.jpg\" alt=\"花生豆腐成品图\"/></p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154806420573850.jpg\" alt=\"花生豆腐成品图\"/></p><p>\r\n						</p><p><span class=\"swiper-pagination-bullet swiper-pagination-bullet-active\"></span></p><p>\r\n					</p><p>\r\n										\r\n					</p><h2 class=\"cpc_h2\">烹饪技巧</h2><p style=\"padding-left:100px;\">无</p><p>										</p>',5),(13,'萝卜丝饼',10,20,'foods/f60449acf686f5c20d6bb20479f71935.jpg','<h2 class=\"cpc_h2\">萝卜丝饼的做法</h2><p><br/></p><p><br/></p><p><em class=\"step\" id=\"step_num1\">1.</em> </p><p><br/></p><p>葱末，白萝卜切丝</p><p><br/></p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154806314106702.jpg\" alt=\"\"/> </p><p><br/></p><p><br/></p><p><br/></p><p><em class=\"step\" id=\"step_num2\">2.</em> </p><p><br/></p><p>白萝卜倒入容器，加盐，搅拌均匀</p><p><br/></p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154806315195544.jpg\" alt=\"\"/> </p><p><br/></p><p><br/></p><p><br/></p><p><em class=\"step\" id=\"step_num3\">3.</em> </p><p><br/></p><p>加入玉米面，面粉，清水，搅拌均匀</p><p><br/></p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154806316127908.jpg\" alt=\"\"/> </p><p><br/></p><p><br/></p><p><br/></p><p><em class=\"step\" id=\"step_num4\">4.</em> </p><p><br/></p><p>玉米面倒在案板上，用手掌压匀，均匀沾满玉米面</p><p><br/></p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154806319283790.jpg\" alt=\"\"/> </p><p><br/></p><p><br/></p><p><br/></p><p><em class=\"step\" id=\"step_num5\">5.</em> </p><p><br/></p><p>锅中倒油，油温烧至七成热，放入萝卜丝饼，小火煎至两面金黄</p><p><br/></p><p><img class=\"conimg\" src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154806320218649.jpg\" alt=\"\"/> </p><p><br/></p><p><br/></p><p><br/></p><h2 class=\"cpc_h2\">萝卜丝饼成品图</h2><p><br/></p><p><br/></p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154806320641133.jpg\" alt=\"萝卜丝饼成品图\"/> </p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154806320641133.jpg\" alt=\"萝卜丝饼成品图\"/> </p><p><img src=\"https://s1.st.meishij.net/rs/41/203/113291/n113291_154806320641133.jpg\" alt=\"萝卜丝饼成品图\"/> </p><p><br/></p><p><span class=\"swiper-pagination-bullet swiper-pagination-bullet-active\"></span></p><p><br/></p><p><br/></p><h2 class=\"cpc_h2\">烹饪技巧</h2><p style=\"padding-left:100px;\">无</p><p><br/></p><p><br/> </p>',5);
/*!40000 ALTER TABLE `t_foods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_quan_active`
--

DROP TABLE IF EXISTS `t_quan_active`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_quan_active` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publish_date` date NOT NULL,
  `valid_days` int(11) NOT NULL,
  `volumns` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `note` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_quan_active`
--

LOCK TABLES `t_quan_active` WRITE;
/*!40000 ALTER TABLE `t_quan_active` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_quan_active` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_quan_info`
--

DROP TABLE IF EXISTS `t_quan_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_quan_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quan_num` varchar(20) NOT NULL,
  `rate` double NOT NULL,
  `title` varchar(50) NOT NULL,
  `active_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `t_quan_info_active_id_0f5f7c21_fk_t_quan_active_id` (`active_id`),
  CONSTRAINT `t_quan_info_active_id_0f5f7c21_fk_t_quan_active_id` FOREIGN KEY (`active_id`) REFERENCES `t_quan_active` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_quan_info`
--

LOCK TABLES `t_quan_info` WRITE;
/*!40000 ALTER TABLE `t_quan_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_quan_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `v_foods_cate`
--

DROP TABLE IF EXISTS `v_foods_cate`;
/*!50001 DROP VIEW IF EXISTS `v_foods_cate`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_foods_cate` (
  `id` int(11),
  `name` varchar(100),
  `price` double,
  `image` varchar(100),
  `cate_name` varchar(50)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `xadmin_bookmark`
--

DROP TABLE IF EXISTS `xadmin_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_bookmark`
--

LOCK TABLES `xadmin_bookmark` WRITE;
/*!40000 ALTER TABLE `xadmin_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_log`
--

DROP TABLE IF EXISTS `xadmin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_log`
--

LOCK TABLES `xadmin_log` WRITE;
/*!40000 ALTER TABLE `xadmin_log` DISABLE KEYS */;
INSERT INTO `xadmin_log` VALUES (1,'2019-03-28 03:01:02','127.0.0.1','8','私家菜','create','已添加。',15,1),(2,'2019-03-28 03:01:16','127.0.0.1','9','热菜','create','已添加。',15,1),(3,'2019-03-28 03:01:32','127.0.0.1','10','海鲜','create','已添加。',15,1),(4,'2019-03-28 03:01:53','127.0.0.1','11','素食','create','已添加。',15,1),(5,'2019-03-28 03:02:11','127.0.0.1','12','甜品点心','create','已添加。',15,1),(6,'2019-03-30 03:47:02','127.0.0.1','13','萝卜丝饼','change','修改 price 和 info',16,1),(7,'2019-03-30 03:53:56','127.0.0.1','15','aaaaa','create','已添加。',16,1),(8,'2019-03-30 03:55:03','127.0.0.1',NULL,'','delete','批量删除 1 个 菜谱',NULL,1),(9,'2019-03-30 03:57:23','127.0.0.1','16','ccccc','create','已添加。',16,1),(10,'2019-03-30 03:57:39','127.0.0.1',NULL,'','delete','批量删除 1 个 菜谱',NULL,1),(11,'2019-03-30 03:59:20','127.0.0.1','17','ddddd','create','已添加。',16,1),(12,'2019-03-30 03:59:27','127.0.0.1',NULL,'','delete','批量删除 1 个 菜谱',NULL,1),(13,'2019-03-30 04:12:53','127.0.0.1','19','dddacc','create','已添加。',16,1),(14,'2019-03-30 04:13:16','127.0.0.1',NULL,'','delete','批量删除 1 个 菜谱',NULL,1),(15,'2019-03-30 04:25:52','127.0.0.1','20','dddddaaa','create','已添加。',16,1),(16,'2019-03-30 04:26:13','127.0.0.1',NULL,'','delete','批量删除 1 个 菜谱',NULL,1),(17,'2019-03-30 04:29:00','127.0.0.1','21','ffff','create','已添加。',16,1),(18,'2019-03-30 04:29:45','127.0.0.1',NULL,'','delete','批量删除 1 个 菜谱',NULL,1),(19,'2019-03-30 04:32:02','127.0.0.1','22','ffddcc','create','已添加。',16,1),(20,'2019-03-30 04:32:13','127.0.0.1',NULL,'','delete','批量删除 1 个 菜谱',NULL,1),(21,'2019-03-30 04:39:31','127.0.0.1','23','dddccss','create','已添加。',16,1),(22,'2019-03-30 04:40:01','127.0.0.1',NULL,'','delete','批量删除 1 个 菜谱',NULL,1),(23,'2019-03-30 04:44:41','127.0.0.1','24','ddccaa','create','已添加。',16,1),(24,'2019-03-30 04:44:52','127.0.0.1',NULL,'','delete','批量删除 1 个 菜谱',NULL,1),(25,'2019-03-30 05:33:17','127.0.0.1','25','kdkdkd','create','已添加。',16,1),(26,'2019-03-30 05:34:09','127.0.0.1',NULL,'','delete','批量删除 1 个 菜谱',NULL,1),(27,'2019-03-30 05:35:32','127.0.0.1','26','dddaaaa','create','已添加。',16,1),(28,'2019-03-30 05:35:40','127.0.0.1',NULL,'','delete','批量删除 1 个 菜谱',NULL,1),(29,'2019-03-30 05:38:04','127.0.0.1','27','dkdka','create','已添加。',16,1),(30,'2019-03-30 05:41:47','127.0.0.1',NULL,'','delete','批量删除 1 个 菜谱',NULL,1),(31,'2019-03-30 05:43:58','127.0.0.1','28','dfa','create','已添加。',16,1),(32,'2019-03-30 05:46:08','127.0.0.1',NULL,'','delete','批量删除 1 个 菜谱',NULL,1),(33,'2019-03-30 05:50:09','127.0.0.1','29','ui','create','已添加。',16,1),(34,'2019-03-30 05:50:15','127.0.0.1',NULL,'','delete','批量删除 1 个 菜谱',NULL,1),(35,'2019-03-30 06:01:23','127.0.0.1','30','uiooooo','create','已添加。',16,1),(36,'2019-03-30 06:06:35','127.0.0.1',NULL,'','delete','批量删除 1 个 菜谱',NULL,1);
/*!40000 ALTER TABLE `xadmin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_usersettings`
--

DROP TABLE IF EXISTS `xadmin_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_usersettings`
--

LOCK TABLES `xadmin_usersettings` WRITE;
/*!40000 ALTER TABLE `xadmin_usersettings` DISABLE KEYS */;
INSERT INTO `xadmin_usersettings` VALUES (1,'dashboard:home:pos','',1);
/*!40000 ALTER TABLE `xadmin_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_userwidget`
--

DROP TABLE IF EXISTS `xadmin_userwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_userwidget`
--

LOCK TABLES `xadmin_userwidget` WRITE;
/*!40000 ALTER TABLE `xadmin_userwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_userwidget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `v_foods_cate`
--

/*!50001 DROP TABLE IF EXISTS `v_foods_cate`*/;
/*!50001 DROP VIEW IF EXISTS `v_foods_cate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_foods_cate` AS select `f`.`id` AS `id`,`f`.`name` AS `name`,`f`.`price` AS `price`,`f`.`image` AS `image`,`c`.`name` AS `cate_name` from (`t_foods` `f` join `t_category` `c` on((`f`.`category_id` = `c`.`id`))) */;
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

-- Dump completed on 2019-04-01 10:19:26
