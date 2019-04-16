-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 07 2019 г., 21:49
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
-- База данных: `akad`
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

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-03-11 07:07:38', '2019-03-11 07:07:38', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

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
(1, 'siteurl', 'http://akad.ua', 'yes'),
(2, 'home', 'http://akad.ua', 'yes'),
(3, 'blogname', 'akad', 'yes'),
(4, 'blogdescription', '', 'yes'),
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
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:31:\"query-monitor/query-monitor.php\";i:1;s:37:\"advanced-excerpt/advanced-excerpt.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'akad', 'yes'),
(41, 'stylesheet', 'akad', 'yes'),
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
(53, 'show_on_front', 'page', 'yes'),
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
(77, 'sticky_posts', 'a:1:{i:0;i:89;}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:29:\"<pre>fa fa-youtube-play</pre>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '9', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:\"title\";s:5:\"Posts\";s:6:\"number\";i:5;s:9:\"show_date\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:3;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:1;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:6:\"text-2\";}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:12:\"categories-2\";i:3;s:11:\"tag_cloud-2\";i:4;s:10:\"archives-3\";}s:6:\"footer\";a:6:{i:0;s:13:\"custom_html-6\";i:1;s:13:\"custom_html-7\";i:2;s:13:\"custom_html-5\";i:3;s:13:\"custom_html-4\";i:4;s:13:\"custom_html-8\";i:5;s:13:\"custom_html-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:2:{i:2;a:3:{s:5:\"title\";s:4:\"Tags\";s:5:\"count\";i:0;s:8:\"taxonomy\";s:8:\"post_tag\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:7:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:92:\"<a href=\"https://uk-ua.facebook.com/\"> <i class=\"fa fa-facebook\" aria-hidden=\"true\"></i></a>\";}s:12:\"_multiwidget\";i:1;i:4;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:93:\"<a href=\"https://twitter.com/?lang=ru\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"></i>\r\n</a>\";}i:5;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:92:\"<a href=\"https://www.youtube.com/\"><i class=\"fa fa-youtube-play\" aria-hidden=\"true\"></i></a>\";}i:6;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:96:\"<a href=\"https://www.linkedin.com/\"><i class=\"fa fa-linkedin-square\" aria-hidden=\"true\"></i></a>\";}i:7;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:91:\"<a href=\"https://www.pinterest.com/\"><i class=\"fa fa-pinterest\" aria-hidden=\"true\"></i></a>\";}i:8;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:91:\"<a href=\"https://www.instagram.com/\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"></i></a>\";}}', 'yes'),
(111, 'cron', 'a:5:{i:1554664059;a:4:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1554707270;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1554714393;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1554726447;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1552289576;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(127, 'can_compress_scripts', '1', 'no'),
(140, 'recently_activated', 'a:2:{s:30:\"advanced-custom-fields/acf.php\";i:1552497805;s:42:\"custom-options-tree/custom-option-tree.php\";i:1552409522;}', 'yes'),
(143, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1554662256;s:7:\"checked\";a:4:{s:4:\"akad\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.3\";s:15:\"twentyseventeen\";s:3:\"2.1\";s:13:\"twentysixteen\";s:3:\"1.9\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(144, 'current_theme', 'akad', 'yes'),
(145, 'theme_mods_akad', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"footer-menu\";i:2;s:11:\"header-menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1552581040;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:6:\"text-2\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:6:\"footer\";a:6:{i:0;s:13:\"custom_html-2\";i:1;s:13:\"custom_html-4\";i:2;s:13:\"custom_html-5\";i:3;s:13:\"custom_html-6\";i:4;s:13:\"custom_html-7\";i:5;s:13:\"custom_html-8\";}}}s:19:\"ot_set_google_fonts\";a:1:{s:17:\"demo_google_fonts\";a:1:{i:0;a:3:{s:6:\"family\";s:8:\"opensans\";s:8:\"variants\";a:6:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:7:\"regular\";i:3;s:6:\"italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";}s:7:\"subsets\";a:1:{i:0;s:5:\"latin\";}}}}}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(153, 'theme_mods_twentyseventeen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1552581088;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:6:\"text-2\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:6:{i:0;s:13:\"custom_html-2\";i:1;s:13:\"custom_html-4\";i:2;s:13:\"custom_html-5\";i:3;s:13:\"custom_html-6\";i:4;s:13:\"custom_html-7\";i:5;s:13:\"custom_html-8\";}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(158, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(194, 'wpseo', 'a:20:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:3:\"9.7\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1552381593;s:18:\"recalibration_beta\";b:0;}', 'yes'),
(195, 'wpseo_titles', 'a:67:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;}', 'yes'),
(196, 'wpseo_social', 'a:20:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(197, 'wpseo_flush_rewrite', '1', 'yes'),
(198, '_transient_timeout_wpseo_link_table_inaccessible', '1583917593', 'no'),
(199, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(200, '_transient_timeout_wpseo_meta_table_inaccessible', '1583917593', 'no'),
(201, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(204, 'rewrite_rules', 'a:94:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=9&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(213, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1552384177;s:7:\"version\";s:5:\"5.1.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(233, 'option_tree_settings', 'a:3:{s:15:\"contextual_help\";a:2:{s:7:\"content\";a:1:{i:0;a:3:{s:2:\"id\";s:17:\"option_types_help\";s:5:\"title\";s:12:\"Option Types\";s:7:\"content\";s:30:\"<p>Help content goes here!</p>\";}}s:7:\"sidebar\";s:33:\"<p>Sidebar content goes here!</p>\";}s:8:\"sections\";a:1:{i:0;a:2:{s:2:\"id\";s:12:\"option_types\";s:5:\"title\";s:12:\"Option Types\";}}s:8:\"settings\";a:45:{i:0;a:13:{s:2:\"id\";s:15:\"demo_background\";s:5:\"label\";s:10:\"Background\";s:4:\"desc\";s:705:\"The Background option type is for adding background styles to your theme either dynamically via the CSS option type below or manually with <code>ot_get_option()</code>. The Background option type has filters that allow you to remove fields or change the defaults. For example, you can filter <code>ot_recognized_background_fields</code> to remove unwanted fields from all Background options or an individual one. You can also filter <code>ot_recognized_background_repeat</code>, <code>ot_recognized_background_attachment</code>, <code>ot_recognized_background_position</code>, and <code>ot_type_background_size_choices</code>. These filters allow you to fine tune the select lists for your specific needs.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:10:\"background\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:1;a:13:{s:2:\"id\";s:11:\"demo_border\";s:5:\"label\";s:6:\"Border\";s:4:\"desc\";s:75:\"The Border option type is used to set width, unit, style, and color values.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:6:\"border\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:2;a:13:{s:2:\"id\";s:15:\"demo_box_shadow\";s:5:\"label\";s:10:\"Box Shadow\";s:4:\"desc\";s:192:\"The Box Shadow option type is used to set <code>inset</code>, <code>offset-x</code>, <code>offset-y</code>, <code>blur-radius</code>, <code>spread-radius</code>, and <code>color</code> values.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:10:\"box-shadow\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:3;a:13:{s:2:\"id\";s:22:\"demo_category_checkbox\";s:5:\"label\";s:17:\"Category Checkbox\";s:4:\"desc\";s:193:\"The Category Checkbox option type displays a list of category IDs. It allows the user to check multiple category IDs and will return that value as an array for use in a custom function or loop.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:17:\"category-checkbox\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:4;a:13:{s:2:\"id\";s:20:\"demo_category_select\";s:5:\"label\";s:15:\"Category Select\";s:4:\"desc\";s:179:\"The Category Select option type displays a list of category IDs. It allows the user to select only one category ID and will return that value for use in a custom function or loop.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:15:\"category-select\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:5;a:14:{s:2:\"id\";s:13:\"demo_checkbox\";s:5:\"label\";s:8:\"Checkbox\";s:4:\"desc\";s:175:\"The Checkbox option type displays a group of choices. It allows the user to check multiple choices and will return that value as an array for use in a custom function or loop.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:8:\"checkbox\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"choices\";a:2:{i:0;a:3:{s:5:\"value\";s:2:\"no\";s:5:\"label\";s:2:\"No\";s:3:\"src\";s:0:\"\";}i:1;a:3:{s:5:\"value\";s:3:\"Yes\";s:5:\"label\";s:3:\"Yes\";s:3:\"src\";s:0:\"\";}}}i:6;a:13:{s:2:\"id\";s:16:\"demo_colorpicker\";s:5:\"label\";s:11:\"Colorpicker\";s:4:\"desc\";s:129:\"The Colorpicker option type saves a hexadecimal color code for use in CSS. Use it to modify the color of something in your theme.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:11:\"colorpicker\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:7;a:13:{s:2:\"id\";s:24:\"demo_colorpicker_opacity\";s:5:\"label\";s:19:\"Colorpicker Opacity\";s:4:\"desc\";s:197:\"The Colorpicker Opacity option type saves an rgba color value for use in CSS. To add opacity to other colorpickers add the <code>ot-colorpicker-opacity</code> class to the <code>$args</code> array.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:19:\"colorpicker-opacity\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:8;a:13:{s:2:\"id\";s:8:\"demo_css\";s:5:\"label\";s:3:\"CSS\";s:4:\"desc\";s:889:\"<p>The CSS option type is a textarea that when used properly can add dynamic CSS to your theme from within OptionTree. Unfortunately, due server limitations you will need to create a file named <code>dynamic.css</code> at the root level of your theme and change permissions using <code>chmod</code> so the server can write to the file. I have had the most success setting this single file to <code>0777</code> but feel free to play around with permissions until everything is working. A good starting point is <code>0666</code>. When the server can save to the file, CSS will automatically be updated when you save your Theme Options.</p><p>This example assumes you have an option with the ID of <code>demo_background</code>. Which means this option will automatically insert the value of <code>demo_background</code> into the <code>dynamic.css</code> when the Theme Options are saved.</p>\";s:3:\"std\";s:33:\"#custom {\n  {{demo_background}}\n}\";s:4:\"type\";s:3:\"css\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:2:\"20\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:9;a:13:{s:2:\"id\";s:30:\"demo_custom_post_type_checkbox\";s:5:\"label\";s:25:\"Custom Post Type Checkbox\";s:4:\"desc\";s:294:\"The Custom Post Type Select option type displays a list of IDs from any available WordPress post type or custom post type. It allows the user to check multiple post IDs for use in a custom function or loop. Requires at least one valid <code>post_type</code> in the <code>post_type</code> field.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:25:\"custom-post-type-checkbox\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:4:\"post\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:10;a:13:{s:2:\"id\";s:28:\"demo_custom_post_type_select\";s:5:\"label\";s:23:\"Custom Post Type Select\";s:4:\"desc\";s:280:\"The Custom Post Type Select option type displays a list of IDs from any available WordPress post type or custom post type. It will return a single post ID for use in a custom function or loop. Requires at least one valid <code>post_type</code> in the <code>post_type</code> field.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:23:\"custom-post-type-select\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:4:\"post\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:11;a:13:{s:2:\"id\";s:16:\"demo_date_picker\";s:5:\"label\";s:11:\"Date Picker\";s:4:\"desc\";s:223:\"The Date Picker option type is tied to a standard form input field which displays a calendar pop-up that allow the user to pick any date when focus is given to the input field. The returned value is a date formatted string.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:11:\"date-picker\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:12;a:13:{s:2:\"id\";s:21:\"demo_date_time_picker\";s:5:\"label\";s:16:\"Date Time Picker\";s:4:\"desc\";s:246:\"The Date Time Picker option type is tied to a standard form input field which displays a calendar pop-up that allow the user to pick any date and time when focus is given to the input field. The returned value is a date and time formatted string.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:16:\"date-time-picker\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:13;a:13:{s:2:\"id\";s:14:\"demo_dimension\";s:5:\"label\";s:9:\"Dimension\";s:4:\"desc\";s:65:\"The Dimension option type is used to set width and height values.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:9:\"dimension\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:14;a:13:{s:2:\"id\";s:12:\"demo_gallery\";s:5:\"label\";s:7:\"Gallery\";s:4:\"desc\";s:159:\"The Gallery option type saves a comma separated list of image attachment IDs. You will need to create a front-end function to display the images in your theme.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:7:\"gallery\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:15;a:13:{s:2:\"id\";s:22:\"demo_gallery_shortcode\";s:5:\"label\";s:17:\"Gallery Shortcode\";s:4:\"desc\";s:270:\"The Gallery option type can also be saved as a shortcode by adding <code>ot-gallery-shortcode</code> to the class attribute. Using the Gallery option type in this manner will result in a better user experience as you\'re able to save the link, column, and order settings.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:7:\"gallery\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:20:\"ot-gallery-shortcode\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:16;a:13:{s:2:\"id\";s:17:\"demo_google_fonts\";s:5:\"label\";s:12:\"Google Fonts\";s:4:\"desc\";s:733:\"The Google Fonts option type will dynamically enqueue any number of Google Web Fonts into the document <code>HEAD</code>. As well, once the option has been saved each font family will automatically be inserted into the <code>font-family</code> array for the Typography option type. You can further modify the font stack by using the <code>ot_google_font_stack</code> filter, which is passed the <code>$font_stack</code>, <code>$family</code>, and <code>$field_id</code> parameters. The <code>$field_id</code> parameter is being passed from <code>ot_recognized_font_families</code>, so it will be the ID of a Typography option type. This will allow you to add additional web safe fonts to individual font families on an as-need basis.\";s:3:\"std\";a:1:{i:0;a:3:{s:6:\"family\";s:8:\"opensans\";s:8:\"variants\";a:6:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:7:\"regular\";i:3;s:6:\"italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";}s:7:\"subsets\";a:1:{i:0;s:5:\"latin\";}}}s:4:\"type\";s:12:\"google-fonts\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:17;a:13:{s:2:\"id\";s:15:\"demo_javascript\";s:5:\"label\";s:10:\"JavaScript\";s:4:\"desc\";s:154:\"<p>The JavaScript option type is a textarea that uses the <code>ace.js</code> code editor to highlight your JavaScript and display errors as you type.</p>\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:10:\"javascript\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:2:\"20\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:18;a:13:{s:2:\"id\";s:15:\"demo_link_color\";s:5:\"label\";s:10:\"Link Color\";s:4:\"desc\";s:64:\"The Link Color option type is used to set all link color states.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:10:\"link-color\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:19;a:14:{s:2:\"id\";s:14:\"demo_list_item\";s:5:\"label\";s:9:\"List Item\";s:4:\"desc\";s:267:\"The List Item option type allows for a great deal of customization. You can add settings to the List Item and those settings will be displayed to the user when they add a new List Item. Typical use is for creating sliding content or blocks of code for custom layouts.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:9:\"list-item\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:8:\"settings\";a:1:{i:0;a:12:{s:2:\"id\";s:22:\"demo_list_item_content\";s:5:\"label\";s:7:\"Content\";s:4:\"desc\";s:0:\"\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:15:\"textarea-simple\";s:4:\"rows\";s:2:\"10\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}}}i:20;a:13:{s:2:\"id\";s:16:\"demo_measurement\";s:5:\"label\";s:11:\"Measurement\";s:4:\"desc\";s:360:\"The Measurement option type is a mix of input and select fields. The text input excepts a value and the select lets you choose the unit of measurement to add to that value. Currently the default units are <code>px</code>, <code>%</code>, <code>em</code>, and <code>pt</code>. However, you can change them with the <code>ot_measurement_unit_types</code> filter.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:11:\"measurement\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:21;a:13:{s:2:\"id\";s:19:\"demo_numeric_slider\";s:5:\"label\";s:14:\"Numeric Slider\";s:4:\"desc\";s:137:\"The Numeric Slider option type displays a jQuery UI slider. It will return a single numerical value for use in a custom function or loop.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:14:\"numeric-slider\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:13:\"-500,5000,100\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:22;a:13:{s:2:\"id\";s:11:\"demo_on_off\";s:5:\"label\";s:6:\"On/Off\";s:4:\"desc\";s:160:\"The On/Off option type displays a simple switch that can be used to turn things on or off. The saved return value is either <code>on</code> or <code>off</code>.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:6:\"on-off\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:23;a:13:{s:2:\"id\";s:18:\"demo_page_checkbox\";s:5:\"label\";s:13:\"Page Checkbox\";s:4:\"desc\";s:142:\"The Page Checkbox option type displays a list of page IDs. It allows the user to check multiple page IDs for use in a custom function or loop.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:13:\"page-checkbox\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:24;a:13:{s:2:\"id\";s:16:\"demo_page_select\";s:5:\"label\";s:11:\"Page Select\";s:4:\"desc\";s:126:\"The Page Select option type displays a list of page IDs. It will return a single page ID for use in a custom function or loop.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:11:\"page-select\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:25;a:13:{s:2:\"id\";s:18:\"demo_post_checkbox\";s:5:\"label\";s:13:\"Post Checkbox\";s:4:\"desc\";s:142:\"The Post Checkbox option type displays a list of post IDs. It allows the user to check multiple post IDs for use in a custom function or loop.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:13:\"post-checkbox\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:26;a:13:{s:2:\"id\";s:16:\"demo_post_select\";s:5:\"label\";s:11:\"Post Select\";s:4:\"desc\";s:126:\"The Post Select option type displays a list of post IDs. It will return a single post ID for use in a custom function or loop.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:11:\"post-select\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:27;a:14:{s:2:\"id\";s:10:\"demo_radio\";s:5:\"label\";s:5:\"Radio\";s:4:\"desc\";s:160:\"The Radio option type displays a group of choices. It allows the user to choose one and will return that value as a string for use in a custom function or loop.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:5:\"radio\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"choices\";a:3:{i:0;a:3:{s:5:\"value\";s:3:\"yes\";s:5:\"label\";s:3:\"Yes\";s:3:\"src\";s:0:\"\";}i:1;a:3:{s:5:\"value\";s:2:\"no\";s:5:\"label\";s:2:\"No\";s:3:\"src\";s:0:\"\";}i:2;a:3:{s:5:\"value\";s:5:\"maybe\";s:5:\"label\";s:5:\"Maybe\";s:3:\"src\";s:0:\"\";}}}i:28;a:13:{s:2:\"id\";s:16:\"demo_radio_image\";s:5:\"label\";s:11:\"Radio Image\";s:4:\"desc\";s:203:\"the Radio Images option type is primarily used for layouts. However, you can filter the image list using <code>ot_radio_images</code>. As well, you can add your own custom images using the choices array.\";s:3:\"std\";s:13:\"right-sidebar\";s:4:\"type\";s:11:\"radio-image\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:29;a:14:{s:2:\"id\";s:11:\"demo_select\";s:5:\"label\";s:6:\"Select\";s:4:\"desc\";s:97:\"The Select option type is used to list anything you want that would be chosen from a select list.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";s:7:\"choices\";a:4:{i:0;a:3:{s:5:\"value\";s:0:\"\";s:5:\"label\";s:16:\"-- Choose One --\";s:3:\"src\";s:0:\"\";}i:1;a:3:{s:5:\"value\";s:3:\"yes\";s:5:\"label\";s:3:\"Yes\";s:3:\"src\";s:0:\"\";}i:2;a:3:{s:5:\"value\";s:2:\"no\";s:5:\"label\";s:2:\"No\";s:3:\"src\";s:0:\"\";}i:3;a:3:{s:5:\"value\";s:5:\"maybe\";s:5:\"label\";s:5:\"Maybe\";s:3:\"src\";s:0:\"\";}}}i:30;a:13:{s:2:\"id\";s:19:\"demo_sidebar_select\";s:5:\"label\";s:14:\"Sidebar Select\";s:4:\"desc\";s:638:\"<p>This option type makes it possible for users to select a WordPress registered sidebar to use on a specific area. By using the two provided filters, <code>ot_recognized_sidebars</code>, and <code>ot_recognized_sidebars_{$field_id}</code> we can be selective about which sidebars are available on a specific content area.</p><p>For example, if we create a WordPress theme that provides the ability to change the Blog Sidebar and we don\'t want to have the footer sidebars available on this area, we can unset those sidebars either manually or by using a regular expression if we have a common name like <code>footer-sidebar-$i</code>.</p>\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:14:\"sidebar-select\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:31;a:13:{s:2:\"id\";s:17:\"demo_social_links\";s:5:\"label\";s:12:\"Social Links\";s:4:\"desc\";s:486:\"<p>The Social Links option type utilizes a drag & drop interface to create a list of social links. There are a few filters that make extending this option type easy. You can set the <code>ot_type_social_links_load_defaults</code> filter to <code>false</code> and turn off loading default values. Use the <code>ot_type_social_links_defaults</code> filter to change the default values that are loaded. To filter the settings array use the <code>ot_social_links_settings</code> filter.</p>\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:12:\"social-links\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:32;a:13:{s:2:\"id\";s:12:\"demo_spacing\";s:5:\"label\";s:7:\"Spacing\";s:4:\"desc\";s:124:\"The Spacing option type is used to set spacing values such as padding or margin in the form of top, right, bottom, and left.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:7:\"spacing\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:33;a:13:{s:2:\"id\";s:17:\"demo_tag_checkbox\";s:5:\"label\";s:12:\"Tag Checkbox\";s:4:\"desc\";s:178:\"The Tag Checkbox option type displays a list of tag IDs. It allows the user to check multiple tag IDs and will return that value as an array for use in a custom function or loop.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:12:\"tag-checkbox\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:34;a:13:{s:2:\"id\";s:15:\"demo_tag_select\";s:5:\"label\";s:10:\"Tag Select\";s:4:\"desc\";s:164:\"The Tag Select option type displays a list of tag IDs. It allows the user to select only one tag ID and will return that value for use in a custom function or loop.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:10:\"tag-select\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:35;a:13:{s:2:\"id\";s:22:\"demo_taxonomy_checkbox\";s:5:\"label\";s:17:\"Taxonomy Checkbox\";s:4:\"desc\";s:193:\"The Taxonomy Checkbox option type displays a list of taxonomy IDs. It allows the user to check multiple taxonomy IDs and will return that value as an array for use in a custom function or loop.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:17:\"taxonomy-checkbox\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:17:\"category,post_tag\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:36;a:13:{s:2:\"id\";s:20:\"demo_taxonomy_select\";s:5:\"label\";s:15:\"Taxonomy Select\";s:4:\"desc\";s:179:\"The Taxonomy Select option type displays a list of taxonomy IDs. It allows the user to select only one taxonomy ID and will return that value for use in a custom function or loop.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:15:\"taxonomy-select\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:17:\"category,post_tag\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:37;a:13:{s:2:\"id\";s:9:\"demo_text\";s:5:\"label\";s:4:\"Text\";s:4:\"desc\";s:140:\"The Text option type is used to save string values. For example, any optional or required text that is of reasonably short character length.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:38;a:13:{s:2:\"id\";s:13:\"demo_textarea\";s:5:\"label\";s:8:\"Textarea\";s:4:\"desc\";s:299:\"The Textarea option type is a large string value used for custom code or text in the theme and has a WYSIWYG editor that can be filtered to change the how it is displayed. For example, you can filter <code>wpautop</code>, <code>media_buttons</code>, <code>tinymce</code>, and <code>quicktags</code>.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:2:\"15\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:39;a:13:{s:2:\"id\";s:20:\"demo_textarea_simple\";s:5:\"label\";s:15:\"Textarea Simple\";s:4:\"desc\";s:150:\"The Textarea Simple option type is a large string value used for custom code or text in the theme. The Textarea Simple does not have a WYSIWYG editor.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:15:\"textarea-simple\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:2:\"10\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:40;a:13:{s:2:\"id\";s:14:\"demo_textblock\";s:5:\"label\";s:9:\"Textblock\";s:4:\"desc\";s:347:\"The Textblock option type is used only on the Theme Option page. It will allow you to create & display HTML, but has no title above the text block. You can then use the Textblock to add a more detailed set of instruction on how the options are used in your theme. You would never use this in your themes template files as it does not save a value.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:9:\"textblock\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:41;a:13:{s:2:\"id\";s:21:\"demo_textblock_titled\";s:5:\"label\";s:16:\"Textblock Titled\";s:4:\"desc\";s:360:\"The Textblock Titled option type is used only on the Theme Option page. It will allow you to create & display HTML, and has a title above the text block. You can then use the Textblock Titled to add a more detailed set of instruction on how the options are used in your theme. You would never use this in your themes template files as it does not save a value.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:16:\"textblock-titled\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:42;a:13:{s:2:\"id\";s:15:\"demo_typography\";s:5:\"label\";s:10:\"Typography\";s:4:\"desc\";s:896:\"The Typography option type is for adding typography styles to your theme either dynamically via the CSS option type above or manually with <code>ot_get_option()</code>. The Typography option type has filters that allow you to remove fields or change the defaults. For example, you can filter <code>ot_recognized_typography_fields</code> to remove unwanted fields from all Background options or an individual one. You can also filter <code>ot_recognized_font_families</code>, <code>ot_recognized_font_sizes</code>, <code>ot_recognized_font_styles</code>, <code>ot_recognized_font_variants</code>, <code>ot_recognized_font_weights</code>, <code>ot_recognized_letter_spacing</code>, <code>ot_recognized_line_heights</code>, <code>ot_recognized_text_decorations</code> and <code>ot_recognized_text_transformations</code>. These filters allow you to fine tune the select lists for your specific needs.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:10:\"typography\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:43;a:13:{s:2:\"id\";s:11:\"demo_upload\";s:5:\"label\";s:6:\"Upload\";s:4:\"desc\";s:464:\"The Upload option type is used to upload any WordPress supported media. After uploading, users are required to press the \"Send to OptionTree\" button in order to populate the input with the URI of that media. There is one caveat of this feature. If you import the theme options and have uploaded media on one site the old URI will not reflect the URI of your new site. You will have to re-upload or FTP any media to your new server and change the URIs if necessary.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:6:\"upload\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:0:\"\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}i:44;a:13:{s:2:\"id\";s:25:\"demo_upload_attachment_id\";s:5:\"label\";s:20:\"Upload Attachment ID\";s:4:\"desc\";s:131:\"The Upload option type can also be saved as an attachment ID by adding <code>ot-upload-attachment-id</code> to the class attribute.\";s:3:\"std\";s:0:\"\";s:4:\"type\";s:6:\"upload\";s:7:\"section\";s:12:\"option_types\";s:4:\"rows\";s:0:\"\";s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:12:\"min_max_step\";s:0:\"\";s:5:\"class\";s:23:\"ot-upload-attachment-id\";s:9:\"condition\";s:0:\"\";s:8:\"operator\";s:3:\"and\";}}}', 'yes'),
(234, 'option_tree', 'a:45:{s:15:\"demo_background\";s:0:\"\";s:11:\"demo_border\";s:0:\"\";s:15:\"demo_box_shadow\";s:0:\"\";s:22:\"demo_category_checkbox\";s:0:\"\";s:20:\"demo_category_select\";s:0:\"\";s:13:\"demo_checkbox\";s:0:\"\";s:16:\"demo_colorpicker\";s:0:\"\";s:24:\"demo_colorpicker_opacity\";s:0:\"\";s:8:\"demo_css\";s:33:\"#custom {\n  {{demo_background}}\n}\";s:30:\"demo_custom_post_type_checkbox\";s:0:\"\";s:28:\"demo_custom_post_type_select\";s:0:\"\";s:16:\"demo_date_picker\";s:0:\"\";s:21:\"demo_date_time_picker\";s:0:\"\";s:14:\"demo_dimension\";s:0:\"\";s:12:\"demo_gallery\";s:0:\"\";s:22:\"demo_gallery_shortcode\";s:0:\"\";s:17:\"demo_google_fonts\";a:1:{i:0;a:3:{s:6:\"family\";s:8:\"opensans\";s:8:\"variants\";a:6:{i:0;s:3:\"300\";i:1;s:9:\"300italic\";i:2;s:7:\"regular\";i:3;s:6:\"italic\";i:4;s:3:\"600\";i:5;s:9:\"600italic\";}s:7:\"subsets\";a:1:{i:0;s:5:\"latin\";}}}s:15:\"demo_javascript\";s:0:\"\";s:15:\"demo_link_color\";s:0:\"\";s:14:\"demo_list_item\";s:0:\"\";s:16:\"demo_measurement\";s:0:\"\";s:19:\"demo_numeric_slider\";s:0:\"\";s:11:\"demo_on_off\";s:0:\"\";s:18:\"demo_page_checkbox\";s:0:\"\";s:16:\"demo_page_select\";s:0:\"\";s:18:\"demo_post_checkbox\";s:0:\"\";s:16:\"demo_post_select\";s:0:\"\";s:10:\"demo_radio\";s:0:\"\";s:16:\"demo_radio_image\";s:13:\"right-sidebar\";s:11:\"demo_select\";s:0:\"\";s:19:\"demo_sidebar_select\";s:0:\"\";s:17:\"demo_social_links\";s:0:\"\";s:12:\"demo_spacing\";s:0:\"\";s:17:\"demo_tag_checkbox\";s:0:\"\";s:15:\"demo_tag_select\";s:0:\"\";s:22:\"demo_taxonomy_checkbox\";s:0:\"\";s:20:\"demo_taxonomy_select\";s:0:\"\";s:9:\"demo_text\";s:0:\"\";s:13:\"demo_textarea\";s:0:\"\";s:20:\"demo_textarea_simple\";s:0:\"\";s:14:\"demo_textblock\";s:0:\"\";s:21:\"demo_textblock_titled\";s:0:\"\";s:15:\"demo_typography\";s:0:\"\";s:11:\"demo_upload\";s:0:\"\";s:25:\"demo_upload_attachment_id\";s:0:\"\";}', 'yes'),
(235, 'ot_media_post_ID', '49', 'yes'),
(275, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1554662251;s:15:\"version_checked\";s:5:\"5.0.4\";s:12:\"translations\";a:0:{}}', 'no'),
(277, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:29:\"nataliya.likhachova@gmail.com\";s:7:\"version\";s:5:\"5.0.4\";s:9:\"timestamp\";i:1552460962;}', 'no'),
(304, 'WPLANG', '', 'yes'),
(305, 'new_admin_email', 'nataliya.likhachova@gmail.com', 'yes'),
(322, 'cptui_new_install', 'false', 'yes'),
(326, 'acf_version', '5.7.12', 'yes'),
(440, 'advanced_excerpt', 'a:14:{s:6:\"length\";i:40;s:11:\"length_type\";s:5:\"words\";s:9:\"no_custom\";i:1;s:12:\"no_shortcode\";i:1;s:6:\"finish\";s:5:\"exact\";s:8:\"ellipsis\";s:8:\"&hellip;\";s:9:\"read_more\";s:13:\"Read the rest\";s:8:\"add_link\";i:0;s:12:\"allowed_tags\";a:0:{}s:11:\"the_excerpt\";i:1;s:11:\"the_content\";i:1;s:20:\"the_content_no_break\";i:0;s:13:\"exclude_pages\";a:0:{}s:19:\"allowed_tags_option\";s:15:\"dont_remove_any\";}', 'yes'),
(479, 'category_children', 'a:0:{}', 'yes'),
(610, '_site_transient_timeout_theme_roots', '1554664055', 'no'),
(611, '_site_transient_theme_roots', 'a:4:{s:4:\"akad\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(612, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1554662257;s:7:\"checked\";a:9:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.7.12\";s:37:\"advanced-excerpt/advanced-excerpt.php\";s:5:\"4.2.6\";s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:42:\"custom-options-tree/custom-option-tree.php\";s:5:\"1.1.2\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.6.1\";s:9:\"hello.php\";s:5:\"1.7.1\";s:31:\"query-monitor/query-monitor.php\";s:5:\"3.3.2\";s:24:\"wordpress-seo/wp-seo.php\";s:3:\"9.7\";}s:8:\"response\";a:4:{s:37:\"advanced-excerpt/advanced-excerpt.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:30:\"w.org/plugins/advanced-excerpt\";s:4:\"slug\";s:16:\"advanced-excerpt\";s:6:\"plugin\";s:37:\"advanced-excerpt/advanced-excerpt.php\";s:11:\"new_version\";s:5:\"4.2.8\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/advanced-excerpt/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/advanced-excerpt.4.2.8.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:67:\"https://s.w.org/plugins/geopattern-icon/advanced-excerpt_ae8159.svg\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/advanced-excerpt/assets/banner-1544x500.jpg?rev=921436\";s:2:\"1x\";s:70:\"https://ps.w.org/advanced-excerpt/assets/banner-772x250.jpg?rev=921436\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.1.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.1.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:31:\"query-monitor/query-monitor.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/query-monitor\";s:4:\"slug\";s:13:\"query-monitor\";s:6:\"plugin\";s:31:\"query-monitor/query-monitor.php\";s:11:\"new_version\";s:5:\"3.3.4\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/query-monitor/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/query-monitor.3.3.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/query-monitor/assets/icon-256x256.png?rev=2056073\";s:2:\"1x\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073\";s:3:\"svg\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/query-monitor/assets/banner-1544x500.png?rev=1629576\";s:2:\"1x\";s:68:\"https://ps.w.org/query-monitor/assets/banner-772x250.png?rev=1731469\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.1.1\";s:12:\"requires_php\";s:3:\"5.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:6:\"10.1.3\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wordpress-seo.10.1.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}s:6:\"tested\";s:5:\"5.1.1\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.7.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:42:\"custom-options-tree/custom-option-tree.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-options-tree\";s:4:\"slug\";s:19:\"custom-options-tree\";s:6:\"plugin\";s:42:\"custom-options-tree/custom-option-tree.php\";s:11:\"new_version\";s:5:\"1.1.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-options-tree/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/custom-options-tree.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-options-tree/assets/icon-256x256.jpg?rev=1732386\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-options-tree/assets/icon-128x128.jpg?rev=1732386\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-options-tree/assets/banner-1544x500.jpg?rev=1732386\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-options-tree/assets/banner-772x250.jpg?rev=1732386\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.6.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

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
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'http://akad.ua/'),
(11, 5, '_menu_item_orphaned', '1552305645'),
(12, 6, '_menu_item_type', 'post_type'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '2'),
(15, 6, '_menu_item_object', 'page'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', ''),
(20, 6, '_menu_item_orphaned', '1552305645'),
(21, 7, '_menu_item_type', 'custom'),
(22, 7, '_menu_item_menu_item_parent', '0'),
(23, 7, '_menu_item_object_id', '7'),
(24, 7, '_menu_item_object', 'custom'),
(25, 7, '_menu_item_target', ''),
(26, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 7, '_menu_item_xfn', ''),
(28, 7, '_menu_item_url', 'http://akad.ua/'),
(29, 7, '_menu_item_orphaned', '1552307238'),
(30, 8, '_menu_item_type', 'post_type'),
(31, 8, '_menu_item_menu_item_parent', '0'),
(32, 8, '_menu_item_object_id', '2'),
(33, 8, '_menu_item_object', 'page'),
(34, 8, '_menu_item_target', ''),
(35, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 8, '_menu_item_xfn', ''),
(37, 8, '_menu_item_url', ''),
(38, 8, '_menu_item_orphaned', '1552307238'),
(39, 9, '_edit_lock', '1552997225:1'),
(40, 11, '_edit_lock', '1553019245:1'),
(41, 13, '_edit_lock', '1552307200:1'),
(42, 15, '_edit_lock', '1552307214:1'),
(43, 17, '_edit_lock', '1553103241:1'),
(44, 19, '_edit_lock', '1552307242:1'),
(45, 21, '_menu_item_type', 'custom'),
(46, 21, '_menu_item_menu_item_parent', '0'),
(47, 21, '_menu_item_object_id', '21'),
(48, 21, '_menu_item_object', 'custom'),
(49, 21, '_menu_item_target', ''),
(50, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(51, 21, '_menu_item_xfn', ''),
(52, 21, '_menu_item_url', 'http://akad.ua/'),
(54, 22, '_menu_item_type', 'post_type'),
(55, 22, '_menu_item_menu_item_parent', '0'),
(56, 22, '_menu_item_object_id', '11'),
(57, 22, '_menu_item_object', 'page'),
(58, 22, '_menu_item_target', ''),
(59, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 22, '_menu_item_xfn', ''),
(61, 22, '_menu_item_url', ''),
(63, 23, '_menu_item_type', 'post_type'),
(64, 23, '_menu_item_menu_item_parent', '0'),
(65, 23, '_menu_item_object_id', '17'),
(66, 23, '_menu_item_object', 'page'),
(67, 23, '_menu_item_target', ''),
(68, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(69, 23, '_menu_item_xfn', ''),
(70, 23, '_menu_item_url', ''),
(72, 24, '_menu_item_type', 'post_type'),
(73, 24, '_menu_item_menu_item_parent', '0'),
(74, 24, '_menu_item_object_id', '19'),
(75, 24, '_menu_item_object', 'page'),
(76, 24, '_menu_item_target', ''),
(77, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(78, 24, '_menu_item_xfn', ''),
(79, 24, '_menu_item_url', ''),
(81, 25, '_menu_item_type', 'post_type'),
(82, 25, '_menu_item_menu_item_parent', '0'),
(83, 25, '_menu_item_object_id', '9'),
(84, 25, '_menu_item_object', 'page'),
(85, 25, '_menu_item_target', ''),
(86, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(87, 25, '_menu_item_xfn', ''),
(88, 25, '_menu_item_url', ''),
(89, 25, '_menu_item_orphaned', '1552307388'),
(90, 26, '_menu_item_type', 'post_type'),
(91, 26, '_menu_item_menu_item_parent', '0'),
(92, 26, '_menu_item_object_id', '15'),
(93, 26, '_menu_item_object', 'page'),
(94, 26, '_menu_item_target', ''),
(95, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(96, 26, '_menu_item_xfn', ''),
(97, 26, '_menu_item_url', ''),
(99, 27, '_menu_item_type', 'post_type'),
(100, 27, '_menu_item_menu_item_parent', '0'),
(101, 27, '_menu_item_object_id', '2'),
(102, 27, '_menu_item_object', 'page'),
(103, 27, '_menu_item_target', ''),
(104, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(105, 27, '_menu_item_xfn', ''),
(106, 27, '_menu_item_url', ''),
(107, 27, '_menu_item_orphaned', '1552307388'),
(117, 29, '_menu_item_type', 'post_type'),
(118, 29, '_menu_item_menu_item_parent', '0'),
(119, 29, '_menu_item_object_id', '19'),
(120, 29, '_menu_item_object', 'page'),
(121, 29, '_menu_item_target', ''),
(122, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(123, 29, '_menu_item_xfn', ''),
(124, 29, '_menu_item_url', ''),
(125, 29, '_menu_item_orphaned', '1552307722'),
(126, 30, '_menu_item_type', 'post_type'),
(127, 30, '_menu_item_menu_item_parent', '0'),
(128, 30, '_menu_item_object_id', '17'),
(129, 30, '_menu_item_object', 'page'),
(130, 30, '_menu_item_target', ''),
(131, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(132, 30, '_menu_item_xfn', ''),
(133, 30, '_menu_item_url', ''),
(134, 30, '_menu_item_orphaned', '1552307722'),
(135, 31, '_menu_item_type', 'post_type'),
(136, 31, '_menu_item_menu_item_parent', '0'),
(137, 31, '_menu_item_object_id', '15'),
(138, 31, '_menu_item_object', 'page'),
(139, 31, '_menu_item_target', ''),
(140, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(141, 31, '_menu_item_xfn', ''),
(142, 31, '_menu_item_url', ''),
(143, 31, '_menu_item_orphaned', '1552307722'),
(144, 32, '_menu_item_type', 'post_type'),
(145, 32, '_menu_item_menu_item_parent', '0'),
(146, 32, '_menu_item_object_id', '13'),
(147, 32, '_menu_item_object', 'page'),
(148, 32, '_menu_item_target', ''),
(149, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(150, 32, '_menu_item_xfn', ''),
(151, 32, '_menu_item_url', ''),
(153, 33, '_menu_item_type', 'post_type'),
(154, 33, '_menu_item_menu_item_parent', '0'),
(155, 33, '_menu_item_object_id', '11'),
(156, 33, '_menu_item_object', 'page'),
(157, 33, '_menu_item_target', ''),
(158, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(159, 33, '_menu_item_xfn', ''),
(160, 33, '_menu_item_url', ''),
(161, 33, '_menu_item_orphaned', '1552307722'),
(162, 34, '_menu_item_type', 'post_type'),
(163, 34, '_menu_item_menu_item_parent', '0'),
(164, 34, '_menu_item_object_id', '9'),
(165, 34, '_menu_item_object', 'page'),
(166, 34, '_menu_item_target', ''),
(167, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(168, 34, '_menu_item_xfn', ''),
(169, 34, '_menu_item_url', ''),
(170, 34, '_menu_item_orphaned', '1552307722'),
(171, 35, '_menu_item_type', 'post_type'),
(172, 35, '_menu_item_menu_item_parent', '0'),
(173, 35, '_menu_item_object_id', '19'),
(174, 35, '_menu_item_object', 'page'),
(175, 35, '_menu_item_target', ''),
(176, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(177, 35, '_menu_item_xfn', ''),
(178, 35, '_menu_item_url', ''),
(180, 36, '_menu_item_type', 'post_type'),
(181, 36, '_menu_item_menu_item_parent', '0'),
(182, 36, '_menu_item_object_id', '17'),
(183, 36, '_menu_item_object', 'page'),
(184, 36, '_menu_item_target', ''),
(185, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(186, 36, '_menu_item_xfn', ''),
(187, 36, '_menu_item_url', ''),
(189, 37, '_menu_item_type', 'post_type'),
(190, 37, '_menu_item_menu_item_parent', '0'),
(191, 37, '_menu_item_object_id', '15'),
(192, 37, '_menu_item_object', 'page'),
(193, 37, '_menu_item_target', ''),
(194, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(195, 37, '_menu_item_xfn', ''),
(196, 37, '_menu_item_url', ''),
(198, 38, '_menu_item_type', 'post_type'),
(199, 38, '_menu_item_menu_item_parent', '0'),
(200, 38, '_menu_item_object_id', '13'),
(201, 38, '_menu_item_object', 'page'),
(202, 38, '_menu_item_target', ''),
(203, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(204, 38, '_menu_item_xfn', ''),
(205, 38, '_menu_item_url', ''),
(207, 39, '_menu_item_type', 'post_type'),
(208, 39, '_menu_item_menu_item_parent', '0'),
(209, 39, '_menu_item_object_id', '11'),
(210, 39, '_menu_item_object', 'page'),
(211, 39, '_menu_item_target', ''),
(212, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(213, 39, '_menu_item_xfn', ''),
(214, 39, '_menu_item_url', ''),
(216, 40, '_menu_item_type', 'post_type'),
(217, 40, '_menu_item_menu_item_parent', '0'),
(218, 40, '_menu_item_object_id', '9'),
(219, 40, '_menu_item_object', 'page'),
(220, 40, '_menu_item_target', ''),
(221, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(222, 40, '_menu_item_xfn', ''),
(223, 40, '_menu_item_url', ''),
(225, 41, '_wp_trash_meta_status', 'publish'),
(226, 41, '_wp_trash_meta_time', '1552308350'),
(227, 42, '_wp_trash_meta_status', 'publish'),
(228, 42, '_wp_trash_meta_time', '1552308717'),
(229, 43, '_wp_trash_meta_status', 'publish'),
(230, 43, '_wp_trash_meta_time', '1552308726'),
(231, 44, '_wp_trash_meta_status', 'publish'),
(232, 44, '_wp_trash_meta_time', '1552313445'),
(233, 45, '_wp_trash_meta_status', 'publish'),
(234, 45, '_wp_trash_meta_time', '1552382048'),
(235, 46, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(236, 46, '_mail', 'a:8:{s:7:\"subject\";s:21:\"akad \"[your-subject]\"\";s:6:\"sender\";s:24:\"akad <wordpress@akad.ua>\";s:4:\"body\";s:157:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on akad (http://akad.ua)\";s:9:\"recipient\";s:29:\"nataliya.likhachova@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(237, 46, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:21:\"akad \"[your-subject]\"\";s:6:\"sender\";s:24:\"akad <wordpress@akad.ua>\";s:4:\"body\";s:99:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on akad (http://akad.ua)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:39:\"Reply-To: nataliya.likhachova@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(238, 46, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(239, 46, '_additional_settings', NULL),
(240, 46, '_locale', 'en_US'),
(241, 47, '_edit_lock', '1552400862:1'),
(242, 47, '_wp_trash_meta_status', 'publish'),
(243, 47, '_wp_trash_meta_time', '1552400900'),
(244, 11, '_wp_page_template', 'about.php'),
(245, 11, '_edit_last', '1'),
(246, 11, '_yoast_wpseo_content_score', '60'),
(247, 17, '_wp_page_template', 'blog.php'),
(248, 17, '_edit_last', '1'),
(249, 17, '_yoast_wpseo_content_score', '60'),
(250, 9, '_wp_page_template', 'main-page.php'),
(251, 9, '_edit_last', '1'),
(252, 9, '_yoast_wpseo_content_score', '30'),
(253, 1, '_edit_lock', '1552413167:1'),
(254, 50, '_wp_attached_file', '2019/03/Layer_13.png'),
(255, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:83;s:6:\"height\";i:82;s:4:\"file\";s:20:\"2019/03/Layer_13.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(256, 11, 'about_slider_show', 'off'),
(257, 11, 'about_slider_list', 'a:2:{i:0;a:3:{s:5:\"title\";s:5:\"titte\";s:24:\"about_slider_list_header\";s:8:\"headline\";s:24:\"about_slider_list_upload\";s:54:\"http://akad.ua/wp-content/uploads/2019/03/Layer_13.png\";}i:1;a:3:{s:5:\"title\";s:6:\"titli2\";s:24:\"about_slider_list_header\";s:10:\"headline 2\";s:24:\"about_slider_list_upload\";s:54:\"http://akad.ua/wp-content/uploads/2019/03/Layer_13.png\";}}'),
(258, 11, 'about_advansed_show', 'on'),
(259, 11, 'about_advansed_list', 'a:6:{i:4;a:4:{s:5:\"title\";s:17:\"FULLY RESPONSIVE \";s:24:\"about_slider_list_upload\";s:56:\"http://akad.ua/wp-content/uploads/2019/03/2-layers-5.png\";s:26:\"about_advansed_list_header\";s:16:\"FULLY RESPONSIVE\";s:24:\"about_advansed_list_text\";s:735:\"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\n\";}i:6;a:4:{s:5:\"title\";s:17:\"UNLIMITED OPTIONS\";s:24:\"about_slider_list_upload\";s:56:\"http://akad.ua/wp-content/uploads/2019/03/2-layers-4.png\";s:26:\"about_advansed_list_header\";s:17:\"UNLIMITED OPTIONS\";s:24:\"about_advansed_list_text\";s:735:\"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\n\";}i:7;a:4:{s:5:\"title\";s:9:\"WORDPRESS\";s:24:\"about_slider_list_upload\";s:56:\"http://akad.ua/wp-content/uploads/2019/03/2-layers-3.png\";s:26:\"about_advansed_list_header\";s:9:\"WORDPRESS\";s:24:\"about_advansed_list_text\";s:735:\"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\n\";}i:8;a:4:{s:5:\"title\";s:10:\"e-commerce\";s:24:\"about_slider_list_upload\";s:56:\"http://akad.ua/wp-content/uploads/2019/03/2-layers-2.png\";s:26:\"about_advansed_list_header\";s:10:\"e-commerce\";s:24:\"about_advansed_list_text\";s:735:\"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\n\";}i:9;a:4:{s:5:\"title\";s:19:\"CUSTOMIZABLE DESIGN\";s:24:\"about_slider_list_upload\";s:56:\"http://akad.ua/wp-content/uploads/2019/03/2-layers-1.png\";s:26:\"about_advansed_list_header\";s:19:\"CUSTOMIZABLE DESIGN\";s:24:\"about_advansed_list_text\";s:735:\"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\n\";}i:10;a:4:{s:5:\"title\";s:7:\"SUPPORT\";s:24:\"about_slider_list_upload\";s:54:\"http://akad.ua/wp-content/uploads/2019/03/2-layers.png\";s:26:\"about_advansed_list_header\";s:7:\"SUPPORT\";s:24:\"about_advansed_list_text\";s:735:\"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In eleifend suscipit enim, eu commodo neque molestie vitae.\r\n\";}}'),
(260, 53, '_wp_attached_file', '2019/03/2-layers-1.png'),
(261, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:40;s:6:\"height\";i:40;s:4:\"file\";s:22:\"2019/03/2-layers-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(262, 54, '_wp_attached_file', '2019/03/2-layers-2.png'),
(263, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:40;s:6:\"height\";i:40;s:4:\"file\";s:22:\"2019/03/2-layers-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(264, 55, '_wp_attached_file', '2019/03/2-layers-3.png'),
(265, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:40;s:6:\"height\";i:40;s:4:\"file\";s:22:\"2019/03/2-layers-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(266, 56, '_wp_attached_file', '2019/03/2-layers-4.png'),
(267, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:40;s:6:\"height\";i:40;s:4:\"file\";s:22:\"2019/03/2-layers-4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(268, 57, '_wp_attached_file', '2019/03/2-layers-5.png'),
(269, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:40;s:6:\"height\";i:40;s:4:\"file\";s:22:\"2019/03/2-layers-5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(270, 58, '_wp_attached_file', '2019/03/2-layers.png'),
(271, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:40;s:6:\"height\";i:40;s:4:\"file\";s:20:\"2019/03/2-layers.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(272, 59, '_edit_last', '1'),
(273, 59, '_edit_lock', '1552497591:1'),
(274, 11, 'titel', 'What We Do'),
(275, 11, '_titel', 'field_5c893a9388e62'),
(276, 11, 'subtitle', 'Creative & Digital'),
(277, 11, '_subtitle', 'field_5c893b3b88e63'),
(278, 11, 'text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.'),
(279, 11, '_text', 'field_5c893b6088e64'),
(280, 63, 'titel', 'What We Do'),
(281, 63, '_titel', 'field_5c893a9388e62'),
(282, 63, 'subtitle', 'Creative & Digital'),
(283, 63, '_subtitle', 'field_5c893b3b88e63'),
(284, 63, 'text', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.'),
(285, 63, '_text', 'field_5c893b6088e64'),
(286, 11, 'about_information_show', 'on'),
(287, 11, 'about_information_list', 'a:2:{i:0;a:4:{s:5:\"title\";s:8:\"about us\";s:29:\"about_information_list_header\";s:8:\"about us\";s:31:\"about_information_list_subtitle\";s:14:\"We are awesome\";s:27:\"about_information_list_text\";s:543:\"Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\";}i:1;a:4:{s:5:\"title\";s:10:\"What We Do\";s:29:\"about_information_list_header\";s:10:\"What We Do\";s:31:\"about_information_list_subtitle\";s:18:\"Creative & Digital\";s:27:\"about_information_list_text\";s:543:\"Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\";}}'),
(288, 64, '_wp_attached_file', '2019/03/Layer_5.png'),
(289, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:263;s:6:\"height\";i:333;s:4:\"file\";s:19:\"2019/03/Layer_5.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Layer_5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Layer_5-237x300.png\";s:5:\"width\";i:237;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(290, 65, '_wp_attached_file', '2019/03/Layer_6.png'),
(291, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:263;s:6:\"height\";i:334;s:4:\"file\";s:19:\"2019/03/Layer_6.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Layer_6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Layer_6-236x300.png\";s:5:\"width\";i:236;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(292, 66, '_wp_attached_file', '2019/03/Layer_7.png'),
(293, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:264;s:6:\"height\";i:335;s:4:\"file\";s:19:\"2019/03/Layer_7.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Layer_7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Layer_7-236x300.png\";s:5:\"width\";i:236;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(294, 67, '_wp_attached_file', '2019/03/Layer_8.png'),
(295, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:262;s:6:\"height\";i:335;s:4:\"file\";s:19:\"2019/03/Layer_8.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Layer_8-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Layer_8-235x300.png\";s:5:\"width\";i:235;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(296, 68, '_wp_attached_file', '2019/03/Layer_9.png'),
(297, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:263;s:6:\"height\";i:336;s:4:\"file\";s:19:\"2019/03/Layer_9.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Layer_9-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Layer_9-235x300.png\";s:5:\"width\";i:235;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(298, 69, '_wp_attached_file', '2019/03/Layer_10.png'),
(299, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:262;s:6:\"height\";i:335;s:4:\"file\";s:20:\"2019/03/Layer_10.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Layer_10-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Layer_10-235x300.png\";s:5:\"width\";i:235;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(300, 70, '_wp_attached_file', '2019/03/Layer_11.png'),
(301, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:263;s:6:\"height\";i:335;s:4:\"file\";s:20:\"2019/03/Layer_11.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Layer_11-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Layer_11-236x300.png\";s:5:\"width\";i:236;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(302, 71, '_wp_attached_file', '2019/03/Layer_12.png'),
(303, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:262;s:6:\"height\";i:335;s:4:\"file\";s:20:\"2019/03/Layer_12.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Layer_12-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Layer_12-235x300.png\";s:5:\"width\";i:235;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(304, 11, 'about_team_show', 'on'),
(305, 11, 'about_team_list', 'a:8:{i:0;a:2:{s:5:\"title\";s:1:\"1\";s:22:\"about_team_list_upload\";s:53:\"http://akad.ua/wp-content/uploads/2019/03/Layer_5.png\";}i:1;a:2:{s:5:\"title\";s:1:\"2\";s:22:\"about_team_list_upload\";s:53:\"http://akad.ua/wp-content/uploads/2019/03/Layer_6.png\";}i:2;a:2:{s:5:\"title\";s:1:\"3\";s:22:\"about_team_list_upload\";s:53:\"http://akad.ua/wp-content/uploads/2019/03/Layer_7.png\";}i:3;a:2:{s:5:\"title\";s:1:\"4\";s:22:\"about_team_list_upload\";s:53:\"http://akad.ua/wp-content/uploads/2019/03/Layer_8.png\";}i:4;a:2:{s:5:\"title\";s:1:\"5\";s:22:\"about_team_list_upload\";s:53:\"http://akad.ua/wp-content/uploads/2019/03/Layer_9.png\";}i:5;a:2:{s:5:\"title\";s:1:\"6\";s:22:\"about_team_list_upload\";s:54:\"http://akad.ua/wp-content/uploads/2019/03/Layer_10.png\";}i:6;a:2:{s:5:\"title\";s:1:\"7\";s:22:\"about_team_list_upload\";s:54:\"http://akad.ua/wp-content/uploads/2019/03/Layer_11.png\";}i:7;a:2:{s:5:\"title\";s:1:\"8\";s:22:\"about_team_list_upload\";s:54:\"http://akad.ua/wp-content/uploads/2019/03/Layer_12.png\";}}'),
(307, 73, '_wp_attached_file', '2019/03/1-1.png'),
(308, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:28;s:6:\"height\";i:28;s:4:\"file\";s:15:\"2019/03/1-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(309, 74, '_wp_attached_file', '2019/03/1-2.png'),
(310, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:457;s:6:\"height\";i:500;s:4:\"file\";s:15:\"2019/03/1-2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-2-274x300.png\";s:5:\"width\";i:274;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(311, 75, '_wp_attached_file', '2019/03/1-3.png'),
(312, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:28;s:6:\"height\";i:28;s:4:\"file\";s:15:\"2019/03/1-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(313, 76, '_wp_attached_file', '2019/03/1-4.png'),
(314, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:32;s:6:\"height\";i:14;s:4:\"file\";s:15:\"2019/03/1-4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(315, 77, '_wp_attached_file', '2019/03/1-5.png'),
(316, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:32;s:6:\"height\";i:24;s:4:\"file\";s:15:\"2019/03/1-5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(317, 9, 'main_choose_show', 'on'),
(318, 9, 'main_choose_list', 'a:4:{i:0;a:4:{s:5:\"title\";s:17:\"unlimited options\";s:23:\"main_choose_list_upload\";s:49:\"http://akad.ua/wp-content/uploads/2019/03/1-4.png\";s:23:\"main_choose_list_header\";s:17:\"unlimited options\";s:21:\"main_choose_list_text\";s:68:\"Branding\r\nDesign & Copywriting\r\nConcept development\r\nUser Experience\";}i:1;a:4:{s:5:\"title\";s:20:\"DESIGN & DEVELOPMENT\";s:23:\"main_choose_list_upload\";s:49:\"http://akad.ua/wp-content/uploads/2019/03/1-1.png\";s:23:\"main_choose_list_header\";s:20:\"DESIGN & DEVELOPMENT\";s:21:\"main_choose_list_text\";s:83:\"Information architecture\r\nInterface design\r\nProduct Design\r\nIntegrated ad Companies\";}i:2;a:4:{s:5:\"title\";s:10:\"e-commerce\";s:23:\"main_choose_list_upload\";s:49:\"http://akad.ua/wp-content/uploads/2019/03/1-3.png\";s:23:\"main_choose_list_header\";s:10:\"e-commerce\";s:21:\"main_choose_list_text\";s:68:\"Prototyping\r\nTechnical Consulting\r\nWeb applications\r\nQuality testing\";}i:3;a:4:{s:5:\"title\";s:20:\" CUSTOMIZABLE DESIGN\";s:23:\"main_choose_list_upload\";s:49:\"http://akad.ua/wp-content/uploads/2019/03/1-5.png\";s:23:\"main_choose_list_header\";s:20:\" CUSTOMIZABLE DESIGN\";s:21:\"main_choose_list_text\";s:83:\"Information architecture\r\nInterface design\r\nProduct Design\r\nIntegrated ad Companies\";}}'),
(319, 78, '_form', '<label>\n   </label>[text* mail-form placeholder \"your email\"]\n\n[submit \"Send\"]'),
(320, 78, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:21:\"akad \"[your-subject]\"\";s:6:\"sender\";s:24:\"akad <wordpress@akad.ua>\";s:9:\"recipient\";s:29:\"nataliya.likhachova@gmail.com\";s:4:\"body\";s:157:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on akad (http://akad.ua)\";s:18:\"additional_headers\";s:24:\"Reply-To:[Contact-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(321, 78, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:21:\"akad \"[your-subject]\"\";s:6:\"sender\";s:24:\"akad <wordpress@akad.ua>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:99:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on akad (http://akad.ua)\";s:18:\"additional_headers\";s:39:\"Reply-To: nataliya.likhachova@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(322, 78, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(323, 78, '_additional_settings', ''),
(324, 78, '_locale', 'en_US'),
(326, 79, '_wp_trash_meta_status', 'publish'),
(327, 79, '_wp_trash_meta_time', '1552564071'),
(329, 78, '_config_errors', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(330, 9, 'main_newsletter_show', 'on'),
(331, 9, 'main_newsletter_list', 'a:1:{i:0;a:4:{s:5:\"title\";s:10:\"newsletter\";s:27:\"main_newsletter_list_header\";s:42:\"YOU THINK WE\'RE COOL ? LET\'S WORK TOGETHER\";s:35:\"main_newsletter_list_second_heading\";s:33:\"STAY INFORMED WITH OUR NEWSLETTER\";s:25:\"main_newsletter_list_text\";s:124:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\";}}'),
(332, 11, 'about_newsletter_show', 'on'),
(333, 11, 'about_newsletter_list', 'a:1:{i:0;a:4:{s:5:\"title\";s:10:\"newsletter\";s:28:\"about_newsletter_list_header\";s:42:\"YOU THINK WE\'RE COOL ? LET\'S WORK TOGETHER\";s:36:\"about_newsletter_list_second_heading\";s:33:\"STAY INFORMED WITH OUR NEWSLETTER\";s:26:\"about_newsletter_list_text\";s:124:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\";}}'),
(334, 17, 'blog_newsletter_show', 'on'),
(335, 17, 'blog_newsletter_list', 'a:1:{i:0;a:4:{s:5:\"title\";s:10:\"newsletter\";s:27:\"blog_newsletter_list_header\";s:42:\"YOU THINK WE\'RE COOL ? LET\'S WORK TOGETHER\";s:35:\"blog_newsletter_list_second_heading\";s:33:\"STAY INFORMED WITH OUR NEWSLETTER\";s:25:\"blog_newsletter_list_text\";s:124:\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\";}}'),
(336, 83, '_wp_attached_file', '2019/03/2-layers-1-1.png'),
(337, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:165;s:6:\"height\";i:100;s:4:\"file\";s:24:\"2019/03/2-layers-1-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"2-layers-1-1-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(338, 84, '_wp_attached_file', '2019/03/2-layers-2-1.png'),
(339, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:165;s:6:\"height\";i:100;s:4:\"file\";s:24:\"2019/03/2-layers-2-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"2-layers-2-1-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(340, 85, '_wp_attached_file', '2019/03/2-layers-3-1.png'),
(341, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:165;s:6:\"height\";i:100;s:4:\"file\";s:24:\"2019/03/2-layers-3-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"2-layers-3-1-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(342, 86, '_wp_attached_file', '2019/03/2-layers-4-1.png'),
(343, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:165;s:6:\"height\";i:100;s:4:\"file\";s:24:\"2019/03/2-layers-4-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"2-layers-4-1-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(344, 87, '_wp_attached_file', '2019/03/2-layers-5-1.png'),
(345, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:165;s:6:\"height\";i:100;s:4:\"file\";s:24:\"2019/03/2-layers-5-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"2-layers-5-1-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(346, 88, '_wp_attached_file', '2019/03/2-layers-6.png'),
(347, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:165;s:6:\"height\";i:100;s:4:\"file\";s:22:\"2019/03/2-layers-6.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"2-layers-6-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(348, 11, 'about_clients_show', 'on'),
(349, 11, 'about_clients_list', 'a:6:{i:0;a:2:{s:5:\"title\";s:1:\"1\";s:25:\"about_clients_list_upload\";s:56:\"http://akad.ua/wp-content/uploads/2019/03/2-layers-6.png\";}i:1;a:2:{s:5:\"title\";s:1:\"2\";s:25:\"about_clients_list_upload\";s:58:\"http://akad.ua/wp-content/uploads/2019/03/2-layers-5-1.png\";}i:2;a:2:{s:5:\"title\";s:1:\"3\";s:25:\"about_clients_list_upload\";s:58:\"http://akad.ua/wp-content/uploads/2019/03/2-layers-4-1.png\";}i:3;a:2:{s:5:\"title\";s:1:\"4\";s:25:\"about_clients_list_upload\";s:58:\"http://akad.ua/wp-content/uploads/2019/03/2-layers-3-1.png\";}i:4;a:2:{s:5:\"title\";s:1:\"5\";s:25:\"about_clients_list_upload\";s:58:\"http://akad.ua/wp-content/uploads/2019/03/2-layers-2-1.png\";}i:5;a:2:{s:5:\"title\";s:1:\"6\";s:25:\"about_clients_list_upload\";s:58:\"http://akad.ua/wp-content/uploads/2019/03/2-layers-1-1.png\";}}'),
(350, 89, '_edit_lock', '1552693505:1'),
(351, 90, '_wp_attached_file', '2019/03/Layer_9-1.png'),
(352, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2019/03/Layer_9-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Layer_9-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Layer_9-1-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(355, 89, '_edit_last', '1'),
(358, 89, 'demo_show_gallery', 'off'),
(359, 89, '_yoast_wpseo_primary_category', '5'),
(360, 89, '_yoast_wpseo_content_score', '60'),
(382, 1, '_wp_trash_meta_status', 'publish'),
(383, 1, '_wp_trash_meta_time', '1552584722'),
(384, 1, '_wp_desired_post_slug', 'hello-world'),
(385, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(386, 100, '_edit_lock', '1552693145:1'),
(389, 100, '_edit_last', '1'),
(392, 100, 'demo_show_gallery', 'off'),
(393, 100, '_yoast_wpseo_primary_category', '5'),
(394, 100, '_yoast_wpseo_content_score', '60'),
(395, 102, '_edit_lock', '1552692896:1'),
(398, 102, '_edit_last', '1'),
(401, 102, 'demo_show_gallery', 'off'),
(402, 102, '_yoast_wpseo_primary_category', '5'),
(403, 102, '_yoast_wpseo_content_score', '60'),
(406, 102, '_thumbnail_id', '90'),
(411, 100, '_thumbnail_id', '90'),
(416, 89, '_thumbnail_id', '90'),
(431, 106, '_wp_trash_meta_status', 'publish'),
(432, 106, '_wp_trash_meta_time', '1552592935'),
(449, 108, '_wp_trash_meta_status', 'publish'),
(450, 108, '_wp_trash_meta_time', '1552593308'),
(451, 109, '_wp_trash_meta_status', 'publish'),
(452, 109, '_wp_trash_meta_time', '1552593354'),
(463, 89, '_pingme', '1'),
(464, 89, '_encloseme', '1'),
(465, 112, '_wp_trash_meta_status', 'publish'),
(466, 112, '_wp_trash_meta_time', '1552593559'),
(467, 113, '_wp_trash_meta_status', 'publish'),
(468, 113, '_wp_trash_meta_time', '1552593604'),
(469, 115, '_edit_lock', '1552670092:1'),
(470, 115, '_edit_last', '1'),
(471, 115, '_yoast_wpseo_content_score', '30'),
(472, 115, '_wp_page_template', 'header.php'),
(473, 115, 'header_logo_show', 'on'),
(474, 115, 'header_logo_list', 'a:1:{i:0;a:2:{s:5:\"title\";s:4:\"logo\";s:23:\"header_logo_list_header\";s:3:\"ava\";}}'),
(475, 115, '_wp_trash_meta_status', 'publish'),
(476, 115, '_wp_trash_meta_time', '1552670245'),
(477, 115, '_wp_desired_post_slug', 'header');

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
(1, 1, '2019-03-11 07:07:38', '2019-03-11 07:07:38', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2019-03-14 17:32:02', '2019-03-14 17:32:02', '', 0, 'http://akad.ua/?p=1', 0, 'post', '', 1),
(2, 1, '2019-03-11 07:07:38', '2019-03-11 07:07:38', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://akad.ua/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-03-11 07:07:38', '2019-03-11 07:07:38', '', 0, 'http://akad.ua/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-03-11 07:07:38', '2019-03-11 07:07:38', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://akad.ua.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-03-11 07:07:38', '2019-03-11 07:07:38', '', 0, 'http://akad.ua/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-03-11 12:00:45', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-11 12:00:45', '0000-00-00 00:00:00', '', 0, 'http://akad.ua/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2019-03-11 12:00:45', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-11 12:00:45', '0000-00-00 00:00:00', '', 0, 'http://akad.ua/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2019-03-11 12:27:18', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-11 12:27:18', '0000-00-00 00:00:00', '', 0, 'http://akad.ua/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2019-03-11 12:27:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-11 12:27:18', '0000-00-00 00:00:00', '', 0, 'http://akad.ua/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2019-03-11 12:28:16', '2019-03-11 12:28:16', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\"></pre>\n<!-- /wp:preformatted -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-03-15 17:21:31', '2019-03-15 17:21:31', '', 0, 'http://akad.ua/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-03-11 12:28:16', '2019-03-11 12:28:16', '<!-- wp:paragraph -->\n<p>Home</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-03-11 12:28:16', '2019-03-11 12:28:16', '', 9, 'http://akad.ua/2019/03/11/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-03-11 12:28:36', '2019-03-11 12:28:36', '<!-- wp:paragraph -->\n<p>The sun is beautiful!))))</p>\n<!-- /wp:paragraph -->', 'about us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2019-03-15 23:17:25', '2019-03-15 23:17:25', '', 0, 'http://akad.ua/?page_id=11', 0, 'page', '', 0),
(12, 1, '2019-03-11 12:28:36', '2019-03-11 12:28:36', '<!-- wp:paragraph -->\n<p>about us</p>\n<!-- /wp:paragraph -->', 'about us', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-03-11 12:28:36', '2019-03-11 12:28:36', '', 11, 'http://akad.ua/2019/03/11/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-03-11 12:28:55', '2019-03-11 12:28:55', '<!-- wp:paragraph -->\n<p>services</p>\n<!-- /wp:paragraph -->', 'services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2019-03-11 12:28:55', '2019-03-11 12:28:55', '', 0, 'http://akad.ua/?page_id=13', 0, 'page', '', 0),
(14, 1, '2019-03-11 12:28:55', '2019-03-11 12:28:55', '<!-- wp:paragraph -->\n<p>services</p>\n<!-- /wp:paragraph -->', 'services', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-03-11 12:28:55', '2019-03-11 12:28:55', '', 13, 'http://akad.ua/2019/03/11/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-03-11 12:29:11', '2019-03-11 12:29:11', '<!-- wp:paragraph -->\n<p>portfolio</p>\n<!-- /wp:paragraph -->', 'portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2019-03-11 12:29:11', '2019-03-11 12:29:11', '', 0, 'http://akad.ua/?page_id=15', 0, 'page', '', 0),
(16, 1, '2019-03-11 12:29:11', '2019-03-11 12:29:11', '<!-- wp:paragraph -->\n<p>portfolio</p>\n<!-- /wp:paragraph -->', 'portfolio', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-03-11 12:29:11', '2019-03-11 12:29:11', '', 15, 'http://akad.ua/2019/03/11/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-03-11 12:29:24', '2019-03-11 12:29:24', '<!-- wp:paragraph -->\n<p>blog</p>\n<!-- /wp:paragraph -->', 'blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-03-14 14:11:37', '2019-03-14 14:11:37', '', 0, 'http://akad.ua/?page_id=17', 0, 'page', '', 0),
(18, 1, '2019-03-11 12:29:24', '2019-03-11 12:29:24', '<!-- wp:paragraph -->\n<p>blog</p>\n<!-- /wp:paragraph -->', 'blog', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-03-11 12:29:24', '2019-03-11 12:29:24', '', 17, 'http://akad.ua/2019/03/11/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-03-11 12:29:41', '2019-03-11 12:29:41', '<!-- wp:paragraph -->\n<p>contact us</p>\n<!-- /wp:paragraph -->', 'contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2019-03-11 12:29:41', '2019-03-11 12:29:41', '', 0, 'http://akad.ua/?page_id=19', 0, 'page', '', 0),
(20, 1, '2019-03-11 12:29:41', '2019-03-11 12:29:41', '<!-- wp:paragraph -->\n<p>contact us</p>\n<!-- /wp:paragraph -->', 'contact us', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-03-11 12:29:41', '2019-03-11 12:29:41', '', 19, 'http://akad.ua/2019/03/11/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-03-11 12:30:40', '2019-03-11 12:30:40', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-03-11 12:41:21', '2019-03-11 12:41:21', '', 0, 'http://akad.ua/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2019-03-11 12:30:40', '2019-03-11 12:30:40', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2019-03-11 12:41:21', '2019-03-11 12:41:21', '', 0, 'http://akad.ua/?p=22', 2, 'nav_menu_item', '', 0),
(23, 1, '2019-03-11 12:30:40', '2019-03-11 12:30:40', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2019-03-11 12:41:21', '2019-03-11 12:41:21', '', 0, 'http://akad.ua/?p=23', 3, 'nav_menu_item', '', 0),
(24, 1, '2019-03-11 12:30:40', '2019-03-11 12:30:40', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2019-03-11 12:41:21', '2019-03-11 12:41:21', '', 0, 'http://akad.ua/?p=24', 4, 'nav_menu_item', '', 0),
(25, 1, '2019-03-11 12:29:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-11 12:29:48', '0000-00-00 00:00:00', '', 0, 'http://akad.ua/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2019-03-11 12:30:40', '2019-03-11 12:30:40', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2019-03-11 12:41:21', '2019-03-11 12:41:21', '', 0, 'http://akad.ua/?p=26', 5, 'nav_menu_item', '', 0),
(27, 1, '2019-03-11 12:29:48', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-11 12:29:48', '0000-00-00 00:00:00', '', 0, 'http://akad.ua/?p=27', 1, 'nav_menu_item', '', 0),
(29, 1, '2019-03-11 12:35:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-11 12:35:22', '0000-00-00 00:00:00', '', 0, 'http://akad.ua/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2019-03-11 12:35:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-11 12:35:22', '0000-00-00 00:00:00', '', 0, 'http://akad.ua/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2019-03-11 12:35:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-11 12:35:22', '0000-00-00 00:00:00', '', 0, 'http://akad.ua/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2019-03-11 12:37:00', '2019-03-11 12:37:00', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2019-03-11 14:10:45', '2019-03-11 14:10:45', '', 0, 'http://akad.ua/?p=32', 6, 'nav_menu_item', '', 0),
(33, 1, '2019-03-11 12:35:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-11 12:35:22', '0000-00-00 00:00:00', '', 0, 'http://akad.ua/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2019-03-11 12:35:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-11 12:35:22', '0000-00-00 00:00:00', '', 0, 'http://akad.ua/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2019-03-11 12:44:51', '2019-03-11 12:44:51', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2019-03-11 12:51:11', '2019-03-11 12:51:11', '', 0, 'http://akad.ua/?p=35', 6, 'nav_menu_item', '', 0),
(36, 1, '2019-03-11 12:44:51', '2019-03-11 12:44:51', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2019-03-11 12:51:11', '2019-03-11 12:51:11', '', 0, 'http://akad.ua/?p=36', 2, 'nav_menu_item', '', 0),
(37, 1, '2019-03-11 12:44:51', '2019-03-11 12:44:51', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2019-03-11 12:51:11', '2019-03-11 12:51:11', '', 0, 'http://akad.ua/?p=37', 3, 'nav_menu_item', '', 0),
(38, 1, '2019-03-11 12:44:51', '2019-03-11 12:44:51', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2019-03-11 12:52:06', '2019-03-11 12:52:06', '', 0, 'http://akad.ua/?p=38', 4, 'nav_menu_item', '', 0),
(39, 1, '2019-03-11 12:44:51', '2019-03-11 12:44:51', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2019-03-11 12:51:11', '2019-03-11 12:51:11', '', 0, 'http://akad.ua/?p=39', 5, 'nav_menu_item', '', 0),
(40, 1, '2019-03-11 12:44:51', '2019-03-11 12:44:51', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2019-03-11 12:51:11', '2019-03-11 12:51:11', '', 0, 'http://akad.ua/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2019-03-11 12:45:50', '2019-03-11 12:45:50', '{\n    \"nav_menu_item[35]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 19,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://akad.ua/contact-us/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 6,\n            \"status\": \"publish\",\n            \"original_title\": \"contact us\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-11 12:45:50\"\n    },\n    \"nav_menu_item[36]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 17,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://akad.ua/blog/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"blog\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-11 12:45:50\"\n    },\n    \"nav_menu_item[37]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 15,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://akad.ua/portfolio/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"portfolio\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-11 12:45:50\"\n    },\n    \"nav_menu_item[38]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 13,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://akad.ua/services/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"services\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-11 12:45:50\"\n    },\n    \"nav_menu_item[39]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://akad.ua/about-us/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 5,\n            \"status\": \"publish\",\n            \"original_title\": \"about us\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-11 12:45:50\"\n    },\n    \"nav_menu_item[40]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://akad.ua/home/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-11 12:45:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '11ac6c17-7ed2-45e5-b145-7d598dbb8b16', '', '', '2019-03-11 12:45:50', '2019-03-11 12:45:50', '', 0, 'http://akad.ua/2019/03/11/11ac6c17-7ed2-45e5-b145-7d598dbb8b16/', 0, 'customize_changeset', '', 0),
(42, 1, '2019-03-11 12:51:57', '2019-03-11 12:51:57', '{\n    \"nav_menu_item[32]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 13,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://akad.ua/services/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"fa fa-car\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 6,\n            \"status\": \"publish\",\n            \"original_title\": \"services\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-11 12:51:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5f95e3a0-fbb9-4e41-a882-feae5ad58c9a', '', '', '2019-03-11 12:51:57', '2019-03-11 12:51:57', '', 0, 'http://akad.ua/2019/03/11/5f95e3a0-fbb9-4e41-a882-feae5ad58c9a/', 0, 'customize_changeset', '', 0),
(43, 1, '2019-03-11 12:52:06', '2019-03-11 12:52:06', '{\n    \"nav_menu_item[38]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 13,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://akad.ua/services/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"services\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-11 12:52:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '539dac6e-d0de-4b7f-8485-1eb2e680d4f4', '', '', '2019-03-11 12:52:06', '2019-03-11 12:52:06', '', 0, 'http://akad.ua/2019/03/11/539dac6e-d0de-4b7f-8485-1eb2e680d4f4/', 0, 'customize_changeset', '', 0),
(44, 1, '2019-03-11 14:10:45', '2019-03-11 14:10:45', '{\n    \"nav_menu_item[32]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 13,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://akad.ua/services/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 6,\n            \"status\": \"publish\",\n            \"original_title\": \"services\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-11 14:10:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6237f8ca-a54b-4d91-9eaf-c6eaa1486138', '', '', '2019-03-11 14:10:45', '2019-03-11 14:10:45', '', 0, 'http://akad.ua/2019/03/11/6237f8ca-a54b-4d91-9eaf-c6eaa1486138/', 0, 'customize_changeset', '', 0),
(45, 1, '2019-03-12 09:14:08', '2019-03-12 09:14:08', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-12 09:14:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ebde136e-42f3-411e-bd3d-b8a281e9099a', '', '', '2019-03-12 09:14:08', '2019-03-12 09:14:08', '', 0, 'http://akad.ua/2019/03/12/ebde136e-42f3-411e-bd3d-b8a281e9099a/', 0, 'customize_changeset', '', 0),
(46, 1, '2019-03-12 09:49:37', '2019-03-12 09:49:37', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nakad \"[your-subject]\"\nakad <wordpress@akad.ua>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on akad (http://akad.ua)\nnataliya.likhachova@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nakad \"[your-subject]\"\nakad <wordpress@akad.ua>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on akad (http://akad.ua)\n[your-email]\nReply-To: nataliya.likhachova@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-03-12 09:49:37', '2019-03-12 09:49:37', '', 0, 'http://akad.ua/?post_type=wpcf7_contact_form&p=46', 0, 'wpcf7_contact_form', '', 0),
(47, 1, '2019-03-12 14:28:20', '2019-03-12 14:28:20', '{\n    \"sidebars_widgets[footer]\": {\n        \"value\": [\n            \"custom_html-2\",\n            \"custom_html-4\",\n            \"custom_html-5\",\n            \"custom_html-6\",\n            \"custom_html-7\",\n            \"custom_html-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-12 14:28:20\"\n    },\n    \"widget_custom_html[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czo3OiJjb250ZW50IjtzOjkzOiI8YSBocmVmPSJodHRwczovL3R3aXR0ZXIuY29tLz9sYW5nPXJ1Ij48aSBjbGFzcz0iZmEgZmEtdHdpdHRlciIgYXJpYS1oaWRkZW49InRydWUiPjwvaT4NCjwvYT4iO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"f961c63102644d5eb0694e2afaadf40a\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-12 14:26:42\"\n    },\n    \"widget_custom_html[5]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czo3OiJjb250ZW50IjtzOjkyOiI8YSBocmVmPSJodHRwczovL3d3dy55b3V0dWJlLmNvbS8iPjxpIGNsYXNzPSJmYSBmYS15b3V0dWJlLXBsYXkiIGFyaWEtaGlkZGVuPSJ0cnVlIj48L2k+PC9hPiI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"287a7799f916f5c84a59dca49488b2aa\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-12 14:27:42\"\n    },\n    \"widget_custom_html[6]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czo3OiJjb250ZW50IjtzOjk2OiI8YSBocmVmPSJodHRwczovL3d3dy5saW5rZWRpbi5jb20vIj48aSBjbGFzcz0iZmEgZmEtbGlua2VkaW4tc3F1YXJlIiBhcmlhLWhpZGRlbj0idHJ1ZSI+PC9pPjwvYT4iO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"28370ae88f868405d2dc12311d91e636\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-12 14:27:42\"\n    },\n    \"widget_custom_html[7]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czo3OiJjb250ZW50IjtzOjkxOiI8YSBocmVmPSJodHRwczovL3d3dy5waW50ZXJlc3QuY29tLyI+PGkgY2xhc3M9ImZhIGZhLXBpbnRlcmVzdCIgYXJpYS1oaWRkZW49InRydWUiPjwvaT48L2E+Ijt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"02623a19008f6263a13f88d02e16df4b\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-12 14:28:20\"\n    },\n    \"widget_custom_html[8]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czo3OiJjb250ZW50IjtzOjkxOiI8YSBocmVmPSJodHRwczovL3d3dy5pbnN0YWdyYW0uY29tLyI+PGkgY2xhc3M9ImZhIGZhLWluc3RhZ3JhbSIgYXJpYS1oaWRkZW49InRydWUiPjwvaT48L2E+Ijt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"774629a1d07f8d1d6bc2d3c39b43af29\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-12 14:28:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '914db680-848d-4495-b22f-262f823075ac', '', '', '2019-03-12 14:28:20', '2019-03-12 14:28:20', '', 0, 'http://akad.ua/?p=47', 0, 'customize_changeset', '', 0),
(49, 1, '2019-03-12 16:51:35', '2019-03-12 16:51:35', '', 'Media', '', 'private', 'closed', 'closed', '', 'media', '', '', '2019-03-12 16:51:35', '2019-03-12 16:51:35', '', 0, 'http://akad.ua/?option-tree=media', 0, 'option-tree', '', 0),
(50, 1, '2019-03-12 18:14:47', '2019-03-12 18:14:47', '', 'Layer_13', '', 'inherit', 'open', 'closed', '', 'layer_13', '', '', '2019-03-12 18:14:47', '2019-03-12 18:14:47', '', 11, 'http://akad.ua/wp-content/uploads/2019/03/Layer_13.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2019-03-12 18:16:21', '2019-03-12 18:16:21', '<!-- wp:paragraph -->\n<p>Natali is beautiful!))))</p>\n<!-- /wp:paragraph -->', 'about us', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-03-12 18:16:21', '2019-03-12 18:16:21', '', 11, 'http://akad.ua/2019/03/12/11-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-03-12 20:17:02', '2019-03-12 20:17:02', '<!-- wp:paragraph -->\n<p>The sun is beautiful!))))</p>\n<!-- /wp:paragraph -->', 'about us', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-03-12 20:17:02', '2019-03-12 20:17:02', '', 11, 'http://akad.ua/2019/03/12/11-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2019-03-13 08:34:04', '2019-03-13 08:34:04', '', '2-layers (1)', '', 'inherit', 'open', 'closed', '', '2-layers-1', '', '', '2019-03-13 08:34:04', '2019-03-13 08:34:04', '', 11, 'http://akad.ua/wp-content/uploads/2019/03/2-layers-1.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2019-03-13 08:34:05', '2019-03-13 08:34:05', '', '2-layers (2)', '', 'inherit', 'open', 'closed', '', '2-layers-2', '', '', '2019-03-13 08:34:05', '2019-03-13 08:34:05', '', 11, 'http://akad.ua/wp-content/uploads/2019/03/2-layers-2.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2019-03-13 08:34:06', '2019-03-13 08:34:06', '', '2-layers (3)', '', 'inherit', 'open', 'closed', '', '2-layers-3', '', '', '2019-03-13 08:34:06', '2019-03-13 08:34:06', '', 11, 'http://akad.ua/wp-content/uploads/2019/03/2-layers-3.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2019-03-13 08:34:06', '2019-03-13 08:34:06', '', '2-layers (4)', '', 'inherit', 'open', 'closed', '', '2-layers-4', '', '', '2019-03-13 08:34:06', '2019-03-13 08:34:06', '', 11, 'http://akad.ua/wp-content/uploads/2019/03/2-layers-4.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2019-03-13 08:34:07', '2019-03-13 08:34:07', '', '2-layers (5)', '', 'inherit', 'open', 'closed', '', '2-layers-5', '', '', '2019-03-13 08:34:07', '2019-03-13 08:34:07', '', 11, 'http://akad.ua/wp-content/uploads/2019/03/2-layers-5.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2019-03-13 08:34:08', '2019-03-13 08:34:08', '', '2-layers', '', 'inherit', 'open', 'closed', '', '2-layers', '', '', '2019-03-13 08:34:08', '2019-03-13 08:34:08', '', 11, 'http://akad.ua/wp-content/uploads/2019/03/2-layers.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2019-03-13 17:18:47', '2019-03-13 17:18:47', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"about.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Information', 'information', 'publish', 'closed', 'closed', '', 'group_5c893a384092a', '', '', '2019-03-13 17:18:47', '2019-03-13 17:18:47', '', 0, 'http://akad.ua/?post_type=acf-field-group&#038;p=59', 0, 'acf-field-group', '', 0),
(60, 1, '2019-03-13 17:18:47', '2019-03-13 17:18:47', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'titel', 'titel', 'publish', 'closed', 'closed', '', 'field_5c893a9388e62', '', '', '2019-03-13 17:18:47', '2019-03-13 17:18:47', '', 59, 'http://akad.ua/?post_type=acf-field&p=60', 0, 'acf-field', '', 0),
(61, 1, '2019-03-13 17:18:47', '2019-03-13 17:18:47', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'subtitle', 'subtitle', 'publish', 'closed', 'closed', '', 'field_5c893b3b88e63', '', '', '2019-03-13 17:18:47', '2019-03-13 17:18:47', '', 59, 'http://akad.ua/?post_type=acf-field&p=61', 1, 'acf-field', '', 0),
(62, 1, '2019-03-13 17:18:47', '2019-03-13 17:18:47', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'text', 'text', 'publish', 'closed', 'closed', '', 'field_5c893b6088e64', '', '', '2019-03-13 17:18:47', '2019-03-13 17:18:47', '', 59, 'http://akad.ua/?post_type=acf-field&p=62', 2, 'acf-field', '', 0),
(63, 1, '2019-03-13 17:21:38', '2019-03-13 17:21:38', '<!-- wp:paragraph -->\n<p>The sun is beautiful!))))</p>\n<!-- /wp:paragraph -->', 'about us', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-03-13 17:21:38', '2019-03-13 17:21:38', '', 11, 'http://akad.ua/2019/03/13/11-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2019-03-13 18:41:08', '2019-03-13 18:41:08', '', 'Layer_5', '', 'inherit', 'open', 'closed', '', 'layer_5', '', '', '2019-03-13 18:41:08', '2019-03-13 18:41:08', '', 11, 'http://akad.ua/wp-content/uploads/2019/03/Layer_5.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2019-03-13 18:41:09', '2019-03-13 18:41:09', '', 'Layer_6', '', 'inherit', 'open', 'closed', '', 'layer_6', '', '', '2019-03-13 18:41:09', '2019-03-13 18:41:09', '', 11, 'http://akad.ua/wp-content/uploads/2019/03/Layer_6.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2019-03-13 18:41:10', '2019-03-13 18:41:10', '', 'Layer_7', '', 'inherit', 'open', 'closed', '', 'layer_7', '', '', '2019-03-13 18:41:10', '2019-03-13 18:41:10', '', 11, 'http://akad.ua/wp-content/uploads/2019/03/Layer_7.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2019-03-13 18:41:12', '2019-03-13 18:41:12', '', 'Layer_8', '', 'inherit', 'open', 'closed', '', 'layer_8', '', '', '2019-03-13 18:41:12', '2019-03-13 18:41:12', '', 11, 'http://akad.ua/wp-content/uploads/2019/03/Layer_8.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2019-03-13 18:41:13', '2019-03-13 18:41:13', '', 'Layer_9', '', 'inherit', 'open', 'closed', '', 'layer_9', '', '', '2019-03-13 18:41:13', '2019-03-13 18:41:13', '', 11, 'http://akad.ua/wp-content/uploads/2019/03/Layer_9.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2019-03-13 18:41:14', '2019-03-13 18:41:14', '', 'Layer_10', '', 'inherit', 'open', 'closed', '', 'layer_10', '', '', '2019-03-13 18:41:14', '2019-03-13 18:41:14', '', 11, 'http://akad.ua/wp-content/uploads/2019/03/Layer_10.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2019-03-13 18:41:15', '2019-03-13 18:41:15', '', 'Layer_11', '', 'inherit', 'open', 'closed', '', 'layer_11', '', '', '2019-03-13 18:41:15', '2019-03-13 18:41:15', '', 11, 'http://akad.ua/wp-content/uploads/2019/03/Layer_11.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2019-03-13 18:41:16', '2019-03-13 18:41:16', '', 'Layer_12', '', 'inherit', 'open', 'closed', '', 'layer_12', '', '', '2019-03-13 18:41:16', '2019-03-13 18:41:16', '', 11, 'http://akad.ua/wp-content/uploads/2019/03/Layer_12.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2019-03-13 21:04:49', '2019-03-13 21:04:49', '', '1 (1)', '', 'inherit', 'open', 'closed', '', '1-1', '', '', '2019-03-13 21:04:49', '2019-03-13 21:04:49', '', 9, 'http://akad.ua/wp-content/uploads/2019/03/1-1.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2019-03-13 21:04:50', '2019-03-13 21:04:50', '', '1 (2)', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2019-03-13 21:04:50', '2019-03-13 21:04:50', '', 9, 'http://akad.ua/wp-content/uploads/2019/03/1-2.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2019-03-13 21:04:51', '2019-03-13 21:04:51', '', '1 (3)', '', 'inherit', 'open', 'closed', '', '1-3', '', '', '2019-03-13 21:04:51', '2019-03-13 21:04:51', '', 9, 'http://akad.ua/wp-content/uploads/2019/03/1-3.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2019-03-13 21:04:52', '2019-03-13 21:04:52', '', '1 (4)', '', 'inherit', 'open', 'closed', '', '1-4', '', '', '2019-03-13 21:04:52', '2019-03-13 21:04:52', '', 9, 'http://akad.ua/wp-content/uploads/2019/03/1-4.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2019-03-13 21:04:52', '2019-03-13 21:04:52', '', '1 (5)', '', 'inherit', 'open', 'closed', '', '1-5', '', '', '2019-03-13 21:04:52', '2019-03-13 21:04:52', '', 9, 'http://akad.ua/wp-content/uploads/2019/03/1-5.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2019-03-14 11:34:21', '2019-03-14 11:34:21', '<label>\r\n   </label>[text* mail-form placeholder \"your email\"]\r\n\r\n[submit \"Send\"]\n1\nakad \"[your-subject]\"\nakad <wordpress@akad.ua>\nnataliya.likhachova@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on akad (http://akad.ua)\nReply-To:[Contact-email]\n\n\n\n\nakad \"[your-subject]\"\nakad <wordpress@akad.ua>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on akad (http://akad.ua)\nReply-To: nataliya.likhachova@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Mail form', '', 'publish', 'closed', 'closed', '', 'mail-form', '', '', '2019-03-14 12:39:18', '2019-03-14 12:39:18', '', 0, 'http://akad.ua/?post_type=wpcf7_contact_form&#038;p=78', 0, 'wpcf7_contact_form', '', 0),
(79, 1, '2019-03-14 11:47:51', '2019-03-14 11:47:51', '{\n    \"widget_text[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjQyOiJbY29udGFjdC1mb3JtLTcgaWQ9Ijc4IiB0aXRsZT0iTWFpbCBmb3JtIl0iO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"ac34c6a2415203838f317c138db578ab\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-14 11:47:51\"\n    },\n    \"sidebars_widgets[footer]\": {\n        \"value\": [\n            \"text-3\",\n            \"custom_html-2\",\n            \"custom_html-4\",\n            \"custom_html-5\",\n            \"custom_html-6\",\n            \"custom_html-7\",\n            \"custom_html-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-14 11:47:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6c85ba94-668c-4ff9-af18-8f0e79e58d69', '', '', '2019-03-14 11:47:51', '2019-03-14 11:47:51', '', 0, 'http://akad.ua/2019/03/14/6c85ba94-668c-4ff9-af18-8f0e79e58d69/', 0, 'customize_changeset', '', 0),
(81, 1, '2019-03-14 12:50:26', '2019-03-14 12:50:26', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">[contact-form-7 id=\"78\" title=\"Mail form\"]</pre>\n<!-- /wp:preformatted -->', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-03-14 12:50:26', '2019-03-14 12:50:26', '', 9, 'http://akad.ua/2019/03/14/9-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-03-14 12:53:16', '2019-03-14 12:53:16', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\"></pre>\n<!-- /wp:preformatted -->', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-03-14 12:53:16', '2019-03-14 12:53:16', '', 9, 'http://akad.ua/2019/03/14/9-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2019-03-14 14:18:52', '2019-03-14 14:18:52', '', '2-layers (1)', '', 'inherit', 'open', 'closed', '', '2-layers-1-2', '', '', '2019-03-14 14:18:52', '2019-03-14 14:18:52', '', 11, 'http://akad.ua/wp-content/uploads/2019/03/2-layers-1-1.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2019-03-14 14:18:53', '2019-03-14 14:18:53', '', '2-layers (2)', '', 'inherit', 'open', 'closed', '', '2-layers-2-2', '', '', '2019-03-14 14:18:53', '2019-03-14 14:18:53', '', 11, 'http://akad.ua/wp-content/uploads/2019/03/2-layers-2-1.png', 0, 'attachment', 'image/png', 0),
(85, 1, '2019-03-14 14:18:53', '2019-03-14 14:18:53', '', '2-layers (3)', '', 'inherit', 'open', 'closed', '', '2-layers-3-2', '', '', '2019-03-14 14:18:53', '2019-03-14 14:18:53', '', 11, 'http://akad.ua/wp-content/uploads/2019/03/2-layers-3-1.png', 0, 'attachment', 'image/png', 0),
(86, 1, '2019-03-14 14:18:54', '2019-03-14 14:18:54', '', '2-layers (4)', '', 'inherit', 'open', 'closed', '', '2-layers-4-2', '', '', '2019-03-14 14:18:54', '2019-03-14 14:18:54', '', 11, 'http://akad.ua/wp-content/uploads/2019/03/2-layers-4-1.png', 0, 'attachment', 'image/png', 0),
(87, 1, '2019-03-14 14:18:55', '2019-03-14 14:18:55', '', '2-layers (5)', '', 'inherit', 'open', 'closed', '', '2-layers-5-2', '', '', '2019-03-14 14:18:55', '2019-03-14 14:18:55', '', 11, 'http://akad.ua/wp-content/uploads/2019/03/2-layers-5-1.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2019-03-14 14:18:55', '2019-03-14 14:18:55', '', '2-layers', '', 'inherit', 'open', 'closed', '', '2-layers-6', '', '', '2019-03-14 14:18:55', '2019-03-14 14:18:55', '', 11, 'http://akad.ua/wp-content/uploads/2019/03/2-layers-6.png', 0, 'attachment', 'image/png', 0),
(89, 1, '2019-03-14 16:24:04', '2019-03-14 16:24:04', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. \n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.  </p>\n<!-- /wp:paragraph -->', 'THE BIG LEAGUES OUR TURN STRAIGHTNIN', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.  ', 'publish', 'open', 'open', '', 'the-big-leagues-our-turn-straightnin', '', '', '2019-03-14 19:58:44', '2019-03-14 19:58:44', '', 0, 'http://akad.ua/?p=89', 0, 'post', '', 0),
(90, 1, '2019-03-14 16:20:58', '2019-03-14 16:20:58', '', 'Layer_9', '', 'inherit', 'open', 'closed', '', 'layer_9-2', '', '', '2019-03-14 16:20:58', '2019-03-14 16:20:58', '', 89, 'http://akad.ua/wp-content/uploads/2019/03/Layer_9-1.png', 0, 'attachment', 'image/png', 0),
(91, 1, '2019-03-14 16:24:04', '2019-03-14 16:24:04', '<!-- wp:image {\"id\":90} -->\n<figure class=\"wp-block-image\"><img src=\"http://akad.ua/wp-content/uploads/2019/03/Layer_9-1.png\" alt=\"\" class=\"wp-image-90\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n\n</p>\n<!-- /wp:paragraph -->', 'THE BIG LEAGUES OUR TURN STRAIGHTNIN', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2019-03-14 16:24:04', '2019-03-14 16:24:04', '', 89, 'http://akad.ua/2019/03/14/89-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2019-03-14 16:30:16', '2019-03-14 16:30:16', '<!-- wp:image {\"id\":90} -->\n<figure class=\"wp-block-image\"><img src=\"http://akad.ua/wp-content/uploads/2019/03/Layer_9-1.png\" alt=\"\" class=\"wp-image-90\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. \n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.  </p>\n<!-- /wp:paragraph -->', 'THE BIG LEAGUES OUR TURN STRAIGHTNIN', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2019-03-14 16:30:16', '2019-03-14 16:30:16', '', 89, 'http://akad.ua/2019/03/14/89-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(97, 1, '2019-03-14 16:46:20', '2019-03-14 16:46:20', '<!-- wp:image {\"id\":90} -->\n<figure class=\"wp-block-image\"><img src=\"http://akad.ua/wp-content/uploads/2019/03/Layer_9-1.png\" alt=\"\" class=\"wp-image-90\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. \n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.  </p>\n<!-- /wp:paragraph -->', 'THE BIG LEAGUES OUR TURN STRAIGHTNIN', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.  ', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2019-03-14 16:46:20', '2019-03-14 16:46:20', '', 89, 'http://akad.ua/2019/03/14/89-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2019-03-14 17:32:02', '2019-03-14 17:32:02', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-03-14 17:32:02', '2019-03-14 17:32:02', '', 1, 'http://akad.ua/2019/03/14/1-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2019-03-14 17:33:05', '2019-03-14 17:33:05', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> <br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>\n<!-- /wp:paragraph -->', 'THE BIG LEAGUES OUR TURN STRAIGHTNIN', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'publish', 'open', 'open', '', 'the-big-leagues-our-turn-straightnin-2', '', '', '2019-03-14 19:58:10', '2019-03-14 19:58:10', '', 0, 'http://akad.ua/?p=100', 0, 'post', '', 0),
(101, 1, '2019-03-14 17:33:05', '2019-03-14 17:33:05', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> <br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>\n<!-- /wp:paragraph -->', 'THE BIG LEAGUES OUR TURN STRAIGHTNIN', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2019-03-14 17:33:05', '2019-03-14 17:33:05', '', 100, 'http://akad.ua/2019/03/14/100-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2019-03-14 17:33:50', '2019-03-14 17:33:50', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>\n<!-- /wp:paragraph -->', 'THE BIG LEAGUES OUR TURN STRAIGHTNIN', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'publish', 'open', 'open', '', 'the-big-leagues-our-turn-straightnin-3', '', '', '2019-03-14 19:57:23', '2019-03-14 19:57:23', '', 0, 'http://akad.ua/?p=102', 0, 'post', '', 0),
(103, 1, '2019-03-14 17:33:50', '2019-03-14 17:33:50', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>\n<!-- /wp:paragraph -->', 'THE BIG LEAGUES OUR TURN STRAIGHTNIN', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2019-03-14 17:33:50', '2019-03-14 17:33:50', '', 102, 'http://akad.ua/2019/03/14/102-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2019-03-14 17:36:54', '2019-03-14 17:36:54', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. \n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.  </p>\n<!-- /wp:paragraph -->', 'THE BIG LEAGUES OUR TURN STRAIGHTNIN', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.  ', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2019-03-14 17:36:54', '2019-03-14 17:36:54', '', 89, 'http://akad.ua/2019/03/14/89-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2019-03-14 19:48:55', '2019-03-14 19:48:55', '{\n    \"widget_recent-posts[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjU6IlBvc3RzIjtzOjY6Im51bWJlciI7aTo1O3M6OToic2hvd19kYXRlIjtiOjE7fQ==\",\n            \"title\": \"Posts\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0fc490c1fe6bd8366b64a192ee860a6f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-14 19:48:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c3bbecc8-0dff-476a-996d-3f6f2be3bd64', '', '', '2019-03-14 19:48:55', '2019-03-14 19:48:55', '', 0, 'http://akad.ua/2019/03/14/c3bbecc8-0dff-476a-996d-3f6f2be3bd64/', 0, 'customize_changeset', '', 0),
(108, 1, '2019-03-14 19:55:08', '2019-03-14 19:55:08', '{\n    \"widget_categories[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJjb3VudCI7aToxO3M6MTI6ImhpZXJhcmNoaWNhbCI7aTowO3M6ODoiZHJvcGRvd24iO2k6MDt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"cff69559c03e223fea759205d280f9ce\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-14 19:55:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '238c1577-fd97-4e25-9a5b-9e293fc97d0c', '', '', '2019-03-14 19:55:08', '2019-03-14 19:55:08', '', 0, 'http://akad.ua/2019/03/14/238c1577-fd97-4e25-9a5b-9e293fc97d0c/', 0, 'customize_changeset', '', 0),
(109, 1, '2019-03-14 19:55:54', '2019-03-14 19:55:54', '{\n    \"widget_tag_cloud[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjQ6IlRhZ3MiO3M6NToiY291bnQiO2k6MTtzOjg6InRheG9ub215IjtzOjg6InBvc3RfdGFnIjt9\",\n            \"title\": \"Tags\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"d40f5a8d8d05b46cc99f25c04e4b8d16\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-14 19:55:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c2087aed-3ac1-4290-bbde-6cf9edc3e06d', '', '', '2019-03-14 19:55:54', '2019-03-14 19:55:54', '', 0, 'http://akad.ua/2019/03/14/c2087aed-3ac1-4290-bbde-6cf9edc3e06d/', 0, 'customize_changeset', '', 0),
(112, 1, '2019-03-14 19:59:19', '2019-03-14 19:59:19', '{\n    \"widget_tag_cloud[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjQ6IlRhZ3MiO3M6NToiY291bnQiO2k6MDtzOjg6InRheG9ub215IjtzOjg6InBvc3RfdGFnIjt9\",\n            \"title\": \"Tags\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0815bef5e572b46b1bda6c85de2f3d77\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-14 19:59:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd55482df-ae26-4360-88f3-28ea0e0f8c9a', '', '', '2019-03-14 19:59:19', '2019-03-14 19:59:19', '', 0, 'http://akad.ua/2019/03/14/d55482df-ae26-4360-88f3-28ea0e0f8c9a/', 0, 'customize_changeset', '', 0),
(113, 1, '2019-03-14 20:00:04', '2019-03-14 20:00:04', '{\n    \"widget_archives[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJjb3VudCI7aToxO3M6ODoiZHJvcGRvd24iO2k6MDt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"59f24e8c8ed4c01bc27bb2d5a541f29d\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-14 20:00:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fc392c48-d0ed-412b-ab94-1880e7a02313', '', '', '2019-03-14 20:00:04', '2019-03-14 20:00:04', '', 0, 'http://akad.ua/2019/03/14/fc392c48-d0ed-412b-ab94-1880e7a02313/', 0, 'customize_changeset', '', 0),
(115, 1, '2019-03-15 16:51:28', '2019-03-15 16:51:28', '', 'header', '', 'trash', 'closed', 'closed', '', 'header__trashed', '', '', '2019-03-15 17:17:25', '2019-03-15 17:17:25', '', 0, 'http://akad.ua/?page_id=115', 0, 'page', '', 0),
(116, 1, '2019-03-15 16:51:28', '2019-03-15 16:51:28', '', 'header', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2019-03-15 16:51:28', '2019-03-15 16:51:28', '', 115, 'http://akad.ua/2019/03/15/115-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2019-03-15 23:37:05', '2019-03-15 23:37:05', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>\n<!-- /wp:paragraph -->', 'THE BIG LEAGUES OUR TURN STRAIGHTNIN', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'inherit', 'closed', 'closed', '', '102-autosave-v1', '', '', '2019-03-15 23:37:05', '2019-03-15 23:37:05', '', 102, 'http://akad.ua/2019/03/15/102-autosave-v1/', 0, 'revision', '', 0),
(119, 1, '2019-03-15 23:40:09', '2019-03-15 23:40:09', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> <br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>\n<!-- /wp:paragraph -->', 'THE BIG LEAGUES OUR TURN STRAIGHTNIN', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'inherit', 'closed', 'closed', '', '100-autosave-v1', '', '', '2019-03-15 23:40:09', '2019-03-15 23:40:09', '', 100, 'http://akad.ua/2019/03/15/100-autosave-v1/', 0, 'revision', '', 0),
(120, 1, '2019-03-15 23:44:27', '2019-03-15 23:44:27', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. \n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.  </p>\n<!-- /wp:paragraph -->', 'THE BIG LEAGUES OUR TURN STRAIGHTNIN', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.  ', 'inherit', 'closed', 'closed', '', '89-autosave-v1', '', '', '2019-03-15 23:44:27', '2019-03-15 23:44:27', '', 89, 'http://akad.ua/2019/03/15/89-autosave-v1/', 0, 'revision', '', 0);

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
(2, 'footer-menu', 'footer-menu', 0),
(3, 'header-menu', 'header-menu', 0),
(4, 'blog post', 'blog-post', 0),
(5, 'Business', 'business', 0),
(6, 'Photography', 'photography', 0),
(7, 'Journal', 'journal', 0),
(8, 'Web devlopment', 'web-devlopment', 0),
(9, 'css', 'css', 0),
(10, 'javascript', 'javascript', 0),
(11, 'jquery', 'jquery', 0),
(12, 'html5', 'html5', 0),
(13, 'bootstrap', 'bootstrap', 0);

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
(1, 1, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(26, 2, 0),
(32, 2, 0),
(35, 3, 0),
(36, 3, 0),
(37, 3, 0),
(38, 3, 0),
(39, 3, 0),
(40, 3, 0),
(89, 5, 0),
(89, 6, 0),
(89, 10, 0),
(89, 11, 0),
(100, 5, 0),
(100, 6, 0),
(100, 7, 0),
(100, 9, 0),
(100, 12, 0),
(100, 13, 0),
(102, 5, 0),
(102, 6, 0),
(102, 7, 0),
(102, 8, 0),
(102, 9, 0),
(102, 10, 0),
(102, 11, 0);

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
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'nav_menu', '', 0, 6),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', '', 0, 3),
(6, 6, 'category', '', 0, 3),
(7, 7, 'category', '', 0, 2),
(8, 8, 'category', '', 0, 1),
(9, 9, 'post_tag', '', 0, 2),
(10, 10, 'post_tag', '', 0, 2),
(11, 11, 'post_tag', '', 0, 2),
(12, 12, 'post_tag', '', 0, 1),
(13, 13, 'post_tag', '', 0, 1);

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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"7a9021dbca1025f9067f68455948da75eb5742a982067a16e956edb4e992743e\";a:4:{s:10:\"expiration\";i:1553497670;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1552288070;}s:64:\"78b40f82714f9e7f6b6734e87f1efcd03992ede5699565ae9de204e5bdddbaff\";a:4:{s:10:\"expiration\";i:1553504928;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1552295328;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '121'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:0:{}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:0:{}'),
(21, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(22, 1, 'nav_menu_recently_edited', '2'),
(23, 1, 'edit_category_per_page', '30'),
(24, 1, 'wp_user-settings', 'mfold=o&editor=html&libraryContent=browse&posts_list_mode=list'),
(25, 1, 'wp_user-settings-time', '1552581912'),
(28, 1, 'closedpostboxes_page', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(29, 1, 'metaboxhidden_page', 'a:0:{}'),
(30, 1, 'wp_yoast_notifications', 'a:2:{i:0;a:2:{s:7:\"message\";s:157:\"Don\'t miss your crawl errors: <a href=\"http://akad.ua/wp-admin/admin.php?page=wpseo_search_console&tab=settings\">connect with Google Search Console here</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:522:\"Yoast SEO and Advanced Custom Fields can work together a lot better by adding a helper plugin. Please install <a href=\"http://akad.ua/wp-admin/update.php?action=install-plugin&amp;plugin=acf-content-analysis-for-yoast-seo&amp;_wpnonce=9ec9f1a95e\">ACF Content Analysis for Yoast SEO</a> to make your life better. <a href=\"https://wordpress.org/plugins/acf-content-analysis-for-yoast-seo/\" aria-label=\"More information about ACF Content Analysis for Yoast SEO\" target=\"_blank\" rel=\"noopener noreferrer\">More information</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:41:\"wpseo-suggested-plugin-yoast-acf-analysis\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";a:1:{i:0;s:15:\"install_plugins\";}s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(31, 1, 'closedpostboxes_post', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(32, 1, 'metaboxhidden_post', 'a:0:{}'),
(33, 1, '_yoast_wpseo_profile_updated', '1552581089'),
(34, 1, 'manageedit-postcolumnshidden', 'a:0:{}'),
(35, 1, 'edit_post_per_page', '20');

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
(1, 'Natali', '$P$B88Rie22lhl4oBcOMq4Ge1rzK1HO4p/', 'natali', 'nataliya.likhachova@gmail.com', '', '2019-03-11 07:07:38', '', 0, 'Natali');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(4, 0, 0),
(9, 0, 0),
(11, 0, 0),
(17, 0, 0),
(48, 0, 0),
(72, 0, 0),
(80, 0, 0),
(89, 0, 0),
(92, 0, 0),
(93, 0, 0),
(95, 0, 0),
(96, 0, 0),
(98, 0, 0),
(100, 0, 0),
(102, 0, 0),
(105, 0, 0),
(107, 0, 0),
(110, 0, 0),
(111, 0, 0),
(114, 0, 0),
(115, 0, 0),
(117, 0, 0),
(118, 0, 0),
(119, 0, 0),
(120, 0, 0),
(121, 0, 0),
(122, 0, 0),
(123, 0, 0),
(124, 0, 0),
(125, 0, 0),
(126, 0, 0),
(127, 0, 0),
(128, 0, 0),
(129, 0, 0),
(130, 0, 0),
(131, 0, 0),
(132, 0, 0),
(133, 0, 0),
(134, 0, 0),
(135, 0, 0),
(136, 0, 0),
(137, 0, 0),
(138, 0, 0),
(139, 0, 0),
(140, 0, 0),
(141, 0, 0),
(142, 0, 0),
(143, 0, 0),
(144, 0, 0),
(145, 0, 0),
(146, 0, 0),
(147, 0, 0),
(148, 0, 0),
(149, 0, 0),
(150, 0, 0),
(151, 0, 0),
(152, 0, 0),
(153, 0, 0),
(154, 0, 0),
(155, 0, 0),
(156, 0, 0),
(157, 0, 0),
(158, 0, 0),
(159, 0, 0),
(160, 0, 0),
(161, 0, 0),
(162, 0, 0),
(163, 0, 0),
(164, 0, 0),
(165, 0, 0),
(166, 0, 0),
(167, 0, 0),
(168, 0, 0),
(169, 0, 0),
(170, 0, 0),
(171, 0, 0),
(172, 0, 0);

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
-- Индексы таблицы `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Индексы таблицы `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=613;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=478;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
