CREATE DATABASE  IF NOT EXISTS `friendships` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `friendships`;
-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: friendships
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `friendships`
--

DROP TABLE IF EXISTS `friendships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendships` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `friend_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  KEY `friend_id_idx` (`friend_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendships`
--

LOCK TABLES `friendships` WRITE;
/*!40000 ALTER TABLE `friendships` DISABLE KEYS */;
INSERT INTO `friendships` VALUES (1,1,2,'2019-02-08 11:13:27',NULL),(2,1,3,'2019-02-08 11:14:03',NULL),(3,1,4,'2019-02-08 11:14:38',NULL),(4,2,4,'2019-02-08 11:15:11',NULL),(5,2,5,'2019-02-08 11:15:23',NULL),(6,5,3,'2019-02-08 11:16:02',NULL);
/*!40000 ALTER TABLE `friendships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Amy','Giver','2019-02-08 11:12:11',NULL),(2,'Eli','Byers','2019-02-08 11:12:11',NULL),(3,'Big','Bird','2019-02-08 11:12:11',NULL),(4,'Kermit','The Frog','2019-02-08 11:12:11',NULL),(5,'Marky','Mark','2019-02-08 11:12:11',NULL);
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

-- Dump completed on 2020-04-16 14:19:04
SELECT * from users;
SELECT * FROM friendships;

SELECT users.first_name,users.last_name,user2.first_name,user2.last_name 
FROM users JOIN friendships ON users.id=friendships.user_id 
LEFT JOIN users as user2 ON user2.id = friendships.friend_id;

SELECT users.first_name, users.last_name, users2.first_name AS friend_first_name, users2.last_name AS friend_last 
FROM users 
LEFT JOIN friendships ON users.id = friendships.user_id 
LEFT JOIN users AS users2 ON users2.id = friendships.friend_id 
WHERE friend_id = 4;

SELECT users.first_name, users.last_name, COUNT(friend_id) AS friend_relations 
FROM users LEFT JOIN friendships ON users.id = friendships.user_id 
LEFT JOIN users AS users2 ON users2.id = friendships.friend_id 
GROUP BY user_id ORDER BY friend_relations DESC;

INSERT INTO users(first_name, last_name, created_at, updated_at) VALUES ('Moath', 'Sweidan', NOW(), NOW());
INSERT INTO users(first_name, last_name, created_at, updated_at) VALUES ('Mohammed', 'Raddad', NOW(), NOW());
INSERT INTO users(first_name, last_name, created_at, updated_at) VALUES ('Ahmed', 'Raddad', NOW(), NOW());
INSERT INTO users(first_name, last_name, created_at, updated_at) VALUES ('Amro', 'Abuhashesh', NOW(), NOW());

INSERT INTO friendships(user_id, friend_id, created_at, updated_at) VALUES (7, 2, NOW(), NOW());

INSERT INTO friendships(user_id, friend_id, created_at, updated_at) VALUES (7, 4, NOW(), NOW());

INSERT INTO friendships(user_id, friend_id, created_at, updated_at) VALUES (7, 5, NOW(), NOW());

SELECT users.first_name, users.last_name, users2.first_name AS friend_first_name, users2.last_name AS friend_lastname 
FROM users 
LEFT JOIN friendships ON users.id = friendships.user_id 
LEFT JOIN users AS users2 ON users2.id = friendships.friend_id 
WHERE friendships.friend_id = 2;

DELETE FROM friendships WHERE id=5;

SELECT users.first_name, users.last_name, users2.first_name AS friend_first_name, users2.last_name AS friend_last_name 
FROM users 
LEFT JOIN friendships ON users.id = friendships.user_id 
LEFT JOIN users AS users2 ON users2.id = friendships.friend_id

-- SELECT users.first_name, users.last_name, friendships.user_id AS friend_furst_name, friendships.friend_id AS friend_last_name
-- FROM users 
-- LEFT JOIN friendships
-- ON users.id = friendships.user_id WHERE users.id=friendships.user_id AND users.id=friendships.friend_id;
-- JOIN friendships ON friend_id=users.id 
-- LEFT JOIN users as userfriend2 ON users.id = friendships.friend_id;

-- SELECT column_name(s)
-- FROM table1
-- LEFT JOIN table2
-- ON table1.column_name = table2.column_name;
