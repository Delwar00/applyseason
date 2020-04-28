-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2020 at 12:45 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `applyseason`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$6JUM98pC4xw5AqUIQH.JnOkLOiySQ3xu6Nj6t70WPCsVCQyPS2Gi6', 1, '2020-03-10 14:09:19', '2020-03-10 14:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(200) DEFAULT NULL,
  `B_URL` text DEFAULT NULL,
  `DATE_BLOG` varchar(200) DEFAULT NULL,
  `AUTH_BLOG` varchar(200) DEFAULT NULL,
  `DEC_BLOG` text DEFAULT NULL,
  `IMG_BLOG` varchar(200) DEFAULT NULL,
  `STATUS_BLOG` varchar(200) DEFAULT NULL,
  `updated_at` varchar(200) DEFAULT NULL,
  `created_at` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`ID`, `TITLE`, `B_URL`, `DATE_BLOG`, `AUTH_BLOG`, `DEC_BLOG`, `IMG_BLOG`, `STATUS_BLOG`, `updated_at`, `created_at`) VALUES
(17, 'he hs', 'he-hs-21', '2020-03-18', 'Admin', '<p>He es</p>', '1284547718.jpg', '1', '2020-03-20 21:57:15', '2020-03-18 16:09:32'),
(18, 'eaa', 'eaa-lI', '2020-03-18', 'Admin', '<p>mna</p>', '1642434342.jpg', '1', '2020-03-20 21:57:05', '2020-03-18 16:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `blog_etc_categories`
--

CREATE TABLE `blog_etc_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL COMMENT 'user id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_etc_categories`
--

INSERT INTO `blog_etc_categories` (`id`, `category_name`, `slug`, `category_description`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Cricket', 'cricket', NULL, NULL, '2020-04-05 03:00:44', '2020-04-05 03:00:58'),
(2, 'Footbal', 'footbal', NULL, NULL, '2020-04-22 13:59:57', '2020-04-01 13:59:57'),
(3, 'Fashon', 'fashon', NULL, NULL, '2020-04-14 13:59:57', '2020-04-14 13:59:57');

-- --------------------------------------------------------

--
-- Table structure for table `blog_etc_comments`
--

CREATE TABLE `blog_etc_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_etc_post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'if user was logged in',
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'if enabled in the config file',
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'if not logged in',
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'the comment body',
  `approved` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_etc_comments`
--

INSERT INTO `blog_etc_comments` (`id`, `blog_etc_post_id`, `user_id`, `ip`, `author_name`, `comment`, `approved`, `created_at`, `updated_at`, `author_email`, `author_website`) VALUES
(1, 6, 1, NULL, NULL, 'Hi', 1, '2020-04-05 13:46:57', '2020-04-05 13:46:57', NULL, 'https://laravel.com/docs/5.7/upgrade'),
(2, 6, 1, NULL, NULL, 'Another', 1, '2020-04-05 13:51:48', '2020-04-05 13:51:48', NULL, 'https://laravel.com/docs/5.7/upgrade'),
(3, 5, 1, NULL, NULL, 'The time zones in the contiguous US are often referred to by their generic name, without making a difference between stan', 1, '2020-04-05 14:26:29', '2020-04-05 14:26:29', NULL, 'https://laravel.com/docs/5.7/upgrade'),
(4, 6, 1, NULL, NULL, 'Whar', 1, '2020-04-05 21:35:29', '2020-04-05 21:35:29', NULL, 'https://laravel.com/docs/5.7/upgrade'),
(5, 6, 1, '127.0.0.1', NULL, 'dfjkflds', 1, '2020-04-06 00:05:46', '2020-04-06 00:34:16', NULL, 'https://laravel.com/docs/5.7/upgrade'),
(6, 6, 1, NULL, NULL, 'Nice', 1, '2020-04-06 00:32:19', '2020-04-06 00:32:19', NULL, 'https://laravel.com/docs/5.7/upgrade'),
(7, 2, 1, NULL, NULL, 'dsadfsadsadfsfdsdsa', 1, '2020-04-06 00:34:57', '2020-04-06 00:34:57', NULL, 'https://laravel.com/docs/5.7/upgrade'),
(8, 2, 1, '127.0.0.1', NULL, 'thanks', 1, '2020-04-06 00:36:05', '2020-04-06 00:41:23', NULL, 'https://laravel.com/docs/5.7/upgrade'),
(9, 2, 1, NULL, NULL, 'ddddfdfssdfdfssdfsdf', 1, '2020-04-06 00:38:08', '2020-04-06 00:38:08', NULL, 'https://laravel.com/docs/5.7/upgrade'),
(10, 2, 1, '127.0.0.1', NULL, 'Nicee', 1, '2020-04-06 00:42:18', '2020-04-06 00:42:35', NULL, NULL),
(11, 5, 1, '127.0.0.1', NULL, 'okk done', 1, '2020-04-06 00:45:07', '2020-04-06 00:45:26', NULL, NULL),
(12, 5, 1, NULL, NULL, 'Bro nice work', 1, '2020-04-06 00:46:57', '2020-04-06 00:46:57', NULL, NULL),
(13, 5, 1, '127.0.0.1', NULL, 'Ohh no', 1, '2020-04-06 00:47:44', '2020-04-06 00:48:05', NULL, NULL),
(14, 6, 1, NULL, NULL, 'great man', 1, '2020-04-06 01:11:30', '2020-04-06 01:11:30', NULL, 'https://laravel.com/docs/5.7/upgrade');

-- --------------------------------------------------------

--
-- Table structure for table `blog_etc_posts`
--

CREATE TABLE `blog_etc_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'New blog post',
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `meta_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_body` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `use_view_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'should refer to a blade file in /views/',
  `posted_at` datetime DEFAULT NULL COMMENT 'Public posted at time, if this is in future then it wont appear yet',
  `is_published` tinyint(1) NOT NULL DEFAULT 1,
  `image_large` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_etc_posts`
--

INSERT INTO `blog_etc_posts` (`id`, `user_id`, `slug`, `title`, `subtitle`, `meta_desc`, `post_body`, `use_view_file`, `posted_at`, `is_published`, `image_large`, `image_medium`, `image_thumbnail`, `created_at`, `updated_at`, `short_description`, `seo_title`) VALUES
(1, 1, 'what-is-lorem-ipsum', 'What is Lorem Ipsum?', 'lorem', NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', NULL, '2020-04-05 09:01:04', 1, 'what-is-lorem-ipsum-1000x700.jpg', 'what-is-lorem-ipsum-600x400.jpg', 'what-is-lorem-ipsum-150x150.jpg', '2020-04-05 03:01:54', '2020-04-05 04:05:20', NULL, 'Job'),
(2, 1, 'why-do-we-use-it', 'Why do we use it?', 'dads', NULL, '<p><strong>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using </strong>Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', NULL, '2020-04-05 09:06:18', 1, 'why-do-we-use-it-1000x700.jpg', 'why-do-we-use-it-600x400.jpg', 'why-do-we-use-it-150x150.jpg', '2020-04-05 03:07:18', '2020-04-05 03:31:28', NULL, 'Dish'),
(3, 1, 'where-does-it-come-from', 'Where does it come from?', 'dsafd', NULL, '<p><strong>Contrary </strong>to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in sect</p>', NULL, '2020-04-05 09:28:27', 1, 'where-does-it-come-from-1000x700.jpg', 'where-does-it-come-from-600x400.jpg', 'where-does-it-come-from-150x150.jpg', '2020-04-05 03:29:30', '2020-04-05 03:29:30', NULL, 'Menu'),
(4, 1, 'where-can-i-get-some', 'Where can I get some?', 'dsa', NULL, '<p>here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generat</p>', NULL, '2020-04-05 09:29:44', 1, 'where-can-i-get-some-1000x700.jpg', 'where-can-i-get-some-600x400.jpg', 'where-can-i-get-some-150x150.jpg', '2020-04-05 03:30:19', '2020-04-05 03:30:19', NULL, 'test'),
(5, 1, 'where-does-it-come-from-1', 'Where does it come from?', 'dcs', NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including vers</p>', NULL, '2020-04-05 09:30:23', 1, 'where-does-it-come-from-t1mkk-1000x700.jpg', 'where-does-it-come-from-ceb9l-600x400.jpg', 'where-does-it-come-from-dcwnl-150x150.jpg', '2020-04-05 03:30:57', '2020-04-05 03:30:57', NULL, 'Delicous'),
(6, 1, 'lorem-ipsum-is-simply-dummy-text-of', 'Lorem Ipsum is simply dummy text of', 'small', NULL, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker&nbsp;</p>', NULL, '2020-04-05 10:03:17', 1, 'lorem-ipsum-is-simply-dummy-text-of-1000x700.jpg', 'lorem-ipsum-is-simply-dummy-text-of-600x400.jpg', 'lorem-ipsum-is-simply-dummy-text-of-150x150.jpg', '2020-04-05 04:04:01', '2020-04-05 04:04:01', NULL, 'Food');

-- --------------------------------------------------------

--
-- Table structure for table `blog_etc_post_categories`
--

CREATE TABLE `blog_etc_post_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_etc_post_id` int(10) UNSIGNED NOT NULL,
  `blog_etc_category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_etc_post_categories`
--

INSERT INTO `blog_etc_post_categories` (`id`, `blog_etc_post_id`, `blog_etc_category_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(4, 5, 1),
(6, 6, 2),
(7, 4, 3),
(8, 6, 1),
(9, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `blog_etc_uploaded_photos`
--

CREATE TABLE `blog_etc_uploaded_photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `uploaded_images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unknown',
  `uploader_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_etc_uploaded_photos`
--

INSERT INTO `blog_etc_uploaded_photos` (`id`, `uploaded_images`, `image_title`, `source`, `uploader_id`, `created_at`, `updated_at`) VALUES
(1, '{\"image_large\":{\"filename\":\"what-is-lorem-ipsum-1000x700.png\",\"w\":1000,\"h\":700},\"image_medium\":{\"filename\":\"what-is-lorem-ipsum-600x400.png\",\"w\":600,\"h\":400},\"image_thumbnail\":{\"filename\":\"what-is-lorem-ipsum-150x150.png\",\"w\":150,\"h\":150}}', NULL, 'BlogFeaturedImage', NULL, '2020-04-05 03:01:54', '2020-04-05 03:01:54'),
(2, '{\"image_large\":{\"filename\":\"why-do-we-use-it-1000x700.png\",\"w\":1000,\"h\":700},\"image_medium\":{\"filename\":\"why-do-we-use-it-600x400.png\",\"w\":600,\"h\":400},\"image_thumbnail\":{\"filename\":\"why-do-we-use-it-150x150.png\",\"w\":150,\"h\":150}}', NULL, 'BlogFeaturedImage', NULL, '2020-04-05 03:07:18', '2020-04-05 03:07:18'),
(3, '{\"image_large\":{\"filename\":\"where-does-it-come-from-1000x700.jpg\",\"w\":1000,\"h\":700},\"image_medium\":{\"filename\":\"where-does-it-come-from-600x400.jpg\",\"w\":600,\"h\":400},\"image_thumbnail\":{\"filename\":\"where-does-it-come-from-150x150.jpg\",\"w\":150,\"h\":150}}', NULL, 'BlogFeaturedImage', NULL, '2020-04-05 03:29:30', '2020-04-05 03:29:30'),
(4, '{\"image_large\":{\"filename\":\"where-can-i-get-some-1000x700.jpg\",\"w\":1000,\"h\":700},\"image_medium\":{\"filename\":\"where-can-i-get-some-600x400.jpg\",\"w\":600,\"h\":400},\"image_thumbnail\":{\"filename\":\"where-can-i-get-some-150x150.jpg\",\"w\":150,\"h\":150}}', NULL, 'BlogFeaturedImage', NULL, '2020-04-05 03:30:19', '2020-04-05 03:30:19'),
(5, '{\"image_large\":{\"filename\":\"where-does-it-come-from-t1mkk-1000x700.jpg\",\"w\":1000,\"h\":700},\"image_medium\":{\"filename\":\"where-does-it-come-from-ceb9l-600x400.jpg\",\"w\":600,\"h\":400},\"image_thumbnail\":{\"filename\":\"where-does-it-come-from-dcwnl-150x150.jpg\",\"w\":150,\"h\":150}}', NULL, 'BlogFeaturedImage', NULL, '2020-04-05 03:30:57', '2020-04-05 03:30:57'),
(6, '{\"image_large\":{\"filename\":\"why-do-we-use-it-1000x700.jpg\",\"w\":1000,\"h\":700},\"image_medium\":{\"filename\":\"why-do-we-use-it-600x400.jpg\",\"w\":600,\"h\":400},\"image_thumbnail\":{\"filename\":\"why-do-we-use-it-150x150.jpg\",\"w\":150,\"h\":150}}', NULL, 'BlogFeaturedImage', NULL, '2020-04-05 03:31:28', '2020-04-05 03:31:28'),
(7, '{\"image_large\":{\"filename\":\"what-is-lorem-ipsum-1000x700.jpg\",\"w\":1000,\"h\":700},\"image_medium\":{\"filename\":\"what-is-lorem-ipsum-600x400.jpg\",\"w\":600,\"h\":400},\"image_thumbnail\":{\"filename\":\"what-is-lorem-ipsum-150x150.jpg\",\"w\":150,\"h\":150}}', NULL, 'BlogFeaturedImage', NULL, '2020-04-05 03:32:00', '2020-04-05 03:32:00'),
(8, '{\"image_large\":{\"filename\":\"lorem-ipsum-is-simply-dummy-text-of-1000x700.jpg\",\"w\":1000,\"h\":700},\"image_medium\":{\"filename\":\"lorem-ipsum-is-simply-dummy-text-of-600x400.jpg\",\"w\":600,\"h\":400},\"image_thumbnail\":{\"filename\":\"lorem-ipsum-is-simply-dummy-text-of-150x150.jpg\",\"w\":150,\"h\":150}}', NULL, 'BlogFeaturedImage', NULL, '2020-04-05 04:04:01', '2020-04-05 04:04:01'),
(9, '{\"image_large\":{\"filename\":\"test2413-1000x700.jpg\",\"w\":1000,\"h\":700},\"image_medium\":{\"filename\":\"test2413-600x400.jpg\",\"w\":600,\"h\":400},\"image_thumbnail\":{\"filename\":\"test2413-150x150.jpg\",\"w\":150,\"h\":150}}', NULL, 'BlogFeaturedImage', NULL, '2020-04-06 02:10:08', '2020-04-06 02:10:08'),
(10, '{\"image_large\":{\"filename\":\"mien-it-ltd-1000x700.jpg\",\"w\":1000,\"h\":700},\"image_medium\":{\"filename\":\"mien-it-ltd-600x400.jpg\",\"w\":600,\"h\":400},\"image_thumbnail\":{\"filename\":\"mien-it-ltd-150x150.jpg\",\"w\":150,\"h\":150}}', NULL, 'BlogFeaturedImage', NULL, '2020-04-06 02:10:55', '2020-04-06 02:10:55');

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE `contact_info` (
  `id` int(11) NOT NULL,
  `address` text DEFAULT NULL,
  `contact_no` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `website_link` varchar(200) DEFAULT NULL,
  `map_location` varchar(200) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_info`
--

INSERT INTO `contact_info` (`id`, `address`, `contact_no`, `email`, `website_link`, `map_location`, `updated_at`, `created_at`) VALUES
(1, '34 5453453\r\nl;l\r\nl\r\nl;l\r\nl;', '3435', 'admin@gmail.com', 'http://www.applyseason.com/Contact_list', '34', '2020-03-17 07:19:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_message`
--

CREATE TABLE `contact_message` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `messages` text DEFAULT NULL,
  `stauts` varchar(200) DEFAULT NULL,
  `updated_at` varchar(200) DEFAULT NULL,
  `created_at` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_message`
--

INSERT INTO `contact_message` (`id`, `name`, `email`, `subject`, `messages`, `stauts`, `updated_at`, `created_at`) VALUES
(1, 'admin admin', 'admin@gmail.com', 'Hello', '656', '1', '2020-03-16 18:18:28', '2020-03-16 18:18:28'),
(2, 'admin admin', 'admin@gmail.com', 'Hello', '5675 5453', '1', '2020-03-16 18:19:38', '2020-03-16 18:19:38'),
(4, 'Eric Jones', 'eric@talkwithwebvisitor.com', 'Your site – more leads?', 'Hey, this is Eric and I ran across applyseason.com a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=applyseason.com', '1', '2020-03-30 21:37:25', '2020-03-30 21:37:25'),
(5, 'KennethCit', 'raphaeArinmeriumb@gmail.com', 'The best advertising of your products and services!', 'Hi!  applyseason.com \r\n \r\nDid you know that it is possible to send business proposal totally lawfully? \r\nWe propose a new method of sending message through feedback forms. Such forms are located on many sites. \r\nWhen such appeal are sent, no personal data is used, and messages are sent to forms specifically designed to receive messages and appeals. \r\nAlso, messages sent through feedback Forms do not get into spam because such messages are considered important. \r\nWe offer you to test our service for free. We will send up to 50,000 messages for you. \r\nThe cost of sending one million messages is 49 USD. \r\n \r\nThis message is created automatically. Please use the contact details below to contact us. \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype  live:feedbackform2019 \r\nEmail - feedbackform@make-success.com', '1', '2020-03-31 04:21:41', '2020-03-31 04:21:41');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `id` int(11) NOT NULL,
  `page_name` varchar(200) DEFAULT NULL,
  `cout_Jobs` varchar(200) DEFAULT NULL,
  `cout_Members` varchar(200) DEFAULT NULL,
  `cout_Resume` varchar(200) DEFAULT NULL,
  `cout_Company` varchar(200) DEFAULT NULL,
  `updated_at` varchar(200) DEFAULT NULL,
  `created_at` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`id`, `page_name`, `cout_Jobs`, `cout_Members`, `cout_Resume`, `cout_Company`, `updated_at`, `created_at`) VALUES
(1, NULL, '23', '23215', '23325', '2335', '2020-03-17 23:03:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `happy_clients`
--

CREATE TABLE `happy_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `type` varchar(500) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `updated_at` varchar(200) DEFAULT NULL,
  `created_at` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `happy_clients`
--

INSERT INTO `happy_clients` (`id`, `name`, `type`, `image`, `description`, `updated_at`, `created_at`) VALUES
(3, 'Ali', 'Designer', '1972001718.jpg', '<p>ere ret wetre</p>', '2020-03-16 22:24:52', '2020-03-16 22:02:05'),
(4, 'Masadaq MK', 'Web Developer', '2027841663.png', '<p>hello 23</p>', '2020-03-16 22:24:42', '2020-03-16 22:23:50'),
(5, 'new blog is here', 'web', '1769160309.jpg', '<p>wewqe wewq ewq</p>', '2020-03-17 10:43:44', '2020-03-17 10:43:44'),
(6, 'Ararat themes', 'web 12', '1637234261.jpg', '<p>weqie ioewioue&nbsp;</p>', '2020-03-17 10:44:06', '2020-03-17 10:44:06');

-- --------------------------------------------------------

--
-- Table structure for table `home_page`
--

CREATE TABLE `home_page` (
  `id` int(11) NOT NULL,
  `page_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slide_logo` varchar(200) DEFAULT NULL,
  `slide_about` text DEFAULT NULL,
  `slide_subscrib` text DEFAULT NULL,
  `slide_imge` varchar(200) DEFAULT NULL,
  `updated_at` varchar(200) DEFAULT NULL,
  `created_at` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_page`
--

INSERT INTO `home_page` (`id`, `page_title`, `slide_title`, `slide_logo`, `slide_about`, `slide_subscrib`, `slide_imge`, `updated_at`, `created_at`) VALUES
(1, 'Applyseason - Website', 'السلام', 'ApplySeason.com', '<p>hello there is new function&nbsp;</p>', '<p>Subscriber Please&nbsp;</p>', '1117466400H.jpg', '2020-03-22 17:14:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laravel_fulltext`
--

CREATE TABLE `laravel_fulltext` (
  `id` int(10) UNSIGNED NOT NULL,
  `indexable_id` int(11) NOT NULL,
  `indexable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indexed_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `indexed_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_11_04_152913_create_laravel_fulltext_table', 2),
(4, '2018_05_28_224023_create_blog_etc_posts_table', 2),
(5, '2018_09_16_224023_add_author_and_url_blog_etc_posts_table', 2),
(6, '2018_09_26_085711_add_short_desc_textrea_to_blog_etc', 2),
(7, '2018_09_27_122627_create_blog_etc_uploaded_photos_table', 2),
(8, '2020_03_10_172835_create_professor_data_table', 3),
(9, '2020_04_06_031928_create_reply_comments_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `page_content`
--

CREATE TABLE `page_content` (
  `id` int(11) NOT NULL,
  `page_name` varchar(200) DEFAULT NULL,
  `page_section` varchar(200) DEFAULT NULL,
  `section_title` varchar(2000) DEFAULT NULL,
  `section_img` varchar(200) DEFAULT NULL,
  `section_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_status` varchar(200) DEFAULT NULL,
  `updated_at` varchar(200) DEFAULT NULL,
  `created_at` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_content`
--

INSERT INTO `page_content` (`id`, `page_name`, `page_section`, `section_title`, `section_img`, `section_description`, `section_status`, `updated_at`, `created_at`) VALUES
(1, 'About', '1', 'We Are The Job Portal Agency', '150091719.jpg', '<p>On her way she met a copy. The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word &amp; the Little Blind Text should turn around and return to its own, safe country. But nothing the copy said could convince her and so it didn&rsquo;t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"color: #666666; font-family: webfont, Scheherazade, \'Al Bayan\', \'Traditional Arabic\', serif; font-size: 38px; text-align: right; background-color: #ffffff;\">عندما يريد العالم أن ‪</span><span id=\"e2\" class=\"ex\" style=\"color: crimson; cursor: pointer; font-family: webfont, Scheherazade, \'Al Bayan\', \'Traditional Arabic\', serif; font-size: 38px; text-align: right; background-color: #ffffff;\">يتكلّم</span><span style=\"color: #666666; font-family: webfont, Scheherazade, \'Al Bayan\', \'Traditional Arabic\', serif; font-size: 38px; text-align: right; background-color: #ffffff;\">&nbsp;‬ ، فهو يتحدّث بلغة يونيكود.&nbsp;</span><span id=\"e1\" class=\"ex\" style=\"color: crimson; cursor: pointer; font-family: webfont, Scheherazade, \'Al Bayan\', \'Traditional Arabic\', serif; font-size: 38px; text-align: right; background-color: #ffffff;\">تسجّل</span><span style=\"color: #666666; font-family: webfont, Scheherazade, \'Al Bayan\', \'Traditional Arabic\', serif; font-size: 38px; text-align: right; background-color: #ffffff;\">&nbsp;الآن لحضور المؤتمر الدولي العاشر ليونيكود (</span><span class=\"embedded-latin\" dir=\"ltr\" lang=\"en\" style=\"unicode-bidi: isolate; color: #666666; font-family: webfont, Scheherazade, \'Al Bayan\', \'Traditional Arabic\', serif; font-size: 38px; text-align: right; background-color: #ffffff;\">Unicode Conference</span><span style=\"color: #666666; font-family: webfont, Scheherazade, \'Al Bayan\', \'Traditional Arabic\', serif; font-size: 38px; text-align: right; background-color: #ffffff;\">)، الذي سيعقد&nbsp;</span><span id=\"e10\" class=\"ex\" style=\"color: crimson; cursor: pointer; font-family: webfont, Scheherazade, \'Al Bayan\', \'Traditional Arabic\', serif; font-size: 38px; text-align: right; background-color: #ffffff;\">في 10-12 آذار</span><span style=\"color: #666666; font-family: webfont, Scheherazade, \'Al Bayan\', \'Traditional Arabic\', serif; font-size: 38px; text-align: right; background-color: #ffffff;\">&nbsp;</span><span class=\"embedded-latin\" style=\"color: #666666; font-family: webfont, Scheherazade, \'Al Bayan\', \'Traditional Arabic\', serif; font-size: 38px; text-align: right; background-color: #ffffff;\">1997</span><span style=\"color: #666666; font-family: webfont, Scheherazade, \'Al Bayan\', \'Traditional Arabic\', serif; font-size: 38px; text-align: right; background-color: #ffffff;\">&nbsp;بمدينة مَايِنْتْس، ألمانيا. و&nbsp;</span><span id=\"e7\" class=\"ex\" style=\"color: crimson; cursor: pointer; font-family: webfont, Scheherazade, \'Al Bayan\', \'Traditional Arabic\', serif; font-size: 38px; text-align: right; background-color: #ffffff;\">سيجمع</span><span style=\"color: #666666; font-family: webfont, Scheherazade, \'Al Bayan\', \'Traditional Arabic\', serif; font-size: 38px; text-align: right; background-color: #ffffff;\">&nbsp;</span><span id=\"e11\" class=\"ex\" style=\"color: crimson; cursor: pointer; font-family: webfont, Scheherazade, \'Al Bayan\', \'Traditional Arabic\', serif; font-size: 38px; text-align: right; background-color: #ffffff;\">المؤتمر</span><span style=\"color: #666666; font-family: webfont, Scheherazade, \'Al Bayan\', \'Traditional Arabic\', serif; font-size: 38px; text-align: right; background-color: #ffffff;\">&nbsp;</span><span id=\"shaping\" class=\"ex\" style=\"color: crimson; cursor: pointer; font-family: webfont, Scheherazade, \'Al Bayan\', \'Traditional Arabic\', serif; font-size: 38px; text-align: right; background-color: #ffffff;\">بين خبراء</span><span style=\"color: #666666; font-family: webfont, Scheherazade, \'Al Bayan\', \'Traditional Arabic\', serif; font-size: 38px; text-align: right; background-color: #ffffff;\">&nbsp;من كافة قطاعات الصناعة على الشبكة العالمية انترنيت ويونيكود، حيث ستتم،&nbsp;</span><span id=\"e8\" class=\"ex\" style=\"color: crimson; cursor: pointer; font-family: webfont, Scheherazade, \'Al Bayan\', \'Traditional Arabic\', serif; font-size: 38px; text-align: right; background-color: #ffffff;\">على</span><span style=\"color: #666666; font-family: webfont, Scheherazade, \'Al Bayan\', \'Traditional Arabic\', serif; font-size: 38px; text-align: right; background-color: #ffffff;\">&nbsp;الصعيدين الدولي والمحلي على حد سواء مناقشة سبل استخدام يونكود في النظم القائمة وفيما يخص التطبيقات الحاسوبية، الخطوط، تصميم النصوص والحوسبة&nbsp;</span><span id=\"e9\" class=\"ex\" style=\"color: crimson; cursor: pointer; font-family: webfont, Scheherazade, \'Al Bayan\', \'Traditional Arabic\', serif; font-size: 38px; text-align: right; background-color: #ffffff;\">متعددة</span><span style=\"color: #666666; font-family: webfont, Scheherazade, \'Al Bayan\', \'Traditional Arabic\', serif; font-size: 38px; text-align: right; background-color: #ffffff;\">&nbsp;اللغات.</span></p>', '1', '2020-03-22 16:34:13', NULL),
(2, 'About', '1', 'hello ', 'w', 'hello there', '1', NULL, NULL),
(3, 'About', '1', 'hello ', 'w', 'hello there', '1', NULL, NULL),
(4, 'About', '1', 'hello ', 'w', 'hello there', '1', NULL, NULL),
(5, 'About', '1', 'hello ', 'w', 'hello there', '1', NULL, NULL),
(6, 'About', '1', 'hello ', 'w', 'hello there', '1', NULL, NULL),
(7, 'About', '1', 'hello ', 'w', 'hello there', '1', NULL, NULL),
(8, 'About', '1', 'hello ', 'w', 'hello there', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `professor_data`
--

CREATE TABLE `professor_data` (
  `id` int(11) NOT NULL,
  `university` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `research_interests` text DEFAULT NULL,
  `disciplines` text DEFAULT NULL,
  `sub_disciplines1` text DEFAULT NULL,
  `sub_disciplines2` text DEFAULT NULL,
  `sub_disciplines3` text DEFAULT NULL,
  `sub_disciplines4` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `professor_data`
--

INSERT INTO `professor_data` (`id`, `university`, `name`, `email`, `phone`, `research_interests`, `disciplines`, `sub_disciplines1`, `sub_disciplines2`, `sub_disciplines3`, `sub_disciplines4`, `created_at`, `updated_at`) VALUES
(22, 'Georgia Institute of Technology_x000D_', 'Jye-Chyi Lu', 'https://www.isye.gatech.edu/user/405/contact', '404.894.2318', 'Data Mining\nIndustrial Statistics\nQuality and Reliability Engineering\nSupply Chain and Logistics', 'Industrial engineering', 'Informational system', 'logistics and supply chains', 'Machine learning and data mining', 'Quality control and reliability', '2020-03-10 19:00:19', '2020-03-10 19:00:19'),
(23, 'Georgia Institute of Technology_x000D_', 'Nicoleta Serban', 'https://www.isye.gatech.edu/user/415/contact', '404.385.7255', 'Statistics\nData Mining\nHealth Analytics\nHealth Systems\nEnterprise Transformation', 'Industrial engineering', 'Informational system', 'Healthcare, Human factor, Safety', 'Machine learning and data mining', '', '2020-03-10 19:00:19', '2020-03-10 19:00:19'),
(24, 'Georgia Institute of Technology_x000D_', 'Andy Sun', 'https://www.isye.gatech.edu/user/432/contact', '404.385.7571', 'Optimization\nElectric Energy Systems', 'Industrial engineering', 'Informational system', 'System optimization', 'Machine learning and data mining', '', '2020-03-10 19:00:19', '2020-03-10 19:00:19'),
(25, 'Georgia Institute of Technology_x000D_', 'Jye-Chyi Lu', 'https://www.isye.gatech.edu/user/405/contact', '404.894.2318', 'Data Mining\nIndustrial Statistics\nQuality and Reliability Engineering\nSupply Chain and Logistics', 'Industrial engineering', 'Informational system', 'logistics and supply chains', 'Machine learning and data mining', 'Quality control and reliability', '2020-03-10 19:33:08', '2020-03-10 19:33:08'),
(26, 'Georgia Institute of Technology_x000D_', 'Nicoleta Serban', 'https://www.isye.gatech.edu/user/415/contact', '404.385.7255', 'Statistics\nData Mining\nHealth Analytics\nHealth Systems\nEnterprise Transformation', 'Industrial engineering', 'Informational system', 'Healthcare, Human factor, Safety', 'Machine learning and data mining', '', '2020-03-10 19:33:08', '2020-03-10 19:33:08'),
(27, 'Georgia Institute of Technology_x000D_', 'Andy Sun', 'https://www.isye.gatech.edu/user/432/contact', '404.385.7571', 'Optimization\nElectric Energy Systems', 'Industrial engineering', 'Informational system', 'System optimization', 'Machine learning and data mining', '', '2020-03-10 19:33:08', '2020-03-10 19:33:08'),
(28, 'Georgia Institute of Technology_x000D_', 'Jye-Chyi Lu', 'https://www.isye.gatech.edu/user/405/contact', '404.894.2318', 'Data Mining\nIndustrial Statistics\nQuality and Reliability Engineering\nSupply Chain and Logistics', 'Industrial engineering', 'Informational system', 'logistics and supply chains', 'Machine learning and data mining', 'Quality control and reliability', '2020-03-19 06:31:01', '2020-03-19 06:31:01'),
(29, 'Georgia Institute of Technology_x000D_', 'Nicoleta Serban', 'https://www.isye.gatech.edu/user/415/contact', '404.385.7255', 'Statistics\nData Mining\nHealth Analytics\nHealth Systems\nEnterprise Transformation', 'Industrial engineering', 'Informational system', 'Healthcare, Human factor, Safety', 'Machine learning and data mining', '', '2020-03-19 06:31:01', '2020-03-19 06:31:01'),
(30, 'Georgia Institute of Technology_x000D_', 'Andy Sun', 'https://www.isye.gatech.edu/user/432/contact', '404.385.7571', 'Optimization\nElectric Energy Systems', 'Industrial engineering', 'Informational system', 'System optimization', 'Machine learning and data mining', '', '2020-03-19 06:31:01', '2020-03-19 06:31:01'),
(31, 'Georgia Institute of Technology_x000D_', 'Jye-Chyi Lu', 'https://www.isye.gatech.edu/user/405/contact', '404.894.2318', 'Data Mining\nIndustrial Statistics\nQuality and Reliability Engineering\nSupply Chain and Logistics', 'Industrial engineering', 'Informational system', 'logistics and supply chains', 'Machine learning and data mining', 'Quality control and reliability', '2020-03-19 06:32:19', '2020-03-19 06:32:19'),
(32, 'Georgia Institute of Technology_x000D_', 'Nicoleta Serban', 'https://www.isye.gatech.edu/user/415/contact', '404.385.7255', 'Statistics\nData Mining\nHealth Analytics\nHealth Systems\nEnterprise Transformation', 'Industrial engineering', 'Informational system', 'Healthcare, Human factor, Safety', 'Machine learning and data mining', '', '2020-03-19 06:32:19', '2020-03-19 06:32:19'),
(33, 'Georgia Institute of Technology_x000D_', 'Andy Sun', 'https://www.isye.gatech.edu/user/432/contact', '404.385.7571', 'Optimization\nElectric Energy Systems', 'Industrial engineering', 'Informational system', 'System optimization', 'Machine learning and data mining', '', '2020-03-19 06:32:19', '2020-03-19 06:32:19');

-- --------------------------------------------------------

--
-- Table structure for table `reply_comments`
--

CREATE TABLE `reply_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_etc_post_id` int(11) DEFAULT NULL,
  `comment_id` int(10) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reply_comments`
--

INSERT INTO `reply_comments` (`id`, `blog_etc_post_id`, `comment_id`, `user_id`, `comment`, `approved`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 1, 'Yes', 1, '2020-04-05 21:37:42', '2020-04-05 21:37:42'),
(2, 6, 2, 1, 'No', 1, '2020-04-05 22:06:30', '2020-04-05 22:06:30'),
(3, 6, 4, NULL, 'gfdsg', 1, '2020-04-27 04:58:30', '2020-04-21 04:58:30'),
(4, 6, 1, 1, 'Nai', 1, '2020-04-05 23:01:04', '2020-04-05 23:01:04'),
(5, 6, 1, 1, 'Hi', 1, '2020-04-05 23:02:52', '2020-04-05 23:02:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Abdul Basit', 'admin@admin.com', NULL, '$2y$10$P0JZUENEALFf3/zSCyYgvOAYns73kF7C9gycNusUUFwjjHrGFXUcu', '6j4XA9a1w2NyDqeJCFw4lxT12l9SLEFi279F0D49ONUdvRDOiyztiVwaEE1I', '2020-03-10 09:20:06', '2020-03-10 09:20:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `blog_etc_categories`
--
ALTER TABLE `blog_etc_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_etc_categories_slug_unique` (`slug`),
  ADD KEY `blog_etc_categories_created_by_index` (`created_by`);

--
-- Indexes for table `blog_etc_comments`
--
ALTER TABLE `blog_etc_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_etc_comments_blog_etc_post_id_index` (`blog_etc_post_id`),
  ADD KEY `blog_etc_comments_user_id_index` (`user_id`);

--
-- Indexes for table `blog_etc_posts`
--
ALTER TABLE `blog_etc_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_etc_posts_slug_unique` (`slug`),
  ADD KEY `blog_etc_posts_user_id_index` (`user_id`),
  ADD KEY `blog_etc_posts_posted_at_index` (`posted_at`);

--
-- Indexes for table `blog_etc_post_categories`
--
ALTER TABLE `blog_etc_post_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_etc_post_categories_blog_etc_post_id_index` (`blog_etc_post_id`),
  ADD KEY `blog_etc_post_categories_blog_etc_category_id_index` (`blog_etc_category_id`);

--
-- Indexes for table `blog_etc_uploaded_photos`
--
ALTER TABLE `blog_etc_uploaded_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_etc_uploaded_photos_uploader_id_index` (`uploader_id`);

--
-- Indexes for table `contact_info`
--
ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_message`
--
ALTER TABLE `contact_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `happy_clients`
--
ALTER TABLE `happy_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page`
--
ALTER TABLE `home_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laravel_fulltext`
--
ALTER TABLE `laravel_fulltext`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `laravel_fulltext_indexable_type_indexable_id_unique` (`indexable_type`,`indexable_id`);
ALTER TABLE `laravel_fulltext` ADD FULLTEXT KEY `fulltext_title` (`indexed_title`);
ALTER TABLE `laravel_fulltext` ADD FULLTEXT KEY `fulltext_title_content` (`indexed_title`,`indexed_content`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_content`
--
ALTER TABLE `page_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `professor_data`
--
ALTER TABLE `professor_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply_comments`
--
ALTER TABLE `reply_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `blog_etc_categories`
--
ALTER TABLE `blog_etc_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_etc_comments`
--
ALTER TABLE `blog_etc_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `blog_etc_posts`
--
ALTER TABLE `blog_etc_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blog_etc_post_categories`
--
ALTER TABLE `blog_etc_post_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blog_etc_uploaded_photos`
--
ALTER TABLE `blog_etc_uploaded_photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_info`
--
ALTER TABLE `contact_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_message`
--
ALTER TABLE `contact_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `happy_clients`
--
ALTER TABLE `happy_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `home_page`
--
ALTER TABLE `home_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `laravel_fulltext`
--
ALTER TABLE `laravel_fulltext`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `page_content`
--
ALTER TABLE `page_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `professor_data`
--
ALTER TABLE `professor_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `reply_comments`
--
ALTER TABLE `reply_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_etc_comments`
--
ALTER TABLE `blog_etc_comments`
  ADD CONSTRAINT `blog_etc_comments_blog_etc_post_id_foreign` FOREIGN KEY (`blog_etc_post_id`) REFERENCES `blog_etc_posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_etc_post_categories`
--
ALTER TABLE `blog_etc_post_categories`
  ADD CONSTRAINT `blog_etc_post_categories_blog_etc_category_id_foreign` FOREIGN KEY (`blog_etc_category_id`) REFERENCES `blog_etc_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_etc_post_categories_blog_etc_post_id_foreign` FOREIGN KEY (`blog_etc_post_id`) REFERENCES `blog_etc_posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
