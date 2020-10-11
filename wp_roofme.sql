-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 12, 2020 at 09:05 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp_roofme`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

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

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-10-09 02:01:10', '2020-10-09 02:01:10', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

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
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://roofme:8888/', 'yes'),
(2, 'home', 'http://roofme:8888/', 'yes'),
(3, 'blogname', 'Roof Me', 'yes'),
(4, 'blogdescription', 'We&#039;ve got you covered', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nzmikejp@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'roofme', 'yes'),
(41, 'stylesheet', 'roofme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
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
(82, 'page_on_front', '5', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1617760870', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1602446471;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1602468070;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602468071;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1602468111;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602468112;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602900071;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'nonce_key', ':[>QU&enkvIeZ?HJ*3B3#<}|f[[ybM&8L#osF=9S7B|3`Xjj6^{z1sHX/}_Rn3Sc', 'no'),
(112, 'nonce_salt', 'O.D9V6VL2XzcI942_l`UdzhIJ|`+80vk:@LKgF{eHum^E2Mfhb{VEuUl@VUe)a`z', 'no'),
(113, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'recovery_keys', 'a:0:{}', 'yes'),
(120, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1602446034;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(121, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1602210923;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(124, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1602446034;s:7:\"checked\";a:4:{s:6:\"roofme\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(125, 'auth_key', '*SEw?[TeM`##@/ ;mmFj]{@ !0Fpxt@N!v|bm1v9xn7HUDM0FfhH)$*9wc?Jao?I', 'no'),
(126, 'auth_salt', 'n:$j;-h6*fqFy2{ a$^zR%3ZQ6Lb%yf-Xub`|lj[N5%a9nX%uB4pO/AC}y{s<n%/', 'no'),
(127, 'logged_in_key', 'dTeUL4l`4i9Y:`vEK;~jKU7CZMvr;mC7E`&o .xg~ah(3#Ds//A%>|,(>YSNo|B1', 'no'),
(128, 'logged_in_salt', '0Og&E5gH)On(`;XKhn-Fo^IN{{alg:Q(E1T;wM$Dp(jK1#>]HiKSC2V-cRuEyiCx', 'no'),
(129, '_site_transient_timeout_browser_fd8d93e207340eab9a94f702d435cbd4', '1602813712', 'no'),
(130, '_site_transient_browser_fd8d93e207340eab9a94f702d435cbd4', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"86.0.4240.75\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(131, '_site_transient_timeout_php_check_b1f7d17548e7b3eac5214a006719f44e', '1602813712', 'no'),
(132, '_site_transient_php_check_b1f7d17548e7b3eac5214a006719f44e', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(149, 'finished_updating_comment_type', '1', 'yes'),
(150, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(154, 'current_theme', '', 'yes'),
(155, 'theme_mods_roofme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(163, 'db_upgraded', '', 'yes'),
(165, '_site_transient_timeout_browser_d4172e5c9a84c48be851975559482132', '1602828416', 'no'),
(166, '_site_transient_browser_d4172e5c9a84c48be851975559482132', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"85.0.4183.121\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(167, '_site_transient_timeout_php_check_09014c84783552a9b699e7274e96a72d', '1602828416', 'no'),
(168, '_site_transient_php_check_09014c84783552a9b699e7274e96a72d', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(174, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1602446032;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}', 'no'),
(175, 'can_compress_scripts', '1', 'no'),
(201, '_transient_health-check-site-status-result', '{\"good\":9,\"recommended\":11,\"critical\":0}', 'yes'),
(208, '_site_transient_timeout_theme_roots', '1602447833', 'no'),
(209, '_site_transient_theme_roots', 'a:4:{s:6:\"roofme\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 5, '_edit_lock', '1602285677:1'),
(10, 9, '_edit_lock', '1602209106:1'),
(11, 11, '_edit_lock', '1602209174:1'),
(12, 13, '_edit_lock', '1602209515:1'),
(13, 15, '_edit_lock', '1602210576:1'),
(14, 17, '_menu_item_type', 'post_type'),
(15, 17, '_menu_item_menu_item_parent', '0'),
(16, 17, '_menu_item_object_id', '15'),
(17, 17, '_menu_item_object', 'page'),
(18, 17, '_menu_item_target', ''),
(19, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(20, 17, '_menu_item_xfn', ''),
(21, 17, '_menu_item_url', ''),
(23, 18, '_menu_item_type', 'post_type'),
(24, 18, '_menu_item_menu_item_parent', '0'),
(25, 18, '_menu_item_object_id', '13'),
(26, 18, '_menu_item_object', 'page'),
(27, 18, '_menu_item_target', ''),
(28, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(29, 18, '_menu_item_xfn', ''),
(30, 18, '_menu_item_url', ''),
(32, 19, '_menu_item_type', 'post_type'),
(33, 19, '_menu_item_menu_item_parent', '0'),
(34, 19, '_menu_item_object_id', '11'),
(35, 19, '_menu_item_object', 'page'),
(36, 19, '_menu_item_target', ''),
(37, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 19, '_menu_item_xfn', ''),
(39, 19, '_menu_item_url', ''),
(41, 20, '_menu_item_type', 'post_type'),
(42, 20, '_menu_item_menu_item_parent', '0'),
(43, 20, '_menu_item_object_id', '9'),
(44, 20, '_menu_item_object', 'page'),
(45, 20, '_menu_item_target', ''),
(46, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 20, '_menu_item_xfn', ''),
(48, 20, '_menu_item_url', ''),
(50, 21, '_menu_item_type', 'post_type'),
(51, 21, '_menu_item_menu_item_parent', '0'),
(52, 21, '_menu_item_object_id', '5'),
(53, 21, '_menu_item_object', 'page'),
(54, 21, '_menu_item_target', ''),
(55, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 21, '_menu_item_xfn', ''),
(57, 21, '_menu_item_url', ''),
(58, 22, '_wp_trash_meta_status', 'publish'),
(59, 22, '_wp_trash_meta_time', '1602282668'),
(60, 23, '_wp_trash_meta_status', 'publish'),
(61, 23, '_wp_trash_meta_time', '1602282705'),
(62, 30, '_wp_attached_file', '2020/10/slide-1.jpg'),
(63, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:932;s:4:\"file\";s:19:\"2020/10/slide-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"slide-1-300x140.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"slide-1-1024x477.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:477;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"slide-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"slide-1-768x358.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:358;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"slide-1-1536x716.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:716;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(64, 36, '_wp_trash_meta_status', 'publish'),
(65, 36, '_wp_trash_meta_time', '1602285845');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

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
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-10-09 02:01:10', '2020-10-09 02:01:10', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-10-09 02:01:10', '2020-10-09 02:01:10', '', 0, 'http://localhost/roofme/?p=1', 0, 'post', '', 1),
(4, 1, '2020-10-09 02:01:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-10-09 02:01:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/roofme/?p=4', 0, 'post', '', 0),
(5, 1, '2020-10-09 02:05:41', '2020-10-09 02:05:41', '<!-- wp:paragraph -->\n<p>Working with Roof Me, you can trust that what’s on the outside of your home is the best choice for protecting what’s on the inside. Because it’s one thing to have a roof over your head, it’s another knowing that it’s weathertight, durable and made using high-quality, trusted products that have been professionally installed by experienced roofers.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Whether you’re renovating or building a new home, choosing the right roof to suit your property is an important decision that comes down to more that just aesthetics. Our team will help you choose the best roof to suit your home, your environment and your budget, while also considering the latest design trends and product innovation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We’re big on workmanship and communication, and our customers recognise us for the professionalism and intergrity. We’ll keep you informed of our progress throughout your project, and ensure you’re 100% satisfied with the final result.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We are Licensed Building Practitioners – find out more about our experienced team.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Welcome to Roof Me...', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-10-09 23:23:37', '2020-10-09 23:23:37', '', 0, 'http://localhost/roofme/?page_id=5', 0, 'page', '', 0),
(6, 1, '2020-10-09 02:05:41', '2020-10-09 02:05:41', '<!-- wp:paragraph -->\n<p>This is a home page</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-10-09 02:05:41', '2020-10-09 02:05:41', '', 5, 'http://localhost/roofme/index.php/2020/10/09/5-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2020-10-09 02:07:12', '2020-10-09 02:07:12', '<!-- wp:paragraph -->\n<p>Throughout the lifetime of your home, it’s likely you’ll need to repair or replace your roof to minimise risk any major damage to your property.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>At Roof Me, we specialise in metal to long run metal re-roofing and concrete to metal re-roofing using quality COLORSTEEL® and ColorCote® products in assorted grades, profiles and colours. These products have been built to deal with New Zealand’s harsh weather conditions, and selected by us for their performance, durability and modern finish.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our experienced team will help you understand what will work best for the requirements of your property, so you can choose products that achieve durable, long-lasting results. When combined with our high standard of workmanship, you can be confident you have a roof designed to withstand whatever the Auckland weather throws at it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Long run comes in a variety of profiles and colour choices, and results in a stylish and dramatically improved finish. Find out more about these roofing products or take a look at some of our re roof projects we’ve completed in our roofing projects gallery.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Roof Me us based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore, and Auckland.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>How do you know it’s time to re-roof your property?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Auckland’s ever-changing weather conditions – like strong sun, damp weather and coastal storms – can begin to take its toll on your roof, undermining performance and leaving it looking tired and damaged. Re-roofing isn’t just about improving the look of your home, but also about ensuring it remains a safe, dry and healthy place to live.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Many older roofs were fitted without underlay (roofing paper) and just the addition of this also will achieve a warmer home. This may also be a good time to insulate (which we can carry out and organise) because the roof space is easily accessed at this time. In some cases, the wooden purlins that are part of the substrate structure to which the roofing material is attached can be rotten and may need to be replaced before a new roof is fitted. Doing so will ensure a safe and secure hold for your new roof.</p>\n<!-- /wp:paragraph -->', 'Re-Roofing', '', 'publish', 'closed', 'closed', '', 're-roofing', '', '', '2020-10-09 02:07:12', '2020-10-09 02:07:12', '', 0, 'http://localhost/roofme/?page_id=9', 0, 'page', '', 0),
(10, 1, '2020-10-09 02:07:12', '2020-10-09 02:07:12', '<!-- wp:paragraph -->\n<p>Throughout the lifetime of your home, it’s likely you’ll need to repair or replace your roof to minimise risk any major damage to your property.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>At Roof Me, we specialise in metal to long run metal re-roofing and concrete to metal re-roofing using quality COLORSTEEL® and ColorCote® products in assorted grades, profiles and colours. These products have been built to deal with New Zealand’s harsh weather conditions, and selected by us for their performance, durability and modern finish.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our experienced team will help you understand what will work best for the requirements of your property, so you can choose products that achieve durable, long-lasting results. When combined with our high standard of workmanship, you can be confident you have a roof designed to withstand whatever the Auckland weather throws at it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Long run comes in a variety of profiles and colour choices, and results in a stylish and dramatically improved finish. Find out more about these roofing products or take a look at some of our re roof projects we’ve completed in our roofing projects gallery.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Roof Me us based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore, and Auckland.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>How do you know it’s time to re-roof your property?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Auckland’s ever-changing weather conditions – like strong sun, damp weather and coastal storms – can begin to take its toll on your roof, undermining performance and leaving it looking tired and damaged. Re-roofing isn’t just about improving the look of your home, but also about ensuring it remains a safe, dry and healthy place to live.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Many older roofs were fitted without underlay (roofing paper) and just the addition of this also will achieve a warmer home. This may also be a good time to insulate (which we can carry out and organise) because the roof space is easily accessed at this time. In some cases, the wooden purlins that are part of the substrate structure to which the roofing material is attached can be rotten and may need to be replaced before a new roof is fitted. Doing so will ensure a safe and secure hold for your new roof.</p>\n<!-- /wp:paragraph -->', 'Re-Roofing', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-10-09 02:07:12', '2020-10-09 02:07:12', '', 9, 'http://localhost/roofme/index.php/2020/10/09/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2020-10-09 02:08:27', '2020-10-09 02:08:27', '<!-- wp:paragraph -->\n<p>Protect your new home or extension with a quality long run roof, professionally installed by the experienced team of Auckland roofers from Roof Me.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We provide new roof installation for new homes, extensions and garages. We understand that each home, location and environment is unique, so our customised roofing solutions are designed to complement your building and your budget, while taking these important factors into consideration.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You can choose Roof Me confidentially for your next build project thanks to our 5-year guarantee on workmanship on all new roofs. As a Licensed Building Practitioner, we’re licensed to install new roofs in Profiled Metal Roof &amp; Wall Cladding (and also Concrete or Clay Tiles).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>New Metal Profiled Roofing &amp; Cladding (Long Run Roofing)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>LBP Logo black and white version</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Although roofing materials may look the same in appearance, they may not perform the same long term</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>All our new roofs are installed using quality COLORSTEEL®, ZINCALUME® or ColorCote® products. Long run COLORSTEEL® is one of the best, and most popular, choices for roofing in New Zealand. Not only for its variety of colour options to suit your home, but also for its durability and strength to withstand whatever Auckland’s weather throws at it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Choosing the right roof for your new home is a big decision – after all, you want to make the best choice today that will add both protection and value to your property well into the future. Our team have the expertise to help you decide which roofing products will work best for your new roof taking into account location (marine, coastal, inland), environment (high wind zone), pitch (slope) and talk you through the options available to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We’ll provide a free, no-obligation quote for new roof installations.</p>\n<!-- /wp:paragraph -->', 'New Roofing', '', 'publish', 'closed', 'closed', '', 'new-roofing', '', '', '2020-10-09 02:08:27', '2020-10-09 02:08:27', '', 0, 'http://localhost/roofme/?page_id=11', 0, 'page', '', 0),
(12, 1, '2020-10-09 02:08:27', '2020-10-09 02:08:27', '<!-- wp:paragraph -->\n<p>Protect your new home or extension with a quality long run roof, professionally installed by the experienced team of Auckland roofers from Roof Me.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We provide new roof installation for new homes, extensions and garages. We understand that each home, location and environment is unique, so our customised roofing solutions are designed to complement your building and your budget, while taking these important factors into consideration.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You can choose Roof Me confidentially for your next build project thanks to our 5-year guarantee on workmanship on all new roofs. As a Licensed Building Practitioner, we’re licensed to install new roofs in Profiled Metal Roof &amp; Wall Cladding (and also Concrete or Clay Tiles).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>New Metal Profiled Roofing &amp; Cladding (Long Run Roofing)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>LBP Logo black and white version</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Although roofing materials may look the same in appearance, they may not perform the same long term</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>All our new roofs are installed using quality COLORSTEEL®, ZINCALUME® or ColorCote® products. Long run COLORSTEEL® is one of the best, and most popular, choices for roofing in New Zealand. Not only for its variety of colour options to suit your home, but also for its durability and strength to withstand whatever Auckland’s weather throws at it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Choosing the right roof for your new home is a big decision – after all, you want to make the best choice today that will add both protection and value to your property well into the future. Our team have the expertise to help you decide which roofing products will work best for your new roof taking into account location (marine, coastal, inland), environment (high wind zone), pitch (slope) and talk you through the options available to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We’ll provide a free, no-obligation quote for new roof installations.</p>\n<!-- /wp:paragraph -->', 'New Roofing', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-10-09 02:08:27', '2020-10-09 02:08:27', '', 11, 'http://localhost/roofme/index.php/2020/10/09/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2020-10-09 02:14:18', '2020-10-09 02:14:18', '<!-- wp:paragraph -->\n<p>At Roof Me we only use high quality Roofing products from the COLORSTEEL® and COLORCOTE® Range.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Roofing products may look the same in appearance but they may not perform the same due to different grades (thickness), coatings (paint), profile and even what type of metallic make up they are.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>All our materials are backed by our Suppliers and also carry their own manufacture warranties.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When choosing a Roofing Product there are many factors that you need to consider the products effectiveness, durability, safety, life expectancy of the Roof – we will make sure we quote the right materials are being used to complete the job to the highest possible standards. We have options available for every budget as affordability is also a main factor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Let us help you find the perfect Roofing Solution for your Home.</p>\n<!-- /wp:paragraph -->', 'Products', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2020-10-09 02:14:18', '2020-10-09 02:14:18', '', 0, 'http://localhost/roofme/?page_id=13', 0, 'page', '', 0),
(14, 1, '2020-10-09 02:14:18', '2020-10-09 02:14:18', '<!-- wp:paragraph -->\n<p>At Roof Me we only use high quality Roofing products from the COLORSTEEL® and COLORCOTE® Range.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Roofing products may look the same in appearance but they may not perform the same due to different grades (thickness), coatings (paint), profile and even what type of metallic make up they are.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>All our materials are backed by our Suppliers and also carry their own manufacture warranties.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When choosing a Roofing Product there are many factors that you need to consider the products effectiveness, durability, safety, life expectancy of the Roof – we will make sure we quote the right materials are being used to complete the job to the highest possible standards. We have options available for every budget as affordability is also a main factor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Let us help you find the perfect Roofing Solution for your Home.</p>\n<!-- /wp:paragraph -->', 'Products', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-10-09 02:14:18', '2020-10-09 02:14:18', '', 13, 'http://localhost/roofme/index.php/2020/10/09/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-10-09 02:31:30', '2020-10-09 02:31:30', '<!-- wp:paragraph -->\n<p>CONTACT US FOR NEW ROOFING NEEDS<br>Roof Me is based in Whangaparaoa, Hibiscus Coast but we service North Auckland to South Auckland. Work outside or Auckland can also be discussed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Specialising in Re Roofing &amp; New Roofing using quality COLORSTEEL® / COLORCOTE® products.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We would be pleased to supply you with a free no obligation quote for your roofing needs</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please note: We do not carry out Roof painting or treatments.</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2020-10-09 02:31:30', '2020-10-09 02:31:30', '', 0, 'http://localhost/roofme/?page_id=15', 0, 'page', '', 0),
(16, 1, '2020-10-09 02:31:30', '2020-10-09 02:31:30', '<!-- wp:paragraph -->\n<p>CONTACT US FOR NEW ROOFING NEEDS<br>Roof Me is based in Whangaparaoa, Hibiscus Coast but we service North Auckland to South Auckland. Work outside or Auckland can also be discussed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Specialising in Re Roofing &amp; New Roofing using quality COLORSTEEL® / COLORCOTE® products.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We would be pleased to supply you with a free no obligation quote for your roofing needs</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please note: We do not carry out Roof painting or treatments.</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-10-09 02:31:30', '2020-10-09 02:31:30', '', 15, 'http://localhost/roofme/index.php/2020/10/09/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2020-10-09 02:32:43', '2020-10-09 02:32:43', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2020-10-09 03:09:44', '2020-10-09 03:09:44', '', 0, 'http://localhost/roofme/?p=17', 5, 'nav_menu_item', '', 0),
(18, 1, '2020-10-09 02:32:43', '2020-10-09 02:32:43', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2020-10-09 03:09:44', '2020-10-09 03:09:44', '', 0, 'http://localhost/roofme/?p=18', 4, 'nav_menu_item', '', 0),
(19, 1, '2020-10-09 02:32:43', '2020-10-09 02:32:43', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2020-10-09 03:09:44', '2020-10-09 03:09:44', '', 0, 'http://localhost/roofme/?p=19', 2, 'nav_menu_item', '', 0),
(20, 1, '2020-10-09 02:32:43', '2020-10-09 02:32:43', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2020-10-09 03:09:44', '2020-10-09 03:09:44', '', 0, 'http://localhost/roofme/?p=20', 3, 'nav_menu_item', '', 0),
(21, 1, '2020-10-09 02:32:43', '2020-10-09 02:32:43', '', 'Home', '', 'publish', 'closed', 'closed', '', '21', '', '', '2020-10-09 23:24:05', '2020-10-09 23:24:05', '', 0, 'http://localhost/roofme/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2020-10-09 22:31:08', '2020-10-09 22:31:08', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-09 22:31:08\"\n    },\n    \"page_on_front\": {\n        \"value\": \"5\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-09 22:31:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ab2ea7da-2c75-4d49-abd4-c18c90562e47', '', '', '2020-10-09 22:31:08', '2020-10-09 22:31:08', '', 0, 'http://roofme:8888/index.php/2020/10/09/ab2ea7da-2c75-4d49-abd4-c18c90562e47/', 0, 'customize_changeset', '', 0),
(23, 1, '2020-10-09 22:31:45', '2020-10-09 22:31:45', '{\n    \"blogdescription\": {\n        \"value\": \"We\'ve got you covered\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-09 22:31:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '47e6ddc7-514d-4d47-9a1a-b223a106a7b0', '', '', '2020-10-09 22:31:45', '2020-10-09 22:31:45', '', 0, 'http://roofme:8888/index.php/2020/10/09/47e6ddc7-514d-4d47-9a1a-b223a106a7b0/', 0, 'customize_changeset', '', 0),
(24, 1, '2020-10-09 22:35:54', '2020-10-09 22:35:54', '<!-- wp:paragraph -->\n<p>Working with Roof Me, you can trust that what’s on the outside of your home is the best choice for protecting what’s on the inside. Because it’s one thing to have a roof over your head, it’s another knowing that it’s weathertight, durable and made using high-quality, trusted products that have been professionally installed by experienced roofers.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Whether you’re renovating or building a new home, choosing the right roof to suit your property is an important decision that comes down to more that just aesthetics. Our team will help you choose the best roof to suit your home, your environment and your budget, while also considering the latest desgin trends and product innovation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We’re big on workmanship and communication, and our customers recognise us for the professionalism and intergrity. We’ll keep you informed of our progress throughout your project, and ensure you’re 100% satisfied with the final result.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We are Licensed Building Practitioners – find out more about our experienced team.</p>\n<!-- /wp:paragraph -->', 'Welcome to Roof Me...', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-10-09 22:35:54', '2020-10-09 22:35:54', '', 5, 'http://roofme:8888/index.php/2020/10/09/5-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2020-10-09 22:41:26', '2020-10-09 22:41:26', '<!-- wp:heading -->\n<h2>Welcome to Roof Me...</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Working with Roof Me, you can trust that what’s on the outside of your home is the best choice for protecting what’s on the inside. Because it’s one thing to have a roof over your head, it’s another knowing that it’s weathertight, durable and made using high-quality, trusted products that have been professionally installed by experienced roofers.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Whether you’re renovating or building a new home, choosing the right roof to suit your property is an important decision that comes down to more that just aesthetics. Our team will help you choose the best roof to suit your home, your environment and your budget, while also considering the latest desgin trends and product innovation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We’re big on workmanship and communication, and our customers recognise us for the professionalism and intergrity. We’ll keep you informed of our progress throughout your project, and ensure you’re 100% satisfied with the final result.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We are Licensed Building Practitioners – find out more about our experienced team.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-10-09 22:41:26', '2020-10-09 22:41:26', '', 5, 'http://roofme:8888/5-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2020-10-09 22:43:40', '2020-10-09 22:43:40', '<!-- wp:paragraph -->\n<p>Working with Roof Me, you can trust that what’s on the outside of your home is the best choice for protecting what’s on the inside. Because it’s one thing to have a roof over your head, it’s another knowing that it’s weathertight, durable and made using high-quality, trusted products that have been professionally installed by experienced roofers.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Whether you’re renovating or building a new home, choosing the right roof to suit your property is an important decision that comes down to more that just aesthetics. Our team will help you choose the best roof to suit your home, your environment and your budget, while also considering the latest desgin trends and product innovation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We’re big on workmanship and communication, and our customers recognise us for the professionalism and intergrity. We’ll keep you informed of our progress throughout your project, and ensure you’re 100% satisfied with the final result.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We are Licensed Building Practitioners – find out more about our experienced team.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-10-09 22:43:40', '2020-10-09 22:43:40', '', 5, 'http://roofme:8888/5-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-10-09 22:44:37', '2020-10-09 22:44:37', '<!-- wp:paragraph -->\n<p>Working with Roof Me, you can trust that what’s on the outside of your home is the best choice for protecting what’s on the inside. Because it’s one thing to have a roof over your head, it’s another knowing that it’s weathertight, durable and made using high-quality, trusted products that have been professionally installed by experienced roofers.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Whether you’re renovating or building a new home, choosing the right roof to suit your property is an important decision that comes down to more that just aesthetics. Our team will help you choose the best roof to suit your home, your environment and your budget, while also considering the latest design trends and product innovation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We’re big on workmanship and communication, and our customers recognise us for the professionalism and intergrity. We’ll keep you informed of our progress throughout your project, and ensure you’re 100% satisfied with the final result.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We are Licensed Building Practitioners – find out more about our experienced team.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-10-09 22:44:37', '2020-10-09 22:44:37', '', 5, 'http://roofme:8888/5-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2020-10-09 22:49:39', '2020-10-09 22:49:39', '<!-- wp:paragraph -->\n<p><strong>Working with Roof Me, you can trust that what’s on the outside of your home is the best choice for protecting what’s on the inside. Because it’s one thing to have a roof over your head, it’s another knowing that it’s weathertight, durable and made using high-quality, trusted products that have been professionally installed by experienced roofers.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Whether you’re renovating or building a new home, choosing the right roof to suit your property is an important decision that comes down to more that just aesthetics. Our team will help you choose the best roof to suit your home, your environment and your budget, while also considering the latest design trends and product innovation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We’re big on workmanship and communication, and our customers recognise us for the professionalism and intergrity. We’ll keep you informed of our progress throughout your project, and ensure you’re 100% satisfied with the final result.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We are Licensed Building Practitioners – find out more about our experienced team.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-10-09 22:49:39', '2020-10-09 22:49:39', '', 5, 'http://roofme:8888/5-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2020-10-09 22:51:21', '2020-10-09 22:51:21', '', 'slide-1', '', 'inherit', 'open', 'closed', '', 'slide-1', '', '', '2020-10-09 22:51:21', '2020-10-09 22:51:21', '', 5, 'http://roofme:8888/wp-content/uploads/2020/10/slide-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2020-10-09 22:51:33', '2020-10-09 22:51:33', '<!-- wp:paragraph -->\n<p><strong>Working with Roof Me, you can trust that what’s on the outside of your home is the best choice for protecting what’s on the inside. Because it’s one thing to have a roof over your head, it’s another knowing that it’s weathertight, durable and made using high-quality, trusted products that have been professionally installed by experienced roofers.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Whether you’re renovating or building a new home, choosing the right roof to suit your property is an important decision that comes down to more that just aesthetics. Our team will help you choose the best roof to suit your home, your environment and your budget, while also considering the latest design trends and product innovation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We’re big on workmanship and communication, and our customers recognise us for the professionalism and intergrity. We’ll keep you informed of our progress throughout your project, and ensure you’re 100% satisfied with the final result.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We are Licensed Building Practitioners – find out more about our experienced team.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":30,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://roofme:8888/wp-content/uploads/2020/10/slide-1-1024x477.jpg\" alt=\"\" class=\"wp-image-30\"/></figure>\n<!-- /wp:image -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-10-09 22:51:33', '2020-10-09 22:51:33', '', 5, 'http://roofme:8888/5-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2020-10-09 23:20:13', '2020-10-09 23:20:13', '<!-- wp:paragraph -->\n<p>Working with Roof Me, you can trust that what’s on the outside of your home is the best choice for protecting what’s on the inside. Because it’s one thing to have a roof over your head, it’s another knowing that it’s weathertight, durable and made using high-quality, trusted products that have been professionally installed by experienced roofers.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Whether you’re renovating or building a new home, choosing the right roof to suit your property is an important decision that comes down to more that just aesthetics. Our team will help you choose the best roof to suit your home, your environment and your budget, while also considering the latest design trends and product innovation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We’re big on workmanship and communication, and our customers recognise us for the professionalism and intergrity. We’ll keep you informed of our progress throughout your project, and ensure you’re 100% satisfied with the final result.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We are Licensed Building Practitioners – find out more about our experienced team.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":30,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://roofme:8888/wp-content/uploads/2020/10/slide-1-1024x477.jpg\" alt=\"\" class=\"wp-image-30\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:separator {\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator is-style-wide\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-10-09 23:20:13', '2020-10-09 23:20:13', '', 5, 'http://roofme:8888/5-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2020-10-09 23:22:19', '2020-10-09 23:22:19', '<!-- wp:paragraph -->\n<p>Working with Roof Me, you can trust that what’s on the outside of your home is the best choice for protecting what’s on the inside. Because it’s one thing to have a roof over your head, it’s another knowing that it’s weathertight, durable and made using high-quality, trusted products that have been professionally installed by experienced roofers.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Whether you’re renovating or building a new home, choosing the right roof to suit your property is an important decision that comes down to more that just aesthetics. Our team will help you choose the best roof to suit your home, your environment and your budget, while also considering the latest design trends and product innovation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We’re big on workmanship and communication, and our customers recognise us for the professionalism and intergrity. We’ll keep you informed of our progress throughout your project, and ensure you’re 100% satisfied with the final result.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We are Licensed Building Practitioners – find out more about our experienced team.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-10-09 23:22:19', '2020-10-09 23:22:19', '', 5, 'http://roofme:8888/5-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2020-10-09 23:23:37', '2020-10-09 23:23:37', '<!-- wp:paragraph -->\n<p>Working with Roof Me, you can trust that what’s on the outside of your home is the best choice for protecting what’s on the inside. Because it’s one thing to have a roof over your head, it’s another knowing that it’s weathertight, durable and made using high-quality, trusted products that have been professionally installed by experienced roofers.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Whether you’re renovating or building a new home, choosing the right roof to suit your property is an important decision that comes down to more that just aesthetics. Our team will help you choose the best roof to suit your home, your environment and your budget, while also considering the latest design trends and product innovation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We’re big on workmanship and communication, and our customers recognise us for the professionalism and intergrity. We’ll keep you informed of our progress throughout your project, and ensure you’re 100% satisfied with the final result.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Roof Me is based in Whangaparaoa on the Hibiscus Coast, but services homes throughout the North Shore and Auckland. We are Licensed Building Practitioners – find out more about our experienced team.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Welcome to Roof Me...', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-10-09 23:23:37', '2020-10-09 23:23:37', '', 5, 'http://roofme:8888/5-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2020-10-09 23:24:05', '2020-10-09 23:24:05', '{\n    \"nav_menu_item[21]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 5,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Front Page\",\n            \"url\": \"http://roofme:8888/\",\n            \"title\": \"Home\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 2,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"Welcome to Roof Me\\u2026\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-09 23:24:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '13db347d-50dc-4e68-9621-9d475a1c62de', '', '', '2020-10-09 23:24:05', '2020-10-09 23:24:05', '', 0, 'http://roofme:8888/13db347d-50dc-4e68-9621-9d475a1c62de/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'main', 'main', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(17, 2, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(16, 1, 'session_tokens', 'a:2:{s:64:\"aedb1abe53d1bef1ab9042b82d9c53b5009ba16374dca14b4e4a63fb69e987f7\";a:4:{s:10:\"expiration\";i:1602381711;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\";s:5:\"login\";i:1602208911;}s:64:\"ceb61386d22450d65444be164a9930b9a50e7736e159acdf3d8358942bdce1d3\";a:4:{s:10:\"expiration\";i:1602396414;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\";s:5:\"login\";i:1602223614;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

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
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BgfwPKtK0.YnGspNZ/DlO5bLxAlAqu1', 'admin', 'nzmikejp@gmail.com', 'http://localhost/roofme', '2020-10-09 02:01:10', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
