-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2017 at 04:57 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hbbadmin`
--
CREATE DATABASE IF NOT EXISTS `hbbadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `hbbadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `hbb_brand`
--

DROP TABLE IF EXISTS `hbb_brand`;
CREATE TABLE IF NOT EXISTS `hbb_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hbb_brand_translation`
--

DROP TABLE IF EXISTS `hbb_brand_translation`;
CREATE TABLE IF NOT EXISTS `hbb_brand_translation` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `brand_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hbb_collection`
--

DROP TABLE IF EXISTS `hbb_collection`;
CREATE TABLE IF NOT EXISTS `hbb_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `stat` int(11) NOT NULL,
  `avatar` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hbb_collection_translation`
--

DROP TABLE IF EXISTS `hbb_collection_translation`;
CREATE TABLE IF NOT EXISTS `hbb_collection_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `collection_name` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hbb_contact`
--

DROP TABLE IF EXISTS `hbb_contact`;
CREATE TABLE IF NOT EXISTS `hbb_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_email` varchar(100) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `message` text NOT NULL,
  `send_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  `from_id_address` varchar(20) NOT NULL,
  `current_language` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hbb_country`
--

DROP TABLE IF EXISTS `hbb_country`;
CREATE TABLE IF NOT EXISTS `hbb_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hbb_country_translation`
--

DROP TABLE IF EXISTS `hbb_country_translation`;
CREATE TABLE IF NOT EXISTS `hbb_country_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `country_name` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hbb_label_in_site`
--

DROP TABLE IF EXISTS `hbb_label_in_site`;
CREATE TABLE IF NOT EXISTS `hbb_label_in_site` (
  `label_key` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`label_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hbb_label_translate`
--

DROP TABLE IF EXISTS `hbb_label_translate`;
CREATE TABLE IF NOT EXISTS `hbb_label_translate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  `label_value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hbb_language`
--

DROP TABLE IF EXISTS `hbb_language`;
CREATE TABLE IF NOT EXISTS `hbb_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_language`
--

INSERT INTO `hbb_language` (`id`, `language`, `created_at`, `updated_at`) VALUES
(1, 'Vietnamese', '2017-07-09 10:40:44', '2017-07-09 03:40:44'),
(2, 'English', '2017-07-06 17:00:00', '2017-07-06 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hbb_menu`
--

DROP TABLE IF EXISTS `hbb_menu`;
CREATE TABLE IF NOT EXISTS `hbb_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parrent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(2) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_menu`
--

INSERT INTO `hbb_menu` (`id`, `parrent_id`, `created_at`, `update_at`, `status`, `sort_order`) VALUES
(1, 0, '2017-07-06 17:00:00', '2017-07-06 17:00:00', 1, 1),
(2, 0, '2017-07-06 17:00:00', '2017-07-06 17:00:00', 1, 2),
(4, 0, '2017-07-07 08:46:27', '2017-07-07 08:46:27', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `hbb_menu_translation`
--

DROP TABLE IF EXISTS `hbb_menu_translation`;
CREATE TABLE IF NOT EXISTS `hbb_menu_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(50) NOT NULL,
  `slug` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_menu_translation`
--

INSERT INTO `hbb_menu_translation` (`id`, `language_id`, `menu_id`, `menu_name`, `slug`, `created_at`, `update_at`) VALUES
(1, 1, 1, 'Kiểm tra', 'kiem-tra', '2017-07-09 10:28:07', '2017-07-09 03:28:07'),
(2, 2, 1, 'Test', 'test', '2017-07-09 10:28:08', '2017-07-09 03:28:08'),
(3, 1, 2, 'Hướng dẫn', 'huong-dan', '2017-07-09 10:28:17', '2017-07-09 03:28:17'),
(4, 2, 2, 'Tutorial', 'tutorial', '2017-07-09 10:28:17', '2017-07-09 03:28:17'),
(5, 1, 4, 'Xin chao', 'xin-chao', '2017-07-09 10:27:58', '2017-07-09 03:27:58'),
(6, 2, 4, 'Hello', 'hello', '2017-07-09 10:27:58', '2017-07-09 03:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `hbb_permission`
--

DROP TABLE IF EXISTS `hbb_permission`;
CREATE TABLE IF NOT EXISTS `hbb_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission` varchar(100) NOT NULL,
  `link` text NOT NULL,
  `note` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_permission`
--

INSERT INTO `hbb_permission` (`id`, `permission`, `link`, `note`) VALUES
(1, 'System permission', 'admin/system-permission', 'Update'),
(2, 'System config', 'admin/system-config', 'Update'),
(3, 'System language', 'admin/system-language', 'Create, Edit, Delete, View list'),
(4, 'Menu management', '1-menu-management', 'Create, Edit, Delete, View list'),
(6, 'asdf', '1499610983.png', 'ac');

-- --------------------------------------------------------

--
-- Table structure for table `hbb_products`
--

DROP TABLE IF EXISTS `hbb_products`;
CREATE TABLE IF NOT EXISTS `hbb_products` (
  `id` int(11) NOT NULL,
  `avatar` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `collection_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `brand_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hbb_slider`
--

DROP TABLE IF EXISTS `hbb_slider`;
CREATE TABLE IF NOT EXISTS `hbb_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hbb_system_config`
--

DROP TABLE IF EXISTS `hbb_system_config`;
CREATE TABLE IF NOT EXISTS `hbb_system_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` text NOT NULL,
  `facebook_link` text NOT NULL,
  `twiter_link` text NOT NULL,
  `googleplus_link` text NOT NULL,
  `linked_link` text NOT NULL,
  `youtube_link` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `hotline` varchar(15) NOT NULL,
  `google_analytic` text NOT NULL,
  `system_theme` varchar(255) NOT NULL,
  `system_favicon` varchar(255) NOT NULL,
  `orther` varchar(255) NOT NULL,
  `seo_description` text NOT NULL,
  `seo_keyword` text NOT NULL,
  `seo_title` text NOT NULL,
  `seo_author` int(11) NOT NULL,
  `system_email` varchar(50) NOT NULL,
  `system_password_email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_system_config`
--

INSERT INTO `hbb_system_config` (`id`, `logo`, `facebook_link`, `twiter_link`, `googleplus_link`, `linked_link`, `youtube_link`, `email`, `phone_number`, `hotline`, `google_analytic`, `system_theme`, `system_favicon`, `orther`, `seo_description`, `seo_keyword`, `seo_title`, `seo_author`, `system_email`, `system_password_email`) VALUES
(1, '123123', '123123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', 123, '123234', '123');

-- --------------------------------------------------------

--
-- Table structure for table `hbb_user`
--

DROP TABLE IF EXISTS `hbb_user`;
CREATE TABLE IF NOT EXISTS `hbb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `avatar` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remember_token` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_user`
--

INSERT INTO `hbb_user` (`id`, `username`, `email`, `password`, `fullname`, `avatar`, `status`, `create_at`, `update_at`, `remember_token`) VALUES
(1, 'thangle', 'lecongthang454@gmail.com', '123123', 'Lê Công Thăng', '', 1, '2017-07-06 17:00:00', '2017-07-06 17:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `hbb_user_permission`
--

DROP TABLE IF EXISTS `hbb_user_permission`;
CREATE TABLE IF NOT EXISTS `hbb_user_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
