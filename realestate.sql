-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2023 at 08:31 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realestate`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE IF NOT EXISTS `amenities` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `amenitis_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `amenitis_name`, `created_at`, `updated_at`) VALUES
(1, 'Air Conditioning', NULL, NULL),
(2, 'Cleaning Service', NULL, NULL),
(3, 'Dishwasher', NULL, NULL),
(4, 'Hardwood Flows', NULL, NULL),
(5, 'Swimming Pool', NULL, NULL),
(6, 'Outdoor Shower', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE IF NOT EXISTS `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `category_name`, `category_slug`, `created_at`, `updated_at`) VALUES
(1, 'Home improvement', 'home-improvement', NULL, NULL),
(2, 'Architecture', 'architecture', NULL, NULL),
(3, 'Tips and advice', 'tips-and-advice', NULL, NULL),
(4, 'Interior', 'interior', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE IF NOT EXISTS `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `blogcat_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_title` varchar(255) DEFAULT NULL,
  `post_slug` varchar(255) DEFAULT NULL,
  `post_image` varchar(255) DEFAULT NULL,
  `short_descp` text DEFAULT NULL,
  `long_descp` text DEFAULT NULL,
  `post_tags` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `blogcat_id`, `user_id`, `post_title`, `post_slug`, `post_image`, `short_descp`, `long_descp`, `post_tags`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Including Animation In Your Design System', 'including-animation-in-your-design-system', 'upload/post/1777209642299283.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing sed.', '<p>Lorem ipsum dolor sit amet consectetur adipisicing sed do eiusmod tempor incididunt labore dolore magna aliqua enim minim veniam quis nostrud exercitation ullamco laboris nisi aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed perspiciatis unde omnis iste natus error sit voluptem accusantium doloremque laudantium.</p>', 'Real Estate,Interior,Rent Home', '2023-09-16 09:46:30', NULL),
(2, 1, 1, 'Officia et proident', 'officia-et-proident', 'upload/post/1777209672243105.jpg', 'Minus eius Nam et co', '<p>Lorem ipsum dolor sit amet consectetur adipisicing sed do eiusmod tempor incididunt labore dolore magna aliqua enim minim veniam quis nostrud exercitation ullamco laboris nisi aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed perspiciatis unde omnis iste natus error sit voluptem accusantium doloremque laudantium.</p>', 'Labore dolor digniss', '2023-09-16 09:46:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE IF NOT EXISTS `chat_messages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sender_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'user_id',
  `receiver_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'agent_id',
  `msg` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `sender_id`, `receiver_id`, `msg`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'hello', '2023-09-22 08:38:20', '2023-09-22 08:38:20'),
(2, 3, 2, 'hello', '2023-09-22 08:38:23', '2023-09-22 08:38:23'),
(3, 3, 2, 'hello', '2023-09-22 08:38:23', '2023-09-22 08:38:23'),
(4, 3, 2, 'hello', '2023-09-22 08:38:24', '2023-09-22 08:38:24'),
(5, 3, 2, 'hello', '2023-09-22 08:38:45', '2023-09-22 08:38:45'),
(6, 3, 2, 'hello', '2023-09-22 08:38:46', '2023-09-22 08:38:46'),
(7, 3, 2, 'hi i need your help', '2023-09-22 08:39:34', '2023-09-22 08:39:34'),
(8, 3, 2, 'hi i need your help', '2023-09-22 08:39:56', '2023-09-22 08:39:56'),
(9, 3, 2, 'hello', '2023-09-22 08:40:06', '2023-09-22 08:40:06'),
(10, 3, 2, 'ami', '2023-09-22 08:40:24', '2023-09-22 08:40:24'),
(11, 3, 2, 'valo lage na', '2023-09-22 08:42:03', '2023-09-22 08:42:03'),
(12, 3, 2, 'sadasd', '2023-09-22 08:57:58', '2023-09-22 08:57:58'),
(13, 3, 2, 'dhat', '2023-09-22 10:31:47', '2023-09-22 10:31:47'),
(14, 3, 2, 'hi i onet', '2023-09-22 22:59:17', '2023-09-22 22:59:17'),
(15, 3, 2, 'heloo', '2023-09-22 22:59:28', '2023-09-22 22:59:28'),
(16, 3, 2, 'helo', '2023-09-22 22:59:36', '2023-09-22 22:59:36'),
(17, 3, 2, 'healo ami', '2023-09-22 22:59:43', '2023-09-22 22:59:43'),
(18, 3, 2, 'j', '2023-09-22 23:09:55', '2023-09-22 23:09:55'),
(19, 3, 2, 'k', '2023-09-22 23:11:50', '2023-09-22 23:11:50'),
(20, 3, 2, 'h', '2023-09-22 23:12:06', '2023-09-22 23:12:06'),
(21, 3, 2, 'l', '2023-09-22 23:13:13', '2023-09-22 23:13:13'),
(22, 3, 2, 'l', '2023-09-22 23:14:35', '2023-09-22 23:14:35'),
(23, 2, 3, 'hmmm ami achi', '2023-09-22 23:27:34', '2023-09-22 23:27:34'),
(24, 2, 3, 'dsafasdf', '2023-09-22 23:28:30', '2023-09-22 23:28:30'),
(25, 2, 3, 'this test', '2023-09-22 23:28:46', '2023-09-22 23:28:46'),
(26, 2, 3, 'i am live', '2023-09-22 23:31:48', '2023-09-22 23:31:48'),
(27, 3, 2, 'hi agenbt', '2023-09-22 23:32:02', '2023-09-22 23:32:02'),
(28, 3, 2, 'valo', '2023-09-22 23:46:05', '2023-09-22 23:46:05');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `parent_id`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 3, 2, NULL, 'This is nice Post', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quis nos trud exerc.', '2023-09-16 23:57:57', NULL),
(2, 3, 2, NULL, 'Wow its nc', 'good', '2023-09-16 23:59:01', NULL),
(3, 3, 2, 2, 'tnq', 'tnq', '2023-09-17 00:18:07', NULL),
(4, 3, 2, 2, 'l', 'k', '2023-09-17 00:18:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `compares`
--

CREATE TABLE IF NOT EXISTS `compares` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE IF NOT EXISTS `facilities` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `facility_name` varchar(255) DEFAULT NULL,
  `distance` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `property_id`, `facility_name`, `distance`, `created_at`, `updated_at`) VALUES
(1, 1, 'Airport', '2', '2023-09-16 09:37:33', '2023-09-16 09:37:33'),
(2, 1, 'Bus Stop', '2', '2023-09-16 09:37:33', '2023-09-16 09:37:33'),
(3, 2, 'Bank', '5', '2023-09-16 09:40:13', '2023-09-16 09:40:13'),
(4, 2, 'Railways', '2', '2023-09-16 09:40:13', '2023-09-16 09:40:13'),
(5, 2, 'SuperMarket', '7', '2023-09-16 09:40:13', '2023-09-16 09:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_20_060904_create_property_types_table', 1),
(6, '2023_08_29_043203_create_amenities_table', 1),
(7, '2023_08_29_060055_create_properties_table', 1),
(8, '2023_08_29_064027_create_multi_images_table', 1),
(9, '2023_08_29_064420_create_facilities_table', 1),
(10, '2023_09_03_073312_create_package_plans_table', 1),
(11, '2023_09_06_052517_create_wishlists_table', 1),
(12, '2023_09_10_041522_create_compares_table', 1),
(13, '2023_09_10_063033_create_property_messages_table', 1),
(14, '2023_09_11_130316_create_states_table', 1),
(15, '2023_09_13_054100_create_testimonials_table', 1),
(16, '2023_09_14_133916_create_blog_categories_table', 1),
(17, '2023_09_14_145039_create_blog_posts_table', 1),
(18, '2023_09_17_052629_create_comments_table', 2),
(19, '2023_09_17_144254_create_schedules_table', 3),
(20, '2023_09_18_055520_create_smtp_settings_table', 4),
(21, '2023_09_18_071946_create_sitesettings_table', 5),
(22, '2023_09_18_133624_create_permission_tables', 6),
(23, '2023_09_22_134840_create_chat_messages_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(4, 'App\\Models\\User', 11),
(5, 'App\\Models\\User', 1),
(5, 'App\\Models\\User', 9);

-- --------------------------------------------------------

--
-- Table structure for table `multi_images`
--

CREATE TABLE IF NOT EXISTS `multi_images` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_images`
--

INSERT INTO `multi_images` (`id`, `property_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'upload/property/multi-image/1777209078641841.jpg', '2023-09-16 09:37:33', NULL),
(2, 1, 'upload/property/multi-image/1777209078817974.jpg', '2023-09-16 09:37:33', NULL),
(3, 2, 'upload/property/multi-image/1777209245987913.jpg', '2023-09-16 09:40:12', NULL),
(4, 2, 'upload/property/multi-image/1777209246169048.jpg', '2023-09-16 09:40:13', NULL),
(5, 2, 'upload/property/multi-image/1777209246384674.jpg', '2023-09-16 09:40:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `package_plans`
--

CREATE TABLE IF NOT EXISTS `package_plans` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `package_credits` varchar(255) DEFAULT NULL,
  `package_amount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'type.menu', 'web', 'type', '2023-09-18 08:05:16', '2023-09-18 08:05:16'),
(2, 'all.type', 'web', 'type', '2023-09-18 08:06:04', '2023-09-18 08:13:27'),
(3, 'add.type', 'web', 'type', '2023-09-18 08:06:20', '2023-09-18 08:13:35'),
(4, 'edit.type', 'web', 'type', '2023-09-18 08:06:41', '2023-09-18 08:06:41'),
(5, 'delete.type', 'web', 'type', '2023-09-18 08:06:54', '2023-09-18 08:06:54'),
(6, 'state.menu', 'web', 'state', '2023-09-18 08:08:35', '2023-09-18 08:08:35'),
(8, 'state.add', 'web', 'state', '2023-09-18 08:15:01', '2023-09-18 08:15:01'),
(9, 'state.edit', 'web', 'state', '2023-09-18 08:15:14', '2023-09-18 08:15:14'),
(10, 'state.delete', 'web', 'state', '2023-09-18 08:15:28', '2023-09-18 08:15:28'),
(11, 'all.state', 'web', 'state', '2023-09-18 08:16:21', '2023-09-18 08:16:21'),
(12, 'property.menu', 'web', 'property', '2023-09-18 08:17:07', '2023-09-18 08:17:07'),
(13, 'all.property', 'web', 'property', '2023-09-18 08:17:18', '2023-09-18 08:17:18'),
(14, 'property.add', 'web', 'property', '2023-09-18 08:17:27', '2023-09-18 08:17:27'),
(15, 'property.edit', 'web', 'property', '2023-09-18 08:17:36', '2023-09-18 08:17:36'),
(16, 'property.delete', 'web', 'property', '2023-09-18 08:17:47', '2023-09-18 08:17:47'),
(17, 'amenities.menu', 'web', 'amenities', '2023-09-18 08:18:17', '2023-09-18 08:18:17'),
(18, 'all.amenities', 'web', 'amenities', '2023-09-18 08:18:27', '2023-09-18 08:18:27'),
(19, 'amenities.add', 'web', 'amenities', '2023-09-18 08:18:35', '2023-09-18 08:18:35'),
(20, 'amenities.edit', 'web', 'amenities', '2023-09-18 08:18:45', '2023-09-18 08:18:45'),
(21, 'amenities.delete', 'web', 'amenities', '2023-09-18 08:18:56', '2023-09-18 08:18:56'),
(22, 'package.menu', 'web', 'history', '2023-09-18 08:20:24', '2023-09-18 08:20:24'),
(23, 'all.package', 'web', 'history', '2023-09-18 08:20:47', '2023-09-18 08:20:47'),
(24, 'message.menu', 'web', 'message', '2023-09-18 08:21:08', '2023-09-18 08:21:08'),
(25, 'all.message', 'web', 'message', '2023-09-18 08:21:20', '2023-09-18 08:21:20'),
(26, 'tastimonials.menu', 'web', 'testimonials', '2023-09-18 08:22:26', '2023-09-18 08:22:26'),
(27, 'all.testimonials', 'web', 'testimonials', '2023-09-18 08:23:02', '2023-09-18 08:23:02'),
(28, 'testimonials.add', 'web', 'testimonials', '2023-09-18 08:23:11', '2023-09-18 08:23:11'),
(29, 'testimonials.edit', 'web', 'testimonials', '2023-09-18 08:23:21', '2023-09-18 08:23:21'),
(30, 'testimonials.delete', 'web', 'testimonials', '2023-09-18 08:23:35', '2023-09-18 08:23:35'),
(31, 'agent.menu', 'web', 'agent', '2023-09-18 08:24:01', '2023-09-18 08:24:01'),
(32, 'all.agent', 'web', 'agent', '2023-09-18 08:24:11', '2023-09-18 08:24:11'),
(33, 'agent.add', 'web', 'agent', '2023-09-18 08:24:19', '2023-09-18 08:24:19'),
(34, 'agent.edit', 'web', 'agent', '2023-09-18 08:24:30', '2023-09-18 08:24:30'),
(35, 'agent.delete', 'web', 'agent', '2023-09-18 08:24:40', '2023-09-18 08:24:40'),
(36, 'category.menu', 'web', 'category', '2023-09-18 08:25:07', '2023-09-18 08:25:07'),
(37, 'all.category', 'web', 'category', '2023-09-18 08:25:21', '2023-09-18 08:25:21'),
(38, 'category.add', 'web', 'category', '2023-09-18 08:25:38', '2023-09-18 08:25:38'),
(39, 'category.edit', 'web', 'category', '2023-09-18 08:25:48', '2023-09-18 08:25:48'),
(40, 'category.delete', 'web', 'category', '2023-09-18 08:26:03', '2023-09-18 08:26:03'),
(41, 'post.menu', 'web', 'post', '2023-09-18 08:26:18', '2023-09-18 08:26:18'),
(42, 'all.post', 'web', 'post', '2023-09-18 08:26:29', '2023-09-18 08:26:29'),
(43, 'post.add', 'web', 'post', '2023-09-18 08:26:46', '2023-09-18 08:26:46'),
(44, 'post.edit', 'web', 'post', '2023-09-18 08:26:55', '2023-09-18 08:26:55'),
(45, 'post.delete', 'web', 'post', '2023-09-18 08:27:05', '2023-09-18 08:27:05'),
(46, 'comment.menu', 'web', 'comment', '2023-09-18 08:27:28', '2023-09-18 08:27:28'),
(47, 'all.comment', 'web', 'comment', '2023-09-18 08:27:41', '2023-09-18 08:27:41'),
(48, 'comment.add', 'web', 'comment', '2023-09-18 08:27:51', '2023-09-18 08:27:51'),
(49, 'comment.edit', 'web', 'comment', '2023-09-18 08:28:01', '2023-09-18 08:28:01'),
(50, 'comment.delete', 'web', 'comment', '2023-09-18 08:28:11', '2023-09-18 08:28:11'),
(51, 'smtp.menu', 'web', 'smtp', '2023-09-18 08:28:42', '2023-09-18 08:28:42'),
(52, 'all.smtp', 'web', 'smtp', '2023-09-18 08:28:52', '2023-09-18 08:28:52'),
(53, 'smtp.add', 'web', 'smtp', '2023-09-18 08:29:06', '2023-09-18 08:29:06'),
(54, 'smtp.edit', 'web', 'smtp', '2023-09-18 08:29:15', '2023-09-18 08:29:15'),
(55, 'smtp.delete', 'web', 'smtp', '2023-09-18 08:29:24', '2023-09-18 08:29:24'),
(56, 'site.menu', 'web', 'site', '2023-09-18 08:29:39', '2023-09-18 08:29:39'),
(57, 'all.site', 'web', 'site', '2023-09-18 08:29:49', '2023-09-18 08:29:49'),
(58, 'site.add', 'web', 'site', '2023-09-18 08:29:57', '2023-09-18 08:29:57'),
(59, 'site.edit', 'web', 'site', '2023-09-18 08:30:08', '2023-09-18 08:30:08'),
(60, 'role & permission.menu', 'web', 'role', '2023-09-18 08:30:49', '2023-09-18 08:30:49'),
(61, 'all.role & permission', 'web', 'role', '2023-09-18 08:30:58', '2023-09-18 08:30:58'),
(62, 'role & permission.add', 'web', 'role', '2023-09-18 08:31:11', '2023-09-18 08:31:11'),
(63, 'role & permission.edit', 'web', 'role', '2023-09-18 08:31:23', '2023-09-18 08:31:23'),
(64, 'role & permission.delte', 'web', 'role', '2023-09-18 08:31:36', '2023-09-18 08:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE IF NOT EXISTS `properties` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ptype_id` varchar(255) NOT NULL,
  `amenities_id` varchar(255) NOT NULL,
  `property_name` varchar(255) NOT NULL,
  `property_slug` varchar(255) NOT NULL,
  `property_code` varchar(255) NOT NULL,
  `property_status` varchar(255) NOT NULL,
  `lowest_price` varchar(255) DEFAULT NULL,
  `max_price` varchar(255) DEFAULT NULL,
  `property_thambnail` varchar(255) NOT NULL,
  `short_descp` text DEFAULT NULL,
  `long_descp` text DEFAULT NULL,
  `bedrooms` varchar(255) DEFAULT NULL,
  `bathrooms` varchar(255) DEFAULT NULL,
  `garage` varchar(255) DEFAULT NULL,
  `garage_size` varchar(255) DEFAULT NULL,
  `property_size` varchar(255) DEFAULT NULL,
  `property_video` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `neighborhood` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `featured` varchar(255) DEFAULT NULL,
  `hot` varchar(255) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `ptype_id`, `amenities_id`, `property_name`, `property_slug`, `property_code`, `property_status`, `lowest_price`, `max_price`, `property_thambnail`, `short_descp`, `long_descp`, `bedrooms`, `bathrooms`, `garage`, `garage_size`, `property_size`, `property_video`, `address`, `city`, `state`, `postal_code`, `neighborhood`, `latitude`, `longitude`, `featured`, `hot`, `agent_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Cleaning Service,Hardwood Flows,Swimming Pool', 'The Citizen Apartment', 'the-citizen-apartment', 'PC001', 'rent', '555', '600', 'upload/property/thambnail/1777209078497662.jpg', 'est laborum. Sed perspiciatis unde omnis iste natus error sit voluptatem accusantium dolore mque laudantium totam rem aperiam.', '<p>Lorem ipsum dolor sit amet consectetur adipisicing sed eiusm tempor incididunt labore dolore magna aliqua enim minim veniam quis nostrud exercitation laboris nisi ut aliquip ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur occaecat</p>\r\n<p>Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim est laborum. Sed perspiciatis unde omnis iste natus error sit voluptatem accusantium dolore mque laudantium totam rem aperiam.</p>', '4', '4', '4', '200', '2020', 'no', 'Dhaka', 'Dhaka', '1', '47858', 'Andersonville', '23.810331', '90.412521', '1', '1', 2, '1', '2023-09-16 09:37:33', NULL),
(2, '3', 'Dishwasher,Hardwood Flows,Swimming Pool', 'Contemporary Apartment', 'contemporary-apartment', 'PC002', 'buy', '92', '100', 'upload/property/thambnail/1777209245848412.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing sed.', '<p>Lorem ipsum dolor sit amet consectetur adipisicing sed eiusm tempor incididunt labore dolore magna aliqua enim minim veniam quis nostrud exercitation laboris nisi ut aliquip ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur occaecat</p>\r\n<p>Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim est laborum. Sed perspiciatis unde omnis iste natus error sit voluptatem accusantium dolore mque laudantium totam rem aperiam.</p>', '4', '4', NULL, NULL, '3000', 'no', 'Dhaka', 'Mirpur', '2', '4554', 'Andersonville', '23.798814', '90.417858', '1', '1', NULL, '1', '2023-09-16 09:40:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property_messages`
--

CREATE TABLE IF NOT EXISTS `property_messages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `agent_id` varchar(255) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `msg_name` varchar(255) DEFAULT NULL,
  `msg_email` varchar(255) DEFAULT NULL,
  `msg_phone` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property_types`
--

CREATE TABLE IF NOT EXISTS `property_types` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) NOT NULL,
  `type_icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_types`
--

INSERT INTO `property_types` (`id`, `type_name`, `type_icon`, `created_at`, `updated_at`) VALUES
(1, 'Residential', 'icon-1', NULL, NULL),
(2, 'Commercial', 'icon-2', NULL, NULL),
(3, 'Appertment', 'icon-3', NULL, NULL),
(4, 'Industrial', 'icon-4', NULL, NULL),
(5, 'Building Code', 'icon-5', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(3, 'Admin', 'web', '2023-09-19 23:12:52', '2023-09-19 23:12:52'),
(4, 'Sales', 'web', '2023-09-19 23:13:00', '2023-09-19 23:13:00'),
(5, 'Super Admin', 'web', '2023-09-20 02:47:09', '2023-09-20 02:47:09'),
(6, 'Manager', 'web', '2023-09-20 03:02:45', '2023-09-20 03:02:45');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(6, 3),
(6, 5),
(8, 3),
(8, 5),
(9, 3),
(9, 5),
(10, 3),
(10, 5),
(11, 3),
(11, 5),
(12, 3),
(12, 5),
(13, 3),
(13, 5),
(14, 3),
(14, 5),
(15, 3),
(15, 5),
(16, 3),
(16, 5),
(17, 3),
(17, 5),
(17, 6),
(18, 3),
(18, 5),
(18, 6),
(19, 3),
(19, 5),
(19, 6),
(20, 3),
(20, 5),
(20, 6),
(21, 3),
(21, 5),
(21, 6),
(22, 3),
(22, 5),
(22, 6),
(23, 3),
(23, 5),
(23, 6),
(24, 3),
(24, 5),
(24, 6),
(25, 3),
(25, 5),
(25, 6),
(26, 3),
(26, 5),
(26, 6),
(27, 3),
(27, 5),
(27, 6),
(28, 3),
(28, 5),
(28, 6),
(29, 3),
(29, 5),
(29, 6),
(30, 3),
(30, 5),
(30, 6),
(31, 3),
(31, 5),
(31, 6),
(32, 3),
(32, 5),
(32, 6),
(33, 3),
(33, 5),
(33, 6),
(34, 3),
(34, 5),
(34, 6),
(35, 3),
(35, 5),
(35, 6),
(36, 3),
(36, 4),
(36, 5),
(37, 3),
(37, 4),
(37, 5),
(38, 3),
(38, 4),
(38, 5),
(39, 3),
(39, 4),
(39, 5),
(40, 3),
(40, 4),
(40, 5),
(41, 3),
(41, 5),
(41, 6),
(42, 3),
(42, 5),
(42, 6),
(43, 3),
(43, 5),
(43, 6),
(44, 3),
(44, 5),
(44, 6),
(45, 3),
(45, 5),
(45, 6),
(46, 3),
(46, 5),
(46, 6),
(47, 3),
(47, 5),
(47, 6),
(48, 3),
(48, 5),
(48, 6),
(49, 3),
(49, 5),
(49, 6),
(50, 3),
(50, 5),
(50, 6),
(51, 3),
(51, 5),
(52, 3),
(52, 5),
(53, 3),
(53, 5),
(54, 3),
(54, 5),
(55, 3),
(55, 5),
(56, 3),
(56, 5),
(57, 3),
(57, 5),
(58, 3),
(58, 5),
(59, 3),
(59, 5),
(60, 5),
(61, 5),
(62, 5),
(63, 5),
(64, 5);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE IF NOT EXISTS `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `agent_id` varchar(255) DEFAULT NULL,
  `tour_date` varchar(255) DEFAULT NULL,
  `tour_time` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `user_id`, `property_id`, `agent_id`, `tour_date`, `tour_time`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2', '09/18/2023', '9pm', 'i love you', '1', '2023-09-17 08:58:48', '2023-09-18 00:37:01'),
(2, 3, 2, NULL, '09/18/2023', '9pm', 'i love you too', '0', '2023-09-17 09:00:22', NULL),
(3, 3, 1, '2', '09/17/2023', '9pm', 'i love you', '0', '2023-09-17 09:49:59', '2023-09-18 00:33:56');

-- --------------------------------------------------------

--
-- Table structure for table `sitesettings`
--

CREATE TABLE IF NOT EXISTS `sitesettings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) DEFAULT NULL,
  `support_phone` varchar(255) DEFAULT NULL,
  `company_address` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitesettings`
--

INSERT INTO `sitesettings` (`id`, `logo`, `support_phone`, `company_address`, `email`, `facebook`, `twitter`, `copyright`, `created_at`, `updated_at`) VALUES
(1, 'upload/logo/1777360076416104.png', '12364554664', 'Discover St, New York, NY 10012, USA', 'fgdfg@gmail.com', 'fdg', 'fg', 'forhad hossain', NULL, '2023-09-18 07:04:01');

-- --------------------------------------------------------

--
-- Table structure for table `smtp_settings`
--

CREATE TABLE IF NOT EXISTS `smtp_settings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mailer` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `encryption` varchar(255) DEFAULT NULL,
  `from_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smtp_settings`
--

INSERT INTO `smtp_settings` (`id`, `mailer`, `host`, `post`, `username`, `password`, `encryption`, `from_address`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-18 01:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `state_name` varchar(255) NOT NULL,
  `state_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_name`, `state_image`, `created_at`, `updated_at`) VALUES
(1, 'Dhanmondi', 'upload/state/1777208826484843.jpg', NULL, NULL),
(2, 'Banani', 'upload/state/1777208842255220.jpg', NULL, NULL),
(3, 'Mirpur', 'upload/state/1777208854197869.jpg', NULL, NULL),
(4, 'Gulsan', 'upload/state/1777208869140610.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `position`, `image`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Forhad', 'SEO', 'upload/testimonial/1777209439712464.png', 'Our goal each day is to ensure that our residents’ needs are not only met but exceeded. To make that happen we are committed to provid ing an environment in which residents can enjoy.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `role` enum('admin','agent','user') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `credit` varchar(255) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `credit`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$qctqeEijLbWwlwLvdV9OH.nsRWe0gR7EkSwWi3iTmPwGBw58/Uefa', NULL, NULL, NULL, 'admin', 'active', '0', NULL, NULL, NULL),
(2, 'Agent', 'agent', 'agent@gmail.com', NULL, '$2y$10$EdByh4zeaPdNQL.Z53XHdeGiOq/lqlbuZ17E7dolHLNCXcpOkDLo2', '202309221255avatar-1.png', '41417474', 'rajvari', 'agent', 'active', '0', NULL, NULL, '2023-09-22 06:55:15'),
(3, 'User', 'user', 'user@gmail.com', NULL, '$2y$10$tl9CDU1D9Kx0kVQeqaqY5.BpBKwmv2ciXSA9mOrAV6D2GjOaY3bPS', '202309221253avatar-3.png', '12321321', 'test', 'user', 'active', '0', NULL, NULL, '2023-09-22 06:53:45'),
(5, 'Kylee Mertz', NULL, 'margie81@example.com', '2023-09-16 09:24:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0088ff?text=in', '(726) 654-3198', '3173 Joan Pines\nNew Elainachester, DE 89135-4350', 'user', 'inactive', '0', 'g97WgKbP68', '2023-09-16 09:24:54', '2023-09-16 09:24:54'),
(7, 'Dr. Rene Howe MD', NULL, 'muriel82@example.net', '2023-09-16 09:24:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0077cc?text=voluptates', '518-583-7768', '954 Grimes Walks\nNorth Mathiasport, RI 68818-3369', 'user', 'active', '0', 'YlEl34sU6t', '2023-09-16 09:24:54', '2023-09-16 09:24:54'),
(8, 'Timmothy Dickinson V', NULL, 'wilburn80@example.com', '2023-09-16 09:24:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/006677?text=ab', '(843) 367-5607', '3522 Judah Lane Apt. 409\nEast Lillieberg, OK 26438-6893', 'user', 'active', '0', 'mQ7Z5xSuLQ', '2023-09-16 09:24:54', '2023-09-16 09:24:54'),
(9, 'forhad', 'forhad', 'forhad111.12@gmail.com', NULL, '$2y$10$gG6HidLf8PAhtyVh0fqRteR0dJ6d1cS6E5RCP85c2kT5M/P5Iu2d2', NULL, '12321321', 'test', 'admin', 'active', '0', NULL, '2023-09-20 06:42:04', '2023-09-20 06:42:04'),
(11, 'afaf', 'fsa', 'forhad2023.12@gmail.com', NULL, '$2y$10$f4dzq2OsQZzbB9kL44x3reypNP/5GCHCjetLkLhwW/wi7QF321l7m', NULL, '12321321', 'test', 'admin', 'active', '0', NULL, '2023-09-20 06:54:57', '2023-09-20 06:54:57');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
