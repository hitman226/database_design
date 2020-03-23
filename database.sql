/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.1.39-MariaDB : Database - user_database
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`user_database` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `user_database`;

/*Table structure for table `channel_type` */

DROP TABLE IF EXISTS `channel_type`;

CREATE TABLE `channel_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `crated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `channel_type` */

/*Table structure for table `channels` */

DROP TABLE IF EXISTS `channels`;

CREATE TABLE `channels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `crated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `channels` */

/*Table structure for table `chat_converstion` */

DROP TABLE IF EXISTS `chat_converstion`;

CREATE TABLE `chat_converstion` (
  `id` int(11) NOT NULL,
  `title` varchar(40) NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `multi` tinyint(1) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `chat_converstion` */

/*Table structure for table `chat_fileupload` */

DROP TABLE IF EXISTS `chat_fileupload`;

CREATE TABLE `chat_fileupload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) NOT NULL,
  `user_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `url` varchar(40) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `chat_fileupload` */

/*Table structure for table `chat_invitensions` */

DROP TABLE IF EXISTS `chat_invitensions`;

CREATE TABLE `chat_invitensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `to_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `chat_invitensions` */

/*Table structure for table `chat_messages` */

DROP TABLE IF EXISTS `chat_messages`;

CREATE TABLE `chat_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conversation_id` int(11) DEFAULT NULL,
  `receive_id` int(11) DEFAULT NULL,
  `multi` tinyint(1) DEFAULT NULL,
  `message_type` int(11) DEFAULT NULL,
  `message` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `chat_messages` */

/*Table structure for table `chat_shared_file` */

DROP TABLE IF EXISTS `chat_shared_file`;

CREATE TABLE `chat_shared_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(40) NOT NULL,
  `type` varchar(20) NOT NULL,
  `size` varchar(20) NOT NULL,
  `url` varchar(40) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `chat_shared_file` */

/*Table structure for table `conversation_type` */

DROP TABLE IF EXISTS `conversation_type`;

CREATE TABLE `conversation_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `conversation_type` */

/*Table structure for table `countries` */

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `countries_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(20) NOT NULL,
  PRIMARY KEY (`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `countries` */

/*Table structure for table `email_templates` */

DROP TABLE IF EXISTS `email_templates`;

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_email` varchar(50) DEFAULT NULL,
  `email_type_id` int(11) DEFAULT NULL,
  `title` varchar(190) NOT NULL,
  `subject` varchar(190) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `email_templates` */

/*Table structure for table `emial_types` */

DROP TABLE IF EXISTS `emial_types`;

CREATE TABLE `emial_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `email_type` enum('verif') NOT NULL,
  `variables` text NOT NULL,
  `crated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `emial_types` */

/*Table structure for table `invite_type` */

DROP TABLE IF EXISTS `invite_type`;

CREATE TABLE `invite_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `invite_type` */

/*Table structure for table `organizations` */

DROP TABLE IF EXISTS `organizations`;

CREATE TABLE `organizations` (
  `organization_id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_name` varchar(50) NOT NULL,
  PRIMARY KEY (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `organizations` */

/*Table structure for table `participants` */

DROP TABLE IF EXISTS `participants`;

CREATE TABLE `participants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conversation_id` int(11) DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `participants` */

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `password_resets` */

/*Table structure for table `user_details` */

DROP TABLE IF EXISTS `user_details`;

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `datebirth` date NOT NULL,
  `gender` int(11) NOT NULL,
  `country` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_details` */

/*Table structure for table `user_verification` */

DROP TABLE IF EXISTS `user_verification`;

CREATE TABLE `user_verification` (
  `users_id` int(11) NOT NULL AUTO_INCREMENT,
  `verication_code` varchar(45) NOT NULL,
  `created_at` varchar(45) NOT NULL,
  PRIMARY KEY (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_verification` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `organization` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `department` int(11) NOT NULL,
  `job_title` varchar(20) NOT NULL,
  `description` varchar(50) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `photo` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
