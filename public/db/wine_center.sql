-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 20, 2017 at 05:33 PM
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
-- Table structure for table `hbb_address`
--

CREATE TABLE `hbb_address` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL,
  `sitemap` text NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_address`
--

INSERT INTO `hbb_address` (`id`, `created_at`, `updated_at`, `status`, `sitemap`, `phone`) VALUES
(1, '2017-07-20 02:20:18', '2017-07-19 19:21:13', 0, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.427256457597!2d105.83442831450526!3d21.05559098598386!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135aa5336ecba0d%3A0x90ccbc1c39bba25!2zMjQwIE5naGkgVMOgbSwgWcOqbiBQaOG7pSwgVMOieSBI4buTLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1500263813829', '0911 848 898'),
(2, '2017-07-13 09:25:31', '2017-07-13 02:00:00', 1, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.5689577936696!2d106.68382201435035!3d10.767665492327469!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f1870f21afb%3A0x74cc68285b0b0dd9!2zMjQ0IEPhu5FuZyBRdeG7s25oLCBOZ3V54buFbiBDxrAgVHJpbmgsIFF14bqtbiAxLCBI4buTIENow60gTWluaCwgVmlldG5hbQ!5e0!3m2!1sen!2sin!4v1499929541264', '0911 848 889'),
(3, '2017-07-20 06:45:00', '2017-07-19 23:45:04', 1, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3728.2237207282897!2d106.69043931450146!3d20.86303098608832!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314a7aeebe4c3c49%3A0xe82bbc98b9bbeca1!2zMTkgVHLhuqduIEtow6FuaCBExrAsIE3DoXkgVMahLCBOZ8O0IFF1eeG7gW4sIEjhuqNpIFBow7JuZywgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1500263916128', '01696855433');

-- --------------------------------------------------------

--
-- Table structure for table `hbb_address_translation`
--

CREATE TABLE `hbb_address_translation` (
  `id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `address_name` varchar(255) NOT NULL,
  `address_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_address_translation`
--

INSERT INTO `hbb_address_translation` (`id`, `address_id`, `language_id`, `address_name`, `address_content`) VALUES
(1, 1, 1, 'Hà Nội', '<p>240 Nghi T&agrave;m, H&agrave; Nội</p>'),
(2, 1, 2, 'Ha Noi', '<p>240 Nghi T&agrave;m, H&agrave; Nội</p>'),
(3, 2, 1, 'TP Hồ Chí Minh', '244 Cống Quỳnh, Phạm Ngũ Lão, Quận 1, Tp HCM'),
(4, 2, 2, 'Ho Chi Minh City', '244 Cống Quỳnh, Phạm Ngũ Lão, Quận 1, Tp HCM'),
(5, 3, 1, 'Hải Phòng', '<p>19 Trần Kh&aacute;nh Dư, Hải Ph&ograve;ng</p>'),
(6, 3, 2, 'Hai Phong', '<p>19 Trần Kh&aacute;nh Dư, Hải Ph&ograve;ng</p>'),
(7, 5, 1, 'Ninh Thuận', '<p>asdasd</p>'),
(8, 5, 2, 'Ninh Thuan', '<p>asdasd</p>');

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
(2, '2017-07-11 09:59:17', '2017-07-11 05:31:30', 1),
(3, '2017-07-18 02:08:31', '2017-07-17 22:14:00', 1);

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
(4, 2, 2, 'Astoria', 'astoria'),
(5, 1, 3, 'Việt Nam', 'viet-nam'),
(6, 2, 3, 'Viet Nam', 'viet-nam'),
(7, 1, 7, 'thổ nhĩ ki', 'tho-nhi-ki'),
(8, 2, 7, 'turkey', 'turkey');

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
(2, 5, '2017-07-17 10:02:39', '2017-07-11 04:38:29', 1, 'red-wine.jpg'),
(3, 0, '2017-07-17 10:03:38', '2017-07-11 07:30:28', 1, 'white-wine.jpg'),
(4, 1, '2017-07-11 09:28:18', '2017-07-11 04:26:00', 1, ''),
(5, 0, '2017-07-17 10:03:36', '0000-00-00 00:00:00', 1, 'white-wine.jpg'),
(6, 0, '2017-07-17 10:03:34', '0000-00-00 00:00:00', 1, 'red-wine.jpg'),
(7, 0, '2017-07-12 08:10:46', '0000-00-00 00:00:00', 1, 'collections.jpg'),
(8, 1, '2017-07-12 08:40:28', '2017-07-11 04:38:29', 1, 'red-wine.jpg'),
(9, 5, '2017-07-12 09:13:34', '2017-07-11 04:38:29', 1, 'red-wine.jpg'),
(10, 2, '2017-07-12 08:40:28', '2017-07-11 04:38:29', 1, 'red-wine.jpg'),
(11, 15, '2017-07-17 18:39:23', '2017-07-17 18:39:23', 1, 'default.jpg'),
(12, 5, '2017-07-17 07:28:56', '2017-07-16 17:22:48', 1, NULL),
(15, 5, '2017-07-18 01:48:35', '2017-07-17 18:48:32', 1, 'red-wine.jpg'),
(16, 1, '2017-07-18 19:14:02', '2017-07-18 19:14:02', 1, 'collections.jpg'),
(17, 5, '2017-07-18 19:15:30', '2017-07-18 19:15:30', 1, 'white-wine.jpg'),
(18, 6, '2017-07-18 19:17:11', '2017-07-18 19:17:11', 1, 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hbb_collection_translation`
--

CREATE TABLE `hbb_collection_translation` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `collection_name` varchar(225) NOT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_collection_translation`
--

INSERT INTO `hbb_collection_translation` (`id`, `language_id`, `collection_id`, `collection_name`, `slug`) VALUES
(1, 1, 1, 'Vang Đỏ', 'vang-do'),
(2, 2, 1, 'Red Wines', 'red-wines'),
(3, 1, 2, 'Vang Ngọt', 'vang-ngot'),
(4, 2, 2, 'Dessert Wines', 'dessert-wines'),
(5, 1, 3, 'Vang Hồng', 'vang-hong'),
(6, 2, 3, 'Rose Wines', 'rose-wines'),
(7, 1, 4, 'Vang Đỏ Australia', ''),
(8, 2, 4, 'Red Wine Australia', ''),
(9, 1, 5, 'Vang Trắng', 'vang-trang'),
(10, 2, 5, 'White wines', 'white-wines'),
(11, 1, 6, 'Vang Nổ', 'vang-no'),
(12, 2, 6, 'Sparkling wines', 'sparkling-wines'),
(13, 1, 7, 'Các dòng vang khác', 'cac-dong-vang-khac'),
(14, 2, 7, 'Others', 'others'),
(15, 1, 8, 'Rượu Vang Đỏ Ý', ''),
(16, 2, 8, 'Red Wines Italia', ''),
(17, 1, 9, 'Rượu Vang Trắng Hungary', ''),
(18, 2, 9, 'White Wines Hungary', ''),
(19, 1, 10, 'Rượu Ngọt  Ý', ''),
(20, 1, 10, 'Dessert Wines Italia', ''),
(21, 1, 11, 'Rượu Vang Trắng Italy', 'ruou-vang-trang-italy'),
(22, 2, 11, 'Rượu Vang Trắng Italy', 'ruou-vang-trang-italy'),
(23, 1, 12, 'Rượu Vang Trắng New Zealand', 'ruou-vang-trang-new-zealand'),
(24, 2, 12, 'Rượu Vang Trắng New Zealand', 'ruou-vang-trang-new-zealand'),
(29, 1, 15, 'rượu đỏ', 'ruou-do'),
(30, 2, 15, 'red wine', 'red-wine'),
(31, 1, 16, 'Vang đỏ Chile', 'vang-do-chile'),
(32, 2, 16, 'Red wines Chile', 'red-wines-chile'),
(33, 1, 17, 'Vang trắng Chile', 'vang-trang-chile'),
(34, 2, 17, 'White wines Chile', 'white-wines-chile'),
(35, 1, 18, 'Vang ngọt Hungary', 'vang-ngot-hungary'),
(36, 2, 18, 'Sparkling wines Hungary', 'sparkling-wines-hungary');

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
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL,
  `current_language` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_contact`
--

INSERT INTO `hbb_contact` (`id`, `name`, `phone`, `email`, `message`, `created_at`, `status`, `current_language`) VALUES
(1, 'kim123', '01696855433', 'thuykim0105@gmail.com', '231323', '2017-07-18 07:12:16', 0, 2);

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
(4, 2, 2, 'USA'),
(5, 1, 3, 'việt nam n'),
(6, 2, 3, 'viet nam');

-- --------------------------------------------------------

--
-- Table structure for table `hbb_label`
--

CREATE TABLE `hbb_label` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_label`
--

INSERT INTO `hbb_label` (`id`, `created_at`, `update_at`) VALUES
(1, '2017-07-13 09:29:10', '2017-07-12 17:12:00'),
(2, '2017-07-13 09:29:10', '2017-07-12 17:00:28'),
(3, '2017-07-13 09:29:22', '2017-07-13 03:00:00'),
(4, '2017-07-13 09:29:22', '2017-07-13 03:00:26'),
(5, '2017-07-13 09:43:53', '2017-07-13 03:00:00'),
(6, '2017-07-13 09:43:53', '2017-07-12 17:00:21'),
(7, '2017-07-13 09:44:12', '2017-07-13 01:18:00'),
(8, '2017-07-13 09:44:12', '2017-07-13 03:25:00'),
(9, '2017-07-13 09:44:28', '2017-07-13 04:28:00'),
(10, '2017-07-13 09:44:28', '2017-07-13 04:20:39'),
(11, '2017-07-13 09:47:51', '2017-07-13 00:23:26'),
(12, '2017-07-13 09:47:51', '2017-07-13 05:27:27'),
(13, '2017-07-13 09:56:34', '2017-07-21 03:00:00'),
(14, '2017-07-13 09:56:34', '2017-07-13 02:15:00'),
(15, '2017-07-13 10:00:26', '2017-07-13 03:23:00'),
(16, '2017-07-13 10:00:26', '2017-07-13 01:21:29'),
(17, '2017-07-13 10:03:46', '2017-07-13 00:23:28'),
(18, '2017-07-13 10:03:46', '2017-07-13 08:34:29'),
(19, '2017-07-13 10:08:20', '2017-07-13 06:26:45'),
(20, '2017-07-13 10:08:20', '2017-07-13 12:46:00'),
(21, '2017-07-17 08:44:24', '2017-07-17 03:42:00'),
(22, '2017-07-17 08:44:24', '2017-07-17 06:00:27'),
(23, '2017-07-17 08:46:26', '2017-07-17 03:28:32'),
(24, '2017-07-17 08:46:26', '2017-07-17 05:30:00'),
(25, '2017-07-17 08:46:35', '2017-07-17 04:38:00'),
(26, '2017-07-17 08:46:35', '2017-07-17 06:30:00'),
(27, '2017-07-17 09:00:24', '2017-07-17 06:23:00'),
(28, '2017-07-17 09:02:53', '2017-07-17 04:30:00'),
(29, '2017-07-17 09:04:06', '2017-07-17 01:23:00'),
(30, '2017-07-17 09:09:43', '2017-07-17 02:23:00'),
(31, '2017-07-17 09:09:55', '2017-07-17 02:24:00'),
(32, '2017-07-17 09:09:55', '2017-07-17 04:32:33'),
(33, '2017-07-17 09:10:08', '2017-07-17 04:29:30'),
(34, '2017-07-17 09:10:08', '2017-07-17 02:23:40'),
(35, '2017-07-17 09:15:21', '2017-07-17 02:28:00'),
(36, '2017-07-17 09:15:21', '2017-07-17 04:33:37'),
(37, '2017-07-18 02:08:55', '2017-07-18 01:23:26'),
(38, '2017-07-18 02:08:55', '2017-07-18 05:28:00'),
(39, '2017-07-18 02:09:04', '2017-07-18 02:23:29'),
(40, '2017-07-18 02:09:04', '2017-07-18 02:33:39'),
(41, '2017-07-18 02:09:14', '2017-07-18 05:29:00'),
(42, '2017-07-18 02:09:14', '2017-07-18 04:29:31'),
(43, '2017-07-18 02:09:23', '2017-07-18 02:23:33'),
(44, '2017-07-18 02:09:23', '2017-07-18 07:28:00');

-- --------------------------------------------------------

--
-- Table structure for table `hbb_label_translation`
--

CREATE TABLE `hbb_label_translation` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  `label_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_label_translation`
--

INSERT INTO `hbb_label_translation` (`id`, `language_id`, `label_id`, `label_name`) VALUES
(1, 1, 1, 'Theo thương hiệu'),
(2, 2, 1, 'By brand'),
(3, 1, 2, 'Theo mức giá'),
(4, 2, 2, 'By price'),
(5, 1, 3, 'Dòng vang'),
(6, 2, 3, 'Collection'),
(7, 1, 4, 'Xem tất cả'),
(8, 2, 4, 'View all'),
(9, 1, 5, 'Thường nhật'),
(10, 2, 5, 'Thuong Nhat'),
(11, 1, 6, 'Trung cấp'),
(12, 2, 6, 'Trung cap'),
(13, 1, 7, 'Cao cấp'),
(14, 2, 7, 'Cao cap'),
(15, 1, 8, 'Siêu cấp'),
(16, 2, 8, 'Sieu cap'),
(17, 1, 9, 'Thường nhật (dưới 0.75 triệu)'),
(18, 2, 9, 'Thuong nhat (duoi 0.75 trieu)'),
(19, 1, 10, 'Trung cấp (từ 0.75 tới 1.5 triệu)'),
(20, 2, 10, 'Trung cap (tu 0.75 toi 1.5 trieu)'),
(21, 1, 11, 'Cao cấp (từ 1.5 tới 3 triệu)'),
(22, 2, 11, 'Cao cap (tu 1.5 toi 3 trieu)'),
(23, 1, 12, 'Siêu cấp (trên 3 triệu)'),
(24, 2, 12, 'Sieu cap (tren 3 trieu)'),
(25, 1, 13, 'Thử rượu miễn phí'),
(26, 2, 13, 'Free Wine Tasting'),
(27, 1, 14, 'LIÊN HỆ VỚI CHÚNG TÔI'),
(28, 2, 14, 'CONTACT US'),
(29, 1, 15, 'ĐĂNG KÝ'),
(30, 2, 15, 'SUBSCRIBE'),
(31, 1, 16, 'Nhận bản tin Wine Center'),
(32, 2, 16, 'Nhan ban tin Wine Center'),
(33, 1, 17, 'NHẬP ĐỊA CHỈ EMAIL CỦA BẠN'),
(34, 2, 17, 'ENTER YOUR EMAIL'),
(35, 1, 18, 'Wine Center'),
(36, 2, 18, 'Wine Center'),
(37, 1, 19, '"Rượu Vang, là thức uống của tình yêu, là dòng chảy của trí tuệ, đưa con thuyền cảm xúc ra đại dương mênh mông bất tận".<br>\r\n            Trịnh Đức.'),
(38, 2, 19, '"Ruou Vang, la thuc uong cua tinh yeu, la dong chay cua tri tue, dua con thuyen cam xuc ra dai duong menh mong bat tan".<br>\r\n            Trinh Duc.'),
(39, 1, 20, '2017 All reserved by WINE CENTER | Privacy Policy'),
(40, 2, 20, '2017 All reserved by WINE CENTER | Privacy Policy'),
(41, 1, 21, 'Trang chủ'),
(42, 2, 21, 'Home'),
(43, 1, 22, 'Wine center'),
(44, 2, 22, 'Wine center'),
(45, 1, 23, 'Tất cả sản phẩm'),
(46, 2, 23, 'All product'),
(47, 1, 24, 'Danh Mục'),
(48, 2, 24, 'Menu'),
(49, 1, 25, 'Các sản phẩm khác cùng thể loại'),
(50, 2, 25, 'Cac san pham khac cung the loai'),
(51, 1, 26, 'Các tin tức cùng thể loại'),
(52, 2, 26, 'Cac tin tuc cung the loai'),
(53, 1, 27, 'Kiến thức rượu vang'),
(54, 2, 27, 'Kien thuc ruou vang'),
(55, 1, 28, 'Khám phá'),
(56, 2, 28, 'Kham pha'),
(57, 1, 29, 'Liên hệ'),
(58, 2, 29, 'Contact'),
(59, 1, 30, 'Gửi liên hệ'),
(60, 2, 30, 'Submit contact'),
(61, 1, 31, 'Tên của bạn'),
(62, 2, 31, 'Your name'),
(63, 1, 32, 'Email của bạn'),
(64, 2, 32, 'Your email'),
(65, 1, 33, 'Số điện thoại'),
(66, 2, 33, 'Phone number'),
(67, 1, 34, 'Nội dung liên hệ'),
(68, 2, 34, 'Content contact'),
(69, 1, 35, 'Nhập mã'),
(70, 2, 35, 'Enter key'),
(71, 1, 36, 'Gửi'),
(72, 2, 36, 'Submit'),
(73, 1, 37, 'Đăng ký thử rượu miễn phí'),
(74, 2, 37, 'Dang ky thu ruou mien phi'),
(75, 1, 38, 'Chọn chuyên gia'),
(76, 2, 38, 'Chon chuyen gia'),
(77, 1, 39, 'Chọn ngày giờ'),
(78, 2, 39, 'Chon ngay gio'),
(79, 1, 40, 'Hủy'),
(80, 2, 40, 'Cancel'),
(81, 1, 41, 'Yêu cầu khác'),
(82, 2, 41, 'Yeu cau khac'),
(83, 1, 42, 'Thông báo'),
(84, 2, 42, 'Notification'),
(85, 1, 43, 'Gửi thông tin thành công!'),
(86, 2, 43, 'Send info success'),
(87, 1, 44, 'Gửi thông tin thất bại!'),
(88, 2, 44, 'Send info error!');

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
(3, 0, '2017-07-13 05:01:26', '2017-07-07 08:46:27', 1, 2),
(4, 0, '2017-07-13 05:01:29', '2017-07-11 06:32:31', 1, 3);

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

--
-- Dumping data for table `hbb_menu_news`
--

INSERT INTO `hbb_menu_news` (`id`, `created_at`, `updated_at`, `status`) VALUES
(1, '2017-07-17 17:00:00', '2017-07-13 02:00:00', 1),
(2, '2017-07-13 02:27:40', '2017-07-12 23:17:32', 1),
(3, '2017-07-13 02:25:18', '2017-07-13 00:22:00', 1),
(4, '2017-07-12 22:32:30', '0000-00-00 00:00:00', 1),
(5, '2017-07-13 01:18:22', '2017-07-13 01:23:17', 1),
(6, '2017-07-13 02:21:20', '2017-07-13 05:31:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hbb_menu_news_translation`
--

CREATE TABLE `hbb_menu_news_translation` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `menu_news_id` int(11) NOT NULL,
  `menu_news_name` varchar(225) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_menu_news_translation`
--

INSERT INTO `hbb_menu_news_translation` (`id`, `language_id`, `menu_news_id`, `menu_news_name`, `slug`) VALUES
(1, 1, 1, 'Vùng trồng nho', 'vung-trong-nho'),
(2, 2, 1, 'Vung Trong Nho', 'vung-trong-nho'),
(3, 1, 2, 'Các giống nho', 'cac-giong-nho'),
(4, 2, 2, 'Cac giong nho', 'cac-giong-nho'),
(5, 1, 3, 'Hãng sản xuất', 'hang-san-xuat'),
(6, 2, 3, 'Hang san xuat', 'hang-san-xuat'),
(7, 1, 4, 'Nghệ thuật thưởng thức', 'nghe-thuat-thuong-thuc'),
(8, 2, 4, 'Nghe thuat thuong thuc', 'nghe-thuat-thuong-thuc'),
(9, 1, 5, 'Kể chuyện rượu vang', 'ke-chuyen-ruou-vang'),
(10, 2, 5, 'Ke chuyen ruou vang', 'ke-chuyen-ruou-vang'),
(11, 1, 6, 'Đất nước', 'dat-nuoc'),
(12, 2, 6, 'Dat nuoc', 'dat-nuoc'),
(13, 1, 7, 'kiểm tra aaa', 'kiem-tra-aaa'),
(14, 2, 7, 'kiem tra', 'kiem-tra');

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
(1, 1, 1, 'Trang chủ', 'trang-chu', '2017-07-12 09:16:42', '2017-07-09 03:28:07'),
(2, 2, 1, 'Home', 'home', '2017-07-12 09:16:45', '2017-07-09 03:28:08'),
(3, 1, 2, 'Sản phẩm', 'san-pham', '2017-07-12 09:16:25', '2017-07-09 03:28:17'),
(4, 2, 2, 'Products', 'products', '2017-07-12 09:16:32', '2017-07-09 03:28:17'),
(5, 1, 3, 'Kiến thức rượu vang', 'kien-thuc-ruou-vang', '2017-07-13 05:01:36', '2017-07-09 03:27:58'),
(6, 2, 3, 'Kiến thức rượu vang', 'kien-thuc-ruou-vang', '2017-07-13 05:01:39', '2017-07-09 03:27:58'),
(7, 1, 4, 'Wine Center', 'wine-center', '2017-07-17 02:08:01', '2017-07-16 12:08:00'),
(8, 2, 4, 'Wine Center', 'wine-center', '2017-07-17 02:08:01', '2017-07-16 12:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `hbb_news`
--

CREATE TABLE `hbb_news` (
  `id` int(11) NOT NULL,
  `menu_news_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `avatar` varchar(255) NOT NULL,
  `reviews` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_news`
--

INSERT INTO `hbb_news` (`id`, `menu_news_id`, `created_at`, `updated_at`, `avatar`, `reviews`, `status`) VALUES
(1, 1, '2017-07-20 09:11:56', '0000-00-00 00:00:00', 'news-4.jpg', 1, 1),
(2, 1, '2017-07-20 09:11:56', '2017-07-13 03:21:00', 'news-3.jpg', 1, 1),
(3, 2, '2017-07-20 09:11:56', '0000-00-00 00:00:00', 'news-1.jpg', 1, 1),
(4, 3, '2017-07-20 09:11:56', '2017-07-19 19:54:05', 'news-2.jpg', 1, 1),
(5, 4, '2017-07-20 09:11:56', '2017-07-13 04:23:16', 'news-4.jpg', 1, 1),
(6, 5, '2017-07-20 09:12:43', '2017-07-13 00:16:16', 'news-3.jpg', 2, 1),
(7, 5, '2017-07-20 09:11:56', '2017-07-13 00:16:16', 'news-3.jpg', 1, 1),
(8, 1, '2017-07-20 09:11:56', '2017-07-17 23:12:35', 'news-1.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hbb_news_translation`
--

CREATE TABLE `hbb_news_translation` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `news_name` varchar(255) NOT NULL,
  `news_content` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_news_translation`
--

INSERT INTO `hbb_news_translation` (`id`, `news_id`, `news_name`, `news_content`, `slug`, `language_id`) VALUES
(1, 1, 'MUA RƯỢU VANG NHẬN SIÊU KHUYẾN MÃI', 'Hòa vào không khí kỷ niệm ngày Quốc khánh Pháp trên toàn thế giới, Wineplaza dành tặng khách hàng yêu rượu vang chương trình QUÀ TẶNG ĐẶC BIỆT. Khi mua 03 thùng rượu vang. Quý khách sẽ được tặng:<br>\r\n\r\n  06 chai rượu vang cùng loại<br>\r\n\r\n  01 Decanter thần kỳ<br>\r\n\r\n  04 phụ kiện rượu vang tiện dụng<br>\r\n\r\n* Chương trình áp dụng với tất cả các sản phẩm rượu vang của Pháp, Ý, Tây Ban Nha.<br>', 'mua-ruou-vang-nhan-sieu-khuyen-mai', 1),
(2, 1, 'Mua ruou vang nhan sieu khuyen mai', '123123', 'mua-ruou-vang-nhan-sieu-khuyen-mai', 2),
(3, 2, 'THIÊN ĐƯỜNG NGHỈ DƯỠNG - PUGLIA', 'Puglia được xem như một viên ngọc quý ẩn mình phía nam của Ý, vùng đất huyền diệu và hoang sơ rải rác với những ngôi làng màu tường trắng, xếp dọc sườn đồi, các lâu đài cổ và những bãi cát trải dài theo dãy núi đá dốc.<br>\r\n Đây là điểm đến lý tưởng cho bất cứ ai muốn tránh sự hối hả của những khu nghỉ mát đông đúc và muốn tìm đến một khu vực yên bình hơn, nơi chứa đựng những truyền thống văn hóa đáng quý và sự hiếu khách nồng hậu.<br>\r\nPuglia đẹp nhẹ nhàng như một thiên đường hoang sơ. Những bãi biển tuyệt đẹp tô điểm cho đường bờ biển kéo dài, nước biển trong xanh được tạo bởi hai bờ biển Adriatic và Lonian.  Từ các dải cát trắng ven biển, các vách đá, đến các hang động tuyệt đẹp đều hấp dẫn du khách ngay khi mới đặt chân. Khi đến Puglia, tìm kiếm một bãi biển và thư giãn là lựa chọn hoàn hảo.<br>\r\n\r\nKhông bị ảnh hưởng nhiều của du lịch,  Puglia vẫn giữ được những nét riêng biệt nhất định mà các khu vực khác không thể có. Torre Dell\'Orso ở bờ biển phía đông là một ví dụ hoàn hảo về điều này. Đi đến bờ biển phía tây và bạn có thể trải nghiệm những bãi biển của Gallipoli và Porto Cesareo, nơi có các cửa hàng, quán bar và nhà hàng trên bãi cát dài của bờ biển truyền thống. Đi về phía nam gót chân của Ý nhớ ghé thăm các ngôi làng ven biển nổi tiếng như Santa Cesarea Terme, Castro, Tricase, Novaglie và Santa Maria di Leuca.<br>\r\n\r\nThiên đường ẩm thực<br>\r\n\r\nPuglia được biết đến như một thiên đường dành cho người yêu ẩm thực. Mỗi mùa ở Puglia luôn có những món ăn đặc trưng khác biệt để du khách đến thăm có được trải nghiệm đáng nhớ.', 'thien-duong-nghi-duong-puglia', 1),
(4, 2, 'Thien duong nghi duong - puglia', '213', 'thien-duong-nghi-duong-puglia', 2),
(5, 3, 'RƯỢU VANG VÀ NHỮNG LỢI ÍCH VỚI VIỆC PHÒNG BỆNH TIM MẠCH.', 'Bệnh tim mạch là một trong những nguyên nhân gây tử vong hàng đầu thế giới. Theo hiệp hội tim mạch Mỹ, các chất phytochemical trong rượu làm tăng cholesterol tốt trong cơ thể, thêm vào đó thành phần chất chống oxy hóa giúp bảo vệ niêm mạc của động mạch vành, mỗi ngày uống 1-2 ly rượu vang sẽ giúp hạn chế khả năng mắc bệnh tim mạch ở cả nam và nữ. <br>\r\nBảo vệ niêm mạc mạch máu.<br>\r\n\r\nTheo Mayo Clinic, trong rượu vang có chứa nhiều chất chống oxy hóa. Trung bình 1lit rượu vang đỏ có chứa khoảng 2.000-6.000mg chất chống oxy hóa.<br>\r\n\r\nTrong đó các chất chống oxy hóa này hoạt tính cao nhất là phải kể đến flavonol chiếm 85% và resveratrol. Các chất này giúp chống lại các gốc tự do và bảo vệ nội mạc bên trong động mạch, giúp sản xuất oxit nitric làm giãn mạch máu não. Từ đó giúp người dùng cải thiện được lưu lượng máu và giảm được nguy cơ tim mạch.<br>\r\n\r\nGiảm lượng cholesterol xấu.<br>\r\n\r\nResvertrol là chất chống oxy hóa được tìm thấy rất nhiều trong trái nho và các loại quả màu đỏ, tím khác như dâu, đậu phộng, mâm xôi, việt quất...Theo các nghiên cứu từ xưa đến nay thì Resvertrol rất có ích cho sức khỏe, đặc biệt là với tim mạch.', 'ruou-vang-va-nhung-loi-ich-voi-viec-phong-benh-tim-mach', 1),
(6, 3, 'Ruou vang va nhung loi ich voi viec phong benh tim mach', '321', 'ruou-vang-va-nhung-loi-ich-voi-viec-phong-benh-tim-mach', 2),
(7, 4, 'Đánh giá rượu vang nho bằng mắt như thế nào là ngon?', '<p>Kh&aacute;c với rượu mạnh, rượu vang l&agrave; đồ uống đ&ograve;i hỏi sự tinh tế khi thưởng thức. Đ&aacute;nh gi&aacute; độ ngon của rượu vang bằng vị gi&aacute;c v&agrave; khứu gi&aacute;c l&agrave; c&aacute;ch nhiều người đ&atilde; biết. Nhưng đ&aacute;nh gi&aacute; rượu vang bằng mắt như thế n&agrave;o l&agrave; ngon bạn đ&atilde; biết chưa? H&atilde;y đọc b&agrave;i viết dưới đ&acirc;y để hiểu th&ecirc;m nh&eacute;.<br />\r\n1. Quan s&aacute;t m&agrave;u sắc<br />\r\nM&agrave;u sắc của rượu vang chủ yếu l&agrave; đỏ, trắng hoặc hồng - những điểm cần được nhận định l&agrave; sắc th&aacute;i, cường độ, v&agrave; những thuộc t&iacute;nh b&ecirc;n trong mỗi loại m&agrave;u. H&atilde;y r&oacute;t rượu v&agrave;o 1/3 ly, giữ phần ch&acirc;n, để ly đối chiếu với một ph&ocirc;ng nền trắng &ndash; 1 khăn b&agrave;n hoặc 1 mẩu giấy. Sau đ&oacute; nghi&ecirc;ng ly để rượu được trải từ phần đ&aacute;y ly đến miệng ly, nhờ vậy c&aacute;c sắc th&aacute;i kh&aacute;c nhau của rượu được thể hiện r&otilde; r&agrave;ng.<br />\r\n2. Độ trong<br />\r\nGiữ ly để bạn c&oacute; thể nh&igrave;n xuy&ecirc;n qua rượu, trước ti&ecirc;n đối chiếu với một ph&ocirc;ng nền trắng, v&agrave; rồi đối chiếu với một nguồn s&aacute;ng dịu, như &aacute;nh s&aacute;ng từ cửa sổ, chứ kh&ocirc;ng trực tiếp trong &aacute;nh s&aacute;ng của nắng hay b&oacute;ng đ&egrave;n. C&aacute;c loại rượu vang thường biểu lộ những mức độ trong kh&aacute;c nhau, từ s&aacute;ng tươi đến trong suốt b&igrave;nh thường, đến mờ v&agrave; đục.<br />\r\nĐộ trong l&agrave; một biểu thị chủ yếu về chất lượng, rượu vang được ủ từ 3 đến 9 th&aacute;ng sẽ c&oacute; m&agrave;u sắc rực rỡ v&agrave; trong suốt. Khi ủ l&acirc;u c&oacute; thể sẽ c&oacute; cặn (một số loại rượu vang để cấu tr&uacute;c rượu tiếp tục trưởng th&agrave;nh trong chai nh&agrave; sản xuất kh&ocirc;ng lọc khi đ&oacute;ng chai,n&ecirc;n trong rượu c&ograve;n cặn).<br />\r\n3. Độ đậm đ&agrave;<br />\r\nĐể đ&aacute;nh gi&aacute; độ đậm hay lo&atilde;ng của rươu, h&atilde;y lắc nhẹ ly để rượu chuyển động l&ecirc;n th&agrave;nh ly. Sau đ&oacute;, rượu sẽ từ từ chảy từ th&agrave;nh ly xuống tạo th&agrave;nh đường n&eacute;t như c&aacute;nh cửa nh&agrave; thờ, rượu chảy xuống c&agrave;ng chậm, đường cửa nh&agrave; thờ c&agrave;ng r&otilde; th&igrave; độ đ&acirc;m đ&agrave; của chai rượu c&agrave;ng cao. Sự suy x&eacute;t về độ đậm đ&agrave; v&agrave; kết cấu của rượu được ho&agrave;n tất v&agrave; x&aacute;c nhận sau đ&oacute; bằng cảm nhận của v&ograve;m họng.<br />\r\n4. T&iacute;nh chất sủi tăm<br />\r\nSự đ&aacute;nh gi&aacute; về sủi tăm chỉ &aacute;p dụng cho c&aacute;c rượu vang c&oacute; bọt, được chia l&agrave;m hai loại ch&iacute;nh: rượu vang Frizzante &ndash; đ&ocirc;i khi cũng được gọi l&agrave; Vivace hoặc Brioso &ndash; c&oacute; t&iacute;nh chất sủi tăm nhẹ hoặc trung b&igrave;nh (từ 1,5 đến 2 gram carbon dioxide/l&iacute;t), trong khi rượu vang Spumante (từ tiếng &Yacute; spuma) l&agrave; rượu vang sủi tăm trọn vẹn, c&oacute; &aacute;p suất từ 3,5 đến 6 atmosphere. Dấu hiệu ch&iacute;nh của độ tinh tế trong rượu vang sủi tăm l&agrave; k&iacute;ch cỡ v&agrave; cường độ của c&aacute;c bọt carbon dioxide nổi l&ecirc;n từ đ&aacute;y cốc.</p>', 'danh-gia-ruou-vang-nho-bang-mat-nhu-the-nao-la-ngon', 1),
(8, 4, 'Danh gia ruou vang bang mat nhu the nao la ngon', '<p>4321</p>', 'danh-gia-ruou-vang-bang-mat-nhu-the-nao-la-ngon', 2),
(9, 5, 'RƯỢU VANG OCHAGAVIA SILVESTRE VÀ CÂU CHUYỆN LỊCH SỬ', 'Năm 1970 trước khi Chile độc lập, Silvestre Ochagavia Echazarreta đã cho xây dựng căn biệt thự lộng lẫy Casona Lo Ochagavia ở trung tâm của thành phố Santiago. 50 năm sau, căn biệt thự kiểu sang trọng đón chào sự ra đời của Don Silvestre, chủ sở hữu cháu trai người sáng lập và tương lai của Viña Ochagavia.<br>\r\n\r\nNgày 18 tháng 9 Chile công bố ngày độc lập, từ đó Casona Lo Ochagavia được sử dụng làm trụ sở cũng như trại huấn luyện cho quân giải phóng. Từ đó Don Silvestre quyết định tham gia vào chính trị và thách thức trở thành Bộ trưởng Bộ Ngoại giao dưới thời chính quyền của Tổng thống Manuel Bulnes. Với cương vị đó đòi hỏi ông phải di chuyển nhiều giữa các lục địa. Sau đó, ông quyết định định cư và làm việc cho một nhà sản xuất rượu vang ở vùng Bordeaux của Pháp.<br>\r\nNgoài nghĩa vụ chính trị của mình, Don Silvestre bỏ khá nhiều thời gian để nghiên cứu sự khác biệt về văn hóa rượu vang, các giống nho, các chất đất trồng nho giữa Chile và Pháp. Sau bốn năm nghiên cứu ở Pháp, Don Silvestre quyết định trở về Chile với những kiến thức và các kỹ thuật học được cùng một nhóm các chuyên gia dày dạn kinh nghiệm và bắt đầu giâm những cành giống đầu tiên của Bordeaux<br>\r\n\r\nNăm 1851 những trái nho đầu tiên của các giống nho Semillon, Sauvignon Blanc và Riesling đã được thu hoạch. Sau đó là đến những giống nho Cabernet Sauvignon, Malbec, Merlot và Pinot Noir. Những trái nho này khi được trồng ở miền đất mới có chất lượng vô cùng tốt không kém gì quê hương của chúng cả. Từ đó các chuyên gia người Pháp Joseph Bertand đã chính thức gia nhập nhà máy sản xuất rượu vang và nhanh chóng trở thành cánh tay phải của Don Silvestre.<br>\r\n\r\nTheo gương của Don Silvestre nhiều nhà máy rượu vang mới bắt đầu xuất hiện ở Chile và đầu tư sản xuất những giống nho đến từ vùng Bordeaux theo cách thức ngày càng chuyên nghiệp. Người ta dần tìm ra nhiều cách để các giống mới thích ứng với khí hậu và thổ nhưỡng ở Chile và nhanh chóng hiểu được tiềm năng của khu vực trung tâm trong việc phát triển rượu vang chất lượng.<br>\r\n\r\nNăm 1868, dịch hại phylloxera đã tàn phá những cây nho của hầu hết các vườn nho châu Âu. Tuy nhiên, Chile không bị ảnh hưởng bởi dịch hại và trở thành một nơi trú ẩn an toàn của các giống nho nổi tiếng và quý giá của thế giới. Từ đó nơi đây đã thu hút được nhiều nhà sản xuất rượu châu Âu đến tìm kiếm những cơ hội mới.', 'ruou-vang-ochagavia-silvestre-va-cau-chuyen-lich-su', 1),
(10, 5, 'Ruou vang ochagavia silvestre va cau chuyen lich su', '54321', 'ruou-vang-ochagavia-silvestre-va-cau-chuyen-lich-su', 2),
(11, 6, 'RƯỢU VANG VÀ DANH NHÂN', 'TỔNG THỐNG MỸ PHÁ SẢN VÌ RƯỢU VANG<br>\r\n\r\nTổng thống Thomas Jefferson, (Tổng thống thứ 3) xuất thân là một nhà văn nổi tiếng, đồng thời cũng là tác giả chính của bản Tuyên ngôn độc lập của nước Mỹ. Ngoài ra, Thomas Jefferson cũng được xem là một trong những tổng thống nghèo nhất của Mỹ, Ông phải vay nợ trong suốt cuộc đời mình. Một phần có lẽ do sở thích đặc biệt của ông dành cho Rượu vang với rất nhiều loại khác nhau như của Pháp và Ý, từ Montepulciano, Nebbiolo của vùng Piedmont, đến Hermitage trắng của Pháp. Jefferson dường như không ngăn nổi sở thích ngày càng lớn của mình và cuối đời đi đến bờ vực phá sản bởi đam mê sở hữu những chai vang ngon, đắt tiền.<br>\r\nLỄ NHẬM CHỨC SUÝT THÀNH THẢM HỌA<br>\r\n\r\nKhi Andrew Jackson (Tổng thống thứ 7) tới Washington để làm lễ tuyên thệ nhậm chức vào năm 1829, một đám đông từ 10.000 - 30.000 người ủng hộ đã bao vây chiếc xe ngựa của ông, lúc nó chạy tới Nhà Trắng. Những kẻ này không phải dân quý tộc ở Washington mà chỉ là đám đông xô bồ, đã tiến vào, làm bẩn và gây cảnh hỗn loạn trong Nhà Trắng, đe dọa phá hỏng lễ nhậm chức của Jackson. Để "dẹp loạn", Jackson đã cho người đưa rượu vang ra đặt ngoài Nhà Trắng để lực lượng "ủng hộ trên" lấy và mang về nhà. Quả nhiên khi nghe tin phát rượu, những con người kia đã nhanh chóng rời khỏi Nhà Trắng. Họ vừa ra về cùng số rượu mà tân Tổng thống mới tặng, vừa nghêu ngao hát vang như những người chiến thắng.<br>\r\nTRUYỀN THỐNG UỐNG RƯỢU VANG “MADE IN USA”<br>\r\n\r\nTruyền thống “bắt buộc” uống rượu vang “Made in USA” bắt đầu có từ năm 1977 sau khi Tổng Thống Jimmy Carter tuyên thệ nhậm chức, xóa bỏ kiểu cách chỉ uống rượu vang Tây từng nổi bật dưới thời Kennedy và Nixon. Không rõ vì lý do gì ông Carter lại chỉ thị cho nhân viên nhà bếp chỉ khoản đãi khách bằng vang Mỹ, nhưng đến giờ vẫn được các vị nguyên thủ Hoa Kỳ tôn trọng. Nên nhớ: Thực đơn các bữa tiệc của Nhà Trắng bao giờ cũng kèm theo tên những loại rượu vang (và nhà sản xuất), thực đơn này cũng được Nhà Trắng gửi tặng nhà sản xuất rượu giữ làm kỷ niệm hay để khoe với khách hàng. Đây là một quyết định sáng suốt về chính trị lẫn kinh tế, giúp phát triển ngành trồng nho làm rượu vang và sản xuất rượu vang của quốc gia. Và khi đó người dân Hoa Kỳ mới hãnh diện vì nước mình có rượu vang ngon chẳng kém gì nước Pháp.', 'ruou-vang-va-doanh-nhan', 1),
(12, 6, 'Ruou vang va doanh nhan', '654321', 'ruou-vang-va-doanh-nhan', 2),
(13, 7, 'Sicilia - Hòn đảo cực Nam xinh đẹp của Ý', 'Giới thiệu chung:<br>\r\n\r\nRượu vang Italia được biết đến như món đồ uống của cả thế giới bởi đất nước Italia có đến hơn 350 loại nho khác nhau, là quốc gia đứng thứ 3 về diện tích trồng nho. Đây cũng là nước sản xuất rượu vang lớn nhất, lâu đời nhất thế giới và sản phẩm rượu vang Sicilia là 1 trong 5 vùng rượu vang hàng đầu được người sành vang yêu thích.<br>\r\n\r\nSicily (Sicilia) một vùng đất huyền thoại không chỉ nổi tiếng bởi gắn liền với tên tuổi của tiểu thuyết “Bố già” mà nó còn là hòn đảo cực Nam xinh đẹp của Ý đã có truyền thống sản xuất rượu vang hơn nghìn năm nay.<br>\r\n\r\nNằm trong vùng biển miền Trung Địa Trung Hải và phía nam của bán đảo Ý, được ngăn cách bởi eo biển hẹp của Messina, đây là hòn đảo lớn nhất trên biển Địa Trung Hải. Nó tạo thành một khu vực tự trị của Ý, cùng với các đảo nhỏ xung quanh, chính thức được gọi là Regione Siciliana (trong tiếng Ý, vùng Sicilia). Khu vực này có lịch sử phát triển lâu dài, đi cùng với nó là sự ra đời và phát triển của rất nhiều dòng rượu vang Ý nổi tiếng.<br>\r\nĐịa lý Sicily<br>\r\n\r\nSicily chạy dài 280km về phía đông sang tây và tương đương một phần ba khoảng cách từ bắc tới nam, tạo nên hình dạng giống như một hình tam giác. Đất Sicily và những ngọn núi nơi đây là mối quan tâm đặc biệt khi nói đến nghề trồng nho của hòn đảo. Nổi bật với ngọn núi lửa Etna cao chót vót vẫn đang còn hoạt động, với độ cao 3,329 m, thống trị đường chân trời phía đông của hòn đảo, tạo nên lượng khoáng sản dồi dào trong đất đặc trưng cho các vườn nho DOC Etna.', 'sicilia-hon-dao-cuc-nam-xinh-dep-cua-y', 1),
(14, 7, 'Sicilia - Hon dao cuc nam xinh dep cua y', '7654321', 'sicilia-hon-dao-cuc-nam-xinh-dep-cua-y', 2),
(15, 8, 'nho đỏ Ninh Thuận', '<p>aa</p>', 'nho-do-ninh-thuan', 1),
(16, 8, 'nho do Ninh Thuan', '<p>bb</p>', 'nho-do-ninh-thuan', 2);

-- --------------------------------------------------------

--
-- Table structure for table `hbb_permission`
--

CREATE TABLE `hbb_permission` (
  `id` int(11) NOT NULL,
  `permission` varchar(100) NOT NULL,
  `link` varchar(225) NOT NULL,
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
(8, 'Slider management', 'admin/slider', 'Create, Edit, Delete, View list'),
(9, 'Product management', 'admin/1-product', 'Create, Edit, Delete, View list'),
(10, 'Collection management', 'admin/1-collection', 'Create, Edit, Delete, View list'),
(11, 'Brand management', 'admin/1-brand', 'Create, Edit, Delete, View list'),
(12, 'Country management', 'admin/1-country', 'Create, Edit, Delete, View list'),
(13, 'News management', 'admin/1-news', 'Create, Edit, Delete, View list'),
(14, 'Menu News management', 'admin/1-menu-news', 'Update, View list'),
(15, 'Menu Home management', 'admin/1-menu-management', 'Update, View list'),
(16, 'Wine Center management', 'admin/1-wine-center', 'Update, View list'),
(17, 'Address management', 'admin/1-address-management', 'Create, Edit, Delete, View list'),
(18, 'Label management', 'admin/1-labels-management', 'Update, View list'),
(19, 'Subscribe management', 'admin/subscribe-management', 'Edit, Delete, View list'),
(20, 'Subscribe Wine management', 'admin/subscribe-wine-management', 'Edit, Delete, View list'),
(21, 'User management', 'admin/user-management', 'Create, Edit, Delete, View list');

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
  `price` float NOT NULL,
  `brand_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_products`
--

INSERT INTO `hbb_products` (`id`, `avatar`, `created_at`, `updated_at`, `collection_id`, `status`, `price`, `brand_id`, `country_id`) VALUES
(1, 'product.png', '2017-07-17 02:37:05', '2017-07-11 02:24:00', 8, 1, 0.74, 2, 1),
(2, 'product1.png', '2017-07-12 09:40:54', '2017-07-11 02:24:00', 4, 1, 1, 2, 1),
(3, 'product2.png', '2017-07-12 09:40:58', '2017-07-11 02:24:00', 8, 1, 1.75, 2, 1),
(10, 'white-wine.jpg', '2017-07-18 08:34:25', '2017-07-12 03:32:30', 4, 1, 1.25, 2, 2),
(11, 'red-wine.jpg', '2017-07-18 08:33:15', '2017-07-12 03:34:41', 8, 1, 1.25, 1, 2),
(12, 'red-wine.jpg', '2017-07-17 07:13:45', '2017-07-16 16:29:47', 9, 1, 1.25, 2, 2),
(13, 'product.png', '2017-07-17 07:16:52', '2017-07-16 16:26:51', 10, 0, 1.25, 2, 2),
(14, 'white-wine.jpg', '2017-07-18 08:34:29', '2017-07-16 13:28:33', 8, 1, 1.25, 2, 1),
(15, 'product.png', '2017-07-16 13:28:59', '2017-07-16 13:28:59', 8, 1, 0.74, 2, 2),
(16, 'product.png', '2017-07-16 13:29:51', '2017-07-16 13:29:51', 4, 1, 0.74, 1, 1),
(17, 'product.png', '2017-07-16 13:30:42', '2017-07-16 13:30:42', 4, 1, 0.74, 1, 1),
(18, 'white-wine.jpg', '2017-07-18 08:34:32', '2017-07-16 13:31:49', 8, 1, 1.25, 2, 2),
(19, 'product.png', '2017-07-16 13:36:23', '2017-07-16 13:36:23', 8, 1, 0.74, 2, 2),
(20, 'product.png', '2017-07-16 13:39:46', '2017-07-16 13:39:46', 8, 1, 0.74, 2, 1),
(40, 'red-wine.jpg', '2017-07-16 17:26:12', '2017-07-16 17:26:12', 8, 1, 0.3, 2, 2),
(41, 'product.png', '2017-07-16 17:32:21', '2017-07-16 17:32:21', 12, 1, 0.4, 1, 2),
(42, 'product.png', '2017-07-18 01:18:18', '2017-07-18 01:18:18', 8, 1, 0.4, 2, 2),
(43, 'red-wine.jpg', '2017-07-18 01:19:20', '2017-07-18 01:19:20', 9, 1, 1.25, 3, 2),
(44, 'product.png', '2017-07-18 01:20:17', '2017-07-18 01:20:17', 15, 1, 3.23, 2, 1),
(45, 'product.png', '2017-07-18 01:21:04', '2017-07-18 01:21:04', 9, 1, 2.5, 2, 1),
(46, 'news-2.jpg', '2017-07-18 01:22:09', '2017-07-18 01:22:09', 2, 1, 0.74, 3, 1),
(47, 'red-wine.jpg', '2017-07-18 01:22:56', '2017-07-18 01:22:56', 12, 1, 3.5, 2, 2),
(48, 'news-1.jpg', '2017-07-18 01:24:00', '2017-07-18 01:24:00', 2, 1, 4.5, 2, 2),
(49, 'news-1.jpg', '2017-07-18 01:24:25', '2017-07-18 01:24:25', 2, 1, 4.5, 2, 2),
(50, 'red-wine.jpg', '2017-07-18 01:25:27', '2017-07-18 01:25:27', 2, 1, 0.4, 1, 1),
(51, 'banner.jpg', '2017-07-19 21:52:39', '2017-07-19 21:52:39', 12, 1, 0.5, 2, 1),
(52, 'red-wine.jpg', '2017-07-18 01:26:46', '2017-07-18 01:26:46', 8, 1, 0.5, 1, 2),
(53, 'product.png', '2017-07-18 01:27:27', '2017-07-18 01:27:27', 15, 1, 0.5, 3, 2),
(54, 'news-2.jpg', '2017-07-18 19:18:57', '2017-07-18 19:18:57', 17, 1, 1.75, 2, 1),
(55, 'vino_vinograd_butylka_listya_prev.jpg', '2017-07-19 21:32:09', '2017-07-19 21:32:09', 8, 1, 0.25, 1, 2),
(56, 'red-wine.jpg', '2017-07-19 21:06:59', '2017-07-19 21:06:59', 8, 1, 0.25, 1, 2),
(57, 'address.jpg', '2017-07-19 21:42:42', '2017-07-19 21:42:42', 4, 1, 0.15, 1, 1);

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
(1, 1, 23, 'The Gate 2010', '<p>12321312</p>', 'the-gate-2010'),
(2, 1, 23, 'The Gate 2010', '<p>12321312</p>', 'the-gate-2010'),
(3, 1, 2, 'Ripa Magna Corvina 2015', 'Ripa Magna Corvina 2015 là chai rượu vang được sản xuất từ những trái nho Corvina ngon nhất của khu vực Verona IGT bởi hãng rượu vang Tinazzi danh tiếng bậc nhất vùng Đông Bắc Ý. Với màu hồng ngọc mạnh mẽ cùng hương thơm đặc trưng của trái cây tươi chín đỏ kết hợp với các loại gia vị như đinh hương ,quế, tiêu đen,... khi uống vào cảm giác chát nhưng vẫn tạo cảm giác mềm mại, mượt mà với nồng độ tanin cao lưu luyến trong vòm miệng.<br><br>\r\nLoại rượu : Vang đỏ<br>\r\n\r\nHãng sản xuất : Tinazzi<br>\r\n\r\nNồng độ cồn : 14%<br>\r\n\r\nDung tích: 750ml/chai<br>\r\n\r\nGiống nho : Corvina<br>\r\n\r\nVùng trồng nho: Verona IGT, Veneto<br>\r\n\r\nMọi nội dung tại wineplaza.vn đều có mục đích chia sẻ thông tin và tình yêu với rượu vang.<br>', 'ripa-magna-corvina-2015'),
(4, 2, 2, 'Ripa Magna Corvina 2015', '12312312313', 'ripa-magna-corvina-2015'),
(5, 1, 3, 'Tokaji Aszú 3', 'Rượu vang Tokaji nổi tiếng là rượu vang tráng miệng ngon nhất hành tinh với danh hiệu "Vang của các nhà vua" do vua Luis 14 của Pháp phong tặng, Tokaji Aszú 3 được sản xuất theo phương pháp đặc biệt của rượu vang Hungary.<br><br>\r\nHãng sản xuất: Patricius Tokaj - Hungary<br>\r\n\r\nLoại vang: Vang ngọt<br>\r\n\r\nNồng độ cồn: 12%<br>\r\n\r\nDung tích: 500ml/chai, 6 chai/thùng<br>\r\n\r\nGiống nho: Furmint và Hárslevelu<br>\r\n\r\nĐánh giá: 90/100 (Wine-Seacher)<br>\r\n\r\nMọi nội dung tại wineplaza.vn đều có mục đích chia sẻ thông tin và tình yêu với rượu vang.<br>', 'tokaji-aszu-3'),
(6, 2, 3, 'Tokaji Aszú 3', '', 'tokaji-aszu-3'),
(7, 1, 5, 'Queen Bee', 'Rượu vang ngọt Queen Bee được làm ra bởi nhà sản xuất rượu vang danh tiếng bậc nhất nước Ý - Casa Vinicola Caldirola dành riêng cho thị trường Việt Nam. Chai vang có hương vị dâu tây làm chủ đạo, nồng độ cồn thấp, và vị ngọt thanh thoát tự nhiên vô cùng dễ uống.<br>\r\nNữ hoàng mật ngọt - Queen Bee<br>\r\n\r\nHãng sản xuất: Casa Vinicola Caldirola - Italy<br>\r\n\r\nLoại vang: Vang ngọt, Vang đỏ <br>\r\n\r\nNồng độ cồn: 10%<br>', 'queen-bee'),
(8, 2, 5, 'Queen Bee', 'Rượu vang ngọt Queen Bee được làm ra bởi nhà sản xuất rượu vang danh tiếng bậc nhất nước Ý - Casa Vinicola Caldirola dành riêng cho thị trường Việt Nam. Chai vang có hương vị dâu tây làm chủ đạo, nồng độ cồn thấp, và vị ngọt thanh thoát tự nhiên vô cùng dễ uống.<br>\r\nNữ hoàng mật ngọt - Queen Bee<br>\r\n\r\nHãng sản xuất: Casa Vinicola Caldirola - Italy<br>\r\n\r\nLoại vang: Vang ngọt, Vang đỏ <br>\r\n\r\nNồng độ cồn: 10%<br>\r\n\r\nDung tích: 750ml/chai, 12 chai/thùng<br>\r\n\r\nGiống nho: (Đang cập nhật)<br>\r\n\r\nĐánh giá: N/a<br>', 'queen-bee'),
(9, 1, 4, 'Château Suau (Sauternes) Sauternes Grand Cru Classé 2014', 'Château Suau - Dòng vang trắng hảo hạng của vùng Sauternes, Bordeaux được sản xuất từ hai giống nho Sauvignon Blanc và Sémillon nhiễm nấm Botrytis. Hương thơm của mứt cam đọng lại trong vòm họng sau khi bạn kết thúc ngụm rượu vang. Màu vàng trắng sang trọng, tinh tế phù hợp dùng để khai vị hoặc tráng miệng trong những bữa tiệc sang trọng.<br><br>\r\nKhu vực : SAUTERNES<br>\r\n\r\nNhà Sản xuất : Chauteau Suau<br>\r\n\r\nNồng độ cồn : 13%<br>\r\n\r\nDung tích : 750ml/chai,6 chai/thùng<br>\r\n\r\nGiống nho : Sauvignon Blanc, Sémillon.<br>\r\n\r\nMùa vụ : 2014<br>\r\n\r\nMọi nội dung tại wineplaza.vn đều có mục đích chia sẻ thông tin và tình yêu với rượu vang.<br>', 'chateausuau-sauternes-grand-cru-classe-2014'),
(10, 2, 4, 'Château Suau (Sauternes) Sauternes Grand Cru Classé 2014', '123123', 'chateausuau-sauternes-grand-cru-classe-2014'),
(13, 1, 10, 'rượu 1', '<p>&aacute;dasdasd</p>', '1'),
(14, 2, 10, 'wine 1', '<p>aaaaa</p>', '2'),
(15, 1, 11, 'rượu vang', '<p>abcbcb</p>', '1'),
(16, 2, 11, 'wine vang', '<p>aaa</p>', '2'),
(17, 1, 12, 'rượu đỏ', '<p>&aacute;dasd</p>', 'ruou-do'),
(18, 2, 12, 'red wine', '<p>&aacute;dasd</p>', 'red-wine'),
(19, 1, 13, 'rượu việtp', '<p><img alt="" src="http://localhost/project-wine-center/public/images/products/product.png" style="height:341px; width:227px" /></p>\r\n\r\n<p>bbbbb</p>', 'ruou-vietp'),
(20, 2, 13, 'wine center', '<p>aaaaa</p>', 'wine-center'),
(21, 1, 39, 'sdsf', '<p>sdfsdf</p>', 'sdsf'),
(22, 2, 39, 'sdfsdf', '<p>sdfsdf</p>', 'sdfsdf'),
(23, 1, 40, 'C\'era Una Volta Bonarda', 'C\'era una Volta Bonardaki nổi bật với màu đỏ ruby ​​tinh tế và mang hương vị trái cây như cherry đen và hạnh nhân. Ngay khi tiếp xúc với khoang miệng, vị chát trong rượu nhẹ nhàng nổi lên, tiếp đó là vị ngọt và chua nhẹ, kích thích vị giác. Đặc biệt, hậu vị còn đọng lại hương vị tươi mới rõ nét. Kết thúc ly rượu, hương thơm hoa hồng vẫn còn thoang thoảng.', 'cera-una-volta-bonarda'),
(24, 2, 40, 'C\'era Una Volta Bonarda', 'C\'era una Volta Bonardaki nổi bật với màu đỏ ruby ​​tinh tế và mang hương vị trái cây như cherry đen và hạnh nhân. Ngay khi tiếp xúc với khoang miệng, vị chát trong rượu nhẹ nhàng nổi lên, tiếp đó là vị ngọt và chua nhẹ, kích thích vị giác. Đặc biệt, hậu vị còn đọng lại hương vị tươi mới rõ nét. Kết thúc ly rượu, hương thơm hoa hồng vẫn còn thoang thoảng.', 'cera-una-volta-bonarda'),
(25, 1, 41, 'The Brothers', 'Rượu vang trắng New Zealand - The Brothers\r\n\r\nThe Brothers - Tình huynh đệ keo sơn. Rượu vang The Brothers đến từ New Zealand với vị chua nhẹ nhàng và hương thơm vô cùng ấn tượng của ổi chín, táo xanh, lê vàng. Chai vang The Brothers lôi cuốn người thưởng thức ngay từ ngụm đầu tiên cho đến giọt cuối cùng', 'the-brothers'),
(26, 2, 41, 'The Brothers', 'Rượu vang trắng New Zealand - The Brothers\r\n\r\nThe Brothers - Tình huynh đệ keo sơn. Rượu vang The Brothers đến từ New Zealand với vị chua nhẹ nhàng và hương thơm vô cùng ấn tượng của ổi chín, táo xanh, lê vàng. Chai vang The Brothers lôi cuốn người thưởng thức ngay từ ngụm đầu tiên cho đến giọt cuối cùng', 'the-brothers'),
(27, 1, 42, 'Gran Reserva: Cabernet Sauvignon', '<p><strong>Rượu vang&nbsp;Gran Reserva: Cabernet Sauvignon của h&atilde;ng&nbsp;Santa Carolina danh tiếng với hơn 140 năm lịch sử - l&agrave; một trong những sản phẩm tuyệt vời đến từ Chile.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Gran Reserva: Cabernet Sauvignon</strong></p>\r\n\r\n<p><strong>H&atilde;ng sản xuất:</strong>&nbsp;Santa Carolina -&nbsp;<a data-mce-href="http://wineplaza.vn/chile.html" href="http://wineplaza.vn/chile.html">Chile</a></p>\r\n\r\n<p><strong>Loại vang:</strong>&nbsp;<a data-mce-href="http://wineplaza.vn/vang-do-red-wines.html" href="http://wineplaza.vn/vang-do-red-wines.html">Vang đỏ</a>&nbsp;</p>\r\n\r\n<p><strong>Nồng độ cồn:</strong>&nbsp;14,5%</p>\r\n\r\n<p><strong>Dung t&iacute;ch:</strong>&nbsp;750ml/chai, 12 chai/th&ugrave;ng</p>\r\n\r\n<p><strong>Giống nho:</strong><strong>&nbsp;</strong><a data-mce-href="http://wineplaza.vn/giong-nho-cabernet-sauvignon.html" href="http://wineplaza.vn/giong-nho-cabernet-sauvignon.html">Cabernet Sauvignon</a>&nbsp;tại thung lũng Maipo, Chile</p>\r\n\r\n<p><strong>Đ&aacute;nh gi&aacute;:</strong>&nbsp;88/100 (Wine-Searcher)</p>\r\n\r\n<p>Mọi nội dung tại&nbsp;<a data-mce-href="http://wineplaza.vn/" href="http://wineplaza.vn"><strong>wineplaza.vn</strong></a>&nbsp;đều c&oacute; mục đ&iacute;ch chia sẻ th&ocirc;ng tin v&agrave; t&igrave;nh y&ecirc;u với rượu vang.</p>\r\n\r\n<p>Để mua h&agrave;ng, qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>Hotline:</strong>&nbsp;<strong>0911.84.88.98 (HN) hoặc&nbsp;0911.84.88.89 (HCM)</strong></p>', 'gran-reserva-cabernet-sauvignon'),
(28, 2, 42, 'Gran Reserva: Cabernet Sauvignon', '<p><strong>Rượu vang&nbsp;Gran Reserva: Cabernet Sauvignon của h&atilde;ng&nbsp;Santa Carolina danh tiếng với hơn 140 năm lịch sử - l&agrave; một trong những sản phẩm tuyệt vời đến từ Chile.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Gran Reserva: Cabernet Sauvignon</strong></p>\r\n\r\n<p><strong>H&atilde;ng sản xuất:</strong>&nbsp;Santa Carolina -&nbsp;<a data-mce-href="http://wineplaza.vn/chile.html" href="http://wineplaza.vn/chile.html">Chile</a></p>\r\n\r\n<p><strong>Loại vang:</strong>&nbsp;<a data-mce-href="http://wineplaza.vn/vang-do-red-wines.html" href="http://wineplaza.vn/vang-do-red-wines.html">Vang đỏ</a>&nbsp;</p>\r\n\r\n<p><strong>Nồng độ cồn:</strong>&nbsp;14,5%</p>\r\n\r\n<p><strong>Dung t&iacute;ch:</strong>&nbsp;750ml/chai, 12 chai/th&ugrave;ng</p>\r\n\r\n<p><strong>Giống nho:</strong><strong>&nbsp;</strong><a data-mce-href="http://wineplaza.vn/giong-nho-cabernet-sauvignon.html" href="http://wineplaza.vn/giong-nho-cabernet-sauvignon.html">Cabernet Sauvignon</a>&nbsp;tại thung lũng Maipo, Chile</p>\r\n\r\n<p><strong>Đ&aacute;nh gi&aacute;:</strong>&nbsp;88/100 (Wine-Searcher)</p>\r\n\r\n<p>Mọi nội dung tại&nbsp;<a data-mce-href="http://wineplaza.vn/" href="http://wineplaza.vn"><strong>wineplaza.vn</strong></a>&nbsp;đều c&oacute; mục đ&iacute;ch chia sẻ th&ocirc;ng tin v&agrave; t&igrave;nh y&ecirc;u với rượu vang.</p>\r\n\r\n<p>Để mua h&agrave;ng, qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>Hotline:</strong>&nbsp;<strong>0911.84.88.98 (HN) hoặc&nbsp;0911.84.88.89 (HCM)</strong></p>', 'gran-reserva-cabernet-sauvignon'),
(29, 1, 43, 'Adobe Reserva Cabernet Sauvignon', '<p><strong>Sản phẩm rượu vang Adobe c&oacute; chất lượng cao đến từ Chile - l&agrave; sự lựa chọn ho&agrave;n hảo cho c&aacute;c bữa ăn h&agrave;ng ng&agrave;y</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Emiliana Adobe&nbsp;Reserva Cabernet Sauvignon</strong></h2>\r\n\r\n<p><strong>H&atilde;ng sản xuất:</strong>&nbsp;Emiliana -&nbsp;<a data-mce-href="http://wineplaza.vn/chile.html" href="http://wineplaza.vn/chile.html">Chile</a></p>\r\n\r\n<p><strong>Loại vang:</strong>&nbsp;<a data-mce-href="http://wineplaza.vn/vang-do-red-wines.html" href="http://wineplaza.vn/vang-do-red-wines.html">Vang đỏ</a>&nbsp;</p>\r\n\r\n<p><strong>Nồng độ cồn:</strong>&nbsp;13,5%</p>\r\n\r\n<p><strong>Dung t&iacute;ch:</strong>&nbsp;750ml/chai, 12 chai/th&ugrave;ng</p>\r\n\r\n<p><strong>Giống nho:</strong><strong>&nbsp;</strong><a data-mce-href="http://wineplaza.vn/giong-nho-cabernet-sauvignon.html" href="http://wineplaza.vn/giong-nho-cabernet-sauvignon.html">Cabernet Sauvignon</a>&nbsp;(92%), Merlot (8%).</p>\r\n\r\n<p><strong>Đ&aacute;nh gi&aacute;:</strong>&nbsp;Thường nhật</p>\r\n\r\n<p>Mọi nội dung tại&nbsp;<a data-mce-href="http://wineplaza.vn/" href="http://wineplaza.vn"><strong>wineplaza.vn</strong></a>&nbsp;đều c&oacute; mục đ&iacute;ch chia sẻ th&ocirc;ng tin v&agrave; t&igrave;nh y&ecirc;u với rượu vang.</p>\r\n\r\n<p>Để mua h&agrave;ng, qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>Hotline:</strong>&nbsp;<strong>0911.84.88.98 (HN) hoặc&nbsp;0911.84.88.89 (HCM)</strong></p>', 'adobe-reserva-cabernet-sauvignon'),
(30, 2, 43, 'Adobe Reserva Cabernet Sauvignon', '<p><strong>Sản phẩm rượu vang Adobe c&oacute; chất lượng cao đến từ Chile - l&agrave; sự lựa chọn ho&agrave;n hảo cho c&aacute;c bữa ăn h&agrave;ng ng&agrave;y</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Emiliana Adobe&nbsp;Reserva Cabernet Sauvignon</strong></h2>\r\n\r\n<p><strong>H&atilde;ng sản xuất:</strong>&nbsp;Emiliana -&nbsp;<a data-mce-href="http://wineplaza.vn/chile.html" href="http://wineplaza.vn/chile.html">Chile</a></p>\r\n\r\n<p><strong>Loại vang:</strong>&nbsp;<a data-mce-href="http://wineplaza.vn/vang-do-red-wines.html" href="http://wineplaza.vn/vang-do-red-wines.html">Vang đỏ</a>&nbsp;</p>\r\n\r\n<p><strong>Nồng độ cồn:</strong>&nbsp;13,5%</p>\r\n\r\n<p><strong>Dung t&iacute;ch:</strong>&nbsp;750ml/chai, 12 chai/th&ugrave;ng</p>\r\n\r\n<p><strong>Giống nho:</strong><strong>&nbsp;</strong><a data-mce-href="http://wineplaza.vn/giong-nho-cabernet-sauvignon.html" href="http://wineplaza.vn/giong-nho-cabernet-sauvignon.html">Cabernet Sauvignon</a>&nbsp;(92%), Merlot (8%).</p>\r\n\r\n<p><strong>Đ&aacute;nh gi&aacute;:</strong>&nbsp;Thường nhật</p>\r\n\r\n<p>Mọi nội dung tại&nbsp;<a data-mce-href="http://wineplaza.vn/" href="http://wineplaza.vn"><strong>wineplaza.vn</strong></a>&nbsp;đều c&oacute; mục đ&iacute;ch chia sẻ th&ocirc;ng tin v&agrave; t&igrave;nh y&ecirc;u với rượu vang.</p>\r\n\r\n<p>Để mua h&agrave;ng, qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>Hotline:</strong>&nbsp;<strong>0911.84.88.98 (HN) hoặc&nbsp;0911.84.88.89 (HCM)</strong></p>', 'adobe-reserva-cabernet-sauvignon'),
(31, 1, 44, 'The Gate 2010', '<p><strong>Rượu vang đỏ Australia - The Gate 2010</strong></p>\r\n\r\n<p>Rượu c&oacute; hương thơm của chocolate đen, hương cafe v&agrave; ti&ecirc;u đen kh&aacute; r&otilde;. Rượu c&oacute; vị ch&aacute;t đậm đ&agrave; lan tỏa to&agrave;n bộ khoang miệng l&agrave;m người uống rất dễ cảm nhận vẻ mạnh mẽ của The Gate 2012.</p>\r\n\r\n<h2><strong>&nbsp;</strong></h2>\r\n\r\n<h2><strong>The Gate 2010 -&nbsp;C&aacute;nh cửa của kh&aacute;t khao</strong></h2>\r\n\r\n<p><strong>H&atilde;ng sản xuất:</strong>&nbsp;Shingleback, Vườn nho&nbsp;Davey Estate v&ugrave;ng McLaren Vale - Australia</p>\r\n\r\n<p><strong>Loại vang:</strong>&nbsp;<a data-mce-href="http://wineplaza.vn/vang-do-red-wines.html" href="http://wineplaza.vn/vang-do-red-wines.html">Vang đỏ</a>&nbsp;</p>\r\n\r\n<p><strong>Nồng độ cồn:</strong>&nbsp;13,8%</p>\r\n\r\n<p><strong>Dung t&iacute;ch:</strong>&nbsp;750ml/chai, 6 chai/th&ugrave;ng</p>\r\n\r\n<p><strong>Giống nho:</strong><strong>&nbsp;</strong>Shiraz</p>\r\n\r\n<p><strong>Đ&aacute;nh gi&aacute;:</strong>&nbsp;N/a</p>\r\n\r\n<p>Mọi nội dung tại&nbsp;<a data-mce-href="http://wineplaza.vn/" href="http://wineplaza.vn"><strong>wineplaza.vn</strong></a>&nbsp;đều c&oacute; mục đ&iacute;ch chia sẻ th&ocirc;ng tin v&agrave; t&igrave;nh y&ecirc;u với rượu vang.</p>\r\n\r\n<p>Để mua h&agrave;ng, qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>Hotline:</strong>&nbsp;<strong>0911.84.88.98 (HN) hoặc&nbsp;0911.84.88.89 (HCM)</strong></p>', 'the-gate-2010'),
(32, 2, 44, 'The Gate 2010', '<p><strong>Rượu vang đỏ Australia - The Gate 2010</strong></p>\r\n\r\n<p>Rượu c&oacute; hương thơm của chocolate đen, hương cafe v&agrave; ti&ecirc;u đen kh&aacute; r&otilde;. Rượu c&oacute; vị ch&aacute;t đậm đ&agrave; lan tỏa to&agrave;n bộ khoang miệng l&agrave;m người uống rất dễ cảm nhận vẻ mạnh mẽ của The Gate 2012.</p>\r\n\r\n<h2><strong>&nbsp;</strong></h2>\r\n\r\n<h2><strong>The Gate 2010 -&nbsp;C&aacute;nh cửa của kh&aacute;t khao</strong></h2>\r\n\r\n<p><strong>H&atilde;ng sản xuất:</strong>&nbsp;Shingleback, Vườn nho&nbsp;Davey Estate v&ugrave;ng McLaren Vale - Australia</p>\r\n\r\n<p><strong>Loại vang:</strong>&nbsp;<a data-mce-href="http://wineplaza.vn/vang-do-red-wines.html" href="http://wineplaza.vn/vang-do-red-wines.html">Vang đỏ</a>&nbsp;</p>\r\n\r\n<p><strong>Nồng độ cồn:</strong>&nbsp;13,8%</p>\r\n\r\n<p><strong>Dung t&iacute;ch:</strong>&nbsp;750ml/chai, 6 chai/th&ugrave;ng</p>\r\n\r\n<p><strong>Giống nho:</strong><strong>&nbsp;</strong>Shiraz</p>\r\n\r\n<p><strong>Đ&aacute;nh gi&aacute;:</strong>&nbsp;N/a</p>\r\n\r\n<p>Mọi nội dung tại&nbsp;<a data-mce-href="http://wineplaza.vn/" href="http://wineplaza.vn"><strong>wineplaza.vn</strong></a>&nbsp;đều c&oacute; mục đ&iacute;ch chia sẻ th&ocirc;ng tin v&agrave; t&igrave;nh y&ecirc;u với rượu vang.</p>\r\n\r\n<p>Để mua h&agrave;ng, qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>Hotline:</strong>&nbsp;<strong>0911.84.88.98 (HN) hoặc&nbsp;0911.84.88.89 (HCM)</strong></p>', 'the-gate-2010'),
(33, 1, 45, 'Megale 2013', '<p><strong>Rượu vang đỏ &Yacute; - Megale 2013</strong></p>\r\n\r\n<p>Rượu vang Megale&nbsp;c&oacute; m&agrave;u đỏ đằm thắm, hương thơm dịu d&agrave;ng, vị b&ugrave;i ch&aacute;t ngậy h&ograve;a quyện v&agrave;o nhau h&agrave;i h&ograve;a mực thước sẽ ph&ugrave; hợp với c&aacute;c bữa tiệc đ&ocirc;ng người.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Rượu vang Megale - Đậm đ&agrave; nồng thắm</strong></p>\r\n\r\n<p><strong>H&atilde;ng sản xuất:</strong>&nbsp;<a data-mce-href="http://wineplaza.vn/hang-ruou-vang-y-cantine-tinazzi.html" href="http://wineplaza.vn/hang-ruou-vang-y-cantine-tinazzi.html">Cantine Tinazzi</a>&nbsp;-&nbsp;<a data-mce-href="http://wineplaza.vn/italy.html" href="http://wineplaza.vn/italy.html">Italy</a></p>\r\n\r\n<p><strong>Loại vang:</strong>&nbsp;<a data-mce-href="http://wineplaza.vn/vang-do-red-wines.html" href="http://wineplaza.vn/vang-do-red-wines.html">Vang đỏ</a></p>\r\n\r\n<p><strong>Nồng độ cồn:&nbsp;</strong>12,5%</p>\r\n\r\n<p><strong>Dung t&iacute;ch:</strong>&nbsp;750ml/chai, 6 chai/th&ugrave;ng</p>\r\n\r\n<p><strong>Giống nho:</strong><strong>&nbsp;</strong><a data-mce-href="http://wineplaza.vn/giong-nho-negroamaro.html" href="http://wineplaza.vn/giong-nho-negroamaro.html">Negroamaro&nbsp;</a></p>\r\n\r\n<p><strong>Đ&aacute;nh gi&aacute;:</strong>&nbsp;Thường nhật</p>\r\n\r\n<p>Mọi nội dung tại&nbsp;<a data-mce-href="http://wineplaza.vn/" href="http://wineplaza.vn/"><strong>wineplaza.vn</strong></a>&nbsp;đều c&oacute; mục đ&iacute;ch chia sẻ th&ocirc;ng tin v&agrave; t&igrave;nh y&ecirc;u với rượu vang.</p>\r\n\r\n<p>Để mua h&agrave;ng, qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>Hotline:</strong>&nbsp;<strong>0911.84.88.98 (HN) hoặc&nbsp;0911.84.88.89 (HCM)</strong></p>', 'megale-2013'),
(34, 2, 45, 'Megale 2013', '<p><strong>Rượu vang đỏ &Yacute; - Megale 2013</strong></p>\r\n\r\n<p>Rượu vang Megale&nbsp;c&oacute; m&agrave;u đỏ đằm thắm, hương thơm dịu d&agrave;ng, vị b&ugrave;i ch&aacute;t ngậy h&ograve;a quyện v&agrave;o nhau h&agrave;i h&ograve;a mực thước sẽ ph&ugrave; hợp với c&aacute;c bữa tiệc đ&ocirc;ng người.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Rượu vang Megale - Đậm đ&agrave; nồng thắm</strong></p>\r\n\r\n<p><strong>H&atilde;ng sản xuất:</strong>&nbsp;<a data-mce-href="http://wineplaza.vn/hang-ruou-vang-y-cantine-tinazzi.html" href="http://wineplaza.vn/hang-ruou-vang-y-cantine-tinazzi.html">Cantine Tinazzi</a>&nbsp;-&nbsp;<a data-mce-href="http://wineplaza.vn/italy.html" href="http://wineplaza.vn/italy.html">Italy</a></p>\r\n\r\n<p><strong>Loại vang:</strong>&nbsp;<a data-mce-href="http://wineplaza.vn/vang-do-red-wines.html" href="http://wineplaza.vn/vang-do-red-wines.html">Vang đỏ</a></p>\r\n\r\n<p><strong>Nồng độ cồn:&nbsp;</strong>12,5%</p>\r\n\r\n<p><strong>Dung t&iacute;ch:</strong>&nbsp;750ml/chai, 6 chai/th&ugrave;ng</p>\r\n\r\n<p><strong>Giống nho:</strong><strong>&nbsp;</strong><a data-mce-href="http://wineplaza.vn/giong-nho-negroamaro.html" href="http://wineplaza.vn/giong-nho-negroamaro.html">Negroamaro&nbsp;</a></p>\r\n\r\n<p><strong>Đ&aacute;nh gi&aacute;:</strong>&nbsp;Thường nhật</p>\r\n\r\n<p>Mọi nội dung tại&nbsp;<a data-mce-href="http://wineplaza.vn/" href="http://wineplaza.vn/"><strong>wineplaza.vn</strong></a>&nbsp;đều c&oacute; mục đ&iacute;ch chia sẻ th&ocirc;ng tin v&agrave; t&igrave;nh y&ecirc;u với rượu vang.</p>\r\n\r\n<p>Để mua h&agrave;ng, qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>Hotline:</strong>&nbsp;<strong>0911.84.88.98 (HN) hoặc&nbsp;0911.84.88.89 (HCM)</strong></p>', 'megale-2013'),
(35, 1, 46, 'Negro Amaro 125', '<p><strong>Rượu vang AmaroNegro 125 &nbsp;</strong></p>\r\n\r\n<p>Rượu vang Amaro Negro 125 c&oacute; mầu đỏ ruby hơi ngả sang t&iacute;m c&ugrave;ng với hương thơm m&atilde;nh liệt của C&agrave; Ph&ecirc; tự nhi&ecirc;n, quả Việt Quất v&agrave; D&acirc;u. Lu&ocirc;n mượt m&agrave; v&agrave; nổi bật trong v&ograve;m miệng với vị tr&aacute;i c&acirc;y m&atilde;nh liệt.&nbsp;Pho-m&aacute;t, mỳ &Yacute;, quả Oliu v&agrave; b&aacute;nh Pizza l&agrave; những m&oacute;n ho&agrave;n hảo để kết hợp với loại rượu n&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>AMARO NEGRO 125 &nbsp;- Di sản v&ugrave;ng Salento</strong></p>\r\n\r\n<p><strong>H&atilde;ng sản xuất:</strong>&nbsp;Feudi Salentini</p>\r\n\r\n<p><strong>Loại vang:</strong>&nbsp;<a data-mce-href="http://wineplaza.vn/vang-do-red-wines.html" href="http://wineplaza.vn/vang-do-red-wines.html">Vang đỏ</a>&nbsp;</p>\r\n\r\n<p><strong>Nồng độ cồn:</strong><strong>&nbsp;</strong>12,5%</p>\r\n\r\n<p><strong>Dung t&iacute;ch:&nbsp;</strong>750ml/chai, 12 chai/th&ugrave;ng</p>\r\n\r\n<p><strong>Đ&aacute;nh gi&aacute;:</strong>&nbsp;Thường nhật</p>\r\n\r\n<p>Mọi nội dung tại&nbsp;<a data-mce-href="http://wineplaza.vn/" href="http://wineplaza.vn/"><strong>wineplaza.vn</strong></a>&nbsp;đều c&oacute; mục đ&iacute;ch chia sẻ th&ocirc;ng tin v&agrave; t&igrave;nh y&ecirc;u với rượu vang.</p>\r\n\r\n<p>Để mua h&agrave;ng, qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>Hotline:</strong>&nbsp;<strong>0911.84.88.98 (HN) hoặc&nbsp;0911.84.88.89 (HCM)</strong></p>', 'negro-amaro-125'),
(36, 2, 46, 'Negro Amaro 125', '<p><strong>Rượu vang AmaroNegro 125 &nbsp;</strong></p>\r\n\r\n<p>Rượu vang Amaro Negro 125 c&oacute; mầu đỏ ruby hơi ngả sang t&iacute;m c&ugrave;ng với hương thơm m&atilde;nh liệt của C&agrave; Ph&ecirc; tự nhi&ecirc;n, quả Việt Quất v&agrave; D&acirc;u. Lu&ocirc;n mượt m&agrave; v&agrave; nổi bật trong v&ograve;m miệng với vị tr&aacute;i c&acirc;y m&atilde;nh liệt.&nbsp;Pho-m&aacute;t, mỳ &Yacute;, quả Oliu v&agrave; b&aacute;nh Pizza l&agrave; những m&oacute;n ho&agrave;n hảo để kết hợp với loại rượu n&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>AMARO NEGRO 125 &nbsp;- Di sản v&ugrave;ng Salento</strong></p>\r\n\r\n<p><strong>H&atilde;ng sản xuất:</strong>&nbsp;Feudi Salentini</p>\r\n\r\n<p><strong>Loại vang:</strong>&nbsp;<a data-mce-href="http://wineplaza.vn/vang-do-red-wines.html" href="http://wineplaza.vn/vang-do-red-wines.html">Vang đỏ</a>&nbsp;</p>\r\n\r\n<p><strong>Nồng độ cồn:</strong><strong>&nbsp;</strong>12,5%</p>\r\n\r\n<p><strong>Dung t&iacute;ch:&nbsp;</strong>750ml/chai, 12 chai/th&ugrave;ng</p>\r\n\r\n<p><strong>Đ&aacute;nh gi&aacute;:</strong>&nbsp;Thường nhật</p>\r\n\r\n<p>Mọi nội dung tại&nbsp;<a data-mce-href="http://wineplaza.vn/" href="http://wineplaza.vn/"><strong>wineplaza.vn</strong></a>&nbsp;đều c&oacute; mục đ&iacute;ch chia sẻ th&ocirc;ng tin v&agrave; t&igrave;nh y&ecirc;u với rượu vang.</p>\r\n\r\n<p>Để mua h&agrave;ng, qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>Hotline:</strong>&nbsp;<strong>0911.84.88.98 (HN) hoặc&nbsp;0911.84.88.89 (HCM)</strong></p>', 'negro-amaro-125'),
(37, 1, 47, 'Amarone La Bastia', '<p><strong>Rượu vang đỏ &Yacute; - Amarone La Bastia</strong></p>\r\n\r\n<p>( WP20150001 )</p>\r\n\r\n<h2>Sản phẩm vang xuất sắc của v&ugrave;ng rượu vang Verona, ph&iacute;a T&acirc;y Bắc nước &Yacute;. Amarone La Bastia được sản xuất từ những loại nho đặc trưng nhất của v&ugrave;ng, đạt cấp độ cao nhất &ldquo;DOCG&rdquo; theo Luật rượu vang của &Yacute;.</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Sự ho&agrave;n hảo của Verona - Amarone La Bastia</strong></h2>\r\n\r\n<p><strong>H&atilde;ng sản xuất:</strong>&nbsp;<a data-mce-href="http://wineplaza.vn/hang-ruou-vang-y-cantine-tinazzi.html" href="http://wineplaza.vn/hang-ruou-vang-y-cantine-tinazzi.html">Cantine Tinazzi</a><a data-mce-href="http://wineplaza.vn/hang-ruou-vang-y-cantine-tinazzi.html" href="http://wineplaza.vn/hang-ruou-vang-y-cantine-tinazzi.html">&nbsp;</a>-&nbsp;<a data-mce-href="http://wineplaza.vn/dat-nuoc.html?countryid=24" href="http://wineplaza.vn/dat-nuoc.html?countryid=24">Italy</a></p>\r\n\r\n<p><strong>Loại vang:</strong>&nbsp;<a data-mce-href="http://wineplaza.vn/vang-do-red-wines.html" href="http://wineplaza.vn/vang-do-red-wines.html">Vang đỏ</a>&nbsp;</p>\r\n\r\n<p><strong>Nồng độ cồn:</strong>&nbsp;15%</p>\r\n\r\n<p><strong>Dung t&iacute;ch:</strong>&nbsp;750ml/chai, 6 chai/th&ugrave;ng</p>\r\n\r\n<p><strong>Giống nho:</strong><strong>&nbsp;</strong><a data-mce-href="http://wineplaza.vn/giong-nho-corvina.html" href="http://wineplaza.vn/giong-nho-corvina.html">Corvina</a>&nbsp;80%,&nbsp;<a data-mce-href="http://wineplaza.vn/giong-nho-rondinella.html" href="http://wineplaza.vn/giong-nho-rondinella.html">Rondinella</a>&nbsp;15%, Molinara 5%</p>\r\n\r\n<p><strong>Đ&aacute;nh gi&aacute;:</strong>&nbsp;Cao cấp</p>\r\n\r\n<p>Mọi nội dung tại&nbsp;<a data-mce-href="http://wineplaza.vn/" href="http://wineplaza.vn"><strong>wineplaza.vn</strong></a>&nbsp;đều c&oacute; mục đ&iacute;ch chia sẻ th&ocirc;ng tin v&agrave; t&igrave;nh y&ecirc;u với rượu vang.</p>\r\n\r\n<p>Để mua h&agrave;ng, qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>Hotline:</strong>&nbsp;<strong>0911.84.88.98 hoặc&nbsp;0911.84.88.89&nbsp;</strong></p>', 'amarone-la-bastia'),
(38, 2, 47, 'Amarone La Bastia', '<p><strong>Rượu vang đỏ &Yacute; - Amarone La Bastia</strong></p>\r\n\r\n<p>( WP20150001 )</p>\r\n\r\n<h2>Sản phẩm vang xuất sắc của v&ugrave;ng rượu vang Verona, ph&iacute;a T&acirc;y Bắc nước &Yacute;. Amarone La Bastia được sản xuất từ những loại nho đặc trưng nhất của v&ugrave;ng, đạt cấp độ cao nhất &ldquo;DOCG&rdquo; theo Luật rượu vang của &Yacute;.</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Sự ho&agrave;n hảo của Verona - Amarone La Bastia</strong></h2>\r\n\r\n<p><strong>H&atilde;ng sản xuất:</strong>&nbsp;<a data-mce-href="http://wineplaza.vn/hang-ruou-vang-y-cantine-tinazzi.html" href="http://wineplaza.vn/hang-ruou-vang-y-cantine-tinazzi.html">Cantine Tinazzi</a><a data-mce-href="http://wineplaza.vn/hang-ruou-vang-y-cantine-tinazzi.html" href="http://wineplaza.vn/hang-ruou-vang-y-cantine-tinazzi.html">&nbsp;</a>-&nbsp;<a data-mce-href="http://wineplaza.vn/dat-nuoc.html?countryid=24" href="http://wineplaza.vn/dat-nuoc.html?countryid=24">Italy</a></p>\r\n\r\n<p><strong>Loại vang:</strong>&nbsp;<a data-mce-href="http://wineplaza.vn/vang-do-red-wines.html" href="http://wineplaza.vn/vang-do-red-wines.html">Vang đỏ</a>&nbsp;</p>\r\n\r\n<p><strong>Nồng độ cồn:</strong>&nbsp;15%</p>\r\n\r\n<p><strong>Dung t&iacute;ch:</strong>&nbsp;750ml/chai, 6 chai/th&ugrave;ng</p>\r\n\r\n<p><strong>Giống nho:</strong><strong>&nbsp;</strong><a data-mce-href="http://wineplaza.vn/giong-nho-corvina.html" href="http://wineplaza.vn/giong-nho-corvina.html">Corvina</a>&nbsp;80%,&nbsp;<a data-mce-href="http://wineplaza.vn/giong-nho-rondinella.html" href="http://wineplaza.vn/giong-nho-rondinella.html">Rondinella</a>&nbsp;15%, Molinara 5%</p>\r\n\r\n<p><strong>Đ&aacute;nh gi&aacute;:</strong>&nbsp;Cao cấp</p>\r\n\r\n<p>Mọi nội dung tại&nbsp;<a data-mce-href="http://wineplaza.vn/" href="http://wineplaza.vn"><strong>wineplaza.vn</strong></a>&nbsp;đều c&oacute; mục đ&iacute;ch chia sẻ th&ocirc;ng tin v&agrave; t&igrave;nh y&ecirc;u với rượu vang.</p>\r\n\r\n<p>Để mua h&agrave;ng, qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>Hotline:</strong>&nbsp;<strong>0911.84.88.98 hoặc&nbsp;0911.84.88.89&nbsp;</strong></p>', 'amarone-la-bastia'),
(39, 1, 49, 'Rượu Vang Đỏ Tây Ban Nha', '<p>Rượu vang đỏ T&acirc;y Ban Nha - Vall De Lar</p>\r\n\r\n<p><strong>Vall De Lar Tinto</strong>&nbsp;c&oacute; h&agrave;m lượng tanin vừa phải, hương thơm phong ph&uacute; của thảo mộc, mận ch&iacute;n, thuốc l&aacute;, vani. Rượu vang Vall De Lar được sản xuất từ giống nho Tempranillo (Quốc nho của T&acirc;y Ban Nha).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Rượu vang đỏ T&acirc;y Ban Nha Vall De Lar Tinto</strong></p>\r\n\r\n<p><strong>H&atilde;ng sản xuất:&nbsp;</strong>Santaba</p>\r\n\r\n<p><strong>Loại vang</strong><strong>:&nbsp;</strong>Vang đỏ</p>\r\n\r\n<p><strong>Độ cồn</strong>: 13 %</p>\r\n\r\n<p><strong>Giống nho</strong>: Tempranillo</p>\r\n\r\n<p><strong>Dung t&iacute;ch</strong>: 750ml/chai, 6 chai/th&ugrave;ng</p>\r\n\r\n<p><strong>H&atilde;ng sản xuất</strong>: Bodegas Santaba</p>\r\n\r\n<p>Mọi nội dung tại&nbsp;<a data-mce-href="http://wineplaza.vn/" href="http://wineplaza.vn/">wineplaza.vn</a>&nbsp;đều c&oacute; mục đ&iacute;ch chia sẻ th&ocirc;ng tin v&agrave; t&igrave;nh y&ecirc;u với rượu vang. Để mua h&agrave;ng qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>Hotline: 0911.84.88.98 (HN)&nbsp;</strong></p>\r\n\r\n<p><strong>hoặc 0911.84.88.89 (HCM)</strong></p>', 'ruou-vang-do-tay-ban-nha'),
(40, 2, 49, 'Vall De Lar Tinto', '<p>Rượu vang đỏ T&acirc;y Ban Nha - Vall De Lar</p>\r\n\r\n<p><strong>Vall De Lar Tinto</strong>&nbsp;c&oacute; h&agrave;m lượng tanin vừa phải, hương thơm phong ph&uacute; của thảo mộc, mận ch&iacute;n, thuốc l&aacute;, vani. Rượu vang Vall De Lar được sản xuất từ giống nho Tempranillo (Quốc nho của T&acirc;y Ban Nha).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Rượu vang đỏ T&acirc;y Ban Nha Vall De Lar Tinto</strong></p>\r\n\r\n<p><strong>H&atilde;ng sản xuất:&nbsp;</strong>Santaba</p>\r\n\r\n<p><strong>Loại vang</strong><strong>:&nbsp;</strong>Vang đỏ</p>\r\n\r\n<p><strong>Độ cồn</strong>: 13 %</p>\r\n\r\n<p><strong>Giống nho</strong>: Tempranillo</p>\r\n\r\n<p><strong>Dung t&iacute;ch</strong>: 750ml/chai, 6 chai/th&ugrave;ng</p>\r\n\r\n<p><strong>H&atilde;ng sản xuất</strong>: Bodegas Santaba</p>\r\n\r\n<p>Mọi nội dung tại&nbsp;<a data-mce-href="http://wineplaza.vn/" href="http://wineplaza.vn/">wineplaza.vn</a>&nbsp;đều c&oacute; mục đ&iacute;ch chia sẻ th&ocirc;ng tin v&agrave; t&igrave;nh y&ecirc;u với rượu vang. Để mua h&agrave;ng qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>Hotline: 0911.84.88.98 (HN)&nbsp;</strong></p>\r\n\r\n<p><strong>hoặc 0911.84.88.89 (HCM)</strong></p>', 'vall-de-lar-tinto'),
(41, 1, 50, 'Vall De Lar Blanco 2014', '<p><strong>Vall De Lar Blanco 2014</strong>&nbsp;c&oacute; vị chua đậm, chất rượu vang đậm đặc rất th&iacute;ch hợp để đi k&egrave;m với thức ăn d&ugrave;ng để khai vị.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>H&atilde;ng sản xuất</strong>: Bodegas Santalba</p>\r\n\r\n<p><strong>Loại vang</strong>: Vang trắng</p>\r\n\r\n<p><strong>Giống nho</strong>: Tempranillo Blanco</p>\r\n\r\n<p><strong>Nồng độ cồn</strong>:&nbsp;12.5</p>\r\n\r\n<p><strong>Dung t&iacute;ch</strong>: 750 ml/chai, 6 chai/th&ugrave;ng</p>\r\n\r\n<p>Mọi nội dung tại&nbsp;<a data-mce-href="http://wineplaza.vn/" href="http://wineplaza.vn/">wineplaza.vn</a>&nbsp;đều c&oacute; mục đ&iacute;ch chia sẻ th&ocirc;ng tin v&agrave; t&igrave;nh y&ecirc;u với rượu vang.</p>\r\n\r\n<p>Để mua h&agrave;ng, qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>Hotline: 0911.84.88.98 (HN) hoặc 0911.84.88.89 (HCM)</strong></p>', 'vall-de-lar-blanco-2014'),
(42, 2, 50, 'Vall De Lar Blanco 2014', '<p><strong>Vall De Lar Blanco 2014</strong>&nbsp;c&oacute; vị chua đậm, chất rượu vang đậm đặc rất th&iacute;ch hợp để đi k&egrave;m với thức ăn d&ugrave;ng để khai vị.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>H&atilde;ng sản xuất</strong>: Bodegas Santalba</p>\r\n\r\n<p><strong>Loại vang</strong>: Vang trắng</p>\r\n\r\n<p><strong>Giống nho</strong>: Tempranillo Blanco</p>\r\n\r\n<p><strong>Nồng độ cồn</strong>:&nbsp;12.5</p>\r\n\r\n<p><strong>Dung t&iacute;ch</strong>: 750 ml/chai, 6 chai/th&ugrave;ng</p>\r\n\r\n<p>Mọi nội dung tại&nbsp;<a data-mce-href="http://wineplaza.vn/" href="http://wineplaza.vn/">wineplaza.vn</a>&nbsp;đều c&oacute; mục đ&iacute;ch chia sẻ th&ocirc;ng tin v&agrave; t&igrave;nh y&ecirc;u với rượu vang.</p>\r\n\r\n<p>Để mua h&agrave;ng, qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>Hotline: 0911.84.88.98 (HN) hoặc 0911.84.88.89 (HCM)</strong></p>', 'vall-de-lar-blanco-2014'),
(43, 1, 51, 'Mousai Merlot 2015', '<p>Rượu vang đỏ Chile Mousai Merlot v&ocirc; c&ugrave;ng quyến rũ với hương vani pha ch&uacute;t tinh tế của chocolate v&agrave; c&aacute;c hạt gia vị. H&atilde;y uống v&agrave; cảm nhận Mousai Merlot với vị tannin mạnh mẽ, đầy trưởng th&agrave;nh - điển h&igrave;nh của giống nho được trồng tại thung lũng Colchagua, n&oacute; đưa đến người uống một cấu tr&uacute;c đậm đặc v&agrave; h&agrave;i h&ograve;a thi vị. Vị ch&aacute;t đậm để lại dư &acirc;m tr&agrave;n đầy trong v&ograve;m miệng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>H&atilde;ng sản xuất</strong>: La Ronciere</p>\r\n\r\n<p>V&ugrave;ng đất trồng: Colchagua</p>\r\n\r\n<p><strong>Loại vang</strong>: Vang đỏ</p>\r\n\r\n<p><strong>Nồng độ cồn</strong>: 13,5%</p>\r\n\r\n<p><strong>Dung t&iacute;ch</strong>: 750ml/chai, 6 chai/th&ugrave;ng</p>\r\n\r\n<p><strong>Giống nho</strong>: 100% Merlot</p>\r\n\r\n<p><strong>Ni&ecirc;n vụ</strong>&nbsp;: 2015</p>\r\n\r\n<p>Mọi nội dung tại&nbsp;<a data-mce-href="http://wineplaza.vn/" href="http://wineplaza.vn/">wineplaza.vn</a>&nbsp;đều c&oacute; mục đ&iacute;ch chia sẻ th&ocirc;ng tin v&agrave; t&igrave;nh y&ecirc;u với rượu vang.</p>\r\n\r\n<p>Để mua h&agrave;ng, qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>Hotline: 0911.84.88.98 (HN) hoặc 0911.84.88.89 (HCM)</strong></p>', 'mousai-merlot-2015'),
(44, 2, 51, 'Mousai Merlot 2015', '<p>Rượu vang đỏ Chile Mousai Merlot v&ocirc; c&ugrave;ng quyến rũ với hương vani pha ch&uacute;t tinh tế của chocolate v&agrave; c&aacute;c hạt gia vị. H&atilde;y uống v&agrave; cảm nhận Mousai Merlot với vị tannin mạnh mẽ, đầy trưởng th&agrave;nh - điển h&igrave;nh của giống nho được trồng tại thung lũng Colchagua, n&oacute; đưa đến người uống một cấu tr&uacute;c đậm đặc v&agrave; h&agrave;i h&ograve;a thi vị. Vị ch&aacute;t đậm để lại dư &acirc;m tr&agrave;n đầy trong v&ograve;m miệng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>H&atilde;ng sản xuất</strong>: La Ronciere</p>\r\n\r\n<p>V&ugrave;ng đất trồng: Colchagua</p>\r\n\r\n<p><strong>Loại vang</strong>: Vang đỏ</p>\r\n\r\n<p><strong>Nồng độ cồn</strong>: 13,5%</p>\r\n\r\n<p><strong>Dung t&iacute;ch</strong>: 750ml/chai, 6 chai/th&ugrave;ng</p>\r\n\r\n<p><strong>Giống nho</strong>: 100% Merlot</p>\r\n\r\n<p><strong>Ni&ecirc;n vụ</strong>&nbsp;: 2015</p>\r\n\r\n<p>Mọi nội dung tại&nbsp;<a data-mce-href="http://wineplaza.vn/" href="http://wineplaza.vn/">wineplaza.vn</a>&nbsp;đều c&oacute; mục đ&iacute;ch chia sẻ th&ocirc;ng tin v&agrave; t&igrave;nh y&ecirc;u với rượu vang.</p>\r\n\r\n<p>Để mua h&agrave;ng, qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>Hotline: 0911.84.88.98 (HN) hoặc 0911.84.88.89 (HCM)</strong></p>', 'mousai-merlot-2015'),
(45, 1, 52, 'Primittivo 100 Essenza', '<p>Rượu vang Primittivo 100 Essenza&nbsp;c&oacute; m&ugrave;i thơm dịu d&agrave;ng của cỏ ngọt kh&ocirc; v&agrave; c&aacute;c loại mứt tr&aacute;i c&acirc;y, qu&aacute; tr&igrave;nh lắc sẽ tỏa ra hương thơm nồng n&agrave;n quyến rũ ho&agrave;n vị Tannin sẽ mềm mại nhanh ch&oacute;ng chinh phục được những thực kh&aacute;ch kh&oacute; t&iacute;nh nhất.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Primitivo 100 Essenza - Sự ho&agrave;n hảo của tạo h&oacute;a</strong></p>\r\n\r\n<p><strong>H&atilde;ng sản xuất:</strong>&nbsp;Feudi Salentini</p>\r\n\r\n<p><strong>Loại vang:</strong>&nbsp;<a data-mce-href="http://wineplaza.vn/vang-do-red-wines.html" href="http://wineplaza.vn/vang-do-red-wines.html">Vang đỏ</a>&nbsp;</p>\r\n\r\n<p><strong>Nồng độ cồn:</strong><strong>&nbsp;</strong>15%</p>\r\n\r\n<p><strong>Giống nho:</strong><strong>&nbsp;</strong><a data-mce-href="http://wineplaza.vn/giong-nho-primitivo.html" href="http://wineplaza.vn/giong-nho-primitivo.html">Primitivo</a>&nbsp;-2012</p>\r\n\r\n<p><strong>Dung t&iacute;ch:&nbsp;</strong>750ml/chai, 12 chai/th&ugrave;ng</p>\r\n\r\n<p><strong>Đ&aacute;nh gi&aacute;:</strong>&nbsp;Thường nhật</p>\r\n\r\n<p>Mọi nội dung tại&nbsp;<a data-mce-href="http://wineplaza.vn/" href="http://wineplaza.vn/"><strong>wineplaza.vn</strong></a>&nbsp;đều c&oacute; mục đ&iacute;ch chia sẻ th&ocirc;ng tin v&agrave; t&igrave;nh y&ecirc;u với rượu vang.</p>\r\n\r\n<p>Để mua h&agrave;ng, qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>Hotline: 0911 848 898 (HN) hoặc 0911 848 889 (HCM)</strong></p>', 'primittivo-100-essenza'),
(46, 2, 52, 'Primittivo 100 Essenza', '<p>Rượu vang Primittivo 100 Essenza&nbsp;c&oacute; m&ugrave;i thơm dịu d&agrave;ng của cỏ ngọt kh&ocirc; v&agrave; c&aacute;c loại mứt tr&aacute;i c&acirc;y, qu&aacute; tr&igrave;nh lắc sẽ tỏa ra hương thơm nồng n&agrave;n quyến rũ ho&agrave;n vị Tannin sẽ mềm mại nhanh ch&oacute;ng chinh phục được những thực kh&aacute;ch kh&oacute; t&iacute;nh nhất.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Primitivo 100 Essenza - Sự ho&agrave;n hảo của tạo h&oacute;a</strong></p>\r\n\r\n<p><strong>H&atilde;ng sản xuất:</strong>&nbsp;Feudi Salentini</p>\r\n\r\n<p><strong>Loại vang:</strong>&nbsp;<a data-mce-href="http://wineplaza.vn/vang-do-red-wines.html" href="http://wineplaza.vn/vang-do-red-wines.html">Vang đỏ</a>&nbsp;</p>\r\n\r\n<p><strong>Nồng độ cồn:</strong><strong>&nbsp;</strong>15%</p>\r\n\r\n<p><strong>Giống nho:</strong><strong>&nbsp;</strong><a data-mce-href="http://wineplaza.vn/giong-nho-primitivo.html" href="http://wineplaza.vn/giong-nho-primitivo.html">Primitivo</a>&nbsp;-2012</p>\r\n\r\n<p><strong>Dung t&iacute;ch:&nbsp;</strong>750ml/chai, 12 chai/th&ugrave;ng</p>\r\n\r\n<p><strong>Đ&aacute;nh gi&aacute;:</strong>&nbsp;Thường nhật</p>\r\n\r\n<p>Mọi nội dung tại&nbsp;<a data-mce-href="http://wineplaza.vn/" href="http://wineplaza.vn/"><strong>wineplaza.vn</strong></a>&nbsp;đều c&oacute; mục đ&iacute;ch chia sẻ th&ocirc;ng tin v&agrave; t&igrave;nh y&ecirc;u với rượu vang.</p>\r\n\r\n<p>Để mua h&agrave;ng, qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>Hotline: 0911 848 898 (HN) hoặc 0911 848 889 (HCM)</strong></p>', 'primittivo-100-essenza'),
(47, 1, 53, 'Moscato Spumante', '<p>Rượu vang nổ (sparkling) Moscato Spumante l&agrave; người chị em song sinh với nh&atilde;n vang trắng DOCG&nbsp;nổi tiếng của Italy:&nbsp;<a data-mce-href="http://wineplaza.vn/ruou-vang-trang-italy-moscatto-dasti.html" href="http://wineplaza.vn/ruou-vang-trang-italy-moscatto-dasti.html">Moscato D&rsquo;Asti</a>. Ho&agrave;n hảo trong những ng&agrave;y h&egrave; oi n&oacute;ng c&ugrave;ng với bạn b&egrave; v&agrave; người th&acirc;n</p>\r\n\r\n<p><strong>Moscato Spumante</strong></p>\r\n\r\n<p><strong>H&atilde;ng sản xuất:</strong>&nbsp;Francesco Capetta -&nbsp;<a data-mce-href="http://wineplaza.vn/italy.html" href="http://wineplaza.vn/italy.html">Italy</a></p>\r\n\r\n<p><strong>Loại vang:</strong>&nbsp;<a data-mce-href="http://wineplaza.vn/vang-no-sparkling-wines.html" href="http://wineplaza.vn/vang-no-sparkling-wines.html">Vang nổ</a>&nbsp;(Sparkling)</p>\r\n\r\n<p><strong>Nồng độ cồn:</strong>&nbsp;6,5%</p>\r\n\r\n<p><strong>Dung t&iacute;ch:</strong>&nbsp;750ml/chai, 6 chai/th&ugrave;ng</p>\r\n\r\n<p><strong>Giống nho:</strong><strong>&nbsp;</strong>Moscato (Muscat Blanc)</p>\r\n\r\n<p><strong>Đ&aacute;nh gi&aacute;:</strong>&nbsp;Chất lượng ho&agrave;n hảo &ndash; Wineplaza bảo ho&agrave;n tiền nếu thấy kh&ocirc;ng ngon</p>\r\n\r\n<p>Mọi nội dung tại&nbsp;<u>wineplaza.vn</u>&nbsp;đều c&oacute; mục đ&iacute;ch chia sẻ th&ocirc;ng tin v&agrave; t&igrave;nh y&ecirc;u với rượu vang.</p>\r\n\r\n<p>Để mua h&agrave;ng, qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>Hotline: 0911 848 898 (HN) hoặc 0911 848 889 (HCM)</strong></p>\r\n\r\n<p><strong>Rượu vang nổ Moscato Spumante</strong></p>\r\n\r\n<p>Rượu Sparkling Moscato Spumante l&agrave; người chị em song sinh với nh&atilde;n vang trắng DOCG (<a data-mce-href="http://wineplaza.vn/y-nghia-cac-thuat-ngu-va-nhan-ruou-vang-trong-tieng-y.html" href="http://wineplaza.vn/y-nghia-cac-thuat-ngu-va-nhan-ruou-vang-trong-tieng-y.html">T&igrave;m hiểu luật rượu vang Italy</a>) nổi tiếng của Italy:&nbsp;<a data-mce-href="http://wineplaza.vn/ruou-vang-trang-italy-moscatto-dasti.html" href="http://wineplaza.vn/ruou-vang-trang-italy-moscatto-dasti.html">Moscato D&rsquo;Asti</a>. C&oacute; hương vị c&oacute; nhiều điểm giống Moscato như l&agrave; m&ugrave;i hương độc đ&aacute;o hay hương vị sảng kho&aacute;i những Moscato Spumante c&oacute; nhiều Gas hơn. Để sản xuất, những tr&aacute;i nho sẽ được loại bỏ hạt v&agrave; &eacute;p bằng tay một c&aacute;ch cẩn thận nhất c&oacute; thể ngay sau khi được h&aacute;i để giữ được hương thơm. Qu&aacute; tr&igrave;nh sản xuất v&agrave; ủ men phức tạp sau đ&oacute; l&agrave; cả một nghệ thuật bởi sự cầu k&igrave; về kĩ thuật giữ lạnh, kiểm so&aacute;t độ l&ecirc;n men v&agrave; c&aacute;ch ủ để tạo ra sản phẩm ho&agrave;n hảo. Tuy nhi&ecirc;n qu&aacute; tr&igrave;nh l&ecirc;n men sẽ được ph&acirc;n l&agrave;m 2 qu&aacute; tr&igrave;nh: L&ecirc;n men trong th&ugrave;ng v&agrave; l&ecirc;n men trong chai. Ch&iacute;nh qu&aacute; tr&igrave;nh l&ecirc;n men trong chai đ&atilde; tạo ra kh&iacute; CO2&nbsp;- ch&iacute;nh l&agrave; nguy&ecirc;n nh&acirc;n dẫn tới sự sủi tăm của rượu vang.</p>\r\n\r\n<p>Moscato Spumante được Wineplaza đảm bảo về chất lượng v&agrave; hương vị. Bạn sẽ được ho&agrave;n tiền 100% nếu cảm thấy Moscato D&rsquo;Asti kh&ocirc;ng l&agrave;m bạn h&agrave;i l&ograve;ng với bất cứ l&yacute; do g&igrave;.</p>\r\n\r\n<p><strong>Đặc t&iacute;nh</strong>:&nbsp;Moscato Spumante sủi nhẹ nh&agrave;ng v&agrave; c&oacute; mầu v&agrave;ng rơm thanh tho&aacute;t c&ugrave;ng vị ngọt thanh đầy sống động. C&oacute; m&ugrave;i thơm dịu nhẹ - l&agrave; sự kết hợp h&agrave;i h&ograve;a giữa m&ugrave;i hoa chanh, bạc h&agrave; v&agrave; quế. Hương thơm của giống nho Moscato l&agrave; độc nhất v&ocirc; nhị, rất kh&oacute; c&oacute; thể nhầm với c&aacute;c giống nho kh&aacute;c.</p>\r\n\r\n<p><strong>Kết hợp đồ ăn</strong>:&nbsp;Th&iacute;ch hợp nhất khi uống k&egrave;m tốt nhất với tr&aacute;i c&acirc;y tươi, b&aacute;nh ngọt, c&aacute;c m&oacute;n &Aacute; Ch&acirc;u. Chai vang ướp lạnh l&agrave; l&yacute; tưởng cho một ng&agrave;y h&egrave; oi bức.</p>\r\n\r\n<p><strong>Lưu &yacute;:</strong>&nbsp;Thưởng thức tuyệt vời nhất khi được ướp lạnh ở nhiệt độ khoảng 6<sup>o</sup>C-8<sup>o</sup>C</p>', 'moscato-spumante'),
(48, 2, 53, 'Moscato Spumante', '<p>Rượu vang nổ (sparkling) Moscato Spumante l&agrave; người chị em song sinh với nh&atilde;n vang trắng DOCG&nbsp;nổi tiếng của Italy:&nbsp;<a data-mce-href="http://wineplaza.vn/ruou-vang-trang-italy-moscatto-dasti.html" href="http://wineplaza.vn/ruou-vang-trang-italy-moscatto-dasti.html">Moscato D&rsquo;Asti</a>. Ho&agrave;n hảo trong những ng&agrave;y h&egrave; oi n&oacute;ng c&ugrave;ng với bạn b&egrave; v&agrave; người th&acirc;n</p>\r\n\r\n<p><strong>Moscato Spumante</strong></p>\r\n\r\n<p><strong>H&atilde;ng sản xuất:</strong>&nbsp;Francesco Capetta -&nbsp;<a data-mce-href="http://wineplaza.vn/italy.html" href="http://wineplaza.vn/italy.html">Italy</a></p>\r\n\r\n<p><strong>Loại vang:</strong>&nbsp;<a data-mce-href="http://wineplaza.vn/vang-no-sparkling-wines.html" href="http://wineplaza.vn/vang-no-sparkling-wines.html">Vang nổ</a>&nbsp;(Sparkling)</p>\r\n\r\n<p><strong>Nồng độ cồn:</strong>&nbsp;6,5%</p>\r\n\r\n<p><strong>Dung t&iacute;ch:</strong>&nbsp;750ml/chai, 6 chai/th&ugrave;ng</p>\r\n\r\n<p><strong>Giống nho:</strong><strong>&nbsp;</strong>Moscato (Muscat Blanc)</p>\r\n\r\n<p><strong>Đ&aacute;nh gi&aacute;:</strong>&nbsp;Chất lượng ho&agrave;n hảo &ndash; Wineplaza bảo ho&agrave;n tiền nếu thấy kh&ocirc;ng ngon</p>\r\n\r\n<p>Mọi nội dung tại&nbsp;<u>wineplaza.vn</u>&nbsp;đều c&oacute; mục đ&iacute;ch chia sẻ th&ocirc;ng tin v&agrave; t&igrave;nh y&ecirc;u với rượu vang.</p>\r\n\r\n<p>Để mua h&agrave;ng, qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>Hotline: 0911 848 898 (HN) hoặc 0911 848 889 (HCM)</strong></p>\r\n\r\n<p><strong>Rượu vang nổ Moscato Spumante</strong></p>\r\n\r\n<p>Rượu Sparkling Moscato Spumante l&agrave; người chị em song sinh với nh&atilde;n vang trắng DOCG (<a data-mce-href="http://wineplaza.vn/y-nghia-cac-thuat-ngu-va-nhan-ruou-vang-trong-tieng-y.html" href="http://wineplaza.vn/y-nghia-cac-thuat-ngu-va-nhan-ruou-vang-trong-tieng-y.html">T&igrave;m hiểu luật rượu vang Italy</a>) nổi tiếng của Italy:&nbsp;<a data-mce-href="http://wineplaza.vn/ruou-vang-trang-italy-moscatto-dasti.html" href="http://wineplaza.vn/ruou-vang-trang-italy-moscatto-dasti.html">Moscato D&rsquo;Asti</a>. C&oacute; hương vị c&oacute; nhiều điểm giống Moscato như l&agrave; m&ugrave;i hương độc đ&aacute;o hay hương vị sảng kho&aacute;i những Moscato Spumante c&oacute; nhiều Gas hơn. Để sản xuất, những tr&aacute;i nho sẽ được loại bỏ hạt v&agrave; &eacute;p bằng tay một c&aacute;ch cẩn thận nhất c&oacute; thể ngay sau khi được h&aacute;i để giữ được hương thơm. Qu&aacute; tr&igrave;nh sản xuất v&agrave; ủ men phức tạp sau đ&oacute; l&agrave; cả một nghệ thuật bởi sự cầu k&igrave; về kĩ thuật giữ lạnh, kiểm so&aacute;t độ l&ecirc;n men v&agrave; c&aacute;ch ủ để tạo ra sản phẩm ho&agrave;n hảo. Tuy nhi&ecirc;n qu&aacute; tr&igrave;nh l&ecirc;n men sẽ được ph&acirc;n l&agrave;m 2 qu&aacute; tr&igrave;nh: L&ecirc;n men trong th&ugrave;ng v&agrave; l&ecirc;n men trong chai. Ch&iacute;nh qu&aacute; tr&igrave;nh l&ecirc;n men trong chai đ&atilde; tạo ra kh&iacute; CO2&nbsp;- ch&iacute;nh l&agrave; nguy&ecirc;n nh&acirc;n dẫn tới sự sủi tăm của rượu vang.</p>\r\n\r\n<p>Moscato Spumante được Wineplaza đảm bảo về chất lượng v&agrave; hương vị. Bạn sẽ được ho&agrave;n tiền 100% nếu cảm thấy Moscato D&rsquo;Asti kh&ocirc;ng l&agrave;m bạn h&agrave;i l&ograve;ng với bất cứ l&yacute; do g&igrave;.</p>\r\n\r\n<p><strong>Đặc t&iacute;nh</strong>:&nbsp;Moscato Spumante sủi nhẹ nh&agrave;ng v&agrave; c&oacute; mầu v&agrave;ng rơm thanh tho&aacute;t c&ugrave;ng vị ngọt thanh đầy sống động. C&oacute; m&ugrave;i thơm dịu nhẹ - l&agrave; sự kết hợp h&agrave;i h&ograve;a giữa m&ugrave;i hoa chanh, bạc h&agrave; v&agrave; quế. Hương thơm của giống nho Moscato l&agrave; độc nhất v&ocirc; nhị, rất kh&oacute; c&oacute; thể nhầm với c&aacute;c giống nho kh&aacute;c.</p>\r\n\r\n<p><strong>Kết hợp đồ ăn</strong>:&nbsp;Th&iacute;ch hợp nhất khi uống k&egrave;m tốt nhất với tr&aacute;i c&acirc;y tươi, b&aacute;nh ngọt, c&aacute;c m&oacute;n &Aacute; Ch&acirc;u. Chai vang ướp lạnh l&agrave; l&yacute; tưởng cho một ng&agrave;y h&egrave; oi bức.</p>\r\n\r\n<p><strong>Lưu &yacute;:</strong>&nbsp;Thưởng thức tuyệt vời nhất khi được ướp lạnh ở nhiệt độ khoảng 6<sup>o</sup>C-8<sup>o</sup>C</p>', 'moscato-spumante'),
(49, 1, 54, 'Cantoalba Sauvignon Blanc', '<p>Cantoalba Sauvignon Blanc l&agrave; chai vang trắng được sản xuất &nbsp;100% từ giống nho Sauvignon Blanc. Rượu c&oacute; m&agrave;u v&agrave;ng s&aacute;ng &aacute;nh xanh, hương hoa phức hợp đặc trưng của giống nho Sauvignon Blanc, vị tr&ograve;n mịn v&agrave; mang hương vị kho&aacute;ng chất. Rượu cho vị chua ngay khi tiếp x&uacute;c với khoang miệng, k&iacute;ch th&iacute;ch vị gi&aacute;c, ph&ugrave; hợp để khai vị trong c&aacute;c bữa ăn.</p>\r\n\r\n<p><strong>Xuất xứ</strong>: Chile</p>\r\n\r\n<p><strong>H&atilde;ng sản xuất</strong>: La Ronciere</p>\r\n\r\n<p><strong>Khu vực</strong>: Central Valley</p>\r\n\r\n<p><strong>Nồng độ cồn</strong>: 13,5%</p>\r\n\r\n<p><strong>Dung t&iacute;ch</strong>: 750ml/chai, 6 chai/th&ugrave;ng</p>\r\n\r\n<p><strong>Giống nho</strong>: Nho Sauvignon Blanc</p>\r\n\r\n<p><strong>M&ugrave;a vụ</strong>: 2014</p>\r\n\r\n<p>Mọi nội dung tại&nbsp;<a data-mce-href="http://wineplaza.vn/" href="http://wineplaza.vn/">wineplaza.vn</a>&nbsp;đều c&oacute; mục đ&iacute;ch chia sẻ th&ocirc;ng tin v&agrave; t&igrave;nh y&ecirc;u với rượu vang.</p>\r\n\r\n<p>Để mua h&agrave;ng, qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>Hotline: 0911 848 898 (HN) hoặc 0911 848 889 (HCM)</strong></p>', 'cantoalba-sauvignon-blanc'),
(50, 2, 54, 'Cantoalba Sauvignon Blanc', '<p>Cantoalba Sauvignon Blanc l&agrave; chai vang trắng được sản xuất &nbsp;100% từ giống nho Sauvignon Blanc. Rượu c&oacute; m&agrave;u v&agrave;ng s&aacute;ng &aacute;nh xanh, hương hoa phức hợp đặc trưng của giống nho Sauvignon Blanc, vị tr&ograve;n mịn v&agrave; mang hương vị kho&aacute;ng chất. Rượu cho vị chua ngay khi tiếp x&uacute;c với khoang miệng, k&iacute;ch th&iacute;ch vị gi&aacute;c, ph&ugrave; hợp để khai vị trong c&aacute;c bữa ăn.</p>\r\n\r\n<p><strong>Xuất xứ</strong>: Chile</p>\r\n\r\n<p><strong>H&atilde;ng sản xuất</strong>: La Ronciere</p>\r\n\r\n<p><strong>Khu vực</strong>: Central Valley</p>\r\n\r\n<p><strong>Nồng độ cồn</strong>: 13,5%</p>\r\n\r\n<p><strong>Dung t&iacute;ch</strong>: 750ml/chai, 6 chai/th&ugrave;ng</p>\r\n\r\n<p><strong>Giống nho</strong>: Nho Sauvignon Blanc</p>\r\n\r\n<p><strong>M&ugrave;a vụ</strong>: 2014</p>\r\n\r\n<p>Mọi nội dung tại&nbsp;<a data-mce-href="http://wineplaza.vn/" href="http://wineplaza.vn/">wineplaza.vn</a>&nbsp;đều c&oacute; mục đ&iacute;ch chia sẻ th&ocirc;ng tin v&agrave; t&igrave;nh y&ecirc;u với rượu vang.</p>\r\n\r\n<p>Để mua h&agrave;ng, qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:</p>\r\n\r\n<p><strong>Hotline: 0911 848 898 (HN) hoặc 0911 848 889 (HCM)</strong></p>', 'cantoalba-sauvignon-blanc'),
(51, 1, 55, '123123', '<p><input alt="" src="http://localhost/project-wine-center/public/images/products/ice-wine-bottles_256135.jpg" type="image" /></p>', '123123'),
(52, 1, 56, '123123', '<p><input alt="" src="http://localhost/project-wine-center/public/images/products/ice-wine-bottles_256135.jpg" type="image" />12323</p>', '123123'),
(53, 2, 56, '231231', '<p>12313</p>', '231231'),
(54, 1, 57, '123123', '<p>21123213</p>', '123123'),
(55, 2, 57, '12312', '<p>13123</p>', '12312');

-- --------------------------------------------------------

--
-- Table structure for table `hbb_product_image`
--

CREATE TABLE `hbb_product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_product_image`
--

INSERT INTO `hbb_product_image` (`id`, `product_id`, `link`, `status`) VALUES
(1, 5, 'product2.png', 1),
(2, 1, 'product.png', 1),
(3, 2, 'product2.png', 1),
(4, 1, 'product1.png', 1),
(5, 1, 'product4.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hbb_recruitment`
--

CREATE TABLE `hbb_recruitment` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deadline` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `avatar` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_recruitment`
--

INSERT INTO `hbb_recruitment` (`id`, `created_at`, `updated_at`, `deadline`, `avatar`, `status`) VALUES
(1, '2017-07-17 03:36:27', '2017-07-17 01:19:29', '2017-07-27 04:37:34', '21', 1),
(2, '2017-07-17 03:36:32', '2017-07-17 03:26:32', '2017-07-26 17:00:00', '213', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hbb_recruitment_translation`
--

CREATE TABLE `hbb_recruitment_translation` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `recruitment_id` int(11) NOT NULL,
  `recruiment_name` varchar(255) NOT NULL,
  `recruiment_content` text NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_recruitment_translation`
--

INSERT INTO `hbb_recruitment_translation` (`id`, `language_id`, `recruitment_id`, `recruiment_name`, `recruiment_content`, `slug`) VALUES
(1, 1, 1, 'Tuyển nhân viên Seo', '123', 'tuyen-nhan-vien-seo'),
(2, 2, 1, 'SEO', '12312321323', 'tuyen-nhan-vien-seo'),
(3, 1, 2, 'Tuyển nhân viên bán hàng', 'Tuyển nhân viên bán hàng', 'tuyen-nhan-vien-ban-hang'),
(4, 2, 2, 'Tuyen nhan vien ban hang', 'Tuyen nhan vien ban hang', 'tuyen-nhan-vien-ban-hang');

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
(9, 'banner.jpg', 1, '2017-07-20 03:52:47', '2017-07-19 20:52:51', 2),
(10, '1 (1).jpg', 1, '2017-07-20 06:34:39', '2017-07-19 23:34:43', 1);

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

--
-- Dumping data for table `hbb_subscribe`
--

INSERT INTO `hbb_subscribe` (`id`, `email`, `created_at`, `updated_at`, `status`) VALUES
(2, 'thuykim0105@gmail.com', '2017-07-17 20:37:38', '2017-07-17 20:37:38', 1),
(3, 'uhmbanjkimxinhdep@gmail.com', '2017-07-20 03:38:38', '2017-07-19 20:39:33', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hbb_subscribe_wine`
--

CREATE TABLE `hbb_subscribe_wine` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `language_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `message` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_subscribe_wine`
--

INSERT INTO `hbb_subscribe_wine` (`id`, `created_at`, `updated_at`, `status`, `email`, `name`, `language_id`, `product_id`, `phone`, `date`, `message`) VALUES
(1, '2017-07-17 23:57:51', '2017-07-17 23:57:51', 0, 'thuykim0105@gmail.com', 'Kim', 2, 40, '01696855433', '07/18/2017 10:00 AM', 'Nội dung'),
(2, '2017-07-20 04:26:52', '2017-07-19 21:27:47', 1, 'kim@1234556', '1', 2, 10, '213', '07/25/2017 12:00 AM', '123123'),
(4, '2017-07-18 00:07:50', '2017-07-18 00:07:50', 0, 'thuykim0105@gmail.com', '3', 2, 2, '01696855433', '07/26/2017 12:00 AM', '13123');

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
(1, '123123', 'https://www.facebook.com/hbbsolutions/', '123', '123', '123', '123', '123', '123', '123', '<script></script>', '123', '123', '123', '123', '123', 'Wine Center', 123, '123234', '123');

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
  `remember_token` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_user`
--

INSERT INTO `hbb_user` (`id`, `username`, `email`, `password`, `fullname`, `avatar`, `status`, `create_at`, `update_at`, `remember_token`) VALUES
(1, 'thangle', 'lecongthang454@gmail.com', '123123', 'Lê Công Thăng', 'default.png', 1, '2017-07-20 08:28:28', '2017-07-06 17:00:00', ''),
(2, 'tinmai', 'tinsqt@gmail.com', '123', 'Mai Trần Chí Tín', 'default.png', 0, '2017-07-20 10:14:39', '2017-07-20 01:27:18', NULL),
(3, 'test', 'a@gmail.com', '123', 'test', 'default.png', 1, '2017-07-20 01:36:48', '2017-07-20 01:36:48', NULL),
(4, '456', '456@132', '123', '456', 'default.png', 1, '2017-07-20 01:47:44', '2017-07-20 01:47:44', NULL);

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
-- Dumping data for table `hbb_user_permission`
--

INSERT INTO `hbb_user_permission` (`id`, `user_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 4, 1),
(4, 4, 3),
(5, 4, 8),
(6, 5, 1),
(7, 5, 3),
(8, 1, 1),
(9, 1, 3),
(10, 1, 1),
(11, 1, 3),
(12, 1, 8),
(13, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `hbb_wine_center`
--

CREATE TABLE `hbb_wine_center` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_wine_center`
--

INSERT INTO `hbb_wine_center` (`id`, `created_at`, `updated_at`) VALUES
(1, '2017-07-17 01:41:26', '2017-07-17 02:24:28'),
(2, '2017-07-17 01:41:26', '2017-07-17 00:31:18'),
(3, '2017-07-17 01:41:33', '2017-07-17 02:19:21'),
(4, '2017-07-20 07:27:25', '2017-07-20 00:27:29'),
(5, '2017-07-18 08:37:33', '2017-07-18 01:37:31');

-- --------------------------------------------------------

--
-- Table structure for table `hbb_wine_center_translation`
--

CREATE TABLE `hbb_wine_center_translation` (
  `id` int(11) NOT NULL,
  `wine_center_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `wine_center_name` varchar(255) NOT NULL,
  `wine_center_content` text,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hbb_wine_center_translation`
--

INSERT INTO `hbb_wine_center_translation` (`id`, `wine_center_id`, `language_id`, `wine_center_name`, `wine_center_content`, `slug`) VALUES
(1, 1, 1, 'Giới thiệu chung', '“Bạn muốn mua rượu vang để biếu tặng, kinh doanh hoặc đơn giản hơn là để thỏa mãn gu thưởng thức tinh tế của mình? Với sự am hiểu về rượu vang của mình, chúng tôi sẽ giúp bạn có được chai vang lý tưởng cho nhu cầu của mình”.<br>\r\nVăn hóa thưởng thức rượu vang đang ngày càng trở nên phổ biến tại Việt Nam bởi những lợi ích về sức khỏe và giá trị văn hóa nó mang lại cho người sử dụng. Tuy nhiên, không nhiều người tiêu dùng tại Việt Nam hiểu biết được những giá trị tinh thần và văn hóa của rượu vang mang lại. Chính bởi điều đó, tại Wineplaza, chúng tôi không đơn thuần chỉ bán những sản phẩm chất lượng được chọn lọc kĩ càng mà còn luôn cố gắng hết mình để khách hàng thấu hiểu hết những giá trị ẩn sâu trong các sản phẩm.', 'gioi-thieu-chung'),
(2, 1, 2, 'About us', '“Bạn muốn mua rượu vang để biếu tặng, kinh doanh hoặc đơn giản hơn là để thỏa mãn gu thưởng thức tinh tế của mình? Với sự am hiểu về rượu vang của mình, chúng tôi sẽ giúp bạn có được chai vang lý tưởng cho nhu cầu của mình”.<br>\r\nVăn hóa thưởng thức rượu vang đang ngày càng trở nên phổ biến tại Việt Nam bởi những lợi ích về sức khỏe và giá trị văn hóa nó mang lại cho người sử dụng. Tuy nhiên, không nhiều người tiêu dùng tại Việt Nam hiểu biết được những giá trị tinh thần và văn hóa của rượu vang mang lại. Chính bởi điều đó, tại Wineplaza, chúng tôi không đơn thuần chỉ bán những sản phẩm chất lượng được chọn lọc kĩ càng mà còn luôn cố gắng hết mình để khách hàng thấu hiểu hết những giá trị ẩn sâu trong các sản phẩm.', 'about-us'),
(3, 2, 1, 'Cam kết chất lượng', 'Tại sao lại chọn mua rượu vang tại Wine Center? Bởi tại Winecenter bạn sẽ được:<br>\r\n\r\n- Uống thử rượu vang miễn phí: Mục tiêu tối thượng của chúng tôi là giúp bạn chọn loại rượu chuẩn gu của mình!<br>\r\n\r\n- Yên tâm về chất lượng của rượu: Toàn bộ rượu vang của wineplaza.vn được nhập khẩu trực tiếp từ nhà sản xuất và có đầy đủ giấy tờ hải quan để đảm bảo về chất lượng của sản phẩm.\r\n<br>\r\n- Đổi, trả sản phẩm nếu không vừa lòng: Duy nhất – chỉ có tại Wineplaza.vn. Bởi chúng tôi tin rằng đó là lỗi của mình vì đã không giúp bạn chọn được loại rượu vang như ý. Hoàn tiền 100% nếu khách hàng không hài lòng.<br>\r\n\r\n- Tư vấn cách thưởng thức cũng như chia sẻ các thông tin thú vị về rượu vang: Đội ngũ tư vấn giàu kinh nghiệm và website winecenter.vn sẽ giúp bạn cảm thấy rượu vang thú vị hơn bất cứ đồ uống nào khác.<br>\r\n\r\n- Đảm bảo bán đúng giá thị trường: Giá sản phẩm tại winecenterluôn luôn được tính toán và so sánh với thị trường để đảm bảo lợi ích của bạn. Hãy yên tâm vì chúng tôi luôn nói đúng giá trị thật của chai rượu.<br>\r\n\r\n- Phục vụ 24/24: Số hotline luôn luôn sẵn sàng phục vụ bạn, kể cả trong những dịp lễ tết.\r\n\r\n- Hỗ trợ về thiết kế, in ấn các sản phẩm truyền thông: Khách hàng là nhà hàng, cửa hiệu hoặc shop cá nhân có nhu cầu thiết kế menu, Winenotes… được chúng tôi hỗ trợ hoàn toàn miễn phí.\r\n\r\nĐể được hưởng toàn bộ những lợi ích trên, bạn chỉ cần nhấc điện thoại và gọi tới số:\r\nHà Nội:                0911 848 898\r\nTP Hồ Chí Minh:  0911 848 889', 'cam-ket-chat-luong'),
(4, 2, 2, 'Cam ket chat luong', 'Tại sao lại chọn mua rượu vang tại Wine Center? Bởi tại Winecenter bạn sẽ được:<br>\r\n\r\n- Uống thử rượu vang miễn phí: Mục tiêu tối thượng của chúng tôi là giúp bạn chọn loại rượu chuẩn gu của mình!<br>\r\n\r\n- Yên tâm về chất lượng của rượu: Toàn bộ rượu vang của wineplaza.vn được nhập khẩu trực tiếp từ nhà sản xuất và có đầy đủ giấy tờ hải quan để đảm bảo về chất lượng của sản phẩm.\r\n<br>\r\n- Đổi, trả sản phẩm nếu không vừa lòng: Duy nhất – chỉ có tại Wineplaza.vn. Bởi chúng tôi tin rằng đó là lỗi của mình vì đã không giúp bạn chọn được loại rượu vang như ý. Hoàn tiền 100% nếu khách hàng không hài lòng.<br>\r\n\r\n- Tư vấn cách thưởng thức cũng như chia sẻ các thông tin thú vị về rượu vang: Đội ngũ tư vấn giàu kinh nghiệm và website winecenter.vn sẽ giúp bạn cảm thấy rượu vang thú vị hơn bất cứ đồ uống nào khác.<br>\r\n\r\n- Đảm bảo bán đúng giá thị trường: Giá sản phẩm tại winecenterluôn luôn được tính toán và so sánh với thị trường để đảm bảo lợi ích của bạn. Hãy yên tâm vì chúng tôi luôn nói đúng giá trị thật của chai rượu.<br>\r\n\r\n- Phục vụ 24/24: Số hotline luôn luôn sẵn sàng phục vụ bạn, kể cả trong những dịp lễ tết.\r\n\r\n- Hỗ trợ về thiết kế, in ấn các sản phẩm truyền thông: Khách hàng là nhà hàng, cửa hiệu hoặc shop cá nhân có nhu cầu thiết kế menu, Winenotes… được chúng tôi hỗ trợ hoàn toàn miễn phí.\r\n\r\nĐể được hưởng toàn bộ những lợi ích trên, bạn chỉ cần nhấc điện thoại và gọi tới số:\r\nHà Nội:                0911 848 898\r\nTP Hồ Chí Minh:  0911 848 889', 'commitment-to-quality'),
(5, 3, 1, 'Lịch sử phát triển', 'Được thành lập từ năm 2015 bởi thành quả hợp tác của chuyên gia rượu vang Đào Trọng Thắng và những người bạn đồng hành đam mê rượu vang, Wineplaza hội tụ đầy đủ những yếu tố để trở thành người cung cấp rượu vang hàng đầu tại Việt Nam. Hiểu rõ gu thưởng thức của khách hàng, mọi sản phẩm tại Wineplaza đều được nhập khẩu trực tiếp từ các nhà sản xuất danh tiếng, sau đó được các chuyên gia rượu vang hàng đầu kiểm tra và thử nghiệm kĩ lưỡng trước khi giới thiệu tới người tiêu dùng. Mục đích cuối cùng của chúng tôi là đảm bảo bạn được thưởng thức những sản phẩm tuyệt hảo với mức giá thấp nhất có thể.<br>\r\n\r\nNhững đối tác lớn của Wineplaza.vn có thể kể tới như: Nhà hàng Du Thuyền Elisa, Tập đoàn truyền thông Le Bros, Công ti viễn thông quân đội Viettel, Công ty xây dựng Sông Đà…', 'lich-su-phat-trien'),
(6, 3, 2, 'Lich su phat trien', 'Được thành lập từ năm 2015 bởi thành quả hợp tác của chuyên gia rượu vang Đào Trọng Thắng và những người bạn đồng hành đam mê rượu vang, Wineplaza hội tụ đầy đủ những yếu tố để trở thành người cung cấp rượu vang hàng đầu tại Việt Nam. Hiểu rõ gu thưởng thức của khách hàng, mọi sản phẩm tại Wineplaza đều được nhập khẩu trực tiếp từ các nhà sản xuất danh tiếng, sau đó được các chuyên gia rượu vang hàng đầu kiểm tra và thử nghiệm kĩ lưỡng trước khi giới thiệu tới người tiêu dùng. Mục đích cuối cùng của chúng tôi là đảm bảo bạn được thưởng thức những sản phẩm tuyệt hảo với mức giá thấp nhất có thể.<br>\r\n\r\nNhững đối tác lớn của Wineplaza.vn có thể kể tới như: Nhà hàng Du Thuyền Elisa, Tập đoàn truyền thông Le Bros, Công ti viễn thông quân đội Viettel, Công ty xây dựng Sông Đà…', 'development-history'),
(9, 5, 1, 'Liên hệ', '<p>lien he voi chung toi</p>', 'lien-he'),
(10, 5, 2, 'Contact', '<p>contact with us</p>\r\n\r\n<p>&nbsp;</p>', 'contact'),
(13, 4, 1, 'Hỏi Đáp', '<p><strong>Hỏi: C&oacute; thể mua rượu vang Wineplaza ở đ&acirc;u? </strong></p>\r\n\r\n<p>Trả lời: Wineplaza hiện đ&atilde; c&oacute; mặt ở c&aacute;c th&agrave;nh phố lớn như H&agrave; Nội, Th&agrave;nh Phố Hồ Ch&iacute;nh Minh, Hải Ph&ograve;ng, kh&aacute;ch h&agrave;ng c&oacute; thể đến trực tiếp cửa h&agrave;ng để mua sản phẩm hoặc c&oacute; thể li&ecirc;n hệ hotline 0911848898 hoặc 0911110073/ 0911110031 để được hỗ trợ giao h&agrave;ng tr&ecirc;n to&agrave;n quốc. Địa chỉ cụ thể: H&agrave; Nội- 240 Nghi T&agrave;m, T&acirc;y Hồ; TP Hồ Ch&iacute; Minh - 288B Bạch Đằng, P24,B&igrave;nh Thạnh; Hải Ph&ograve;ng: 19 Trần Kh&aacute;nh Dư, Ng&ocirc; Quyền.</p>\r\n\r\n<p><strong>Hỏi: T&ocirc;i muốn đặt h&agrave;ng rượu vang online c&oacute; được kh&ocirc;ng? </strong></p>\r\n\r\n<p>Trả lời: Cảm ơn qu&yacute; kh&aacute;ch, nhưng rất tiếc hiện tại ch&uacute;ng t&ocirc;i kh&ocirc;ng tiếp nhận đặt h&agrave;ng qua online v&igrave; t&iacute;nh chất đặc th&ugrave; của rượu vang, qu&yacute; kh&aacute;ch c&oacute; thể li&ecirc;n hệ đặt h&agrave;ng qua hotline của ch&uacute;ng t&ocirc;i 0911848898 hoặc 0911110073/ 0911110031 để được hỗ trợ nhanh nhất v&agrave; ch&uacute;ng t&ocirc;i sẽ giao h&agrave;ng tận nơi ngay sau khi qu&yacute; kh&aacute;ch đặt h&agrave;ng. Rất vui được phục vụ qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><strong>Hỏi: Wineplaza c&oacute; dịch vụ g&igrave; hỗ trợ kh&aacute;ch h&agrave;ng sau b&aacute;n h&agrave;ng kh&ocirc;ng?</strong></p>\r\n\r\n<p>Trả lời: Wineplaza c&oacute; đội ngũ tư vấn gi&agrave;u kinh nghiệm v&agrave; website Wineplaza.vn sẽ gi&uacute;p bạn cảm thấy rượu vang hấp dẫn hơn bất cứ đồ uống n&agrave;o kh&aacute;c, cũng như chia sẻ c&aacute;c th&ocirc;ng tin th&uacute; vị về rượu vang. Đặc biệt chỉ c&oacute; duy nhất tại Wineplaza.vn qu&yacute; kh&aacute;ch được đổi, trả sản phẩm nếu kh&ocirc;ng vừa l&ograve;ng, bởi ch&uacute;ng t&ocirc;i tin rằng đ&oacute; l&agrave; lỗi của m&igrave;nh v&igrave; đ&atilde; kh&ocirc;ng gi&uacute;p bạn chọn được loại rượu vang như &yacute;.</p>\r\n\r\n<p><strong>Hỏi: Rượu vang Wineplaza c&oacute; g&igrave; đặc biệt? </strong></p>\r\n\r\n<p>Trả Lời: &ldquo;Tại Wineplaza kh&ocirc;ng l&agrave;m ra rượu vang nhưng ch&uacute;ng t&ocirc;i biết r&otilde; đ&acirc;u l&agrave; một chai vang chất lượng!&rdquo;Hiểu r&otilde; gu thưởng thức của kh&aacute;ch h&agrave;ng, mọi sản phẩm tại Wineplaza đều được nhập khẩu trực tiếp từ c&aacute;c nh&agrave; sản xuất danh tiếng từ Ph&aacute;p, &Yacute;, T&acirc;y Ban Nha, Chile,... Sau đ&oacute; được c&aacute;c chuy&ecirc;n gia rượu vang h&agrave;ng đầu kiểm tra v&agrave; thử nghiệm kĩ lưỡng trước khi giới thiệu tới người ti&ecirc;u d&ugrave;ng.</p>\r\n\r\n<p><strong>Hỏi: Mua rượu vang Wineplaza c&oacute; được thử trước kh&ocirc;ng? </strong></p>\r\n\r\n<p>Trả lời: C&oacute;. Mục ti&ecirc;u tối thượng của Wineplaza l&agrave; gi&uacute;p kh&aacute;ch h&agrave;ng chọn loại rượu chuẩn gu của m&igrave;nh n&ecirc;n qu&yacute; kh&aacute;ch được uống thử miễn ph&iacute; trước khi mua. Qu&yacute; kh&aacute;ch c&oacute; thể v&agrave;o trang sản phẩm của wineplaza.vn để lựa chọn v&agrave; đăng k&yacute; uống thử. Hỏi: Rượu vang Wineplaza c&oacute; gi&aacute; như thế n&agrave;o? Trả lời: Gi&aacute; sản phẩm tại wineplaza lu&ocirc;n lu&ocirc;n được t&iacute;nh to&aacute;n v&agrave; so s&aacute;nh với thị trường để đảm bảo lợi &iacute;ch của Kh&aacute;ch h&agrave;ng. Mục đ&iacute;ch cuối c&ugrave;ng của ch&uacute;ng t&ocirc;i l&agrave; đảm bảo Kh&aacute;ch h&agrave;ng được thưởng thức những sản phẩm tuyệt hảo với mức gi&aacute; thấp nhất c&oacute; thể.</p>', 'hoi-dap'),
(14, 4, 2, 'FAQ', '<p><strong>Hỏi: C&oacute; thể mua rượu vang Wineplaza ở đ&acirc;u? </strong></p>\r\n\r\n<p>Trả lời: Wineplaza hiện đ&atilde; c&oacute; mặt ở c&aacute;c th&agrave;nh phố lớn như H&agrave; Nội, Th&agrave;nh Phố Hồ Ch&iacute;nh Minh, Hải Ph&ograve;ng, kh&aacute;ch h&agrave;ng c&oacute; thể đến trực tiếp cửa h&agrave;ng để mua sản phẩm hoặc c&oacute; thể li&ecirc;n hệ hotline 0911848898 hoặc 0911110073/ 0911110031 để được hỗ trợ giao h&agrave;ng tr&ecirc;n to&agrave;n quốc. Địa chỉ cụ thể: H&agrave; Nội- 240 Nghi T&agrave;m, T&acirc;y Hồ; TP Hồ Ch&iacute; Minh - 288B Bạch Đằng, P24,B&igrave;nh Thạnh; Hải Ph&ograve;ng: 19 Trần Kh&aacute;nh Dư, Ng&ocirc; Quyền.</p>\r\n\r\n<p><strong>Hỏi: T&ocirc;i muốn đặt h&agrave;ng rượu vang online c&oacute; được kh&ocirc;ng? </strong></p>\r\n\r\n<p>Trả lời: Cảm ơn qu&yacute; kh&aacute;ch, nhưng rất tiếc hiện tại ch&uacute;ng t&ocirc;i kh&ocirc;ng tiếp nhận đặt h&agrave;ng qua online v&igrave; t&iacute;nh chất đặc th&ugrave; của rượu vang, qu&yacute; kh&aacute;ch c&oacute; thể li&ecirc;n hệ đặt h&agrave;ng qua hotline của ch&uacute;ng t&ocirc;i 0911848898 hoặc 0911110073/ 0911110031 để được hỗ trợ nhanh nhất v&agrave; ch&uacute;ng t&ocirc;i sẽ giao h&agrave;ng tận nơi ngay sau khi qu&yacute; kh&aacute;ch đặt h&agrave;ng. Rất vui được phục vụ qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><strong>Hỏi: Wineplaza c&oacute; dịch vụ g&igrave; hỗ trợ kh&aacute;ch h&agrave;ng sau b&aacute;n h&agrave;ng kh&ocirc;ng?</strong></p>\r\n\r\n<p>Trả lời: Wineplaza c&oacute; đội ngũ tư vấn gi&agrave;u kinh nghiệm v&agrave; website Wineplaza.vn sẽ gi&uacute;p bạn cảm thấy rượu vang hấp dẫn hơn bất cứ đồ uống n&agrave;o kh&aacute;c, cũng như chia sẻ c&aacute;c th&ocirc;ng tin th&uacute; vị về rượu vang. Đặc biệt chỉ c&oacute; duy nhất tại Wineplaza.vn qu&yacute; kh&aacute;ch được đổi, trả sản phẩm nếu kh&ocirc;ng vừa l&ograve;ng, bởi ch&uacute;ng t&ocirc;i tin rằng đ&oacute; l&agrave; lỗi của m&igrave;nh v&igrave; đ&atilde; kh&ocirc;ng gi&uacute;p bạn chọn được loại rượu vang như &yacute;.</p>\r\n\r\n<p><strong>Hỏi: Rượu vang Wineplaza c&oacute; g&igrave; đặc biệt? </strong></p>\r\n\r\n<p>Trả Lời: &ldquo;Tại Wineplaza kh&ocirc;ng l&agrave;m ra rượu vang nhưng ch&uacute;ng t&ocirc;i biết r&otilde; đ&acirc;u l&agrave; một chai vang chất lượng!&rdquo;Hiểu r&otilde; gu thưởng thức của kh&aacute;ch h&agrave;ng, mọi sản phẩm tại Wineplaza đều được nhập khẩu trực tiếp từ c&aacute;c nh&agrave; sản xuất danh tiếng từ Ph&aacute;p, &Yacute;, T&acirc;y Ban Nha, Chile,... Sau đ&oacute; được c&aacute;c chuy&ecirc;n gia rượu vang h&agrave;ng đầu kiểm tra v&agrave; thử nghiệm kĩ lưỡng trước khi giới thiệu tới người ti&ecirc;u d&ugrave;ng.</p>\r\n\r\n<p><strong>Hỏi: Mua rượu vang Wineplaza c&oacute; được thử trước kh&ocirc;ng? </strong></p>\r\n\r\n<p>Trả lời: C&oacute;. Mục ti&ecirc;u tối thượng của Wineplaza l&agrave; gi&uacute;p kh&aacute;ch h&agrave;ng chọn loại rượu chuẩn gu của m&igrave;nh n&ecirc;n qu&yacute; kh&aacute;ch được uống thử miễn ph&iacute; trước khi mua. Qu&yacute; kh&aacute;ch c&oacute; thể v&agrave;o trang sản phẩm của wineplaza.vn để lựa chọn v&agrave; đăng k&yacute; uống thử. Hỏi: Rượu vang Wineplaza c&oacute; gi&aacute; như thế n&agrave;o? Trả lời: Gi&aacute; sản phẩm tại wineplaza lu&ocirc;n lu&ocirc;n được t&iacute;nh to&aacute;n v&agrave; so s&aacute;nh với thị trường để đảm bảo lợi &iacute;ch của Kh&aacute;ch h&agrave;ng. Mục đ&iacute;ch cuối c&ugrave;ng của ch&uacute;ng t&ocirc;i l&agrave; đảm bảo Kh&aacute;ch h&agrave;ng được thưởng thức những sản phẩm tuyệt hảo với mức gi&aacute; thấp nhất c&oacute; thể.</p>', 'faq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hbb_address`
--
ALTER TABLE `hbb_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_address_translation`
--
ALTER TABLE `hbb_address_translation`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `hbb_label`
--
ALTER TABLE `hbb_label`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_label_translation`
--
ALTER TABLE `hbb_label_translation`
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
-- Indexes for table `hbb_news`
--
ALTER TABLE `hbb_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_news_translation`
--
ALTER TABLE `hbb_news_translation`
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
-- Indexes for table `hbb_product_image`
--
ALTER TABLE `hbb_product_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_recruitment`
--
ALTER TABLE `hbb_recruitment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_recruitment_translation`
--
ALTER TABLE `hbb_recruitment_translation`
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
-- Indexes for table `hbb_subscribe_wine`
--
ALTER TABLE `hbb_subscribe_wine`
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
-- Indexes for table `hbb_wine_center`
--
ALTER TABLE `hbb_wine_center`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hbb_wine_center_translation`
--
ALTER TABLE `hbb_wine_center_translation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hbb_address`
--
ALTER TABLE `hbb_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `hbb_address_translation`
--
ALTER TABLE `hbb_address_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `hbb_brand`
--
ALTER TABLE `hbb_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `hbb_brand_translation`
--
ALTER TABLE `hbb_brand_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `hbb_collection`
--
ALTER TABLE `hbb_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `hbb_collection_translation`
--
ALTER TABLE `hbb_collection_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `hbb_comment`
--
ALTER TABLE `hbb_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hbb_contact`
--
ALTER TABLE `hbb_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hbb_country`
--
ALTER TABLE `hbb_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `hbb_country_translation`
--
ALTER TABLE `hbb_country_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `hbb_label`
--
ALTER TABLE `hbb_label`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `hbb_label_translation`
--
ALTER TABLE `hbb_label_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `hbb_menu_news_translation`
--
ALTER TABLE `hbb_menu_news_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `hbb_menu_translation`
--
ALTER TABLE `hbb_menu_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `hbb_news`
--
ALTER TABLE `hbb_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `hbb_news_translation`
--
ALTER TABLE `hbb_news_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `hbb_permission`
--
ALTER TABLE `hbb_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `hbb_products`
--
ALTER TABLE `hbb_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `hbb_products_translation`
--
ALTER TABLE `hbb_products_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `hbb_product_image`
--
ALTER TABLE `hbb_product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `hbb_recruitment`
--
ALTER TABLE `hbb_recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hbb_recruitment_translation`
--
ALTER TABLE `hbb_recruitment_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hbb_slider`
--
ALTER TABLE `hbb_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `hbb_subscribe`
--
ALTER TABLE `hbb_subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `hbb_subscribe_wine`
--
ALTER TABLE `hbb_subscribe_wine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hbb_system_config`
--
ALTER TABLE `hbb_system_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hbb_user`
--
ALTER TABLE `hbb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `hbb_user_permission`
--
ALTER TABLE `hbb_user_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `hbb_wine_center`
--
ALTER TABLE `hbb_wine_center`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `hbb_wine_center_translation`
--
ALTER TABLE `hbb_wine_center_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
