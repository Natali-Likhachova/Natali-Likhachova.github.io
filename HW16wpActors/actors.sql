-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 07 2019 г., 21:43
-- Версия сервера: 5.7.23
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `actors`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://actors.ua', 'yes'),
(2, 'home', 'http://actors.ua', 'yes'),
(3, 'blogname', 'actors', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nataliya.likhachova@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:4:{i:0;s:61:\"W:\\domains\\actors.ua/wp-content/themes/myThemes/post-blog.php\";i:1;s:66:\"W:\\domains\\actors.ua/wp-content/themes/myThemes/post-portfolio.php\";i:2;s:57:\"W:\\domains\\actors.ua/wp-content/themes/myThemes/style.css\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'myThemes', 'yes'),
(41, 'stylesheet', 'myThemes', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:5:{i:0;i:63;i:1;i:214;i:2;i:208;i:3;i:8;i:4;i:222;}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:6:\"footer\";a:2:{i:0;s:13:\"custom_html-2\";i:1;s:14:\"recent-posts-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";N;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1554452706;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1554492306;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1554492332;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1554534020;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1550784471;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(126, 'can_compress_scripts', '1', 'no'),
(139, 'recently_activated', 'a:0:{}', 'yes'),
(148, 'current_theme', '', 'yes'),
(149, 'theme_mods_myThemes', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header-menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1551716080;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:6:\"footer\";a:2:{i:0;s:13:\"custom_html-2\";i:1;s:14:\"recent-posts-3\";}}}}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(191, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(228, 'theme_mods_twentysixteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:3;s:6:\"social\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1551716147;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:2:{i:0;s:13:\"custom_html-2\";i:1;s:14:\"recent-posts-3\";}s:9:\"sidebar-3\";a:0:{}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(233, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1554452235;s:7:\"checked\";a:4:{s:8:\"myThemes\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.3\";s:15:\"twentyseventeen\";s:3:\"2.1\";s:13:\"twentysixteen\";s:3:\"1.9\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(236, '_transient_twentysixteen_categories', '1', 'yes'),
(334, 'theme_mods_twentyseventeen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1551716119;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:2:{i:0;s:13:\"custom_html-2\";i:1;s:14:\"recent-posts-3\";}s:9:\"sidebar-3\";a:0:{}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(359, 'category_children', 'a:0:{}', 'yes'),
(412, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1554452232;s:15:\"version_checked\";s:5:\"5.0.4\";s:12:\"translations\";a:0:{}}', 'no'),
(414, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:29:\"nataliya.likhachova@gmail.com\";s:7:\"version\";s:5:\"5.0.4\";s:9:\"timestamp\";i:1552582497;}', 'no'),
(434, '_site_transient_timeout_theme_roots', '1554454034', 'no'),
(435, '_site_transient_theme_roots', 'a:4:{s:8:\"myThemes\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(436, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1554452237;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:9:\"hello.php\";s:5:\"1.7.1\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.1.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(8, 8, '_edit_lock', '1551890928:1'),
(15, 15, '_wp_attached_file', '2019/02/1.png'),
(16, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:67;s:6:\"height\";i:67;s:4:\"file\";s:13:\"2019/02/1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 8, '_thumbnail_id', '15'),
(20, 16, '_menu_item_type', 'custom'),
(21, 16, '_menu_item_menu_item_parent', '0'),
(22, 16, '_menu_item_object_id', '16'),
(23, 16, '_menu_item_object', 'custom'),
(24, 16, '_menu_item_target', ''),
(25, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(26, 16, '_menu_item_xfn', ''),
(27, 16, '_menu_item_url', 'http://actors.ua/'),
(28, 16, '_menu_item_orphaned', '1550911029'),
(29, 17, '_menu_item_type', 'post_type'),
(30, 17, '_menu_item_menu_item_parent', '0'),
(31, 17, '_menu_item_object_id', '2'),
(32, 17, '_menu_item_object', 'page'),
(33, 17, '_menu_item_target', ''),
(34, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 17, '_menu_item_xfn', ''),
(36, 17, '_menu_item_url', ''),
(37, 17, '_menu_item_orphaned', '1550911029'),
(38, 18, '_menu_item_type', 'custom'),
(39, 18, '_menu_item_menu_item_parent', '0'),
(40, 18, '_menu_item_object_id', '18'),
(41, 18, '_menu_item_object', 'custom'),
(42, 18, '_menu_item_target', ''),
(43, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 18, '_menu_item_xfn', ''),
(45, 18, '_menu_item_url', 'http://actors.ua/'),
(46, 18, '_menu_item_orphaned', '1550911047'),
(47, 19, '_menu_item_type', 'post_type'),
(48, 19, '_menu_item_menu_item_parent', '0'),
(49, 19, '_menu_item_object_id', '2'),
(50, 19, '_menu_item_object', 'page'),
(51, 19, '_menu_item_target', ''),
(52, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 19, '_menu_item_xfn', ''),
(54, 19, '_menu_item_url', ''),
(55, 19, '_menu_item_orphaned', '1550911047'),
(56, 20, '_menu_item_type', 'custom'),
(57, 20, '_menu_item_menu_item_parent', '0'),
(58, 20, '_menu_item_object_id', '20'),
(59, 20, '_menu_item_object', 'custom'),
(60, 20, '_menu_item_target', ''),
(61, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 20, '_menu_item_xfn', ''),
(63, 20, '_menu_item_url', 'http://actors.ua/'),
(64, 20, '_menu_item_orphaned', '1550911089'),
(65, 21, '_menu_item_type', 'post_type'),
(66, 21, '_menu_item_menu_item_parent', '0'),
(67, 21, '_menu_item_object_id', '2'),
(68, 21, '_menu_item_object', 'page'),
(69, 21, '_menu_item_target', ''),
(70, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 21, '_menu_item_xfn', ''),
(72, 21, '_menu_item_url', ''),
(73, 21, '_menu_item_orphaned', '1550911089'),
(74, 22, '_menu_item_type', 'custom'),
(75, 22, '_menu_item_menu_item_parent', '0'),
(76, 22, '_menu_item_object_id', '22'),
(77, 22, '_menu_item_object', 'custom'),
(78, 22, '_menu_item_target', ''),
(79, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(80, 22, '_menu_item_xfn', ''),
(81, 22, '_menu_item_url', 'http://actors.ua/'),
(82, 22, '_menu_item_orphaned', '1550911090'),
(83, 23, '_menu_item_type', 'post_type'),
(84, 23, '_menu_item_menu_item_parent', '0'),
(85, 23, '_menu_item_object_id', '2'),
(86, 23, '_menu_item_object', 'page'),
(87, 23, '_menu_item_target', ''),
(88, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 23, '_menu_item_xfn', ''),
(90, 23, '_menu_item_url', ''),
(91, 23, '_menu_item_orphaned', '1550911090'),
(93, 25, '_menu_item_type', 'custom'),
(94, 25, '_menu_item_menu_item_parent', '0'),
(95, 25, '_menu_item_object_id', '25'),
(96, 25, '_menu_item_object', 'custom'),
(97, 25, '_menu_item_target', ''),
(98, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(99, 25, '_menu_item_xfn', ''),
(100, 25, '_menu_item_url', 'http://actors.ua/'),
(101, 25, '_menu_item_orphaned', '1550912587'),
(102, 26, '_menu_item_type', 'post_type'),
(103, 26, '_menu_item_menu_item_parent', '0'),
(104, 26, '_menu_item_object_id', '2'),
(105, 26, '_menu_item_object', 'page'),
(106, 26, '_menu_item_target', ''),
(107, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(108, 26, '_menu_item_xfn', ''),
(109, 26, '_menu_item_url', ''),
(110, 26, '_menu_item_orphaned', '1550912587'),
(113, 38, '_menu_item_type', 'custom'),
(114, 38, '_menu_item_menu_item_parent', '0'),
(115, 38, '_menu_item_object_id', '38'),
(116, 38, '_menu_item_object', 'custom'),
(117, 38, '_menu_item_target', ''),
(118, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(119, 38, '_menu_item_xfn', ''),
(120, 38, '_menu_item_url', 'http://actors.ua/'),
(121, 38, '_menu_item_orphaned', '1550912863'),
(140, 41, '_menu_item_type', 'post_type'),
(141, 41, '_menu_item_menu_item_parent', '0'),
(142, 41, '_menu_item_object_id', '2'),
(143, 41, '_menu_item_object', 'page'),
(144, 41, '_menu_item_target', ''),
(145, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(146, 41, '_menu_item_xfn', ''),
(147, 41, '_menu_item_url', ''),
(148, 41, '_menu_item_orphaned', '1550912863'),
(155, 42, '_edit_lock', '1551716520:1'),
(156, 44, '_edit_lock', '1550913275:1'),
(157, 47, '_edit_lock', '1551893840:1'),
(158, 52, '_edit_lock', '1552321990:1'),
(159, 54, '_edit_lock', '1550913397:1'),
(205, 61, '_menu_item_type', 'post_type'),
(206, 61, '_menu_item_menu_item_parent', '0'),
(207, 61, '_menu_item_object_id', '2'),
(208, 61, '_menu_item_object', 'page'),
(209, 61, '_menu_item_target', ''),
(210, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(211, 61, '_menu_item_xfn', ''),
(212, 61, '_menu_item_url', ''),
(213, 61, '_menu_item_orphaned', '1550913548'),
(222, 63, '_edit_lock', '1551892943:1'),
(227, 95, '_edit_lock', '1551771555:1'),
(236, 95, '_wp_page_template', 'post-blog.php'),
(237, 166, '_menu_item_type', 'post_type'),
(238, 166, '_menu_item_menu_item_parent', '0'),
(239, 166, '_menu_item_object_id', '54'),
(240, 166, '_menu_item_object', 'page'),
(241, 166, '_menu_item_target', ''),
(242, 166, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(243, 166, '_menu_item_xfn', ''),
(244, 166, '_menu_item_url', ''),
(245, 166, '_menu_item_orphaned', '1551112160'),
(246, 167, '_menu_item_type', 'post_type'),
(247, 167, '_menu_item_menu_item_parent', '0'),
(248, 167, '_menu_item_object_id', '52'),
(249, 167, '_menu_item_object', 'page'),
(250, 167, '_menu_item_target', ''),
(251, 167, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(252, 167, '_menu_item_xfn', ''),
(253, 167, '_menu_item_url', ''),
(254, 167, '_menu_item_orphaned', '1551112160'),
(255, 168, '_menu_item_type', 'post_type'),
(256, 168, '_menu_item_menu_item_parent', '0'),
(257, 168, '_menu_item_object_id', '47'),
(258, 168, '_menu_item_object', 'page'),
(259, 168, '_menu_item_target', ''),
(260, 168, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(261, 168, '_menu_item_xfn', ''),
(262, 168, '_menu_item_url', ''),
(263, 168, '_menu_item_orphaned', '1551112160'),
(264, 169, '_menu_item_type', 'post_type'),
(265, 169, '_menu_item_menu_item_parent', '0'),
(266, 169, '_menu_item_object_id', '44'),
(267, 169, '_menu_item_object', 'page'),
(268, 169, '_menu_item_target', ''),
(269, 169, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(270, 169, '_menu_item_xfn', ''),
(271, 169, '_menu_item_url', ''),
(272, 169, '_menu_item_orphaned', '1551112160'),
(273, 170, '_menu_item_type', 'post_type'),
(274, 170, '_menu_item_menu_item_parent', '0'),
(275, 170, '_menu_item_object_id', '42'),
(276, 170, '_menu_item_object', 'page'),
(277, 170, '_menu_item_target', ''),
(278, 170, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(279, 170, '_menu_item_xfn', ''),
(280, 170, '_menu_item_url', ''),
(281, 170, '_menu_item_orphaned', '1551112160'),
(282, 171, '_edit_lock', '1551112138:1'),
(283, 173, '_edit_lock', '1551112162:1'),
(284, 175, '_edit_lock', '1551112178:1'),
(285, 177, '_edit_lock', '1551903194:1'),
(286, 179, '_edit_lock', '1551112226:1'),
(287, 181, '_edit_lock', '1551112259:1'),
(288, 183, '_edit_lock', '1551112273:1'),
(289, 185, '_edit_lock', '1551112291:1'),
(290, 187, '_edit_lock', '1551112306:1'),
(291, 189, '_edit_lock', '1551112321:1'),
(292, 191, '_menu_item_type', 'post_type'),
(293, 191, '_menu_item_menu_item_parent', '197'),
(294, 191, '_menu_item_object_id', '189'),
(295, 191, '_menu_item_object', 'page'),
(296, 191, '_menu_item_target', ''),
(297, 191, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(298, 191, '_menu_item_xfn', ''),
(299, 191, '_menu_item_url', ''),
(301, 192, '_menu_item_type', 'post_type'),
(302, 192, '_menu_item_menu_item_parent', '197'),
(303, 192, '_menu_item_object_id', '187'),
(304, 192, '_menu_item_object', 'page'),
(305, 192, '_menu_item_target', ''),
(306, 192, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(307, 192, '_menu_item_xfn', ''),
(308, 192, '_menu_item_url', ''),
(310, 193, '_menu_item_type', 'post_type'),
(311, 193, '_menu_item_menu_item_parent', '197'),
(312, 193, '_menu_item_object_id', '185'),
(313, 193, '_menu_item_object', 'page'),
(314, 193, '_menu_item_target', ''),
(315, 193, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(316, 193, '_menu_item_xfn', ''),
(317, 193, '_menu_item_url', ''),
(319, 194, '_menu_item_type', 'post_type'),
(320, 194, '_menu_item_menu_item_parent', '197'),
(321, 194, '_menu_item_object_id', '183'),
(322, 194, '_menu_item_object', 'page'),
(323, 194, '_menu_item_target', ''),
(324, 194, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(325, 194, '_menu_item_xfn', ''),
(326, 194, '_menu_item_url', ''),
(328, 195, '_menu_item_type', 'post_type'),
(329, 195, '_menu_item_menu_item_parent', '197'),
(330, 195, '_menu_item_object_id', '181'),
(331, 195, '_menu_item_object', 'page'),
(332, 195, '_menu_item_target', ''),
(333, 195, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(334, 195, '_menu_item_xfn', ''),
(335, 195, '_menu_item_url', ''),
(337, 196, '_menu_item_type', 'post_type'),
(338, 196, '_menu_item_menu_item_parent', '205'),
(339, 196, '_menu_item_object_id', '179'),
(340, 196, '_menu_item_object', 'page'),
(341, 196, '_menu_item_target', ''),
(342, 196, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(343, 196, '_menu_item_xfn', ''),
(344, 196, '_menu_item_url', ''),
(346, 197, '_menu_item_type', 'post_type'),
(347, 197, '_menu_item_menu_item_parent', '205'),
(348, 197, '_menu_item_object_id', '177'),
(349, 197, '_menu_item_object', 'page'),
(350, 197, '_menu_item_target', ''),
(351, 197, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(352, 197, '_menu_item_xfn', ''),
(353, 197, '_menu_item_url', ''),
(355, 198, '_menu_item_type', 'post_type'),
(356, 198, '_menu_item_menu_item_parent', '205'),
(357, 198, '_menu_item_object_id', '175'),
(358, 198, '_menu_item_object', 'page'),
(359, 198, '_menu_item_target', ''),
(360, 198, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(361, 198, '_menu_item_xfn', ''),
(362, 198, '_menu_item_url', ''),
(364, 199, '_menu_item_type', 'post_type'),
(365, 199, '_menu_item_menu_item_parent', '205'),
(366, 199, '_menu_item_object_id', '173'),
(367, 199, '_menu_item_object', 'page'),
(368, 199, '_menu_item_target', ''),
(369, 199, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(370, 199, '_menu_item_xfn', ''),
(371, 199, '_menu_item_url', ''),
(373, 200, '_menu_item_type', 'post_type'),
(374, 200, '_menu_item_menu_item_parent', '205'),
(375, 200, '_menu_item_object_id', '171'),
(376, 200, '_menu_item_object', 'page'),
(377, 200, '_menu_item_target', ''),
(378, 200, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(379, 200, '_menu_item_xfn', ''),
(380, 200, '_menu_item_url', ''),
(382, 201, '_menu_item_type', 'post_type'),
(383, 201, '_menu_item_menu_item_parent', '0'),
(384, 201, '_menu_item_object_id', '54'),
(385, 201, '_menu_item_object', 'page'),
(386, 201, '_menu_item_target', ''),
(387, 201, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(388, 201, '_menu_item_xfn', ''),
(389, 201, '_menu_item_url', ''),
(391, 202, '_menu_item_type', 'post_type'),
(392, 202, '_menu_item_menu_item_parent', '0'),
(393, 202, '_menu_item_object_id', '52'),
(394, 202, '_menu_item_object', 'page'),
(395, 202, '_menu_item_target', ''),
(396, 202, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(397, 202, '_menu_item_xfn', ''),
(398, 202, '_menu_item_url', ''),
(400, 203, '_menu_item_type', 'post_type'),
(401, 203, '_menu_item_menu_item_parent', '0'),
(402, 203, '_menu_item_object_id', '47'),
(403, 203, '_menu_item_object', 'page'),
(404, 203, '_menu_item_target', ''),
(405, 203, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(406, 203, '_menu_item_xfn', ''),
(407, 203, '_menu_item_url', ''),
(409, 204, '_menu_item_type', 'post_type'),
(410, 204, '_menu_item_menu_item_parent', '0'),
(411, 204, '_menu_item_object_id', '44'),
(412, 204, '_menu_item_object', 'page'),
(413, 204, '_menu_item_target', ''),
(414, 204, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(415, 204, '_menu_item_xfn', ''),
(416, 204, '_menu_item_url', ''),
(418, 205, '_menu_item_type', 'post_type'),
(419, 205, '_menu_item_menu_item_parent', '0'),
(420, 205, '_menu_item_object_id', '42'),
(421, 205, '_menu_item_object', 'page'),
(422, 205, '_menu_item_target', ''),
(423, 205, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(424, 205, '_menu_item_xfn', ''),
(425, 205, '_menu_item_url', ''),
(428, 208, '_edit_lock', '1551891567:1'),
(431, 210, '_wp_attached_file', '2019/03/2.png'),
(432, 210, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:67;s:6:\"height\";i:67;s:4:\"file\";s:13:\"2019/03/2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(433, 211, '_wp_attached_file', '2019/03/1.png'),
(434, 211, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:67;s:6:\"height\";i:67;s:4:\"file\";s:13:\"2019/03/1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(435, 212, '_wp_attached_file', '2019/03/3.png'),
(436, 212, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:67;s:6:\"height\";i:67;s:4:\"file\";s:13:\"2019/03/3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(439, 208, '_thumbnail_id', '212'),
(440, 214, '_edit_lock', '1552583664:1'),
(441, 215, '_wp_attached_file', '2019/03/3-1.png'),
(442, 215, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:67;s:6:\"height\";i:67;s:4:\"file\";s:15:\"2019/03/3-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(443, 216, '_wp_attached_file', '2019/03/2-1.png'),
(444, 216, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:67;s:6:\"height\";i:67;s:4:\"file\";s:15:\"2019/03/2-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(447, 214, '_thumbnail_id', '216'),
(455, 222, '_edit_lock', '1552321991:1'),
(456, 223, '_wp_attached_file', '2019/03/3-2.png'),
(457, 223, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:67;s:6:\"height\";i:67;s:4:\"file\";s:15:\"2019/03/3-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(460, 222, '_thumbnail_id', '223'),
(465, 52, '_wp_page_template', 'post-portfolio.php'),
(466, 177, '_wp_page_template', 'post-blog.php');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2019-02-21 19:25:06', '2019-02-21 19:25:06', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://actors.ua/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-02-21 19:25:06', '2019-02-21 19:25:06', '', 0, 'http://actors.ua/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-02-21 19:25:06', '2019-02-21 19:25:06', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://actors.ua.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-02-21 19:25:06', '2019-02-21 19:25:06', '', 0, 'http://actors.ua/?page_id=3', 0, 'page', '', 0),
(8, 1, '2019-02-23 07:19:24', '2019-02-23 07:19:24', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, acvenenatis ante venenatis eget. <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisquefringilla mi orci, acvenenatis ante venenatis eget.  <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, acvenenatis ante venenatis eget.  <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, ac enenatis ante venenatis eget. </pre>\n<!-- /wp:preformatted -->', 'New Gallery Set', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, ac', 'publish', 'open', 'open', '', 'title', '', '', '2019-03-06 16:51:08', '2019-03-06 16:51:08', '', 0, 'http://actors.ua/?p=8', 0, 'post', '', 0),
(9, 1, '2019-02-23 07:19:24', '2019-02-23 07:19:24', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, ac<br>venenatis ante venenatis eget.</pre>\n<!-- /wp:preformatted -->', 'Title', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-02-23 07:19:24', '2019-02-23 07:19:24', '', 8, 'http://actors.ua/2019/02/23/8-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-02-23 07:20:48', '2019-02-23 07:20:48', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, ac<br>venenatis ante venenatis eget. <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, ac<br>venenatis ante venenatis eget.  <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, ac<br>venenatis ante venenatis eget.  <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, ac<br>venenatis ante venenatis eget. </pre>\n<!-- /wp:preformatted -->', 'New Gallery Set', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-02-23 07:20:48', '2019-02-23 07:20:48', '', 8, 'http://actors.ua/2019/02/23/8-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-02-23 07:27:42', '2019-02-23 07:27:42', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, acvenenatis ante venenatis eget. <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisquefringilla mi orci, acvenenatis ante venenatis eget.  <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, acvenenatis ante venenatis eget.  <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, ac enenatis ante venenatis eget. </pre>\n<!-- /wp:preformatted -->', 'New Gallery Set', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, ac', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-02-23 07:27:42', '2019-02-23 07:27:42', '', 8, 'http://actors.ua/2019/02/23/8-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-02-23 07:44:25', '2019-02-23 07:44:25', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2019-02-23 07:44:25', '2019-02-23 07:44:25', '', 8, 'http://actors.ua/wp-content/uploads/2019/02/1.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2019-02-23 08:37:09', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-23 08:37:09', '0000-00-00 00:00:00', '', 0, 'http://actors.ua/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2019-02-23 08:37:09', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-23 08:37:09', '0000-00-00 00:00:00', '', 0, 'http://actors.ua/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2019-02-23 08:37:27', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-23 08:37:27', '0000-00-00 00:00:00', '', 0, 'http://actors.ua/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2019-02-23 08:37:27', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-23 08:37:27', '0000-00-00 00:00:00', '', 0, 'http://actors.ua/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2019-02-23 08:38:09', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-23 08:38:09', '0000-00-00 00:00:00', '', 0, 'http://actors.ua/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2019-02-23 08:38:09', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-23 08:38:09', '0000-00-00 00:00:00', '', 0, 'http://actors.ua/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2019-02-23 08:38:10', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-23 08:38:10', '0000-00-00 00:00:00', '', 0, 'http://actors.ua/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2019-02-23 08:38:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-23 08:38:10', '0000-00-00 00:00:00', '', 0, 'http://actors.ua/?p=23', 1, 'nav_menu_item', '', 0),
(25, 1, '2019-02-23 09:03:07', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-23 09:03:07', '0000-00-00 00:00:00', '', 0, 'http://actors.ua/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2019-02-23 09:03:07', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-23 09:03:07', '0000-00-00 00:00:00', '', 0, 'http://actors.ua/?p=26', 1, 'nav_menu_item', '', 0),
(38, 1, '2019-02-23 09:07:43', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-23 09:07:43', '0000-00-00 00:00:00', '', 0, 'http://actors.ua/?p=38', 1, 'nav_menu_item', '', 0),
(41, 1, '2019-02-23 09:07:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-23 09:07:43', '0000-00-00 00:00:00', '', 0, 'http://actors.ua/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2019-02-23 09:16:22', '2019-02-23 09:16:22', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">portfolio</pre>\n<!-- /wp:preformatted -->', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2019-03-04 15:58:42', '2019-03-04 15:58:42', '', 0, 'http://actors.ua/?page_id=42', 0, 'page', '', 0),
(43, 1, '2019-02-23 09:16:22', '2019-02-23 09:16:22', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">portfolio</pre>\n<!-- /wp:preformatted -->', 'portfolio', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2019-02-23 09:16:22', '2019-02-23 09:16:22', '', 42, 'http://actors.ua/2019/02/23/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-02-23 09:16:39', '2019-02-23 09:16:39', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">clients</pre>\n<!-- /wp:preformatted -->', 'clients', '', 'publish', 'closed', 'closed', '', 'clients', '', '', '2019-02-23 09:16:39', '2019-02-23 09:16:39', '', 0, 'http://actors.ua/?page_id=44', 0, 'page', '', 0),
(45, 1, '2019-02-23 09:16:39', '2019-02-23 09:16:39', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">clients</pre>\n<!-- /wp:preformatted -->', 'clients', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-02-23 09:16:39', '2019-02-23 09:16:39', '', 44, 'http://actors.ua/2019/02/23/44-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2019-02-23 09:17:10', '2019-02-23 09:17:10', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">сontact</pre>\n<!-- /wp:preformatted -->', 'сontact', '', 'publish', 'closed', 'closed', '', '%d1%81ontact', '', '', '2019-02-23 09:17:10', '2019-02-23 09:17:10', '', 0, 'http://actors.ua/?page_id=47', 0, 'page', '', 0),
(48, 1, '2019-02-23 09:17:10', '2019-02-23 09:17:10', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">сontact</pre>\n<!-- /wp:preformatted -->', 'сontact', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2019-02-23 09:17:10', '2019-02-23 09:17:10', '', 47, 'http://actors.ua/2019/02/23/47-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-02-23 09:18:30', '2019-02-23 09:18:30', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">about me</pre>\n<!-- /wp:preformatted -->', 'about me', '', 'publish', 'closed', 'closed', '', 'about-me', '', '', '2019-03-06 17:40:49', '2019-03-06 17:40:49', '', 0, 'http://actors.ua/?page_id=52', 0, 'page', '', 0),
(53, 1, '2019-02-23 09:18:30', '2019-02-23 09:18:30', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">about me</pre>\n<!-- /wp:preformatted -->', 'about me', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-02-23 09:18:30', '2019-02-23 09:18:30', '', 52, 'http://actors.ua/2019/02/23/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-02-23 09:18:59', '2019-02-23 09:18:59', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">news</pre>\n<!-- /wp:preformatted -->', 'news', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2019-02-23 09:18:59', '2019-02-23 09:18:59', '', 0, 'http://actors.ua/?page_id=54', 0, 'page', '', 0),
(55, 1, '2019-02-23 09:18:59', '2019-02-23 09:18:59', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">news</pre>\n<!-- /wp:preformatted -->', 'news', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2019-02-23 09:18:59', '2019-02-23 09:18:59', '', 54, 'http://actors.ua/2019/02/23/54-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2019-02-23 09:19:08', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-23 09:19:08', '0000-00-00 00:00:00', '', 0, 'http://actors.ua/?p=61', 1, 'nav_menu_item', '', 0),
(63, 1, '2019-02-23 11:41:00', '2019-02-23 11:41:00', '<!-- wp:paragraph -->\n<p>fdsgfsdgdsfgsdfgsdfgdsfgdsfgsfdgdsfgdsfgdsfgsdf </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>fvsdfbsdfbdsfvfsdbdsfbdfsbdfbdsfbsdfbdfsbdsfbdfbsd</p>\n<!-- /wp:paragraph -->', 'test', '', 'publish', 'open', 'open', '', 'test', '', '', '2019-02-23 11:42:14', '2019-02-23 11:42:14', '', 0, 'http://actors.ua/?p=63', 0, 'post', '', 0),
(64, 1, '2019-02-23 11:41:00', '2019-02-23 11:41:00', '<!-- wp:paragraph -->\n<p>fdsgfsdgdsfgsdfgsdfgdsfgdsfgsfdgdsfgdsfgdsfgsdf </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>fvsdfbsdfbdsfvfsdbdsfbdfsbdfbdsfbsdfbdfsbdsfbdfbsd</p>\n<!-- /wp:paragraph -->', 'test', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2019-02-23 11:41:00', '2019-02-23 11:41:00', '', 63, 'http://actors.ua/2019/02/23/63-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2019-02-23 12:24:58', '2019-02-23 12:24:58', '<!-- wp:paragraph -->\n<p>jnynyuyuhuj</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>okikuikikui</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ijcm [fhjit</p>\n<!-- /wp:paragraph -->', 'Oleg', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-02-23 12:40:06', '2019-02-23 12:40:06', '', 0, 'http://actors.ua/?page_id=95', 0, 'page', '', 0),
(98, 1, '2019-02-23 12:24:58', '2019-02-23 12:24:58', '<!-- wp:paragraph -->\n<p>blog text</p>\n<!-- /wp:paragraph -->', 'blog', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2019-02-23 12:24:58', '2019-02-23 12:24:58', '', 95, 'http://actors.ua/2019/02/23/95-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2019-02-23 12:38:42', '2019-02-23 12:38:42', '<!-- wp:paragraph -->\n<p>blog textedwedwedwedwwedwdwedhb</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>jnynyuyuhuj</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>okikuikikui</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ijcm [fhjit</p>\n<!-- /wp:paragraph -->', 'blog', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2019-02-23 12:38:42', '2019-02-23 12:38:42', '', 95, 'http://actors.ua/2019/02/23/95-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2019-02-23 12:39:46', '2019-02-23 12:39:46', '<!-- wp:paragraph -->\n<p>jnynyuyuhuj</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>okikuikikui</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ijcm [fhjit</p>\n<!-- /wp:paragraph -->', 'blog', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2019-02-23 12:39:46', '2019-02-23 12:39:46', '', 95, 'http://actors.ua/2019/02/23/95-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2019-02-23 12:40:06', '2019-02-23 12:40:06', '<!-- wp:paragraph -->\n<p>jnynyuyuhuj</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>okikuikikui</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ijcm [fhjit</p>\n<!-- /wp:paragraph -->', 'Oleg', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2019-02-23 12:40:06', '2019-02-23 12:40:06', '', 95, 'http://actors.ua/2019/02/23/95-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2019-02-25 16:29:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-25 16:29:20', '0000-00-00 00:00:00', '', 0, 'http://actors.ua/?p=166', 1, 'nav_menu_item', '', 0),
(167, 1, '2019-02-25 16:29:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-25 16:29:20', '0000-00-00 00:00:00', '', 0, 'http://actors.ua/?p=167', 1, 'nav_menu_item', '', 0),
(168, 1, '2019-02-25 16:29:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-25 16:29:20', '0000-00-00 00:00:00', '', 0, 'http://actors.ua/?p=168', 1, 'nav_menu_item', '', 0),
(169, 1, '2019-02-25 16:29:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-25 16:29:20', '0000-00-00 00:00:00', '', 0, 'http://actors.ua/?p=169', 1, 'nav_menu_item', '', 0),
(170, 1, '2019-02-25 16:29:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-25 16:29:20', '0000-00-00 00:00:00', '', 0, 'http://actors.ua/?p=170', 1, 'nav_menu_item', '', 0),
(171, 1, '2019-02-25 16:31:20', '2019-02-25 16:31:20', '<!-- wp:paragraph -->\n<p>\n\nFashion\n\n</p>\n<!-- /wp:paragraph -->', 'Fashion', '', 'publish', 'closed', 'closed', '', 'fashion', '', '', '2019-02-25 16:31:20', '2019-02-25 16:31:20', '', 0, 'http://actors.ua/?page_id=171', 0, 'page', '', 0),
(172, 1, '2019-02-25 16:31:20', '2019-02-25 16:31:20', '<!-- wp:paragraph -->\n<p>\n\nFashion\n\n</p>\n<!-- /wp:paragraph -->', 'Fashion', '', 'inherit', 'closed', 'closed', '', '171-revision-v1', '', '', '2019-02-25 16:31:20', '2019-02-25 16:31:20', '', 171, 'http://actors.ua/2019/02/25/171-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2019-02-25 16:31:37', '2019-02-25 16:31:37', '<!-- wp:paragraph -->\n<p>\n\nEditorial\n\n</p>\n<!-- /wp:paragraph -->', 'Editorial', '', 'publish', 'closed', 'closed', '', 'editorial', '', '', '2019-02-25 16:31:37', '2019-02-25 16:31:37', '', 0, 'http://actors.ua/?page_id=173', 0, 'page', '', 0),
(174, 1, '2019-02-25 16:31:37', '2019-02-25 16:31:37', '<!-- wp:paragraph -->\n<p>\n\nEditorial\n\n</p>\n<!-- /wp:paragraph -->', 'Editorial', '', 'inherit', 'closed', 'closed', '', '173-revision-v1', '', '', '2019-02-25 16:31:37', '2019-02-25 16:31:37', '', 173, 'http://actors.ua/2019/02/25/173-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2019-02-25 16:31:55', '2019-02-25 16:31:55', '<!-- wp:paragraph -->\n<p>\n\nstreet\n\n</p>\n<!-- /wp:paragraph -->', 'street', '', 'publish', 'closed', 'closed', '', 'street', '', '', '2019-02-25 16:31:55', '2019-02-25 16:31:55', '', 0, 'http://actors.ua/?page_id=175', 0, 'page', '', 0),
(176, 1, '2019-02-25 16:31:55', '2019-02-25 16:31:55', '<!-- wp:paragraph -->\n<p>\n\nstreet\n\n</p>\n<!-- /wp:paragraph -->', 'street', '', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2019-02-25 16:31:55', '2019-02-25 16:31:55', '', 175, 'http://actors.ua/2019/02/25/175-revision-v1/', 0, 'revision', '', 0),
(177, 1, '2019-02-25 16:32:11', '2019-02-25 16:32:11', '<!-- wp:paragraph -->\n<p>\n\nblack white\n\n</p>\n<!-- /wp:paragraph -->', 'black white', '', 'publish', 'closed', 'closed', '', 'black-white', '', '', '2019-03-06 17:47:51', '2019-03-06 17:47:51', '', 0, 'http://actors.ua/?page_id=177', 0, 'page', '', 0),
(178, 1, '2019-02-25 16:32:11', '2019-02-25 16:32:11', '<!-- wp:paragraph -->\n<p>\n\nblack white\n\n</p>\n<!-- /wp:paragraph -->', 'black white', '', 'inherit', 'closed', 'closed', '', '177-revision-v1', '', '', '2019-02-25 16:32:11', '2019-02-25 16:32:11', '', 177, 'http://actors.ua/2019/02/25/177-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2019-02-25 16:32:28', '2019-02-25 16:32:28', '<!-- wp:paragraph -->\n<p>\n\npersonal\n\n</p>\n<!-- /wp:paragraph -->', 'personal', '', 'publish', 'closed', 'closed', '', 'personal', '', '', '2019-02-25 16:32:28', '2019-02-25 16:32:28', '', 0, 'http://actors.ua/?page_id=179', 0, 'page', '', 0),
(180, 1, '2019-02-25 16:32:28', '2019-02-25 16:32:28', '<!-- wp:paragraph -->\n<p>\n\npersonal\n\n</p>\n<!-- /wp:paragraph -->', 'personal', '', 'inherit', 'closed', 'closed', '', '179-revision-v1', '', '', '2019-02-25 16:32:28', '2019-02-25 16:32:28', '', 179, 'http://actors.ua/2019/02/25/179-revision-v1/', 0, 'revision', '', 0),
(181, 1, '2019-02-25 16:32:58', '2019-02-25 16:32:58', '<!-- wp:paragraph -->\n<p>\n\nGallery /1\n\n</p>\n<!-- /wp:paragraph -->', 'Gallery /1', '', 'publish', 'closed', 'closed', '', 'gallery-1', '', '', '2019-02-25 16:32:58', '2019-02-25 16:32:58', '', 0, 'http://actors.ua/?page_id=181', 0, 'page', '', 0),
(182, 1, '2019-02-25 16:32:58', '2019-02-25 16:32:58', '<!-- wp:paragraph -->\n<p>\n\nGallery /1\n\n</p>\n<!-- /wp:paragraph -->', 'Gallery /1', '', 'inherit', 'closed', 'closed', '', '181-revision-v1', '', '', '2019-02-25 16:32:58', '2019-02-25 16:32:58', '', 181, 'http://actors.ua/2019/02/25/181-revision-v1/', 0, 'revision', '', 0),
(183, 1, '2019-02-25 16:33:30', '2019-02-25 16:33:30', '<!-- wp:paragraph -->\n<p>\n\nGallery /2\n\n</p>\n<!-- /wp:paragraph -->', 'Gallery /2', '', 'publish', 'closed', 'closed', '', 'gallery-2', '', '', '2019-02-25 16:33:30', '2019-02-25 16:33:30', '', 0, 'http://actors.ua/?page_id=183', 0, 'page', '', 0),
(184, 1, '2019-02-25 16:33:30', '2019-02-25 16:33:30', '<!-- wp:paragraph -->\n<p>\n\nGallery /2\n\n</p>\n<!-- /wp:paragraph -->', 'Gallery /2', '', 'inherit', 'closed', 'closed', '', '183-revision-v1', '', '', '2019-02-25 16:33:30', '2019-02-25 16:33:30', '', 183, 'http://actors.ua/2019/02/25/183-revision-v1/', 0, 'revision', '', 0),
(185, 1, '2019-02-25 16:33:46', '2019-02-25 16:33:46', '<!-- wp:paragraph -->\n<p>\n\nGallery /3\n\n</p>\n<!-- /wp:paragraph -->', 'Gallery /3', '', 'publish', 'closed', 'closed', '', 'gallery-3', '', '', '2019-02-25 16:33:46', '2019-02-25 16:33:46', '', 0, 'http://actors.ua/?page_id=185', 0, 'page', '', 0),
(186, 1, '2019-02-25 16:33:46', '2019-02-25 16:33:46', '<!-- wp:paragraph -->\n<p>\n\nGallery /3\n\n</p>\n<!-- /wp:paragraph -->', 'Gallery /3', '', 'inherit', 'closed', 'closed', '', '185-revision-v1', '', '', '2019-02-25 16:33:46', '2019-02-25 16:33:46', '', 185, 'http://actors.ua/2019/02/25/185-revision-v1/', 0, 'revision', '', 0),
(187, 1, '2019-02-25 16:34:03', '2019-02-25 16:34:03', '<!-- wp:paragraph -->\n<p>\n\nGallery /4\n\n</p>\n<!-- /wp:paragraph -->', 'Gallery /4', '', 'publish', 'closed', 'closed', '', 'gallery-4', '', '', '2019-02-25 16:34:03', '2019-02-25 16:34:03', '', 0, 'http://actors.ua/?page_id=187', 0, 'page', '', 0),
(188, 1, '2019-02-25 16:34:03', '2019-02-25 16:34:03', '<!-- wp:paragraph -->\n<p>\n\nGallery /4\n\n</p>\n<!-- /wp:paragraph -->', 'Gallery /4', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2019-02-25 16:34:03', '2019-02-25 16:34:03', '', 187, 'http://actors.ua/2019/02/25/187-revision-v1/', 0, 'revision', '', 0),
(189, 1, '2019-02-25 16:34:19', '2019-02-25 16:34:19', '<!-- wp:paragraph -->\n<p>\n\nGallery /5\n\n</p>\n<!-- /wp:paragraph -->', 'Gallery /5', '', 'publish', 'closed', 'closed', '', 'gallery-5', '', '', '2019-02-25 16:34:19', '2019-02-25 16:34:19', '', 0, 'http://actors.ua/?page_id=189', 0, 'page', '', 0),
(190, 1, '2019-02-25 16:34:19', '2019-02-25 16:34:19', '<!-- wp:paragraph -->\n<p>\n\nGallery /5\n\n</p>\n<!-- /wp:paragraph -->', 'Gallery /5', '', 'inherit', 'closed', 'closed', '', '189-revision-v1', '', '', '2019-02-25 16:34:19', '2019-02-25 16:34:19', '', 189, 'http://actors.ua/2019/02/25/189-revision-v1/', 0, 'revision', '', 0),
(191, 1, '2019-02-25 16:39:26', '2019-02-25 16:39:26', ' ', '', '', 'publish', 'closed', 'closed', '', '191', '', '', '2019-03-04 15:44:21', '2019-03-04 15:44:21', '', 0, 'http://actors.ua/?p=191', 10, 'nav_menu_item', '', 0),
(192, 1, '2019-02-25 16:39:26', '2019-02-25 16:39:26', ' ', '', '', 'publish', 'closed', 'closed', '', '192', '', '', '2019-03-04 15:44:21', '2019-03-04 15:44:21', '', 0, 'http://actors.ua/?p=192', 9, 'nav_menu_item', '', 0),
(193, 1, '2019-02-25 16:39:26', '2019-02-25 16:39:26', ' ', '', '', 'publish', 'closed', 'closed', '', '193', '', '', '2019-03-04 15:44:21', '2019-03-04 15:44:21', '', 0, 'http://actors.ua/?p=193', 8, 'nav_menu_item', '', 0),
(194, 1, '2019-02-25 16:39:26', '2019-02-25 16:39:26', ' ', '', '', 'publish', 'closed', 'closed', '', '194', '', '', '2019-03-04 15:44:21', '2019-03-04 15:44:21', '', 0, 'http://actors.ua/?p=194', 7, 'nav_menu_item', '', 0),
(195, 1, '2019-02-25 16:39:26', '2019-02-25 16:39:26', ' ', '', '', 'publish', 'closed', 'closed', '', '195', '', '', '2019-03-04 15:44:21', '2019-03-04 15:44:21', '', 0, 'http://actors.ua/?p=195', 6, 'nav_menu_item', '', 0),
(196, 1, '2019-02-25 16:39:26', '2019-02-25 16:39:26', ' ', '', '', 'publish', 'closed', 'closed', '', '196', '', '', '2019-03-04 15:44:21', '2019-03-04 15:44:21', '', 0, 'http://actors.ua/?p=196', 11, 'nav_menu_item', '', 0),
(197, 1, '2019-02-25 16:39:26', '2019-02-25 16:39:26', ' ', '', '', 'publish', 'closed', 'closed', '', '197', '', '', '2019-03-04 15:44:21', '2019-03-04 15:44:21', '', 0, 'http://actors.ua/?p=197', 5, 'nav_menu_item', '', 0),
(198, 1, '2019-02-25 16:39:26', '2019-02-25 16:39:26', ' ', '', '', 'publish', 'closed', 'closed', '', '198', '', '', '2019-03-04 15:44:21', '2019-03-04 15:44:21', '', 0, 'http://actors.ua/?p=198', 4, 'nav_menu_item', '', 0),
(199, 1, '2019-02-25 16:39:26', '2019-02-25 16:39:26', ' ', '', '', 'publish', 'closed', 'closed', '', '199', '', '', '2019-03-04 15:44:21', '2019-03-04 15:44:21', '', 0, 'http://actors.ua/?p=199', 3, 'nav_menu_item', '', 0),
(200, 1, '2019-02-25 16:39:26', '2019-02-25 16:39:26', ' ', '', '', 'publish', 'closed', 'closed', '', '200', '', '', '2019-03-04 15:44:21', '2019-03-04 15:44:21', '', 0, 'http://actors.ua/?p=200', 2, 'nav_menu_item', '', 0),
(201, 1, '2019-02-25 16:39:26', '2019-02-25 16:39:26', ' ', '', '', 'publish', 'closed', 'closed', '', '201', '', '', '2019-03-04 15:44:21', '2019-03-04 15:44:21', '', 0, 'http://actors.ua/?p=201', 13, 'nav_menu_item', '', 0),
(202, 1, '2019-02-25 16:39:26', '2019-02-25 16:39:26', ' ', '', '', 'publish', 'closed', 'closed', '', '202', '', '', '2019-03-04 15:44:21', '2019-03-04 15:44:21', '', 0, 'http://actors.ua/?p=202', 14, 'nav_menu_item', '', 0),
(203, 1, '2019-02-25 16:39:26', '2019-02-25 16:39:26', ' ', '', '', 'publish', 'closed', 'closed', '', '203', '', '', '2019-03-04 15:44:21', '2019-03-04 15:44:21', '', 0, 'http://actors.ua/?p=203', 15, 'nav_menu_item', '', 0),
(204, 1, '2019-02-25 16:39:26', '2019-02-25 16:39:26', ' ', '', '', 'publish', 'closed', 'closed', '', '204', '', '', '2019-03-04 15:44:21', '2019-03-04 15:44:21', '', 0, 'http://actors.ua/?p=204', 12, 'nav_menu_item', '', 0),
(205, 1, '2019-02-25 16:39:26', '2019-02-25 16:39:26', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', '205', '', '', '2019-03-04 15:44:21', '2019-03-04 15:44:21', '', 0, 'http://actors.ua/?p=205', 1, 'nav_menu_item', '', 0),
(208, 1, '2019-03-04 07:08:36', '2019-03-04 07:08:36', '<p></p>\n\n<!-- wp:preformatted -->\n</p>\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, acvenenatis ante venenatis eget. <br />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisquefringilla mi orci, acvenenatis ante venenatis eget.  <br />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, acvenenatis ante venenatis eget.  <br />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, ac enenatis ante venenatis eget. </pre>\n<p>\n<!-- /wp:preformatted -->\n\n<p><!--StartFragment--></p>\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\"></pre>\n<!-- /wp:preformatted -->\n\n<p><!--EndFragment--></p>\n<p></p>', 'PERSONAL PROJECT', '', 'publish', 'open', 'open', '', 'personal-project', '', '', '2019-03-06 16:50:33', '2019-03-06 16:50:33', '', 0, 'http://actors.ua/?p=208', 0, 'post', '', 0),
(210, 1, '2019-03-04 07:07:55', '2019-03-04 07:07:55', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2019-03-04 07:07:55', '2019-03-04 07:07:55', '', 208, 'http://actors.ua/wp-content/uploads/2019/03/2.png', 0, 'attachment', 'image/png', 0),
(211, 1, '2019-03-04 07:08:24', '2019-03-04 07:08:24', '', '1', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2019-03-04 07:08:24', '2019-03-04 07:08:24', '', 208, 'http://actors.ua/wp-content/uploads/2019/03/1.png', 0, 'attachment', 'image/png', 0),
(212, 1, '2019-03-04 07:08:24', '2019-03-04 07:08:24', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2019-03-04 07:08:24', '2019-03-04 07:08:24', '', 208, 'http://actors.ua/wp-content/uploads/2019/03/3.png', 0, 'attachment', 'image/png', 0),
(213, 1, '2019-03-04 07:08:36', '2019-03-04 07:08:36', '<p><!-- wp:preformatted --></p>\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, acvenenatis ante venenatis eget. <br />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisquefringilla mi orci, acvenenatis ante venenatis eget.  <br />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, acvenenatis ante venenatis eget.  <br />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, ac enenatis ante venenatis eget. </pre>\n<p><!-- /wp:preformatted --><br /><br /><!--StartFragment--></p>\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\"></pre>\n<!-- /wp:preformatted -->\n\n<p><!--EndFragment--><br>\n<br>\n</p>', 'PERSONAL PROJECT', '', 'inherit', 'closed', 'closed', '', '208-revision-v1', '', '', '2019-03-04 07:08:36', '2019-03-04 07:08:36', '', 208, 'http://actors.ua/2019/03/04/208-revision-v1/', 0, 'revision', '', 0),
(214, 1, '2019-03-04 14:29:16', '2019-03-04 14:29:16', '<p></p>\n<pre id=\"mce_19\" class=\"editor-rich-text__tinymce mce-content-body\" role=\"textbox\" contenteditable=\"true\" aria-label=\"Write preformatted text…\" aria-autocomplete=\"list\" aria-multiline=\"true\" data-is-placeholder-visible=\"false\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, acvenenatis ante venenatis eget. <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisquefringilla mi orci, acvenenatis ante venenatis eget.  <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, acvenenatis ante venenatis eget.  <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, ac enenatis ante venenatis eget. </pre>\n<p><!--StartFragment--></p>\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, acvenenatis ante venenatis </pre>\n<!-- /wp:preformatted -->\n\n<p><!--EndFragment--></p>\n<p></p>', 'WEDDING WORKSHOP', '', 'publish', 'open', 'open', '', 'wedding-workshop', '', '', '2019-03-06 16:50:05', '2019-03-06 16:50:05', '', 0, 'http://actors.ua/?p=214', 0, 'post', '', 0),
(215, 1, '2019-03-04 14:28:29', '2019-03-04 14:28:29', '', '3', '', 'inherit', 'open', 'closed', '', '3-2', '', '', '2019-03-04 14:28:29', '2019-03-04 14:28:29', '', 214, 'http://actors.ua/wp-content/uploads/2019/03/3-1.png', 0, 'attachment', 'image/png', 0),
(216, 1, '2019-03-04 14:28:44', '2019-03-04 14:28:44', '', '2', '', 'inherit', 'open', 'closed', '', '2-2', '', '', '2019-03-04 14:28:44', '2019-03-04 14:28:44', '', 214, 'http://actors.ua/wp-content/uploads/2019/03/2-1.png', 0, 'attachment', 'image/png', 0),
(217, 1, '2019-03-04 14:29:16', '2019-03-04 14:29:16', '<p> </p>\n<pre id=\"mce_19\" class=\"editor-rich-text__tinymce mce-content-body\" role=\"textbox\" contenteditable=\"true\" aria-label=\"Write preformatted text…\" aria-autocomplete=\"list\" aria-multiline=\"true\" data-is-placeholder-visible=\"false\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, acvenenatis ante venenatis eget. <br />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisquefringilla mi orci, acvenenatis ante venenatis eget.  <br />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, acvenenatis ante venenatis eget.  <br />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, ac enenatis ante venenatis eget. </pre>\n<p><br /><!--StartFragment--></p>\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, acvenenatis ante venenatis </pre>\n<!-- /wp:preformatted -->\n\n<p><!--EndFragment--><br>\n<br>\n</p>', 'WEDDING WORKSHOP', '', 'inherit', 'closed', 'closed', '', '214-revision-v1', '', '', '2019-03-04 14:29:16', '2019-03-04 14:29:16', '', 214, 'http://actors.ua/2019/03/04/214-revision-v1/', 0, 'revision', '', 0),
(219, 1, '2019-03-04 15:58:42', '2019-03-04 15:58:42', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">portfolio</pre>\n<!-- /wp:preformatted -->', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2019-03-04 15:58:42', '2019-03-04 15:58:42', '', 42, 'http://actors.ua/2019/03/04/42-revision-v1/', 0, 'revision', '', 0),
(220, 1, '2019-03-06 16:50:05', '2019-03-06 16:50:05', '<p></p>\n<pre id=\"mce_19\" class=\"editor-rich-text__tinymce mce-content-body\" role=\"textbox\" contenteditable=\"true\" aria-label=\"Write preformatted text…\" aria-autocomplete=\"list\" aria-multiline=\"true\" data-is-placeholder-visible=\"false\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, acvenenatis ante venenatis eget. <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisquefringilla mi orci, acvenenatis ante venenatis eget.  <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, acvenenatis ante venenatis eget.  <br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, ac enenatis ante venenatis eget. </pre>\n<p><!--StartFragment--></p>\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, acvenenatis ante venenatis </pre>\n<!-- /wp:preformatted -->\n\n<p><!--EndFragment--></p>\n<p></p>', 'WEDDING WORKSHOP', '', 'inherit', 'closed', 'closed', '', '214-revision-v1', '', '', '2019-03-06 16:50:05', '2019-03-06 16:50:05', '', 214, 'http://actors.ua/2019/03/06/214-revision-v1/', 0, 'revision', '', 0),
(221, 1, '2019-03-06 16:50:33', '2019-03-06 16:50:33', '<p></p>\n\n<!-- wp:preformatted -->\n</p>\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, acvenenatis ante venenatis eget. <br />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisquefringilla mi orci, acvenenatis ante venenatis eget.  <br />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, acvenenatis ante venenatis eget.  <br />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla mi orci, ac enenatis ante venenatis eget. </pre>\n<p>\n<!-- /wp:preformatted -->\n\n<p><!--StartFragment--></p>\n\n<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\"></pre>\n<!-- /wp:preformatted -->\n\n<p><!--EndFragment--></p>\n<p></p>', 'PERSONAL PROJECT', '', 'inherit', 'closed', 'closed', '', '208-revision-v1', '', '', '2019-03-06 16:50:33', '2019-03-06 16:50:33', '', 208, 'http://actors.ua/2019/03/06/208-revision-v1/', 0, 'revision', '', 0),
(222, 1, '2019-03-06 17:25:36', '2019-03-06 17:25:36', '<!-- wp:paragraph -->\n<p>фывпцпыав5465475345е3авм</p>\n<!-- /wp:paragraph -->', '123456', '', 'publish', 'open', 'open', '', '123456', '', '', '2019-03-06 17:31:23', '2019-03-06 17:31:23', '', 0, 'http://actors.ua/?p=222', 0, 'post', '', 0),
(223, 1, '2019-03-06 17:25:30', '2019-03-06 17:25:30', '', '3', '', 'inherit', 'open', 'closed', '', '3-3', '', '', '2019-03-06 17:25:30', '2019-03-06 17:25:30', '', 222, 'http://actors.ua/wp-content/uploads/2019/03/3-2.png', 0, 'attachment', 'image/png', 0),
(224, 1, '2019-03-06 17:25:36', '2019-03-06 17:25:36', '<!-- wp:paragraph -->\n<p>фывпцпыав5465475345е3авм</p>\n<!-- /wp:paragraph -->', '123456', '', 'inherit', 'closed', 'closed', '', '222-revision-v1', '', '', '2019-03-06 17:25:36', '2019-03-06 17:25:36', '', 222, 'http://actors.ua/2019/03/06/222-revision-v1/', 0, 'revision', '', 0),
(225, 1, '2019-03-06 20:15:31', '2019-03-06 20:15:31', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">about me</pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'about me', '', 'inherit', 'closed', 'closed', '', '52-autosave-v1', '', '', '2019-03-06 20:15:31', '2019-03-06 20:15:31', '', 52, 'http://actors.ua/2019/03/06/52-autosave-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(3, 'MainMenu', 'mainmenu', 0),
(4, '12', '12', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(8, 1, 0),
(63, 1, 0),
(191, 3, 0),
(192, 3, 0),
(193, 3, 0),
(194, 3, 0),
(195, 3, 0),
(196, 3, 0),
(197, 3, 0),
(198, 3, 0),
(199, 3, 0),
(200, 3, 0),
(201, 3, 0),
(202, 3, 0),
(203, 3, 0),
(204, 3, 0),
(205, 3, 0),
(208, 1, 0),
(214, 1, 0),
(222, 4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 15),
(4, 4, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Natali'),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"6f5eeb8f8832de2a8db3d67f69154aa38f6c7903d711001e008fc2f03ccfa060\";a:4:{s:10:\"expiration\";i:1554284055;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1554111255;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '226'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1550911022'),
(23, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Natali', '$P$B3pH1/tOvSNgKjLeliOG08hlAx5.Vm1', 'natali', 'nataliya.likhachova@gmail.com', '', '2019-02-21 19:25:06', '', 0, 'Natali');

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=437;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
