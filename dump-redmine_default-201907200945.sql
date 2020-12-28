-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: ctrl0703.iptime.org    Database: redmine_default
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.14.04.1

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
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `container_id` int(11) DEFAULT NULL,
  `container_type` varchar(30) DEFAULT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `disk_filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `content_type` varchar(255) DEFAULT '',
  `digest` varchar(40) NOT NULL DEFAULT '',
  `downloads` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `disk_directory` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_attachments_on_author_id` (`author_id`),
  KEY `index_attachments_on_created_on` (`created_on`),
  KEY `index_attachments_on_container_id_and_container_type` (`container_id`,`container_type`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
INSERT INTO `attachments` VALUES (1,NULL,NULL,'0. 메인화면.png','171006215711_4d40c8831e6dae1431b9c599373bfaeb.png',16644,'','385e29595454ead6d599ffed02ea4d32',0,3,'2017-10-06 21:57:11',NULL,'2017/10'),(2,NULL,NULL,'1.1 암기카드 시작.png','171006215711_8ba3f75ec09ffafa1c43dc8ebb4b2289.png',27783,'','85066d0e257f93af144d6729a1cfa225',0,3,'2017-10-06 21:57:11',NULL,'2017/10'),(3,NULL,NULL,'1.2 암기화면.png','171006215712_fc4d0973572fd5db5e84b9c00a380739.png',18404,'','92691ab8b5615c6e230b85e12559a6fb',0,3,'2017-10-06 21:57:12',NULL,'2017/10'),(7,NULL,NULL,'1.1 암기카드 시작.png','171006221215_8ba3f75ec09ffafa1c43dc8ebb4b2289.png',29586,'','71957b2ba9743635745971acb6bef785',0,3,'2017-10-06 22:12:15',NULL,'2017/10'),(10,11,'WikiPage','1.1 암기 화면.png','171007015754_9c988aea9b7cf6a5e2b54fd51ed4149e.png',18458,NULL,'b41e7400442364e69f661ade3ad29775',0,3,'2017-10-07 01:57:54','','2017/10'),(11,11,'WikiPage','1. 암기카드 시작.png','171007015754_d39a2213196979117f276e1c19c43ec7.png',34566,NULL,'1bd2dec96c179e62057581ab28e9adfa',0,3,'2017-10-07 01:57:54','','2017/10'),(12,11,'WikiPage','3.1 암기카드 관리 세부.png','171007015754_a5f207590b25e9dc90794406253be1d2.png',41096,NULL,'ff0d056adb60158151ddd3563c7ef038',0,3,'2017-10-07 01:57:54','','2017/10'),(13,11,'WikiPage','3. 암기카드 관리.png','171007015754_45c4192047b54fe6820f596b3923563c.png',28138,NULL,'a805ca11a2745d52b8c40fbce125d3a9',0,3,'2017-10-07 01:57:54','','2017/10'),(14,11,'WikiPage','메인화면.png','171007015754_785a037e389102f7e43020395f58253f.png',16542,NULL,'7ae55a2cf066f7fe9c9c94d2e6eed13d',0,3,'2017-10-07 01:57:54','','2017/10'),(15,11,'WikiPage','서비스 플로우.png','171007015754_dffb97255490439bbafb89ad76ac8587.png',15320,NULL,'50e965ad79af758a65a0d6b7de582444',0,3,'2017-10-07 01:57:54','','2017/10');
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_sources`
--

DROP TABLE IF EXISTS `auth_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `host` varchar(60) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `account_password` varchar(255) DEFAULT '',
  `base_dn` varchar(255) DEFAULT NULL,
  `attr_login` varchar(30) DEFAULT NULL,
  `attr_firstname` varchar(30) DEFAULT NULL,
  `attr_lastname` varchar(30) DEFAULT NULL,
  `attr_mail` varchar(30) DEFAULT NULL,
  `onthefly_register` tinyint(1) NOT NULL DEFAULT '0',
  `tls` tinyint(1) NOT NULL DEFAULT '0',
  `filter` varchar(255) DEFAULT NULL,
  `timeout` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_auth_sources_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_sources`
--

LOCK TABLES `auth_sources` WRITE;
/*!40000 ALTER TABLE `auth_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boards`
--

DROP TABLE IF EXISTS `boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT '1',
  `topics_count` int(11) NOT NULL DEFAULT '0',
  `messages_count` int(11) NOT NULL DEFAULT '0',
  `last_message_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `boards_project_id` (`project_id`),
  KEY `index_boards_on_last_message_id` (`last_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards`
--

LOCK TABLES `boards` WRITE;
/*!40000 ALTER TABLE `boards` DISABLE KEYS */;
/*!40000 ALTER TABLE `boards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changes`
--

DROP TABLE IF EXISTS `changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changeset_id` int(11) NOT NULL,
  `action` varchar(1) NOT NULL DEFAULT '',
  `path` text NOT NULL,
  `from_path` text,
  `from_revision` varchar(255) DEFAULT NULL,
  `revision` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `changesets_changeset_id` (`changeset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changes`
--

LOCK TABLES `changes` WRITE;
/*!40000 ALTER TABLE `changes` DISABLE KEYS */;
/*!40000 ALTER TABLE `changes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changeset_parents`
--

DROP TABLE IF EXISTS `changeset_parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changeset_parents` (
  `changeset_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  KEY `changeset_parents_changeset_ids` (`changeset_id`),
  KEY `changeset_parents_parent_ids` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changeset_parents`
--

LOCK TABLES `changeset_parents` WRITE;
/*!40000 ALTER TABLE `changeset_parents` DISABLE KEYS */;
/*!40000 ALTER TABLE `changeset_parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changesets`
--

DROP TABLE IF EXISTS `changesets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changesets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repository_id` int(11) NOT NULL,
  `revision` varchar(255) NOT NULL,
  `committer` varchar(255) DEFAULT NULL,
  `committed_on` datetime NOT NULL,
  `comments` text,
  `commit_date` date DEFAULT NULL,
  `scmid` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `changesets_repos_rev` (`repository_id`,`revision`),
  KEY `index_changesets_on_user_id` (`user_id`),
  KEY `index_changesets_on_repository_id` (`repository_id`),
  KEY `index_changesets_on_committed_on` (`committed_on`),
  KEY `changesets_repos_scmid` (`repository_id`,`scmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changesets`
--

LOCK TABLES `changesets` WRITE;
/*!40000 ALTER TABLE `changesets` DISABLE KEYS */;
/*!40000 ALTER TABLE `changesets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changesets_issues`
--

DROP TABLE IF EXISTS `changesets_issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changesets_issues` (
  `changeset_id` int(11) NOT NULL,
  `issue_id` int(11) NOT NULL,
  UNIQUE KEY `changesets_issues_ids` (`changeset_id`,`issue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changesets_issues`
--

LOCK TABLES `changesets_issues` WRITE;
/*!40000 ALTER TABLE `changesets_issues` DISABLE KEYS */;
/*!40000 ALTER TABLE `changesets_issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commented_type` varchar(30) NOT NULL DEFAULT '',
  `commented_id` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `comments` text,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_commented_id_and_commented_type` (`commented_id`,`commented_type`),
  KEY `index_comments_on_author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `field_format` varchar(30) NOT NULL DEFAULT '',
  `possible_values` text,
  `regexp` varchar(255) DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` int(11) NOT NULL DEFAULT '0',
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_for_all` tinyint(1) NOT NULL DEFAULT '0',
  `is_filter` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `searchable` tinyint(1) DEFAULT '0',
  `default_value` text,
  `editable` tinyint(1) DEFAULT '1',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `multiple` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_custom_fields_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_projects`
--

DROP TABLE IF EXISTS `custom_fields_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_projects` (
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `index_custom_fields_projects_on_custom_field_id_and_project_id` (`custom_field_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_projects`
--

LOCK TABLES `custom_fields_projects` WRITE;
/*!40000 ALTER TABLE `custom_fields_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_roles`
--

DROP TABLE IF EXISTS `custom_fields_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_roles` (
  `custom_field_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  UNIQUE KEY `custom_fields_roles_ids` (`custom_field_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_roles`
--

LOCK TABLES `custom_fields_roles` WRITE;
/*!40000 ALTER TABLE `custom_fields_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_trackers`
--

DROP TABLE IF EXISTS `custom_fields_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_trackers` (
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `index_custom_fields_trackers_on_custom_field_id_and_tracker_id` (`custom_field_id`,`tracker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_trackers`
--

LOCK TABLES `custom_fields_trackers` WRITE;
/*!40000 ALTER TABLE `custom_fields_trackers` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_values`
--

DROP TABLE IF EXISTS `custom_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customized_type` varchar(30) NOT NULL DEFAULT '',
  `customized_id` int(11) NOT NULL DEFAULT '0',
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `custom_values_customized` (`customized_type`,`customized_id`),
  KEY `index_custom_values_on_custom_field_id` (`custom_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_values`
--

LOCK TABLES `custom_values` WRITE;
/*!40000 ALTER TABLE `custom_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL DEFAULT '',
  `description` text,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_project_id` (`project_id`),
  KEY `index_documents_on_category_id` (`category_id`),
  KEY `index_documents_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enabled_modules`
--

DROP TABLE IF EXISTS `enabled_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enabled_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `enabled_modules_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enabled_modules`
--

LOCK TABLES `enabled_modules` WRITE;
/*!40000 ALTER TABLE `enabled_modules` DISABLE KEYS */;
INSERT INTO `enabled_modules` VALUES (1,1,'issue_tracking'),(2,1,'time_tracking'),(3,1,'news'),(4,1,'documents'),(5,1,'files'),(6,1,'wiki'),(7,1,'repository'),(8,1,'boards'),(9,1,'calendar'),(10,1,'gantt'),(11,2,'issue_tracking'),(12,2,'time_tracking'),(13,2,'news'),(14,2,'documents'),(15,2,'files'),(16,2,'wiki'),(17,2,'repository'),(18,2,'boards'),(19,2,'calendar'),(20,2,'gantt'),(21,3,'issue_tracking'),(22,3,'time_tracking'),(23,3,'news'),(24,3,'documents'),(25,3,'files'),(26,3,'wiki'),(27,3,'repository'),(28,3,'boards'),(29,3,'calendar'),(30,3,'gantt'),(31,4,'issue_tracking'),(32,4,'time_tracking'),(33,4,'news'),(34,4,'documents'),(35,4,'files'),(36,4,'wiki'),(37,4,'repository'),(38,4,'boards'),(39,4,'calendar'),(40,4,'gantt'),(41,5,'issue_tracking'),(42,5,'time_tracking'),(43,5,'news'),(44,5,'documents'),(45,5,'files'),(46,5,'wiki'),(47,5,'repository'),(48,5,'boards'),(49,5,'calendar'),(50,5,'gantt'),(51,6,'issue_tracking'),(52,6,'time_tracking'),(53,6,'news'),(54,6,'documents'),(55,6,'files'),(56,6,'wiki'),(57,6,'repository'),(58,6,'boards'),(59,6,'calendar'),(60,6,'gantt'),(61,7,'issue_tracking'),(62,7,'time_tracking'),(63,7,'news'),(64,7,'documents'),(65,7,'files'),(66,7,'wiki'),(67,7,'repository'),(68,7,'boards'),(69,7,'calendar'),(70,7,'gantt'),(71,8,'issue_tracking'),(72,8,'time_tracking'),(73,8,'news'),(74,8,'documents'),(75,8,'files'),(76,8,'wiki'),(77,8,'repository'),(78,8,'boards'),(79,8,'calendar'),(80,8,'gantt'),(81,9,'issue_tracking'),(82,9,'time_tracking'),(83,9,'news'),(84,9,'documents'),(85,9,'files'),(86,9,'wiki'),(87,9,'repository'),(88,9,'boards'),(89,9,'calendar'),(90,9,'gantt'),(91,10,'issue_tracking'),(92,10,'time_tracking'),(93,10,'news'),(94,10,'documents'),(95,10,'files'),(96,10,'wiki'),(97,10,'repository'),(98,10,'boards'),(99,10,'calendar'),(100,10,'gantt');
/*!40000 ALTER TABLE `enabled_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enumerations`
--

DROP TABLE IF EXISTS `enumerations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enumerations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` int(11) DEFAULT '1',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `project_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `position_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_enumerations_on_project_id` (`project_id`),
  KEY `index_enumerations_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enumerations`
--

LOCK TABLES `enumerations` WRITE;
/*!40000 ALTER TABLE `enumerations` DISABLE KEYS */;
INSERT INTO `enumerations` VALUES (1,'낮음',1,0,'IssuePriority',1,NULL,NULL,'lowest'),(2,'보통',2,1,'IssuePriority',1,NULL,NULL,'default'),(3,'높음',3,0,'IssuePriority',1,NULL,NULL,'high3'),(4,'긴급',4,0,'IssuePriority',1,NULL,NULL,'high2'),(5,'즉시',5,0,'IssuePriority',1,NULL,NULL,'highest'),(6,'사용자 문서',1,0,'DocumentCategory',1,NULL,NULL,NULL),(7,'기술 문서',2,0,'DocumentCategory',1,NULL,NULL,NULL),(8,'설계',1,0,'TimeEntryActivity',1,NULL,NULL,NULL),(9,'개발',2,0,'TimeEntryActivity',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `enumerations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_users`
--

DROP TABLE IF EXISTS `groups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_users` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  UNIQUE KEY `groups_users_ids` (`group_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_users`
--

LOCK TABLES `groups_users` WRITE;
/*!40000 ALTER TABLE `groups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_categories`
--

DROP TABLE IF EXISTS `issue_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `assigned_to_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issue_categories_project_id` (`project_id`),
  KEY `index_issue_categories_on_assigned_to_id` (`assigned_to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_categories`
--

LOCK TABLES `issue_categories` WRITE;
/*!40000 ALTER TABLE `issue_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_relations`
--

DROP TABLE IF EXISTS `issue_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_from_id` int(11) NOT NULL,
  `issue_to_id` int(11) NOT NULL,
  `relation_type` varchar(255) NOT NULL DEFAULT '',
  `delay` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_issue_relations_on_issue_from_id_and_issue_to_id` (`issue_from_id`,`issue_to_id`),
  KEY `index_issue_relations_on_issue_from_id` (`issue_from_id`),
  KEY `index_issue_relations_on_issue_to_id` (`issue_to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_relations`
--

LOCK TABLES `issue_relations` WRITE;
/*!40000 ALTER TABLE `issue_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_statuses`
--

DROP TABLE IF EXISTS `issue_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `is_closed` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `default_done_ratio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_issue_statuses_on_position` (`position`),
  KEY `index_issue_statuses_on_is_closed` (`is_closed`),
  KEY `index_issue_statuses_on_is_default` (`is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_statuses`
--

LOCK TABLES `issue_statuses` WRITE;
/*!40000 ALTER TABLE `issue_statuses` DISABLE KEYS */;
INSERT INTO `issue_statuses` VALUES (1,'신규',0,1,1,NULL),(2,'진행',0,0,2,NULL),(3,'해결',0,0,3,NULL),(4,'의견',0,0,4,NULL),(5,'완료',1,0,5,NULL),(6,'거절',1,0,6,NULL);
/*!40000 ALTER TABLE `issue_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `due_date` date DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `assigned_to_id` int(11) DEFAULT NULL,
  `priority_id` int(11) NOT NULL,
  `fixed_version_id` int(11) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `lock_version` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `done_ratio` int(11) NOT NULL DEFAULT '0',
  `estimated_hours` float DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `closed_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issues_project_id` (`project_id`),
  KEY `index_issues_on_status_id` (`status_id`),
  KEY `index_issues_on_category_id` (`category_id`),
  KEY `index_issues_on_assigned_to_id` (`assigned_to_id`),
  KEY `index_issues_on_fixed_version_id` (`fixed_version_id`),
  KEY `index_issues_on_tracker_id` (`tracker_id`),
  KEY `index_issues_on_priority_id` (`priority_id`),
  KEY `index_issues_on_author_id` (`author_id`),
  KEY `index_issues_on_created_on` (`created_on`),
  KEY `index_issues_on_root_id_and_lft_and_rgt` (`root_id`,`lft`,`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
INSERT INTO `issues` VALUES (1,3,4,'스토리 보드(화면설계서) 작성','','2017-10-31',NULL,1,3,2,NULL,3,6,'2017-10-06 19:15:08','2017-10-07 02:36:28','2017-10-06',50,5,NULL,1,1,2,0,NULL),(2,3,4,'요구사항 명세서 작성','','2017-10-08',NULL,1,3,2,NULL,3,3,'2017-10-06 19:15:20','2017-10-06 19:18:07','2017-10-06',0,2,NULL,2,1,2,0,NULL);
/*!40000 ALTER TABLE `issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal_details`
--

DROP TABLE IF EXISTS `journal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journal_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journal_id` int(11) NOT NULL DEFAULT '0',
  `property` varchar(30) NOT NULL DEFAULT '',
  `prop_key` varchar(30) NOT NULL DEFAULT '',
  `old_value` text,
  `value` text,
  PRIMARY KEY (`id`),
  KEY `journal_details_journal_id` (`journal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal_details`
--

LOCK TABLES `journal_details` WRITE;
/*!40000 ALTER TABLE `journal_details` DISABLE KEYS */;
INSERT INTO `journal_details` VALUES (1,1,'attr','due_date',NULL,'2017-10-08'),(2,1,'attr','assigned_to_id',NULL,'3'),(3,1,'attr','estimated_hours',NULL,'2'),(4,2,'attr','tracker_id','1','2'),(5,3,'attr','tracker_id','1','3'),(6,4,'attr','tracker_id','2','3'),(7,5,'attr','start_date','2017-10-06','2017-10-07'),(8,6,'attr','start_date','2017-10-07','2017-10-06'),(9,6,'attr','estimated_hours',NULL,'2'),(10,7,'attr','estimated_hours','2','5'),(11,8,'attr','done_ratio','0','30'),(12,9,'attr','done_ratio','30','50');
/*!40000 ALTER TABLE `journal_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journals`
--

DROP TABLE IF EXISTS `journals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journalized_id` int(11) NOT NULL DEFAULT '0',
  `journalized_type` varchar(30) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notes` text,
  `created_on` datetime NOT NULL,
  `private_notes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `journals_journalized_id` (`journalized_id`,`journalized_type`),
  KEY `index_journals_on_user_id` (`user_id`),
  KEY `index_journals_on_journalized_id` (`journalized_id`),
  KEY `index_journals_on_created_on` (`created_on`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journals`
--

LOCK TABLES `journals` WRITE;
/*!40000 ALTER TABLE `journals` DISABLE KEYS */;
INSERT INTO `journals` VALUES (1,2,'Issue',3,'','2017-10-06 19:16:06',0),(2,2,'Issue',3,'','2017-10-06 19:16:59',0),(3,1,'Issue',3,'','2017-10-06 19:18:00',0),(4,2,'Issue',3,'','2017-10-06 19:18:07',0),(5,1,'Issue',3,'','2017-10-06 19:18:21',0),(6,1,'Issue',3,'','2017-10-06 22:14:05',0),(7,1,'Issue',3,'','2017-10-06 22:14:38',0),(8,1,'Issue',3,'','2017-10-06 22:14:52',0),(9,1,'Issue',3,'','2017-10-07 02:36:28',0);
/*!40000 ALTER TABLE `journals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_roles`
--

DROP TABLE IF EXISTS `member_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `inherited_from` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_member_roles_on_member_id` (`member_id`),
  KEY `index_member_roles_on_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_roles`
--

LOCK TABLES `member_roles` WRITE;
/*!40000 ALTER TABLE `member_roles` DISABLE KEYS */;
INSERT INTO `member_roles` VALUES (1,1,4,NULL),(2,2,4,NULL),(3,3,3,NULL),(4,3,4,NULL),(5,3,5,NULL),(6,4,4,NULL),(7,5,3,NULL),(8,6,3,NULL),(9,6,4,NULL),(10,7,3,NULL),(11,7,4,NULL);
/*!40000 ALTER TABLE `member_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `mail_notification` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_members_on_user_id_and_project_id` (`user_id`,`project_id`),
  KEY `index_members_on_user_id` (`user_id`),
  KEY `index_members_on_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,3,2,'2016-08-27 17:46:19',0),(2,3,1,'2016-08-27 17:47:45',0),(3,3,3,'2016-08-27 17:55:12',0),(4,4,1,'2016-09-10 22:27:00',0),(5,1,4,'2017-10-06 19:07:55',0),(6,3,4,'2017-10-06 19:08:01',0),(7,4,4,'2017-10-06 19:08:01',0);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `board_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `content` text,
  `author_id` int(11) DEFAULT NULL,
  `replies_count` int(11) NOT NULL DEFAULT '0',
  `last_reply_id` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `locked` tinyint(1) DEFAULT '0',
  `sticky` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `messages_board_id` (`board_id`),
  KEY `messages_parent_id` (`parent_id`),
  KEY `index_messages_on_last_reply_id` (`last_reply_id`),
  KEY `index_messages_on_author_id` (`author_id`),
  KEY `index_messages_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `title` varchar(60) NOT NULL DEFAULT '',
  `summary` varchar(255) DEFAULT '',
  `description` text,
  `author_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `comments_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `news_project_id` (`project_id`),
  KEY `index_news_on_author_id` (`author_id`),
  KEY `index_news_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_id_authentication_associations`
--

DROP TABLE IF EXISTS `open_id_authentication_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_id_authentication_associations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issued` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `assoc_type` varchar(255) DEFAULT NULL,
  `server_url` blob,
  `secret` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `open_id_authentication_associations`
--

LOCK TABLES `open_id_authentication_associations` WRITE;
/*!40000 ALTER TABLE `open_id_authentication_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `open_id_authentication_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_id_authentication_nonces`
--

DROP TABLE IF EXISTS `open_id_authentication_nonces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_id_authentication_nonces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` int(11) NOT NULL,
  `server_url` varchar(255) DEFAULT NULL,
  `salt` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `open_id_authentication_nonces`
--

LOCK TABLES `open_id_authentication_nonces` WRITE;
/*!40000 ALTER TABLE `open_id_authentication_nonces` DISABLE KEYS */;
/*!40000 ALTER TABLE `open_id_authentication_nonces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `homepage` varchar(255) DEFAULT '',
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `inherit_members` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_projects_on_lft` (`lft`),
  KEY `index_projects_on_rgt` (`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'열하고 둘','열하고둘 웹페이지, 어플리케이션 제작 프로젝트','열하고둘.com',0,NULL,'2016-08-27 16:52:08','2018-04-03 17:13:21','tenandtwo',1,13,14,1),(2,'덕소 스멜스','사회인 야구팀 덕소 스멜스 어플리케이션 제작 프로젝트','',0,NULL,'2016-08-27 17:34:16','2018-04-03 17:13:10','dsmells',1,5,6,1),(3,'개발 공부 프로젝트','개인 개발 환경이나 공부하기 위한 프로젝트','',0,NULL,'2016-08-27 17:55:03','2016-08-27 17:55:37','study',1,3,4,0),(4,'스마트 암기카드','언제 어디서나 영어단어, 한자, 회화문장 등 암기에 이용할 수 있는 암기카드 어플리케이션','',0,NULL,'2017-10-06 19:07:07','2018-04-03 17:13:18','memorycard',1,11,12,0),(5,'모바일 포스','안드로이드 기반 모바일 포스 개발','',0,NULL,'2017-11-27 11:47:13','2018-04-03 17:13:13','mobilepos',1,7,8,0),(6,'자바 위키','자바 기반 위키 페이지','',0,NULL,'2017-11-27 11:47:42','2018-04-03 17:13:25','javawiki',1,15,16,0),(7,'포토엔진','사진관리 어플리케이션','',0,NULL,'2018-02-26 21:25:17','2018-04-03 17:13:27','photoengine',1,17,18,0),(8,'블로그','개인 일기, 공부, 개발 일지 등 작성 용 블로그 개발','',0,NULL,'2018-02-26 21:50:10','2018-04-03 17:13:16','blog',1,9,10,0),(9,'가계부 어플','효율적인 소비 관리를 할 수 있도록 가계부 어플리케이션 개발','',0,NULL,'2018-03-04 12:18:25','2018-04-03 17:12:51','allowance',1,1,2,0),(10,'햄릿','선택장애(햄릿증후군) 모임을 위한\r\n점심 식사 투표 어플리케이션','',0,NULL,'2018-03-10 16:28:26','2018-04-03 17:13:30','hamlet',1,19,20,0);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_trackers`
--

DROP TABLE IF EXISTS `projects_trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_trackers` (
  `project_id` int(11) NOT NULL DEFAULT '0',
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `projects_trackers_unique` (`project_id`,`tracker_id`),
  KEY `projects_trackers_project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_trackers`
--

LOCK TABLES `projects_trackers` WRITE;
/*!40000 ALTER TABLE `projects_trackers` DISABLE KEYS */;
INSERT INTO `projects_trackers` VALUES (1,1),(1,2),(1,3),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(4,1),(4,2),(4,3),(5,1),(5,2),(5,3),(6,1),(6,2),(6,3),(7,1),(7,2),(7,3),(8,1),(8,2),(8,3),(9,1),(9,2),(9,3),(10,1),(10,2),(10,3);
/*!40000 ALTER TABLE `projects_trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queries`
--

DROP TABLE IF EXISTS `queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `filters` text,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `column_names` text,
  `sort_criteria` text,
  `group_by` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `visibility` int(11) DEFAULT '0',
  `options` text,
  PRIMARY KEY (`id`),
  KEY `index_queries_on_project_id` (`project_id`),
  KEY `index_queries_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queries`
--

LOCK TABLES `queries` WRITE;
/*!40000 ALTER TABLE `queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queries_roles`
--

DROP TABLE IF EXISTS `queries_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queries_roles` (
  `query_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  UNIQUE KEY `queries_roles_ids` (`query_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queries_roles`
--

LOCK TABLES `queries_roles` WRITE;
/*!40000 ALTER TABLE `queries_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `queries_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repositories`
--

DROP TABLE IF EXISTS `repositories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repositories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `login` varchar(60) DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `root_url` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT NULL,
  `path_encoding` varchar(64) DEFAULT NULL,
  `log_encoding` varchar(64) DEFAULT NULL,
  `extra_info` text,
  `identifier` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_repositories_on_project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repositories`
--

LOCK TABLES `repositories` WRITE;
/*!40000 ALTER TABLE `repositories` DISABLE KEYS */;
/*!40000 ALTER TABLE `repositories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` int(11) DEFAULT '1',
  `assignable` tinyint(1) DEFAULT '1',
  `builtin` int(11) NOT NULL DEFAULT '0',
  `permissions` text,
  `issues_visibility` varchar(30) NOT NULL DEFAULT 'default',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Non member',1,1,1,'---\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :view_time_entries\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :add_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n','default'),(2,'Anonymous',2,1,2,'---\n- :view_issues\n- :view_gantt\n- :view_calendar\n- :view_time_entries\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :view_files\n- :browse_repository\n- :view_changesets\n','default'),(3,'관리자',3,1,0,'---\n- :add_project\n- :edit_project\n- :close_project\n- :select_project_modules\n- :manage_members\n- :manage_versions\n- :add_subprojects\n- :manage_categories\n- :view_issues\n- :add_issues\n- :edit_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :set_issues_private\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_issue_notes\n- :edit_own_issue_notes\n- :view_private_notes\n- :set_notes_private\n- :move_issues\n- :delete_issues\n- :manage_public_queries\n- :save_queries\n- :view_issue_watchers\n- :add_issue_watchers\n- :delete_issue_watchers\n- :log_time\n- :view_time_entries\n- :edit_time_entries\n- :edit_own_time_entries\n- :manage_project_activities\n- :manage_news\n- :comment_news\n- :add_documents\n- :edit_documents\n- :delete_documents\n- :view_documents\n- :manage_files\n- :view_files\n- :manage_wiki\n- :rename_wiki_pages\n- :delete_wiki_pages\n- :view_wiki_pages\n- :export_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n- :delete_wiki_pages_attachments\n- :protect_wiki_pages\n- :manage_repository\n- :browse_repository\n- :view_changesets\n- :commit_access\n- :manage_related_issues\n- :manage_boards\n- :add_messages\n- :edit_messages\n- :edit_own_messages\n- :delete_messages\n- :delete_own_messages\n- :view_calendar\n- :view_gantt\n','all'),(4,'개발자',4,1,0,'---\n- :manage_versions\n- :manage_categories\n- :view_issues\n- :add_issues\n- :edit_issues\n- :view_private_notes\n- :set_notes_private\n- :manage_issue_relations\n- :manage_subtasks\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :log_time\n- :view_time_entries\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n- :delete_wiki_pages\n- :add_messages\n- :edit_own_messages\n- :view_files\n- :manage_files\n- :browse_repository\n- :view_changesets\n- :commit_access\n- :manage_related_issues\n','default'),(5,'보고자',5,1,0,'---\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :log_time\n- :view_time_entries\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :add_messages\n- :edit_own_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n','default');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('1'),('10'),('100'),('101'),('102'),('103'),('104'),('105'),('106'),('107'),('108'),('11'),('12'),('13'),('14'),('15'),('16'),('17'),('18'),('19'),('2'),('20'),('20090214190337'),('20090312172426'),('20090312194159'),('20090318181151'),('20090323224724'),('20090401221305'),('20090401231134'),('20090403001910'),('20090406161854'),('20090425161243'),('20090503121501'),('20090503121505'),('20090503121510'),('20090614091200'),('20090704172350'),('20090704172355'),('20090704172358'),('20091010093521'),('20091017212227'),('20091017212457'),('20091017212644'),('20091017212938'),('20091017213027'),('20091017213113'),('20091017213151'),('20091017213228'),('20091017213257'),('20091017213332'),('20091017213444'),('20091017213536'),('20091017213642'),('20091017213716'),('20091017213757'),('20091017213835'),('20091017213910'),('20091017214015'),('20091017214107'),('20091017214136'),('20091017214236'),('20091017214308'),('20091017214336'),('20091017214406'),('20091017214440'),('20091017214519'),('20091017214611'),('20091017214644'),('20091017214720'),('20091017214750'),('20091025163651'),('20091108092559'),('20091114105931'),('20091123212029'),('20091205124427'),('20091220183509'),('20091220183727'),('20091220184736'),('20091225164732'),('20091227112908'),('20100129193402'),('20100129193813'),('20100221100219'),('20100313132032'),('20100313171051'),('20100705164950'),('20100819172912'),('20101104182107'),('20101107130441'),('20101114115114'),('20101114115359'),('20110220160626'),('20110223180944'),('20110223180953'),('20110224000000'),('20110226120112'),('20110226120132'),('20110227125750'),('20110228000000'),('20110228000100'),('20110401192910'),('20110408103312'),('20110412065600'),('20110511000000'),('20110902000000'),('20111201201315'),('20120115143024'),('20120115143100'),('20120115143126'),('20120127174243'),('20120205111326'),('20120223110929'),('20120301153455'),('20120422150750'),('20120705074331'),('20120707064544'),('20120714122000'),('20120714122100'),('20120714122200'),('20120731164049'),('20120930112914'),('20121026002032'),('20121026003537'),('20121209123234'),('20121209123358'),('20121213084931'),('20130110122628'),('20130201184705'),('20130202090625'),('20130207175206'),('20130207181455'),('20130215073721'),('20130215111127'),('20130215111141'),('20130217094251'),('20130602092539'),('20130710182539'),('20130713104233'),('20130713111657'),('20130729070143'),('20130911193200'),('20131004113137'),('20131005100610'),('21'),('22'),('23'),('24'),('25'),('26'),('27'),('28'),('29'),('3'),('30'),('31'),('32'),('33'),('34'),('35'),('36'),('37'),('38'),('39'),('4'),('40'),('41'),('42'),('43'),('44'),('45'),('46'),('47'),('48'),('49'),('5'),('50'),('51'),('52'),('53'),('54'),('55'),('56'),('57'),('58'),('59'),('6'),('60'),('61'),('62'),('63'),('64'),('65'),('66'),('67'),('68'),('69'),('7'),('70'),('71'),('72'),('73'),('74'),('75'),('76'),('77'),('78'),('79'),('8'),('80'),('81'),('82'),('83'),('84'),('85'),('86'),('87'),('88'),('89'),('9'),('90'),('91'),('92'),('93'),('94'),('95'),('96'),('97'),('98'),('99');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_settings_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'app_title','cahlee\'s lab','2018-03-10 16:54:15'),(2,'welcome_text','General Purpose Project Management Page','2016-08-27 17:51:06'),(3,'attachment_max_size','5120','2016-08-27 17:49:23'),(4,'per_page_options','25,50,100','2016-08-27 17:49:23'),(5,'activity_days_default','30','2016-08-27 17:49:23'),(6,'host_name','ctrl0703.iptime.org/redmine','2016-08-27 17:49:23'),(7,'protocol','http','2016-08-27 17:49:23'),(8,'text_formatting','textile','2016-08-27 17:49:23'),(9,'cache_formatted_text','0','2016-08-27 17:49:24'),(10,'wiki_compression','','2016-08-27 17:49:24'),(11,'feeds_limit','15','2016-08-27 17:49:24'),(12,'file_max_size_displayed','512','2016-08-27 17:49:24'),(13,'diff_max_lines_displayed','1500','2016-08-27 17:49:24'),(14,'repositories_encodings','','2016-08-27 17:49:24');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_entries`
--

DROP TABLE IF EXISTS `time_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `issue_id` int(11) DEFAULT NULL,
  `hours` float NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `activity_id` int(11) NOT NULL,
  `spent_on` date NOT NULL,
  `tyear` int(11) NOT NULL,
  `tmonth` int(11) NOT NULL,
  `tweek` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time_entries_project_id` (`project_id`),
  KEY `time_entries_issue_id` (`issue_id`),
  KEY `index_time_entries_on_activity_id` (`activity_id`),
  KEY `index_time_entries_on_user_id` (`user_id`),
  KEY `index_time_entries_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_entries`
--

LOCK TABLES `time_entries` WRITE;
/*!40000 ALTER TABLE `time_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `time_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `action` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(40) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tokens_value` (`value`),
  KEY `index_tokens_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES (1,1,'feeds','a0fce43af38802781a7822c02a72eed82456819b','2016-08-27 16:48:50'),(2,3,'feeds','9f6d9ce0173468fcb81af61ca2f9aec0e6cb9749','2016-08-27 17:48:00'),(3,4,'feeds','bc43fedef35db57b5149ceabc1a83714ac9f8406','2016-09-10 22:27:14'),(4,5,'feeds','675c1e5de7ec08ab0b7705962f5ca2600988a5ae','2018-04-03 17:16:08');
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackers`
--

DROP TABLE IF EXISTS `trackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `is_in_chlog` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `is_in_roadmap` tinyint(1) NOT NULL DEFAULT '1',
  `fields_bits` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackers`
--

LOCK TABLES `trackers` WRITE;
/*!40000 ALTER TABLE `trackers` DISABLE KEYS */;
INSERT INTO `trackers` VALUES (1,'결함',1,1,0,0),(2,'새기능',1,2,1,0),(3,'지원',0,3,0,0);
/*!40000 ALTER TABLE `trackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `others` text,
  `hide_mail` tinyint(1) DEFAULT '0',
  `time_zone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_preferences_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES (1,1,'---\n:no_self_notified: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:gantt_zoom: 2\n:gantt_months: 6\n',0,''),(2,3,'---\n:no_self_notified: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:gantt_zoom: 2\n:gantt_months: 6\n',0,''),(3,4,'---\n:no_self_notified: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:gantt_zoom: 2\n:gantt_months: 6\n',0,''),(4,5,'---\n:no_self_notified: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n:gantt_zoom: 2\n:gantt_months: 6\n',0,''),(5,6,'---\n:no_self_notified: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n',0,''),(6,7,'---\n:no_self_notified: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n',0,''),(7,8,'---\n:no_self_notified: \'0\'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: \'1\'\n',0,'');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL DEFAULT '',
  `hashed_password` varchar(40) NOT NULL DEFAULT '',
  `firstname` varchar(30) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `mail` varchar(60) NOT NULL DEFAULT '',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `last_login_on` datetime DEFAULT NULL,
  `language` varchar(5) DEFAULT '',
  `auth_source_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `identity_url` varchar(255) DEFAULT NULL,
  `mail_notification` varchar(255) NOT NULL DEFAULT '',
  `salt` varchar(64) DEFAULT NULL,
  `must_change_passwd` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_users_on_id_and_type` (`id`,`type`),
  KEY `index_users_on_auth_source_id` (`auth_source_id`),
  KEY `index_users_on_type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','e3b361407b387791f7a8c02c23ca8ff10accdcf3','admin','admin','ctrl0703@naver.com',1,1,'2018-07-12 20:14:08','ko',NULL,'2016-08-27 15:27:19','2016-08-27 17:47:31','User',NULL,'all','f850711aab506890e59c58b5135f0cf3',0),(2,'','','','Anonymous','',0,0,NULL,'',NULL,'2016-08-27 16:43:27','2016-08-27 16:43:27','AnonymousUser',NULL,'only_my_events',NULL,0),(3,'ctrl0703','28c3c0714a5b945b360b93747e0df71294c00e8e','Chang-Hee','Lee','ctrl0703@hotmail.com',0,1,'2018-07-12 20:13:54','ko',NULL,'2016-08-27 17:45:50','2016-08-27 17:47:14','User',NULL,'only_my_events','1b24c5a955a1cbd6a9f1f94707617e49',0),(4,'si1254','d9f4412776b2d7655436f10ea204c2b0f21b0602','nara','youn','si1254@naver.com',0,1,'2016-09-17 22:28:18','ko',NULL,'2016-09-10 22:25:12','2016-09-10 22:25:12','User',NULL,'only_my_events','e576a0ff415f56e7ea536cbf7933cefd',0),(5,'AC814892','927b540dd72f1154f26a5517847e74ea2fa0c350','이','창희','leech151@amorepacific.com',0,1,'2018-04-03 17:16:08','ko',NULL,'2018-04-03 17:10:13','2018-04-03 17:10:13','User',NULL,'only_my_events','732675edca0760905949163f5d8e851d',0),(6,'AP492457','3e74df00ff59bba0686926241f74d872e6f2f36a','황','윤성','realkadan@amorepacific.com',0,1,NULL,'ko',NULL,'2018-04-03 17:11:17','2018-04-03 17:11:17','User',NULL,'only_my_events','3a471d318d5d7dee5da3c4d3aa437797',0),(7,'SP2300036','5cdb059edfe1f660170079220d9d01df0426fe4c','임','민주','minjulim@espoir.com',0,1,NULL,'ko',NULL,'2018-04-03 17:11:46','2018-04-03 17:11:46','User',NULL,'only_my_events','ceb3adebeae195f0800be93de1a2d665',0),(8,'AC920571','97fd2f5d1192456c3b65b1e2ddad62dfd0506303','이','영진','djdwl@amorepacific.com',0,1,NULL,'ko',NULL,'2018-04-03 17:12:25','2018-04-03 17:12:25','User',NULL,'only_my_events','3a8e4db8e569e632300dd38f40a320c8',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `effective_date` date DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `wiki_page_title` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'open',
  `sharing` varchar(255) NOT NULL DEFAULT 'none',
  PRIMARY KEY (`id`),
  KEY `versions_project_id` (`project_id`),
  KEY `index_versions_on_sharing` (`sharing`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watchers`
--

DROP TABLE IF EXISTS `watchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watchers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `watchable_type` varchar(255) NOT NULL DEFAULT '',
  `watchable_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `watchers_user_id_type` (`user_id`,`watchable_type`),
  KEY `index_watchers_on_user_id` (`user_id`),
  KEY `index_watchers_on_watchable_id_and_watchable_type` (`watchable_id`,`watchable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watchers`
--

LOCK TABLES `watchers` WRITE;
/*!40000 ALTER TABLE `watchers` DISABLE KEYS */;
/*!40000 ALTER TABLE `watchers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_content_versions`
--

DROP TABLE IF EXISTS `wiki_content_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_content_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_content_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `data` longblob,
  `compression` varchar(6) DEFAULT '',
  `comments` varchar(255) DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_content_versions_wcid` (`wiki_content_id`),
  KEY `index_wiki_content_versions_on_updated_on` (`updated_on`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_content_versions`
--

LOCK TABLES `wiki_content_versions` WRITE;
/*!40000 ALTER TABLE `wiki_content_versions` DISABLE KEYS */;
INSERT INTO `wiki_content_versions` VALUES (1,1,1,1,'h1. 기능','','','2016-08-27 17:34:49',1),(2,1,1,1,'h1. 1. [[개발 예정 기능]]','','','2016-08-27 17:35:15',2),(3,2,2,1,'h1. 개발 예정 기능\r\n\r\n1. 경기 예정/결과 확인\r\n2. 개인 기록 확인\r\n3. 공지사항\r\n4. 회비 관리\r\n5. 투표\r\n6. 사진\r\n7. 동영상','','','2016-08-27 17:35:25',1),(4,1,1,1,'h1. Wiki\r\n\r\n1. [[개발 예정 기능]]','','','2016-08-27 17:35:40',3),(5,1,1,1,'h1. Wiki\r\n\r\nh2. 1. [[개발 예정 기능]]','','','2016-08-27 17:36:29',4),(6,3,3,3,'h1. Wiki\r\n\r\n[[개인 환경 구성]]','','','2016-08-27 17:56:07',1),(7,4,4,3,'h1. 개인 환경 구성\r\n\r\ncahlee.com\r\n - / : 개인 포트폴리오 블로그        / ctrl0703.iptime.org:8080/blog\r\n - /redmine : 프로젝트 관리페이지    / ctrl0703.iptime.org/redmine\r\n - /jenkins : Continues Integration  / ctrl0703.iptime.org:8081\r\n - /photo : 사진관리 페이지','','','2016-08-27 17:58:06',1),(8,4,4,3,'h1. 개인 환경 구성\r\n\r\ncahlee.com\r\n - / : 개인 포트폴리오 블로그 - ctrl0703.iptime.org:8080/blog\r\n - /redmine : 프로젝트 관리페이지 - ctrl0703.iptime.org/redmine\r\n - /jenkins : Continues Integration - ctrl0703.iptime.org:8081\r\n - /photo : 사진관리 페이지 - ctrl0703.iptime.org:8080/photo','','','2016-08-27 17:58:43',2),(9,4,4,3,'h1. 개인 환경 구성\r\n\r\nh2. cahlee.com\r\n - / : 개인 포트폴리오 블로그 - ctrl0703.iptime.org:8080/blog\r\n - /redmine : 프로젝트 관리페이지 - ctrl0703.iptime.org/redmine\r\n - /jenkins : Continues Integration - ctrl0703.iptime.org:8081\r\n - /photo : 사진관리 페이지 - ctrl0703.iptime.org:8080/photo','','','2016-08-27 17:58:53',3),(10,4,4,3,'h1. 개인 환경 구성\r\n\r\nh2. cahlee.com\r\n\r\n - / : 개인 포트폴리오 블로그 - ctrl0703.iptime.org:8080/blog\r\n - /redmine : 프로젝트 관리페이지 - ctrl0703.iptime.org/redmine\r\n - /jenkins : Continues Integration - ctrl0703.iptime.org:8081\r\n - /photo : 사진관리 페이지 - ctrl0703.iptime.org:8080/photo','','','2016-08-27 17:59:03',4),(11,4,4,3,'h1. 개인 환경 구성\r\n\r\nh2. cahlee.com\r\n\r\n - / : 개인 포트폴리오 블로그 - ctrl0703.iptime.org:8080/blog\r\n- /redmine : 프로젝트 관리페이지 - ctrl0703.iptime.org/redmine\r\n- /jenkins : Continues Integration - ctrl0703.iptime.org:8081\r\n- /photo : 사진관리 페이지 - ctrl0703.iptime.org:8080/photo','','','2016-08-27 17:59:45',5),(12,4,4,3,'h1. 개인 환경 구성\r\n\r\nh2. cahlee.com\r\n\r\n* / : 개인 포트폴리오 블로그 http://ctrl0703.iptime.org:8080/blog\r\n* /redmine : 프로젝트 관리페이지 - http://ctrl0703.iptime.org/redmine\r\n* /jenkins : Continues Integration - http://ctrl0703.iptime.org:8081\r\n* /photo : 사진관리 페이지 - http://ctrl0703.iptime.org:8080/photo','','','2016-08-27 18:30:22',6),(13,4,4,3,'h1. 개인 환경 구성\r\n\r\nh2. cahlee.com\r\n\r\n* / : 개인 포트폴리오 블로그 http://ctrl0703.iptime.org:8080/blog\r\n* /redmine : 프로젝트 관리페이지 - http://ctrl0703.iptime.org/redmine\r\n* /jenkins : Continues Integration - http://ctrl0703.iptime.org:8081\r\n* /photo : 사진관리 페이지 - http://ctrl0703.iptime.org:8080/photo\r\n\r\nh2. 개인 서버\r\n\r\n* OS. Ubuntu 14.04 LTS Desktop\r\n\r\n내부에 바로 깔기 보다는 Virtualbox를 이용하여 논리적인 Layer를 나눠서 구성\r\nUbuntu\r\n - CentOS\r\n - FreeBSD','','','2016-09-05 17:38:54',7),(14,5,5,4,'h1. Wiki\r\n\r\n[[개발 요구사항]]','','','2016-09-10 22:28:43',1),(15,6,6,4,'h1. 개발 요구사항\r\n\r\n개발 요건\r\n- [[사진 관리]]\r\n- 회원 관리\r\n- 모임 소개\r\n- 여행 계획\r\n- 회계 관리\r\n.\r\n.\r\n.','','','2016-09-10 22:30:30',1),(16,7,7,4,'h1. 사진 관리\r\n\r\n사진 관리는 ....\r\n\r\n\r\n','','','2016-09-10 22:30:44',1),(17,5,5,4,'h1. Wiki\r\n\r\n왜아무것도 없냐\r\n\r\n\r\n[[개발 요구사항]]','','','2016-09-17 22:28:35',2),(18,5,5,4,'h1. Wiki\r\n\r\n왜아무것도 없냐\r\n빨리 뭐해봐라\r\n\r\n[[개발 요구사항]]','','','2016-09-17 22:28:46',3),(19,3,3,1,'h1. Wiki\r\n\r\n[[개인 환경 구성]]\r\n\r\n[[개발 할 것]]','','','2016-10-01 23:04:07',2),(20,8,8,1,'h1. 개발 할 것\r\n\r\n1. 열하고둘 어플리케이션\r\n\r\n2. 스멜스 어플리케이션\r\n\r\n3. 플래시카드 어플리케이션\r\n\r\n4. 개인 블로그','','','2016-10-01 23:05:20',1),(21,8,8,1,'h1. 개발 할 것\r\n\r\n1. 열하고둘 어플리케이션\r\n\r\n2. 스멜스 어플리케이션\r\n\r\n3. 플래시카드 어플리케이션\r\n\r\n4. 개인 블로그\r\n - 포트폴리오\r\n - 사진 관리\r\n - 위시리스트\r\n - 독서록\r\n - 목표','','','2016-11-26 16:16:26',2),(22,8,8,1,'h1. 개발 할 것\r\n\r\n1. 열하고둘 어플리케이션\r\n\r\n2. 스멜스 어플리케이션\r\n\r\n3. 플래시카드 어플리케이션\r\n\r\n4. 개인 블로그\r\n - 포트폴리오\r\n - 사진 관리\r\n - 위시리스트\r\n - 독서록\r\n - 목표\r\n - 개인 일지','','','2016-11-26 16:17:05',3),(23,9,9,3,'h1. Wiki\r\n\r\n지원 플랫폼\r\n* 아이폰(우선)\r\n* 안드로이드','','','2017-10-06 19:19:41',1),(24,9,9,3,'h1. Wiki\r\n\r\n지원 플랫폼\r\n* 아이폰(우선)\r\n* 안드로이드\r\n\r\n[[요구사항 명세서]]\r\n\r\n[[스토리보드(화면설계서)]]','','','2017-10-06 19:21:13',2),(25,9,9,3,'h1. Wiki\r\n\r\n[[1. 요구사항 명세서]]\r\n\r\n[[2. 스토리보드(화면설계서)]]','','','2017-10-06 19:21:28',3),(26,10,10,3,'h1. 1 요구사항 명세서\r\n\r\nh2. 지원 플랫폼\r\n* 아이폰\r\n* 안드로이드\r\n\r\nh2. 데이터 종류\r\n* 영어단어\r\n* 한자\r\n* 일본어단어\r\n* 영어 회화 문장\r\n* 일본어 회화 문장\r\n* 한문\r\n\r\nh2. 암기 종류\r\n* 암기대상\r\n* 뜻\r\n* 녹음(소리)\r\n* 그림','','','2017-10-06 19:23:50',1),(27,10,10,3,'h1. 1 요구사항 명세서\r\n\r\n지원 플랫폼\r\n* 아이폰\r\n* 안드로이드\r\n\r\n데이터 종류\r\n* 영어단어\r\n* 한자\r\n* 일본어단어\r\n* 영어 회화 문장\r\n* 일본어 회화 문장\r\n* 한문\r\n\r\n암기 종류\r\n* 암기대상\r\n* 뜻\r\n* 녹음(소리)\r\n* 그림','','','2017-10-06 19:24:09',2),(28,9,9,3,'h1. Wiki\r\n\r\n[[1. 요구사항 명세서]]\r\n\r\n[[2. 스토리보드(화면설계서)]]\r\n\r\n[[3. 아키텍처 설계서]]\r\n\r\n[[유즈케이스]]\r\n\r\n[[DB설계서]]','','','2017-10-06 19:30:25',4),(29,10,10,3,'h1. 1 요구사항 명세서\r\n\r\n기능 정의\r\n\r\n비 기능 정의\r\n\r\n지원 플랫폼\r\n* 아이폰\r\n* 안드로이드\r\n\r\n데이터 종류\r\n* 영어단어\r\n* 한자\r\n* 일본어단어\r\n* 영어 회화 문장\r\n* 일본어 회화 문장\r\n* 한문\r\n\r\n암기 종류\r\n* 암기대상\r\n* 뜻\r\n* 녹음(소리)\r\n* 그림','','','2017-10-06 19:46:14',3),(30,10,10,3,'h1. 1 요구사항 명세서\r\n\r\n개발 목표\r\n- 영어 단어, 문장 등의 단순 암기를 도와주는 암기 카드 어플리케이션 개발\r\n\r\n기능 정의\r\n\r\n비 기능 정의\r\n\r\n지원 플랫폼\r\n* 아이폰\r\n* 안드로이드\r\n\r\n데이터 종류\r\n* 영어단어\r\n* 한자\r\n* 일본어단어\r\n* 영어 회화 문장\r\n* 일본어 회화 문장\r\n* 한문\r\n\r\n암기 종류\r\n* 암기대상\r\n* 뜻\r\n* 녹음(소리)\r\n* 그림','','','2017-10-06 20:09:31',4),(31,11,11,3,'h1. 2 스토리보드(화면설계서)\r\n\r\n!!','','','2017-10-06 21:56:59',1),(32,11,11,3,'h1. 2 스토리보드(화면설계서)\r\n\r\n !http://ctrl0703.iptime.org/redmine/attachments/download/4/0.%20메인화면.png!\r\n\r\n !http://ctrl0703.iptime.org/redmine/attachments/download/5/1.2%20암기화면.png!\r\n\r\n !http://ctrl0703.iptime.org/redmine/attachments/download/6/1.1%20암기카드%20시작.png!','','','2017-10-06 21:59:04',2),(33,10,10,3,'h1. 1 요구사항 명세서\r\n\r\n개발 목표\r\n- 영어 단어, 문장 등의 단순 암기를 도와주는 암기 카드 어플리케이션 개발\r\n\r\n기능 정의\r\n- 미리 입력된 암기카드를 순서대로 혹은 무작위 순서로 암기 확인 가능\r\n- 암기카드를 터치하여 단어/뜻 토글 가능\r\n- 단어 -> 뜻, 혹은 반대 방향, 무작위로도 선택하여 암기 확인 가능\r\n- 미암기된 단어만 따로 모아서 암기 확인 가능\r\n\r\n비 기능 정의\r\n\r\n지원 플랫폼\r\n* 아이폰\r\n* 안드로이드\r\n\r\n데이터 종류\r\n* 영어단어\r\n* 한자\r\n* 일본어단어\r\n* 영어 회화 문장\r\n* 일본어 회화 문장\r\n* 한문\r\n\r\n암기 종류\r\n* 암기대상\r\n* 뜻\r\n* 녹음(소리)\r\n* 그림','','','2017-10-06 22:10:11',5),(34,10,10,3,'h1. 1 요구사항 명세서\r\n\r\n개발 목표\r\n- 영어 단어, 문장 등의 단순 암기를 도와주는 암기 카드 어플리케이션 개발\r\n\r\n기능 정의\r\n- 미리 입력된 암기카드를 순서대로 혹은 무작위 순서로 암기 확인 가능\r\n- 암기카드를 터치하여 단어/뜻 토글 가능\r\n- 단어 -\\> 뜻, 혹은 반대 방향, 무작위로도 선택하여 암기 확인 가능\r\n- 미암기된 단어만 따로 모아서 암기 확인 가능\r\n\r\n비 기능 정의\r\n\r\n지원 플랫폼\r\n* 아이폰\r\n* 안드로이드\r\n\r\n데이터 종류\r\n* 영어단어\r\n* 한자\r\n* 일본어단어\r\n* 영어 회화 문장\r\n* 일본어 회화 문장\r\n* 한문\r\n\r\n암기 종류\r\n* 암기대상\r\n* 뜻\r\n* 녹음(소리)\r\n* 그림','','','2017-10-06 22:10:20',6),(35,10,10,3,'h1. 1 요구사항 명세서\r\n\r\n개발 목표\r\n- 영어 단어, 문장 등의 단순 암기를 도와주는 암기 카드 어플리케이션 개발\r\n\r\n기능 정의\r\n- 미리 입력된 암기카드를 순서대로 혹은 무작위 순서로 암기 확인 가능\r\n- 암기카드를 터치하여 단어/뜻 토글 가능\r\n- 단어 \\-> 뜻, 혹은 반대 방향, 무작위로도 선택하여 암기 확인 가능\r\n- 미암기된 단어만 따로 모아서 암기 확인 가능\r\n\r\n비 기능 정의\r\n\r\n지원 플랫폼\r\n* 아이폰\r\n* 안드로이드\r\n\r\n데이터 종류\r\n* 영어단어\r\n* 한자\r\n* 일본어단어\r\n* 영어 회화 문장\r\n* 일본어 회화 문장\r\n* 한문\r\n\r\n암기 종류\r\n* 암기대상\r\n* 뜻\r\n* 녹음(소리)\r\n* 그림','','','2017-10-06 22:10:27',7),(36,10,10,3,'h1. 1 요구사항 명세서\r\n\r\n개발 목표\r\n- 영어 단어, 문장 등의 단순 암기를 도와주는 암기 카드 어플리케이션 개발\r\n\r\n기능 정의\r\n- 미리 입력된 암기카드를 순서대로 혹은 무작위 순서로 암기 확인 가능\r\n- 암기카드를 터치하여 단어/뜻 토글 가능\r\n- 단어 \'-> 뜻, 혹은 반대 방향, 무작위로도 선택하여 암기 확인 가능\r\n- 미암기된 단어만 따로 모아서 암기 확인 가능\r\n\r\n비 기능 정의\r\n\r\n지원 플랫폼\r\n* 아이폰\r\n* 안드로이드\r\n\r\n데이터 종류\r\n* 영어단어\r\n* 한자\r\n* 일본어단어\r\n* 영어 회화 문장\r\n* 일본어 회화 문장\r\n* 한문\r\n\r\n암기 종류\r\n* 암기대상\r\n* 뜻\r\n* 녹음(소리)\r\n* 그림','','','2017-10-06 22:10:35',8),(37,10,10,3,'h1. 1 요구사항 명세서\r\n\r\n개발 목표\r\n- 영어 단어, 문장 등의 단순 암기를 도와주는 암기 카드 어플리케이션 개발\r\n\r\n기능 정의\r\n- 미리 입력된 암기카드를 순서대로 혹은 무작위 순서로 암기 확인 가능\r\n- 암기카드를 터치하여 단어/뜻 토글 가능\r\n- 단어 --> 뜻, 혹은 반대 방향, 무작위로도 선택하여 암기 확인 가능\r\n- 미암기된 단어만 따로 모아서 암기 확인 가능\r\n\r\n비 기능 정의\r\n\r\n지원 플랫폼\r\n* 아이폰\r\n* 안드로이드\r\n\r\n데이터 종류\r\n* 영어단어\r\n* 한자\r\n* 일본어단어\r\n* 영어 회화 문장\r\n* 일본어 회화 문장\r\n* 한문\r\n\r\n암기 종류\r\n* 암기대상\r\n* 뜻\r\n* 녹음(소리)\r\n* 그림','','','2017-10-06 22:10:42',9),(38,10,10,3,'h1. 1 요구사항 명세서\r\n\r\n개발 목표\r\n- 영어 단어, 문장 등의 단순 암기를 도와주는 암기 카드 어플리케이션 개발\r\n\r\n기능 정의\r\n- 미리 입력된 암기카드를 순서대로 혹은 무작위 순서로 암기 확인 가능\r\n- 암기카드를 터치하여 단어/뜻 토글 가능\r\n- 단어를 보고 뜻, 혹은 반대 방향, 무작위로도 선택하여 암기 확인 가능\r\n- 미암기된 단어만 따로 모아서 암기 확인 가능\r\n\r\n비 기능 정의\r\n\r\n지원 플랫폼\r\n* 아이폰\r\n* 안드로이드\r\n\r\n데이터 종류\r\n* 영어단어\r\n* 한자\r\n* 일본어단어\r\n* 영어 회화 문장\r\n* 일본어 회화 문장\r\n* 한문\r\n\r\n암기 종류\r\n* 암기대상\r\n* 뜻\r\n* 녹음(소리)\r\n* 그림','','','2017-10-06 22:10:57',10),(39,11,11,3,'h1. 2 스토리보드(화면설계서)\r\n\r\n !http://ctrl0703.iptime.org/redmine/attachments/download/4/0.%20메인화면.png!\r\n\r\n !http://ctrl0703.iptime.org/redmine/attachments/download/8/1.2%20암기화면.png!\r\n\r\n !http://ctrl0703.iptime.org/redmine/attachments/download/9/1.1%20암기카드%20시작.png!','','','2017-10-06 22:13:08',3),(40,11,11,3,'h1. 2 스토리보드(화면설계서)\r\n\r\n !http://ctrl0703.iptime.org/redmine/attachments/download/4/0.%20메인화면.png!\r\n\r\n !http://ctrl0703.iptime.org/redmine/attachments/download/9/1.1%20암기카드%20시작.png!\r\n\r\n !http://ctrl0703.iptime.org/redmine/attachments/download/8/1.2%20암기화면.png!','','','2017-10-06 22:13:23',4),(41,11,11,3,'h1. 2 스토리보드(화면설계서)\r\n\r\n!http://ctrl0703.iptime.org/redmine/attachments/download/15/서비스%20플로우.png!\r\n\r\n!http://ctrl0703.iptime.org/redmine/attachments/download/14/메인화면.png!\r\n\r\n!http://ctrl0703.iptime.org/redmine/attachments/download/11/1.%20암기카드%20시작.png!\r\n\r\n1. 등록되어 있는 모든 암기카드 리스트 표시\r\n\r\n2. 암기카드는 체크박스로 여러개 선택 가능\r\n\r\n3. 각 암기카드에 단어장의 성격, 제목, 암기방향 표시\r\n\r\n4. 각 암기카드의 암기방향은 암기카드 화면에서 기본 설정 가능\r\n\r\n5. 미암기된 단어만 확인 선택 가능\r\n\r\n6. 즐겨찾기된 단어만 확인 선택 가능\r\n\r\n7. 순서대로 암기가 아닌 무작위 순서로 암기 가능\r\n\r\n8. 미암기만 혹은 즐겨찾기만 체크 시 각 암기카드의 (암기대상/전체) 숫자가 바뀜\r\n\r\n!http://ctrl0703.iptime.org/redmine/attachments/download/10/1.1%20암기%20화면.png!\r\n\r\n1. 가운데 암기 카드를 왼쪽/오른쪽으로 스와이프하면 이전/다음 암기 카드 표시\r\n\r\n2. 가운데 암기 카드를 터치하면 단어(암기대상)/뜻(의미)가 토글됨\r\n\r\n3. 암기대상과 연관된 이미지가 있을 경우 이미지 버튼 표시, 터치 시 해당 이미지 표시\r\n\r\n4. 암기대상과 연관된 소리가 있을 경우 소리 버튼 표시, 터치 시 해당 소리 파일 재생\r\n\r\n5. 3초(설정가능) 이내 암기 버튼이나, 미암기 버튼을 누르지 않으면 해당 단어는 미암기로 체크 후 다음 단어 표시\r\n\r\n6. 특정 단어를 특별히 중요하게 기억해둘 필요가 있다면 암기카드 우측 상단의 즐겨찾기 버튼 터치 시 색이 칠해지며 따로 다른 메뉴에서 참조 가능\r\n\r\n7. 끝까지 가면 End 표시\r\n\r\n!http://ctrl0703.iptime.org/redmine/attachments/download/13/3.%20암기카드%20관리.png!\r\n\r\n!http://ctrl0703.iptime.org/redmine/attachments/download/12/3.1%20암기카드%20관리%20세부.png!\r\n','','','2017-10-07 02:00:17',5),(42,11,11,3,'h1. 2 스토리보드(화면설계서)\r\n\r\nh2. 1) 전체 어플리케이션 서비스 플로우\r\n \r\n!http://ctrl0703.iptime.org/redmine/attachments/download/15/서비스%20플로우.png!\r\n\r\nh2. 2) 화면 설계서\r\n\r\nh3. 메인화면\r\n\r\n!http://ctrl0703.iptime.org/redmine/attachments/download/14/메인화면.png!\r\n\r\nh3. 암기카드 시작\r\n\r\n!http://ctrl0703.iptime.org/redmine/attachments/download/11/1.%20암기카드%20시작.png!\r\n\r\n1. 등록되어 있는 모든 암기카드 리스트 표시\r\n\r\n2. 암기카드는 체크박스로 여러개 선택 가능\r\n\r\n3. 각 암기카드에 단어장의 성격, 제목, 암기방향 표시\r\n\r\n4. 각 암기카드의 암기방향은 암기카드 화면에서 기본 설정 가능\r\n\r\n5. 미암기된 단어만 확인 선택 가능\r\n\r\n6. 즐겨찾기된 단어만 확인 선택 가능\r\n\r\n7. 순서대로 암기가 아닌 무작위 순서로 암기 가능\r\n\r\n8. 미암기만 혹은 즐겨찾기만 체크 시 각 암기카드의 (암기대상/전체) 숫자가 바뀜\r\n\r\nh3. 암기 화면\r\n\r\n!http://ctrl0703.iptime.org/redmine/attachments/download/10/1.1%20암기%20화면.png!\r\n\r\n1. 가운데 암기 카드를 왼쪽/오른쪽으로 스와이프하면 이전/다음 암기 카드 표시\r\n\r\n2. 가운데 암기 카드를 터치하면 단어(암기대상)/뜻(의미)가 토글됨\r\n\r\n3. 암기대상과 연관된 이미지가 있을 경우 이미지 버튼 표시, 터치 시 해당 이미지 표시\r\n\r\n4. 암기대상과 연관된 소리가 있을 경우 소리 버튼 표시, 터치 시 해당 소리 파일 재생\r\n\r\n5. 3초(설정가능) 이내 암기 버튼이나, 미암기 버튼을 누르지 않으면 해당 단어는 미암기로 체크 후 다음 단어 표시\r\n\r\n6. 특정 단어를 특별히 중요하게 기억해둘 필요가 있다면 암기카드 우측 상단의 즐겨찾기 버튼 터치 시 색이 칠해지며 따로 다른 메뉴에서 참조 가능\r\n\r\n7. 끝까지 가면 End 표시\r\n\r\nh3. 암기카드 관리\r\n\r\n!http://ctrl0703.iptime.org/redmine/attachments/download/13/3.%20암기카드%20관리.png!\r\n\r\nh3. 암기카드 관리 세부\r\n\r\n!http://ctrl0703.iptime.org/redmine/attachments/download/12/3.1%20암기카드%20관리%20세부.png!','','','2017-10-07 02:02:54',6),(43,11,11,3,'h1. 2 스토리보드(화면설계서)\r\n\r\nh2. (1) 전체 어플리케이션 서비스 플로우\r\n \r\n!http://ctrl0703.iptime.org/redmine/attachments/download/15/서비스%20플로우.png!\r\n\r\nh2. (2) 화면 설계서\r\n\r\nh3. 1) 메인화면\r\n\r\n!http://ctrl0703.iptime.org/redmine/attachments/download/14/메인화면.png!\r\n\r\nh3. 2) 암기카드 시작\r\n\r\n!http://ctrl0703.iptime.org/redmine/attachments/download/11/1.%20암기카드%20시작.png!\r\n\r\n1. 등록되어 있는 모든 암기카드 리스트 표시\r\n\r\n2. 암기카드는 체크박스로 여러개 선택 가능\r\n\r\n3. 각 암기카드에 단어장의 성격, 제목, 암기방향 표시\r\n\r\n4. 각 암기카드의 암기방향은 암기카드 화면에서 기본 설정 가능\r\n\r\n5. 미암기된 단어만 확인 선택 가능\r\n\r\n6. 즐겨찾기된 단어만 확인 선택 가능\r\n\r\n7. 순서대로 암기가 아닌 무작위 순서로 암기 가능\r\n\r\n8. 미암기만 혹은 즐겨찾기만 체크 시 각 암기카드의 (암기대상/전체) 숫자가 바뀜\r\n\r\nh3. 3) 암기 화면\r\n\r\n!http://ctrl0703.iptime.org/redmine/attachments/download/10/1.1%20암기%20화면.png!\r\n\r\n1. 가운데 암기 카드를 왼쪽/오른쪽으로 스와이프하면 이전/다음 암기 카드 표시\r\n\r\n2. 가운데 암기 카드를 터치하면 단어(암기대상)/뜻(의미)가 토글됨\r\n\r\n3. 암기대상과 연관된 이미지가 있을 경우 이미지 버튼 표시, 터치 시 해당 이미지 표시\r\n\r\n4. 암기대상과 연관된 소리가 있을 경우 소리 버튼 표시, 터치 시 해당 소리 파일 재생\r\n\r\n5. 3초(설정가능) 이내 암기 버튼이나, 미암기 버튼을 누르지 않으면 해당 단어는 미암기로 체크 후 다음 단어 표시\r\n\r\n6. 특정 단어를 특별히 중요하게 기억해둘 필요가 있다면 암기카드 우측 상단의 즐겨찾기 버튼 터치 시 색이 칠해지며 따로 다른 메뉴에서 참조 가능\r\n\r\n7. 끝까지 가면 End 표시\r\n\r\nh3. 4) 암기카드 관리\r\n\r\n!http://ctrl0703.iptime.org/redmine/attachments/download/13/3.%20암기카드%20관리.png!\r\n\r\nh3. 5) 암기카드 관리 세부\r\n\r\n!http://ctrl0703.iptime.org/redmine/attachments/download/12/3.1%20암기카드%20관리%20세부.png!','','','2017-10-07 02:29:17',7),(44,12,12,1,'h1. 개발 요구사항\r\n\r\nh2. 작성하기 쉬워야함(WYSIWYG)\r\n- 위키 링크, 파일 첨부, 이미지 첨부, 각주 쉽도록\r\n- 코드 표시\r\n- 표 작성\r\n- 미리보기\r\n\r\nh2. 관리 페이지\r\n- navigation title\r\n- head title\r\n\r\nh3. 로그인\r\n- 로그인 시 특정 권한 게시글 볼 수 있음\r\n\r\nh4. 이력관리\r\n- 수정 시 \r\n\r\nh5. 동시성 제어\r\n- 다른 사람이 수정 시 \r\n\r\nh6. 새로 내용 수정 시 상단 알림(누가 뭘 바꿨는지)\r\n\r\nh7. 대시보드\r\n- 작성자 혹은 팀 별 에셋(위키게시글?, 글자수?, 입력횟수) 순위? 표시','','','2017-12-13 23:34:59',1),(45,12,12,1,'h1. 개발 요구사항\r\n\r\nh2. 작성하기 쉬워야함(WYSIWYG)\r\n* 위키 링크, 파일 첨부, 이미지 첨부, 각주 쉽도록\r\n* 코드 표시\r\n* 표 작성\r\n* 미리보기\r\n\r\nh2. 관리 페이지\r\n* navigation title\r\n* head title\r\n\r\nh3. 로그인\r\n* 로그인 시 특정 권한 게시글 볼 수 있음\r\n\r\nh4. 이력관리\r\n* 수정 시 \r\n\r\nh5. 동시성 제어\r\n* 다른 사람이 수정 시 \r\n\r\nh6. 새로 내용 수정 시 상단 알림\r\n*누가 뭘 바꿨는지\r\n\r\nh7. 대시보드\r\n* 작성자 혹은 팀 별 에셋(위키게시글?, 글자수?, 입력횟수) 순위? 표시','','','2017-12-13 23:35:26',2),(46,12,12,1,'h1. 개발 요구사항\r\n\r\nh2. 작성하기 쉬워야함(WYSIWYG)\r\n\r\n* 위키 링크, 파일 첨부, 이미지 첨부, 각주 쉽도록\r\n* 코드 표시\r\n* 표 작성\r\n* 미리보기\r\n\r\nh2. 관리 페이지\r\n\r\n* navigation title\r\n* head title\r\n\r\nh3. 로그인\r\n\r\n* 로그인 시 특정 권한 게시글 볼 수 있음\r\n\r\nh4. 이력관리\r\n\r\n* 수정 시 \r\n\r\nh5. 동시성 제어\r\n\r\n* 다른 사람이 수정 시 \r\n\r\nh6. 새로 내용 수정 시 상단 알림\r\n\r\n*누가 뭘 바꿨는지\r\n\r\nh7. 대시보드\r\n\r\n* 작성자 혹은 팀 별 에셋(위키게시글?, 글자수?, 입력횟수) 순위? 표시','','','2017-12-13 23:35:39',3),(47,12,12,1,'h1. 개발 요구사항\r\n\r\nh2. 작성하기 쉬워야함(WYSIWYG)\r\n\r\n* 위키 링크, 파일 첨부, 이미지 첨부, 각주 쉽도록\r\n* 코드 표시\r\n* 표 작성\r\n* 미리보기\r\n\r\nh2. 관리 페이지\r\n\r\n* navigation title\r\n* head title\r\n\r\nh2. 로그인\r\n\r\n* 로그인 시 특정 권한 게시글 볼 수 있음\r\n\r\nh2. 이력관리\r\n\r\n* 수정 시 \r\n\r\nh2. 동시성 제어\r\n\r\n* 다른 사람이 수정 시 \r\n\r\nh2. 새로 내용 수정 시 상단 알림\r\n\r\n*누가 뭘 바꿨는지\r\n\r\nh2. 대시보드\r\n\r\n* 작성자 혹은 팀 별 에셋(위키게시글?, 글자수?, 입력횟수) 순위? 표시','','','2017-12-13 23:35:58',4),(48,12,12,1,'h1. 개발 요구사항\r\n\r\nh2. 작성하기 쉬워야함(WYSIWYG)\r\n\r\n* 위키 링크, 파일 첨부, 이미지 첨부, 각주 쉽도록\r\n* 코드 표시\r\n* 표 작성\r\n* 미리보기\r\n\r\nh2. 관리 페이지\r\n\r\n* navigation title\r\n* head title\r\n\r\nh2. 로그인\r\n\r\n* 로그인 시 특정 권한 게시글 볼 수 있음\r\n\r\nh2. 이력관리\r\n\r\n* 수정 시 \r\n\r\nh2. 동시성 제어\r\n\r\n* 다른 사람이 수정 시 \r\n\r\nh2. 새로 내용 수정 시 상단 알림\r\n\r\n* 누가 뭘 바꿨는지\r\n\r\nh2. 대시보드\r\n\r\n* 작성자 혹은 팀 별 에셋(위키게시글?, 글자수?, 입력횟수) 순위? 표시','','','2017-12-13 23:36:04',5),(49,12,12,1,'h1. 개발 요구사항\r\n\r\nh2. 작성하기 쉬워야함(WYSIWYG)\r\n\r\n* 위키 링크, 파일 첨부, 이미지 첨부, 각주 쉽도록\r\n* 코드 표시\r\n* 표 작성\r\n* 미리보기\r\n\r\nh2. 관리 페이지\r\n\r\n* navigation title\r\n* head title\r\n\r\nh2. 로그인\r\n\r\n* 로그인 시 특정 권한 게시글 볼 수 있음\r\n\r\nh2. 이력관리\r\n\r\n* 수정 시 누가/언제/어디서(ip) 바꿨는지는 자동 입력\r\n* redmine의 wiki 이력 관리 참조(이력 해설, 비교 등)\r\n\r\nh2. 동시성 제어\r\n\r\n* 다른 사람이 수정 시 \r\n\r\nh2. 새로 내용 수정 시 상단 알림\r\n\r\n* 누가 뭘 바꿨는지\r\n\r\nh2. 대시보드\r\n\r\n* 작성자 혹은 팀 별 에셋(위키게시글?, 글자수?, 입력횟수) 순위? 표시','','','2017-12-13 23:37:03',6),(50,12,12,1,'h1. 개발 요구사항\r\n\r\nh2. 작성하기 쉬워야함(WYSIWYG)\r\n\r\n* 위키 링크, 파일 첨부, 이미지 첨부, 각주 쉽도록\r\n* 코드 표시\r\n* 표 작성\r\n* 미리보기\r\n\r\nh2. 관리 페이지\r\n\r\n* navigation title\r\n* head title\r\n\r\nh2. 로그인\r\n\r\n* 로그인 시 특정 권한 게시글 볼 수 있음\r\n\r\nh2. 이력관리\r\n\r\n* 수정 시 누가/언제/어디서(ip) 바꿨는지는 자동 입력\r\n* redmine의 wiki 이력 관리 참조(이력 해설, 비교 등)\r\n\r\nh2. 동시성 제어\r\n\r\n* 다른 사람이 수정 시 \r\n\r\nh2. 새로 내용 수정 시 상단 알림\r\n\r\n* 누가 뭘 바꿨는지\r\n\r\nh2. 대시보드\r\n\r\n* 작성자 혹은 팀 별 에셋(위키게시글?, 글자수?, 입력횟수) 순위? 표시\r\n\r\nh2. 기타 편의사항\r\n\r\n* 메모 기능\r\n* 쪽지 기능','','','2017-12-13 23:40:37',7),(51,13,13,1,'h1. Wiki','','','2018-02-25 22:24:29',1),(52,13,13,1,'h1. 모바일 포스 개발 문서','','','2018-02-25 22:25:03',2),(53,13,13,1,'h1. Wiki','','','2018-02-25 22:25:14',3),(54,13,13,1,'h1. Wiki\r\n\r\nh2. 비전 기술서','','','2018-02-25 22:25:33',4),(55,13,13,1,'h1. Wiki\r\n\r\n[[비전 기술서]]','','','2018-02-25 22:25:45',5),(56,14,14,1,'h1. 모바일포스\r\n\r\nh2. 비전 기술서\r\n\r\n모바일포스는 매장에서 단말기를 이용하여 상품들을 판매할 수 있도록 지원하는 어플리케이션이다.\r\n기존 포스의 단점인 플랫폼 제약을 극복하여, 특정 플랫폼에 국한되지 않고 설치되어 있는 단말의 기존 기능을 대부분 수용할 수 있다.\r\n\r\n판매 가능 상품 및 판매 내역을 관리하기 위하여 서버가 필요하며, 단말의 클라이언트는 서버로부터 판매 가능 상품에 대한 정보 및 고객 혜택을 확인하고\r\n판매된 내용을 서버로 전송한다.\r\n\r\n모바일 클라이언트가 제공할 기능은 다음과 같다.\r\n\r\n* 상품을 판매\r\n\r\n* 고객 정보를 입력하여 멤버십 정보 및 혜택을 확인\r\n\r\n* 이벤트 정보를 확인\r\n\r\n* 고객 혜택과 이벤트 정보, 등록된 상품을 확인하여 최종 결제 금액 계산\r\n\r\n* 현금 결제 지원(현금 영수증 발급)\r\n\r\n* 카드 결제 지원\r\n\r\n* 고객 포인트 교환 지원\r\n\r\n* 기타 결제 지원\r\n\r\n* 영수증 발급\r\n\r\n* 판매 내역 서버 전송\r\n\r\n서버가 제공할 기능은 다음과 같다.\r\n\r\n* ','','','2018-02-25 22:39:56',1),(57,14,14,1,'h1. 모바일포스\r\n\r\nh2. 비전 기술서\r\n\r\n모바일포스는 매장에서 단말기를 이용하여 상품들을 판매할 수 있도록 지원하는 어플리케이션이다.\r\n기존 포스의 단점인 플랫폼 제약을 극복하여, 특정 플랫폼에 국한되지 않고 설치되어 있는 단말의 기존 기능을 대부분 수용할 수 있다.\r\n\r\n모바일 클라이언트가 제공할 기능은 다음과 같다.\r\n\r\n* 상품을 판매\r\n\r\n* 고객 정보를 입력하여 멤버십 정보 및 혜택을 확인\r\n\r\n* 이벤트 정보를 확인\r\n\r\n* 고객 혜택과 이벤트 정보, 등록된 상품을 확인하여 최종 결제 금액 계산\r\n\r\n* 현금 결제 지원(현금 영수증 발급)\r\n\r\n* 카드 결제 지원\r\n\r\n* 고객 포인트 교환 지원\r\n\r\n* 기타 결제 지원\r\n\r\n* 영수증 발급\r\n\r\n* 판매 내역 서버 전송\r\n\r\n서버가 제공할 기능은 다음과 같다.\r\n\r\n* ','','','2018-02-25 22:40:18',2),(58,14,14,1,'h1. 모바일포스\r\n\r\nh2. 비전 기술서\r\n\r\n모바일포스는 매장에서 단말기를 이용하여 상품들을 판매할 수 있도록 지원하는 어플리케이션이다.\r\n기존 포스의 단점인 플랫폼 제약을 극복하여, 특정 플랫폼에 국한되지 않고 설치되어 있는 단말의 기존 기능을 대부분 수용할 수 있다.\r\n\r\n모바일 클라이언트가 제공할 기능은 다음과 같다.\r\n\r\n* 상품을 판매\r\n\r\n* 고객 정보를 입력하여 멤버십 정보 및 혜택을 확인\r\n\r\n* 이벤트 정보를 확인\r\n\r\n* 고객 혜택과 이벤트 정보, 등록된 상품을 확인하여 최종 결제 금액 계산\r\n\r\n* 현금 결제 지원(현금 영수증 발급)\r\n\r\n* 카드 결제 지원\r\n\r\n* 고객 포인트 교환 지원\r\n\r\n* 기타 결제 지원\r\n\r\n* 영수증 발급\r\n\r\n* 판매 내역 서버 전송\r\n\r\n서버가 제공할 기능은 다음과 같다.\r\n\r\n* 판매 거래 내역 확인\r\n\r\n* 실적 집계\r\n\r\n* 이벤트 관리\r\n\r\n* 고객 실적 관리\r\n\r\n* 고객 혜택 관리\r\n\r\n* 고객 포인트 관리\r\n\r\n* 고객 멤버십 관리','','','2018-02-25 22:43:33',3),(59,14,14,1,'h2. 비전 기술서\r\n\r\n모바일포스는 매장에서 단말기를 이용하여 상품들을 판매할 수 있도록 지원하는 어플리케이션이다.\r\n기존 포스의 단점인 플랫폼 제약을 극복하여, 특정 플랫폼에 국한되지 않고 설치되어 있는 단말의 기존 기능을 대부분 수용할 수 있다.\r\n\r\n모바일 클라이언트가 제공할 기능은 다음과 같다.\r\n\r\n* 상품을 판매\r\n\r\n* 고객 정보를 입력하여 멤버십 정보 및 혜택을 확인\r\n\r\n* 이벤트 정보를 확인\r\n\r\n* 고객 혜택과 이벤트 정보, 등록된 상품을 확인하여 최종 결제 금액 계산\r\n\r\n* 현금 결제 지원(현금 영수증 발급)\r\n\r\n* 카드 결제 지원\r\n\r\n* 고객 포인트 교환 지원\r\n\r\n* 기타 결제 지원\r\n\r\n* 영수증 발급\r\n\r\n* 판매 내역 서버 전송\r\n\r\n서버가 제공할 기능은 다음과 같다.\r\n\r\n* 판매 거래 내역 확인\r\n\r\n* 실적 집계\r\n\r\n* 이벤트 관리\r\n\r\n* 고객 실적 관리\r\n\r\n* 고객 혜택 관리\r\n\r\n* 고객 포인트 관리\r\n\r\n* 고객 멤버십 관리','','','2018-02-25 22:43:47',4),(60,14,14,1,'h1. 비전 기술서\r\n\r\n모바일포스는 매장에서 단말기를 이용하여 상품들을 판매할 수 있도록 지원하는 어플리케이션이다.\r\n기존 포스의 단점인 플랫폼 제약을 극복하여, 특정 플랫폼에 국한되지 않고 설치되어 있는 단말의 기존 기능을 대부분 수용할 수 있다.\r\n\r\n모바일 클라이언트가 제공할 기능은 다음과 같다.\r\n\r\n* 상품을 판매\r\n\r\n* 고객 정보를 입력하여 멤버십 정보 및 혜택을 확인\r\n\r\n* 이벤트 정보를 확인\r\n\r\n* 고객 혜택과 이벤트 정보, 등록된 상품을 확인하여 최종 결제 금액 계산\r\n\r\n* 현금 결제 지원(현금 영수증 발급)\r\n\r\n* 카드 결제 지원\r\n\r\n* 고객 포인트 교환 지원\r\n\r\n* 기타 결제 지원\r\n\r\n* 영수증 발급\r\n\r\n* 판매 내역 서버 전송\r\n\r\n서버가 제공할 기능은 다음과 같다.\r\n\r\n* 판매 거래 내역 확인\r\n\r\n* 실적 집계\r\n\r\n* 이벤트 관리\r\n\r\n* 고객 실적 관리\r\n\r\n* 고객 혜택 관리\r\n\r\n* 고객 포인트 관리\r\n\r\n* 고객 멤버십 관리','','','2018-02-25 22:43:54',5),(61,14,14,1,'h1. 비전 기술서\r\n\r\n모바일포스는 매장에서 단말기를 이용하여 상품들을 판매할 수 있도록 지원하는 어플리케이션이다.\r\n기존 포스의 단점인 플랫폼 제약을 극복하여, 특정 플랫폼에 국한되지 않고 설치되어 있는 단말의 기존 기능을 대부분 수용할 수 있다.\r\n\r\n모바일 클라이언트가 제공할 기능은 다음과 같다.\r\n\r\n* 상품을 판매\r\n\r\n* 고객 정보를 입력하여 멤버십 정보 및 혜택을 확인\r\n\r\n* 이벤트 정보를 확인\r\n\r\n* 고객 혜택과 이벤트 정보, 등록된 상품을 확인하여 최종 결제 금액 계산\r\n\r\n* 현금 결제 지원(현금 영수증 발급)\r\n\r\n* 카드 결제 지원\r\n\r\n* 고객 포인트 교환 지원\r\n\r\n* 기타 결제 지원\r\n\r\n* 영수증 발급\r\n\r\n* 판매 내역 서버 전송\r\n\r\n* 기타 할인 지원\r\n\r\n서버가 제공할 기능은 다음과 같다.\r\n\r\n* 판매 거래 내역 확인\r\n\r\n* 실적 집계\r\n\r\n* 이벤트 관리\r\n\r\n* 고객 실적 관리\r\n\r\n* 고객 혜택 관리\r\n\r\n* 고객 포인트 관리\r\n\r\n* 고객 멤버십 관리','','','2018-02-25 22:44:41',6),(62,14,14,1,'h1. 비전 기술서\r\n\r\n모바일포스는 매장에서 단말기를 이용하여 상품들을 판매할 수 있도록 지원하는 어플리케이션이다.\r\n기존 포스의 단점인 플랫폼 제약을 극복하여, 특정 플랫폼에 국한되지 않고 설치되어 있는 단말의 기존 기능을 대부분 수용할 수 있다.\r\n\r\n모바일 클라이언트가 제공할 기능은 다음과 같다.\r\n\r\n* 상품을 판매\r\n\r\n* 고객 정보를 입력하여 멤버십 정보 및 혜택을 확인\r\n\r\n* 이벤트 정보를 확인\r\n\r\n* 고객 혜택과 이벤트 정보, 등록된 상품을 확인하여 최종 결제 금액 계산\r\n\r\n* 현금 결제 지원(현금 영수증 발급)\r\n\r\n* 카드 결제 지원\r\n\r\n* 고객 포인트 교환 지원\r\n\r\n* 기타 결제 지원\r\n\r\n* 영수증 발급\r\n\r\n* 판매 내역 서버 전송\r\n\r\n* 기타 할인 지원\r\n\r\n서버가 제공할 기능은 다음과 같다.\r\n\r\n* 매장 정보 관리\r\n\r\n* 단말기 정보 관리\r\n\r\n* 판매 실적 관리\r\n\r\n* 이벤트 관리\r\n\r\n* 고객 실적 관리\r\n\r\n* 고객 혜택 관리\r\n\r\n* 고객 포인트 관리\r\n\r\n* 고객 멤버십 관리','','','2018-02-25 22:54:27',7),(63,14,14,1,'h1. 비전 기술서\r\n\r\n모바일포스는 매장에서 단말기를 이용하여 상품들을 판매할 수 있도록 지원하는 어플리케이션이다.\r\n기존 포스의 단점인 플랫폼 제약을 극복하여, 특정 플랫폼에 국한되지 않고 설치되어 있는 단말의 기존 기능을 대부분 수용할 수 있다.\r\n\r\n모바일 클라이언트가 제공할 기능은 다음과 같다.\r\n\r\n* 상품을 판매\r\n\r\n* 고객 정보를 입력하여 멤버십 정보 및 혜택을 확인\r\n\r\n* 이벤트 정보를 확인\r\n\r\n* 고객 혜택과 이벤트 정보, 등록된 상품을 확인하여 최종 결제 금액 계산\r\n\r\n* 현금 결제 지원(현금 영수증 발급)\r\n\r\n* 카드 결제 지원\r\n\r\n* 고객 포인트 교환 지원\r\n\r\n* 기타 결제 지원\r\n\r\n* 영수증 발급\r\n\r\n* 판매 내역 서버 전송\r\n\r\n* 기타 할인 지원\r\n\r\n서버가 제공할 기능은 다음과 같다.\r\n\r\n* 매장 정보 관리\r\n\r\n* 단말기 관리\r\n\r\n* 판매 실적 관리\r\n\r\n* 이벤트 관리\r\n\r\n* 고객 실적 관리\r\n\r\n* 고객 혜택 관리\r\n\r\n* 고객 포인트 관리\r\n\r\n* 고객 멤버십 관리','','','2018-02-25 22:55:10',8),(64,13,13,1,'h1. Wiki\r\n\r\n[[비전 기술서]]\r\n\r\n[[요구 사항]]','','','2018-02-25 23:09:25',6),(65,14,14,1,'h1. 비전 기술서\r\n\r\n모바일포스는 매장에서 단말기를 이용하여 상품들을 판매할 수 있도록 지원하는 어플리케이션이다.\r\n기존 포스의 단점인 플랫폼 제약을 극복하여, 특정 플랫폼에 국한되지 않고 설치되어 있는 단말의 기존 기능을 대부분 수용할 수 있다.\r\n\r\n모바일 클라이언트가 제공할 기능은 다음과 같다.\r\n\r\n* 상품을 판매\r\n\r\n* 고객 정보를 입력하여 멤버십 정보 및 혜택을 확인\r\n\r\n* 이벤트 정보를 확인\r\n\r\n* 고객 혜택과 이벤트 정보, 등록된 상품을 확인하여 최종 결제 금액 계산\r\n\r\n* 현금 결제 지원(현금 영수증 발급)\r\n\r\n* 카드 결제 지원\r\n\r\n* 고객 포인트 교환 지원\r\n\r\n* 기타 결제 지원\r\n\r\n* 영수증 발급\r\n\r\n* 판매 내역 서버 전송\r\n\r\n* 기타 할인 지원\r\n\r\n서버가 제공할 기능은 다음과 같다.\r\n\r\n* 매장 정보 관리\r\n\r\n* 단말기 관리\r\n\r\n* 판매 상품 관리\r\n\r\n* 상품 가격 정보 관리\r\n\r\n* 판매 실적 관리\r\n\r\n* 이벤트 관리\r\n\r\n* 고객 실적 관리\r\n\r\n* 고객 혜택 관리\r\n\r\n* 고객 포인트 관리\r\n\r\n* 고객 멤버십 관리','','','2018-02-25 23:12:16',9),(66,15,15,1,'h1. 요구 사항\r\n\r\nh2. 클라이언트 요구 사항\r\n\r\n상품을 판매\r\n고객 정보를 입력하여 멤버십 정보 및 혜택을 확인\r\n이벤트 정보를 확인\r\n고객 혜택과 이벤트 정보, 등록된 상품을 확인하여 최종 결제 금액 계산\r\n현금 결제 지원(현금 영수증 발급)\r\n카드 결제 지원\r\n고객 포인트 교환 지원\r\n기타 결제 지원\r\n영수증 발급\r\n판매 내역 서버 전송\r\n기타 할인 지원\r\n\r\nh3. 서버 요구 사항\r\n\r\n매장 정보 관리\r\n단말기 관리\r\n판매 상품 관리\r\n상품 가격 정보 관리\r\n판매 실적 관리\r\n이벤트 관리\r\n고객 실적 관리\r\n고객 혜택 관리\r\n고객 포인트 관리\r\n고객 멤버십 관리','','','2018-02-25 23:14:43',1),(67,13,13,1,'h1. Wiki\r\n\r\nh2. 개발 문서\r\n\r\n[[비전 기술서]]\r\n\r\n[[요구 사항]]','','','2018-02-25 23:15:40',7),(68,15,15,1,'h1. 요구 사항\r\n\r\nh2. 클라이언트 요구 사항\r\n\r\n* 상품을 판매\r\n\r\n# 등록된 상품만 판매가 가능하다.\r\n\r\n# 상품을 입력하면 상품 정보와 가격 정보가 표시된다.\r\n\r\n# 구매할 수량을 입력할 수 있다.\r\n\r\n# 판매원은 상품 판매를 등록할 수 있다.\r\n\r\n* 고객 정보를 입력하여 멤버십 정보 및 혜택을 확인\r\n\r\n# 고객 정보를 입력할 수 있다.\r\n\r\n# 검색된 고객 중 판매 고객을 선택할 수 있다.\r\n\r\n# 고객의 멤버십 정보를 확인할 수 있다.\r\n\r\n# 고객의 혜택 정보를 확인할 수 있다.\r\n\r\n* 이벤트 정보를 확인\r\n\r\n# 현재 진행 중인 이벤트 정보를 확인할 수 있다.\r\n\r\n* 고객 혜택과 이벤트 정보, 등록된 상품을 확인하여 최종 결제 금액 계산\r\n\r\n# 고객 혜택 정보를 선택할 수 있다.\r\n\r\n# 고객 멤버십 정보, 이벤트 정보, 혜택 정보, 상품 조합에 의하여 최종 결제 금액이 계산된다.\r\n\r\n* 현금 결제 지원(현금 영수증 발급)\r\n\r\n# 받은 현금 금액을 입력하면 거스름돈이 표시된다.\r\n\r\n# 고객 정보를 입력하여 국세청에 현금 영수증 발급 신청을 한다.\r\n\r\n* 카드 결제 지원\r\n\r\n# 받은 카드를 읽을 수 있다.\r\n\r\n# 카드사에 승인 요청을 한다.\r\n\r\n# 카드사로부터 승인 결과를 받는다.\r\n\r\n* 고객 포인트 교환 지원\r\n\r\n# 고객의 포인트 정보를 확인할 수 있다.\r\n\r\n# 사용할 포인트보다 소유 포인트가 더 많으면 포인트를 사용하여 결제할 수 있다.\r\n\r\n* 기타 결제 지원\r\n\r\n* 영수증 발급\r\n\r\n# 영수증 프린터에서 영수증을 출력한다.\r\n\r\n# 전자 영수증을 발송한다.\r\n\r\n* 판매 내역 서버 전송\r\n\r\n* 기타 할인 지원\r\n\r\nh3. 서버 요구 사항\r\n\r\n매장 정보 관리\r\n단말기 관리\r\n판매 상품 관리\r\n상품 가격 정보 관리\r\n판매 실적 관리\r\n이벤트 관리\r\n고객 실적 관리\r\n고객 혜택 관리\r\n고객 포인트 관리\r\n고객 멤버십 관리','','','2018-02-25 23:37:15',2),(69,15,15,1,'h1. 요구 사항\r\n\r\nh2. 클라이언트 요구 사항\r\n\r\n* 상품을 판매\r\n\r\n# 등록된 상품만 판매가 가능하다.\r\n# 상품을 입력하면 상품 정보와 가격 정보가 표시된다.\r\n# 구매할 수량을 입력할 수 있다.\r\n# 판매원은 상품 판매를 등록할 수 있다.\r\n\r\n* 고객 정보를 입력하여 멤버십 정보 및 혜택을 확인\r\n\r\n# 고객 정보를 입력할 수 있다.\r\n# 검색된 고객 중 판매 고객을 선택할 수 있다.\r\n# 고객의 멤버십 정보를 확인할 수 있다.\r\n# 고객의 혜택 정보를 확인할 수 있다.\r\n\r\n* 이벤트 정보를 확인\r\n\r\n# 현재 진행 중인 이벤트 정보를 확인할 수 있다.\r\n\r\n* 고객 혜택과 이벤트 정보, 등록된 상품을 확인하여 최종 결제 금액 계산\r\n\r\n# 고객 혜택 정보를 선택할 수 있다.\r\n# 고객 멤버십 정보, 이벤트 정보, 혜택 정보, 상품 조합에 의하여 최종 결제 금액이 계산된다.\r\n\r\n* 현금 결제 지원(현금 영수증 발급)\r\n\r\n# 받은 현금 금액을 입력하면 거스름돈이 표시된다.\r\n# 고객 정보를 입력하여 국세청에 현금 영수증 발급 신청을 한다.\r\n\r\n* 카드 결제 지원\r\n\r\n# 받은 카드를 읽을 수 있다.\r\n# 카드사에 승인 요청을 한다.\r\n# 카드사로부터 승인 결과를 받는다.\r\n\r\n* 고객 포인트 교환 지원\r\n\r\n# 고객의 포인트 정보를 확인할 수 있다.\r\n# 사용할 포인트보다 소유 포인트가 더 많으면 포인트를 사용하여 결제할 수 있다.\r\n\r\n* 기타 결제 지원\r\n\r\n* 영수증 발급\r\n\r\n# 영수증 프린터에서 영수증을 출력한다.\r\n# 전자 영수증을 발송한다.\r\n\r\n* 판매 내역 서버 전송\r\n\r\n* 기타 할인 지원\r\n\r\nh3. 서버 요구 사항\r\n\r\n매장 정보 관리\r\n단말기 관리\r\n판매 상품 관리\r\n상품 가격 정보 관리\r\n판매 실적 관리\r\n이벤트 관리\r\n고객 실적 관리\r\n고객 혜택 관리\r\n고객 포인트 관리\r\n고객 멤버십 관리','','','2018-02-25 23:37:47',3),(70,16,16,1,'h1. Wiki\r\n\r\n사진 관리(스토리지)\r\n어플리케이션(썸네일 + 축소사진)','','','2018-02-26 21:26:58',1),(72,3,3,1,'h1. Wiki\r\n\r\n[[개인 환경 구성]]\r\n\r\n[[개발 할 것]]\r\n\r\n[[개발 프로세스]]','','','2018-04-23 11:15:05',3),(73,18,18,1,'h1. 개발 프로세스\r\n\r\nh2. 필요 산출 문서\r\n\r\n* 프로젝트 비전\r\n* 개발 환경 정의서\r\n* 유스케이스\r\n* 사용자스토리\r\n* 아키텍쳐 설계서\r\n* ERD\r\n* WBS\r\n* 프로세스 목록\r\n* 프로세스 정의서\r\n* 테스트결과서\r\n* 화면설계서\r\n* 인터페이스 정의서\r\n* 사용 메뉴얼\r\n* 개발(운영) 메뉴얼\r\n\r\nh2. 개발프로세스\r\n\r\n# 계획\r\n# 분석\r\n# 설계\r\n# 개발','','','2018-04-23 11:20:44',1),(74,19,19,1,'h1. Wiki\r\n\r\nh2. 우선 개발 기능\r\n\r\nh3. 1순위\r\n\r\n# 글목록보기\r\n# 글쓰기\r\n# 글수정\r\n# 글삭제\r\n# 글 내용 확인하기\r\n\r\nh3. 2순위\r\n\r\n# 에디터 연동','','','2018-04-23 11:24:17',1);
/*!40000 ALTER TABLE `wiki_content_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_contents`
--

DROP TABLE IF EXISTS `wiki_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `text` longtext,
  `comments` varchar(255) DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_contents_page_id` (`page_id`),
  KEY `index_wiki_contents_on_author_id` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_contents`
--

LOCK TABLES `wiki_contents` WRITE;
/*!40000 ALTER TABLE `wiki_contents` DISABLE KEYS */;
INSERT INTO `wiki_contents` VALUES (1,1,1,'h1. Wiki\r\n\r\nh2. 1. [[개발 예정 기능]]','','2016-08-27 17:36:29',4),(2,2,1,'h1. 개발 예정 기능\r\n\r\n1. 경기 예정/결과 확인\r\n2. 개인 기록 확인\r\n3. 공지사항\r\n4. 회비 관리\r\n5. 투표\r\n6. 사진\r\n7. 동영상','','2016-08-27 17:35:25',1),(3,3,1,'h1. Wiki\r\n\r\n[[개인 환경 구성]]\r\n\r\n[[개발 할 것]]\r\n\r\n[[개발 프로세스]]','','2018-04-23 11:15:05',3),(4,4,3,'h1. 개인 환경 구성\r\n\r\nh2. cahlee.com\r\n\r\n* / : 개인 포트폴리오 블로그 http://ctrl0703.iptime.org:8080/blog\r\n* /redmine : 프로젝트 관리페이지 - http://ctrl0703.iptime.org/redmine\r\n* /jenkins : Continues Integration - http://ctrl0703.iptime.org:8081\r\n* /photo : 사진관리 페이지 - http://ctrl0703.iptime.org:8080/photo\r\n\r\nh2. 개인 서버\r\n\r\n* OS. Ubuntu 14.04 LTS Desktop\r\n\r\n내부에 바로 깔기 보다는 Virtualbox를 이용하여 논리적인 Layer를 나눠서 구성\r\nUbuntu\r\n - CentOS\r\n - FreeBSD','','2016-09-05 17:38:54',7),(5,5,4,'h1. Wiki\r\n\r\n왜아무것도 없냐\r\n빨리 뭐해봐라\r\n\r\n[[개발 요구사항]]','','2016-09-17 22:28:46',3),(6,6,4,'h1. 개발 요구사항\r\n\r\n개발 요건\r\n- [[사진 관리]]\r\n- 회원 관리\r\n- 모임 소개\r\n- 여행 계획\r\n- 회계 관리\r\n.\r\n.\r\n.','','2016-09-10 22:30:30',1),(7,7,4,'h1. 사진 관리\r\n\r\n사진 관리는 ....\r\n\r\n\r\n','','2016-09-10 22:30:44',1),(8,8,1,'h1. 개발 할 것\r\n\r\n1. 열하고둘 어플리케이션\r\n\r\n2. 스멜스 어플리케이션\r\n\r\n3. 플래시카드 어플리케이션\r\n\r\n4. 개인 블로그\r\n - 포트폴리오\r\n - 사진 관리\r\n - 위시리스트\r\n - 독서록\r\n - 목표\r\n - 개인 일지','','2016-11-26 16:17:05',3),(9,9,3,'h1. Wiki\r\n\r\n[[1. 요구사항 명세서]]\r\n\r\n[[2. 스토리보드(화면설계서)]]\r\n\r\n[[3. 아키텍처 설계서]]\r\n\r\n[[유즈케이스]]\r\n\r\n[[DB설계서]]','','2017-10-06 19:30:25',4),(10,10,3,'h1. 1 요구사항 명세서\r\n\r\n개발 목표\r\n- 영어 단어, 문장 등의 단순 암기를 도와주는 암기 카드 어플리케이션 개발\r\n\r\n기능 정의\r\n- 미리 입력된 암기카드를 순서대로 혹은 무작위 순서로 암기 확인 가능\r\n- 암기카드를 터치하여 단어/뜻 토글 가능\r\n- 단어를 보고 뜻, 혹은 반대 방향, 무작위로도 선택하여 암기 확인 가능\r\n- 미암기된 단어만 따로 모아서 암기 확인 가능\r\n\r\n비 기능 정의\r\n\r\n지원 플랫폼\r\n* 아이폰\r\n* 안드로이드\r\n\r\n데이터 종류\r\n* 영어단어\r\n* 한자\r\n* 일본어단어\r\n* 영어 회화 문장\r\n* 일본어 회화 문장\r\n* 한문\r\n\r\n암기 종류\r\n* 암기대상\r\n* 뜻\r\n* 녹음(소리)\r\n* 그림','','2017-10-06 22:10:57',10),(11,11,3,'h1. 2 스토리보드(화면설계서)\r\n\r\nh2. (1) 전체 어플리케이션 서비스 플로우\r\n \r\n!http://ctrl0703.iptime.org/redmine/attachments/download/15/서비스%20플로우.png!\r\n\r\nh2. (2) 화면 설계서\r\n\r\nh3. 1) 메인화면\r\n\r\n!http://ctrl0703.iptime.org/redmine/attachments/download/14/메인화면.png!\r\n\r\nh3. 2) 암기카드 시작\r\n\r\n!http://ctrl0703.iptime.org/redmine/attachments/download/11/1.%20암기카드%20시작.png!\r\n\r\n1. 등록되어 있는 모든 암기카드 리스트 표시\r\n\r\n2. 암기카드는 체크박스로 여러개 선택 가능\r\n\r\n3. 각 암기카드에 단어장의 성격, 제목, 암기방향 표시\r\n\r\n4. 각 암기카드의 암기방향은 암기카드 화면에서 기본 설정 가능\r\n\r\n5. 미암기된 단어만 확인 선택 가능\r\n\r\n6. 즐겨찾기된 단어만 확인 선택 가능\r\n\r\n7. 순서대로 암기가 아닌 무작위 순서로 암기 가능\r\n\r\n8. 미암기만 혹은 즐겨찾기만 체크 시 각 암기카드의 (암기대상/전체) 숫자가 바뀜\r\n\r\nh3. 3) 암기 화면\r\n\r\n!http://ctrl0703.iptime.org/redmine/attachments/download/10/1.1%20암기%20화면.png!\r\n\r\n1. 가운데 암기 카드를 왼쪽/오른쪽으로 스와이프하면 이전/다음 암기 카드 표시\r\n\r\n2. 가운데 암기 카드를 터치하면 단어(암기대상)/뜻(의미)가 토글됨\r\n\r\n3. 암기대상과 연관된 이미지가 있을 경우 이미지 버튼 표시, 터치 시 해당 이미지 표시\r\n\r\n4. 암기대상과 연관된 소리가 있을 경우 소리 버튼 표시, 터치 시 해당 소리 파일 재생\r\n\r\n5. 3초(설정가능) 이내 암기 버튼이나, 미암기 버튼을 누르지 않으면 해당 단어는 미암기로 체크 후 다음 단어 표시\r\n\r\n6. 특정 단어를 특별히 중요하게 기억해둘 필요가 있다면 암기카드 우측 상단의 즐겨찾기 버튼 터치 시 색이 칠해지며 따로 다른 메뉴에서 참조 가능\r\n\r\n7. 끝까지 가면 End 표시\r\n\r\nh3. 4) 암기카드 관리\r\n\r\n!http://ctrl0703.iptime.org/redmine/attachments/download/13/3.%20암기카드%20관리.png!\r\n\r\nh3. 5) 암기카드 관리 세부\r\n\r\n!http://ctrl0703.iptime.org/redmine/attachments/download/12/3.1%20암기카드%20관리%20세부.png!','','2017-10-07 02:29:17',7),(12,12,1,'h1. 개발 요구사항\r\n\r\nh2. 작성하기 쉬워야함(WYSIWYG)\r\n\r\n* 위키 링크, 파일 첨부, 이미지 첨부, 각주 쉽도록\r\n* 코드 표시\r\n* 표 작성\r\n* 미리보기\r\n\r\nh2. 관리 페이지\r\n\r\n* navigation title\r\n* head title\r\n\r\nh2. 로그인\r\n\r\n* 로그인 시 특정 권한 게시글 볼 수 있음\r\n\r\nh2. 이력관리\r\n\r\n* 수정 시 누가/언제/어디서(ip) 바꿨는지는 자동 입력\r\n* redmine의 wiki 이력 관리 참조(이력 해설, 비교 등)\r\n\r\nh2. 동시성 제어\r\n\r\n* 다른 사람이 수정 시 \r\n\r\nh2. 새로 내용 수정 시 상단 알림\r\n\r\n* 누가 뭘 바꿨는지\r\n\r\nh2. 대시보드\r\n\r\n* 작성자 혹은 팀 별 에셋(위키게시글?, 글자수?, 입력횟수) 순위? 표시\r\n\r\nh2. 기타 편의사항\r\n\r\n* 메모 기능\r\n* 쪽지 기능','','2017-12-13 23:40:37',7),(13,13,1,'h1. Wiki\r\n\r\nh2. 개발 문서\r\n\r\n[[비전 기술서]]\r\n\r\n[[요구 사항]]','','2018-02-25 23:15:40',7),(14,14,1,'h1. 비전 기술서\r\n\r\n모바일포스는 매장에서 단말기를 이용하여 상품들을 판매할 수 있도록 지원하는 어플리케이션이다.\r\n기존 포스의 단점인 플랫폼 제약을 극복하여, 특정 플랫폼에 국한되지 않고 설치되어 있는 단말의 기존 기능을 대부분 수용할 수 있다.\r\n\r\n모바일 클라이언트가 제공할 기능은 다음과 같다.\r\n\r\n* 상품을 판매\r\n\r\n* 고객 정보를 입력하여 멤버십 정보 및 혜택을 확인\r\n\r\n* 이벤트 정보를 확인\r\n\r\n* 고객 혜택과 이벤트 정보, 등록된 상품을 확인하여 최종 결제 금액 계산\r\n\r\n* 현금 결제 지원(현금 영수증 발급)\r\n\r\n* 카드 결제 지원\r\n\r\n* 고객 포인트 교환 지원\r\n\r\n* 기타 결제 지원\r\n\r\n* 영수증 발급\r\n\r\n* 판매 내역 서버 전송\r\n\r\n* 기타 할인 지원\r\n\r\n서버가 제공할 기능은 다음과 같다.\r\n\r\n* 매장 정보 관리\r\n\r\n* 단말기 관리\r\n\r\n* 판매 상품 관리\r\n\r\n* 상품 가격 정보 관리\r\n\r\n* 판매 실적 관리\r\n\r\n* 이벤트 관리\r\n\r\n* 고객 실적 관리\r\n\r\n* 고객 혜택 관리\r\n\r\n* 고객 포인트 관리\r\n\r\n* 고객 멤버십 관리','','2018-02-25 23:12:16',9),(15,15,1,'h1. 요구 사항\r\n\r\nh2. 클라이언트 요구 사항\r\n\r\n* 상품을 판매\r\n\r\n# 등록된 상품만 판매가 가능하다.\r\n# 상품을 입력하면 상품 정보와 가격 정보가 표시된다.\r\n# 구매할 수량을 입력할 수 있다.\r\n# 판매원은 상품 판매를 등록할 수 있다.\r\n\r\n* 고객 정보를 입력하여 멤버십 정보 및 혜택을 확인\r\n\r\n# 고객 정보를 입력할 수 있다.\r\n# 검색된 고객 중 판매 고객을 선택할 수 있다.\r\n# 고객의 멤버십 정보를 확인할 수 있다.\r\n# 고객의 혜택 정보를 확인할 수 있다.\r\n\r\n* 이벤트 정보를 확인\r\n\r\n# 현재 진행 중인 이벤트 정보를 확인할 수 있다.\r\n\r\n* 고객 혜택과 이벤트 정보, 등록된 상품을 확인하여 최종 결제 금액 계산\r\n\r\n# 고객 혜택 정보를 선택할 수 있다.\r\n# 고객 멤버십 정보, 이벤트 정보, 혜택 정보, 상품 조합에 의하여 최종 결제 금액이 계산된다.\r\n\r\n* 현금 결제 지원(현금 영수증 발급)\r\n\r\n# 받은 현금 금액을 입력하면 거스름돈이 표시된다.\r\n# 고객 정보를 입력하여 국세청에 현금 영수증 발급 신청을 한다.\r\n\r\n* 카드 결제 지원\r\n\r\n# 받은 카드를 읽을 수 있다.\r\n# 카드사에 승인 요청을 한다.\r\n# 카드사로부터 승인 결과를 받는다.\r\n\r\n* 고객 포인트 교환 지원\r\n\r\n# 고객의 포인트 정보를 확인할 수 있다.\r\n# 사용할 포인트보다 소유 포인트가 더 많으면 포인트를 사용하여 결제할 수 있다.\r\n\r\n* 기타 결제 지원\r\n\r\n* 영수증 발급\r\n\r\n# 영수증 프린터에서 영수증을 출력한다.\r\n# 전자 영수증을 발송한다.\r\n\r\n* 판매 내역 서버 전송\r\n\r\n* 기타 할인 지원\r\n\r\nh3. 서버 요구 사항\r\n\r\n매장 정보 관리\r\n단말기 관리\r\n판매 상품 관리\r\n상품 가격 정보 관리\r\n판매 실적 관리\r\n이벤트 관리\r\n고객 실적 관리\r\n고객 혜택 관리\r\n고객 포인트 관리\r\n고객 멤버십 관리','','2018-02-25 23:37:47',3),(16,16,1,'h1. Wiki\r\n\r\n사진 관리(스토리지)\r\n어플리케이션(썸네일 + 축소사진)','','2018-02-26 21:26:58',1),(18,18,1,'h1. 개발 프로세스\r\n\r\nh2. 필요 산출 문서\r\n\r\n* 프로젝트 비전\r\n* 개발 환경 정의서\r\n* 유스케이스\r\n* 사용자스토리\r\n* 아키텍쳐 설계서\r\n* ERD\r\n* WBS\r\n* 프로세스 목록\r\n* 프로세스 정의서\r\n* 테스트결과서\r\n* 화면설계서\r\n* 인터페이스 정의서\r\n* 사용 메뉴얼\r\n* 개발(운영) 메뉴얼\r\n\r\nh2. 개발프로세스\r\n\r\n# 계획\r\n# 분석\r\n# 설계\r\n# 개발','','2018-04-23 11:20:44',1),(19,19,1,'h1. Wiki\r\n\r\nh2. 우선 개발 기능\r\n\r\nh3. 1순위\r\n\r\n# 글목록보기\r\n# 글쓰기\r\n# 글수정\r\n# 글삭제\r\n# 글 내용 확인하기\r\n\r\nh3. 2순위\r\n\r\n# 에디터 연동','','2018-04-23 11:24:17',1);
/*!40000 ALTER TABLE `wiki_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_pages`
--

DROP TABLE IF EXISTS `wiki_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_pages_wiki_id_title` (`wiki_id`,`title`),
  KEY `index_wiki_pages_on_wiki_id` (`wiki_id`),
  KEY `index_wiki_pages_on_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_pages`
--

LOCK TABLES `wiki_pages` WRITE;
/*!40000 ALTER TABLE `wiki_pages` DISABLE KEYS */;
INSERT INTO `wiki_pages` VALUES (1,2,'Wiki','2016-08-27 17:34:49',0,NULL),(2,2,'개발_예정_기능','2016-08-27 17:35:25',0,1),(3,3,'Wiki','2016-08-27 17:56:07',0,NULL),(4,3,'개인_환경_구성','2016-08-27 17:58:06',0,3),(5,1,'Wiki','2016-09-10 22:28:43',0,NULL),(6,1,'개발_요구사항','2016-09-10 22:30:30',0,5),(7,1,'사진_관리','2016-09-10 22:30:44',0,6),(8,3,'개발_할_것','2016-10-01 23:05:20',0,3),(9,4,'Wiki','2017-10-06 19:19:41',0,NULL),(10,4,'1_요구사항_명세서','2017-10-06 19:23:50',0,9),(11,4,'2_스토리보드(화면설계서)','2017-10-06 21:56:59',0,9),(12,6,'Wiki','2017-12-13 23:34:59',0,NULL),(13,5,'Wiki','2018-02-25 22:24:29',0,NULL),(14,5,'비전_기술서','2018-02-25 22:39:56',0,13),(15,5,'요구_사항','2018-02-25 23:14:43',0,13),(16,7,'Wiki','2018-02-26 21:26:58',0,NULL),(18,3,'개발_프로세스','2018-04-23 11:20:44',0,3),(19,8,'Wiki','2018-04-23 11:24:17',0,NULL);
/*!40000 ALTER TABLE `wiki_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_redirects`
--

DROP TABLE IF EXISTS `wiki_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_redirects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `redirects_to` varchar(255) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_redirects_wiki_id_title` (`wiki_id`,`title`),
  KEY `index_wiki_redirects_on_wiki_id` (`wiki_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_redirects`
--

LOCK TABLES `wiki_redirects` WRITE;
/*!40000 ALTER TABLE `wiki_redirects` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wikis`
--

DROP TABLE IF EXISTS `wikis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wikis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `start_page` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `wikis_project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wikis`
--

LOCK TABLES `wikis` WRITE;
/*!40000 ALTER TABLE `wikis` DISABLE KEYS */;
INSERT INTO `wikis` VALUES (1,1,'Wiki',1),(2,2,'Wiki',1),(3,3,'Wiki',1),(4,4,'Wiki',1),(5,5,'Wiki',1),(6,6,'Wiki',1),(7,7,'Wiki',1),(8,8,'Wiki',1),(9,9,'Wiki',1),(10,10,'Wiki',1);
/*!40000 ALTER TABLE `wikis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflows`
--

DROP TABLE IF EXISTS `workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  `old_status_id` int(11) NOT NULL DEFAULT '0',
  `new_status_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  `assignee` tinyint(1) NOT NULL DEFAULT '0',
  `author` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(30) DEFAULT NULL,
  `field_name` varchar(30) DEFAULT NULL,
  `rule` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wkfs_role_tracker_old_status` (`role_id`,`tracker_id`,`old_status_id`),
  KEY `index_workflows_on_old_status_id` (`old_status_id`),
  KEY `index_workflows_on_role_id` (`role_id`),
  KEY `index_workflows_on_new_status_id` (`new_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflows`
--

LOCK TABLES `workflows` WRITE;
/*!40000 ALTER TABLE `workflows` DISABLE KEYS */;
INSERT INTO `workflows` VALUES (1,1,1,2,3,0,0,'WorkflowTransition',NULL,NULL),(2,1,1,3,3,0,0,'WorkflowTransition',NULL,NULL),(3,1,1,4,3,0,0,'WorkflowTransition',NULL,NULL),(4,1,1,5,3,0,0,'WorkflowTransition',NULL,NULL),(5,1,1,6,3,0,0,'WorkflowTransition',NULL,NULL),(6,1,2,1,3,0,0,'WorkflowTransition',NULL,NULL),(7,1,2,3,3,0,0,'WorkflowTransition',NULL,NULL),(8,1,2,4,3,0,0,'WorkflowTransition',NULL,NULL),(9,1,2,5,3,0,0,'WorkflowTransition',NULL,NULL),(10,1,2,6,3,0,0,'WorkflowTransition',NULL,NULL),(11,1,3,1,3,0,0,'WorkflowTransition',NULL,NULL),(12,1,3,2,3,0,0,'WorkflowTransition',NULL,NULL),(13,1,3,4,3,0,0,'WorkflowTransition',NULL,NULL),(14,1,3,5,3,0,0,'WorkflowTransition',NULL,NULL),(15,1,3,6,3,0,0,'WorkflowTransition',NULL,NULL),(16,1,4,1,3,0,0,'WorkflowTransition',NULL,NULL),(17,1,4,2,3,0,0,'WorkflowTransition',NULL,NULL),(18,1,4,3,3,0,0,'WorkflowTransition',NULL,NULL),(19,1,4,5,3,0,0,'WorkflowTransition',NULL,NULL),(20,1,4,6,3,0,0,'WorkflowTransition',NULL,NULL),(21,1,5,1,3,0,0,'WorkflowTransition',NULL,NULL),(22,1,5,2,3,0,0,'WorkflowTransition',NULL,NULL),(23,1,5,3,3,0,0,'WorkflowTransition',NULL,NULL),(24,1,5,4,3,0,0,'WorkflowTransition',NULL,NULL),(25,1,5,6,3,0,0,'WorkflowTransition',NULL,NULL),(26,1,6,1,3,0,0,'WorkflowTransition',NULL,NULL),(27,1,6,2,3,0,0,'WorkflowTransition',NULL,NULL),(28,1,6,3,3,0,0,'WorkflowTransition',NULL,NULL),(29,1,6,4,3,0,0,'WorkflowTransition',NULL,NULL),(30,1,6,5,3,0,0,'WorkflowTransition',NULL,NULL),(31,2,1,2,3,0,0,'WorkflowTransition',NULL,NULL),(32,2,1,3,3,0,0,'WorkflowTransition',NULL,NULL),(33,2,1,4,3,0,0,'WorkflowTransition',NULL,NULL),(34,2,1,5,3,0,0,'WorkflowTransition',NULL,NULL),(35,2,1,6,3,0,0,'WorkflowTransition',NULL,NULL),(36,2,2,1,3,0,0,'WorkflowTransition',NULL,NULL),(37,2,2,3,3,0,0,'WorkflowTransition',NULL,NULL),(38,2,2,4,3,0,0,'WorkflowTransition',NULL,NULL),(39,2,2,5,3,0,0,'WorkflowTransition',NULL,NULL),(40,2,2,6,3,0,0,'WorkflowTransition',NULL,NULL),(41,2,3,1,3,0,0,'WorkflowTransition',NULL,NULL),(42,2,3,2,3,0,0,'WorkflowTransition',NULL,NULL),(43,2,3,4,3,0,0,'WorkflowTransition',NULL,NULL),(44,2,3,5,3,0,0,'WorkflowTransition',NULL,NULL),(45,2,3,6,3,0,0,'WorkflowTransition',NULL,NULL),(46,2,4,1,3,0,0,'WorkflowTransition',NULL,NULL),(47,2,4,2,3,0,0,'WorkflowTransition',NULL,NULL),(48,2,4,3,3,0,0,'WorkflowTransition',NULL,NULL),(49,2,4,5,3,0,0,'WorkflowTransition',NULL,NULL),(50,2,4,6,3,0,0,'WorkflowTransition',NULL,NULL),(51,2,5,1,3,0,0,'WorkflowTransition',NULL,NULL),(52,2,5,2,3,0,0,'WorkflowTransition',NULL,NULL),(53,2,5,3,3,0,0,'WorkflowTransition',NULL,NULL),(54,2,5,4,3,0,0,'WorkflowTransition',NULL,NULL),(55,2,5,6,3,0,0,'WorkflowTransition',NULL,NULL),(56,2,6,1,3,0,0,'WorkflowTransition',NULL,NULL),(57,2,6,2,3,0,0,'WorkflowTransition',NULL,NULL),(58,2,6,3,3,0,0,'WorkflowTransition',NULL,NULL),(59,2,6,4,3,0,0,'WorkflowTransition',NULL,NULL),(60,2,6,5,3,0,0,'WorkflowTransition',NULL,NULL),(61,3,1,2,3,0,0,'WorkflowTransition',NULL,NULL),(62,3,1,3,3,0,0,'WorkflowTransition',NULL,NULL),(63,3,1,4,3,0,0,'WorkflowTransition',NULL,NULL),(64,3,1,5,3,0,0,'WorkflowTransition',NULL,NULL),(65,3,1,6,3,0,0,'WorkflowTransition',NULL,NULL),(66,3,2,1,3,0,0,'WorkflowTransition',NULL,NULL),(67,3,2,3,3,0,0,'WorkflowTransition',NULL,NULL),(68,3,2,4,3,0,0,'WorkflowTransition',NULL,NULL),(69,3,2,5,3,0,0,'WorkflowTransition',NULL,NULL),(70,3,2,6,3,0,0,'WorkflowTransition',NULL,NULL),(71,3,3,1,3,0,0,'WorkflowTransition',NULL,NULL),(72,3,3,2,3,0,0,'WorkflowTransition',NULL,NULL),(73,3,3,4,3,0,0,'WorkflowTransition',NULL,NULL),(74,3,3,5,3,0,0,'WorkflowTransition',NULL,NULL),(75,3,3,6,3,0,0,'WorkflowTransition',NULL,NULL),(76,3,4,1,3,0,0,'WorkflowTransition',NULL,NULL),(77,3,4,2,3,0,0,'WorkflowTransition',NULL,NULL),(78,3,4,3,3,0,0,'WorkflowTransition',NULL,NULL),(79,3,4,5,3,0,0,'WorkflowTransition',NULL,NULL),(80,3,4,6,3,0,0,'WorkflowTransition',NULL,NULL),(81,3,5,1,3,0,0,'WorkflowTransition',NULL,NULL),(82,3,5,2,3,0,0,'WorkflowTransition',NULL,NULL),(83,3,5,3,3,0,0,'WorkflowTransition',NULL,NULL),(84,3,5,4,3,0,0,'WorkflowTransition',NULL,NULL),(85,3,5,6,3,0,0,'WorkflowTransition',NULL,NULL),(86,3,6,1,3,0,0,'WorkflowTransition',NULL,NULL),(87,3,6,2,3,0,0,'WorkflowTransition',NULL,NULL),(88,3,6,3,3,0,0,'WorkflowTransition',NULL,NULL),(89,3,6,4,3,0,0,'WorkflowTransition',NULL,NULL),(90,3,6,5,3,0,0,'WorkflowTransition',NULL,NULL),(91,1,1,2,4,0,0,'WorkflowTransition',NULL,NULL),(92,1,1,3,4,0,0,'WorkflowTransition',NULL,NULL),(93,1,1,4,4,0,0,'WorkflowTransition',NULL,NULL),(94,1,1,5,4,0,0,'WorkflowTransition',NULL,NULL),(95,1,2,3,4,0,0,'WorkflowTransition',NULL,NULL),(96,1,2,4,4,0,0,'WorkflowTransition',NULL,NULL),(97,1,2,5,4,0,0,'WorkflowTransition',NULL,NULL),(98,1,3,2,4,0,0,'WorkflowTransition',NULL,NULL),(99,1,3,4,4,0,0,'WorkflowTransition',NULL,NULL),(100,1,3,5,4,0,0,'WorkflowTransition',NULL,NULL),(101,1,4,2,4,0,0,'WorkflowTransition',NULL,NULL),(102,1,4,3,4,0,0,'WorkflowTransition',NULL,NULL),(103,1,4,5,4,0,0,'WorkflowTransition',NULL,NULL),(104,2,1,2,4,0,0,'WorkflowTransition',NULL,NULL),(105,2,1,3,4,0,0,'WorkflowTransition',NULL,NULL),(106,2,1,4,4,0,0,'WorkflowTransition',NULL,NULL),(107,2,1,5,4,0,0,'WorkflowTransition',NULL,NULL),(108,2,2,3,4,0,0,'WorkflowTransition',NULL,NULL),(109,2,2,4,4,0,0,'WorkflowTransition',NULL,NULL),(110,2,2,5,4,0,0,'WorkflowTransition',NULL,NULL),(111,2,3,2,4,0,0,'WorkflowTransition',NULL,NULL),(112,2,3,4,4,0,0,'WorkflowTransition',NULL,NULL),(113,2,3,5,4,0,0,'WorkflowTransition',NULL,NULL),(114,2,4,2,4,0,0,'WorkflowTransition',NULL,NULL),(115,2,4,3,4,0,0,'WorkflowTransition',NULL,NULL),(116,2,4,5,4,0,0,'WorkflowTransition',NULL,NULL),(117,3,1,2,4,0,0,'WorkflowTransition',NULL,NULL),(118,3,1,3,4,0,0,'WorkflowTransition',NULL,NULL),(119,3,1,4,4,0,0,'WorkflowTransition',NULL,NULL),(120,3,1,5,4,0,0,'WorkflowTransition',NULL,NULL),(121,3,2,3,4,0,0,'WorkflowTransition',NULL,NULL),(122,3,2,4,4,0,0,'WorkflowTransition',NULL,NULL),(123,3,2,5,4,0,0,'WorkflowTransition',NULL,NULL),(124,3,3,2,4,0,0,'WorkflowTransition',NULL,NULL),(125,3,3,4,4,0,0,'WorkflowTransition',NULL,NULL),(126,3,3,5,4,0,0,'WorkflowTransition',NULL,NULL),(127,3,4,2,4,0,0,'WorkflowTransition',NULL,NULL),(128,3,4,3,4,0,0,'WorkflowTransition',NULL,NULL),(129,3,4,5,4,0,0,'WorkflowTransition',NULL,NULL),(130,1,1,5,5,0,0,'WorkflowTransition',NULL,NULL),(131,1,2,5,5,0,0,'WorkflowTransition',NULL,NULL),(132,1,3,5,5,0,0,'WorkflowTransition',NULL,NULL),(133,1,4,5,5,0,0,'WorkflowTransition',NULL,NULL),(134,1,3,4,5,0,0,'WorkflowTransition',NULL,NULL),(135,2,1,5,5,0,0,'WorkflowTransition',NULL,NULL),(136,2,2,5,5,0,0,'WorkflowTransition',NULL,NULL),(137,2,3,5,5,0,0,'WorkflowTransition',NULL,NULL),(138,2,4,5,5,0,0,'WorkflowTransition',NULL,NULL),(139,2,3,4,5,0,0,'WorkflowTransition',NULL,NULL),(140,3,1,5,5,0,0,'WorkflowTransition',NULL,NULL),(141,3,2,5,5,0,0,'WorkflowTransition',NULL,NULL),(142,3,3,5,5,0,0,'WorkflowTransition',NULL,NULL),(143,3,4,5,5,0,0,'WorkflowTransition',NULL,NULL),(144,3,3,4,5,0,0,'WorkflowTransition',NULL,NULL);
/*!40000 ALTER TABLE `workflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'redmine_default'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-20  9:45:27
