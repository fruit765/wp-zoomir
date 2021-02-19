-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Фев 19 2021 г., 09:46
-- Версия сервера: 5.7.21-20-beget-5.7.21-20-1-log
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mdranev_zoomir_d`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--
-- Создание: Янв 16 2021 г., 08:38
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--
-- Создание: Янв 16 2021 г., 08:38
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_ewwwio_images`
--
-- Создание: Янв 16 2021 г., 08:38
--

DROP TABLE IF EXISTS `wp_ewwwio_images`;
CREATE TABLE `wp_ewwwio_images` (
  `id` int(14) UNSIGNED NOT NULL,
  `attachment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gallery` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resize` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `converted` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `results` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(10) UNSIGNED DEFAULT NULL,
  `orig_size` int(10) UNSIGNED DEFAULT NULL,
  `backup` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(5) UNSIGNED DEFAULT NULL,
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `updates` int(5) UNSIGNED DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT '1970-12-31 21:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `trace` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_ewwwio_images`
--

INSERT INTO `wp_ewwwio_images` (`id`, `attachment_id`, `gallery`, `resize`, `path`, `converted`, `results`, `image_size`, `orig_size`, `backup`, `level`, `pending`, `updates`, `updated`, `trace`) VALUES
(1, 10, 'media', 'full', 'ABSPATHwp-content/uploads/2020/11/akcii-item-image1.png', '', 'Уменьшено на 4,9% (2,5 КБ)', 49986, 52556, '', 10, 0, 1, '2020-11-05 04:53:34', NULL),
(2, 10, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2020/11/akcii-item-image1-150x150.png', '', 'Уменьшено на 1,8% (700,0 Б)', 38133, 38833, '', 10, 0, 1, '2020-11-05 04:53:34', NULL),
(3, 12, 'media', 'full', 'ABSPATHwp-content/uploads/2020/11/akcii-item-image2.png', '', 'Уменьшено на 15,0% (5,7 КБ)', 32754, 38544, '', 10, 0, 1, '2020-11-05 04:56:36', NULL),
(4, 12, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2020/11/akcii-item-image2-150x150.png', '', 'Уменьшено на 14,1% (4,1 КБ)', 25878, 30110, '', 10, 0, 1, '2020-11-05 04:56:36', NULL),
(5, 17, 'media', 'full', 'ABSPATHwp-content/uploads/2020/11/catalog-item-image1.png', '', 'Уменьшено на 15,5% (14,2 КБ)', 79295, 93861, '', 10, 0, 1, '2020-11-05 08:11:46', NULL),
(6, 17, 'media', 'medium', 'ABSPATHwp-content/uploads/2020/11/catalog-item-image1-300x197.png', '', 'Уменьшено на 12,7% (8,0 КБ)', 56289, 64462, '', 10, 0, 1, '2020-11-05 08:11:46', NULL),
(7, 17, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2020/11/catalog-item-image1-150x150.png', '', 'Уменьшено на 12,2% (3,5 КБ)', 25711, 29293, '', 10, 0, 1, '2020-11-05 08:11:46', NULL),
(8, 18, 'media', 'full', 'ABSPATHwp-content/uploads/2020/11/catalog-item-image2.png', '', 'Уменьшено на 15,5% (15,3 КБ)', 85523, 101175, '', 10, 0, 1, '2020-11-05 08:21:03', NULL),
(9, 18, 'media', 'medium', 'ABSPATHwp-content/uploads/2020/11/catalog-item-image2-300x197.png', '', 'Уменьшено на 12,9% (8,7 КБ)', 60636, 69581, '', 10, 0, 1, '2020-11-05 08:21:04', NULL),
(10, 18, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2020/11/catalog-item-image2-150x150.png', '', 'Уменьшено на 12,7% (4,1 КБ)', 28638, 32799, '', 10, 0, 1, '2020-11-05 08:21:04', NULL),
(11, 20, 'media', 'full', 'ABSPATHwp-content/uploads/2020/11/instagramm-image1.png', '', 'Уменьшено на 11,7% (12,0 КБ)', 92516, 104803, '', 10, 0, 1, '2020-11-05 09:16:29', NULL),
(12, 20, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2020/11/instagramm-image1-150x150.png', '', 'Уменьшено на 11,8% (4,5 КБ)', 34186, 38759, '', 10, 0, 1, '2020-11-05 09:16:29', NULL),
(13, 21, 'media', 'full', 'ABSPATHwp-content/uploads/2020/11/instagramm-image2.png', '', 'Уменьшено на 17,7% (13,4 КБ)', 63917, 77625, '', 10, 0, 1, '2020-11-05 09:16:31', NULL),
(14, 21, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2020/11/instagramm-image2-150x150.png', '', 'Уменьшено на 13,9% (4,2 КБ)', 26572, 30876, '', 10, 0, 1, '2020-11-05 09:16:31', NULL),
(15, 22, 'media', 'full', 'ABSPATHwp-content/uploads/2020/11/instagramm-image3.png', '', 'Уменьшено на 11,5% (4,6 КБ)', 36464, 41182, '', 10, 0, 1, '2020-11-05 09:16:32', NULL),
(16, 22, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2020/11/instagramm-image3-150x150.png', '', 'Уменьшено на 15,2% (3,1 КБ)', 17669, 20828, '', 10, 0, 1, '2020-11-05 09:16:33', NULL),
(17, 23, 'media', 'full', 'ABSPATHwp-content/uploads/2020/11/instagramm-image4.png', '', 'Уменьшено на 12,5% (7,2 КБ)', 51531, 58907, '', 10, 0, 1, '2020-11-05 09:16:34', NULL),
(18, 23, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2020/11/instagramm-image4-150x150.png', '', 'Уменьшено на 13,3% (3,4 КБ)', 22678, 26144, '', 10, 0, 1, '2020-11-05 09:16:35', NULL),
(19, 28, 'media', 'full', 'ABSPATHwp-content/uploads/2020/11/catalog-categories-page-category-item-image1.png', '', 'Уменьшено на 2,1% (402,0 Б)', 18749, 19151, '', 10, 0, 1, '2020-11-06 05:31:31', NULL),
(20, 28, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2020/11/catalog-categories-page-category-item-image1-140x150.png', '', 'Уменьшено на 1,5% (285,0 Б)', 18680, 18965, '', 10, 0, 1, '2020-11-06 05:31:31', NULL),
(21, 30, 'media', 'full', 'ABSPATHwp-content/uploads/2020/11/catalog-categories-page-category-item-image2.png', '', 'Уменьшено на 4,5% (962,0 Б)', 20416, 21378, '', 10, 0, 1, '2020-11-06 05:32:33', NULL),
(22, 30, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2020/11/catalog-categories-page-category-item-image2-140x150.png', '', 'Уменьшено на 1,9% (361,0 Б)', 19116, 19477, '', 10, 0, 1, '2020-11-06 05:32:33', NULL),
(23, 32, 'media', 'full', 'ABSPATHwp-content/uploads/2020/11/catalog-categories-page-category-item-image3.png', '', 'Уменьшено на 1,2% (195,0 Б)', 16140, 16335, '', 10, 0, 1, '2020-11-06 05:33:31', NULL),
(24, 32, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2020/11/catalog-categories-page-category-item-image3-140x150.png', '', 'Уменьшено на 1,9% (316,0 Б)', 16080, 16396, '', 10, 0, 1, '2020-11-06 05:33:31', NULL),
(25, 33, 'media', 'full', 'ABSPATHwp-content/uploads/2020/11/catalog-categories-page-category-item-image4.png', '', 'Уменьшено на 5,2% (1,4 КБ)', 26949, 28431, '', 10, 0, 1, '2020-11-06 05:33:32', NULL),
(26, 33, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2020/11/catalog-categories-page-category-item-image4-136x150.png', '', 'Уменьшено на 1,5% (393,0 Б)', 24984, 25377, '', 10, 0, 1, '2020-11-06 05:33:33', NULL),
(27, 39, 'media', 'full', 'ABSPATHwp-content/uploads/2020/11/akcii-page-item-image2.png', '', 'Уменьшено на 16,9% (16,0 КБ)', 80671, 97048, '', 10, 0, 1, '2020-11-06 08:24:32', NULL),
(28, 39, 'media', 'medium', 'ABSPATHwp-content/uploads/2020/11/akcii-page-item-image2-300x70.png', '', 'Уменьшено на 13,1% (3,4 КБ)', 23093, 26588, '', 10, 0, 1, '2020-11-06 08:24:32', NULL),
(29, 39, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2020/11/akcii-page-item-image2-150x150.png', '', 'Уменьшено на 14,8% (3,7 КБ)', 21574, 25333, '', 10, 0, 1, '2020-11-06 08:24:33', NULL),
(30, 39, 'media', 'medium_large', 'ABSPATHwp-content/uploads/2020/11/akcii-page-item-image2-768x178.png', '', 'Уменьшено на 14,0% (18,2 КБ)', 114563, 133220, '', 10, 0, 1, '2020-11-06 08:24:34', NULL),
(31, 40, 'media', 'full', 'ABSPATHwp-content/uploads/2020/11/akcii-page-item-image1.png', '', 'Уменьшено на 17,3% (14,4 КБ)', 70918, 85714, '', 10, 0, 1, '2020-11-06 08:25:04', NULL),
(32, 40, 'media', 'medium', 'ABSPATHwp-content/uploads/2020/11/akcii-page-item-image1-300x70.png', '', 'Уменьшено на 13,4% (3,8 КБ)', 25260, 29178, '', 10, 0, 1, '2020-11-06 08:25:04', NULL),
(33, 40, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2020/11/akcii-page-item-image1-150x150.png', '', 'Уменьшено на 14,5% (3,5 КБ)', 21134, 24724, '', 10, 0, 1, '2020-11-06 08:25:04', NULL),
(34, 40, 'media', 'medium_large', 'ABSPATHwp-content/uploads/2020/11/akcii-page-item-image1-768x178.png', '', 'Уменьшено на 13,9% (19,3 КБ)', 122640, 142413, '', 10, 0, 1, '2020-11-06 08:25:05', NULL),
(35, 45, 'media', 'full', 'ABSPATHwp-content/uploads/2020/11/vakansii-page-item-image1.jpg', '', 'Уменьшено на 4,5% (1,3 КБ)', 29301, 30667, '', 10, 0, 1, '2020-11-06 09:50:47', NULL),
(36, 45, 'media', 'medium', 'ABSPATHwp-content/uploads/2020/11/vakansii-page-item-image1-300x262.jpg', '', 'Уменьшено на 4,1% (514,0 Б)', 12081, 12595, '', 10, 0, 1, '2020-11-06 09:50:47', NULL),
(37, 45, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2020/11/vakansii-page-item-image1-150x150.jpg', '', 'Уменьшено на 7,6% (402,0 Б)', 4918, 5320, '', 10, 0, 1, '2020-11-06 09:50:47', NULL),
(38, 46, 'media', 'full', 'ABSPATHwp-content/uploads/2020/11/vakansii-page-item-image2.jpg', '', 'Уменьшено на 4,0% (1,5 КБ)', 35997, 37504, '', 10, 0, 1, '2020-11-06 09:56:33', NULL),
(39, 46, 'media', 'medium', 'ABSPATHwp-content/uploads/2020/11/vakansii-page-item-image2-300x262.jpg', '', 'Уменьшено на 4,4% (695,0 Б)', 15180, 15875, '', 10, 0, 1, '2020-11-06 09:56:33', NULL),
(40, 46, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2020/11/vakansii-page-item-image2-150x150.jpg', '', 'Уменьшено на 6,0% (379,0 Б)', 5965, 6344, '', 10, 0, 1, '2020-11-06 09:56:33', NULL),
(41, 56, 'media', 'full', 'ABSPATHwp-content/uploads/2020/11/shops-page-item-image1.png', '', 'Уменьшено на 12,3% (16,6 КБ)', 120498, 137458, '', 10, 0, 1, '2020-11-09 03:36:46', NULL),
(42, 56, 'media', 'medium', 'ABSPATHwp-content/uploads/2020/11/shops-page-item-image1-300x198.png', '', 'Уменьшено на 12,2% (12,6 КБ)', 93167, 106109, '', 10, 0, 1, '2020-11-09 03:36:47', NULL),
(43, 56, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2020/11/shops-page-item-image1-150x150.png', '', 'Уменьшено на 11,8% (4,9 КБ)', 37498, 42510, '', 10, 0, 1, '2020-11-09 03:36:47', NULL),
(44, 58, 'media', 'full', 'ABSPATHwp-content/uploads/2020/11/shops-page-item-image2.png', '', 'Уменьшено на 14,6% (18,0 КБ)', 107821, 126244, '', 10, 0, 1, '2020-11-09 03:42:26', NULL),
(45, 58, 'media', 'medium', 'ABSPATHwp-content/uploads/2020/11/shops-page-item-image2-300x201.png', '', 'Уменьшено на 13,9% (13,0 КБ)', 82325, 95599, '', 10, 0, 1, '2020-11-09 03:42:27', NULL),
(46, 58, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2020/11/shops-page-item-image2-150x150.png', '', 'Уменьшено на 13,4% (5,1 КБ)', 33858, 39098, '', 10, 0, 1, '2020-11-09 03:42:27', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_ewwwio_queue`
--
-- Создание: Янв 16 2021 г., 08:38
--

DROP TABLE IF EXISTS `wp_ewwwio_queue`;
CREATE TABLE `wp_ewwwio_queue` (
  `id` int(14) UNSIGNED NOT NULL,
  `attachment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gallery` varchar(20) DEFAULT NULL,
  `scanned` tinyint(3) NOT NULL DEFAULT '0',
  `new` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--
-- Создание: Янв 16 2021 г., 08:38
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--
-- Создание: Янв 16 2021 г., 08:38
-- Последнее обновление: Фев 19 2021 г., 06:19
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://192.10.0.38', 'yes'),
(2, 'home', 'http://192.10.0.38', 'yes'),
(3, 'blogname', 'Зоомир', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sidorov.mihail.maykop@mail.ru', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/%category%/', 'yes'),
(29, 'rewrite_rules', 'a:248:{s:8:\"akcii/?$\";s:25:\"index.php?post_type=akcii\";s:38:\"akcii/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=akcii&feed=$matches[1]\";s:33:\"akcii/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=akcii&feed=$matches[1]\";s:25:\"akcii/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=akcii&paged=$matches[1]\";s:10:\"catalog/?$\";s:27:\"index.php?post_type=catalog\";s:40:\"catalog/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=catalog&feed=$matches[1]\";s:35:\"catalog/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=catalog&feed=$matches[1]\";s:27:\"catalog/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=catalog&paged=$matches[1]\";s:11:\"vakansii/?$\";s:28:\"index.php?post_type=vakansii\";s:41:\"vakansii/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=vakansii&feed=$matches[1]\";s:36:\"vakansii/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=vakansii&feed=$matches[1]\";s:28:\"vakansii/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=vakansii&paged=$matches[1]\";s:7:\"shop/?$\";s:24:\"index.php?post_type=shop\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=shop&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=shop&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=shop&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"akcii/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"akcii/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"akcii/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"akcii/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"akcii/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"akcii/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"akcii/([^/]+)/embed/?$\";s:38:\"index.php?akcii=$matches[1]&embed=true\";s:26:\"akcii/([^/]+)/trackback/?$\";s:32:\"index.php?akcii=$matches[1]&tb=1\";s:46:\"akcii/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?akcii=$matches[1]&feed=$matches[2]\";s:41:\"akcii/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?akcii=$matches[1]&feed=$matches[2]\";s:34:\"akcii/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?akcii=$matches[1]&paged=$matches[2]\";s:41:\"akcii/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?akcii=$matches[1]&cpage=$matches[2]\";s:30:\"akcii/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?akcii=$matches[1]&page=$matches[2]\";s:22:\"akcii/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"akcii/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"akcii/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"akcii/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"akcii/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"akcii/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"catalog/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"catalog/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"catalog/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"catalog/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"catalog/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"catalog/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"catalog/([^/]+)/embed/?$\";s:40:\"index.php?catalog=$matches[1]&embed=true\";s:28:\"catalog/([^/]+)/trackback/?$\";s:34:\"index.php?catalog=$matches[1]&tb=1\";s:48:\"catalog/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?catalog=$matches[1]&feed=$matches[2]\";s:43:\"catalog/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?catalog=$matches[1]&feed=$matches[2]\";s:36:\"catalog/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?catalog=$matches[1]&paged=$matches[2]\";s:43:\"catalog/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?catalog=$matches[1]&cpage=$matches[2]\";s:32:\"catalog/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?catalog=$matches[1]&page=$matches[2]\";s:24:\"catalog/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"catalog/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"catalog/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"catalog/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"catalog/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"catalog/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"instagramm/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"instagramm/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"instagramm/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"instagramm/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"instagramm/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"instagramm/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"instagramm/([^/]+)/embed/?$\";s:43:\"index.php?instagramm=$matches[1]&embed=true\";s:31:\"instagramm/([^/]+)/trackback/?$\";s:37:\"index.php?instagramm=$matches[1]&tb=1\";s:39:\"instagramm/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?instagramm=$matches[1]&paged=$matches[2]\";s:46:\"instagramm/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?instagramm=$matches[1]&cpage=$matches[2]\";s:35:\"instagramm/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?instagramm=$matches[1]&page=$matches[2]\";s:27:\"instagramm/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"instagramm/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"instagramm/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"instagramm/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"instagramm/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"instagramm/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"vakansii/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"vakansii/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"vakansii/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"vakansii/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"vakansii/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"vakansii/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"vakansii/([^/]+)/embed/?$\";s:41:\"index.php?vakansii=$matches[1]&embed=true\";s:29:\"vakansii/([^/]+)/trackback/?$\";s:35:\"index.php?vakansii=$matches[1]&tb=1\";s:49:\"vakansii/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?vakansii=$matches[1]&feed=$matches[2]\";s:44:\"vakansii/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?vakansii=$matches[1]&feed=$matches[2]\";s:37:\"vakansii/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?vakansii=$matches[1]&paged=$matches[2]\";s:44:\"vakansii/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?vakansii=$matches[1]&cpage=$matches[2]\";s:33:\"vakansii/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?vakansii=$matches[1]&page=$matches[2]\";s:25:\"vakansii/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"vakansii/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"vakansii/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"vakansii/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"vakansii/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"vakansii/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"shop/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"shop/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"shop/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"shop/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"shop/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"shop/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"shop/([^/]+)/embed/?$\";s:37:\"index.php?shop=$matches[1]&embed=true\";s:25:\"shop/([^/]+)/trackback/?$\";s:31:\"index.php?shop=$matches[1]&tb=1\";s:45:\"shop/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?shop=$matches[1]&feed=$matches[2]\";s:40:\"shop/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?shop=$matches[1]&feed=$matches[2]\";s:33:\"shop/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?shop=$matches[1]&paged=$matches[2]\";s:40:\"shop/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?shop=$matches[1]&cpage=$matches[2]\";s:29:\"shop/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?shop=$matches[1]&page=$matches[2]\";s:21:\"shop/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"shop/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"shop/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"shop/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"shop/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"shop/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:59:\"catalog-categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?catalog-categories=$matches[1]&feed=$matches[2]\";s:54:\"catalog-categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?catalog-categories=$matches[1]&feed=$matches[2]\";s:35:\"catalog-categories/([^/]+)/embed/?$\";s:51:\"index.php?catalog-categories=$matches[1]&embed=true\";s:47:\"catalog-categories/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?catalog-categories=$matches[1]&paged=$matches[2]\";s:29:\"catalog-categories/([^/]+)/?$\";s:40:\"index.php?catalog-categories=$matches[1]\";s:56:\"shop-categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?shop-categories=$matches[1]&feed=$matches[2]\";s:51:\"shop-categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?shop-categories=$matches[1]&feed=$matches[2]\";s:32:\"shop-categories/([^/]+)/embed/?$\";s:48:\"index.php?shop-categories=$matches[1]&embed=true\";s:44:\"shop-categories/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?shop-categories=$matches[1]&paged=$matches[2]\";s:26:\"shop-categories/([^/]+)/?$\";s:37:\"index.php?shop-categories=$matches[1]\";s:40:\"wck-meta-box/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"wck-meta-box/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"wck-meta-box/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"wck-meta-box/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"wck-meta-box/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"wck-meta-box/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"wck-meta-box/([^/]+)/embed/?$\";s:45:\"index.php?wck-meta-box=$matches[1]&embed=true\";s:33:\"wck-meta-box/([^/]+)/trackback/?$\";s:39:\"index.php?wck-meta-box=$matches[1]&tb=1\";s:41:\"wck-meta-box/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?wck-meta-box=$matches[1]&paged=$matches[2]\";s:48:\"wck-meta-box/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?wck-meta-box=$matches[1]&cpage=$matches[2]\";s:37:\"wck-meta-box/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?wck-meta-box=$matches[1]&page=$matches[2]\";s:29:\"wck-meta-box/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"wck-meta-box/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"wck-meta-box/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"wck-meta-box/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"wck-meta-box/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"wck-meta-box/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\"[^/]+/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"[^/]+/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"[^/]+/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"[^/]+/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"[^/]+/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"[^/]+/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"([^/]+)/(.+?)/embed/?$\";s:63:\"index.php?name=$matches[1]&category_name=$matches[2]&embed=true\";s:26:\"([^/]+)/(.+?)/trackback/?$\";s:57:\"index.php?name=$matches[1]&category_name=$matches[2]&tb=1\";s:46:\"([^/]+)/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?name=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:41:\"([^/]+)/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?name=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:34:\"([^/]+)/(.+?)/page/?([0-9]{1,})/?$\";s:70:\"index.php?name=$matches[1]&category_name=$matches[2]&paged=$matches[3]\";s:41:\"([^/]+)/(.+?)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?name=$matches[1]&category_name=$matches[2]&cpage=$matches[3]\";s:30:\"([^/]+)/(.+?)(?:/([0-9]+))?/?$\";s:69:\"index.php?name=$matches[1]&category_name=$matches[2]&page=$matches[3]\";s:20:\"[^/]+/.+?/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\"[^/]+/.+?/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\"[^/]+/.+?/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"[^/]+/.+?/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"[^/]+/.+?/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"[^/]+/.+?/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:22:\"cyr2lat/cyr-to-lat.php\";i:2;s:45:\"ewww-image-optimizer/ewww-image-optimizer.php\";i:3;s:39:\"mce-table-buttons/mce_table_buttons.php\";i:4;s:55:\"wck-custom-fields-and-custom-post-types-creator/wck.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'zoomir', 'yes'),
(41, 'stylesheet', 'zoomir', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1620109535', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'WPLANG', 'ru_RU', 'yes'),
(99, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:5:{i:1613715936;a:2:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1613715937;a:4:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1613715960;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1613715961;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604558556;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(144, 'finished_updating_comment_type', '1', 'yes'),
(145, 'recently_activated', 'a:0:{}', 'yes'),
(150, 'acf_version', '5.9.3', 'yes'),
(159, 'ewww_image_optimizer_relative_migration_status', 'done', 'yes'),
(161, 'ewww_image_optimizer_background_optimization', '1', 'yes'),
(162, 'ewww_image_optimizer_noauto', '', 'yes'),
(163, 'ewww_image_optimizer_disable_editor', '', 'yes'),
(164, 'ewww_image_optimizer_debug', '', 'yes'),
(165, 'ewww_image_optimizer_metadata_remove', '1', 'yes'),
(166, 'ewww_image_optimizer_jpg_level', '10', 'yes'),
(167, 'ewww_image_optimizer_png_level', '10', 'yes'),
(168, 'ewww_image_optimizer_gif_level', '10', 'yes'),
(169, 'ewww_image_optimizer_pdf_level', '0', 'yes'),
(170, 'ewww_image_optimizer_svg_level', '0', 'yes'),
(171, 'ewww_image_optimizer_jpg_quality', '', 'yes'),
(172, 'ewww_image_optimizer_webp_quality', '', 'yes'),
(173, 'ewww_image_optimizer_exactdn', '', 'yes'),
(174, 'ewww_image_optimizer_exactdn_plan_id', '0', 'yes'),
(175, 'exactdn_all_the_things', '1', 'yes'),
(176, 'exactdn_lossy', '1', 'yes'),
(177, 'exactdn_exclude', '', 'yes'),
(178, 'ewww_image_optimizer_lazy_load', '', 'yes'),
(179, 'ewww_image_optimizer_ll_exclude', '', 'yes'),
(180, 'ewww_image_optimizer_disable_pngout', '1', 'yes'),
(181, 'ewww_image_optimizer_disable_svgcleaner', '1', 'yes'),
(182, 'ewww_image_optimizer_optipng_level', '2', 'yes'),
(183, 'ewww_image_optimizer_pngout_level', '2', 'yes'),
(184, 'ewww_image_optimizer_webp_for_cdn', '', 'yes'),
(185, 'ewww_image_optimizer_force_gif2webp', '1', 'yes'),
(186, 'ewww_image_optimizer_picture_webp', '', 'yes'),
(187, 'ewww_image_optimizer_webp_rewrite_exclude', '', 'yes'),
(188, 'exactdn_never_been_active', '1', 'no'),
(189, 'ewww_image_optimizer_bulk_resume', '', 'yes'),
(190, 'ewww_image_optimizer_aux_resume', '', 'yes'),
(191, 'ewww_image_optimizer_flag_attachments', '', 'no'),
(192, 'ewww_image_optimizer_ngg_attachments', '', 'no'),
(194, 'ewww_image_optimizer_review_time', '1605162664', 'no'),
(195, 'ewww_image_optimizer_version', '582.0', 'yes'),
(198, 'ewww_image_optimizer_tracking_notice', '1', 'yes'),
(203, 'wck_meta_boxes_ids', 'a:0:{}', 'yes'),
(204, 'wck_update_to_unserialized', 'no', 'yes'),
(205, 'category_children', 'a:0:{}', 'yes'),
(210, 'current_theme', 'Zoomir', 'yes'),
(211, 'theme_mods_zoomir', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(212, 'theme_switched', '', 'yes'),
(216, 'wck_cptc', 'a:5:{i:0;a:40:{s:9:\"post-type\";s:5:\"akcii\";s:11:\"description\";s:0:\"\";s:14:\"singular-label\";s:6:\"Akciya\";s:12:\"plural-label\";s:5:\"Akcii\";s:12:\"hierarchical\";s:5:\"false\";s:11:\"has-archive\";s:4:\"true\";s:8:\"supports\";s:39:\"title, editor, thumbnail, custom-fields\";s:7:\"add-new\";s:0:\"\";s:12:\"add-new-item\";s:0:\"\";s:9:\"edit-item\";s:0:\"\";s:8:\"new-item\";s:0:\"\";s:9:\"all-items\";s:0:\"\";s:10:\"view-items\";s:0:\"\";s:12:\"search-items\";s:0:\"\";s:9:\"not-found\";s:0:\"\";s:18:\"not-found-in-trash\";s:0:\"\";s:17:\"parent-item-colon\";s:0:\"\";s:9:\"menu-name\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:7:\"show-ui\";s:4:\"true\";s:17:\"show-in-nav-menus\";s:4:\"true\";s:12:\"show-in-menu\";s:4:\"true\";s:13:\"menu-position\";s:0:\"\";s:9:\"menu-icon\";s:0:\"\";s:15:\"capability-type\";s:4:\"post\";s:10:\"taxonomies\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:10:\"with_front\";s:4:\"true\";s:12:\"rewrite-slug\";s:0:\"\";s:12:\"show-in-rest\";s:5:\"false\";}i:1;a:40:{s:9:\"post-type\";s:7:\"catalog\";s:11:\"description\";s:0:\"\";s:14:\"singular-label\";s:7:\"Catalog\";s:12:\"plural-label\";s:8:\"Catalogs\";s:12:\"hierarchical\";s:5:\"false\";s:11:\"has-archive\";s:4:\"true\";s:8:\"supports\";s:39:\"title, editor, thumbnail, custom-fields\";s:7:\"add-new\";s:0:\"\";s:12:\"add-new-item\";s:0:\"\";s:9:\"edit-item\";s:0:\"\";s:8:\"new-item\";s:0:\"\";s:9:\"all-items\";s:0:\"\";s:10:\"view-items\";s:0:\"\";s:12:\"search-items\";s:0:\"\";s:9:\"not-found\";s:0:\"\";s:18:\"not-found-in-trash\";s:0:\"\";s:17:\"parent-item-colon\";s:0:\"\";s:9:\"menu-name\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:7:\"show-ui\";s:4:\"true\";s:17:\"show-in-nav-menus\";s:4:\"true\";s:12:\"show-in-menu\";s:4:\"true\";s:13:\"menu-position\";s:0:\"\";s:9:\"menu-icon\";s:0:\"\";s:15:\"capability-type\";s:4:\"post\";s:10:\"taxonomies\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:10:\"with_front\";s:4:\"true\";s:12:\"rewrite-slug\";s:0:\"\";s:12:\"show-in-rest\";s:5:\"false\";}i:2;a:40:{s:9:\"post-type\";s:10:\"instagramm\";s:11:\"description\";s:0:\"\";s:14:\"singular-label\";s:10:\"Instagramm\";s:12:\"plural-label\";s:11:\"Instagramms\";s:12:\"hierarchical\";s:5:\"false\";s:11:\"has-archive\";s:5:\"false\";s:8:\"supports\";s:39:\"title, editor, thumbnail, custom-fields\";s:7:\"add-new\";s:0:\"\";s:12:\"add-new-item\";s:0:\"\";s:9:\"edit-item\";s:0:\"\";s:8:\"new-item\";s:0:\"\";s:9:\"all-items\";s:0:\"\";s:10:\"view-items\";s:0:\"\";s:12:\"search-items\";s:0:\"\";s:9:\"not-found\";s:0:\"\";s:18:\"not-found-in-trash\";s:0:\"\";s:17:\"parent-item-colon\";s:0:\"\";s:9:\"menu-name\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:7:\"show-ui\";s:4:\"true\";s:17:\"show-in-nav-menus\";s:4:\"true\";s:12:\"show-in-menu\";s:4:\"true\";s:13:\"menu-position\";s:0:\"\";s:9:\"menu-icon\";s:0:\"\";s:15:\"capability-type\";s:4:\"post\";s:10:\"taxonomies\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:10:\"with_front\";s:4:\"true\";s:12:\"rewrite-slug\";s:0:\"\";s:12:\"show-in-rest\";s:5:\"false\";}i:3;a:40:{s:9:\"post-type\";s:8:\"vakansii\";s:11:\"description\";s:0:\"\";s:14:\"singular-label\";s:9:\"Vakansiya\";s:12:\"plural-label\";s:8:\"Vakansii\";s:12:\"hierarchical\";s:5:\"false\";s:11:\"has-archive\";s:4:\"true\";s:8:\"supports\";s:39:\"title, editor, thumbnail, custom-fields\";s:7:\"add-new\";s:0:\"\";s:12:\"add-new-item\";s:0:\"\";s:9:\"edit-item\";s:0:\"\";s:8:\"new-item\";s:0:\"\";s:9:\"all-items\";s:0:\"\";s:10:\"view-items\";s:0:\"\";s:12:\"search-items\";s:0:\"\";s:9:\"not-found\";s:0:\"\";s:18:\"not-found-in-trash\";s:0:\"\";s:17:\"parent-item-colon\";s:0:\"\";s:9:\"menu-name\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:7:\"show-ui\";s:4:\"true\";s:17:\"show-in-nav-menus\";s:4:\"true\";s:12:\"show-in-menu\";s:4:\"true\";s:13:\"menu-position\";s:0:\"\";s:9:\"menu-icon\";s:0:\"\";s:15:\"capability-type\";s:4:\"post\";s:10:\"taxonomies\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:10:\"with_front\";s:4:\"true\";s:12:\"rewrite-slug\";s:0:\"\";s:12:\"show-in-rest\";s:5:\"false\";}i:4;a:40:{s:9:\"post-type\";s:4:\"shop\";s:11:\"description\";s:0:\"\";s:14:\"singular-label\";s:4:\"Shop\";s:12:\"plural-label\";s:5:\"Shops\";s:12:\"hierarchical\";s:5:\"false\";s:11:\"has-archive\";s:4:\"true\";s:8:\"supports\";s:39:\"title, editor, thumbnail, custom-fields\";s:7:\"add-new\";s:0:\"\";s:12:\"add-new-item\";s:0:\"\";s:9:\"edit-item\";s:0:\"\";s:8:\"new-item\";s:0:\"\";s:9:\"all-items\";s:0:\"\";s:10:\"view-items\";s:0:\"\";s:12:\"search-items\";s:0:\"\";s:9:\"not-found\";s:0:\"\";s:18:\"not-found-in-trash\";s:0:\"\";s:17:\"parent-item-colon\";s:0:\"\";s:9:\"menu-name\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:7:\"show-ui\";s:4:\"true\";s:17:\"show-in-nav-menus\";s:4:\"true\";s:12:\"show-in-menu\";s:4:\"true\";s:13:\"menu-position\";s:0:\"\";s:9:\"menu-icon\";s:0:\"\";s:15:\"capability-type\";s:4:\"post\";s:10:\"taxonomies\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:10:\"with_front\";s:4:\"true\";s:12:\"rewrite-slug\";s:0:\"\";s:12:\"show-in-rest\";s:5:\"false\";}}', 'yes'),
(217, 'ewww_image_optimizer_backup_files', '', 'no'),
(228, 'wck_ctc', 'a:2:{i:0;a:31:{s:8:\"taxonomy\";s:18:\"catalog-categories\";s:14:\"singular-label\";s:16:\"Catalog-category\";s:12:\"plural-label\";s:18:\"Catalog-categories\";s:9:\"attach-to\";s:7:\"catalog\";s:12:\"hierarchical\";s:4:\"true\";s:12:\"search-items\";s:0:\"\";s:13:\"popular-items\";s:0:\"\";s:9:\"all-items\";s:0:\"\";s:11:\"parent-item\";s:0:\"\";s:17:\"parent-item-colon\";s:0:\"\";s:9:\"edit-item\";s:0:\"\";s:11:\"update-item\";s:0:\"\";s:12:\"add-new-item\";s:0:\"\";s:13:\"new-item-name\";s:0:\"\";s:26:\"separate-items-with-commas\";s:0:\"\";s:19:\"add-or-remove-items\";s:0:\"\";s:21:\"choose-from-most-used\";s:0:\"\";s:9:\"menu-name\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:7:\"show-ui\";s:4:\"true\";s:13:\"show-tagcloud\";s:4:\"true\";s:17:\"show-admin-column\";s:5:\"false\";s:21:\"sortable-admin-column\";s:5:\"false\";s:18:\"show-in-quick-edit\";s:5:\"false\";s:12:\"show-in-rest\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:10:\"with_front\";s:4:\"true\";s:12:\"rewrite-slug\";s:0:\"\";}i:1;a:31:{s:8:\"taxonomy\";s:15:\"shop-categories\";s:14:\"singular-label\";s:13:\"Shop-category\";s:12:\"plural-label\";s:15:\"Shop-categories\";s:9:\"attach-to\";s:4:\"shop\";s:12:\"hierarchical\";s:4:\"true\";s:12:\"search-items\";s:0:\"\";s:13:\"popular-items\";s:0:\"\";s:9:\"all-items\";s:0:\"\";s:11:\"parent-item\";s:0:\"\";s:17:\"parent-item-colon\";s:0:\"\";s:9:\"edit-item\";s:0:\"\";s:11:\"update-item\";s:0:\"\";s:12:\"add-new-item\";s:0:\"\";s:13:\"new-item-name\";s:0:\"\";s:26:\"separate-items-with-commas\";s:0:\"\";s:19:\"add-or-remove-items\";s:0:\"\";s:21:\"choose-from-most-used\";s:0:\"\";s:9:\"menu-name\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:7:\"show-ui\";s:4:\"true\";s:13:\"show-tagcloud\";s:4:\"true\";s:17:\"show-admin-column\";s:5:\"false\";s:21:\"sortable-admin-column\";s:5:\"false\";s:18:\"show-in-quick-edit\";s:5:\"false\";s:12:\"show-in-rest\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:10:\"with_front\";s:4:\"true\";s:12:\"rewrite-slug\";s:0:\"\";}}', 'yes'),
(277, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":3,\"critical\":2}', 'yes'),
(356, 'shop-categories_children', 'a:0:{}', 'yes'),
(643, 'auto_update_core_dev', 'enabled', 'yes'),
(644, 'auto_update_core_minor', 'enabled', 'yes'),
(645, 'auto_update_core_major', 'unset', 'yes'),
(646, 'db_upgraded', '', 'yes'),
(649, 'can_compress_scripts', '1', 'no'),
(651, 'ewww_image_optimizer_dismiss_review_notice', '1', 'no'),
(712, 'catalog-categories_children', 'a:2:{i:2;a:15:{i:0;i:3;i:1;i:4;i:2;i:5;i:3;i:6;i:4;i:7;i:5;i:8;i:6;i:9;i:7;i:10;i:8;i:11;i:9;i:12;i:10;i:13;i:11;i:14;i:12;i:15;i:13;i:16;i:14;i:17;}i:18;a:8:{i:0;i:19;i:1;i:20;i:2;i:21;i:3;i:22;i:4;i:23;i:5;i:24;i:6;i:25;i:7;i:26;}}', 'yes'),
(921, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.6.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.6.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.1\";s:7:\"version\";s:5:\"5.6.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1613715543;s:15:\"version_checked\";s:5:\"5.6.1\";s:12:\"translations\";a:0:{}}', 'no'),
(924, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:29:\"sidorov.mihail.maykop@mail.ru\";s:7:\"version\";s:5:\"5.6.1\";s:9:\"timestamp\";i:1612878608;}', 'no'),
(929, '_site_transient_timeout_theme_roots', '1613717344', 'no'),
(930, '_site_transient_theme_roots', 'a:5:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:6:\"zoomir\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(931, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1613715545;s:7:\"checked\";a:5:{s:14:\"twentynineteen\";s:3:\"1.8\";s:15:\"twentyseventeen\";s:3:\"2.5\";s:12:\"twentytwenty\";s:3:\"1.6\";s:15:\"twentytwentyone\";s:3:\"1.0\";s:6:\"zoomir\";s:3:\"1.0\";}s:8:\"response\";a:2:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.9.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.1.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:2:{s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(932, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1613715546;s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.3\";s:22:\"cyr2lat/cyr-to-lat.php\";s:5:\"4.5.2\";s:45:\"ewww-image-optimizer/ewww-image-optimizer.php\";s:5:\"5.8.2\";s:39:\"mce-table-buttons/mce_table_buttons.php\";s:3:\"3.3\";s:55:\"wck-custom-fields-and-custom-post-types-creator/wck.php\";s:5:\"2.2.6\";}s:8:\"response\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.6.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:22:\"cyr2lat/cyr-to-lat.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/cyr2lat\";s:4:\"slug\";s:7:\"cyr2lat\";s:6:\"plugin\";s:22:\"cyr2lat/cyr-to-lat.php\";s:11:\"new_version\";s:5:\"4.6.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr2lat/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/cyr2lat.4.6.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/cyr2lat/assets/icon-256x256.jpg?rev=2434252\";s:2:\"1x\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2022835\";s:3:\"svg\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2022835\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/cyr2lat/assets/banner-1544x500.png?rev=2434252\";s:2:\"1x\";s:62:\"https://ps.w.org/cyr2lat/assets/banner-772x250.png?rev=2434252\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.6.1\";s:12:\"requires_php\";s:6:\"5.6.20\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:45:\"ewww-image-optimizer/ewww-image-optimizer.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:34:\"w.org/plugins/ewww-image-optimizer\";s:4:\"slug\";s:20:\"ewww-image-optimizer\";s:6:\"plugin\";s:45:\"ewww-image-optimizer/ewww-image-optimizer.php\";s:11:\"new_version\";s:5:\"6.0.3\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/ewww-image-optimizer/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/ewww-image-optimizer.6.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/ewww-image-optimizer/assets/icon-256x256.png?rev=1582276\";s:2:\"1x\";s:73:\"https://ps.w.org/ewww-image-optimizer/assets/icon-128x128.png?rev=1582276\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/ewww-image-optimizer/assets/banner-1544x500.jpg?rev=1582276\";s:2:\"1x\";s:75:\"https://ps.w.org/ewww-image-optimizer/assets/banner-772x250.jpg?rev=1582276\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.6.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:39:\"mce-table-buttons/mce_table_buttons.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/mce-table-buttons\";s:4:\"slug\";s:17:\"mce-table-buttons\";s:6:\"plugin\";s:39:\"mce-table-buttons/mce_table_buttons.php\";s:11:\"new_version\";s:3:\"3.3\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/mce-table-buttons/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/mce-table-buttons.3.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/mce-table-buttons/assets/icon-256x256.png?rev=971854\";s:2:\"1x\";s:69:\"https://ps.w.org/mce-table-buttons/assets/icon-128x128.png?rev=971854\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/mce-table-buttons/assets/banner-1544x500.png?rev=971854\";s:2:\"1x\";s:71:\"https://ps.w.org/mce-table-buttons/assets/banner-772x250.png?rev=971854\";}s:11:\"banners_rtl\";a:0:{}}s:55:\"wck-custom-fields-and-custom-post-types-creator/wck.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:61:\"w.org/plugins/wck-custom-fields-and-custom-post-types-creator\";s:4:\"slug\";s:47:\"wck-custom-fields-and-custom-post-types-creator\";s:6:\"plugin\";s:55:\"wck-custom-fields-and-custom-post-types-creator/wck.php\";s:11:\"new_version\";s:5:\"2.2.6\";s:3:\"url\";s:78:\"https://wordpress.org/plugins/wck-custom-fields-and-custom-post-types-creator/\";s:7:\"package\";s:96:\"https://downloads.wordpress.org/plugin/wck-custom-fields-and-custom-post-types-creator.2.2.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:100:\"https://ps.w.org/wck-custom-fields-and-custom-post-types-creator/assets/icon-256x256.png?rev=2257602\";s:2:\"1x\";s:100:\"https://ps.w.org/wck-custom-fields-and-custom-post-types-creator/assets/icon-128x128.png?rev=2257602\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:103:\"https://ps.w.org/wck-custom-fields-and-custom-post-types-creator/assets/banner-1544x500.png?rev=2257602\";s:2:\"1x\";s:102:\"https://ps.w.org/wck-custom-fields-and-custom-post-types-creator/assets/banner-772x250.png?rev=2257602\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(933, '_site_transient_timeout_php_check_a5907c2ea4d6fbd7e531b3aa7734f0e4', '1614320348', 'no'),
(934, '_site_transient_php_check_a5907c2ea4d6fbd7e531b3aa7734f0e4', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--
-- Создание: Янв 16 2021 г., 08:38
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(14, 9, '_edit_lock', '1604666140:1'),
(15, 10, '_wp_attached_file', '2020/11/akcii-item-image1.png'),
(16, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:183;s:6:\"height\";i:178;s:4:\"file\";s:29:\"2020/11/akcii-item-image1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"akcii-item-image1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 9, '_thumbnail_id', '10'),
(18, 11, '_edit_lock', '1608752913:1'),
(19, 12, '_wp_attached_file', '2020/11/akcii-item-image2.png'),
(20, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:183;s:6:\"height\";i:177;s:4:\"file\";s:29:\"2020/11/akcii-item-image2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"akcii-item-image2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 11, '_thumbnail_id', '12'),
(22, 14, '_edit_last', '1'),
(23, 14, '_edit_lock', '1608715377:1'),
(24, 11, '_edit_last', '1'),
(25, 11, 'proczent', '50%'),
(26, 11, '_proczent', 'field_5fa3b1e1d0409'),
(27, 11, 'data_provedeniya', 'Акция проходит с 01.04 по 01.05'),
(28, 11, '_data_provedeniya', 'field_5fa3b267d040a'),
(29, 9, '_edit_last', '1'),
(30, 9, 'proczent', '25%'),
(31, 9, '_proczent', 'field_5fa3b1e1d0409'),
(32, 9, 'data_provedeniya', 'Акция проходит с 01.04 по 01.05'),
(33, 9, '_data_provedeniya', 'field_5fa3b267d040a'),
(34, 17, '_wp_attached_file', '2020/11/catalog-item-image1.png'),
(35, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:380;s:6:\"height\";i:250;s:4:\"file\";s:31:\"2020/11/catalog-item-image1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"catalog-item-image1-300x197.png\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"catalog-item-image1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 17, 'img_term', '2'),
(37, 18, '_wp_attached_file', '2020/11/catalog-item-image2.png'),
(38, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:380;s:6:\"height\";i:250;s:4:\"file\";s:31:\"2020/11/catalog-item-image2.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"catalog-item-image2-300x197.png\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"catalog-item-image2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 18, 'img_term', '18'),
(40, 19, '_edit_lock', '1604578460:1'),
(41, 20, '_wp_attached_file', '2020/11/instagramm-image1.png'),
(42, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:269;s:6:\"height\";i:269;s:4:\"file\";s:29:\"2020/11/instagramm-image1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"instagramm-image1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 21, '_wp_attached_file', '2020/11/instagramm-image2.png'),
(44, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:269;s:6:\"height\";i:269;s:4:\"file\";s:29:\"2020/11/instagramm-image2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"instagramm-image2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 22, '_wp_attached_file', '2020/11/instagramm-image3.png'),
(46, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:269;s:6:\"height\";i:269;s:4:\"file\";s:29:\"2020/11/instagramm-image3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"instagramm-image3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 23, '_wp_attached_file', '2020/11/instagramm-image4.png'),
(48, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:269;s:6:\"height\";i:269;s:4:\"file\";s:29:\"2020/11/instagramm-image4.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"instagramm-image4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 19, '_thumbnail_id', '20'),
(50, 24, '_edit_lock', '1604578489:1'),
(51, 24, '_thumbnail_id', '21'),
(52, 25, '_edit_lock', '1604578519:1'),
(53, 25, '_thumbnail_id', '22'),
(54, 26, '_edit_lock', '1608628307:1'),
(55, 26, '_thumbnail_id', '23'),
(56, 27, '_edit_lock', '1604651368:1'),
(57, 28, '_wp_attached_file', '2020/11/catalog-categories-page-category-item-image1.png'),
(58, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:140;s:6:\"height\";i:170;s:4:\"file\";s:56:\"2020/11/catalog-categories-page-category-item-image1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"catalog-categories-page-category-item-image1-140x150.png\";s:5:\"width\";i:140;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(59, 27, '_thumbnail_id', '28'),
(60, 29, '_edit_lock', '1604651419:1'),
(61, 30, '_wp_attached_file', '2020/11/catalog-categories-page-category-item-image2.png'),
(62, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:140;s:6:\"height\";i:170;s:4:\"file\";s:56:\"2020/11/catalog-categories-page-category-item-image2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"catalog-categories-page-category-item-image2-140x150.png\";s:5:\"width\";i:140;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(63, 29, '_thumbnail_id', '30'),
(64, 31, '_edit_lock', '1604651481:1'),
(65, 32, '_wp_attached_file', '2020/11/catalog-categories-page-category-item-image3.png'),
(66, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:140;s:6:\"height\";i:170;s:4:\"file\";s:56:\"2020/11/catalog-categories-page-category-item-image3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"catalog-categories-page-category-item-image3-140x150.png\";s:5:\"width\";i:140;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(67, 33, '_wp_attached_file', '2020/11/catalog-categories-page-category-item-image4.png'),
(68, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:136;s:6:\"height\";i:170;s:4:\"file\";s:56:\"2020/11/catalog-categories-page-category-item-image4.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"catalog-categories-page-category-item-image4-136x150.png\";s:5:\"width\";i:136;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(69, 31, '_thumbnail_id', '32'),
(70, 34, '_edit_lock', '1604652135:1'),
(71, 34, '_thumbnail_id', '33'),
(72, 35, '_edit_lock', '1604654754:1'),
(73, 35, '_thumbnail_id', '33'),
(74, 36, '_edit_lock', '1604654822:1'),
(75, 36, '_thumbnail_id', '32'),
(76, 39, '_wp_attached_file', '2020/11/akcii-page-item-image2.png'),
(77, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:876;s:6:\"height\";i:203;s:4:\"file\";s:34:\"2020/11/akcii-page-item-image2.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"akcii-page-item-image2-300x70.png\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"akcii-page-item-image2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"akcii-page-item-image2-768x178.png\";s:5:\"width\";i:768;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(78, 11, 'long_image', '39'),
(79, 11, '_long_image', 'field_5fa530e9848ea'),
(80, 40, '_wp_attached_file', '2020/11/akcii-page-item-image1.png'),
(81, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:876;s:6:\"height\";i:203;s:4:\"file\";s:34:\"2020/11/akcii-page-item-image1.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"akcii-page-item-image1-300x70.png\";s:5:\"width\";i:300;s:6:\"height\";i:70;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"akcii-page-item-image1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"akcii-page-item-image1-768x178.png\";s:5:\"width\";i:768;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(82, 9, 'long_image', '40'),
(83, 9, '_long_image', 'field_5fa530e9848ea'),
(84, 11, 'is_active', 'a:1:{i:0;s:4:\"Да\";}'),
(85, 11, '_is_active', 'field_5fa5358d0d454'),
(86, 9, 'is_active', 'a:1:{i:0;s:4:\"Да\";}'),
(87, 9, '_is_active', 'field_5fa5358d0d454'),
(88, 42, '_edit_last', '1'),
(89, 42, '_edit_lock', '1604666458:1'),
(90, 44, '_edit_lock', '1605000127:1'),
(91, 45, '_wp_attached_file', '2020/11/vakansii-page-item-image1.jpg'),
(92, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:504;s:6:\"height\";i:440;s:4:\"file\";s:37:\"2020/11/vakansii-page-item-image1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"vakansii-page-item-image1-300x262.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:262;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"vakansii-page-item-image1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 44, '_thumbnail_id', '46'),
(94, 44, '_edit_last', '1'),
(95, 44, 'city', 'Белореченск'),
(96, 44, '_city', 'field_5fa5445cc0328'),
(97, 46, '_wp_attached_file', '2020/11/vakansii-page-item-image2.jpg'),
(98, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:504;s:6:\"height\";i:440;s:4:\"file\";s:37:\"2020/11/vakansii-page-item-image2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"vakansii-page-item-image2-300x262.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:262;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"vakansii-page-item-image2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99, 47, '_edit_lock', '1605000004:1'),
(100, 47, '_thumbnail_id', '45'),
(101, 47, '_edit_last', '1'),
(102, 47, 'city', 'Майкоп'),
(103, 47, '_city', 'field_5fa5445cc0328'),
(104, 44, '_wp_old_slug', 'veterinarnyj-vrach-ili-veterinarnyj-feldsher'),
(105, 47, '_wp_old_slug', 'veterinarnyj-vrach-ili-veterinarnyj-feldsher-2'),
(106, 48, '_edit_lock', '1604671316:1'),
(107, 48, '_wp_page_template', 'delivery.php'),
(108, 50, '_edit_lock', '1604672253:1'),
(109, 50, '_wp_page_template', 'company.php'),
(110, 52, '_edit_last', '1'),
(111, 52, '_edit_lock', '1604903347:1'),
(112, 55, '_edit_lock', '1605004978:1'),
(113, 56, '_wp_attached_file', '2020/11/shops-page-item-image1.png'),
(114, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:330;s:6:\"height\";i:218;s:4:\"file\";s:34:\"2020/11/shops-page-item-image1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"shops-page-item-image1-300x198.png\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"shops-page-item-image1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 55, '_thumbnail_id', '56'),
(116, 55, '_edit_last', '1'),
(117, 55, 'long', '44.6117'),
(118, 55, '_long', 'field_5fa8e1cf8e5ea'),
(119, 55, 'lat', '40.0888'),
(120, 55, '_lat', 'field_5fa8e2188e5eb'),
(121, 57, '_edit_lock', '1605004965:1'),
(122, 58, '_wp_attached_file', '2020/11/shops-page-item-image2.png'),
(123, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:330;s:6:\"height\";i:221;s:4:\"file\";s:34:\"2020/11/shops-page-item-image2.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"shops-page-item-image2-300x201.png\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"shops-page-item-image2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 57, '_thumbnail_id', '58'),
(125, 57, '_edit_last', '1'),
(126, 57, 'long', '44.6128'),
(127, 57, '_long', 'field_5fa8e1cf8e5ea'),
(128, 57, 'lat', '40.0612'),
(129, 57, '_lat', 'field_5fa8e2188e5eb'),
(130, 61, '_edit_lock', '1605004954:1'),
(131, 61, '_edit_last', '1'),
(132, 61, 'long', '44.7575'),
(133, 61, '_long', 'field_5fa8e1cf8e5ea'),
(134, 61, 'lat', '39.8718'),
(135, 61, '_lat', 'field_5fa8e2188e5eb'),
(136, 61, '_thumbnail_id', '56'),
(137, 62, '_edit_lock', '1605004942:1'),
(138, 62, '_thumbnail_id', '58'),
(139, 62, '_edit_last', '1'),
(140, 62, 'long', '44.764'),
(141, 62, '_long', 'field_5fa8e1cf8e5ea'),
(142, 62, 'lat', '39.8727'),
(143, 62, '_lat', 'field_5fa8e2188e5eb'),
(144, 64, '_edit_lock', '1608566703:1'),
(145, 64, '_thumbnail_id', '12'),
(146, 64, '_edit_last', '1'),
(147, 64, 'proczent', '50%'),
(148, 64, '_proczent', 'field_5fa3b1e1d0409'),
(149, 64, 'data_provedeniya', 'Акция проходит с 01.04 по 01.05'),
(150, 64, '_data_provedeniya', 'field_5fa3b267d040a'),
(151, 64, 'long_image', '39'),
(152, 64, '_long_image', 'field_5fa530e9848ea'),
(153, 64, 'is_active', 'a:1:{i:0;s:4:\"Да\";}'),
(154, 64, '_is_active', 'field_5fa5358d0d454'),
(155, 65, '_edit_lock', '1608714814:1'),
(156, 65, '_thumbnail_id', '10'),
(157, 65, '_edit_last', '1'),
(158, 65, 'proczent', '10%'),
(159, 65, '_proczent', 'field_5fa3b1e1d0409'),
(160, 65, 'data_provedeniya', 'Акция проходит с 01.04 по 01.05'),
(161, 65, '_data_provedeniya', 'field_5fa3b267d040a'),
(162, 65, 'long_image', '40'),
(163, 65, '_long_image', 'field_5fa530e9848ea'),
(164, 65, 'is_active', 'a:1:{i:0;s:4:\"Да\";}'),
(165, 65, '_is_active', 'field_5fa5358d0d454'),
(166, 66, '_edit_lock', '1608628306:1'),
(167, 66, '_thumbnail_id', '22'),
(168, 65, 'opisanie_proczenta', 'На второй товар'),
(169, 65, '_opisanie_proczenta', 'field_5fe309eb3a99c'),
(170, 11, 'opisanie_proczenta', 'На третью упаковку'),
(171, 11, '_opisanie_proczenta', 'field_5fe309eb3a99c');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--
-- Создание: Янв 16 2021 г., 08:38
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(9, 1, '2020-11-05 10:54:18', '2020-11-05 07:54:18', '<!-- wp:paragraph -->\n<p>для отучения гадить и грызть для кошек и собак.</p>\n<!-- /wp:paragraph -->', 'Все средства', '', 'publish', 'closed', 'closed', '', 'vse-sredstva', '', '', '2020-11-06 15:13:02', '2020-11-06 12:13:02', '', 0, 'http://192.10.0.38/?post_type=akcii&#038;p=9', 0, 'akcii', '', 0),
(10, 1, '2020-11-05 10:53:32', '2020-11-05 07:53:32', '', 'akcii-item-image1', '', 'inherit', 'open', 'closed', '', 'akcii-item-image1', '', '', '2020-11-05 10:53:32', '2020-11-05 07:53:32', '', 9, 'http://192.10.0.38/wp-content/uploads/2020/11/akcii-item-image1.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2020-11-05 10:57:04', '2020-11-05 07:57:04', '<!-- wp:paragraph -->\n<p>для отучения гадить и грызть для кошек и собак.</p>\n<!-- /wp:paragraph -->', 'Все средства', '', 'publish', 'closed', 'closed', '', 'vse-sredstva-2', '', '', '2020-12-23 12:27:59', '2020-12-23 09:27:59', '', 0, 'http://192.10.0.38/?post_type=akcii&#038;p=11', 0, 'akcii', '', 0),
(12, 1, '2020-11-05 10:56:34', '2020-11-05 07:56:34', '', 'akcii-item-image2', '', 'inherit', 'open', 'closed', '', 'akcii-item-image2', '', '', '2020-11-05 10:56:34', '2020-11-05 07:56:34', '', 11, 'http://192.10.0.38/wp-content/uploads/2020/11/akcii-item-image2.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2020-11-05 11:06:33', '2020-11-05 08:06:33', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"akcii\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Акции', 'akczii', 'publish', 'closed', 'closed', '', 'group_5fa3b17393dc7', '', '', '2020-12-23 12:13:12', '2020-12-23 09:13:12', '', 0, 'http://192.10.0.38/?post_type=acf-field-group&#038;p=14', 0, 'acf-field-group', '', 0),
(15, 1, '2020-11-05 11:06:33', '2020-11-05 08:06:33', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Процент', 'proczent', 'publish', 'closed', 'closed', '', 'field_5fa3b1e1d0409', '', '', '2020-11-05 11:06:33', '2020-11-05 08:06:33', '', 14, 'http://192.10.0.38/?post_type=acf-field&p=15', 0, 'acf-field', '', 0),
(16, 1, '2020-11-05 11:06:33', '2020-11-05 08:06:33', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Дата проведения', 'data_provedeniya', 'publish', 'closed', 'closed', '', 'field_5fa3b267d040a', '', '', '2020-11-05 11:06:33', '2020-11-05 08:06:33', '', 14, 'http://192.10.0.38/?post_type=acf-field&p=16', 1, 'acf-field', '', 0),
(17, 1, '2020-11-05 14:11:43', '2020-11-05 11:11:43', '', 'catalog-item-image1', '', 'inherit', 'open', 'closed', '', 'catalog-item-image1', '', '', '2020-11-05 14:11:43', '2020-11-05 11:11:43', '', 0, 'http://192.10.0.38/wp-content/uploads/2020/11/catalog-item-image1.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2020-11-05 14:21:01', '2020-11-05 11:21:01', '', 'catalog-item-image2', '', 'inherit', 'open', 'closed', '', 'catalog-item-image2', '', '', '2020-11-05 14:21:01', '2020-11-05 11:21:01', '', 0, 'http://192.10.0.38/wp-content/uploads/2020/11/catalog-item-image2.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2020-11-05 15:16:40', '2020-11-05 12:16:40', '', 'Пост1', '', 'publish', 'closed', 'closed', '', 'post1', '', '', '2020-11-05 15:16:40', '2020-11-05 12:16:40', '', 0, 'http://192.10.0.38/?post_type=instagramm&#038;p=19', 0, 'instagramm', '', 0),
(20, 1, '2020-11-05 15:16:27', '2020-11-05 12:16:27', '', 'instagramm-image1', '', 'inherit', 'open', 'closed', '', 'instagramm-image1', '', '', '2020-11-05 15:16:27', '2020-11-05 12:16:27', '', 19, 'http://192.10.0.38/wp-content/uploads/2020/11/instagramm-image1.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2020-11-05 15:16:28', '2020-11-05 12:16:28', '', 'instagramm-image2', '', 'inherit', 'open', 'closed', '', 'instagramm-image2', '', '', '2020-11-05 15:16:28', '2020-11-05 12:16:28', '', 19, 'http://192.10.0.38/wp-content/uploads/2020/11/instagramm-image2.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2020-11-05 15:16:29', '2020-11-05 12:16:29', '', 'instagramm-image3', '', 'inherit', 'open', 'closed', '', 'instagramm-image3', '', '', '2020-11-05 15:16:29', '2020-11-05 12:16:29', '', 19, 'http://192.10.0.38/wp-content/uploads/2020/11/instagramm-image3.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2020-11-05 15:16:30', '2020-11-05 12:16:30', '', 'instagramm-image4', '', 'inherit', 'open', 'closed', '', 'instagramm-image4', '', '', '2020-11-05 15:16:30', '2020-11-05 12:16:30', '', 19, 'http://192.10.0.38/wp-content/uploads/2020/11/instagramm-image4.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2020-11-05 15:17:09', '2020-11-05 12:17:09', '', 'Пост2', '', 'publish', 'closed', 'closed', '', 'post2', '', '', '2020-11-05 15:17:09', '2020-11-05 12:17:09', '', 0, 'http://192.10.0.38/?post_type=instagramm&#038;p=24', 0, 'instagramm', '', 0),
(25, 1, '2020-11-05 15:17:41', '2020-11-05 12:17:41', '', 'Пост3', '', 'publish', 'closed', 'closed', '', 'post3', '', '', '2020-11-05 15:17:41', '2020-11-05 12:17:41', '', 0, 'http://192.10.0.38/?post_type=instagramm&#038;p=25', 0, 'instagramm', '', 0),
(26, 1, '2020-11-05 15:18:00', '2020-11-05 12:18:00', '', 'Пост4', '', 'publish', 'closed', 'closed', '', 'post4', '', '', '2020-11-05 15:18:00', '2020-11-05 12:18:00', '', 0, 'http://192.10.0.38/?post_type=instagramm&#038;p=26', 0, 'instagramm', '', 0),
(27, 1, '2020-11-06 11:31:49', '2020-11-06 08:31:49', '', 'KRKA Марфлоксин', '', 'publish', 'closed', 'closed', '', 'krka-marfloksin', '', '', '2020-11-06 11:31:49', '2020-11-06 08:31:49', '', 0, 'http://192.10.0.38/?post_type=catalog&#038;p=27', 0, 'catalog', '', 0),
(28, 1, '2020-11-06 11:31:28', '2020-11-06 08:31:28', '', 'catalog-categories-page-category-item-image1', '', 'inherit', 'open', 'closed', '', 'catalog-categories-page-category-item-image1', '', '', '2020-11-06 11:31:28', '2020-11-06 08:31:28', '', 27, 'http://192.10.0.38/wp-content/uploads/2020/11/catalog-categories-page-category-item-image1.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2020-11-06 11:32:41', '2020-11-06 08:32:41', '', 'KRKA Энроксил', '', 'publish', 'closed', 'closed', '', 'krka-enroksil', '', '', '2020-11-06 11:32:41', '2020-11-06 08:32:41', '', 0, 'http://192.10.0.38/?post_type=catalog&#038;p=29', 0, 'catalog', '', 0),
(30, 1, '2020-11-06 11:32:31', '2020-11-06 08:32:31', '', 'catalog-categories-page-category-item-image2', '', 'inherit', 'open', 'closed', '', 'catalog-categories-page-category-item-image2', '', '', '2020-11-06 11:32:31', '2020-11-06 08:32:31', '', 29, 'http://192.10.0.38/wp-content/uploads/2020/11/catalog-categories-page-category-item-image2.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2020-11-06 11:33:43', '2020-11-06 08:33:43', '', 'KRKA Энроксил', '', 'publish', 'closed', 'closed', '', 'krka-enroksil-2', '', '', '2020-11-06 11:33:43', '2020-11-06 08:33:43', '', 0, 'http://192.10.0.38/?post_type=catalog&#038;p=31', 0, 'catalog', '', 0),
(32, 1, '2020-11-06 11:33:29', '2020-11-06 08:33:29', '', 'catalog-categories-page-category-item-image3', '', 'inherit', 'open', 'closed', '', 'catalog-categories-page-category-item-image3', '', '', '2020-11-06 11:33:29', '2020-11-06 08:33:29', '', 31, 'http://192.10.0.38/wp-content/uploads/2020/11/catalog-categories-page-category-item-image3.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2020-11-06 11:33:31', '2020-11-06 08:33:31', '', 'catalog-categories-page-category-item-image4', '', 'inherit', 'open', 'closed', '', 'catalog-categories-page-category-item-image4', '', '', '2020-11-06 11:33:31', '2020-11-06 08:33:31', '', 31, 'http://192.10.0.38/wp-content/uploads/2020/11/catalog-categories-page-category-item-image4.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2020-11-06 11:34:23', '2020-11-06 08:34:23', '', 'АВЗ Ципровет', '', 'publish', 'closed', 'closed', '', 'avz-cziprovet', '', '', '2020-11-06 11:34:23', '2020-11-06 08:34:23', '', 0, 'http://192.10.0.38/?post_type=catalog&#038;p=34', 0, 'catalog', '', 0),
(35, 1, '2020-11-06 12:28:06', '2020-11-06 09:28:06', '', 'Вакцина1', '', 'publish', 'closed', 'closed', '', 'vakczina1', '', '', '2020-11-06 12:28:06', '2020-11-06 09:28:06', '', 0, 'http://192.10.0.38/?post_type=catalog&#038;p=35', 0, 'catalog', '', 0),
(36, 1, '2020-11-06 12:28:39', '2020-11-06 09:28:39', '', 'Вакцина2', '', 'publish', 'closed', 'closed', '', 'vakczina2', '', '', '2020-11-06 12:28:39', '2020-11-06 09:28:39', '', 0, 'http://192.10.0.38/?post_type=catalog&#038;p=36', 0, 'catalog', '', 0),
(37, 1, '2020-11-06 14:21:41', '2020-11-06 11:21:41', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Длинное изображение', 'long_image', 'publish', 'closed', 'closed', '', 'field_5fa530e9848ea', '', '', '2020-11-06 14:21:41', '2020-11-06 11:21:41', '', 14, 'http://192.10.0.38/?post_type=acf-field&p=37', 2, 'acf-field', '', 0),
(39, 1, '2020-11-06 14:24:30', '2020-11-06 11:24:30', '', 'akcii-page-item-image2', '', 'inherit', 'open', 'closed', '', 'akcii-page-item-image2', '', '', '2020-11-06 14:24:30', '2020-11-06 11:24:30', '', 11, 'http://192.10.0.38/wp-content/uploads/2020/11/akcii-page-item-image2.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2020-11-06 14:25:02', '2020-11-06 11:25:02', '', 'akcii-page-item-image1', '', 'inherit', 'open', 'closed', '', 'akcii-page-item-image1', '', '', '2020-11-06 14:25:02', '2020-11-06 11:25:02', '', 9, 'http://192.10.0.38/wp-content/uploads/2020/11/akcii-page-item-image1.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2020-11-06 14:38:52', '2020-11-06 11:38:52', 'a:12:{s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:1:{s:4:\"Да\";s:4:\"Да\";}s:12:\"allow_custom\";i:0;s:13:\"default_value\";a:0:{}s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"save_custom\";i:0;}', 'Активна', 'is_active', 'publish', 'closed', 'closed', '', 'field_5fa5358d0d454', '', '', '2020-11-06 15:06:15', '2020-11-06 12:06:15', '', 14, 'http://192.10.0.38/?post_type=acf-field&#038;p=41', 3, 'acf-field', '', 0),
(42, 1, '2020-11-06 15:40:11', '2020-11-06 12:40:11', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"vakansii\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Вакансии', 'vakansii', 'publish', 'closed', 'closed', '', 'group_5fa543f1351d2', '', '', '2020-11-06 15:42:56', '2020-11-06 12:42:56', '', 0, 'http://192.10.0.38/?post_type=acf-field-group&#038;p=42', 0, 'acf-field-group', '', 0),
(43, 1, '2020-11-06 15:42:56', '2020-11-06 12:42:56', 'a:12:{s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:12:\"Майкоп\";s:12:\"Майкоп\";s:22:\"Белореченск\";s:22:\"Белореченск\";}s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:13:\"default_value\";s:0:\"\";s:6:\"layout\";s:8:\"vertical\";s:13:\"return_format\";s:5:\"value\";s:17:\"save_other_choice\";i:0;}', 'Город', 'city', 'publish', 'closed', 'closed', '', 'field_5fa5445cc0328', '', '', '2020-11-06 15:42:56', '2020-11-06 12:42:56', '', 42, 'http://192.10.0.38/?post_type=acf-field&p=43', 0, 'acf-field', '', 0),
(44, 1, '2020-11-06 15:50:57', '2020-11-06 12:50:57', '<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>Обязанности:</td><td>полная занятость, полный день</td></tr><tr><td>Требования:</td><td>активность, позитив, нацеленность на результат; желание работать и развиваться, умение слышать запрос клиента;</td></tr><tr><td>Условия работы:</td><td>График работы 3/2. График работы 3/2. Заработная плата от 23000 р.</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td><strong>Обязанности:</strong></td></tr><tr><td>полная занятость, полный день</td></tr><tr><td><strong>Требования:</strong></td></tr><tr><td>активность, позитив, нацеленность на результат; желание работать и развиваться, умение слышать запрос клиента;</td></tr><tr><td><strong>Условия работы:</strong></td></tr><tr><td>График работы 3/2. График работы 3/2. Заработная плата от 23000 р.</td></tr></tbody></table></figure>\n<!-- /wp:table -->', 'Продавец-консультант', '', 'publish', 'closed', 'closed', '', 'prodavecz-konsultant', '', '', '2020-11-10 12:22:06', '2020-11-10 09:22:06', '', 0, 'http://192.10.0.38/?post_type=vakansii&#038;p=44', 0, 'vakansii', '', 0),
(45, 1, '2020-11-06 15:50:45', '2020-11-06 12:50:45', '', 'vakansii-page-item-image1', '', 'inherit', 'open', 'closed', '', 'vakansii-page-item-image1', '', '', '2020-11-06 15:50:45', '2020-11-06 12:50:45', '', 44, 'http://192.10.0.38/wp-content/uploads/2020/11/vakansii-page-item-image1.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2020-11-06 15:56:31', '2020-11-06 12:56:31', '', 'vakansii-page-item-image2', '', 'inherit', 'open', 'closed', '', 'vakansii-page-item-image2', '', '', '2020-11-06 15:56:31', '2020-11-06 12:56:31', '', 44, 'http://192.10.0.38/wp-content/uploads/2020/11/vakansii-page-item-image2.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2020-11-06 16:02:33', '2020-11-06 13:02:33', '<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>Обязанности:</td><td>полная занятость, полный день</td></tr><tr><td>Требования:</td><td>активность, позитив, нацеленность на результат; желание работать и развиваться, умение слышать запрос клиента;</td></tr><tr><td>Условия работы:</td><td>График работы 3/2. График работы 3/2. Заработная плата от 23000 р.</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td><strong>Обязанности:</strong></td></tr><tr><td>полная занятость, полный день</td></tr><tr><td><strong>Требования:</strong></td></tr><tr><td>активность, позитив, нацеленность на результат; желание работать и развиваться, умение слышать запрос клиента;</td></tr><tr><td><strong>Условия работы:</strong></td></tr><tr><td>График работы 3/2. График работы 3/2. Заработная плата от 23000 р.</td></tr></tbody></table></figure>\n<!-- /wp:table -->', 'Ветеринарный врач или ветеринарный фельдшер', '', 'publish', 'closed', 'closed', '', 'veterinarnyj-vrach-ili-veterinarnyj-feldsher', '', '', '2020-11-10 12:15:42', '2020-11-10 09:15:42', '', 0, 'http://192.10.0.38/?post_type=vakansii&#038;p=47', 0, 'vakansii', '', 0),
(48, 1, '2020-11-06 16:53:58', '2020-11-06 13:53:58', '', 'Доставка', '', 'publish', 'closed', 'closed', '', 'dostavka', '', '', '2020-11-06 16:53:58', '2020-11-06 13:53:58', '', 0, 'http://192.10.0.38/?page_id=48', 0, 'page', '', 0),
(49, 1, '2020-11-06 16:53:58', '2020-11-06 13:53:58', '', 'Доставка', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2020-11-06 16:53:58', '2020-11-06 13:53:58', '', 48, 'http://192.10.0.38/48-revision-v1/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/', 0, 'revision', '', 0),
(50, 1, '2020-11-06 17:14:51', '2020-11-06 14:14:51', '', 'Компания', '', 'publish', 'closed', 'closed', '', 'kompaniya', '', '', '2020-11-06 17:14:51', '2020-11-06 14:14:51', '', 0, 'http://192.10.0.38/?page_id=50', 0, 'page', '', 0),
(51, 1, '2020-11-06 17:14:51', '2020-11-06 14:14:51', '', 'Компания', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2020-11-06 17:14:51', '2020-11-06 14:14:51', '', 50, 'http://192.10.0.38/50-revision-v1/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/', 0, 'revision', '', 0),
(52, 1, '2020-11-09 09:31:19', '2020-11-09 06:31:19', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"shop\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Магазины', 'magaziny', 'publish', 'closed', 'closed', '', 'group_5fa8e1a62a168', '', '', '2020-11-09 09:31:19', '2020-11-09 06:31:19', '', 0, 'http://192.10.0.38/?post_type=acf-field-group&#038;p=52', 0, 'acf-field-group', '', 0),
(53, 1, '2020-11-09 09:31:19', '2020-11-09 06:31:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Долгота', 'long', 'publish', 'closed', 'closed', '', 'field_5fa8e1cf8e5ea', '', '', '2020-11-09 09:31:19', '2020-11-09 06:31:19', '', 52, 'http://192.10.0.38/?post_type=acf-field&p=53', 0, 'acf-field', '', 0),
(54, 1, '2020-11-09 09:31:19', '2020-11-09 06:31:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Широта', 'lat', 'publish', 'closed', 'closed', '', 'field_5fa8e2188e5eb', '', '', '2020-11-09 09:31:19', '2020-11-09 06:31:19', '', 52, 'http://192.10.0.38/?post_type=acf-field&p=54', 1, 'acf-field', '', 0),
(55, 1, '2020-11-09 09:36:59', '2020-11-09 06:36:59', '<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>Режим работы:</td><td>Пн-Пт: 9.00-20.00; Сб-Вс: 8.00-19.00</td></tr><tr><td>Телефон:</td><td>8 (8772) 56-91-93</td></tr><tr><td>Отделы:</td><td><a href=\"#\">Отдел1</a> <a href=\"#\">Отдел2</a> <a href=\"#\">Отдел3</a></td></tr></tbody></table></figure>\n<!-- /wp:table -->', 'ул. Карла Маркса 23', '', 'publish', 'closed', 'closed', '', 'ul-karla-marksa-23', '', '', '2020-11-10 13:44:24', '2020-11-10 10:44:24', '', 0, 'http://192.10.0.38/?post_type=shop&#038;p=55', 0, 'shop', '', 0),
(56, 1, '2020-11-09 09:36:44', '2020-11-09 06:36:44', '', 'shops-page-item-image1', '', 'inherit', 'open', 'closed', '', 'shops-page-item-image1', '', '', '2020-11-09 09:36:44', '2020-11-09 06:36:44', '', 55, 'http://192.10.0.38/wp-content/uploads/2020/11/shops-page-item-image1.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2020-11-09 09:43:05', '2020-11-09 06:43:05', '<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>Режим работы:</td><td>Пн-Пт: 8.00-20.00; Сб-Вс: 8.00-19.00</td></tr><tr><td>Телефон:</td><td>8-962-763-11-02</td></tr><tr><td>Отделы:</td><td><a href=\"http://3\">Отдел1</a> <a href=\"#\">Отдел2</a> <a href=\"#\">Отдел3</a></td></tr></tbody></table></figure>\n<!-- /wp:table -->', 'ул. Пионерская 524', '', 'publish', 'closed', 'closed', '', 'ul-pionerskaya-524', '', '', '2020-11-10 13:43:12', '2020-11-10 10:43:12', '', 0, 'http://192.10.0.38/?post_type=shop&#038;p=57', 0, 'shop', '', 0),
(58, 1, '2020-11-09 09:42:24', '2020-11-09 06:42:24', '', 'shops-page-item-image2', '', 'inherit', 'open', 'closed', '', 'shops-page-item-image2', '', '', '2020-11-09 09:42:24', '2020-11-09 06:42:24', '', 57, 'http://192.10.0.38/wp-content/uploads/2020/11/shops-page-item-image2.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2020-11-09 10:34:39', '2020-11-09 07:34:39', '<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>Режим Работы:</td><td>Пн-Пт: 8.00-20.00; Сб-Вс: 8.00-19.05</td></tr><tr><td>Телефон:</td><td>8-961-827-98-54</td></tr><tr><td>Отделы:</td><td><a href=\"#\">Отдел1</a> <a href=\"#\">Отдел2</a> <a href=\"#\">Отдел3</a></td></tr></tbody></table></figure>\n<!-- /wp:table -->', 'ул. Гоголя 42', '', 'publish', 'closed', 'closed', '', 'ul-gogolya-42', '', '', '2020-11-10 13:42:34', '2020-11-10 10:42:34', '', 0, 'http://192.10.0.38/?post_type=shop&#038;p=61', 0, 'shop', '', 0),
(62, 1, '2020-11-09 10:41:23', '2020-11-09 07:41:23', '<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>Режим работы:</td><td>Пн-Пт: 8.00-20.00; Сб-Вс: 8.00-19.07</td></tr><tr><td>Телефон:</td><td>8-961-827-98-53</td></tr><tr><td>Отделы:</td><td><a href=\"#\">Отдел1</a> <a href=\"#\">Отдел2</a> <a href=\"#\">Отдел3</a></td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'ул. Мира 73б', '', 'publish', 'closed', 'closed', '', 'ul-mira-73b', '', '', '2020-11-10 13:41:53', '2020-11-10 10:41:53', '', 0, 'http://192.10.0.38/?post_type=shop&#038;p=62', 0, 'shop', '', 0),
(64, 1, '2020-12-21 19:06:56', '2020-12-21 16:06:56', '<!-- wp:paragraph -->\n<p>для отучения гадить и грызть для кошек и собак.</p>\n<!-- /wp:paragraph -->', 'Все средства', '', 'publish', 'closed', 'closed', '', 'vse-sredstva-3', '', '', '2020-12-21 19:06:57', '2020-12-21 16:06:57', '', 0, 'http://192.10.0.38/?post_type=akcii&#038;p=64', 0, 'akcii', '', 0),
(65, 1, '2020-12-21 19:08:24', '2020-12-21 16:08:24', '<!-- wp:paragraph -->\n<p>для отучения гадить и грызть для кошек и собак.</p>\n<!-- /wp:paragraph -->', 'Все средства', '', 'publish', 'closed', 'closed', '', 'vse-sredstva-4', '', '', '2020-12-23 12:14:30', '2020-12-23 09:14:30', '', 0, 'http://192.10.0.38/?post_type=akcii&#038;p=65', 0, 'akcii', '', 0),
(66, 1, '2020-12-22 10:05:14', '2020-12-22 07:05:14', '', 'Пост5', '', 'publish', 'closed', 'closed', '', 'post5', '', '', '2020-12-22 10:05:14', '2020-12-22 07:05:14', '', 0, 'http://192.10.0.38/?post_type=instagramm&#038;p=66', 0, 'instagramm', '', 0),
(67, 1, '2020-12-23 12:13:12', '2020-12-23 09:13:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Описание процента', 'opisanie_proczenta', 'publish', 'closed', 'closed', '', 'field_5fe309eb3a99c', '', '', '2020-12-23 12:13:12', '2020-12-23 09:13:12', '', 14, 'http://192.10.0.38/?post_type=acf-field&p=67', 4, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--
-- Создание: Янв 16 2021 г., 08:38
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_thumbnail_id', '17'),
(2, 18, '_thumbnail_id', '18');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--
-- Создание: Янв 16 2021 г., 08:38
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Ветаптека', 'vetapteka', 0),
(3, 'Антибиотики', 'antibiotiki', 0),
(4, 'Вакцины', 'vakcziny', 0),
(5, 'Сыворотки', 'syvorotki', 0),
(6, 'Витамины', 'vitaminy', 0),
(7, 'Пищевые добавки', 'pishhevye-dobavki', 0),
(8, 'Пасты', 'pasty', 0),
(9, 'Препараты противовирусные', 'preparaty-protivovirusnye', 0),
(10, 'Препараты обезболивающие', 'preparaty-obezbolivayushhie', 0),
(11, 'Препараты противовоспалительные', 'preparaty-protivovospalitelnye', 0),
(12, 'Препараты коррекции поведения', 'preparaty-korrekczii-povedeniya', 0),
(13, 'Препараты от паразитов', 'preparaty-ot-parazitov', 0),
(14, 'Гигиенические шампуни', 'gigienicheskie-shampuni', 0),
(15, 'Инсектицидные шампуни', 'insekticzidnye-shampuni', 0),
(16, 'Гигиенические пиленки', 'gigienicheskie-pilenki', 0),
(17, 'Подгузники', 'podguzniki', 0),
(18, 'Корма', 'korma', 0),
(19, 'Сухие корма для кошек', 'suhie-korma-dlya-koshek', 0),
(20, 'Сухие корма для собак', 'suhie-korma-dlya-sobak', 0),
(21, 'Влажные корма для кошек', 'vlazhnye-korma-dlya-koshek', 0),
(22, 'Влажные корма для собак', 'vlazhnye-korma-dlya-sobak', 0),
(23, 'Лакомства для кошек', 'lakomstva-dlya-koshek', 0),
(24, 'Лакомства для собак', 'lakomstva-dlya-sobak', 0),
(25, 'Корма для грызунов', 'korma-dlya-gryzunov', 0),
(26, 'Корма для птиц', 'korma-dlya-pticz', 0),
(27, 'Майкоп', 'majkop', 0),
(28, 'Белореченск', 'belorechensk', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--
-- Создание: Янв 16 2021 г., 08:38
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(27, 3, 0),
(29, 3, 0),
(31, 3, 0),
(34, 3, 0),
(35, 4, 0),
(36, 4, 0),
(55, 27, 0),
(57, 27, 0),
(61, 28, 0),
(62, 28, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--
-- Создание: Янв 16 2021 г., 08:38
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'catalog-categories', 'В данном отделе представлены лекарственные средства для животных. В нашей сети большое разнообразие лекарствнных средств, если вас что-то заинтересовало - уточняйте у специалистов в наших магазинах.', 0, 0),
(3, 3, 'catalog-categories', '', 2, 4),
(4, 4, 'catalog-categories', '', 2, 2),
(5, 5, 'catalog-categories', '', 2, 0),
(6, 6, 'catalog-categories', '', 2, 0),
(7, 7, 'catalog-categories', '', 2, 0),
(8, 8, 'catalog-categories', '', 2, 0),
(9, 9, 'catalog-categories', '', 2, 0),
(10, 10, 'catalog-categories', '', 2, 0),
(11, 11, 'catalog-categories', '', 2, 0),
(12, 12, 'catalog-categories', '', 2, 0),
(13, 13, 'catalog-categories', '', 2, 0),
(14, 14, 'catalog-categories', '', 2, 0),
(15, 15, 'catalog-categories', '', 2, 0),
(16, 16, 'catalog-categories', '', 2, 0),
(17, 17, 'catalog-categories', '', 2, 0),
(18, 18, 'catalog-categories', 'Мы сотрудничаем с лучшими производителями кормов и лакомств, с основными из них вы можете ознакомится в данном разделе. Полный ассортимент учтоняйте у наших специалистов в магазинах.', 0, 0),
(19, 19, 'catalog-categories', '', 18, 0),
(20, 20, 'catalog-categories', '', 18, 0),
(21, 21, 'catalog-categories', '', 18, 0),
(22, 22, 'catalog-categories', '', 18, 0),
(23, 23, 'catalog-categories', '', 18, 0),
(24, 24, 'catalog-categories', '', 18, 0),
(25, 25, 'catalog-categories', '', 18, 0),
(26, 26, 'catalog-categories', '', 18, 0),
(27, 27, 'shop-categories', '', 0, 2),
(28, 28, 'shop-categories', '', 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--
-- Создание: Янв 16 2021 г., 08:38
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'zoomir'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '63'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:13:\"178.217.156.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1604562872'),
(23, 1, 'closedpostboxes_akcii', 'a:0:{}'),
(24, 1, 'metaboxhidden_akcii', 'a:0:{}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--
-- Создание: Янв 16 2021 г., 08:38
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'zoomir', '$P$BN8EAZdpzluIA6gWdt8W87C2DECYKR1', 'zoomir', 'sidorov.mihail.maykop@mail.ru', 'http://192.10.0.38', '2020-11-05 06:25:36', '', 0, 'zoomir');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_ewwwio_images`
--
ALTER TABLE `wp_ewwwio_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `path` (`path`(191)),
  ADD KEY `attachment_info` (`gallery`(3),`attachment_id`);

--
-- Индексы таблицы `wp_ewwwio_queue`
--
ALTER TABLE `wp_ewwwio_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachment_info` (`gallery`(3),`attachment_id`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_ewwwio_images`
--
ALTER TABLE `wp_ewwwio_images`
  MODIFY `id` int(14) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблицы `wp_ewwwio_queue`
--
ALTER TABLE `wp_ewwwio_queue`
  MODIFY `id` int(14) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=935;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
