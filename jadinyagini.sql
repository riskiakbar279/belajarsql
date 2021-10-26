CREATE DATABASE `akuganteng` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `akuganteng`;

DROP TABLE IF EXISTS `m_message`;
CREATE TABLE `m_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO `m_message` (`id`, `name`, `email`, `phone`, `message`, `time`) VALUES
(1,	'riskiakbar279',	'kangcilok@rusia.gov',	'+1446383444',	'saya belajar buat database nih',	'2018-09-17 13:25:55');

DROP TABLE IF EXISTS `m_post`;
CREATE TABLE `m_post` (
  `id_post` int(11) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_post`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO `m_post` (`id_post`, `post_title`, `post_body`, `user`) VALUES
(1,	'belajar awal nih :)',	'<p>saya bodoh nih gak ngerti-ngerti</p>','admin');


DROP TABLE IF EXISTS `m_user`;
CREATE TABLE `m_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `m_user` (`id`, `username`, `password`, `profile`) VALUES
(1,	'admin',	'passnyamd5/sh1/base64/b32',	'');



