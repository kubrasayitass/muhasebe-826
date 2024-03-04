-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.4.21-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- muhasebe için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `muhasebe` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `muhasebe`;

-- tablo yapısı dökülüyor muhasebe.butce
CREATE TABLE IF NOT EXISTS `butce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanim` varchar(20) NOT NULL DEFAULT '0',
  `tur_id` int(11) NOT NULL DEFAULT 0,
  `Sütun 4` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK_butce_tur` (`tur_id`),
  CONSTRAINT `FK_butce_tur` FOREIGN KEY (`tur_id`) REFERENCES `tur` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Veri çıktısı seçilmemişti

-- tablo yapısı dökülüyor muhasebe.tur
CREATE TABLE IF NOT EXISTS `tur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(20) NOT NULL DEFAULT '0',
  `durum` varchar(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Veri çıktısı seçilmemişti

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
