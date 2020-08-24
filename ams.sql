-- MySQL dump 10.17  Distrib 10.3.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: yii2user
-- ------------------------------------------------------
-- Server version	10.3.22-MariaDB-1ubuntu1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor` (
  `actor_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`actor_id`),
  KEY `idx_actor_last_name` (`last_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'Budi','Pratama','2020-07-21 17:59:41');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_assignment`
--

DROP TABLE IF EXISTS `auth_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `idx-auth_assignment-user_id` (`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_assignment`
--

LOCK TABLES `auth_assignment` WRITE;
/*!40000 ALTER TABLE `auth_assignment` DISABLE KEYS */;
INSERT INTO `auth_assignment` VALUES ('admin','1',1594917930),('customer','5',1594628016),('customer service','2',1595354339);
/*!40000 ALTER TABLE `auth_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item`
--

DROP TABLE IF EXISTS `auth_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item`
--

LOCK TABLES `auth_item` WRITE;
/*!40000 ALTER TABLE `auth_item` DISABLE KEYS */;
INSERT INTO `auth_item` VALUES ('/*',2,'All Menu And Action',NULL,NULL,NULL,NULL),('/actor/create',2,'Create',NULL,'1',NULL,NULL),('/actor/delete',2,'Delete',NULL,'1',NULL,NULL),('/actor/index',2,'Index',NULL,'1',NULL,NULL),('/actor/update',2,'Update',NULL,'1',NULL,NULL),('/actor/view',2,'View',NULL,'1',NULL,NULL),('/article/create',2,'Create',NULL,'1',NULL,1595098687),('/article/delete',2,'Delete',NULL,'1',NULL,NULL),('/article/index',2,'Index',NULL,NULL,NULL,NULL),('/article/update',2,'Update',NULL,'1',NULL,NULL),('/article/view',2,'View',NULL,'1',NULL,NULL),('/members/gold/users/ajax',2,'Ajax',NULL,NULL,NULL,NULL),('/members/gold/users/ajax-download',2,'Ajaxdownload',NULL,'1',NULL,NULL),('/members/gold/users/create',2,'Create',NULL,'1',NULL,NULL),('/members/gold/users/delete',2,'Delete',NULL,'1',NULL,NULL),('/members/gold/users/index',2,'Index',NULL,'1',NULL,NULL),('/members/gold/users/update',2,'Update',NULL,'1',NULL,NULL),('/members/gold/users/view',2,'View',NULL,'1',NULL,NULL),('/members/platinum/users/create',2,'Create',NULL,'1',NULL,NULL),('/members/platinum/users/delete',2,'Delete',NULL,'1',NULL,NULL),('/members/platinum/users/index',2,'Index',NULL,NULL,NULL,NULL),('/members/platinum/users/update',2,'Update',NULL,NULL,NULL,NULL),('/members/platinum/users/view',2,'View',NULL,'1',NULL,NULL),('/members/silver/users/create',2,'Create',NULL,'1',NULL,NULL),('/members/silver/users/delete',2,'Delete',NULL,'1',NULL,NULL),('/members/silver/users/index',2,'Index',NULL,'1',NULL,NULL),('/members/silver/users/update',2,'Update',NULL,'1',NULL,NULL),('/members/silver/users/view',2,'View',NULL,'1',NULL,NULL),('admin',1,NULL,NULL,NULL,1594628016,1594628016),('author',1,NULL,NULL,NULL,1594628016,1594628016),('createPost',2,'Create a post','OnlyAuthor',NULL,1594628016,1595360844),('customer',1,NULL,NULL,NULL,1594628016,1594628016),('customer service',1,NULL,NULL,NULL,1595354292,1595354292),('updatePost',2,'Update post',NULL,NULL,1594628016,1594628016);
/*!40000 ALTER TABLE `auth_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_item_child`
--

DROP TABLE IF EXISTS `auth_item_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_item_child`
--

LOCK TABLES `auth_item_child` WRITE;
/*!40000 ALTER TABLE `auth_item_child` DISABLE KEYS */;
INSERT INTO `auth_item_child` VALUES ('admin','/*'),('admin','updatePost'),('author','/article/create'),('author','/article/delete'),('author','/article/update'),('author','/article/view'),('author','/members/gold/users/delete'),('author','/members/gold/users/update'),('author','/members/gold/users/view'),('author','/members/platinum/users/create'),('author','/members/platinum/users/delete'),('author','/members/platinum/users/view'),('author','createPost'),('customer service','/members/gold/users/ajax-download'),('customer service','/members/gold/users/create'),('customer service','/members/gold/users/delete'),('customer service','/members/gold/users/index'),('customer service','/members/gold/users/update'),('customer service','/members/gold/users/view');
/*!40000 ALTER TABLE `auth_item_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_rule`
--

DROP TABLE IF EXISTS `auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_rule`
--

LOCK TABLES `auth_rule` WRITE;
/*!40000 ALTER TABLE `auth_rule` DISABLE KEYS */;
INSERT INTO `auth_rule` VALUES ('OnlyAuthor','O:23:\"backend\\rule\\OnlyAuthor\":3:{s:4:\"name\";s:10:\"OnlyAuthor\";s:9:\"createdAt\";i:1595360463;s:9:\"updatedAt\";i:1595360463;}',1595360463,1595360463);
/*!40000 ALTER TABLE `auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Article',10,'/article/index',NULL,NULL),(2,'Members',NULL,NULL,NULL,NULL),(3,'Gold',2,NULL,NULL,NULL),(5,'Silver',2,NULL,NULL,NULL),(6,'Platinum',2,NULL,NULL,NULL),(7,'Users',3,'/members/gold/users/index',NULL,NULL),(8,'Users',5,'/members/silver/users/index',NULL,NULL),(9,'Users',6,'/members/platinum/users/index',NULL,NULL),(10,'News',NULL,NULL,NULL,NULL),(11,'Actor',NULL,'/actor/index',NULL,NULL);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m000000_000000_base',1594618932),('m130524_201442_init',1594618935),('m140506_102106_rbac_init',1594622169),('m140602_111327_create_menu_table',1595103587),('m160312_050000_create_user',1595103587),('m170907_052038_rbac_add_index_on_auth_assignment_user_id',1594622169),('m180523_151638_rbac_updates_indexes_without_prefix',1594622170),('m190124_110200_add_verification_token_column_to_user_table',1594618935),('m200409_110543_rbac_update_mssql_trigger',1594622170);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_params`
--

DROP TABLE IF EXISTS `tbl_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_params` (
  `tp_id` int(11) NOT NULL AUTO_INCREMENT,
  `tp_name` varchar(45) NOT NULL,
  `tp_value` varchar(45) NOT NULL,
  PRIMARY KEY (`tp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_params`
--

LOCK TABLES `tbl_params` WRITE;
/*!40000 ALTER TABLE `tbl_params` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_additional`
--

DROP TABLE IF EXISTS `tbl_user_additional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user_additional` (
  `tua_phone_number` varchar(13) DEFAULT NULL,
  `tua_user_id` int(11) NOT NULL,
  KEY `as_idx` (`tua_user_id`),
  CONSTRAINT `as` FOREIGN KEY (`tua_user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_additional`
--

LOCK TABLES `tbl_user_additional` WRITE;
/*!40000 ALTER TABLE `tbl_user_additional` DISABLE KEYS */;
INSERT INTO `tbl_user_additional` VALUES ('6282297323945',1);
/*!40000 ALTER TABLE `tbl_user_additional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'budipratama','NQM910srp3knJY8vQg0nKbi_EyhkYtZA','$2y$13$3qzqmnJH7OOeKCOyUuq02umVKUPMRDnvZ.x4CepT7bQJwjJvmsv92',NULL,'budi.pratama@icode.co.id',10,1595151221,1595151221,'CbTrav7-ChBu0NpY-1QW_8S3M532PW3y_1595151221'),(2,'irezpratama','Td9UVxPJ9fkaylBrMNia-6Ma1iJgWhPe','$2y$13$ulRru4HogO4ORQ2M3ZDDSOup2hLctfQonceoORwHX1AHJq2rNYCFW',NULL,'irezpratama@gmail.com',10,1595353722,1595354165,'GpX8iyoGgNU7GBla7uPd5ZlmjTuZG58Q_1595353722');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-21  1:30:52
