/*
SQLyog Community v13.1.1 (32 bit)
MySQL - 5.7.29 : Database - osdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`osdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `osdb`;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜品分类id',
  `shop_id` int(11) DEFAULT NULL COMMENT '店铺id',
  `name` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：1正常 9删除',
  `create_at` datetime DEFAULT NULL COMMENT '添加时间',
  `update_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`id`,`shop_id`,`name`,`status`,`create_at`,`update_at`) values 
(1,1,'双拼套餐',1,'2020-07-25 10:20:30','2020-07-25 10:20:30'),
(2,1,'盖饭',1,'2020-07-25 10:20:30','2020-07-25 10:20:30'),
(3,1,'小菜',1,'2020-07-25 10:20:30','2020-07-25 10:20:30'),
(4,1,'汤/饮料',1,'2020-07-25 10:20:30','2020-07-25 10:20:30'),
(5,2,'双拼套餐',1,'2020-07-25 10:20:30','2020-07-25 10:20:30'),
(6,2,'盖饭',1,'2020-07-25 10:20:30','2020-07-25 10:20:30'),
(7,2,'小菜',1,'2020-07-25 10:20:30','2020-07-25 10:20:30'),
(8,2,'汤/饮料',1,'2020-07-25 10:20:30','2020-07-25 10:20:30'),
(9,3,'盖饭',1,'2020-07-25 10:20:30','2020-07-25 10:20:30'),
(10,3,'双拼套餐',1,'2020-07-25 10:20:30','2020-07-25 10:20:30'),
(11,3,'小炒',1,'2020-07-25 10:20:30','2020-07-25 10:20:30'),
(13,3,'bbbbb',1,'2020-08-15 13:01:17','2020-08-15 13:11:45');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_migrations` */

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values 
('4glsi74lggeu9jvrql457uyu24fnjqqf','ZWI4YzJkMzE0OGMwZGMzZjFiMWVhMmJiMGFjODU0NDgwOWFkYzhhMTp7InZlcmlmeWNvZGUiOiI1Mjk1IiwibW9iaWxldXNlciI6eyJpZCI6MTgsIm5pY2tuYW1lIjoiXHU5ODdlXHU1YmEyIiwiYXZhdGFyIjoibW9yZW4ucG5nIiwibW9iaWxlIjoiMTIzNDU2Nzg5MDgiLCJzdGF0dXMiOjF9LCJzaG9waW5mbyI6eyJpZCI6MSwibmFtZSI6Ilx1NzUzMFx1ODAwMVx1NWUwOFx1N2VhMlx1NzBlN1x1ODA4OSIsInNob3AiOiJcdTY3MWRcdTk2MzNcdTVjMDZcdTUzZjBcdThkZWZcdTVlOTciLCJjb3Zlcl9waWMiOiIxMjM0MTIzNC5qcGciLCJiYW5uZXJfcGljIjoibGcuanBnIiwiYWRkcmVzcyI6Ilx1NTMxN1x1NGVhY1x1NWUwMlx1NjcxZFx1OTYzM1x1NTMzYVx1NWMwNlx1NTNmMFx1NGU2MVx1NGUxY1x1NTE2Ylx1OTVmNFx1NjIzZlx1Njc1MVx1ODk3Zlx1NGUzNDhcdTUzZjciLCJwaG9uZSI6IjEyMzQ1Njc4OTA1Iiwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDIwLTA3LTIwIDEwOjEyOjM0IiwidXBkYXRlX2F0IjoiMjAyMC0wNy0yNCAxMjozNDo1NiJ9fQ==','2020-09-11 02:36:46.772005'),
('9v574nheq1zd2al4jaw4citzw68vmmer','Y2JkYTFiYWY4M2I1NTY0YzgxNmZhNTE1OTA1OTI2YmUwYzU1NWExZjp7InNob3BpbmZvIjp7ImlkIjoxLCJuYW1lIjoiXHU3NTMwXHU4MDAxXHU1ZTA4XHU3ZWEyXHU3MGU3XHU4MDg5Iiwic2hvcCI6Ilx1NjcxZFx1OTYzM1x1NWMwNlx1NTNmMFx1OGRlZlx1NWU5NyIsImNvdmVyX3BpYyI6IjEyMzQxMjM0LmpwZyIsImJhbm5lcl9waWMiOiJsZy5qcGciLCJhZGRyZXNzIjoiXHU1MzE3XHU0ZWFjXHU1ZTAyXHU2NzFkXHU5NjMzXHU1MzNhXHU1YzA2XHU1M2YwXHU0ZTYxXHU0ZTFjXHU1MTZiXHU5NWY0XHU2MjNmXHU2NzUxXHU4OTdmXHU0ZTM0OFx1NTNmNyIsInBob25lIjoiMTIzNDU2Nzg5MDUiLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMjAtMDctMjAgMTA6MTI6MzQiLCJ1cGRhdGVfYXQiOiIyMDIwLTA3LTI0IDEyOjM0OjU2In0sInZlcmlmeWNvZGUiOiIxODUzIiwiY2F0ZWdvcnlsaXN0Ijp7IjEiOnsiaWQiOjEsIm5hbWUiOiJcdTUzY2NcdTYyZmNcdTU5NTdcdTk5MTAiLCJwaWRzIjpbeyJpZCI6MSwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjEsImNvdmVyX3BpYyI6IjE1MzY2NTc2MjAuNTQ4NTcwNC5qcGciLCJuYW1lIjoiXHU3ZWEyXHU3MGU3XHU4MDg5K1x1NzJlZVx1NWI1MFx1NTkzNCtcdTk5NmVcdTY1OTkiLCJwcmljZSI6MjUuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDIwLTA3LTExIDA5OjIwOjIwIiwidXBkYXRlX2F0IjoiMjAyMC0wNy0yNSAxMDoyMDozMCJ9LHsiaWQiOjIsInNob3BfaWQiOjEsImNhdGVnb3J5X2lkIjoxLCJjb3Zlcl9waWMiOiIxNTM2NjU4MzUyLjkzNDE1NTcuanBnIiwibmFtZSI6Ilx1N2VhMlx1NzBlN1x1ODA4OStcdTc1NmFcdTgzMDRcdTllMjFcdTg2Y2IiLCJwcmljZSI6MjIuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDIwLTA3LTExIDA5OjMyOjMyIiwidXBkYXRlX2F0IjoiMjAyMC0wNy0yNSAxMDoyMDozMCJ9LHsiaWQiOjMsInNob3BfaWQiOjEsImNhdGVnb3J5X2lkIjoxLCJjb3Zlcl9waWMiOiIxNTM2NjU4NDE1LjY4MzgwMDIuanBnIiwibmFtZSI6Ilx1Njg4NVx1ODNkY1x1NjI2M1x1ODA4OStcdTc1NmFcdTgzMDRcdTllMjFcdTg2Y2IiLCJwcmljZSI6MjIuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDIwLTA3LTExIDA5OjMzOjM1IiwidXBkYXRlX2F0IjoiMjAyMC0wNy0yNSAxMDoyMDozMCJ9LHsiaWQiOjQsInNob3BfaWQiOjEsImNhdGVnb3J5X2lkIjoxLCJjb3Zlcl9waWMiOiIxNTM2NjU4NTc0LjI4NDczNzMuanBnIiwibmFtZSI6Ilx1ODBhNVx1NzI1YitcdTc1NmFcdTgzMDRcdTllMjFcdTg2Y2IiLCJwcmljZSI6MjIuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDIwLTA3LTExIDA5OjM2OjE0IiwidXBkYXRlX2F0IjoiMjAyMC0wNy0yNSAxMDoyMDozMCJ9XX0sIjIiOnsiaWQiOjIsIm5hbWUiOiJcdTc2ZDZcdTk5NmQiLCJwaWRzIjpbeyJpZCI6NSwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjIsImNvdmVyX3BpYyI6IjE1MzY2NTg2NTkuMDQ0Njk5My5qcGciLCJuYW1lIjoiXHU2ODg1XHU4M2RjXHU2MjYzXHU4MDg5XHU5OTZkIiwicHJpY2UiOjE5LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAyMC0wNy0xMSAwOTozNzozOSIsInVwZGF0ZV9hdCI6IjIwMjAtMDctMjUgMTA6MjA6MzAifSx7ImlkIjo2LCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MiwiY292ZXJfcGljIjoiMTUzNjY1ODgyNC4zOTc2NTA1LmpwZyIsIm5hbWUiOiJcdTY3MjhcdTk4N2JcdTgwODlcdTk5NmQiLCJwcmljZSI6MTYuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDIwLTA3LTExIDA5OjQwOjI0IiwidXBkYXRlX2F0IjoiMjAyMC0wNy0yNSAxMDoyMDozMCJ9LHsiaWQiOjcsInNob3BfaWQiOjEsImNhdGVnb3J5X2lkIjoyLCJjb3Zlcl9waWMiOiIxNTM2NjU4ODYzLjY3MzI4NTUuanBnIiwibmFtZSI6Ilx1ODBhNVx1NzI1Ylx1OTk2ZCIsInByaWNlIjoxOS4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMjAtMDctMTEgMDk6NDE6MDMiLCJ1cGRhdGVfYXQiOiIyMDIwLTA3LTI1IDEwOjIwOjMwIn0seyJpZCI6OCwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjIsImNvdmVyX3BpYyI6IjE1MzY2NTg5NjAuMzk1NDEzNC5qcGciLCJuYW1lIjoiXHU2NWUwXHU5YWE4XHU1NDk2XHU1NWIxXHU5ZTIxXHU5OTZkIiwicHJpY2UiOjE4LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAyMC0wNy0xMSAwOTo0Mjo0MCIsInVwZGF0ZV9hdCI6IjIwMjAtMDctMjUgMTA6MjA6MzAifV19LCIzIjp7ImlkIjozLCJuYW1lIjoiXHU1YzBmXHU4M2RjIiwicGlkcyI6W3siaWQiOjksInNob3BfaWQiOjEsImNhdGVnb3J5X2lkIjozLCJjb3Zlcl9waWMiOiIxNTM2NjU5MTE0LjA0NDAyMzUuanBnIiwibmFtZSI6Ilx1NjcyOFx1OTg3Ylx1ODA4OSIsInByaWNlIjoxMi4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMjAtMDctMTEgMDk6NDQ6MjUiLCJ1cGRhdGVfYXQiOiIyMDIwLTA3LTI1IDEwOjIwOjMwIn0seyJpZCI6MTAsInNob3BfaWQiOjEsImNhdGVnb3J5X2lkIjozLCJjb3Zlcl9waWMiOiIxNTM2NjU5MDY1Ljc5NzI2MzcuanBnIiwibmFtZSI6Ilx1NzU2YVx1ODMwNFx1OWUyMVx1ODZjYiIsInByaWNlIjo0LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAyMC0wNy0xMSAwOTo0NToxNCIsInVwZGF0ZV9hdCI6IjIwMjAtMDctMjUgMTA6MjA6MzAifSx7ImlkIjoxMSwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjMsImNvdmVyX3BpYyI6IjE1MzY2NTkxOTcuNzIzMTIyMS5qcGciLCJuYW1lIjoiXHU5NzUyXHU4M2RjIiwicHJpY2UiOjQuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDIwLTA3LTExIDA5OjQ2OjM3IiwidXBkYXRlX2F0IjoiMjAyMC0wNy0yNSAxMDoyMDozMCJ9LHsiaWQiOjEyLCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MywiY292ZXJfcGljIjoiMTUzNjY1OTI1My44ODQyNzE2LmpwZyIsIm5hbWUiOiJcdTUzNTVcdTRlZmRcdTk5OTlcdThmYTNcdTdiMGJcdTVlNzJcdTcwZTdcdTgwODkiLCJwcmljZSI6MTUuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDIwLTA3LTExIDA5OjQ3OjMzIiwidXBkYXRlX2F0IjoiMjAyMC0wNy0yNSAxMDoyMDozMCJ9XX0sIjQiOnsiaWQiOjQsIm5hbWUiOiJcdTZjNjQvXHU5OTZlXHU2NTk5IiwicGlkcyI6W3siaWQiOjEzLCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6NCwiY292ZXJfcGljIjoiMTUzNjY1OTMxMS44Njk5NDkzLmpwZyIsIm5hbWUiOiJcdTc1NmFcdTgzMDRcdTg2Y2JcdTgyYjFcdTZjNjQiLCJwcmljZSI6NC4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMjAtMDctMTEgMDk6NDg6MzEiLCJ1cGRhdGVfYXQiOiIyMDIwLTA3LTI1IDEwOjIwOjMwIn0seyJpZCI6MTQsInNob3BfaWQiOjEsImNhdGVnb3J5X2lkIjo0LCJjb3Zlcl9waWMiOiIxNTM2NjU5MzY0Ljc4OTI1MTMuanBnIiwibmFtZSI6Ilx1NzM4Ylx1ODAwMVx1NTQwOSIsInByaWNlIjo2LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAyMC0wNy0xMSAwOTo0OToyNCIsInVwZGF0ZV9hdCI6IjIwMjAtMDctMjUgMTA6MjA6MzAifSx7ImlkIjoxNSwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjQsImNvdmVyX3BpYyI6IjE1MzY2NTk1NjMuMzg5NzY0OC5qcGciLCJuYW1lIjoiXHU2NzljXHU3YzkyXHU2YTU5IiwicHJpY2UiOjUuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDIwLTA3LTExIDA5OjUyOjQzIiwidXBkYXRlX2F0IjoiMjAyMC0wNy0yNSAxMDoyMDozMCJ9LHsiaWQiOjE2LCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6NCwiY292ZXJfcGljIjoiMTUzNjY1OTYwNS41NTYxNzcxLmpwZyIsIm5hbWUiOiJcdTc3ZmZcdTZjYzlcdTZjMzQiLCJwcmljZSI6My4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMjAtMDctMTEgMDk6NTM6MjUiLCJ1cGRhdGVfYXQiOiIyMDIwLTA3LTI1IDEwOjIwOjMwIn0seyJpZCI6MTcsInNob3BfaWQiOjEsImNhdGVnb3J5X2lkIjo0LCJjb3Zlcl9waWMiOiIxNTM2NjU5Njg4LjQ4NTYxNTcuanBnIiwibmFtZSI6Ilx1NGU0Y1x1Njg4NVx1NmM0MSIsInByaWNlIjo0LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAyMC0wNy0xMSAwOTo1NDo0OCIsInVwZGF0ZV9hdCI6IjIwMjAtMDctMjUgMTA6MjA6MzAifV19fSwicHJvZHVjdGxpc3QiOnsiMSI6eyJpZCI6MSwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjEsImNvdmVyX3BpYyI6IjE1MzY2NTc2MjAuNTQ4NTcwNC5qcGciLCJuYW1lIjoiXHU3ZWEyXHU3MGU3XHU4MDg5K1x1NzJlZVx1NWI1MFx1NTkzNCtcdTk5NmVcdTY1OTkiLCJwcmljZSI6MjUuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDIwLTA3LTExIDA5OjIwOjIwIiwidXBkYXRlX2F0IjoiMjAyMC0wNy0yNSAxMDoyMDozMCJ9LCIyIjp7ImlkIjoyLCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MSwiY292ZXJfcGljIjoiMTUzNjY1ODM1Mi45MzQxNTU3LmpwZyIsIm5hbWUiOiJcdTdlYTJcdTcwZTdcdTgwODkrXHU3NTZhXHU4MzA0XHU5ZTIxXHU4NmNiIiwicHJpY2UiOjIyLjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAyMC0wNy0xMSAwOTozMjozMiIsInVwZGF0ZV9hdCI6IjIwMjAtMDctMjUgMTA6MjA6MzAifSwiMyI6eyJpZCI6Mywic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjEsImNvdmVyX3BpYyI6IjE1MzY2NTg0MTUuNjgzODAwMi5qcGciLCJuYW1lIjoiXHU2ODg1XHU4M2RjXHU2MjYzXHU4MDg5K1x1NzU2YVx1ODMwNFx1OWUyMVx1ODZjYiIsInByaWNlIjoyMi4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMjAtMDctMTEgMDk6MzM6MzUiLCJ1cGRhdGVfYXQiOiIyMDIwLTA3LTI1IDEwOjIwOjMwIn0sIjQiOnsiaWQiOjQsInNob3BfaWQiOjEsImNhdGVnb3J5X2lkIjoxLCJjb3Zlcl9waWMiOiIxNTM2NjU4NTc0LjI4NDczNzMuanBnIiwibmFtZSI6Ilx1ODBhNVx1NzI1YitcdTc1NmFcdTgzMDRcdTllMjFcdTg2Y2IiLCJwcmljZSI6MjIuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDIwLTA3LTExIDA5OjM2OjE0IiwidXBkYXRlX2F0IjoiMjAyMC0wNy0yNSAxMDoyMDozMCJ9LCI1Ijp7ImlkIjo1LCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MiwiY292ZXJfcGljIjoiMTUzNjY1ODY1OS4wNDQ2OTkzLmpwZyIsIm5hbWUiOiJcdTY4ODVcdTgzZGNcdTYyNjNcdTgwODlcdTk5NmQiLCJwcmljZSI6MTkuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDIwLTA3LTExIDA5OjM3OjM5IiwidXBkYXRlX2F0IjoiMjAyMC0wNy0yNSAxMDoyMDozMCJ9LCI2Ijp7ImlkIjo2LCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MiwiY292ZXJfcGljIjoiMTUzNjY1ODgyNC4zOTc2NTA1LmpwZyIsIm5hbWUiOiJcdTY3MjhcdTk4N2JcdTgwODlcdTk5NmQiLCJwcmljZSI6MTYuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDIwLTA3LTExIDA5OjQwOjI0IiwidXBkYXRlX2F0IjoiMjAyMC0wNy0yNSAxMDoyMDozMCJ9LCI3Ijp7ImlkIjo3LCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MiwiY292ZXJfcGljIjoiMTUzNjY1ODg2My42NzMyODU1LmpwZyIsIm5hbWUiOiJcdTgwYTVcdTcyNWJcdTk5NmQiLCJwcmljZSI6MTkuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDIwLTA3LTExIDA5OjQxOjAzIiwidXBkYXRlX2F0IjoiMjAyMC0wNy0yNSAxMDoyMDozMCJ9LCI4Ijp7ImlkIjo4LCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MiwiY292ZXJfcGljIjoiMTUzNjY1ODk2MC4zOTU0MTM0LmpwZyIsIm5hbWUiOiJcdTY1ZTBcdTlhYThcdTU0OTZcdTU1YjFcdTllMjFcdTk5NmQiLCJwcmljZSI6MTguMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDIwLTA3LTExIDA5OjQyOjQwIiwidXBkYXRlX2F0IjoiMjAyMC0wNy0yNSAxMDoyMDozMCJ9LCI5Ijp7ImlkIjo5LCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MywiY292ZXJfcGljIjoiMTUzNjY1OTExNC4wNDQwMjM1LmpwZyIsIm5hbWUiOiJcdTY3MjhcdTk4N2JcdTgwODkiLCJwcmljZSI6MTIuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDIwLTA3LTExIDA5OjQ0OjI1IiwidXBkYXRlX2F0IjoiMjAyMC0wNy0yNSAxMDoyMDozMCJ9LCIxMCI6eyJpZCI6MTAsInNob3BfaWQiOjEsImNhdGVnb3J5X2lkIjozLCJjb3Zlcl9waWMiOiIxNTM2NjU5MDY1Ljc5NzI2MzcuanBnIiwibmFtZSI6Ilx1NzU2YVx1ODMwNFx1OWUyMVx1ODZjYiIsInByaWNlIjo0LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAyMC0wNy0xMSAwOTo0NToxNCIsInVwZGF0ZV9hdCI6IjIwMjAtMDctMjUgMTA6MjA6MzAifSwiMTEiOnsiaWQiOjExLCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6MywiY292ZXJfcGljIjoiMTUzNjY1OTE5Ny43MjMxMjIxLmpwZyIsIm5hbWUiOiJcdTk3NTJcdTgzZGMiLCJwcmljZSI6NC4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMjAtMDctMTEgMDk6NDY6MzciLCJ1cGRhdGVfYXQiOiIyMDIwLTA3LTI1IDEwOjIwOjMwIn0sIjEyIjp7ImlkIjoxMiwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjMsImNvdmVyX3BpYyI6IjE1MzY2NTkyNTMuODg0MjcxNi5qcGciLCJuYW1lIjoiXHU1MzU1XHU0ZWZkXHU5OTk5XHU4ZmEzXHU3YjBiXHU1ZTcyXHU3MGU3XHU4MDg5IiwicHJpY2UiOjE1LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAyMC0wNy0xMSAwOTo0NzozMyIsInVwZGF0ZV9hdCI6IjIwMjAtMDctMjUgMTA6MjA6MzAifSwiMTMiOnsiaWQiOjEzLCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6NCwiY292ZXJfcGljIjoiMTUzNjY1OTMxMS44Njk5NDkzLmpwZyIsIm5hbWUiOiJcdTc1NmFcdTgzMDRcdTg2Y2JcdTgyYjFcdTZjNjQiLCJwcmljZSI6NC4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMjAtMDctMTEgMDk6NDg6MzEiLCJ1cGRhdGVfYXQiOiIyMDIwLTA3LTI1IDEwOjIwOjMwIn0sIjE0Ijp7ImlkIjoxNCwic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjQsImNvdmVyX3BpYyI6IjE1MzY2NTkzNjQuNzg5MjUxMy5qcGciLCJuYW1lIjoiXHU3MzhiXHU4MDAxXHU1NDA5IiwicHJpY2UiOjYuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDIwLTA3LTExIDA5OjQ5OjI0IiwidXBkYXRlX2F0IjoiMjAyMC0wNy0yNSAxMDoyMDozMCJ9LCIxNSI6eyJpZCI6MTUsInNob3BfaWQiOjEsImNhdGVnb3J5X2lkIjo0LCJjb3Zlcl9waWMiOiIxNTM2NjU5NTYzLjM4OTc2NDguanBnIiwibmFtZSI6Ilx1Njc5Y1x1N2M5Mlx1NmE1OSIsInByaWNlIjo1LjAsInN0YXR1cyI6MSwiY3JlYXRlX2F0IjoiMjAyMC0wNy0xMSAwOTo1Mjo0MyIsInVwZGF0ZV9hdCI6IjIwMjAtMDctMjUgMTA6MjA6MzAifSwiMTYiOnsiaWQiOjE2LCJzaG9wX2lkIjoxLCJjYXRlZ29yeV9pZCI6NCwiY292ZXJfcGljIjoiMTUzNjY1OTYwNS41NTYxNzcxLmpwZyIsIm5hbWUiOiJcdTc3ZmZcdTZjYzlcdTZjMzQiLCJwcmljZSI6My4wLCJzdGF0dXMiOjEsImNyZWF0ZV9hdCI6IjIwMjAtMDctMTEgMDk6NTM6MjUiLCJ1cGRhdGVfYXQiOiIyMDIwLTA3LTI1IDEwOjIwOjMwIn0sIjE3Ijp7ImlkIjoxNywic2hvcF9pZCI6MSwiY2F0ZWdvcnlfaWQiOjQsImNvdmVyX3BpYyI6IjE1MzY2NTk2ODguNDg1NjE1Ny5qcGciLCJuYW1lIjoiXHU0ZTRjXHU2ODg1XHU2YzQxIiwicHJpY2UiOjQuMCwic3RhdHVzIjoxLCJjcmVhdGVfYXQiOiIyMDIwLTA3LTExIDA5OjU0OjQ4IiwidXBkYXRlX2F0IjoiMjAyMC0wNy0yNSAxMDoyMDozMCJ9fSwibW9iaWxldXNlciI6eyJpZCI6MTcsIm5pY2tuYW1lIjoiXHU5ODdlXHU1YmEyIiwiYXZhdGFyIjoibW9yZW4ucG5nIiwibW9iaWxlIjoiMTIzNDU2Nzg5MDEiLCJzdGF0dXMiOjF9LCJ3ZWJ1c2VyIjp7ImlkIjoxLCJ1c2VybmFtZSI6InpoYW5nc2FuIiwibmlja25hbWUiOiJcdTVmMjBcdTRlMDkiLCJwYXNzd29yZF9oYXNoIjoiMWUxOTFkODUxYjNiNDlhMjQ4ZjRlYTYyZjZiMDY0MTAiLCJwYXNzd29yZF9zYWx0IjoiMTIzNDU2Iiwic3RhdHVzIjo2LCJjcmVhdGVfYXQiOiIyMDIwLTA3LTA4IDE4OjE4OjE4IiwidXBkYXRlX2F0IjoiMjAyMC0wNy0yMiAwODowNjo1NSJ9LCJ0b3RhbF9tb25leSI6MH0=','2020-09-11 14:24:50.935008');

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '会员表id',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `mobile` varchar(50) DEFAULT NULL COMMENT '电话',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态:1正常/2禁用/9删除',
  `create_at` datetime DEFAULT NULL COMMENT '添加时间',
  `update_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `member` */

insert  into `member`(`id`,`nickname`,`avatar`,`mobile`,`status`,`create_at`,`update_at`) values 
(17,'顾客','moren.png','12345678901',1,'2020-08-25 17:58:06','2020-08-25 17:58:06'),
(18,'顾客','moren.png','12345678908',1,'2020-08-25 18:04:04','2020-08-25 18:04:04'),
(19,'顾客','moren.png','1234567808',1,'2020-08-25 18:41:13','2020-08-25 18:41:13');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

/*Table structure for table `order_detail` */

DROP TABLE IF EXISTS `order_detail`;

CREATE TABLE `order_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单详情id',
  `order_id` int(10) unsigned DEFAULT NULL COMMENT '订单id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT '菜品id',
  `product_name` varchar(50) DEFAULT NULL COMMENT '菜品名称',
  `price` double(6,2) unsigned DEFAULT NULL COMMENT '单价',
  `quantity` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '数量',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态:1正常/9删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='订单详情信息表';

/*Data for the table `order_detail` */

insert  into `order_detail`(`id`,`order_id`,`product_id`,`product_name`,`price`,`quantity`,`status`) values 
(36,16,1,'红烧肉+狮子头+饮料',25.00,1,1),
(37,16,6,'木须肉饭',16.00,1,1),
(38,16,14,'王老吉',6.00,2,1),
(39,17,5,'梅菜扣肉饭',19.00,1,1),
(40,17,13,'番茄蛋花汤',4.00,1,1),
(41,18,7,'肥牛饭',19.00,1,1),
(42,18,8,'无骨咖喱鸡饭',18.00,1,1),
(43,18,13,'番茄蛋花汤',4.00,1,1),
(44,18,16,'矿泉水',3.00,1,1),
(45,19,3,'梅菜扣肉+番茄鸡蛋',22.00,1,1),
(46,19,12,'单份香辣笋干烧肉',15.00,1,1),
(47,20,5,'梅菜扣肉饭',19.00,1,1),
(48,20,13,'番茄蛋花汤',4.00,1,1),
(49,21,4,'肥牛+番茄鸡蛋',22.00,1,1),
(50,21,15,'果粒橙',5.00,1,1),
(51,22,2,'红烧肉+番茄鸡蛋',22.00,1,1),
(52,22,11,'青菜',4.00,1,1),
(53,22,15,'果粒橙',5.00,2,1),
(54,23,1,'红烧肉+狮子头+饮料',25.00,1,1),
(55,23,10,'番茄鸡蛋',4.00,1,1),
(56,23,14,'王老吉',6.00,1,1),
(57,24,3,'梅菜扣肉+番茄鸡蛋',22.00,1,1),
(58,24,11,'青菜',4.00,1,1),
(59,24,14,'王老吉',6.00,2,1),
(60,25,4,'肥牛+番茄鸡蛋',22.00,1,1),
(61,25,15,'果粒橙',5.00,2,1),
(62,25,12,'单份香辣笋干烧肉',15.00,1,1),
(63,26,2,'红烧肉+番茄鸡蛋',22.00,1,1),
(64,26,11,'青菜',4.00,1,1),
(65,26,17,'乌梅汁',4.00,2,1),
(66,27,6,'木须肉饭',16.00,1,1),
(67,27,12,'单份香辣笋干烧肉',15.00,1,1),
(68,27,16,'矿泉水',3.00,2,1);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单表id',
  `shop_id` int(10) unsigned DEFAULT NULL COMMENT '店铺id号',
  `member_id` int(10) unsigned DEFAULT NULL COMMENT '会员id',
  `user_id` int(10) unsigned DEFAULT NULL COMMENT '操作员id',
  `money` double(8,2) DEFAULT NULL COMMENT '金额',
  `status` tinyint(3) unsigned DEFAULT NULL COMMENT '订单状态:1过行中/2无效/3已完成',
  `payment_status` tinyint(3) unsigned DEFAULT NULL COMMENT '支付状态:1未支付/2已支付/3已退款',
  `create_at` datetime DEFAULT NULL COMMENT '添加时间',
  `update_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`id`,`shop_id`,`member_id`,`user_id`,`money`,`status`,`payment_status`,`create_at`,`update_at`) values 
(16,1,0,1,53.00,3,2,'2020-08-20 03:49:01','2020-08-20 03:49:01'),
(17,1,0,1,23.00,3,2,'2020-08-20 03:49:59','2020-08-20 03:49:59'),
(18,1,0,1,44.00,2,2,'2020-08-25 02:13:47','2020-08-25 02:13:47'),
(19,1,0,2,37.00,1,2,'2020-08-25 03:17:49','2020-08-25 03:17:49'),
(20,1,0,2,23.00,3,2,'2020-08-25 03:31:52','2020-08-25 03:31:52'),
(21,1,0,2,27.00,2,2,'2020-08-25 04:29:18','2020-08-25 04:29:18'),
(22,1,0,2,36.00,3,2,'2020-08-25 05:11:12','2020-08-25 05:11:12'),
(23,1,17,0,35.00,3,2,'2020-08-27 14:30:49','2020-08-27 14:30:49'),
(24,1,17,0,38.00,3,2,'2020-08-27 18:26:54','2020-08-27 18:26:54'),
(25,1,18,0,47.00,1,2,'2020-08-28 02:36:46','2020-08-28 02:36:46'),
(26,1,17,0,34.00,1,2,'2020-08-28 05:19:35','2020-08-28 05:19:35'),
(27,1,17,0,37.00,1,2,'2020-08-28 05:24:00','2020-08-28 05:24:00');

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '支付表id',
  `order_id` int(10) unsigned DEFAULT NULL COMMENT '订单id',
  `member_id` int(10) unsigned DEFAULT NULL COMMENT '会员id',
  `money` double(8,2) unsigned DEFAULT NULL COMMENT '支付金额',
  `type` tinyint(3) unsigned DEFAULT NULL COMMENT '付款方式：1会员付款/2收银收款',
  `bank` tinyint(3) unsigned DEFAULT NULL COMMENT '收款银行渠道:1微信/2余额/3现金/4支付宝',
  `status` tinyint(3) unsigned DEFAULT NULL COMMENT '支付状态:1未支付/2已支付/3已退款',
  `create_at` datetime DEFAULT NULL COMMENT '添加时间',
  `update_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

/*Data for the table `payment` */

insert  into `payment`(`id`,`order_id`,`member_id`,`money`,`type`,`bank`,`status`,`create_at`,`update_at`) values 
(14,16,0,53.00,2,2,2,'2020-08-20 03:49:01','2020-08-20 03:49:01'),
(15,17,0,23.00,2,1,2,'2020-08-20 03:49:59','2020-08-20 03:49:59'),
(16,18,0,44.00,2,1,2,'2020-08-25 02:13:47','2020-08-25 02:13:47'),
(17,19,0,37.00,2,1,2,'2020-08-25 03:17:49','2020-08-25 03:17:49'),
(18,20,0,23.00,2,1,2,'2020-08-25 03:31:52','2020-08-25 03:31:52'),
(19,21,0,27.00,2,1,2,'2020-08-25 04:29:18','2020-08-25 04:29:18'),
(20,22,0,36.00,2,1,2,'2020-08-25 05:11:12','2020-08-25 05:11:12'),
(21,23,0,35.00,2,1,2,'2020-08-27 14:30:50','2020-08-27 14:30:50'),
(22,24,0,38.00,2,4,2,'2020-08-27 18:26:54','2020-08-27 18:26:54'),
(23,25,0,47.00,2,4,2,'2020-08-28 02:36:46','2020-08-28 02:36:46'),
(24,26,17,34.00,2,1,2,'2020-08-28 05:19:35','2020-08-28 05:19:35'),
(25,27,17,37.00,2,4,2,'2020-08-28 05:24:00','2020-08-28 05:24:00');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜品id',
  `shop_id` int(11) DEFAULT NULL COMMENT '店铺id',
  `category_id` int(11) DEFAULT NULL COMMENT '菜品分类id',
  `cover_pic` varchar(50) DEFAULT NULL COMMENT '菜品图片',
  `name` varchar(50) DEFAULT NULL COMMENT '菜品名称',
  `price` double(6,2) DEFAULT NULL COMMENT '单价',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态：1:正常  2:停售  9:删除',
  `create_at` datetime DEFAULT NULL COMMENT '添加时间',
  `update_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`id`,`shop_id`,`category_id`,`cover_pic`,`name`,`price`,`status`,`create_at`,`update_at`) values 
(1,1,1,'1536657620.5485704.jpg','红烧肉+狮子头+饮料',25.00,1,'2020-07-11 09:20:20','2020-07-25 10:20:30'),
(2,1,1,'1536658352.9341557.jpg','红烧肉+番茄鸡蛋',22.00,1,'2020-07-11 09:32:32','2020-07-25 10:20:30'),
(3,1,1,'1536658415.6838002.jpg','梅菜扣肉+番茄鸡蛋',22.00,1,'2020-07-11 09:33:35','2020-07-25 10:20:30'),
(4,1,1,'1536658574.2847373.jpg','肥牛+番茄鸡蛋',22.00,1,'2020-07-11 09:36:14','2020-07-25 10:20:30'),
(5,1,2,'1536658659.0446993.jpg','梅菜扣肉饭',19.00,1,'2020-07-11 09:37:39','2020-07-25 10:20:30'),
(6,1,2,'1536658824.3976505.jpg','木须肉饭',16.00,1,'2020-07-11 09:40:24','2020-07-25 10:20:30'),
(7,1,2,'1536658863.6732855.jpg','肥牛饭',19.00,1,'2020-07-11 09:41:03','2020-07-25 10:20:30'),
(8,1,2,'1536658960.3954134.jpg','无骨咖喱鸡饭',18.00,1,'2020-07-11 09:42:40','2020-07-25 10:20:30'),
(9,1,3,'1536659114.0440235.jpg','木须肉',12.00,1,'2020-07-11 09:44:25','2020-07-25 10:20:30'),
(10,1,3,'1536659065.7972637.jpg','番茄鸡蛋',4.00,1,'2020-07-11 09:45:14','2020-07-25 10:20:30'),
(11,1,3,'1536659197.7231221.jpg','青菜',4.00,1,'2020-07-11 09:46:37','2020-07-25 10:20:30'),
(12,1,3,'1536659253.8842716.jpg','单份香辣笋干烧肉',15.00,1,'2020-07-11 09:47:33','2020-07-25 10:20:30'),
(13,1,4,'1536659311.8699493.jpg','番茄蛋花汤',4.00,1,'2020-07-11 09:48:31','2020-07-25 10:20:30'),
(14,1,4,'1536659364.7892513.jpg','王老吉',6.00,1,'2020-07-11 09:49:24','2020-07-25 10:20:30'),
(15,1,4,'1536659563.3897648.jpg','果粒橙',5.00,1,'2020-07-11 09:52:43','2020-07-25 10:20:30'),
(16,1,4,'1536659605.5561771.jpg','矿泉水',3.00,1,'2020-07-11 09:53:25','2020-07-25 10:20:30'),
(17,1,4,'1536659688.4856157.jpg','乌梅汁',4.00,1,'2020-07-11 09:54:48','2020-07-25 10:20:30'),
(18,2,7,'1536659065.7972636.jpg','番茄鸡蛋',4.00,1,'2020-07-04 06:17:18','2020-07-25 10:20:30'),
(19,3,10,'1536658666.8341557.jpg','红烧肉+西红柿鸡蛋',24.00,1,'2020-07-06 08:46:28','2020-07-25 07:34:07'),
(20,3,9,'1597691520.3296523.png','小米盖饭',22.00,1,'2020-08-17 18:58:13','2020-08-17 19:12:00');

/*Table structure for table `shop` */

DROP TABLE IF EXISTS `shop`;

CREATE TABLE `shop` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '店铺id',
  `name` varchar(255) NOT NULL COMMENT '店铺名称',
  `cover_pic` varchar(255) DEFAULT NULL COMMENT '封面图片',
  `banner_pic` varchar(255) DEFAULT NULL COMMENT '图标Logo',
  `address` varchar(255) DEFAULT NULL COMMENT '店铺地址',
  `phone` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：1:正常 2:暂停 9:删除',
  `create_at` datetime DEFAULT NULL COMMENT '添加时间',
  `update_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `shop` */

insert  into `shop`(`id`,`name`,`cover_pic`,`banner_pic`,`address`,`phone`,`status`,`create_at`,`update_at`) values 
(1,'田老师红烧肉-朝阳将台路店','12341234.jpg','lg.jpg','北京市朝阳区将台乡东八间房村西临8号','12345678905',1,'2020-07-20 10:12:34','2020-07-24 12:34:56'),
(2,'田老师红烧肉-海淀区上地店','57892456.jpg','lg.jpg','北京市海定区上地三街嘉华大厦A座10号','13456789209',1,'2020-07-21 12:23:45','2020-07-22 20:42:16'),
(3,'田老师红烧肉-西城玉渊潭店','23454567.jpg','lg.jpg','北京市宣武区玉渊潭南路东123号','12345677654',1,'2020-07-24 08:20:32','2020-08-15 10:33:08'),
(6,'庆丰包子铺-上地102分店','1596289879.2001154.jpg','1596289879.201115.png','上地三街','1234567889',2,'2020-08-01 13:51:19','2020-08-01 13:57:12');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '员工账号id',
  `username` varchar(50) DEFAULT NULL COMMENT '员工账号',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `password_hash` varchar(100) DEFAULT NULL COMMENT '密码',
  `password_salt` varchar(50) DEFAULT NULL COMMENT '密码干扰值',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态:1正常/2禁用/9删除',
  `create_at` datetime DEFAULT NULL COMMENT '创建时间',
  `update_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`nickname`,`password_hash`,`password_salt`,`status`,`create_at`,`update_at`) values 
(1,'zhangsan','张三','1e191d851b3b49a248f4ea62f6b06410','123456',6,'2020-07-08 18:18:18','2020-07-22 08:06:55'),
(2,'lisi','李四','1e191d851b3b49a248f4ea62f6b06410','123456',1,'2020-07-18 08:08:18','2020-07-22 16:21:18'),
(3,'xiaoli','小李子','c8a7ca8b274f29cf2c1147a8e0f685a4','639776',6,'2020-07-07 07:53:57','2020-07-08 20:18:18'),
(4,'zhangwuji','张无忌','cbb748964d243e38f032b78886db824c','437809',9,'2020-02-18 09:06:54','2020-01-14 03:36:25'),
(5,'zhaomin','赵敏','27c744b428b997675c4383e7eae974c3','486570',2,'2020-02-18 09:07:40','2020-02-18 09:07:40'),
(6,'cuihua','翠花','b5a7379148116549de083f5076233bef','810418',2,'2020-02-18 09:08:35','2020-03-08 20:18:09'),
(7,'zhangle','张乐','7177bd35ad232f0830fe5c10dcc24b1c','350013',2,'2020-02-19 06:11:16','2020-02-19 12:33:19'),
(8,'uu01','小优','a0811c52452216c63e52da04337e9216','268818',1,'2020-01-03 10:27:04','2020-01-03 10:27:04'),
(9,'uu02','小优2','56322ead3e2371636ac2395c8399297f','112245',1,'2020-01-03 10:37:37','2020-01-03 10:37:37'),
(10,'uu03','小优3','8e7d0c4077c73ad60c23367625d4346f','238764',1,'2020-01-03 11:24:48','2020-01-03 11:24:48'),
(11,'uu04','小优4','5eec167b09ea13497843274969460d67','642960',1,'2020-01-03 11:27:00','2020-01-03 11:27:00'),
(12,'uu123','小优','5c2e9f69b05413b806dc6951b0f86e51','102905',1,'2020-01-13 23:51:01','2020-01-13 23:51:01'),
(13,'uu666','小优3','99e89e8245d9f6f0628b5a59299bd9f7','673778',1,'2020-01-13 23:52:13','2020-01-13 23:52:13'),
(14,'mm','小美','05775bb481d11f0648b158cd40a7929c','627985',1,'2020-01-14 01:25:57','2020-01-14 01:25:57'),
(15,'zhangsan123','张师傅','ac40ef8e32a9258979765542d7cc570e','947592',6,'2020-07-30 18:50:13','2020-07-30 19:12:42'),
(16,'abc','张师傅','8802c65a173d1abdd6690fb22dc90f4a','849502',1,'2020-08-01 11:18:10','2020-08-01 11:19:01');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
