/*
SQLyog Trial v12.4.1 (64 bit)
MySQL - 5.6.35-log : Database - micro_blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`micro_blog` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `micro_blog`;

/*Table structure for table `Album` */

DROP TABLE IF EXISTS `album`;

CREATE TABLE `album` (
  `albume_id` int(11) NOT NULL AUTO_INCREMENT,
  `albume_name` varchar(10) NOT NULL,
  `cover` blob,
  `userId` varchar(16) NOT NULL,
  `text` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`albume_id`),
  KEY `au_id` (`userId`),
  CONSTRAINT `au_id` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `Album` */

/*Table structure for table `Call_me` */

DROP TABLE IF EXISTS `call_me`;

CREATE TABLE `call_me` (
  `userId` varchar(16) NOT NULL,
  `call_userId` varchar(16) NOT NULL,
  `call_text` varchar(200) DEFAULT NULL,
  `call_time` date DEFAULT NULL,
  KEY `cu_id1` (`userId`),
  KEY `cu_id2` (`call_userId`),
  CONSTRAINT `cu_id1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`),
  CONSTRAINT `cu_id2` FOREIGN KEY (`call_userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `Call_me` */

/*Table structure for table `collection` */

DROP TABLE IF EXISTS `collection`;

CREATE TABLE `collection` (
  `collection_id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(200) NOT NULL,
  `expression_id` int(11) DEFAULT NULL,
  `picture` blob,
  `publish_content_id` int(11) NOT NULL,
  `userId` varchar(16) DEFAULT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`collection_id`),
  KEY `cff_id` (`expression_id`),
  KEY `cff_id1` (`publish_content_id`),
  KEY `cff_id2` (`userId`),
  CONSTRAINT `cff_id` FOREIGN KEY (`expression_id`) REFERENCES `expression` (`ExpressionId`),
  CONSTRAINT `cff_id1` FOREIGN KEY (`publish_content_id`) REFERENCES `publish` (`publish_content_id`),
  CONSTRAINT `cff_id2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `collection` */

/*Table structure for table `College` */

DROP TABLE IF EXISTS `college`;

CREATE TABLE `college` (
  `college_id` int(11) NOT NULL AUTO_INCREMENT,
  `college_name` varchar(50) DEFAULT NULL,
  `userId` varchar(16) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`college_id`),
  KEY `cd_department` (`department_id`),
  KEY `cu_user` (`userId`),
  CONSTRAINT `cd_department` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`),
  CONSTRAINT `cu_user` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `College` */

/*Table structure for table `Comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(200) NOT NULL,
  `expression_id` int(11) DEFAULT NULL,
  `picture` blob,
  `publish_content_id` int(11) NOT NULL,
  `userId` varchar(16) DEFAULT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `cc_id` (`expression_id`),
  KEY `cc_id1` (`publish_content_id`),
  KEY `cc_id2` (`userId`),
  CONSTRAINT `cc_id` FOREIGN KEY (`expression_id`) REFERENCES `expression` (`ExpressionId`),
  CONSTRAINT `cc_id1` FOREIGN KEY (`publish_content_id`) REFERENCES `publish` (`publish_content_id`),
  CONSTRAINT `cc_id2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `Comment` */

/*Table structure for table `Company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `company_name` varchar(20) NOT NULL,
  `department` varchar(20) NOT NULL,
  `work_time` date DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `userId` varchar(20) NOT NULL,
  KEY `cu_id` (`userId`),
  CONSTRAINT `cu_id` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `Company` */

/*Table structure for table `Department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(20) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `Department` */

/*Table structure for table `Expression` */

DROP TABLE IF EXISTS `expression`;

CREATE TABLE `expression` (
  `ExpressionId` int(11) NOT NULL AUTO_INCREMENT,
  `Expression` blob NOT NULL,
  PRIMARY KEY (`ExpressionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `Expression` */

/*Table structure for table `Fabulous` */

DROP TABLE IF EXISTS `fabulous`;

CREATE TABLE `fabulous` (
  `fabulous_id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(200) NOT NULL,
  `expression_id` int(11) DEFAULT NULL,
  `picture` blob,
  `publish_content_id` int(11) NOT NULL,
  `userId` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`fabulous_id`),
  KEY `fcf_id` (`expression_id`),
  KEY `fcf_id1` (`publish_content_id`),
  KEY `fcf_id2` (`userId`),
  CONSTRAINT `fcf_id` FOREIGN KEY (`expression_id`) REFERENCES `expression` (`ExpressionId`),
  CONSTRAINT `fcf_id1` FOREIGN KEY (`publish_content_id`) REFERENCES `publish` (`publish_content_id`),
  CONSTRAINT `fcf_id2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `Fabulous` */

/*Table structure for table `Fans` */

DROP TABLE IF EXISTS `fans`;

CREATE TABLE `fans` (
  `userId` varchar(16) NOT NULL,
  `fansId` varchar(16) NOT NULL,
  KEY `fu_user` (`userId`),
  KEY `fu_fans` (`fansId`),
  CONSTRAINT `fu_fans` FOREIGN KEY (`fansId`) REFERENCES `user` (`userId`),
  CONSTRAINT `fu_user` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `Fans` */

/*Table structure for table `Forward` */

DROP TABLE IF EXISTS `forward`;

CREATE TABLE `forward` (
  `forward_id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(200) NOT NULL,
  `expression_id` int(11) DEFAULT NULL,
  `picture` blob,
  `publish_content_id` int(11) NOT NULL,
  `userId` varchar(16) DEFAULT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`forward_id`),
  KEY `cf_id` (`expression_id`),
  KEY `cf_id1` (`publish_content_id`),
  KEY `cf_id2` (`userId`),
  CONSTRAINT `cf_id` FOREIGN KEY (`expression_id`) REFERENCES `expression` (`ExpressionId`),
  CONSTRAINT `cf_id1` FOREIGN KEY (`publish_content_id`) REFERENCES `publish` (`publish_content_id`),
  CONSTRAINT `cf_id2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `Forward` */

/*Table structure for table `Head_portrait` */

DROP TABLE IF EXISTS `head_portrait`;

CREATE TABLE `head_portrait` (
  `head_portrait` blob NOT NULL,
  `head_portrait_time` date DEFAULT NULL,
  `userId` varchar(16) DEFAULT NULL,
  KEY `fk_user` (`userId`),
  CONSTRAINT `fk_user` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `Head_portrait` */

/*Table structure for table `Label` */

DROP TABLE IF EXISTS `label`;

CREATE TABLE `label` (
  `label_id` int(11) NOT NULL AUTO_INCREMENT,
  `label_text` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`label_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `Label` */

/*Table structure for table `People_label` */

DROP TABLE IF EXISTS `people_label`;

CREATE TABLE `people_label` (
  `userId` varchar(16) NOT NULL,
  `label_id` int(11) NOT NULL,
  KEY `fk_perople_label_user` (`userId`),
  KEY `fk_people_label_label` (`label_id`),
  CONSTRAINT `fk_people_label_label` FOREIGN KEY (`label_id`) REFERENCES `label` (`label_id`),
  CONSTRAINT `fk_perople_label_user` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `People_label` */

/*Table structure for table `Photo` */

DROP TABLE IF EXISTS `photo`;

CREATE TABLE `photo` (
  `photo_id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` blob NOT NULL,
  `time` date DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`photo_id`),
  KEY `pu_id` (`album_id`),
  CONSTRAINT `pu_id` FOREIGN KEY (`album_id`) REFERENCES `album` (`albume_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `Photo` */

/*Table structure for table `Private_letter` */

DROP TABLE IF EXISTS `private_letter`;

CREATE TABLE `private_letter` (
  `userId` varchar(16) NOT NULL,
  `recipientId` varchar(16) NOT NULL,
  `TEXT` varchar(100) NOT NULL,
  `TIME` date NOT NULL,
  KEY `fk_user1` (`userId`),
  KEY `fk_recipient` (`recipientId`),
  CONSTRAINT `fk_recipient` FOREIGN KEY (`recipientId`) REFERENCES `user` (`userId`),
  CONSTRAINT `fk_user1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `Private_letter` */

/*Table structure for table `Publish` */

DROP TABLE IF EXISTS `publish`;

CREATE TABLE `publish` (
  `publish_content_id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(200) NOT NULL,
  `expression_id` int(11) DEFAULT NULL,
  `picture` blob,
  `phone` blob,
  `userId` varchar(16) NOT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`publish_content_id`),
  KEY `pe_id1` (`expression_id`),
  KEY `pu_id1` (`userId`),
  CONSTRAINT `pe_id1` FOREIGN KEY (`expression_id`) REFERENCES `expression` (`ExpressionId`),
  CONSTRAINT `pu_id1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `Publish` */

/*Table structure for table `Report` */

DROP TABLE IF EXISTS `report`;

CREATE TABLE `report` (
  `userId` varchar(20) DEFAULT NULL,
  `publish_content_id` int(11) DEFAULT NULL,
  `report_class_id` int(11) DEFAULT NULL,
  KEY `rr_id` (`publish_content_id`),
  KEY `rr_id2` (`report_class_id`),
  KEY `rr_id3` (`userId`),
  CONSTRAINT `rr_id` FOREIGN KEY (`publish_content_id`) REFERENCES `publish` (`publish_content_id`),
  CONSTRAINT `rr_id2` FOREIGN KEY (`report_class_id`) REFERENCES `report_class` (`report_class_id`),
  CONSTRAINT `rr_id3` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `Report` */

/*Table structure for table `Report_class` */

DROP TABLE IF EXISTS `report_class`;

CREATE TABLE `report_class` (
  `report_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `report_class` varchar(10) NOT NULL,
  PRIMARY KEY (`report_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `Report_class` */

/*Table structure for table `Shield` */

DROP TABLE IF EXISTS `shield`;

CREATE TABLE `shield` (
  `userId` varchar(16) DEFAULT NULL,
  `shield_id` varchar(20) DEFAULT NULL,
  `shield_word` varchar(10) DEFAULT NULL,
  `publish_content_id` int(11) DEFAULT NULL,
  KEY `fs_id` (`userId`),
  KEY `fs_id1` (`shield_id`),
  KEY `fs_id2` (`publish_content_id`),
  CONSTRAINT `fs_id` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`),
  CONSTRAINT `fs_id1` FOREIGN KEY (`shield_id`) REFERENCES `user` (`userId`),
  CONSTRAINT `fs_id2` FOREIGN KEY (`publish_content_id`) REFERENCES `publish` (`publish_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `Shield` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userId` varchar(16) NOT NULL,
  `phone` char(11) NOT NULL,
  `password` varchar(16) NOT NULL,
  `mailbox` varchar(20) NOT NULL,
  `registeredl_dentity` char(4) DEFAULT '个人',
  `location` varchar(50) NOT NULL,
  `nickname` varchar(10) NOT NULL,
  `orientation` varchar(2) DEFAULT NULL,
  `sex` varchar(4) DEFAULT '男',
  `emotional_state` varchar(4) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `blood_type` varchar(4) DEFAULT NULL,
  `brieflntroduction` varchar(100) DEFAULT NULL,
  `blog_address` varchar(50) DEFAULT NULL,
  `MSN` varchar(50) DEFAULT NULL,
  `qq` varchar(15) DEFAULT NULL,
  `receiptlnformation` varchar(50) DEFAULT NULL,
  `domain_name` varchar(50) DEFAULT NULL,
  `how_to_find_me` char(8) DEFAULT NULL,
  `ID` char(18) DEFAULT NULL,
  `member` varchar(6) DEFAULT '非会员',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
