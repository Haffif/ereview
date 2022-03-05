-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 05, 2022 at 08:24 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ereview`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

DROP TABLE IF EXISTS `artikel`;
CREATE TABLE IF NOT EXISTS `artikel` (
  `id_artikel` bigint(20) NOT NULL AUTO_INCREMENT,
  `judul` varchar(150) NOT NULL,
  `penulis` varchar(150) NOT NULL,
  `kata_kunci` varchar(100) NOT NULL,
  `bidang_ilmu` varchar(50) NOT NULL,
  `jumlah_kata` bigint(20) NOT NULL,
  `artikel` varchar(50) DEFAULT NULL,
  `deadline` date NOT NULL,
  `id_reviewer` bigint(20) NOT NULL,
  `id_editor` bigint(20) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NULL DEFAULT NULL,
  `sts_artikel` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_artikel`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `editor`
--

DROP TABLE IF EXISTS `editor`;
CREATE TABLE IF NOT EXISTS `editor` (
  `id_editor` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama_editor` varchar(50) NOT NULL,
  `email_editor` varchar(100) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NULL DEFAULT NULL,
  `sts_editor` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_editor`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `makelar`
--

DROP TABLE IF EXISTS `makelar`;
CREATE TABLE IF NOT EXISTS `makelar` (
  `id_makelar` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama_makelar` varchar(50) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NULL DEFAULT NULL,
  `sts_makelar` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_makelar`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `id_member` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_user` bigint(20) NOT NULL,
  `id_grup` bigint(20) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NULL DEFAULT NULL,
  `sts_member` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_member`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

DROP TABLE IF EXISTS `pembayaran`;
CREATE TABLE IF NOT EXISTS `pembayaran` (
  `id_pembayaran` bigint(20) NOT NULL AUTO_INCREMENT,
  `harga` varchar(50) NOT NULL,
  `bukti_pembayaran` varchar(50) NOT NULL,
  `id_artikel` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL,
  `sts_pembayaran` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_pembayaran`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

DROP TABLE IF EXISTS `progress`;
CREATE TABLE IF NOT EXISTS `progress` (
  `id_progress` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_artikel` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL,
  `sts_progress` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_progress`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviewer`
--

DROP TABLE IF EXISTS `reviewer`;
CREATE TABLE IF NOT EXISTS `reviewer` (
  `id_reviewer` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama_reviewer` varchar(50) NOT NULL,
  `email_reviewer` varchar(100) NOT NULL,
  `bidang_ahli` varchar(150) NOT NULL,
  `no_rek` varchar(50) NOT NULL,
  `nama_bank` varchar(50) NOT NULL,
  `balance` varchar(50) NOT NULL DEFAULT '0',
  `id_user` bigint(20) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NULL DEFAULT NULL,
  `sts_reviewer` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_reviewer`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id_user` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pwd` varchar(256) NOT NULL,
  `email` varchar(100) NOT NULL,
  `photo` varchar(256) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NULL DEFAULT NULL,
  `sts_user` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
