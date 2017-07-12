-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 11, 2017 at 05:41 PM
-- Server version: 10.0.31-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wine_center`
--

-- --------------------------------------------------------

--
-- Table structure for table `hbb_brand`
--

CREATE TABLE `hbb_brand` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_brand`
--

INSERT INTO `hbb_brand` (`id`, `created_at`, `updated_at`, `status`) VALUES
(1, '2017-07-11 09:59:17', '2017-07-11 06:29:25', 1),
(2, '2017-07-11 09:59:17', '2017-07-11 05:31:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hbb_brand_translation`
--

CREATE TABLE `hbb_brand_translation` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_brand_translation`
--

INSERT INTO `hbb_brand_translation` (`id`, `language_id`, `brand_id`, `brand_name`, `slug`) VALUES
(1, 1, 1, 'Tanizzi', 'tanizzi'),
(2, 2, 1, 'Tanizzi', 'tanizzi'),
(3, 1, 2, 'Astoria', 'astoria'),
(4, 2, 2, 'Astoria', 'astoria');

-- --------------------------------------------------------

--
-- Table structure for table `hbb_collection`
--

CREATE TABLE `hbb_collection` (
  `id` int(11) NOT NULL,
  `parrent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(11) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_collection`
--

INSERT INTO `hbb_collection` (`id`, `parrent_id`, `created_at`, `updated_at`, `status`, `avatar`) VALUES
(1, 0, '2017-07-11 04:28:17', '2017-07-11 04:27:18', 1, 'collections.jpg'),
(2, 0, '2017-07-11 04:34:25', '2017-07-11 04:38:29', 1, 'red-wine.jpg'),
(3, 0, '2017-07-11 04:34:25', '2017-07-11 07:30:28', 1, 'white-wine.jpg'),
(4, 1, '2017-07-11 09:28:18', '2017-07-11 04:26:00', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `hbb_collection_translation`
--

CREATE TABLE `hbb_collection_translation` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `collection_name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_collection_translation`
--

INSERT INTO `hbb_collection_translation` (`id`, `language_id`, `collection_id`, `collection_name`) VALUES
(1, 1, 1, 'Vang Đỏ'),
(2, 2, 1, 'Red Wines'),
(3, 1, 2, 'Vang Ngọt'),
(4, 2, 1, 'Dessert Wines'),
(5, 1, 3, 'Vang Hồng'),
(6, 2, 3, 'Rose Wines'),
(7, 1, 4, 'Vang Đỏ Australia'),
(8, 1, 4, 'Red Wine Australia');

-- --------------------------------------------------------

--
-- Table structure for table `hbb_comment`
--

CREATE TABLE `hbb_comment` (
  `id` int(11) NOT NULL,
  `language_current` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hbb_contact`
--

CREATE TABLE `hbb_contact` (
  `id` int(11) NOT NULL,
  `from_email` varchar(100) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `message` text NOT NULL,
  `send_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  `from_id_address` varchar(20) NOT NULL,
  `current_language` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hbb_country`
--

CREATE TABLE `hbb_country` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_country`
--

INSERT INTO `hbb_country` (`id`, `created_at`, `updated_at`, `status`) VALUES
(1, '2017-07-11 10:10:17', '2017-07-11 04:30:30', 1),
(2, '2017-07-11 10:10:17', '2017-07-11 01:25:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hbb_country_translation`
--

CREATE TABLE `hbb_country_translation` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_country_translation`
--

INSERT INTO `hbb_country_translation` (`id`, `language_id`, `country_id`, `country_name`) VALUES
(1, 1, 1, 'Pháp'),
(2, 2, 1, 'France'),
(3, 1, 2, 'Mỹ'),
(4, 2, 2, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `hbb_label_in_site`
--

CREATE TABLE `hbb_label_in_site` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hbb_label_translate`
--

CREATE TABLE `hbb_label_translate` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  `label_value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hbb_language`
--

CREATE TABLE `hbb_language` (
  `id` int(11) NOT NULL,
  `language` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `hbb_menu` (
  `id` int(11) NOT NULL,
  `parrent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(2) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_menu`
--

INSERT INTO `hbb_menu` (`id`, `parrent_id`, `created_at`, `update_at`, `status`, `sort_order`) VALUES
(1, 0, '2017-07-06 17:00:00', '2017-07-06 17:00:00', 1, 1),
(2, 0, '2017-07-06 17:00:00', '2017-07-06 17:00:00', 1, 2),
(4, 0, '2017-07-07 08:46:27', '2017-07-07 08:46:27', 1, 2),
(5, 0, '2017-07-11 07:24:57', '2017-07-11 06:32:31', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `hbb_menu_news`
--

CREATE TABLE `hbb_menu_news` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hbb_menu_news_translation`
--

CREATE TABLE `hbb_menu_news_translation` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `news_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hbb_menu_translation`
--

CREATE TABLE `hbb_menu_translation` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(50) NOT NULL,
  `slug` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_menu_translation`
--

INSERT INTO `hbb_menu_translation` (`id`, `language_id`, `menu_id`, `menu_name`, `slug`, `created_at`, `update_at`) VALUES
(1, 1, 1, 'Trang chủ', 'kiem-tra', '2017-07-11 07:17:24', '2017-07-09 03:28:07'),
(2, 2, 1, 'Home', 'test', '2017-07-11 07:17:29', '2017-07-09 03:28:08'),
(3, 1, 2, 'Sản phẩm', 'huong-dan', '2017-07-11 07:17:43', '2017-07-09 03:28:17'),
(4, 2, 2, 'Products', 'tutorial', '2017-07-11 07:17:50', '2017-07-09 03:28:17'),
(5, 1, 4, 'Kiến thức rượu vang', 'xin-chao', '2017-07-11 07:18:05', '2017-07-09 03:27:58'),
(6, 2, 4, 'Kiến thức rượu vang', 'hello', '2017-07-11 07:18:10', '2017-07-09 03:27:58'),
(7, 1, 5, 'Wine Center', 'wine-center', '2017-07-11 07:26:04', '2017-07-10 23:21:16'),
(8, 2, 5, 'Wine Center', 'wine-center', '2017-07-11 07:26:04', '2017-07-11 01:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `hbb_permission`
--

CREATE TABLE `hbb_permission` (
  `id` int(11) NOT NULL,
  `permission` varchar(100) NOT NULL,
  `link` text NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `hbb_products` (
  `id` int(11) NOT NULL,
  `avatar` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `collection_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `brand_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_products`
--

INSERT INTO `hbb_products` (`id`, `avatar`, `created_at`, `updated_at`, `collection_id`, `status`, `description`, `price`, `brand_id`, `country_id`) VALUES
(1, 'product.png', '2017-07-11 09:56:37', '2017-07-11 02:24:00', 4, 1, '213', 0.75, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hbb_products_translation`
--

CREATE TABLE `hbb_products_translation` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hbb_products_translation`
--

INSERT INTO `hbb_products_translation` (`id`, `language_id`, `product_id`, `product_name`, `product_content`, `slug`) VALUES
(1, 1, 1, 'The Gate 2010', '12321312', 'the-gate-2010'),
(2, 2, 1, 'The Gates 2010', '23213', 'the-gate-2010');

-- --------------------------------------------------------

--
-- Table structure for table `hbb_slider`
--

CREATE TABLE `hbb_slider` (
  `id` int(11) NOT NULL,
  `link` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sort_order` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_slider`
--

INSERT INTO `hbb_slider` (`id`, `link`, `status`, `created_at`, `updated_at`, `sort_order`) VALUES
(1, 'banner.jpg', 1, '2017-07-11 09:39:03', '2017-07-11 02:38:48', 1),
(2, 'banner.jpg', 1, '2017-07-11 10:36:39', '2017-07-11 03:36:55', 4),
(3, 'app.jpg', 1, '2017-07-11 10:36:52', '2017-07-11 03:37:08', 2),
(4, 'banner.jpg', 1, '2017-07-11 10:37:09', '2017-07-11 03:37:25', 5),
(5, 'Celin_before.jpg', 1, '2017-07-11 09:51:41', '2017-07-11 02:51:56', 8),
(6, 'Celin_before.jpg', 1, '2017-07-11 09:58:29', '2017-07-11 02:58:45', 10),
(7, '2.jpg', 1, '2017-07-11 03:40:18', '2017-07-11 03:40:18', 4);

-- --------------------------------------------------------

--
-- Table structure for table `hbb_subscribe`
--

CREATE TABLE `hbb_subscribe` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hbb_system_config`
--

CREATE TABLE `hbb_system_config` (
  `id` int(11) NOT NULL,
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
  `system_password_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_system_config`
--

INSERT INTO `hbb_system_config` (`id`, `logo`, `facebook_link`, `twiter_link`, `googleplus_link`, `linked_link`, `youtube_link`, `email`, `phone_number`, `hotline`, `google_analytic`, `system_theme`, `system_favicon`, `orther`, `seo_description`, `seo_keyword`, `seo_title`, `seo_author`, `system_email`, `system_password_email`) VALUES
(1, '123123', 'https://www.facebook.com/hbbsolutions/', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', '123', 123, '123234', '123');

-- --------------------------------------------------------

--
-- Table structure for table `hbb_user`
--

CREATE TABLE `hbb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `avatar` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remember_token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_user`
--

INSERT INTO `hbb_user` (`id`, `username`, `email`, `password`, `fullname`, `avatar`, `status`, `create_at`, `update_at`, `remember_token`) VALUES
(1, 'thangle', 'lecongthang454@gmail.com', '123123', 'Lê Công Thăng', '', 1, '2017-07-06 17:00:00', '2017-07-06 17:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `hbb_user_permission`
--

CREATE TABLE `hbb_user_permission` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hbb_brand`
--
ALTER TABLE `hbb_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_brand_translation`
--
ALTER TABLE `hbb_brand_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_collection`
--
ALTER TABLE `hbb_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_collection_translation`
--
ALTER TABLE `hbb_collection_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_comment`
--
ALTER TABLE `hbb_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_contact`
--
ALTER TABLE `hbb_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_country`
--
ALTER TABLE `hbb_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_country_translation`
--
ALTER TABLE `hbb_country_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_label_in_site`
--
ALTER TABLE `hbb_label_in_site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_label_translate`
--
ALTER TABLE `hbb_label_translate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_language`
--
ALTER TABLE `hbb_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_menu`
--
ALTER TABLE `hbb_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_menu_news`
--
ALTER TABLE `hbb_menu_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_menu_news_translation`
--
ALTER TABLE `hbb_menu_news_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_menu_translation`
--
ALTER TABLE `hbb_menu_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_permission`
--
ALTER TABLE `hbb_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_products`
--
ALTER TABLE `hbb_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_products_translation`
--
ALTER TABLE `hbb_products_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_slider`
--
ALTER TABLE `hbb_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_subscribe`
--
ALTER TABLE `hbb_subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_system_config`
--
ALTER TABLE `hbb_system_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_user`
--
ALTER TABLE `hbb_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_user_permission`
--
ALTER TABLE `hbb_user_permission`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hbb_brand`
--
ALTER TABLE `hbb_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hbb_brand_translation`
--
ALTER TABLE `hbb_brand_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hbb_collection`
--
ALTER TABLE `hbb_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hbb_collection_translation`
--
ALTER TABLE `hbb_collection_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `hbb_comment`
--
ALTER TABLE `hbb_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hbb_contact`
--
ALTER TABLE `hbb_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hbb_country`
--
ALTER TABLE `hbb_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hbb_country_translation`
--
ALTER TABLE `hbb_country_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hbb_label_in_site`
--
ALTER TABLE `hbb_label_in_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hbb_label_translate`
--
ALTER TABLE `hbb_label_translate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hbb_language`
--
ALTER TABLE `hbb_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hbb_menu`
--
ALTER TABLE `hbb_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `hbb_menu_news`
--
ALTER TABLE `hbb_menu_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hbb_menu_news_translation`
--
ALTER TABLE `hbb_menu_news_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hbb_menu_translation`
--
ALTER TABLE `hbb_menu_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `hbb_permission`
--
ALTER TABLE `hbb_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `hbb_products`
--
ALTER TABLE `hbb_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hbb_products_translation`
--
ALTER TABLE `hbb_products_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hbb_slider`
--
ALTER TABLE `hbb_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `hbb_subscribe`
--
ALTER TABLE `hbb_subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hbb_system_config`
--
ALTER TABLE `hbb_system_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hbb_user`
--
ALTER TABLE `hbb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hbb_user_permission`
--
ALTER TABLE `hbb_user_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
