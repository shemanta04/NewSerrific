-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2020 at 01:21 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newserific`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-04-10 06:04:19', '2020-04-10 06:04:19', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 22, 'John', 'john@gmail.com', 'http://john.com', '::1', '2020-04-10 17:35:30', '2020-04-10 17:35:30', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0', '', 0, 0),
(3, 41, 'John', 'john@gmail.com', 'http://john.com', '::1', '2020-04-10 17:37:55', '2020-04-10 17:37:55', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don’t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn’t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0', '', 0, 0),
(4, 22, 'admin', 'shemanta@shemantabhowmik.com', 'http://localhost/newserific', '::1', '2020-04-10 17:38:22', '2020-04-10 17:38:22', 'tablished fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content her', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0', '', 2, 1);

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
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
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
(1, 'siteurl', 'http://localhost/newserific', 'yes'),
(2, 'home', 'http://localhost/newserific', 'yes'),
(3, 'blogname', 'Newserific', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'shemanta@shemantabhowmik.com', 'yes'),
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
(29, 'rewrite_rules', 'a:104:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:35:\"gallery/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"gallery/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"gallery/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"gallery/([^/]+)/embed/?$\";s:40:\"index.php?gallery=$matches[1]&embed=true\";s:28:\"gallery/([^/]+)/trackback/?$\";s:34:\"index.php?gallery=$matches[1]&tb=1\";s:36:\"gallery/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?gallery=$matches[1]&paged=$matches[2]\";s:43:\"gallery/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?gallery=$matches[1]&cpage=$matches[2]\";s:32:\"gallery/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?gallery=$matches[1]&page=$matches[2]\";s:24:\"gallery/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"gallery/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"gallery/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=74&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:33:\"duplicate-post/duplicate-post.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'newserific', 'yes'),
(41, 'stylesheet', 'newserific', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
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
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:4:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:10:\"Categories\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:4;a:4:{s:5:\"title\";s:10:\"Categories\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:9:\"Text Here\";s:4:\"text\";s:258:\"Your plugin code is executed before wp_head() (which we can assume will invoke the actions added to it) actions added to it).\r\n<br>\r\nYour plugin code is executed before wp_head() (which we can assume will invoke the actions added to it) actions added to it).\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '7', 'yes'),
(84, 'page_on_front', '74', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1602050659', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:3;a:1:{s:5:\"title\";s:6:\"Search\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:3:{s:5:\"title\";s:12:\"Recent posts\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"right-sidebar\";a:2:{i:0;s:7:\"pages-2\";i:1;s:12:\"categories-3\";}s:14:\"footer-sidebar\";a:4:{i:0;s:12:\"categories-4\";i:1;s:14:\"recent-posts-3\";i:2;s:8:\"search-3\";i:3;s:6:\"text-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:7:{i:1586682260;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1586714660;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1586757859;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1586757866;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1586757868;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587189859;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:2:{i:2;a:3:{s:5:\"title\";s:5:\"Pages\";s:6:\"sortby\";s:10:\"post_title\";s:7:\"exclude\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:1:{s:22:\"NOu7c8TEUlMezynzUNcXRs\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BTkZtXP6tiSXQzMLVLuKpVlyYVgx45/\";s:10:\"created_at\";i:1586669004;}}', 'yes'),
(115, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.4-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1586671468;s:15:\"version_checked\";s:3:\"5.4\";s:12:\"translations\";a:0:{}}', 'no'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1586498754;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(121, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1586671470;s:7:\"checked\";a:2:{s:10:\"newserific\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(122, '_site_transient_timeout_browser_d89a5df993c1338c5235193f56aa2992', '1587103467', 'no'),
(123, '_site_transient_browser_d89a5df993c1338c5235193f56aa2992', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"76.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(124, '_site_transient_timeout_php_check_141a8d7da406be785ba26084a46e1c00', '1587103468', 'no'),
(125, '_site_transient_php_check_141a8d7da406be785ba26084a46e1c00', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(127, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1586705442', 'no'),
(128, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}', 'no'),
(129, 'can_compress_scripts', '1', 'no'),
(140, 'current_theme', '', 'yes'),
(141, 'theme_mods_twentynineteen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1586498844;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(142, 'theme_switched', '', 'yes'),
(144, 'theme_mods_newserific', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:12:\"primary-menu\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1586498840;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(149, 'WPLANG', '', 'yes'),
(150, 'new_admin_email', 'shemanta@shemantabhowmik.com', 'yes'),
(153, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(158, 'recently_activated', 'a:0:{}', 'yes'),
(161, 'recovery_mode_email_last_sent', '1586669004', 'yes'),
(171, 'category_children', 'a:0:{}', 'yes'),
(179, 'duplicate_post_copytitle', '1', 'yes'),
(180, 'duplicate_post_copydate', '', 'yes'),
(181, 'duplicate_post_copystatus', '', 'yes'),
(182, 'duplicate_post_copyslug', '', 'yes'),
(183, 'duplicate_post_copyexcerpt', '1', 'yes'),
(184, 'duplicate_post_copycontent', '1', 'yes'),
(185, 'duplicate_post_copythumbnail', '1', 'yes'),
(186, 'duplicate_post_copytemplate', '1', 'yes'),
(187, 'duplicate_post_copyformat', '1', 'yes'),
(188, 'duplicate_post_copyauthor', '', 'yes'),
(189, 'duplicate_post_copypassword', '', 'yes'),
(190, 'duplicate_post_copyattachments', '', 'yes'),
(191, 'duplicate_post_copychildren', '', 'yes'),
(192, 'duplicate_post_copycomments', '', 'yes'),
(193, 'duplicate_post_copymenuorder', '1', 'yes'),
(194, 'duplicate_post_taxonomies_blacklist', '', 'yes'),
(195, 'duplicate_post_blacklist', '', 'yes'),
(196, 'duplicate_post_types_enabled', 'a:4:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:8:\"wp_block\";i:3;s:7:\"gallery\";}', 'yes'),
(197, 'duplicate_post_show_row', '1', 'yes'),
(198, 'duplicate_post_show_adminbar', '1', 'yes'),
(199, 'duplicate_post_show_submitbox', '1', 'yes'),
(200, 'duplicate_post_show_bulkactions', '1', 'yes'),
(201, 'duplicate_post_show_original_column', '', 'yes'),
(202, 'duplicate_post_show_original_in_post_states', '', 'yes'),
(203, 'duplicate_post_show_original_meta_box', '', 'yes'),
(204, 'duplicate_post_version', '3.2.4', 'yes'),
(205, 'duplicate_post_show_notice', '', 'no'),
(214, 'duplicate_post_title_prefix', '', 'yes'),
(215, 'duplicate_post_title_suffix', '', 'yes'),
(216, 'duplicate_post_increase_menu_order_by', '', 'yes'),
(217, 'duplicate_post_roles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";}', 'yes'),
(259, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1586671470;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"4.1.4\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.7\";s:33:\"duplicate-post/duplicate-post.php\";s:5:\"3.2.4\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=2279696\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:5:\"3.2.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/duplicate-post.3.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=1612753\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(260, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.7\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1586547880;s:7:\"version\";s:5:\"5.1.7\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(274, '_transient_health-check-site-status-result', '{\"good\":\"12\",\"recommended\":\"5\",\"critical\":\"0\"}', 'yes'),
(289, 'r_notice_data', '{}', 'yes'),
(290, 'redux_blast', '1586626562', 'yes'),
(291, 'redux_version_upgraded_from', '3.6.18', 'yes'),
(292, 'redux_demo', 'a:17:{s:8:\"last_tab\";s:0:\"\";s:7:\"favicon\";a:9:{s:3:\"url\";s:95:\"http://localhost/newserific/wp-content/uploads/2020/04/c994b82b-f5c0-4491-b80c-e2918f8a3b70.jpg\";s:2:\"id\";s:2:\"77\";s:6:\"height\";s:3:\"351\";s:5:\"width\";s:3:\"624\";s:9:\"thumbnail\";s:103:\"http://localhost/newserific/wp-content/uploads/2020/04/c994b82b-f5c0-4491-b80c-e2918f8a3b70-150x150.jpg\";s:5:\"title\";s:36:\"c994b82b-f5c0-4491-b80c-e2918f8a3b70\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:14:\"favicon-ratina\";a:9:{s:3:\"url\";s:0:\"\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:5:\"title\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:11:\"description\";s:0:\"\";}s:14:\"copyright-text\";s:32:\"all rights reserved by kichuekta\";s:12:\"opt-checkbox\";s:1:\"1\";s:15:\"opt-multi-check\";a:3:{i:1;s:1:\"1\";i:2;s:0:\"\";i:3;s:0:\"\";}s:17:\"opt-checkbox-data\";a:1:{i:2;s:0:\"\";}s:20:\"opt-checkbox-sidebar\";a:2:{s:13:\"right-sidebar\";s:0:\"\";s:14:\"footer-sidebar\";s:0:\"\";}s:9:\"opt-radio\";s:1:\"2\";s:12:\"opt-sortable\";a:3:{s:8:\"Text One\";s:6:\"Item 1\";s:8:\"Text Two\";s:6:\"Item 2\";s:10:\"Text Three\";s:6:\"Item 3\";}s:18:\"opt-check-sortable\";a:3:{s:3:\"cb1\";s:0:\"\";s:3:\"cb2\";s:1:\"1\";s:3:\"cb3\";s:0:\"\";}s:12:\"text-example\";s:12:\"Default Text\";s:17:\"text-example-hint\";s:12:\"Default Text\";s:16:\"text-placeholder\";s:0:\"\";s:13:\"opt-multitext\";a:1:{i:0;s:0:\"\";}s:8:\"password\";a:2:{s:8:\"username\";s:5:\"admin\";s:8:\"password\";s:15:\"admin@admin1234\";}s:12:\"opt-textarea\";s:12:\"Default Text\";}', 'yes'),
(293, 'redux_demo-transients', 'a:2:{s:14:\"changed_values\";a:1:{s:14:\"copyright-text\";s:19:\"all rights reserved\";}s:9:\"last_save\";i:1586681422;}', 'yes'),
(298, '_transient_timeout_select2-css_style_cdn_is_up', '1586712970', 'no'),
(299, '_transient_select2-css_style_cdn_is_up', '1', 'no'),
(300, '_transient_timeout_select2-js_script_cdn_is_up', '1586712970', 'no'),
(301, '_transient_select2-js_script_cdn_is_up', '1', 'no'),
(302, '_transient_timeout_ace-editor-js_script_cdn_is_up', '1586712971', 'no'),
(303, '_transient_ace-editor-js_script_cdn_is_up', '1', 'no'),
(313, '_site_transient_timeout_theme_roots', '1586673269', 'no'),
(314, '_site_transient_theme_roots', 'a:2:{s:10:\"newserific\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
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
(10, 5, '_menu_item_url', 'http://localhost/newserific/'),
(21, 7, '_edit_lock', '1586499847:1'),
(22, 9, '_edit_last', '1'),
(23, 9, '_edit_lock', '1586546909:1'),
(24, 11, '_edit_last', '1'),
(25, 11, '_edit_lock', '1586499922:1'),
(26, 13, '_edit_last', '1'),
(27, 13, '_edit_lock', '1586547081:1'),
(28, 15, '_edit_last', '1'),
(29, 15, '_edit_lock', '1586624522:1'),
(30, 17, '_menu_item_type', 'custom'),
(31, 17, '_menu_item_menu_item_parent', '0'),
(32, 17, '_menu_item_object_id', '17'),
(33, 17, '_menu_item_object', 'custom'),
(34, 17, '_menu_item_target', ''),
(35, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 17, '_menu_item_xfn', ''),
(37, 17, '_menu_item_url', 'http://localhost/newserific/'),
(38, 17, '_menu_item_orphaned', '1586500105'),
(39, 18, '_menu_item_type', 'post_type'),
(40, 18, '_menu_item_menu_item_parent', '0'),
(41, 18, '_menu_item_object_id', '9'),
(42, 18, '_menu_item_object', 'page'),
(43, 18, '_menu_item_target', ''),
(44, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(45, 18, '_menu_item_xfn', ''),
(46, 18, '_menu_item_url', ''),
(48, 19, '_menu_item_type', 'post_type'),
(49, 19, '_menu_item_menu_item_parent', '0'),
(50, 19, '_menu_item_object_id', '7'),
(51, 19, '_menu_item_object', 'page'),
(52, 19, '_menu_item_target', ''),
(53, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 19, '_menu_item_xfn', ''),
(55, 19, '_menu_item_url', ''),
(57, 20, '_menu_item_type', 'post_type'),
(58, 20, '_menu_item_menu_item_parent', '0'),
(59, 20, '_menu_item_object_id', '15'),
(60, 20, '_menu_item_object', 'page'),
(61, 20, '_menu_item_target', ''),
(62, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 20, '_menu_item_xfn', ''),
(64, 20, '_menu_item_url', ''),
(66, 21, '_menu_item_type', 'post_type'),
(67, 21, '_menu_item_menu_item_parent', '0'),
(68, 21, '_menu_item_object_id', '11'),
(69, 21, '_menu_item_object', 'page'),
(70, 21, '_menu_item_target', ''),
(71, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(72, 21, '_menu_item_xfn', ''),
(73, 21, '_menu_item_url', ''),
(75, 22, '_edit_last', '1'),
(76, 22, '_edit_lock', '1586500969:1'),
(79, 24, '_wp_attached_file', '2020/04/60x60.gif'),
(80, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:17:\"2020/04/60x60.gif\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 25, '_wp_attached_file', '2020/04/80x80.gif'),
(82, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:80;s:6:\"height\";i:80;s:4:\"file\";s:17:\"2020/04/80x80.gif\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 26, '_wp_attached_file', '2020/04/125x125.gif'),
(84, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:125;s:6:\"height\";i:125;s:4:\"file\";s:19:\"2020/04/125x125.gif\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 27, '_wp_attached_file', '2020/04/174x174.gif'),
(86, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:174;s:6:\"height\";i:174;s:4:\"file\";s:19:\"2020/04/174x174.gif\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"174x174-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(87, 28, '_wp_attached_file', '2020/04/190x80.gif'),
(88, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:190;s:6:\"height\";i:80;s:4:\"file\";s:18:\"2020/04/190x80.gif\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"190x80-150x80.gif\";s:5:\"width\";i:150;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(89, 29, '_wp_attached_file', '2020/04/200x150.gif'),
(90, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:150;s:4:\"file\";s:19:\"2020/04/200x150.gif\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"200x150-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(91, 30, '_wp_attached_file', '2020/04/240x90.gif'),
(92, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:240;s:6:\"height\";i:90;s:4:\"file\";s:18:\"2020/04/240x90.gif\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"240x90-150x90.gif\";s:5:\"width\";i:150;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 31, '_wp_attached_file', '2020/04/250x250.gif'),
(94, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:19:\"2020/04/250x250.gif\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"250x250-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(95, 32, '_wp_attached_file', '2020/04/290x100.gif'),
(96, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:290;s:6:\"height\";i:100;s:4:\"file\";s:19:\"2020/04/290x100.gif\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"290x100-150x100.gif\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 33, '_wp_attached_file', '2020/04/468x60.gif'),
(98, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:468;s:6:\"height\";i:60;s:4:\"file\";s:18:\"2020/04/468x60.gif\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"468x60-300x38.gif\";s:5:\"width\";i:300;s:6:\"height\";i:38;s:9:\"mime-type\";s:9:\"image/gif\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"468x60-150x60.gif\";s:5:\"width\";i:150;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99, 34, '_wp_attached_file', '2020/04/620x270.gif'),
(100, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:620;s:6:\"height\";i:270;s:4:\"file\";s:19:\"2020/04/620x270.gif\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"620x270-300x131.gif\";s:5:\"width\";i:300;s:6:\"height\";i:131;s:9:\"mime-type\";s:9:\"image/gif\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"620x270-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(101, 35, '_wp_attached_file', '2020/04/imgl.gif'),
(102, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:125;s:6:\"height\";i:125;s:4:\"file\";s:16:\"2020/04/imgl.gif\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 36, '_wp_attached_file', '2020/04/imgr.gif'),
(104, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:125;s:6:\"height\";i:125;s:4:\"file\";s:16:\"2020/04/imgr.gif\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 22, '_thumbnail_id', '34'),
(110, 38, '_edit_last', '1'),
(111, 38, '_edit_lock', '1586509117:1'),
(116, 38, '_thumbnail_id', '28'),
(119, 40, '_thumbnail_id', '28'),
(120, 40, '_dp_original', '38'),
(121, 41, '_thumbnail_id', '28'),
(122, 41, '_dp_original', '38'),
(123, 41, '_edit_last', '1'),
(126, 41, '_edit_lock', '1586509276:1'),
(127, 40, '_edit_last', '1'),
(130, 40, '_edit_lock', '1586509281:1'),
(131, 49, '_edit_last', '1'),
(132, 49, '_thumbnail_id', '31'),
(133, 49, '_edit_lock', '1586519881:1'),
(134, 49, '_wp_old_slug', 'auto-draft'),
(135, 50, '_edit_last', '1'),
(136, 50, '_edit_lock', '1586519892:1'),
(137, 50, '_thumbnail_id', '31'),
(138, 51, '_thumbnail_id', '31'),
(139, 51, '_dp_original', '50'),
(140, 51, '_edit_lock', '1586519901:1'),
(141, 51, '_edit_last', '1'),
(142, 52, '_edit_last', '1'),
(143, 52, '_edit_lock', '1586519914:1'),
(144, 52, '_thumbnail_id', '31'),
(145, 53, '_edit_last', '1'),
(146, 53, '_edit_lock', '1586519922:1'),
(147, 53, '_thumbnail_id', '31'),
(148, 53, '_wp_old_slug', 'photo-4-2'),
(149, 54, '_edit_last', '1'),
(150, 54, '_edit_lock', '1586519935:1'),
(151, 54, '_thumbnail_id', '31'),
(152, 55, '_edit_last', '1'),
(153, 55, '_edit_lock', '1586533429:1'),
(154, 55, '_thumbnail_id', '31'),
(155, 56, '_edit_last', '1'),
(156, 56, '_edit_lock', '1586533374:1'),
(157, 56, '_thumbnail_id', '31'),
(158, 57, '_edit_last', '1'),
(159, 57, '_edit_lock', '1586578574:1'),
(161, 57, '_thumbnail_id', '31'),
(162, 9, '_thumbnail_id', '34'),
(163, 74, '_edit_last', '1'),
(164, 74, '_edit_lock', '1586578509:1'),
(165, 74, '_wp_page_template', 'frontpage.php'),
(166, 76, '_edit_last', '1'),
(167, 76, '_edit_lock', '1586547582:1'),
(168, 77, '_wp_attached_file', '2020/04/c994b82b-f5c0-4491-b80c-e2918f8a3b70.jpg'),
(169, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:624;s:6:\"height\";i:351;s:4:\"file\";s:48:\"2020/04/c994b82b-f5c0-4491-b80c-e2918f8a3b70.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"c994b82b-f5c0-4491-b80c-e2918f8a3b70-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"c994b82b-f5c0-4491-b80c-e2918f8a3b70-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(170, 76, '_thumbnail_id', '77'),
(173, 79, '_edit_last', '1'),
(174, 79, '_edit_lock', '1586547621:1'),
(175, 80, '_wp_attached_file', '2020/04/3455a7b6-d297-43b3-a644-5da6e81e356a.jpg'),
(176, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:624;s:6:\"height\";i:416;s:4:\"file\";s:48:\"2020/04/3455a7b6-d297-43b3-a644-5da6e81e356a.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"3455a7b6-d297-43b3-a644-5da6e81e356a-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"3455a7b6-d297-43b3-a644-5da6e81e356a-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(177, 79, '_thumbnail_id', '80'),
(180, 83, '_wp_attached_file', '2020/04/0187d627-cbc4-46e6-8332-e9fc6d7b7781.jpg'),
(181, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:624;s:6:\"height\";i:351;s:4:\"file\";s:48:\"2020/04/0187d627-cbc4-46e6-8332-e9fc6d7b7781.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"0187d627-cbc4-46e6-8332-e9fc6d7b7781-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"0187d627-cbc4-46e6-8332-e9fc6d7b7781-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(182, 82, '_edit_last', '1'),
(183, 82, '_thumbnail_id', '83'),
(186, 82, '_edit_lock', '1586547708:1'),
(187, 85, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(188, 85, '_mail', 'a:8:{s:7:\"subject\";s:27:\"Newserific \"[your-subject]\"\";s:6:\"sender\";s:41:\"Newserific <shemanta@shemantabhowmik.com>\";s:4:\"body\";s:176:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Newserific (http://localhost/newserific)\";s:9:\"recipient\";s:28:\"shemanta@shemantabhowmik.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(189, 85, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:27:\"Newserific \"[your-subject]\"\";s:6:\"sender\";s:41:\"Newserific <shemanta@shemantabhowmik.com>\";s:4:\"body\";s:118:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Newserific (http://localhost/newserific)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:38:\"Reply-To: shemanta@shemantabhowmik.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(190, 85, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(191, 85, '_additional_settings', NULL),
(192, 85, '_locale', 'en_US'),
(193, 15, '_wp_page_template', 'default'),
(194, 87, '_wp_attached_file', '2020/04/cropped-80x80-1.gif'),
(195, 87, '_wp_attachment_context', 'site-icon'),
(196, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:27:\"2020/04/cropped-80x80-1.gif\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cropped-80x80-1-300x300.gif\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/gif\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-80x80-1-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:27:\"cropped-80x80-1-270x270.gif\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/gif\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:27:\"cropped-80x80-1-192x192.gif\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/gif\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:27:\"cropped-80x80-1-180x180.gif\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/gif\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:25:\"cropped-80x80-1-32x32.gif\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(197, 88, '_wp_attached_file', '2020/04/cropped-0187d627-cbc4-46e6-8332-e9fc6d7b7781.jpg'),
(198, 88, '_wp_attachment_context', 'site-icon'),
(199, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:56:\"2020/04/cropped-0187d627-cbc4-46e6-8332-e9fc6d7b7781.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"cropped-0187d627-cbc4-46e6-8332-e9fc6d7b7781-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"cropped-0187d627-cbc4-46e6-8332-e9fc6d7b7781-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:56:\"cropped-0187d627-cbc4-46e6-8332-e9fc6d7b7781-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:56:\"cropped-0187d627-cbc4-46e6-8332-e9fc6d7b7781-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:56:\"cropped-0187d627-cbc4-46e6-8332-e9fc6d7b7781-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:54:\"cropped-0187d627-cbc4-46e6-8332-e9fc6d7b7781-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(200, 89, '_wp_trash_meta_status', 'publish'),
(201, 89, '_wp_trash_meta_time', '1586672443');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-04-10 06:04:19', '2020-04-10 06:04:19', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-04-10 06:04:19', '2020-04-10 06:04:19', '', 0, 'http://localhost/newserific/?p=1', 0, 'post', '', 1),
(2, 1, '2020-04-10 06:04:19', '2020-04-10 06:04:19', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/newserific/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-04-10 06:04:19', '2020-04-10 06:04:19', '', 0, 'http://localhost/newserific/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-04-10 06:04:19', '2020-04-10 06:04:19', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/newserific.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-04-10 06:04:19', '2020-04-10 06:04:19', '', 0, 'http://localhost/newserific/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-04-10 06:04:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-04-10 06:04:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/newserific/?p=4', 0, 'post', '', 0),
(5, 1, '2020-04-10 06:25:59', '2020-04-10 06:25:59', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-04-10 06:28:38', '2020-04-10 06:28:38', '', 0, 'http://localhost/newserific/?p=5', 1, 'nav_menu_item', '', 0),
(7, 1, '2020-04-10 06:26:41', '2020-04-10 06:26:41', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-04-10 06:26:41', '2020-04-10 06:26:41', '', 0, 'http://localhost/newserific/?page_id=7', 0, 'page', '', 0),
(8, 1, '2020-04-10 06:26:41', '2020-04-10 06:26:41', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-04-10 06:26:41', '2020-04-10 06:26:41', '', 7, 'http://localhost/newserific/2020/04/10/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2020-04-10 06:27:38', '2020-04-10 06:27:38', '<img class=\"wp-image-31 alignleft\" src=\"http://localhost/newserific/wp-content/uploads/2020/04/250x250.gif\" alt=\"\" width=\"351\" height=\"351\" />It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n<img class=\"size-full wp-image-26 alignright\" src=\"http://localhost/newserific/wp-content/uploads/2020/04/125x125.gif\" alt=\"\" width=\"125\" height=\"125\" />It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'About us', '', 'publish', 'open', 'open', '', 'about-us', '', '', '2020-04-10 17:46:36', '2020-04-10 17:46:36', '', 0, 'http://localhost/newserific/?page_id=9', 0, 'page', '', 0),
(10, 1, '2020-04-10 06:27:38', '2020-04-10 06:27:38', '', 'About us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-04-10 06:27:38', '2020-04-10 06:27:38', '', 9, 'http://localhost/newserific/2020/04/10/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2020-04-10 06:27:45', '2020-04-10 06:27:45', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2020-04-10 06:27:45', '2020-04-10 06:27:45', '', 0, 'http://localhost/newserific/?page_id=11', 0, 'page', '', 0),
(12, 1, '2020-04-10 06:27:45', '2020-04-10 06:27:45', '', 'Services', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-04-10 06:27:45', '2020-04-10 06:27:45', '', 11, 'http://localhost/newserific/2020/04/10/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2020-04-10 06:27:52', '2020-04-10 06:27:52', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2020-04-10 06:27:52', '2020-04-10 06:27:52', '', 0, 'http://localhost/newserific/?page_id=13', 0, 'page', '', 0),
(14, 1, '2020-04-10 06:27:52', '2020-04-10 06:27:52', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-04-10 06:27:52', '2020-04-10 06:27:52', '', 13, 'http://localhost/newserific/2020/04/10/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-04-10 06:28:00', '2020-04-10 06:28:00', '[contact-form-7 id=\"85\" title=\"Contact form 1\"]', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2020-04-11 17:04:20', '2020-04-11 17:04:20', '', 0, 'http://localhost/newserific/?page_id=15', 0, 'page', '', 0),
(16, 1, '2020-04-10 06:28:00', '2020-04-10 06:28:00', '', 'Contact us', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-04-10 06:28:00', '2020-04-10 06:28:00', '', 15, 'http://localhost/newserific/2020/04/10/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2020-04-10 06:28:25', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-04-10 06:28:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/newserific/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2020-04-10 06:28:38', '2020-04-10 06:28:38', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2020-04-10 06:28:38', '2020-04-10 06:28:38', '', 0, 'http://localhost/newserific/?p=18', 3, 'nav_menu_item', '', 0),
(19, 1, '2020-04-10 06:28:38', '2020-04-10 06:28:38', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2020-04-10 06:28:38', '2020-04-10 06:28:38', '', 0, 'http://localhost/newserific/?p=19', 2, 'nav_menu_item', '', 0),
(20, 1, '2020-04-10 06:28:38', '2020-04-10 06:28:38', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2020-04-10 06:28:38', '2020-04-10 06:28:38', '', 0, 'http://localhost/newserific/?p=20', 5, 'nav_menu_item', '', 0),
(21, 1, '2020-04-10 06:28:38', '2020-04-10 06:28:38', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2020-04-10 06:28:38', '2020-04-10 06:28:38', '', 0, 'http://localhost/newserific/?p=21', 4, 'nav_menu_item', '', 0),
(22, 1, '2020-04-10 06:33:50', '2020-04-10 06:33:50', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Why do we use it?', '', 'publish', 'open', 'open', '', 'why-do-we-use-it', '', '', '2020-04-10 06:44:54', '2020-04-10 06:44:54', '', 0, 'http://localhost/newserific/?p=22', 0, 'post', '', 2),
(23, 1, '2020-04-10 06:33:50', '2020-04-10 06:33:50', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Why do we use it?', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2020-04-10 06:33:50', '2020-04-10 06:33:50', '', 22, 'http://localhost/newserific/2020/04/10/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2020-04-10 06:34:53', '2020-04-10 06:34:53', '', '60x60', '', 'inherit', 'open', 'closed', '', '60x60', '', '', '2020-04-10 06:34:53', '2020-04-10 06:34:53', '', 22, 'http://localhost/newserific/wp-content/uploads/2020/04/60x60.gif', 0, 'attachment', 'image/gif', 0),
(25, 1, '2020-04-10 06:34:53', '2020-04-10 06:34:53', '', '80x80', '', 'inherit', 'open', 'closed', '', '80x80', '', '', '2020-04-10 06:34:53', '2020-04-10 06:34:53', '', 22, 'http://localhost/newserific/wp-content/uploads/2020/04/80x80.gif', 0, 'attachment', 'image/gif', 0),
(26, 1, '2020-04-10 06:34:53', '2020-04-10 06:34:53', '', '125x125', '', 'inherit', 'open', 'closed', '', '125x125', '', '', '2020-04-10 06:34:53', '2020-04-10 06:34:53', '', 22, 'http://localhost/newserific/wp-content/uploads/2020/04/125x125.gif', 0, 'attachment', 'image/gif', 0),
(27, 1, '2020-04-10 06:34:54', '2020-04-10 06:34:54', '', '174x174', '', 'inherit', 'open', 'closed', '', '174x174', '', '', '2020-04-10 06:34:54', '2020-04-10 06:34:54', '', 22, 'http://localhost/newserific/wp-content/uploads/2020/04/174x174.gif', 0, 'attachment', 'image/gif', 0),
(28, 1, '2020-04-10 06:34:54', '2020-04-10 06:34:54', '', '190x80', '', 'inherit', 'open', 'closed', '', '190x80', '', '', '2020-04-10 06:34:54', '2020-04-10 06:34:54', '', 22, 'http://localhost/newserific/wp-content/uploads/2020/04/190x80.gif', 0, 'attachment', 'image/gif', 0),
(29, 1, '2020-04-10 06:34:54', '2020-04-10 06:34:54', '', '200x150', '', 'inherit', 'open', 'closed', '', '200x150', '', '', '2020-04-10 06:34:54', '2020-04-10 06:34:54', '', 22, 'http://localhost/newserific/wp-content/uploads/2020/04/200x150.gif', 0, 'attachment', 'image/gif', 0),
(30, 1, '2020-04-10 06:34:54', '2020-04-10 06:34:54', '', '240x90', '', 'inherit', 'open', 'closed', '', '240x90', '', '', '2020-04-10 06:34:54', '2020-04-10 06:34:54', '', 22, 'http://localhost/newserific/wp-content/uploads/2020/04/240x90.gif', 0, 'attachment', 'image/gif', 0),
(31, 1, '2020-04-10 06:34:55', '2020-04-10 06:34:55', '', '250x250', '', 'inherit', 'open', 'closed', '', '250x250', '', '', '2020-04-10 06:34:55', '2020-04-10 06:34:55', '', 22, 'http://localhost/newserific/wp-content/uploads/2020/04/250x250.gif', 0, 'attachment', 'image/gif', 0),
(32, 1, '2020-04-10 06:34:55', '2020-04-10 06:34:55', '', '290x100', '', 'inherit', 'open', 'closed', '', '290x100', '', '', '2020-04-10 06:34:55', '2020-04-10 06:34:55', '', 22, 'http://localhost/newserific/wp-content/uploads/2020/04/290x100.gif', 0, 'attachment', 'image/gif', 0),
(33, 1, '2020-04-10 06:34:55', '2020-04-10 06:34:55', '', '468x60', '', 'inherit', 'open', 'closed', '', '468x60', '', '', '2020-04-10 06:34:55', '2020-04-10 06:34:55', '', 22, 'http://localhost/newserific/wp-content/uploads/2020/04/468x60.gif', 0, 'attachment', 'image/gif', 0),
(34, 1, '2020-04-10 06:34:56', '2020-04-10 06:34:56', '', '620x270', '', 'inherit', 'open', 'closed', '', '620x270', '', '', '2020-04-10 06:34:56', '2020-04-10 06:34:56', '', 22, 'http://localhost/newserific/wp-content/uploads/2020/04/620x270.gif', 0, 'attachment', 'image/gif', 0),
(35, 1, '2020-04-10 06:34:56', '2020-04-10 06:34:56', '', 'imgl', '', 'inherit', 'open', 'closed', '', 'imgl', '', '', '2020-04-10 06:34:56', '2020-04-10 06:34:56', '', 22, 'http://localhost/newserific/wp-content/uploads/2020/04/imgl.gif', 0, 'attachment', 'image/gif', 0),
(36, 1, '2020-04-10 06:34:56', '2020-04-10 06:34:56', '', 'imgr', '', 'inherit', 'open', 'closed', '', 'imgr', '', '', '2020-04-10 06:34:56', '2020-04-10 06:34:56', '', 22, 'http://localhost/newserific/wp-content/uploads/2020/04/imgr.gif', 0, 'attachment', 'image/gif', 0),
(37, 1, '2020-04-10 06:55:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-04-10 06:55:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/newserific/?p=37', 0, 'post', '', 0),
(38, 1, '2020-04-10 08:57:03', '2020-04-10 08:57:03', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Where can I get some?', '', 'publish', 'open', 'open', '', 'where-can-i-get-some', '', '', '2020-04-10 08:57:26', '2020-04-10 08:57:26', '', 0, 'http://localhost/newserific/?p=38', 0, 'post', '', 0),
(39, 1, '2020-04-10 08:57:03', '2020-04-10 08:57:03', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Where can I get some?', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2020-04-10 08:57:03', '2020-04-10 08:57:03', '', 38, 'http://localhost/newserific/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-04-10 09:01:06', '2020-04-10 09:01:06', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Where can I get some?', '', 'publish', 'open', 'open', '', 'where-can-i-get-some-3', '', '', '2020-04-10 09:01:21', '2020-04-10 09:01:21', '', 0, 'http://localhost/newserific/?p=40', 0, 'post', '', 0),
(41, 1, '2020-04-10 09:01:07', '2020-04-10 09:01:07', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Where can I get some?', '', 'publish', 'open', 'open', '', 'where-can-i-get-some-2', '', '', '2020-04-10 09:01:16', '2020-04-10 09:01:16', '', 0, 'http://localhost/newserific/?p=41', 0, 'post', '', 1),
(42, 1, '2020-04-10 09:01:16', '2020-04-10 09:01:16', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Where can I get some?', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2020-04-10 09:01:16', '2020-04-10 09:01:16', '', 41, 'http://localhost/newserific/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2020-04-10 09:01:21', '2020-04-10 09:01:21', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Where can I get some?', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-04-10 09:01:21', '2020-04-10 09:01:21', '', 40, 'http://localhost/newserific/40-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2020-04-10 11:29:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-10 11:29:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/newserific/?post_type=gallery&p=44', 0, 'gallery', '', 0),
(45, 1, '2020-04-10 11:29:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-10 11:29:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/newserific/?post_type=gallery&p=45', 0, 'gallery', '', 0),
(46, 1, '2020-04-10 11:30:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-10 11:30:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/newserific/?post_type=gallery&p=46', 0, 'gallery', '', 0),
(47, 1, '2020-04-10 11:30:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-10 11:30:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/newserific/?post_type=gallery&p=47', 0, 'gallery', '', 0),
(48, 1, '2020-04-10 11:30:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-10 11:30:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/newserific/?post_type=gallery&p=48', 0, 'gallery', '', 0),
(49, 1, '2020-04-10 11:31:10', '2020-04-10 11:31:10', '', 'photo-1', '', 'publish', 'closed', 'closed', '', 'photo-1', '', '', '2020-04-10 12:00:24', '2020-04-10 12:00:24', '', 0, 'http://localhost/newserific/?post_type=gallery&#038;p=49', 0, 'gallery', '', 0),
(50, 1, '2020-04-10 11:53:30', '2020-04-10 11:53:30', '', 'photo-2', '', 'publish', 'closed', 'closed', '', 'photo-2', '', '', '2020-04-10 12:00:34', '2020-04-10 12:00:34', '', 0, 'http://localhost/newserific/?post_type=gallery&#038;p=50', 0, 'gallery', '', 0),
(51, 1, '2020-04-10 11:54:13', '2020-04-10 11:54:13', '', 'photo-3', '', 'publish', 'closed', 'closed', '', 'photo-3', '', '', '2020-04-10 12:00:45', '2020-04-10 12:00:45', '', 0, 'http://localhost/newserific/?post_type=gallery&#038;p=51', 0, 'gallery', '', 0),
(52, 1, '2020-04-10 11:55:59', '2020-04-10 11:55:59', '', 'photo-4', '', 'publish', 'closed', 'closed', '', 'photo-4', '', '', '2020-04-10 12:00:56', '2020-04-10 12:00:56', '', 0, 'http://localhost/newserific/?post_type=gallery&#038;p=52', 0, 'gallery', '', 0),
(53, 1, '2020-04-10 11:56:08', '2020-04-10 11:56:08', '', 'photo-5', '', 'publish', 'closed', 'closed', '', 'photo-5', '', '', '2020-04-10 12:01:06', '2020-04-10 12:01:06', '', 0, 'http://localhost/newserific/?post_type=gallery&#038;p=53', 0, 'gallery', '', 0),
(54, 1, '2020-04-10 11:56:26', '2020-04-10 11:56:26', '', 'photo-6', '', 'publish', 'closed', 'closed', '', 'photo-6', '', '', '2020-04-10 12:01:15', '2020-04-10 12:01:15', '', 0, 'http://localhost/newserific/?post_type=gallery&#038;p=54', 0, 'gallery', '', 0),
(55, 1, '2020-04-10 11:56:35', '2020-04-10 11:56:35', '', 'photo-7', '', 'publish', 'closed', 'closed', '', 'photo-7', '', '', '2020-04-10 15:45:24', '2020-04-10 15:45:24', '', 0, 'http://localhost/newserific/?post_type=gallery&#038;p=55', 0, 'gallery', '', 0),
(56, 1, '2020-04-10 11:56:44', '2020-04-10 11:56:44', '', 'photo-8', '', 'publish', 'closed', 'closed', '', 'photo-8', '', '', '2020-04-10 15:45:15', '2020-04-10 15:45:15', '', 0, 'http://localhost/newserific/?post_type=gallery&#038;p=56', 0, 'gallery', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(57, 1, '2020-04-10 11:56:52', '2020-04-10 11:56:52', '', 'photo-9', '', 'publish', 'closed', 'closed', '', 'photo-9', '', '', '2020-04-10 15:45:10', '2020-04-10 15:45:10', '', 0, 'http://localhost/newserific/?post_type=gallery&#038;p=57', 0, 'gallery', '', 0),
(58, 1, '2020-04-10 12:07:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-10 12:07:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/newserific/?post_type=gallery&p=58', 0, 'gallery', '', 0),
(59, 1, '2020-04-10 12:08:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-10 12:08:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/newserific/?post_type=gallery&p=59', 0, 'gallery', '', 0),
(60, 1, '2020-04-10 12:09:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-04-10 12:09:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/newserific/?p=60', 0, 'post', '', 0),
(61, 1, '2020-04-10 12:09:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-10 12:09:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/newserific/?post_type=gallery&p=61', 0, 'gallery', '', 0),
(62, 1, '2020-04-10 12:11:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-10 12:11:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/newserific/?post_type=gallery&p=62', 0, 'gallery', '', 0),
(63, 1, '2020-04-10 12:11:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-10 12:11:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/newserific/?post_type=gallery&p=63', 0, 'gallery', '', 0),
(64, 1, '2020-04-10 12:11:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-10 12:11:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/newserific/?post_type=gallery&p=64', 0, 'gallery', '', 0),
(65, 1, '2020-04-10 12:12:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-10 12:12:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/newserific/?post_type=gallery&p=65', 0, 'gallery', '', 0),
(66, 1, '2020-04-10 12:13:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-10 12:13:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/newserific/?post_type=gallery&p=66', 0, 'gallery', '', 0),
(67, 1, '2020-04-10 17:39:52', '2020-04-10 17:39:52', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'About us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-04-10 17:39:52', '2020-04-10 17:39:52', '', 9, 'http://localhost/newserific/9-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2020-04-10 17:40:26', '2020-04-10 17:40:26', '<img class=\"size-full wp-image-31 alignleft\" src=\"http://localhost/newserific/wp-content/uploads/2020/04/250x250.gif\" alt=\"\" width=\"250\" height=\"250\" />It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'About us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-04-10 17:40:26', '2020-04-10 17:40:26', '', 9, 'http://localhost/newserific/9-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2020-04-10 17:40:38', '2020-04-10 17:40:38', '<img class=\" wp-image-31 alignleft\" src=\"http://localhost/newserific/wp-content/uploads/2020/04/250x250.gif\" alt=\"\" width=\"106\" height=\"106\" />It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'About us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-04-10 17:40:38', '2020-04-10 17:40:38', '', 9, 'http://localhost/newserific/9-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-04-10 17:41:55', '2020-04-10 17:41:55', '<img class=\" wp-image-31 alignleft\" src=\"http://localhost/newserific/wp-content/uploads/2020/04/250x250.gif\" alt=\"\" width=\"351\" height=\"351\" />It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'About us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-04-10 17:41:55', '2020-04-10 17:41:55', '', 9, 'http://localhost/newserific/9-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2020-04-10 17:43:26', '2020-04-10 17:43:26', '<img class=\" wp-image-31 alignleft\" src=\"http://localhost/newserific/wp-content/uploads/2020/04/250x250.gif\" alt=\"\" width=\"351\" height=\"351\" />It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n<img class=\"size-full wp-image-26 alignright\" src=\"http://localhost/newserific/wp-content/uploads/2020/04/125x125.gif\" alt=\"\" width=\"125\" height=\"125\" />It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'About us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-04-10 17:43:26', '2020-04-10 17:43:26', '', 9, 'http://localhost/newserific/9-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2020-04-10 17:45:51', '2020-04-10 17:45:51', '<img class=\"wp-image-31 alignleft\" src=\"http://localhost/newserific/wp-content/uploads/2020/04/250x250.gif\" alt=\"\" width=\"351\" height=\"351\" />It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n<img class=\"size-full wp-image-26 alignright\" src=\"http://localhost/newserific/wp-content/uploads/2020/04/125x125.gif\" alt=\"\" width=\"125\" height=\"125\" />It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'About us', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-04-10 17:45:51', '2020-04-10 17:45:51', '', 9, 'http://localhost/newserific/9-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2020-04-10 19:33:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-10 19:33:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/newserific/?page_id=73', 0, 'page', '', 0),
(74, 1, '2020-04-10 19:33:57', '2020-04-10 19:33:57', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-04-10 19:36:50', '2020-04-10 19:36:50', '', 0, 'http://localhost/newserific/?page_id=74', 0, 'page', '', 0),
(75, 1, '2020-04-10 19:33:57', '2020-04-10 19:33:57', '', 'Home', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2020-04-10 19:33:57', '2020-04-10 19:33:57', '', 74, 'http://localhost/newserific/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2020-04-10 19:40:52', '2020-04-10 19:40:52', '<p data-reactid=\".av6lonx0is.3.0.0.1.0.1.0.$lx-tabs0.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e90c760e23144067f57b4c1.1.3.0.0:$post_1\">Italian Prime Minister Giuseppe Conte has extended Italy’s nationwide lockdown until 3 May.</p>\r\n<p data-reactid=\".av6lonx0is.3.0.0.1.0.1.0.$lx-tabs0.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e90c760e23144067f57b4c1.1.3.0.0:$post_2\">The first nationwide lockdown was imposed on 9 March until 3 April but was later extended to 13 April.</p>\r\n<p data-reactid=\".av6lonx0is.3.0.0.1.0.1.0.$lx-tabs0.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e90c760e23144067f57b4c1.1.3.0.0:$post_3\">The tight lockdown in Italy appears to be working. Its latest 24-hour death toll is 570, continuing a declining trend.</p>\r\n<p data-reactid=\".av6lonx0is.3.0.0.1.0.1.0.$lx-tabs0.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e90c760e23144067f57b4c1.1.3.0.0:$post_4\">But Italy still has the world\'s highest overall death toll, which currently stands at 18,849.</p>', 'Italy PM extends lockdown to May', '', 'publish', 'open', 'open', '', 'italy-pm-extends-lockdown-to-may', '', '', '2020-04-10 19:40:52', '2020-04-10 19:40:52', '', 0, 'http://localhost/newserific/?p=76', 0, 'post', '', 0),
(77, 1, '2020-04-10 19:40:41', '2020-04-10 19:40:41', '', 'c994b82b-f5c0-4491-b80c-e2918f8a3b70', '', 'inherit', 'open', 'closed', '', 'c994b82b-f5c0-4491-b80c-e2918f8a3b70', '', '', '2020-04-10 19:40:41', '2020-04-10 19:40:41', '', 76, 'http://localhost/newserific/wp-content/uploads/2020/04/c994b82b-f5c0-4491-b80c-e2918f8a3b70.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2020-04-10 19:40:52', '2020-04-10 19:40:52', '<p data-reactid=\".av6lonx0is.3.0.0.1.0.1.0.$lx-tabs0.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e90c760e23144067f57b4c1.1.3.0.0:$post_1\">Italian Prime Minister Giuseppe Conte has extended Italy’s nationwide lockdown until 3 May.</p>\r\n<p data-reactid=\".av6lonx0is.3.0.0.1.0.1.0.$lx-tabs0.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e90c760e23144067f57b4c1.1.3.0.0:$post_2\">The first nationwide lockdown was imposed on 9 March until 3 April but was later extended to 13 April.</p>\r\n<p data-reactid=\".av6lonx0is.3.0.0.1.0.1.0.$lx-tabs0.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e90c760e23144067f57b4c1.1.3.0.0:$post_3\">The tight lockdown in Italy appears to be working. Its latest 24-hour death toll is 570, continuing a declining trend.</p>\r\n<p data-reactid=\".av6lonx0is.3.0.0.1.0.1.0.$lx-tabs0.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e90c760e23144067f57b4c1.1.3.0.0:$post_4\">But Italy still has the world\'s highest overall death toll, which currently stands at 18,849.</p>', 'Italy PM extends lockdown to May', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2020-04-10 19:40:52', '2020-04-10 19:40:52', '', 76, 'http://localhost/newserific/76-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2020-04-10 19:42:39', '2020-04-10 19:42:39', '<p data-reactid=\".av6lonx0is.3.0.0.1.0.1.0.$lx-tabs0.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e90c428e23144067f57b4bd.1.3.0.0:$post_1\">Liverpool and Scotland football legend Sir Kenny Dalglish has tested positive for coronavirus and is in hospital but showing no symptoms.</p>\r\n<p data-reactid=\".av6lonx0is.3.0.0.1.0.1.0.$lx-tabs0.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e90c428e23144067f57b4bd.1.3.0.0:$post_2\">The 69-year-old was admitted to hospital on Wednesday for treatment of an infection and tested positive for Covid-19 after a routine test.</p>\r\n<p data-reactid=\".av6lonx0is.3.0.0.1.0.1.0.$lx-tabs0.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e90c428e23144067f57b4bd.1.3.0.0:$post_3\">His family said in a statement \"he looks forward to being home soon\".</p>\r\n<p data-reactid=\".av6lonx0is.3.0.0.1.0.1.0.$lx-tabs0.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e90c428e23144067f57b4bd.1.3.0.0:$post_4\">Dalglish played over 500 games for Liverpool and also managed the club on two occasions. He also won more than 100 caps for Scotland.</p>', 'Football legend Dalglish tests positive for virus', '', 'publish', 'open', 'open', '', 'football-legend-dalglish-tests-positive-for-virus', '', '', '2020-04-10 19:42:39', '2020-04-10 19:42:39', '', 0, 'http://localhost/newserific/?p=79', 0, 'post', '', 0),
(80, 1, '2020-04-10 19:42:37', '2020-04-10 19:42:37', '', '3455a7b6-d297-43b3-a644-5da6e81e356a', '', 'inherit', 'open', 'closed', '', '3455a7b6-d297-43b3-a644-5da6e81e356a', '', '', '2020-04-10 19:42:37', '2020-04-10 19:42:37', '', 79, 'http://localhost/newserific/wp-content/uploads/2020/04/3455a7b6-d297-43b3-a644-5da6e81e356a.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2020-04-10 19:42:39', '2020-04-10 19:42:39', '<p data-reactid=\".av6lonx0is.3.0.0.1.0.1.0.$lx-tabs0.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e90c428e23144067f57b4bd.1.3.0.0:$post_1\">Liverpool and Scotland football legend Sir Kenny Dalglish has tested positive for coronavirus and is in hospital but showing no symptoms.</p>\r\n<p data-reactid=\".av6lonx0is.3.0.0.1.0.1.0.$lx-tabs0.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e90c428e23144067f57b4bd.1.3.0.0:$post_2\">The 69-year-old was admitted to hospital on Wednesday for treatment of an infection and tested positive for Covid-19 after a routine test.</p>\r\n<p data-reactid=\".av6lonx0is.3.0.0.1.0.1.0.$lx-tabs0.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e90c428e23144067f57b4bd.1.3.0.0:$post_3\">His family said in a statement \"he looks forward to being home soon\".</p>\r\n<p data-reactid=\".av6lonx0is.3.0.0.1.0.1.0.$lx-tabs0.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e90c428e23144067f57b4bd.1.3.0.0:$post_4\">Dalglish played over 500 games for Liverpool and also managed the club on two occasions. He also won more than 100 caps for Scotland.</p>', 'Football legend Dalglish tests positive for virus', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2020-04-10 19:42:39', '2020-04-10 19:42:39', '', 79, 'http://localhost/newserific/79-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2020-04-10 19:43:17', '2020-04-10 19:43:17', '<p data-reactid=\".av6lonx0is.3.0.0.1.0.1.0.$lx-tabs0.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e90b36a7be36106694df38e.1.3.0.0:$post_1\">Many Christians in Africa usually attend services on Good Friday, but this Easter, like elsewhere in the world, most churches were closed to prevent the spread of coronavirus.</p>\r\n<p data-reactid=\".av6lonx0is.3.0.0.1.0.1.0.$lx-tabs0.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e90b36a7be36106694df38e.1.3.0.0:$post_2\">As several countries on the continent extend restrictions, these are the main developments:</p>\r\n\r\n<ul data-reactid=\".av6lonx0is.3.0.0.1.0.1.0.$lx-tabs0.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e90b36a7be36106694df38e.1.3.0.0:$post_3\">\r\n 	<li>In <strong>South Africa</strong> the decision to extend the lockdown until the end of April has been met with dismay by some, with the main opposition Democratic Alliance party warning it would create “an economic disaster”. But President Cyril Ramaphosa said there was <a href=\"https://www.bbc.co.uk/news/world-africa-52241727\">clear evidence the restriction was already limiting the spread of Covid-19</a></li>\r\n 	<li>In <strong>Kenya</strong> several people have been injured following a stampede in a queue for food aid in Kibera, a slum in the capital, Nairobi. Many people are desperate for help having been forbidden from going to work because of coronavirus restrictions</li>\r\n 	<li>One of the main hospitals in <strong>Libya</strong>’s capital, Tripoli - used to treat coronavirus patients - is <a href=\"https://www.bbc.co.uk/news/live/world-africa-47639452?ns_mchannel=social&amp;ns_source=twitter&amp;ns_campaign=bbc_live&amp;ns_linkname=5e9080da4029760673abd97f%26Libyan%20coronavirus%20hospital%20closes%20amid%20attacks%262020-04-10T14%3A59%3A15.829Z&amp;ns_fee=0&amp;pinned_post_locator=urn:asset:d4775ecd-cc30-461c-bbfd-189bd2a957be&amp;pinned_post_asset_id=5e9080da4029760673abd97f&amp;pinned_post_type=share\">suspending its activities because of being repeatedly targeted in bombardments</a>. Fighting in the city has intensified in recent weeks despite hopes for a ceasefire to deal with the pandemic</li>\r\n 	<li>Several MPs in <strong>Botswana</strong> have been moved to a supervised quarantine facility after <a href=\"https://www.bbc.co.uk/news/live/world-africa-47639452?ns_mchannel=social&amp;ns_source=twitter&amp;ns_campaign=bbc_live&amp;ns_linkname=5e9039867be36106694df2b3%26Botswana%20MPs%20caught%20breaking%20coronavirus%20rules%262020-04-10T09%3A42%3A25.781Z&amp;ns_fee=0&amp;pinned_post_locator=urn:asset:c4f6c65f-5302-4b92-8d1a-fb3b08c42584&amp;pinned_post_asset_id=5e9039867be36106694df2b3&amp;pinned_post_type=share\">they were caught in shopping in a supermarket</a>. On Thursday, all parliamentarians were asked to quarantine in their homes for 14 days after a health worker who had been screening them for the coronavirus herself tested positive</li>\r\n 	<li>Health workers in Lagos state, the economic hub of <strong>Nigeria</strong>, have started house-to-house screenings. <a href=\"https://www.bbc.co.uk/news/live/world-africa-47639452?ns_mchannel=social&amp;ns_source=twitter&amp;ns_campaign=bbc_live&amp;ns_linkname=5e904f364029760673abd92c%26Lagos%20starts%20house-to-house%20coronavirus%20survey%262020-04-10T12%3A30%3A01.233Z&amp;ns_fee=0&amp;pinned_post_locator=urn:asset:323710de-65dd-47d0-8bbd-a123c091472e&amp;pinned_post_asset_id=5e904f364029760673abd92c&amp;pinned_post_type=share\">The idea is to scout for those who potentially have coronavirus and prioritise them for testing</a>. A similar scheme has been carried out in Cameroon’s largest city Douala.</li>\r\n</ul>', 'Latest from Africa: Lockdown anger and a slum stampede', '', 'publish', 'open', 'open', '', 'latest-from-africa-lockdown-anger-and-a-slum-stampede', '', '', '2020-04-10 19:43:17', '2020-04-10 19:43:17', '', 0, 'http://localhost/newserific/?p=82', 0, 'post', '', 0),
(83, 1, '2020-04-10 19:43:14', '2020-04-10 19:43:14', '', '0187d627-cbc4-46e6-8332-e9fc6d7b7781', '', 'inherit', 'open', 'closed', '', '0187d627-cbc4-46e6-8332-e9fc6d7b7781', '', '', '2020-04-10 19:43:14', '2020-04-10 19:43:14', '', 82, 'http://localhost/newserific/wp-content/uploads/2020/04/0187d627-cbc4-46e6-8332-e9fc6d7b7781.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(84, 1, '2020-04-10 19:43:17', '2020-04-10 19:43:17', '<p data-reactid=\".av6lonx0is.3.0.0.1.0.1.0.$lx-tabs0.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e90b36a7be36106694df38e.1.3.0.0:$post_1\">Many Christians in Africa usually attend services on Good Friday, but this Easter, like elsewhere in the world, most churches were closed to prevent the spread of coronavirus.</p>\r\n<p data-reactid=\".av6lonx0is.3.0.0.1.0.1.0.$lx-tabs0.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e90b36a7be36106694df38e.1.3.0.0:$post_2\">As several countries on the continent extend restrictions, these are the main developments:</p>\r\n\r\n<ul data-reactid=\".av6lonx0is.3.0.0.1.0.1.0.$lx-tabs0.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e90b36a7be36106694df38e.1.3.0.0:$post_3\">\r\n 	<li>In <strong>South Africa</strong> the decision to extend the lockdown until the end of April has been met with dismay by some, with the main opposition Democratic Alliance party warning it would create “an economic disaster”. But President Cyril Ramaphosa said there was <a href=\"https://www.bbc.co.uk/news/world-africa-52241727\">clear evidence the restriction was already limiting the spread of Covid-19</a></li>\r\n 	<li>In <strong>Kenya</strong> several people have been injured following a stampede in a queue for food aid in Kibera, a slum in the capital, Nairobi. Many people are desperate for help having been forbidden from going to work because of coronavirus restrictions</li>\r\n 	<li>One of the main hospitals in <strong>Libya</strong>’s capital, Tripoli - used to treat coronavirus patients - is <a href=\"https://www.bbc.co.uk/news/live/world-africa-47639452?ns_mchannel=social&amp;ns_source=twitter&amp;ns_campaign=bbc_live&amp;ns_linkname=5e9080da4029760673abd97f%26Libyan%20coronavirus%20hospital%20closes%20amid%20attacks%262020-04-10T14%3A59%3A15.829Z&amp;ns_fee=0&amp;pinned_post_locator=urn:asset:d4775ecd-cc30-461c-bbfd-189bd2a957be&amp;pinned_post_asset_id=5e9080da4029760673abd97f&amp;pinned_post_type=share\">suspending its activities because of being repeatedly targeted in bombardments</a>. Fighting in the city has intensified in recent weeks despite hopes for a ceasefire to deal with the pandemic</li>\r\n 	<li>Several MPs in <strong>Botswana</strong> have been moved to a supervised quarantine facility after <a href=\"https://www.bbc.co.uk/news/live/world-africa-47639452?ns_mchannel=social&amp;ns_source=twitter&amp;ns_campaign=bbc_live&amp;ns_linkname=5e9039867be36106694df2b3%26Botswana%20MPs%20caught%20breaking%20coronavirus%20rules%262020-04-10T09%3A42%3A25.781Z&amp;ns_fee=0&amp;pinned_post_locator=urn:asset:c4f6c65f-5302-4b92-8d1a-fb3b08c42584&amp;pinned_post_asset_id=5e9039867be36106694df2b3&amp;pinned_post_type=share\">they were caught in shopping in a supermarket</a>. On Thursday, all parliamentarians were asked to quarantine in their homes for 14 days after a health worker who had been screening them for the coronavirus herself tested positive</li>\r\n 	<li>Health workers in Lagos state, the economic hub of <strong>Nigeria</strong>, have started house-to-house screenings. <a href=\"https://www.bbc.co.uk/news/live/world-africa-47639452?ns_mchannel=social&amp;ns_source=twitter&amp;ns_campaign=bbc_live&amp;ns_linkname=5e904f364029760673abd92c%26Lagos%20starts%20house-to-house%20coronavirus%20survey%262020-04-10T12%3A30%3A01.233Z&amp;ns_fee=0&amp;pinned_post_locator=urn:asset:323710de-65dd-47d0-8bbd-a123c091472e&amp;pinned_post_asset_id=5e904f364029760673abd92c&amp;pinned_post_type=share\">The idea is to scout for those who potentially have coronavirus and prioritise them for testing</a>. A similar scheme has been carried out in Cameroon’s largest city Douala.</li>\r\n</ul>', 'Latest from Africa: Lockdown anger and a slum stampede', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2020-04-10 19:43:17', '2020-04-10 19:43:17', '', 82, 'http://localhost/newserific/82-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2020-04-10 19:44:39', '2020-04-10 19:44:39', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nNewserific \"[your-subject]\"\nNewserific <shemanta@shemantabhowmik.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Newserific (http://localhost/newserific)\nshemanta@shemantabhowmik.com\nReply-To: [your-email]\n\n0\n0\n\nNewserific \"[your-subject]\"\nNewserific <shemanta@shemantabhowmik.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Newserific (http://localhost/newserific)\n[your-email]\nReply-To: shemanta@shemantabhowmik.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-04-10 19:44:39', '2020-04-10 19:44:39', '', 0, 'http://localhost/newserific/?post_type=wpcf7_contact_form&p=85', 0, 'wpcf7_contact_form', '', 0),
(86, 1, '2020-04-10 19:45:03', '2020-04-10 19:45:03', '[contact-form-7 id=\"85\" title=\"Contact form 1\"]', 'Contact us', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-04-10 19:45:03', '2020-04-10 19:45:03', '', 15, 'http://localhost/newserific/15-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2020-04-12 06:18:04', '2020-04-12 06:18:04', 'http://localhost/newserific/wp-content/uploads/2020/04/cropped-80x80-1.gif', 'cropped-80x80-1.gif', '', 'inherit', 'open', 'closed', '', 'cropped-80x80-1-gif', '', '', '2020-04-12 06:18:04', '2020-04-12 06:18:04', '', 0, 'http://localhost/newserific/wp-content/uploads/2020/04/cropped-80x80-1.gif', 0, 'attachment', 'image/gif', 0),
(88, 1, '2020-04-12 06:20:27', '2020-04-12 06:20:27', 'http://localhost/newserific/wp-content/uploads/2020/04/cropped-0187d627-cbc4-46e6-8332-e9fc6d7b7781.jpg', 'cropped-0187d627-cbc4-46e6-8332-e9fc6d7b7781.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-0187d627-cbc4-46e6-8332-e9fc6d7b7781-jpg', '', '', '2020-04-12 06:20:27', '2020-04-12 06:20:27', '', 0, 'http://localhost/newserific/wp-content/uploads/2020/04/cropped-0187d627-cbc4-46e6-8332-e9fc6d7b7781.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2020-04-12 06:20:43', '2020-04-12 06:20:43', '{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-12 06:20:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '782e6956-2986-45f8-ab1e-a9a8c0b828f7', '', '', '2020-04-12 06:20:43', '2020-04-12 06:20:43', '', 0, 'http://localhost/newserific/782e6956-2986-45f8-ab1e-a9a8c0b828f7/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Top Menu', 'top-menu', 0),
(3, 'featured_posts', 'featured_posts', 0),
(4, 'latest_posts', 'latest_posts', 0),
(5, 'italy', 'italy', 0),
(6, 'lockdown', 'lockdown', 0),
(7, 'may', 'may', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(22, 3, 0),
(38, 4, 0),
(40, 4, 0),
(41, 4, 0),
(76, 1, 0),
(76, 5, 0),
(76, 6, 0),
(76, 7, 0),
(79, 1, 0),
(82, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 3),
(5, 5, 'post_tag', '', 0, 1),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"251395864084373e7ad25017507b9a8a6a3b3d1767b8b152a71c8e042865a664\";a:4:{s:10:\"expiration\";i:1587708266;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:76.0) Gecko/20100101 Firefox/76.0\";s:5:\"login\";i:1586498666;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(22, 1, 'wp_user-settings-time', '1586540387'),
(23, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:41:\"dashboard_site_health,dashboard_right_now\";s:4:\"side\";s:21:\"dashboard_quick_press\";s:7:\"column3\";s:17:\"dashboard_primary\";s:7:\"column4\";s:18:\"dashboard_activity\";}'),
(24, 1, 'meta-box-order_gallery', 'a:3:{s:4:\"side\";s:22:\"submitdiv,postimagediv\";s:6:\"normal\";s:7:\"slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(25, 1, 'screen_layout_gallery', '2'),
(26, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(27, 1, 'closedpostboxes_page', 'a:0:{}'),
(28, 1, 'metaboxhidden_page', 'a:4:{i:0;s:12:\"revisionsdiv\";i:1;s:10:\"postcustom\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}'),
(29, 1, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:\"5.1\";}'),
(30, 1, 'wp_r_tru_u_x', 'a:2:{s:2:\"id\";s:0:\"\";s:7:\"expires\";i:86400;}'),
(31, 1, 'ignore_admin_config_redux_demo', '1'),
(32, 1, 'ignore_admin_config_redux_demo', '1'),
(33, 1, 'ignore_share_config_redux_demo', '1'),
(34, 1, 'ignore_share_config_redux_demo', '1');

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
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BU8ZKh5UWTcjv6E1rASk4em78njMhs1', 'admin', 'shemanta@shemantabhowmik.com', 'http://localhost/newserific', '2020-04-10 06:04:19', '', 0, 'admin');

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
