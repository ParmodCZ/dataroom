-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 11, 2020 at 10:41 AM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.28-3+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dataroom`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_type`
--

CREATE TABLE `action_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `action_type`
--

INSERT INTO `action_type` (`id`, `action`, `created_at`, `updated_at`) VALUES
(1, 'Folder creation', '2018-11-19 13:00:00', '2018-11-19 13:00:00'),
(2, 'File uploading', '2019-01-02 13:00:00', '2019-01-02 13:00:00'),
(3, 'Folder rename', '2018-11-19 13:00:00', '2018-11-19 13:00:00'),
(4, 'File rename', '2019-01-02 13:00:00', '2019-01-02 13:00:00'),
(5, 'Folder deletion', '2019-01-02 13:00:00', '2019-01-02 13:00:00'),
(6, 'File deletion', '2019-01-02 13:00:00', '2019-01-02 13:00:00'),
(7, 'File viewing', NULL, NULL),
(8, 'PDF downloading', NULL, NULL),
(9, 'Folder restoring', NULL, NULL),
(10, 'File restoring', NULL, NULL),
(11, 'File moving', NULL, NULL),
(12, 'Copy Folder', NULL, NULL),
(13, 'Copy File', NULL, NULL),
(14, 'Room creation', NULL, NULL),
(15, 'Searching', NULL, NULL),
(16, 'File permission applying', NULL, NULL),
(17, 'Folder permission applying', NULL, NULL),
(18, 'Question deletion', NULL, NULL),
(19, 'Group deletion', NULL, NULL),
(20, 'User invitation', NULL, NULL),
(21, 'User deletion', NULL, NULL),
(22, 'User group editing', NULL, NULL),
(23, 'Creating Q&A question', NULL, NULL),
(24, 'Report viewing', NULL, NULL),
(25, 'Folder downloading', NULL, NULL),
(26, 'File downloading', NULL, NULL),
(27, 'zip Extracting', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `name`, `email`, `password`, `phone_no`, `created_at`, `updated_at`) VALUES
(1, 'priyanshu', 'pramod.kumar@contriverz.com', '$2y$10$yvhOngi9IzzZmPxXq7WPeeyvB.L7D4csY5oEklh.5dOF0fwQjHoD.', '7409610653', '2019-01-22 18:30:00', '2019-01-22 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `collaboration_with_group`
--

CREATE TABLE `collaboration_with_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collaboration_group_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collaboration_with_group`
--

INSERT INTO `collaboration_with_group` (`id`, `group_id`, `project_id`, `collaboration_group_id`, `created_at`, `updated_at`) VALUES
(1, '15', '1', '15', '2018-12-29 09:00:37', '2018-12-29 09:00:37'),
(2, '16', '4', '17', '2018-12-29 09:17:11', '2018-12-29 09:17:11'),
(3, '17', '4', '17', '2018-12-29 09:17:12', '2018-12-29 09:17:12'),
(4, '18', '1', '18', '2019-01-02 08:49:03', '2019-01-02 08:49:03'),
(5, '20', '3', '20', '2019-01-14 09:42:58', '2019-01-14 09:42:58'),
(6, '21', '3', '21', '2019-01-14 09:43:09', '2019-01-14 09:43:09'),
(8, '32', '13', '32', '2019-01-23 07:06:35', '2019-01-23 07:06:35'),
(9, '32', '13', '33', '2019-01-23 07:13:18', '2019-01-23 07:13:18'),
(10, '33', '13', '33', '2019-01-23 07:13:19', '2019-01-23 07:13:19'),
(11, '36', '16', '36', '2019-01-23 23:49:15', '2019-01-23 23:49:15'),
(12, '38', '6', '38', '2019-01-24 04:10:25', '2019-01-24 04:10:25'),
(13, '40', '6', '40', '2019-01-27 23:45:06', '2019-01-27 23:45:06'),
(14, '45', '22', '45', '2019-01-28 00:51:03', '2019-01-28 00:51:03'),
(15, '51', '25', '51', '2019-01-30 04:55:44', '2019-01-30 04:55:44'),
(16, '32', '31', '57', '2019-02-11 01:49:35', '2019-02-11 01:49:35'),
(17, '40', '31', '57', '2019-02-11 01:49:35', '2019-02-11 01:49:35'),
(18, '57', '31', '57', '2019-02-11 01:49:35', '2019-02-11 01:49:35');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `section` varchar(200) NOT NULL,
  `content` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `name`, `section`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(25, 'home', 'bannercontent', '<p><img alt=\"banner\" src=\"http://192.168.0.131/dataroom/images/frontend/banner.jpg\" /></p>\r\n\r\n<div class=\"banner_content\">\r\n<h1>PRODATA Virtual<br />\r\nData Rooms</h1>\r\n\r\n<p>Share and collaborate on business-critical documents in a secure way.</p>\r\n</div>', NULL, '2020-03-09 05:54:05', NULL),
(26, 'home', 'trustedby', '<div class=\"trusted_by_left\">\r\n<h2>TRUSTED BY</h2>\r\n\r\n<p>When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,</p>\r\n</div>\r\n\r\n<div class=\"trusted_by_right\"><img alt=\"img\" src=\"http://192.168.0.131/dataroom/images/frontend/trusted_icon1.jpg\" /> <img alt=\"img\" src=\"http://192.168.0.131/dataroom/images/frontend/trusted_icon2.jpg\" /> <img alt=\"img\" src=\"http://192.168.0.131/dataroom/images/frontend/trusted_icon3.jpg\" /> <img alt=\"img\" src=\"http://192.168.0.131/dataroom/images/frontend/trusted_icon4.jpg\" /> <img alt=\"img\" src=\"http://192.168.0.131/dataroom/images/frontend/trusted_icon5.jpg\" /> <img alt=\"img\" src=\"http://192.168.0.131/dataroom/images/frontend/trusted_icon6.jpg\" /></div>', NULL, '2020-03-09 05:54:05', NULL),
(27, 'home', 'focus', '<div class=\"focus_pannel_left\">\r\n<h2>Focus on Your Business, Not the<br />\r\nSoftware</h2>\r\n\r\n<p>We keep things simple. Our data rooms are so easy to use that new users don&#39;t require training.</p>\r\n\r\n<ul>\r\n	<li><a href=\"#\">It only takes 15 minutes to deploy your data room</a></li>\r\n	<li><a href=\"#\">Use any computer, browser or mobile device - no plug-ins required</a></li>\r\n	<li><a href=\"#\">Easy uploads via Drag &amp; Drop - import your entire index structure to the data room in two clicks</a></li>\r\n	<li><a href=\"#\">No document preparation is necessary &ndash; we support 25+ file formats for secure viewing, printing and downloading</a></li>\r\n	<li><a href=\"#\">Copy and paste email addresses to invite hundreds of users to the data room in a minute</a></li>\r\n	<li><a href=\"#\">Intuitive document rights management to configure which files can be viewed, printed or downloaded for each user</a></li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"focus_pannel_right\"><img alt=\"img\" src=\"http://192.168.0.131/dataroom/images/frontend/focus_img1.jpg\" /></div>', NULL, '2020-03-09 05:54:05', NULL),
(28, 'home', 'SandR', '<div class=\"focus_pannel_n_left\"><img alt=\"img\" src=\"http://192.168.0.131/dataroom/images/frontend/focus_img2.jpg\" /></div>\r\n\r\n<div class=\"focus_pannel_n_right\">\r\n<h2>Industry-Leading Security and<br />\r\nReliability</h2>\r\n\r\n<p>We keep things simple. Our data rooms are so easy to use that new users don&#39;t require training.</p>\r\n\r\n<ul>\r\n	<li><a href=\"#\">Data center operations are ISO 27001 certified and audited by EY</a></li>\r\n	<li><a href=\"#\">All data centers infrastructure is SOC2 compliant and has been fully audited</a></li>\r\n	<li><a href=\"#\">Development practices at iDeals are compliant with the Open Web Application Security Project</a></li>\r\n	<li><a href=\"#\">Multiple data centers continuously mirror each other to handle even the most extreme scenarios</a></li>\r\n	<li><a href=\"#\">Industry-leading 99.95% data room uptime is guaranteed</a></li>\r\n	<li><a href=\"#\">Data is protected by 256-bit encryption and 2048-bit keys when transferred and at rest</a></li>\r\n</ul>\r\n</div>', NULL, '2020-03-09 05:54:05', NULL),
(29, 'home', 'idealplatform', '<h3>Over $100 bln in Capital Sold Using<br />\r\nthe iDeals Platform</h3>\r\n\r\n<p>100% of the top 25 investment banks and thousands of enterprises, legal firms and<br />\r\nlife science companies have used iDeals Virtual Data Rooms.</p>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"trusted_ideal_pannel_icons\"><img alt=\"img\" src=\"http://192.168.0.131/dataroom/images/frontend/trusted_icon1.jpg\" /> <img alt=\"img\" src=\"http://192.168.0.131/dataroom/images/frontend/trusted_icon1.jpg\" /> <img alt=\"img\" src=\"http://192.168.0.131/dataroom/images/frontend/trusted_icon1.jpg\" /> <img alt=\"img\" src=\"http://192.168.0.131/dataroom/images/frontend/trusted_icon1.jpg\" /> <img alt=\"img\" src=\"http://192.168.0.131/dataroom/images/frontend/trusted_icon1.jpg\" /> <img alt=\"img\" src=\"http://192.168.0.131/dataroom/images/frontend/trusted_icon1.jpg\" /></div>', NULL, '2020-03-09 05:54:05', NULL),
(30, 'home', 'customerreviews', '<h3>Customer Reviews</h3>\r\n\r\n<p>See why thousands of companies of all sizes choose iDeals as their virtual data room provider.</p>', NULL, '2020-03-09 05:54:05', NULL),
(31, 'contact', 'bannercontent', '<h3>Get in Touch with Prodataroom</h3>\r\n<p>Want to learn more about our products or have a sales, support or billing request?</p>', NULL, NULL, NULL),
(32, 'contact', 'contactus', '<h2>Contact Us</h2>\r\n            <p>Please select one of the following departments at Prodataroom:</p>\r\n            <div class=\"contact_left_form\">\r\n               <div class=\"form-section\">\r\n                  <h4></h4>\r\n                  <div>\r\n                     <form>\r\n                        <input class=\"form-control\" type=\"text\" name=\"name\" placeholder=\"Full Name\">\r\n                        <input class=\"form-control\" type=\"text\" name=\"company\" placeholder=\"Company\">\r\n                        <input class=\"form-control\" type=\"text\" name=\"email\" placeholder=\"Email\">\r\n                        <input  class=\"form-control\" type=\"text\" name=\"phone\" placeholder=\"phone no\">\r\n                        <select name=\"selectbasic\" placeholder=\"\" class=\"form-control\" title=\"How did you hear about iDeals?\">\r\n                           <option style=\"display:none;\" value=\"-1\" disabled=\"\" selected=\"\">How did you hear about iDeals?</option>\r\n                           <option value=\"Web search\">Web search</option>\r\n                           <option value=\"Recommendation\">Recommendation</option>\r\n                           <option value=\"Used iDeals before\">Used iDeals before</option>\r\n                           <option value=\"Conference\">Conference</option>\r\n                           <option value=\"Advertisement\">Advertisement</option>\r\n                           <option value=\"Other\">Other</option>\r\n                        </select>\r\n                        <textarea class=\"form-control\" name=\"message\" placeholder=\"Enter text here...\"></textarea>\r\n                        <input type=\"submit\" value=\"Send\" name=\"submit\">\r\n                     </form>\r\n                  </div>\r\n               </div>\r\n            </div>', NULL, NULL, NULL),
(33, 'contact', 'contactaddress', '<div class=\"contact_address\">\r\n               <h2>Europe</h2>\r\n               <span class=\"addreses\">\r\n                  <h4>UK</h4>\r\n                  <p>+44 (0) 203 514 2571</p>\r\n                  <p>800 048 8172 (toll free)</p>\r\n               </span>\r\n               <span class=\"addreses\">\r\n                  <h4>Germany</h4>\r\n                  <p>+44 (0) 203 514 2571</p>\r\n                  <p>800 048 8172 (toll free)</p>\r\n               </span>\r\n               <span class=\"addreses\">\r\n                  <h4>France</h4>\r\n                  <p>+44 (0) 203 514 2571</p>\r\n                  <p>800 048 8172 (toll free)</p>\r\n               </span>\r\n               <span class=\"addreses\">\r\n                  <h4>Russia</h4>\r\n                  <p>+44 (0) 203 514 2571</p>\r\n                  <p>800 048 8172 (toll free)</p>\r\n               </span>\r\n               <span class=\"addreses\">\r\n                  <h4>Ukraine</h4>\r\n                  <p>+44 (0) 203 514 2571</p>\r\n                  <p>800 048 8172 (toll free)</p>\r\n               </span>\r\n               <h2>Middle East & Africa</h2>\r\n               <span class=\"addreses\">\r\n                  <h4>Turkey</h4>\r\n                  <p>(0) 203 514 2571</p>\r\n               </span>\r\n               <span class=\"addreses\">\r\n                  <h4>UAE</h4>\r\n                  <p>8000 3570 3989 (toll free)</p>\r\n                  <p>+97142743089</p>\r\n               </span>\r\n               <span class=\"addreses\">\r\n                  <h4>Israel</h4>\r\n                  <p>972 372 192 72</p>\r\n               </span>\r\n               <span class=\"addreses\">\r\n                  <h4>Kazakhstan</h4>\r\n                  <p>+7 727 346 9815</p>\r\n               </span>\r\n            </div>\r\n            <div class=\"contact_address\">\r\n               <h2>Americas</h2>\r\n               <span class=\"addreses\">\r\n                  <h4>US</h4>\r\n                  <p>+1 646 843 6060</p>\r\n                  <p>888 822 5141 (toll free)</p>\r\n               </span>\r\n               <span class=\"addreses\">\r\n                  <h4>Canada</h4>\r\n                  <p>1 888 225 2821 (toll free)</p>\r\n               </span>\r\n               <span class=\"addreses\">\r\n                  <h4>Brazil</h4>\r\n                  <p>55 11 3197 4871</p>\r\n                  <p>800 878 4065 (toll free)</p>\r\n               </span>\r\n               <h2>Asia Pacific</h2>\r\n               <span class=\"addreses\">\r\n                  <h4>Hong Kong</h4>\r\n                  <p>852 5808 2376</p>\r\n               </span>\r\n               <span class=\"addreses\">\r\n                  <h4>Japan</h4>\r\n                  <p>81 345 801 680</p>\r\n               </span>\r\n               <span class=\"addreses\">\r\n                  <h4>India</h4>\r\n                  <p>91 226 101 45450</p>\r\n               </span>\r\n               <span class=\"addreses\">\r\n                  <h4>China</h4>\r\n                  <p>400 120 3034 (toll free)</p>\r\n               </span>\r\n               <span class=\"addreses\">\r\n                  <h4>Singapore</h4>\r\n                  <p>65 315 828 68</p>\r\n               </span>\r\n               <span class=\"addreses\">\r\n                  <h4>Australia</h4>\r\n                  <p>+61 283 109 326</p>\r\n               </span>\r\n            </div>', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delete_documents`
--

CREATE TABLE `delete_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_folder` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restored_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restored_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delete_documents`
--

INSERT INTO `delete_documents` (`id`, `deleted_file`, `deleted_folder`, `project_id`, `deleted_from`, `document_status`, `deleted_by`, `restored_by`, `deleted_time`, `restored_time`, `created_at`, `updated_at`) VALUES
(26, '1548134995.21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (1) (1).jpg', '', '6', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (1) (1).jpg', '0', '1', '0', '1548134995', '0', '2019-01-21 23:59:55', '2019-01-21 23:59:55'),
(27, '1548307540.Desert.jpg', '', '16', 'public/documents/8/tester_testing12/Desert.jpg', '0', '8', '0', '1548307540', '0', '2019-01-23 23:55:41', '2019-01-23 23:55:41'),
(28, '', '1548309232.test', '15', 'public/documents/8/testing/test', '1', '8', '0', '24 January 2019 05:53:52', '0', '2019-01-24 00:23:52', '2019-01-24 00:23:52'),
(29, '1548309837.Chrysanthemum-copy.jpg', '', '15', 'public/documents/8/testing/Chrysanthemum-copy.jpg', '0', '8', '0', '1548309837', '0', '2019-01-24 00:33:57', '2019-01-24 00:33:57'),
(30, '1548312033.Chrysanthemum.jpg', '', '16', 'public/documents/8/tester_testing12/Chrysanthemum.jpg', '0', '8', '0', '1548312033', '0', '2019-01-24 01:10:33', '2019-01-24 01:10:33'),
(31, '', '1548393602.tester_', '16', 'public/documents/8/tester_testing12/tester_', '1', '8', '0', '25 January 2019 05:20:02', '0', '2019-01-24 23:50:02', '2019-01-24 23:50:02'),
(32, '', '1548393602.tester_-copy', '16', 'public/documents/8/tester_testing12/tester_-copy', '1', '8', '0', '25 January 2019 05:20:02', '0', '2019-01-24 23:50:03', '2019-01-24 23:50:03'),
(33, '', '1548393603.tester_-copy-copy', '16', 'public/documents/8/tester_testing12/tester_-copy-copy', '1', '8', '0', '25 January 2019 05:20:03', '0', '2019-01-24 23:50:03', '2019-01-24 23:50:03'),
(34, '', '1548393603.tester_-copy-copy-copy', '16', 'public/documents/8/tester_testing12/tester_-copy-copy-copy', '1', '8', '0', '25 January 2019 05:20:03', '0', '2019-01-24 23:50:03', '2019-01-24 23:50:03'),
(35, '1548394137.Chrysanthem.jpg', '', '15', 'public/documents/8/testing/Chrysanthem.jpg', '0', '8', '0', '1548394137', '0', '2019-01-24 23:58:57', '2019-01-24 23:58:57'),
(40, '', '1548653219.jikjkj-copy-copy', '19', 'public/documents/7/uiuiui/jikjkj-copy-copy', '1', '7', '0', '28 January 2019 05:26:59', '0', '2019-01-27 23:56:59', '2019-01-27 23:56:59'),
(41, '', '1548653225.jikjkj-copy', '19', 'public/documents/7/uiuiui/jikjkj-copy', '1', '7', '0', '28 January 2019 05:27:05', '0', '2019-01-27 23:57:06', '2019-01-27 23:57:06'),
(42, '', '1548653234.jikjkj', '19', 'public/documents/7/uiuiui/jikjkj', '1', '7', '0', '28 January 2019 05:27:14', '0', '2019-01-27 23:57:15', '2019-01-27 23:57:15'),
(43, '1548670199.Jellyfish (1).jpg', '', '22', 'public/documents/7/test1/Jellyfish (1).jpg', '0', '7', '0', '1548670199', '0', '2019-01-28 04:39:59', '2019-01-28 04:39:59'),
(44, '', '1548671031.8uy7u87', '22', 'public/documents/7/test1/8uy7u87', '1', '7', '0', '28 January 2019 10:23:51', '0', '2019-01-28 04:53:51', '2019-01-28 04:53:51'),
(45, '', '1548671058.hey_check in folder', '22', 'public/documents/7/test1/hey_check in folder', '1', '7', '0', '28 January 2019 10:24:18', '0', '2019-01-28 04:54:18', '2019-01-28 04:54:18'),
(46, '1555401084.Koala.jpg', '', '38', 'public/documents/1/re/Koala.jpg', '0', '1', '0', '1555401084', '0', '2019-04-16 02:21:24', '2019-04-16 02:21:24'),
(47, '1556268670.(3).jpg', '', '40', 'public/documents/13/dataroom/(3).jpg', '0', '13', '0', '1556268670', '0', '2019-04-26 03:21:10', '2019-04-26 03:21:10'),
(48, '1556276359.Screenshot from 2018-12-27 15-45-44.png', '', '40', 'public/documents/13/dataroom/Screenshot from 2018-12-27 15-45-44.png', '0', '13', '0', '1556276359', '0', '2019-04-26 05:29:19', '2019-04-26 05:29:19'),
(49, '1556277561.Screenshot from 2019-04-16 11-05-31.png', '', '40', 'public/documents/13/dataroom/Screenshot from 2019-04-16 11-05-31.png', '0', '13', '0', '1556277561', '0', '2019-04-26 05:49:21', '2019-04-26 05:49:21'),
(50, '1556277855.6 25367832364_Current Permissions (3) (1).xlsx', '', '39', 'public/documents/1/test/6 25367832364_Current Permissions (3) (1).xlsx', '0', '1', '0', '1556277855', '0', '2019-04-26 05:54:15', '2019-04-26 05:54:15'),
(51, '1556514864.5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (8).jpeg', '', '41', 'public/documents/13/test33/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (8).jpeg', '0', '13', '0', '1556514864', '0', '2019-04-28 23:44:24', '2019-04-28 23:44:24'),
(52, '1556514901.5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1).jpeg', '', '41', 'public/documents/13/test33/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1).jpeg', '0', '13', '0', '1556514901', '0', '2019-04-28 23:45:01', '2019-04-28 23:45:01'),
(53, '1556531718.Screenshot from 2018-12-27 15-45-44.png', '', '47', 'public/documents/13/testtest/Screenshot from 2018-12-27 15-45-44.png', '0', '13', '0', '1556531718', '0', '2019-04-29 04:25:18', '2019-04-29 04:25:18');

-- --------------------------------------------------------

--
-- Table structure for table `device_detect`
--

CREATE TABLE `device_detect` (
  `id` int(225) NOT NULL,
  `share_documents_id` int(225) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `operator` varchar(255) NOT NULL,
  `device` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip_address` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `project_id` int(255) NOT NULL,
  `document_id` int(255) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `device_detect`
--

INSERT INTO `device_detect` (`id`, `share_documents_id`, `user_agent`, `browser`, `operator`, `device`, `time`, `ip_address`, `location`, `latitude`, `longitude`, `project_id`, `document_id`, `created_at`, `updated_at`) VALUES
(30, 161, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'Chrome 73.0.3683', 'Windows 7', 'desktop computer Unknown model:', '2019-04-17 07:45:32', '::1', 'country: region: city:', '', '', 39, 847, NULL, '2019-04-17 07:45:32.000000'),
(31, 164, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'Chrome 73.0.3683', 'Windows 7', 'desktop computer Unknown model:', '2019-04-17 07:45:48', '::1', 'country: region: city:', '', '', 40, 849, NULL, '2019-04-17 07:45:48.000000'),
(32, 162, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'Chrome 73.0.3683', 'Windows 7', 'desktop computer Unknown model:', '2019-04-18 03:39:13', '::1', 'country: region: city:', '', '', 39, 847, NULL, NULL),
(33, 163, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36', 'Chrome 73.0.3683', 'Windows 7', 'desktop computer Unknown model:', '2019-04-18 23:24:37', '::1', 'country: region: city:', '', '', 39, 847, NULL, NULL),
(34, 165, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'Chrome 74.0.3729', 'Windows 7', 'desktop computer Unknown model:', '2019-04-26 03:29:15', '::1', 'country: region: city:', '', '', 39, 846, NULL, '2019-04-26 03:29:15.000000'),
(35, 168, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'Chrome 74.0.3729', 'Windows 7', 'desktop computer Unknown model:', '2019-04-26 03:29:13', '::1', 'country: region: city:', '', '', 39, 852, NULL, '2019-04-26 03:29:13.000000'),
(36, 167, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'Chrome 74.0.3729', 'Windows 7', 'desktop computer Unknown model:', '2019-04-26 03:29:09', '::1', 'country: region: city:', '', '', 39, 851, NULL, '2019-04-26 03:29:09.000000'),
(37, 169, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'Chrome 74.0.3729', 'Windows 7', 'desktop computer Unknown model:', '2019-04-26 03:22:36', '::1', 'country: region: city:', '', '', 39, 853, NULL, '2019-04-26 03:22:36.000000'),
(38, 166, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.108 Safari/537.36', 'Chrome 74.0.3729', 'Windows 7', 'desktop computer Unknown model:', '2019-04-26 03:22:25', '::1', 'country: region: city:', '', '', 39, 850, NULL, '2019-04-26 03:22:25.000000'),
(39, 172, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Chrome 71.0.3578', 'GNU/Linux', 'desktop computer Unknown model:', '2019-04-29 04:26:51', '112.196.51.236', 'country: region:Punjab city:Ludhiana', '30.8968', '75.8485', 46, 9, NULL, '2019-04-29 04:26:51.000000'),
(40, 173, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Chrome 71.0.3578', 'GNU/Linux', 'desktop computer Unknown model:', '2019-04-29 04:26:48', '112.196.51.236', 'country: region:Punjab city:Ludhiana', '30.8968', '75.8485', 47, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `doc_index` bigint(191) NOT NULL,
  `project_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `directory_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restored_at` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restored_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `doc_index`, `project_id`, `document_name`, `path`, `directory_url`, `document_status`, `type`, `deleted_at`, `restored_at`, `uploaded_by`, `updated_by`, `deleted_by`, `restored_by`, `created_at`, `updated_at`) VALUES
(8, 0, '46', 'test', 'public/documents/1/test', '', '', '', '', '', '1', '1', '', '', '2019-04-28 23:58:47', '2019-04-28 23:58:47'),
(9, 1, '46', '5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (8).jpeg', 'public/documents/1/test/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (8).jpeg', 'public/documents/1/test', '0', 'jpeg', '0', '0', '1', '1', '0', '0', '2019-04-29 00:01:15', '2019-04-29 00:01:15'),
(10, 0, '47', 'testtest', 'public/documents/13/testtest', '', '', '', '', '', '13', '13', '', '', '2019-04-29 04:24:40', '2019-04-29 04:24:40'),
(12, 1, '47', 'download.jpeg', 'public/documents/13/testtest/download.jpeg', 'public/documents/13/testtest', '0', 'jpeg', '0', '0', '13', '13', '0', '0', '2019-04-29 04:26:08', '2019-04-29 04:26:08'),
(14, 0, '49', 'shared_material', 'public/documents/14/shared_material', '', '', '', '', '', '14', '14', '', '', '2019-04-30 04:02:34', '2019-04-30 04:02:34'),
(15, 0, '50', 'drgdrgr', 'public/documents/1/drgdrgr', '', '', '', '', '', '1', '1', '', '', '2019-04-30 04:36:03', '2019-04-30 04:36:03'),
(16, 0, '51', 'drgdrgr', 'public/documents/1/drgdrgr', '', '', '', '', '', '1', '1', '', '', '2019-04-30 04:44:00', '2019-04-30 04:44:00'),
(17, 0, '52', 'danilo', 'public/documents/14/danilo', '', '', '', '', '', '14', '14', '', '', '2019-04-30 04:50:23', '2019-04-30 04:50:23'),
(20, 0, '55', 'cdcp_shared_material', 'public/documents/14/cdcp_shared_material', '', '', '', '', '', '14', '14', '', '', '2019-04-30 05:40:23', '2019-04-30 05:40:23'),
(22, 0, '77', 'cdcp_shared_material2', 'public/documents/14/cdcp_shared_material2', '', '', '', '', '', '14', '14', '', '', '2019-04-30 06:01:23', '2019-04-30 06:01:23'),
(34, 0, '89', 'rahu_lrahul', 'public/documents/13/rahu_lrahul', '', '', '', '', '', '13', '13', '', '', '2019-05-01 00:19:29', '2019-05-01 00:19:29'),
(35, 0, '90', 'dsd_dsds_ds_ds', 'public/documents/13/dsd_dsds_ds_ds', '', '', '', '', '', '13', '13', '', '', '2019-05-01 00:19:52', '2019-05-01 00:19:52'),
(36, 0, '91', 'dsddssds_sds', 'public/documents/13/dsddssds_sds', '', '', '', '', '', '13', '13', '', '', '2019-05-01 00:42:56', '2019-05-01 00:42:56'),
(37, 0, '92', 'dsds_dsdsd_sds', 'public/documents/1/dsds_dsdsd_sds', '', '', '', '', '', '1', '1', '', '', '2019-05-01 05:05:31', '2019-05-01 05:05:31'),
(38, 0, '93', 'divesh_divesh_f', 'public/documents/1/divesh_divesh_f', '', '', '', '', '', '1', '1', '', '', '2019-05-01 05:05:54', '2019-05-01 05:05:54'),
(39, 0, '94', 'sdsdsdd_dssdsd', 'public/documents/1/sdsdsdd_dssdsd', '', '', '', '', '', '1', '1', '', '', '2019-05-01 07:21:35', '2019-05-01 07:21:35'),
(40, 0, '95', 'sdsd_dsds_dsd', 'public/documents/1/sdsd_dsds_dsd', '', '', '', '', '', '1', '1', '', '', '2019-05-01 07:21:51', '2019-05-01 07:21:51'),
(41, 0, '96', 'dsds_sdsd_dsds', 'public/documents/1/dsds_sdsd_dsds', '', '', '', '', '', '1', '1', '', '', '2019-05-01 07:24:27', '2019-05-01 07:24:27'),
(42, 0, '92', 'xvxc', 'public/documents/6/xvxc', '', '', '', '', '', '6', '6', '', '', '2020-03-05 06:33:29', '2020-03-05 06:33:29'),
(43, 1, '92', '1568264632733Chrysanthemum.jpg', 'public/documents/6/xvxc/1568264632733Chrysanthemum.jpg', 'public/documents/6/xvxc', '0', 'jpg', '0', '0', '6', '6', '0', '0', '2020-03-05 06:33:45', '2020-03-05 06:33:45');

-- --------------------------------------------------------

--
-- Table structure for table `document_permission`
--

CREATE TABLE `document_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `document_permission`
--

INSERT INTO `document_permission` (`id`, `document_id`, `project_id`, `group_id`, `permission_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(879, '2', '1', '2', '1', '1', '1', '2019-01-02 08:49:20', '2019-01-02 08:49:20'),
(880, '2', '1', '5', '1', '1', '1', '2019-01-02 08:49:20', '2019-01-02 08:49:20'),
(881, '2', '1', '18', '1', '1', '1', '2019-01-02 08:49:20', '2019-01-02 08:49:20'),
(882, '3', '1', '2', '1', '1', '1', '2019-01-02 08:49:20', '2019-01-02 08:49:20'),
(883, '3', '1', '5', '1', '1', '1', '2019-01-02 08:49:20', '2019-01-02 08:49:20'),
(884, '3', '1', '18', '1', '1', '1', '2019-01-02 08:49:20', '2019-01-02 08:49:20'),
(885, '4', '1', '2', '1', '1', '1', '2019-01-02 08:49:20', '2019-01-02 08:49:20'),
(886, '4', '1', '5', '1', '1', '1', '2019-01-02 08:49:20', '2019-01-02 08:49:20'),
(887, '4', '1', '18', '1', '1', '1', '2019-01-02 08:49:20', '2019-01-02 08:49:20'),
(888, '5', '1', '2', '1', '1', '1', '2019-01-02 08:49:20', '2019-01-02 08:49:20'),
(889, '5', '1', '5', '1', '1', '1', '2019-01-02 08:49:20', '2019-01-02 08:49:20'),
(890, '5', '1', '18', '1', '1', '1', '2019-01-02 08:49:20', '2019-01-02 08:49:20'),
(891, '6', '1', '2', '1', '1', '1', '2019-01-02 08:49:20', '2019-01-02 08:49:20'),
(892, '6', '1', '5', '1', '1', '1', '2019-01-02 08:49:20', '2019-01-02 08:49:20'),
(893, '6', '1', '18', '1', '1', '1', '2019-01-02 08:49:20', '2019-01-02 08:49:20'),
(894, '7', '1', '2', '1', '1', '1', '2019-01-02 08:49:20', '2019-01-02 08:49:20'),
(895, '7', '1', '5', '1', '1', '1', '2019-01-02 08:49:21', '2019-01-02 08:49:21'),
(896, '7', '1', '18', '1', '1', '1', '2019-01-02 08:49:21', '2019-01-02 08:49:21'),
(897, '8', '1', '2', '1', '1', '1', '2019-01-02 08:49:21', '2019-01-02 08:49:21'),
(898, '8', '1', '5', '1', '1', '1', '2019-01-02 08:49:21', '2019-01-02 08:49:21'),
(899, '8', '1', '18', '1', '1', '1', '2019-01-02 08:49:21', '2019-01-02 08:49:21'),
(900, '9', '1', '2', '1', '1', '1', '2019-01-02 08:49:21', '2019-01-02 08:49:21'),
(901, '9', '1', '5', '1', '1', '1', '2019-01-02 08:49:21', '2019-01-02 08:49:21'),
(902, '9', '1', '18', '1', '1', '1', '2019-01-02 08:49:21', '2019-01-02 08:49:21'),
(903, '10', '1', '2', '1', '1', '1', '2019-01-02 08:49:21', '2019-01-02 08:49:21'),
(904, '10', '1', '5', '1', '1', '1', '2019-01-02 08:49:21', '2019-01-02 08:49:21'),
(905, '10', '1', '18', '1', '1', '1', '2019-01-02 08:49:21', '2019-01-02 08:49:21'),
(906, '11', '1', '2', '1', '1', '1', '2019-01-02 08:49:21', '2019-01-02 08:49:21'),
(907, '11', '1', '5', '1', '1', '1', '2019-01-02 08:49:21', '2019-01-02 08:49:21'),
(908, '11', '1', '18', '1', '1', '1', '2019-01-02 08:49:21', '2019-01-02 08:49:21'),
(909, '12', '1', '2', '1', '1', '1', '2019-01-02 08:49:21', '2019-01-02 08:49:21'),
(910, '12', '1', '5', '1', '1', '1', '2019-01-02 08:49:21', '2019-01-02 08:49:21'),
(911, '12', '1', '18', '1', '1', '1', '2019-01-02 08:49:21', '2019-01-02 08:49:21'),
(912, '13', '1', '2', '1', '1', '1', '2019-01-02 08:49:21', '2019-01-02 08:49:21'),
(913, '13', '1', '5', '1', '1', '1', '2019-01-02 08:49:21', '2019-01-02 08:49:21'),
(914, '13', '1', '18', '1', '1', '1', '2019-01-02 08:49:21', '2019-01-02 08:49:21'),
(918, '15', '1', '2', '1', '1', '1', '2019-01-02 08:49:21', '2019-01-02 08:49:21'),
(919, '15', '1', '5', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(920, '15', '1', '18', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(921, '16', '1', '2', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(922, '16', '1', '5', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(923, '16', '1', '18', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(924, '17', '1', '2', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(925, '17', '1', '5', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(926, '17', '1', '18', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(927, '18', '1', '2', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(928, '18', '1', '5', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(929, '18', '1', '18', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(930, '19', '1', '2', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(931, '19', '1', '5', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(932, '19', '1', '18', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(933, '20', '1', '2', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(934, '20', '1', '5', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(935, '20', '1', '18', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(936, '21', '1', '2', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(937, '21', '1', '5', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(938, '21', '1', '18', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(939, '22', '1', '2', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(940, '22', '1', '5', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(941, '22', '1', '18', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(942, '23', '1', '2', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(943, '23', '1', '5', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(944, '23', '1', '18', '1', '1', '1', '2019-01-02 08:49:22', '2019-01-02 08:49:22'),
(957, '1', '1', '2', '4', '1', '1', '2019-01-04 07:08:47', '2019-01-04 07:08:47'),
(958, '1', '1', '5', '4', '1', '1', '2019-01-04 07:08:47', '2019-01-04 07:08:47'),
(959, '1', '1', '18', '4', '1', '1', '2019-01-04 07:08:47', '2019-01-04 07:08:47'),
(960, '14', '1', '2', '4', '1', '1', '2019-01-04 07:08:47', '2019-01-04 07:08:47'),
(961, '14', '1', '5', '4', '1', '1', '2019-01-04 07:08:47', '2019-01-04 07:08:47'),
(962, '14', '1', '18', '4', '1', '1', '2019-01-04 07:08:47', '2019-01-04 07:08:47'),
(963, '35', '1', '2', '4', '1', '1', '2019-01-04 07:08:47', '2019-01-04 07:08:47'),
(964, '35', '1', '5', '4', '1', '1', '2019-01-04 07:08:48', '2019-01-04 07:08:48'),
(965, '35', '1', '18', '4', '1', '1', '2019-01-04 07:08:48', '2019-01-04 07:08:48'),
(966, '36', '1', '2', '4', '1', '1', '2019-01-04 07:08:48', '2019-01-04 07:08:48'),
(967, '36', '1', '5', '4', '1', '1', '2019-01-04 07:08:48', '2019-01-04 07:08:48'),
(968, '36', '1', '18', '4', '1', '1', '2019-01-04 07:08:48', '2019-01-04 07:08:48'),
(969, '37', '1', '2', '4', '1', '1', '2019-01-04 07:08:48', '2019-01-04 07:08:48'),
(970, '37', '1', '5', '4', '1', '1', '2019-01-04 07:08:48', '2019-01-04 07:08:48'),
(971, '37', '1', '18', '4', '1', '1', '2019-01-04 07:08:48', '2019-01-04 07:08:48'),
(972, '38', '1', '2', '4', '1', '1', '2019-01-04 07:08:48', '2019-01-04 07:08:48'),
(973, '38', '1', '5', '4', '1', '1', '2019-01-04 07:08:48', '2019-01-04 07:08:48'),
(974, '38', '1', '18', '4', '1', '1', '2019-01-04 07:08:48', '2019-01-04 07:08:48'),
(975, '39', '1', '2', '4', '1', '1', '2019-01-04 07:09:15', '2019-01-04 07:09:15'),
(976, '39', '1', '5', '4', '1', '1', '2019-01-04 07:09:15', '2019-01-04 07:09:15'),
(977, '39', '1', '18', '4', '1', '1', '2019-01-04 07:09:16', '2019-01-04 07:09:16'),
(978, '40', '1', '2', '4', '1', '1', '2019-01-04 07:09:24', '2019-01-04 07:09:24'),
(979, '40', '1', '5', '4', '1', '1', '2019-01-04 07:09:24', '2019-01-04 07:09:24'),
(980, '40', '1', '18', '4', '1', '1', '2019-01-04 07:09:24', '2019-01-04 07:09:24'),
(981, '41', '1', '2', '4', '1', '1', '2019-01-04 07:09:24', '2019-01-04 07:09:24'),
(982, '41', '1', '5', '4', '1', '1', '2019-01-04 07:09:24', '2019-01-04 07:09:24'),
(983, '41', '1', '18', '4', '1', '1', '2019-01-04 07:09:24', '2019-01-04 07:09:24'),
(984, '43', '1', '2', '4', '1', '1', '2019-01-04 09:32:33', '2019-01-04 09:32:33'),
(985, '43', '1', '5', '4', '1', '1', '2019-01-04 09:32:33', '2019-01-04 09:32:33'),
(986, '43', '1', '18', '4', '1', '1', '2019-01-04 09:32:34', '2019-01-04 09:32:34'),
(987, '44', '1', '2', '4', '1', '1', '2019-01-04 09:32:34', '2019-01-04 09:32:34'),
(988, '44', '1', '5', '4', '1', '1', '2019-01-04 09:32:34', '2019-01-04 09:32:34'),
(989, '44', '1', '18', '4', '1', '1', '2019-01-04 09:32:34', '2019-01-04 09:32:34'),
(990, '45', '1', '2', '4', '1', '1', '2019-01-04 09:32:34', '2019-01-04 09:32:34'),
(991, '45', '1', '5', '4', '1', '1', '2019-01-04 09:32:34', '2019-01-04 09:32:34'),
(992, '45', '1', '18', '4', '1', '1', '2019-01-04 09:32:34', '2019-01-04 09:32:34'),
(993, '46', '1', '2', '4', '1', '1', '2019-01-04 09:32:35', '2019-01-04 09:32:35'),
(994, '46', '1', '5', '4', '1', '1', '2019-01-04 09:32:35', '2019-01-04 09:32:35'),
(995, '46', '1', '18', '4', '1', '1', '2019-01-04 09:32:35', '2019-01-04 09:32:35'),
(996, '47', '1', '2', '4', '1', '1', '2019-01-04 09:32:35', '2019-01-04 09:32:35'),
(997, '47', '1', '5', '4', '1', '1', '2019-01-04 09:32:36', '2019-01-04 09:32:36'),
(998, '47', '1', '18', '4', '1', '1', '2019-01-04 09:32:36', '2019-01-04 09:32:36'),
(999, '48', '1', '2', '4', '1', '1', '2019-01-04 09:32:36', '2019-01-04 09:32:36'),
(1000, '48', '1', '5', '4', '1', '1', '2019-01-04 09:32:36', '2019-01-04 09:32:36'),
(1001, '48', '1', '18', '4', '1', '1', '2019-01-04 09:32:36', '2019-01-04 09:32:36'),
(1002, '49', '1', '2', '4', '1', '1', '2019-01-04 09:32:37', '2019-01-04 09:32:37'),
(1003, '49', '1', '5', '4', '1', '1', '2019-01-04 09:32:37', '2019-01-04 09:32:37'),
(1004, '49', '1', '18', '4', '1', '1', '2019-01-04 09:32:37', '2019-01-04 09:32:37'),
(1005, '50', '1', '2', '4', '1', '1', '2019-01-04 09:32:37', '2019-01-04 09:32:37'),
(1006, '50', '1', '5', '4', '1', '1', '2019-01-04 09:32:37', '2019-01-04 09:32:37'),
(1007, '50', '1', '18', '4', '1', '1', '2019-01-04 09:32:37', '2019-01-04 09:32:37'),
(1008, '51', '1', '2', '4', '1', '1', '2019-01-04 09:32:37', '2019-01-04 09:32:37'),
(1009, '51', '1', '5', '4', '1', '1', '2019-01-04 09:32:37', '2019-01-04 09:32:37'),
(1010, '51', '1', '18', '4', '1', '1', '2019-01-04 09:32:38', '2019-01-04 09:32:38'),
(1011, '52', '1', '2', '4', '1', '1', '2019-01-04 09:32:38', '2019-01-04 09:32:38'),
(1012, '52', '1', '5', '4', '1', '1', '2019-01-04 09:32:38', '2019-01-04 09:32:38'),
(1013, '52', '1', '18', '4', '1', '1', '2019-01-04 09:32:38', '2019-01-04 09:32:38'),
(1014, '53', '1', '2', '4', '1', '1', '2019-01-04 09:32:38', '2019-01-04 09:32:38'),
(1015, '53', '1', '5', '4', '1', '1', '2019-01-04 09:32:38', '2019-01-04 09:32:38'),
(1016, '53', '1', '18', '4', '1', '1', '2019-01-04 09:32:38', '2019-01-04 09:32:38'),
(1017, '54', '1', '2', '4', '1', '1', '2019-01-04 09:32:39', '2019-01-04 09:32:39'),
(1018, '54', '1', '5', '4', '1', '1', '2019-01-04 09:32:39', '2019-01-04 09:32:39'),
(1019, '54', '1', '18', '4', '1', '1', '2019-01-04 09:32:39', '2019-01-04 09:32:39'),
(1020, '55', '1', '2', '4', '1', '1', '2019-01-04 09:32:39', '2019-01-04 09:32:39'),
(1021, '55', '1', '5', '4', '1', '1', '2019-01-04 09:32:39', '2019-01-04 09:32:39'),
(1022, '55', '1', '18', '4', '1', '1', '2019-01-04 09:32:39', '2019-01-04 09:32:39'),
(1023, '56', '1', '2', '4', '1', '1', '2019-01-04 09:32:40', '2019-01-04 09:32:40'),
(1024, '56', '1', '5', '4', '1', '1', '2019-01-04 09:32:40', '2019-01-04 09:32:40'),
(1025, '56', '1', '18', '4', '1', '1', '2019-01-04 09:32:40', '2019-01-04 09:32:40'),
(1026, '57', '1', '2', '4', '1', '1', '2019-01-04 09:32:40', '2019-01-04 09:32:40'),
(1027, '57', '1', '5', '4', '1', '1', '2019-01-04 09:32:40', '2019-01-04 09:32:40'),
(1028, '57', '1', '18', '4', '1', '1', '2019-01-04 09:32:40', '2019-01-04 09:32:40'),
(1029, '58', '1', '2', '4', '1', '1', '2019-01-04 09:32:41', '2019-01-04 09:32:41'),
(1030, '58', '1', '5', '4', '1', '1', '2019-01-04 09:32:41', '2019-01-04 09:32:41'),
(1031, '58', '1', '18', '4', '1', '1', '2019-01-04 09:32:41', '2019-01-04 09:32:41'),
(1032, '59', '1', '2', '4', '1', '1', '2019-01-04 09:32:41', '2019-01-04 09:32:41'),
(1033, '59', '1', '5', '4', '1', '1', '2019-01-04 09:32:41', '2019-01-04 09:32:41'),
(1034, '59', '1', '18', '4', '1', '1', '2019-01-04 09:32:42', '2019-01-04 09:32:42'),
(1035, '60', '1', '2', '4', '1', '1', '2019-01-06 23:27:34', '2019-01-06 23:27:34'),
(1036, '60', '1', '5', '4', '1', '1', '2019-01-06 23:27:34', '2019-01-06 23:27:34'),
(1037, '60', '1', '18', '4', '1', '1', '2019-01-06 23:27:34', '2019-01-06 23:27:34'),
(1038, '61', '1', '2', '4', '1', '1', '2019-01-06 23:27:43', '2019-01-06 23:27:43'),
(1039, '61', '1', '5', '4', '1', '1', '2019-01-06 23:27:43', '2019-01-06 23:27:43'),
(1040, '61', '1', '18', '4', '1', '1', '2019-01-06 23:27:43', '2019-01-06 23:27:43'),
(1041, '63', '1', '2', '4', '1', '1', '2019-01-06 23:28:26', '2019-01-06 23:28:26'),
(1042, '63', '1', '5', '4', '1', '1', '2019-01-06 23:28:26', '2019-01-06 23:28:26'),
(1043, '63', '1', '18', '4', '1', '1', '2019-01-06 23:28:26', '2019-01-06 23:28:26'),
(1044, '65', '1', '2', '4', '1', '1', '2019-01-06 23:28:39', '2019-01-06 23:28:39'),
(1045, '65', '1', '5', '4', '1', '1', '2019-01-06 23:28:39', '2019-01-06 23:28:39'),
(1046, '65', '1', '18', '4', '1', '1', '2019-01-06 23:28:39', '2019-01-06 23:28:39'),
(1047, '66', '1', '2', '4', '1', '1', '2019-01-06 23:28:46', '2019-01-06 23:28:46'),
(1048, '66', '1', '5', '4', '1', '1', '2019-01-06 23:28:46', '2019-01-06 23:28:46'),
(1049, '66', '1', '18', '4', '1', '1', '2019-01-06 23:28:46', '2019-01-06 23:28:46'),
(1050, '68', '1', '2', '4', '1', '1', '2019-01-06 23:29:06', '2019-01-06 23:29:06'),
(1051, '68', '1', '5', '4', '1', '1', '2019-01-06 23:29:06', '2019-01-06 23:29:06'),
(1052, '68', '1', '18', '4', '1', '1', '2019-01-06 23:29:06', '2019-01-06 23:29:06'),
(1053, '70', '1', '2', '4', '1', '1', '2019-01-10 00:51:13', '2019-01-10 00:51:13'),
(1054, '70', '1', '5', '4', '1', '1', '2019-01-10 00:51:13', '2019-01-10 00:51:13'),
(1055, '70', '1', '18', '4', '1', '1', '2019-01-10 00:51:13', '2019-01-10 00:51:13'),
(1056, '71', '1', '2', '4', '1', '1', '2019-01-10 00:51:30', '2019-01-10 00:51:30'),
(1057, '71', '1', '5', '4', '1', '1', '2019-01-10 00:51:30', '2019-01-10 00:51:30'),
(1058, '71', '1', '18', '4', '1', '1', '2019-01-10 00:51:30', '2019-01-10 00:51:30'),
(1059, '72', '1', '2', '4', '1', '1', '2019-01-10 00:51:50', '2019-01-10 00:51:50'),
(1060, '72', '1', '5', '4', '1', '1', '2019-01-10 00:51:50', '2019-01-10 00:51:50'),
(1061, '72', '1', '18', '4', '1', '1', '2019-01-10 00:51:50', '2019-01-10 00:51:50'),
(1062, '28', '3', '21', '3', '3', '3', '2019-01-14 09:43:15', '2019-01-14 09:43:15'),
(1063, '73', '3', '21', '3', '3', '3', '2019-01-14 09:43:15', '2019-01-14 09:43:15'),
(1064, '74', '3', '21', '3', '3', '3', '2019-01-14 09:43:15', '2019-01-14 09:43:15'),
(1065, '75', '3', '21', '3', '3', '3', '2019-01-14 09:43:15', '2019-01-14 09:43:15'),
(1066, '76', '3', '21', '3', '3', '3', '2019-01-14 09:43:15', '2019-01-14 09:43:15'),
(1067, '77', '3', '21', '3', '3', '3', '2019-01-14 09:43:15', '2019-01-14 09:43:15'),
(1068, '78', '3', '21', '3', '3', '3', '2019-01-14 09:43:15', '2019-01-14 09:43:15'),
(1069, '79', '3', '21', '3', '3', '3', '2019-01-14 09:43:16', '2019-01-14 09:43:16'),
(1070, '80', '3', '21', '3', '3', '3', '2019-01-14 09:43:16', '2019-01-14 09:43:16'),
(1071, '81', '3', '21', '3', '3', '3', '2019-01-14 09:43:16', '2019-01-14 09:43:16'),
(1072, '82', '3', '21', '3', '3', '3', '2019-01-14 09:43:16', '2019-01-14 09:43:16'),
(1073, '83', '3', '21', '3', '3', '3', '2019-01-14 09:43:16', '2019-01-14 09:43:16'),
(1074, '84', '3', '21', '3', '3', '3', '2019-01-14 09:43:16', '2019-01-14 09:43:16'),
(1075, '85', '3', '21', '3', '3', '3', '2019-01-14 09:43:16', '2019-01-14 09:43:16'),
(1076, '86', '3', '21', '3', '3', '3', '2019-01-14 09:43:16', '2019-01-14 09:43:16'),
(1077, '87', '3', '21', '3', '3', '3', '2019-01-14 09:43:16', '2019-01-14 09:43:16'),
(1078, '88', '3', '21', '3', '3', '3', '2019-01-14 09:43:16', '2019-01-14 09:43:16'),
(1079, '89', '3', '21', '3', '3', '3', '2019-01-14 09:43:16', '2019-01-14 09:43:16'),
(1080, '90', '3', '21', '3', '3', '3', '2019-01-14 09:43:16', '2019-01-14 09:43:16'),
(1081, '91', '3', '21', '3', '3', '3', '2019-01-14 09:43:17', '2019-01-14 09:43:17'),
(1082, '92', '3', '21', '3', '3', '3', '2019-01-14 09:43:17', '2019-01-14 09:43:17'),
(1083, '93', '1', '2', '4', '3', '3', '2019-01-14 12:35:33', '2019-01-14 12:35:33'),
(1084, '93', '1', '5', '4', '3', '3', '2019-01-14 12:35:34', '2019-01-14 12:35:34'),
(1085, '93', '1', '18', '4', '3', '3', '2019-01-14 12:35:34', '2019-01-14 12:35:34'),
(1086, '94', '1', '2', '4', '1', '1', '2019-01-15 00:37:57', '2019-01-15 00:37:57'),
(1087, '94', '1', '5', '4', '1', '1', '2019-01-15 00:37:57', '2019-01-15 00:37:57'),
(1088, '94', '1', '18', '4', '1', '1', '2019-01-15 00:37:57', '2019-01-15 00:37:57'),
(1089, '95', '1', '2', '4', '1', '1', '2019-01-15 12:22:34', '2019-01-15 12:22:34'),
(1090, '95', '1', '5', '4', '1', '1', '2019-01-15 12:22:34', '2019-01-15 12:22:34'),
(1091, '95', '1', '18', '4', '1', '1', '2019-01-15 12:22:34', '2019-01-15 12:22:34'),
(1092, '98', '1', '2', '4', '1', '1', '2019-01-15 23:21:15', '2019-01-15 23:21:15'),
(1093, '98', '1', '5', '4', '1', '1', '2019-01-15 23:21:16', '2019-01-15 23:21:16'),
(1094, '98', '1', '18', '4', '1', '1', '2019-01-15 23:21:16', '2019-01-15 23:21:16'),
(1095, '99', '1', '2', '4', '1', '1', '2019-01-15 23:21:16', '2019-01-15 23:21:16'),
(1096, '99', '1', '5', '4', '1', '1', '2019-01-15 23:21:16', '2019-01-15 23:21:16'),
(1097, '99', '1', '18', '4', '1', '1', '2019-01-15 23:21:16', '2019-01-15 23:21:16'),
(1098, '100', '1', '2', '4', '1', '1', '2019-01-15 23:21:16', '2019-01-15 23:21:16'),
(1099, '100', '1', '5', '4', '1', '1', '2019-01-15 23:21:16', '2019-01-15 23:21:16'),
(1100, '100', '1', '18', '4', '1', '1', '2019-01-15 23:21:16', '2019-01-15 23:21:16'),
(1101, '101', '1', '2', '4', '1', '1', '2019-01-15 23:21:17', '2019-01-15 23:21:17'),
(1102, '101', '1', '5', '4', '1', '1', '2019-01-15 23:21:17', '2019-01-15 23:21:17'),
(1103, '101', '1', '18', '4', '1', '1', '2019-01-15 23:21:17', '2019-01-15 23:21:17'),
(1104, '102', '1', '2', '4', '1', '1', '2019-01-15 23:21:17', '2019-01-15 23:21:17'),
(1105, '102', '1', '5', '4', '1', '1', '2019-01-15 23:21:17', '2019-01-15 23:21:17'),
(1106, '102', '1', '18', '4', '1', '1', '2019-01-15 23:21:17', '2019-01-15 23:21:17'),
(1107, '103', '1', '2', '4', '1', '1', '2019-01-15 23:21:18', '2019-01-15 23:21:18'),
(1108, '103', '1', '5', '4', '1', '1', '2019-01-15 23:21:18', '2019-01-15 23:21:18'),
(1109, '103', '1', '18', '4', '1', '1', '2019-01-15 23:21:18', '2019-01-15 23:21:18'),
(1110, '104', '1', '2', '4', '1', '1', '2019-01-15 23:21:18', '2019-01-15 23:21:18'),
(1111, '104', '1', '5', '4', '1', '1', '2019-01-15 23:21:18', '2019-01-15 23:21:18'),
(1112, '104', '1', '18', '4', '1', '1', '2019-01-15 23:21:18', '2019-01-15 23:21:18'),
(1113, '105', '1', '2', '4', '1', '1', '2019-01-15 23:21:54', '2019-01-15 23:21:54'),
(1114, '105', '1', '5', '4', '1', '1', '2019-01-15 23:21:54', '2019-01-15 23:21:54'),
(1115, '105', '1', '18', '4', '1', '1', '2019-01-15 23:21:54', '2019-01-15 23:21:54'),
(1116, '106', '1', '2', '4', '1', '1', '2019-01-15 23:22:00', '2019-01-15 23:22:00'),
(1117, '106', '1', '5', '4', '1', '1', '2019-01-15 23:22:00', '2019-01-15 23:22:00'),
(1118, '106', '1', '18', '4', '1', '1', '2019-01-15 23:22:00', '2019-01-15 23:22:00'),
(1119, '107', '1', '2', '4', '1', '1', '2019-01-16 04:40:49', '2019-01-16 04:40:49'),
(1120, '107', '1', '5', '4', '1', '1', '2019-01-16 04:40:49', '2019-01-16 04:40:49'),
(1121, '107', '1', '18', '4', '1', '1', '2019-01-16 04:40:49', '2019-01-16 04:40:49'),
(1132, '110', '6', '23', '7', '1', '1', '2019-01-18 04:32:39', '2019-01-18 04:32:39'),
(1157, '139', '13', '32', '7', '7', '7', '2019-01-23 07:11:00', '2019-01-23 07:11:00'),
(1158, '140', '13', '32', '7', '7', '7', '2019-01-23 07:11:00', '2019-01-23 07:11:00'),
(1159, '141', '13', '32', '7', '7', '7', '2019-01-23 07:11:00', '2019-01-23 07:11:00'),
(1160, '142', '13', '32', '7', '7', '7', '2019-01-23 07:11:00', '2019-01-23 07:11:00'),
(1162, '143', '13', '32', '3', '7', '7', '2019-01-23 07:18:45', '2019-01-23 07:18:45'),
(1163, '143', '13', '33', '3', '7', '7', '2019-01-23 07:18:45', '2019-01-23 07:18:45'),
(1185, '147', '16', '36', '1', '8', '8', '2019-01-23 23:49:18', '2019-01-23 23:49:18'),
(1192, '146', '16', '36', '6', '8', '8', '2019-01-24 00:50:08', '2019-01-24 00:50:08'),
(1194, '145', '16', '36', '4', '8', '8', '2019-01-24 01:10:47', '2019-01-24 01:10:47'),
(1195, '148', '16', '36', '4', '8', '8', '2019-01-24 01:10:47', '2019-01-24 01:10:47'),
(1196, '153', '13', '32', '3', '7', '7', '2019-01-24 03:56:50', '2019-01-24 03:56:50'),
(1197, '153', '13', '33', '3', '7', '7', '2019-01-24 03:56:50', '2019-01-24 03:56:50'),
(1218, '156', '16', '36', '4', '8', '8', '2019-01-24 23:36:54', '2019-01-24 23:36:54'),
(1219, '157', '16', '36', '4', '8', '8', '2019-01-24 23:36:55', '2019-01-24 23:36:55'),
(1220, '158', '16', '36', '4', '8', '8', '2019-01-24 23:36:55', '2019-01-24 23:36:55'),
(1221, '159', '16', '36', '4', '8', '8', '2019-01-24 23:36:55', '2019-01-24 23:36:55'),
(1222, '160', '16', '36', '4', '8', '8', '2019-01-24 23:36:55', '2019-01-24 23:36:55'),
(1223, '161', '16', '36', '4', '8', '8', '2019-01-24 23:36:55', '2019-01-24 23:36:55'),
(1224, '162', '16', '36', '4', '8', '8', '2019-01-24 23:36:56', '2019-01-24 23:36:56'),
(1225, '163', '16', '36', '4', '8', '8', '2019-01-24 23:36:56', '2019-01-24 23:36:56'),
(1226, '164', '16', '36', '4', '8', '8', '2019-01-24 23:36:56', '2019-01-24 23:36:56'),
(1227, '165', '16', '36', '4', '8', '8', '2019-01-24 23:36:56', '2019-01-24 23:36:56'),
(1228, '166', '16', '36', '4', '8', '8', '2019-01-24 23:36:56', '2019-01-24 23:36:56'),
(1229, '167', '16', '36', '4', '8', '8', '2019-01-24 23:36:56', '2019-01-24 23:36:56'),
(1230, '168', '16', '36', '4', '8', '8', '2019-01-24 23:36:57', '2019-01-24 23:36:57'),
(1231, '169', '16', '36', '4', '8', '8', '2019-01-24 23:36:57', '2019-01-24 23:36:57'),
(1232, '170', '16', '36', '4', '8', '8', '2019-01-24 23:36:57', '2019-01-24 23:36:57'),
(1233, '171', '16', '36', '4', '8', '8', '2019-01-24 23:36:57', '2019-01-24 23:36:57'),
(1234, '172', '16', '36', '4', '8', '8', '2019-01-24 23:36:57', '2019-01-24 23:36:57'),
(1235, '173', '16', '36', '4', '8', '8', '2019-01-24 23:36:58', '2019-01-24 23:36:58'),
(1236, '174', '16', '36', '4', '8', '8', '2019-01-24 23:37:15', '2019-01-24 23:37:15'),
(1237, '175', '16', '36', '4', '8', '8', '2019-01-24 23:37:15', '2019-01-24 23:37:15'),
(1238, '176', '16', '36', '4', '8', '8', '2019-01-24 23:37:16', '2019-01-24 23:37:16'),
(1239, '177', '16', '36', '4', '8', '8', '2019-01-24 23:37:16', '2019-01-24 23:37:16'),
(1240, '178', '16', '36', '4', '8', '8', '2019-01-24 23:37:16', '2019-01-24 23:37:16'),
(1241, '179', '16', '36', '4', '8', '8', '2019-01-24 23:37:16', '2019-01-24 23:37:16'),
(1242, '180', '16', '36', '4', '8', '8', '2019-01-24 23:37:17', '2019-01-24 23:37:17'),
(1243, '181', '16', '36', '4', '8', '8', '2019-01-24 23:37:17', '2019-01-24 23:37:17'),
(1244, '182', '16', '36', '4', '8', '8', '2019-01-24 23:37:17', '2019-01-24 23:37:17'),
(1245, '183', '16', '36', '4', '8', '8', '2019-01-24 23:37:17', '2019-01-24 23:37:17'),
(1246, '184', '16', '36', '4', '8', '8', '2019-01-24 23:37:17', '2019-01-24 23:37:17'),
(1247, '185', '16', '36', '4', '8', '8', '2019-01-24 23:37:18', '2019-01-24 23:37:18'),
(1248, '186', '16', '36', '4', '8', '8', '2019-01-24 23:37:18', '2019-01-24 23:37:18'),
(1249, '187', '16', '36', '4', '8', '8', '2019-01-24 23:37:18', '2019-01-24 23:37:18'),
(1250, '188', '16', '36', '4', '8', '8', '2019-01-24 23:37:18', '2019-01-24 23:37:18'),
(1251, '189', '16', '36', '4', '8', '8', '2019-01-24 23:37:18', '2019-01-24 23:37:18'),
(1252, '190', '16', '36', '4', '8', '8', '2019-01-24 23:37:18', '2019-01-24 23:37:18'),
(1253, '191', '16', '36', '4', '8', '8', '2019-01-24 23:37:19', '2019-01-24 23:37:19'),
(1254, '192', '16', '36', '4', '8', '8', '2019-01-24 23:38:04', '2019-01-24 23:38:04'),
(1255, '193', '16', '36', '4', '8', '8', '2019-01-24 23:38:04', '2019-01-24 23:38:04'),
(1256, '194', '16', '36', '4', '8', '8', '2019-01-24 23:38:04', '2019-01-24 23:38:04'),
(1257, '195', '16', '36', '4', '8', '8', '2019-01-24 23:38:04', '2019-01-24 23:38:04'),
(1258, '196', '16', '36', '4', '8', '8', '2019-01-24 23:38:04', '2019-01-24 23:38:04'),
(1259, '197', '16', '36', '4', '8', '8', '2019-01-24 23:38:05', '2019-01-24 23:38:05'),
(1260, '198', '16', '36', '4', '8', '8', '2019-01-24 23:38:05', '2019-01-24 23:38:05'),
(1261, '199', '16', '36', '4', '8', '8', '2019-01-24 23:38:05', '2019-01-24 23:38:05'),
(1262, '200', '16', '36', '4', '8', '8', '2019-01-24 23:38:05', '2019-01-24 23:38:05'),
(1263, '201', '16', '36', '4', '8', '8', '2019-01-24 23:38:05', '2019-01-24 23:38:05'),
(1264, '202', '16', '36', '4', '8', '8', '2019-01-24 23:38:06', '2019-01-24 23:38:06'),
(1265, '203', '16', '36', '4', '8', '8', '2019-01-24 23:42:15', '2019-01-24 23:42:15'),
(1266, '204', '16', '36', '4', '8', '8', '2019-01-24 23:42:15', '2019-01-24 23:42:15'),
(1267, '205', '16', '36', '4', '8', '8', '2019-01-24 23:42:15', '2019-01-24 23:42:15'),
(1268, '206', '16', '36', '4', '8', '8', '2019-01-24 23:42:15', '2019-01-24 23:42:15'),
(1269, '207', '16', '36', '4', '8', '8', '2019-01-24 23:42:15', '2019-01-24 23:42:15'),
(1270, '208', '16', '36', '4', '8', '8', '2019-01-24 23:42:16', '2019-01-24 23:42:16'),
(1271, '209', '16', '36', '4', '8', '8', '2019-01-24 23:42:16', '2019-01-24 23:42:16'),
(1272, '210', '16', '36', '4', '8', '8', '2019-01-24 23:42:16', '2019-01-24 23:42:16'),
(1273, '211', '16', '36', '4', '8', '8', '2019-01-24 23:42:16', '2019-01-24 23:42:16'),
(1274, '212', '16', '36', '4', '8', '8', '2019-01-24 23:42:16', '2019-01-24 23:42:16'),
(1275, '213', '16', '36', '4', '8', '8', '2019-01-24 23:42:16', '2019-01-24 23:42:16'),
(1276, '214', '16', '36', '4', '8', '8', '2019-01-24 23:42:17', '2019-01-24 23:42:17'),
(1277, '215', '16', '36', '4', '8', '8', '2019-01-24 23:42:17', '2019-01-24 23:42:17'),
(1278, '216', '16', '36', '4', '8', '8', '2019-01-24 23:42:17', '2019-01-24 23:42:17'),
(1279, '217', '16', '36', '4', '8', '8', '2019-01-24 23:42:17', '2019-01-24 23:42:17'),
(1280, '218', '16', '36', '4', '8', '8', '2019-01-24 23:42:17', '2019-01-24 23:42:17'),
(1281, '219', '16', '36', '4', '8', '8', '2019-01-24 23:42:18', '2019-01-24 23:42:18'),
(1282, '220', '16', '36', '4', '8', '8', '2019-01-24 23:42:18', '2019-01-24 23:42:18'),
(1283, '221', '16', '36', '4', '8', '8', '2019-01-24 23:44:25', '2019-01-24 23:44:25'),
(1284, '222', '16', '36', '4', '8', '8', '2019-01-24 23:44:25', '2019-01-24 23:44:25'),
(1285, '223', '16', '36', '4', '8', '8', '2019-01-24 23:44:25', '2019-01-24 23:44:25'),
(1286, '224', '16', '36', '4', '8', '8', '2019-01-24 23:44:25', '2019-01-24 23:44:25'),
(1287, '225', '16', '36', '4', '8', '8', '2019-01-24 23:44:25', '2019-01-24 23:44:25'),
(1288, '226', '16', '36', '4', '8', '8', '2019-01-24 23:44:25', '2019-01-24 23:44:25'),
(1289, '227', '16', '36', '4', '8', '8', '2019-01-24 23:44:26', '2019-01-24 23:44:26'),
(1290, '228', '16', '36', '4', '8', '8', '2019-01-24 23:44:26', '2019-01-24 23:44:26'),
(1291, '229', '16', '36', '4', '8', '8', '2019-01-24 23:44:26', '2019-01-24 23:44:26'),
(1292, '230', '16', '36', '4', '8', '8', '2019-01-24 23:44:26', '2019-01-24 23:44:26'),
(1293, '231', '16', '36', '4', '8', '8', '2019-01-24 23:44:26', '2019-01-24 23:44:26'),
(1294, '232', '16', '36', '4', '8', '8', '2019-01-24 23:44:27', '2019-01-24 23:44:27'),
(1295, '233', '16', '36', '4', '8', '8', '2019-01-24 23:44:27', '2019-01-24 23:44:27'),
(1296, '234', '16', '36', '4', '8', '8', '2019-01-24 23:44:27', '2019-01-24 23:44:27'),
(1297, '235', '16', '36', '4', '8', '8', '2019-01-24 23:44:27', '2019-01-24 23:44:27'),
(1298, '236', '16', '36', '4', '8', '8', '2019-01-24 23:44:27', '2019-01-24 23:44:27'),
(1299, '237', '16', '36', '4', '8', '8', '2019-01-24 23:44:27', '2019-01-24 23:44:27'),
(1300, '238', '16', '36', '4', '8', '8', '2019-01-24 23:45:42', '2019-01-24 23:45:42'),
(1301, '239', '16', '36', '4', '8', '8', '2019-01-24 23:45:42', '2019-01-24 23:45:42'),
(1302, '240', '16', '36', '4', '8', '8', '2019-01-24 23:45:42', '2019-01-24 23:45:42'),
(1303, '241', '16', '36', '4', '8', '8', '2019-01-24 23:45:42', '2019-01-24 23:45:42'),
(1304, '242', '16', '36', '4', '8', '8', '2019-01-24 23:45:43', '2019-01-24 23:45:43'),
(1305, '243', '16', '36', '4', '8', '8', '2019-01-24 23:45:43', '2019-01-24 23:45:43'),
(1306, '244', '16', '36', '4', '8', '8', '2019-01-24 23:45:43', '2019-01-24 23:45:43'),
(1307, '245', '16', '36', '4', '8', '8', '2019-01-24 23:45:43', '2019-01-24 23:45:43'),
(1308, '246', '16', '36', '4', '8', '8', '2019-01-24 23:45:43', '2019-01-24 23:45:43'),
(1309, '247', '16', '36', '4', '8', '8', '2019-01-24 23:45:44', '2019-01-24 23:45:44'),
(1310, '248', '16', '36', '4', '8', '8', '2019-01-24 23:45:44', '2019-01-24 23:45:44'),
(1311, '249', '16', '36', '4', '8', '8', '2019-01-24 23:45:44', '2019-01-24 23:45:44'),
(1312, '250', '16', '36', '4', '8', '8', '2019-01-24 23:45:44', '2019-01-24 23:45:44'),
(1313, '251', '16', '36', '4', '8', '8', '2019-01-24 23:45:45', '2019-01-24 23:45:45'),
(1314, '252', '16', '36', '4', '8', '8', '2019-01-24 23:45:45', '2019-01-24 23:45:45'),
(1315, '253', '16', '36', '4', '8', '8', '2019-01-24 23:45:45', '2019-01-24 23:45:45'),
(1316, '254', '16', '36', '4', '8', '8', '2019-01-24 23:45:45', '2019-01-24 23:45:45'),
(1317, '255', '16', '36', '4', '8', '8', '2019-01-24 23:48:25', '2019-01-24 23:48:25'),
(1318, '256', '16', '36', '4', '8', '8', '2019-01-24 23:49:06', '2019-01-24 23:49:06'),
(1319, '257', '16', '36', '4', '8', '8', '2019-01-24 23:49:06', '2019-01-24 23:49:06'),
(1320, '258', '16', '36', '4', '8', '8', '2019-01-24 23:49:06', '2019-01-24 23:49:06'),
(1321, '259', '16', '36', '4', '8', '8', '2019-01-24 23:49:07', '2019-01-24 23:49:07'),
(1322, '260', '16', '36', '4', '8', '8', '2019-01-24 23:49:07', '2019-01-24 23:49:07'),
(1323, '261', '16', '36', '4', '8', '8', '2019-01-24 23:49:07', '2019-01-24 23:49:07'),
(1324, '262', '16', '36', '4', '8', '8', '2019-01-24 23:49:07', '2019-01-24 23:49:07'),
(1325, '263', '16', '36', '4', '8', '8', '2019-01-24 23:49:08', '2019-01-24 23:49:08'),
(1326, '264', '16', '36', '4', '8', '8', '2019-01-24 23:49:08', '2019-01-24 23:49:08'),
(1327, '265', '16', '36', '4', '8', '8', '2019-01-24 23:49:08', '2019-01-24 23:49:08'),
(1328, '266', '16', '36', '4', '8', '8', '2019-01-24 23:49:08', '2019-01-24 23:49:08'),
(1329, '267', '16', '36', '4', '8', '8', '2019-01-24 23:49:08', '2019-01-24 23:49:08'),
(1330, '268', '16', '36', '4', '8', '8', '2019-01-24 23:49:08', '2019-01-24 23:49:08'),
(1331, '269', '16', '36', '4', '8', '8', '2019-01-24 23:49:08', '2019-01-24 23:49:08'),
(1332, '270', '16', '36', '4', '8', '8', '2019-01-24 23:49:09', '2019-01-24 23:49:09'),
(1333, '271', '16', '36', '4', '8', '8', '2019-01-24 23:49:09', '2019-01-24 23:49:09'),
(1334, '272', '16', '36', '4', '8', '8', '2019-01-24 23:50:13', '2019-01-24 23:50:13'),
(1335, '273', '16', '36', '4', '8', '8', '2019-01-24 23:50:26', '2019-01-24 23:50:26'),
(1336, '274', '16', '36', '4', '8', '8', '2019-01-24 23:50:30', '2019-01-24 23:50:30'),
(1337, '276', '16', '36', '4', '8', '8', '2019-01-24 23:51:58', '2019-01-24 23:51:58'),
(1715, '122', '22', '45', '4', '7', '7', '2019-01-28 02:00:09', '2019-01-28 02:00:09'),
(1716, '124', '22', '45', '4', '7', '7', '2019-01-28 02:00:09', '2019-01-28 02:00:09'),
(1717, '125', '22', '45', '4', '7', '7', '2019-01-28 02:00:09', '2019-01-28 02:00:09'),
(1718, '609', '22', '45', '4', '7', '7', '2019-01-28 02:00:09', '2019-01-28 02:00:09'),
(1719, '610', '22', '45', '4', '7', '7', '2019-01-28 02:00:09', '2019-01-28 02:00:09'),
(1721, '611', '22', '45', '1', '7', '7', '2019-01-28 02:00:51', '2019-01-28 02:00:51'),
(1730, '108', '6', '38', '3', '1', '1', '2019-01-28 23:50:47', '2019-01-28 23:50:47'),
(1731, '108', '6', '40', '2', '1', '1', '2019-01-28 23:50:47', '2019-01-28 23:50:47'),
(1732, '109', '6', '38', '3', '1', '1', '2019-01-28 23:50:47', '2019-01-28 23:50:47'),
(1733, '109', '6', '40', '2', '1', '1', '2019-01-28 23:50:47', '2019-01-28 23:50:47'),
(1734, '111', '6', '38', '3', '1', '1', '2019-01-28 23:50:47', '2019-01-28 23:50:47'),
(1735, '111', '6', '40', '2', '1', '1', '2019-01-28 23:50:47', '2019-01-28 23:50:47'),
(1736, '112', '6', '38', '3', '1', '1', '2019-01-28 23:50:47', '2019-01-28 23:50:47'),
(1737, '112', '6', '40', '2', '1', '1', '2019-01-28 23:50:47', '2019-01-28 23:50:47'),
(1738, '113', '6', '38', '3', '1', '1', '2019-01-28 23:50:47', '2019-01-28 23:50:47'),
(1739, '113', '6', '40', '2', '1', '1', '2019-01-28 23:50:47', '2019-01-28 23:50:47'),
(1740, '114', '6', '38', '3', '1', '1', '2019-01-28 23:50:47', '2019-01-28 23:50:47'),
(1741, '114', '6', '40', '2', '1', '1', '2019-01-28 23:50:48', '2019-01-28 23:50:48'),
(1744, '118', '6', '38', '3', '1', '1', '2019-01-28 23:50:48', '2019-01-28 23:50:48'),
(1745, '118', '6', '40', '2', '1', '1', '2019-01-28 23:50:48', '2019-01-28 23:50:48'),
(1746, '119', '6', '38', '3', '1', '1', '2019-01-28 23:50:48', '2019-01-28 23:50:48'),
(1747, '119', '6', '40', '2', '1', '1', '2019-01-28 23:50:48', '2019-01-28 23:50:48'),
(1748, '120', '6', '38', '3', '1', '1', '2019-01-28 23:50:48', '2019-01-28 23:50:48'),
(1749, '120', '6', '40', '2', '1', '1', '2019-01-28 23:50:48', '2019-01-28 23:50:48'),
(1766, '135', '6', '38', '3', '1', '1', '2019-01-28 23:50:50', '2019-01-28 23:50:50'),
(1767, '135', '6', '40', '2', '1', '1', '2019-01-28 23:50:50', '2019-01-28 23:50:50'),
(1768, '155', '6', '38', '3', '1', '1', '2019-01-28 23:50:50', '2019-01-28 23:50:50'),
(1769, '155', '6', '40', '2', '1', '1', '2019-01-28 23:50:50', '2019-01-28 23:50:50'),
(1770, '397', '6', '38', '3', '1', '1', '2019-01-28 23:50:51', '2019-01-28 23:50:51'),
(1771, '397', '6', '40', '2', '1', '1', '2019-01-28 23:50:51', '2019-01-28 23:50:51'),
(1772, '398', '6', '38', '3', '1', '1', '2019-01-28 23:50:51', '2019-01-28 23:50:51'),
(1773, '398', '6', '40', '2', '1', '1', '2019-01-28 23:50:51', '2019-01-28 23:50:51'),
(1774, '399', '6', '38', '3', '1', '1', '2019-01-28 23:50:51', '2019-01-28 23:50:51'),
(1775, '399', '6', '40', '2', '1', '1', '2019-01-28 23:50:51', '2019-01-28 23:50:51'),
(1776, '400', '6', '38', '3', '1', '1', '2019-01-28 23:50:51', '2019-01-28 23:50:51'),
(1777, '400', '6', '40', '2', '1', '1', '2019-01-28 23:50:51', '2019-01-28 23:50:51'),
(1778, '401', '6', '38', '3', '1', '1', '2019-01-28 23:50:51', '2019-01-28 23:50:51'),
(1779, '401', '6', '40', '2', '1', '1', '2019-01-28 23:50:51', '2019-01-28 23:50:51'),
(1780, '402', '6', '38', '3', '1', '1', '2019-01-28 23:50:51', '2019-01-28 23:50:51'),
(1781, '402', '6', '40', '2', '1', '1', '2019-01-28 23:50:52', '2019-01-28 23:50:52'),
(1782, '563', '6', '38', '3', '1', '1', '2019-01-28 23:50:52', '2019-01-28 23:50:52'),
(1783, '563', '6', '40', '2', '1', '1', '2019-01-28 23:50:52', '2019-01-28 23:50:52'),
(1784, '564', '6', '38', '3', '1', '1', '2019-01-28 23:50:52', '2019-01-28 23:50:52'),
(1785, '564', '6', '40', '2', '1', '1', '2019-01-28 23:50:52', '2019-01-28 23:50:52'),
(1786, '565', '6', '38', '3', '1', '1', '2019-01-28 23:50:52', '2019-01-28 23:50:52'),
(1787, '565', '6', '40', '2', '1', '1', '2019-01-28 23:50:52', '2019-01-28 23:50:52'),
(1788, '566', '6', '38', '3', '1', '1', '2019-01-28 23:50:52', '2019-01-28 23:50:52'),
(1789, '566', '6', '40', '2', '1', '1', '2019-01-28 23:50:52', '2019-01-28 23:50:52'),
(1790, '567', '6', '38', '3', '1', '1', '2019-01-28 23:50:52', '2019-01-28 23:50:52'),
(1791, '567', '6', '40', '2', '1', '1', '2019-01-28 23:50:52', '2019-01-28 23:50:52'),
(1792, '568', '6', '38', '3', '1', '1', '2019-01-28 23:50:52', '2019-01-28 23:50:52'),
(1793, '568', '6', '40', '2', '1', '1', '2019-01-28 23:50:53', '2019-01-28 23:50:53'),
(1794, '569', '6', '38', '3', '1', '1', '2019-01-28 23:50:53', '2019-01-28 23:50:53'),
(1795, '569', '6', '40', '2', '1', '1', '2019-01-28 23:50:53', '2019-01-28 23:50:53'),
(1796, '570', '6', '38', '3', '1', '1', '2019-01-28 23:50:53', '2019-01-28 23:50:53'),
(1797, '570', '6', '40', '2', '1', '1', '2019-01-28 23:50:53', '2019-01-28 23:50:53'),
(1798, '571', '6', '38', '3', '1', '1', '2019-01-28 23:50:53', '2019-01-28 23:50:53'),
(1799, '571', '6', '40', '2', '1', '1', '2019-01-28 23:50:53', '2019-01-28 23:50:53'),
(1800, '572', '6', '38', '3', '1', '1', '2019-01-28 23:50:53', '2019-01-28 23:50:53'),
(1801, '572', '6', '40', '2', '1', '1', '2019-01-28 23:50:53', '2019-01-28 23:50:53'),
(1802, '573', '6', '38', '3', '1', '1', '2019-01-28 23:50:53', '2019-01-28 23:50:53'),
(1803, '573', '6', '40', '2', '1', '1', '2019-01-28 23:50:53', '2019-01-28 23:50:53'),
(1804, '574', '6', '38', '3', '1', '1', '2019-01-28 23:50:53', '2019-01-28 23:50:53'),
(1805, '574', '6', '40', '2', '1', '1', '2019-01-28 23:50:53', '2019-01-28 23:50:53'),
(2100, '725', '6', '38', '3', '1', '1', '2019-01-28 23:51:21', '2019-01-28 23:51:21'),
(2101, '725', '6', '40', '2', '1', '1', '2019-01-28 23:51:21', '2019-01-28 23:51:21'),
(2102, '726', '6', '38', '3', '1', '1', '2019-01-28 23:51:21', '2019-01-28 23:51:21'),
(2103, '726', '6', '40', '2', '1', '1', '2019-01-28 23:51:21', '2019-01-28 23:51:21'),
(2104, '727', '6', '38', '3', '1', '1', '2019-01-28 23:51:21', '2019-01-28 23:51:21'),
(2105, '727', '6', '40', '2', '1', '1', '2019-01-28 23:51:21', '2019-01-28 23:51:21'),
(2106, '728', '6', '38', '3', '1', '1', '2019-01-28 23:51:21', '2019-01-28 23:51:21'),
(2107, '728', '6', '40', '2', '1', '1', '2019-01-28 23:51:21', '2019-01-28 23:51:21'),
(2108, '729', '6', '38', '3', '1', '1', '2019-01-28 23:51:21', '2019-01-28 23:51:21'),
(2109, '729', '6', '40', '2', '1', '1', '2019-01-28 23:51:21', '2019-01-28 23:51:21'),
(2110, '733', '6', '38', '3', '1', '1', '2019-01-28 23:51:22', '2019-01-28 23:51:22'),
(2111, '733', '6', '40', '2', '1', '1', '2019-01-28 23:51:22', '2019-01-28 23:51:22'),
(2112, '115', '6', '38', '5', '1', '1', '2019-01-28 23:52:19', '2019-01-28 23:52:19'),
(2113, '115', '6', '40', '5', '1', '1', '2019-01-28 23:52:19', '2019-01-28 23:52:19'),
(2114, '127', '6', '38', '5', '1', '1', '2019-01-28 23:52:19', '2019-01-28 23:52:19'),
(2115, '127', '6', '40', '5', '1', '1', '2019-01-28 23:52:19', '2019-01-28 23:52:19'),
(2116, '128', '6', '38', '5', '1', '1', '2019-01-28 23:52:20', '2019-01-28 23:52:20'),
(2117, '128', '6', '40', '5', '1', '1', '2019-01-28 23:52:20', '2019-01-28 23:52:20'),
(2118, '129', '6', '38', '5', '1', '1', '2019-01-28 23:52:20', '2019-01-28 23:52:20'),
(2119, '129', '6', '40', '5', '1', '1', '2019-01-28 23:52:20', '2019-01-28 23:52:20'),
(2120, '130', '6', '38', '5', '1', '1', '2019-01-28 23:52:20', '2019-01-28 23:52:20'),
(2121, '130', '6', '40', '5', '1', '1', '2019-01-28 23:52:20', '2019-01-28 23:52:20'),
(2122, '131', '6', '38', '5', '1', '1', '2019-01-28 23:52:20', '2019-01-28 23:52:20'),
(2123, '131', '6', '40', '5', '1', '1', '2019-01-28 23:52:20', '2019-01-28 23:52:20'),
(2124, '132', '6', '38', '5', '1', '1', '2019-01-28 23:52:20', '2019-01-28 23:52:20'),
(2125, '132', '6', '40', '5', '1', '1', '2019-01-28 23:52:20', '2019-01-28 23:52:20'),
(2126, '133', '6', '38', '5', '1', '1', '2019-01-28 23:52:20', '2019-01-28 23:52:20'),
(2127, '133', '6', '40', '5', '1', '1', '2019-01-28 23:52:20', '2019-01-28 23:52:20'),
(2128, '134', '6', '38', '5', '1', '1', '2019-01-28 23:52:21', '2019-01-28 23:52:21'),
(2129, '134', '6', '40', '5', '1', '1', '2019-01-28 23:52:21', '2019-01-28 23:52:21'),
(2130, '575', '6', '38', '5', '1', '1', '2019-01-28 23:52:21', '2019-01-28 23:52:21'),
(2131, '575', '6', '40', '5', '1', '1', '2019-01-28 23:52:21', '2019-01-28 23:52:21'),
(2132, '576', '6', '38', '5', '1', '1', '2019-01-28 23:52:21', '2019-01-28 23:52:21'),
(2133, '576', '6', '40', '5', '1', '1', '2019-01-28 23:52:21', '2019-01-28 23:52:21'),
(2134, '577', '6', '38', '5', '1', '1', '2019-01-28 23:52:21', '2019-01-28 23:52:21'),
(2135, '577', '6', '40', '5', '1', '1', '2019-01-28 23:52:21', '2019-01-28 23:52:21'),
(2136, '578', '6', '38', '5', '1', '1', '2019-01-28 23:52:21', '2019-01-28 23:52:21'),
(2137, '578', '6', '40', '5', '1', '1', '2019-01-28 23:52:21', '2019-01-28 23:52:21'),
(2138, '579', '6', '38', '5', '1', '1', '2019-01-28 23:52:21', '2019-01-28 23:52:21'),
(2139, '579', '6', '40', '5', '1', '1', '2019-01-28 23:52:22', '2019-01-28 23:52:22'),
(2140, '580', '6', '38', '5', '1', '1', '2019-01-28 23:52:22', '2019-01-28 23:52:22'),
(2141, '580', '6', '40', '5', '1', '1', '2019-01-28 23:52:22', '2019-01-28 23:52:22'),
(2142, '581', '6', '38', '5', '1', '1', '2019-01-28 23:52:22', '2019-01-28 23:52:22'),
(2143, '581', '6', '40', '5', '1', '1', '2019-01-28 23:52:22', '2019-01-28 23:52:22'),
(2144, '582', '6', '38', '5', '1', '1', '2019-01-28 23:52:22', '2019-01-28 23:52:22'),
(2145, '582', '6', '40', '5', '1', '1', '2019-01-28 23:52:22', '2019-01-28 23:52:22'),
(2146, '583', '6', '38', '5', '1', '1', '2019-01-28 23:52:22', '2019-01-28 23:52:22'),
(2147, '583', '6', '40', '5', '1', '1', '2019-01-28 23:52:22', '2019-01-28 23:52:22'),
(2148, '584', '6', '38', '5', '1', '1', '2019-01-28 23:52:23', '2019-01-28 23:52:23'),
(2149, '584', '6', '40', '5', '1', '1', '2019-01-28 23:52:23', '2019-01-28 23:52:23'),
(2150, '585', '6', '38', '5', '1', '1', '2019-01-28 23:52:23', '2019-01-28 23:52:23'),
(2151, '585', '6', '40', '5', '1', '1', '2019-01-28 23:52:23', '2019-01-28 23:52:23'),
(2152, '586', '6', '38', '5', '1', '1', '2019-01-28 23:52:23', '2019-01-28 23:52:23'),
(2153, '586', '6', '40', '5', '1', '1', '2019-01-28 23:52:23', '2019-01-28 23:52:23'),
(2154, '587', '6', '38', '5', '1', '1', '2019-01-28 23:52:23', '2019-01-28 23:52:23'),
(2155, '587', '6', '40', '5', '1', '1', '2019-01-28 23:52:23', '2019-01-28 23:52:23'),
(2156, '588', '6', '38', '5', '1', '1', '2019-01-28 23:52:23', '2019-01-28 23:52:23'),
(2157, '588', '6', '40', '5', '1', '1', '2019-01-28 23:52:24', '2019-01-28 23:52:24'),
(2158, '589', '6', '38', '5', '1', '1', '2019-01-28 23:52:24', '2019-01-28 23:52:24'),
(2159, '589', '6', '40', '5', '1', '1', '2019-01-28 23:52:24', '2019-01-28 23:52:24'),
(2160, '590', '6', '38', '5', '1', '1', '2019-01-28 23:52:24', '2019-01-28 23:52:24'),
(2161, '590', '6', '40', '5', '1', '1', '2019-01-28 23:52:24', '2019-01-28 23:52:24'),
(2162, '591', '6', '38', '5', '1', '1', '2019-01-28 23:52:24', '2019-01-28 23:52:24'),
(2163, '591', '6', '40', '5', '1', '1', '2019-01-28 23:52:24', '2019-01-28 23:52:24'),
(2164, '592', '6', '38', '5', '1', '1', '2019-01-28 23:52:24', '2019-01-28 23:52:24'),
(2165, '592', '6', '40', '5', '1', '1', '2019-01-28 23:52:24', '2019-01-28 23:52:24'),
(2166, '593', '6', '38', '5', '1', '1', '2019-01-28 23:52:24', '2019-01-28 23:52:24'),
(2167, '593', '6', '40', '5', '1', '1', '2019-01-28 23:52:24', '2019-01-28 23:52:24'),
(2168, '594', '6', '38', '5', '1', '1', '2019-01-28 23:52:25', '2019-01-28 23:52:25'),
(2169, '594', '6', '40', '5', '1', '1', '2019-01-28 23:52:25', '2019-01-28 23:52:25'),
(2170, '595', '6', '38', '5', '1', '1', '2019-01-28 23:52:25', '2019-01-28 23:52:25'),
(2171, '595', '6', '40', '5', '1', '1', '2019-01-28 23:52:25', '2019-01-28 23:52:25'),
(2172, '596', '6', '38', '5', '1', '1', '2019-01-28 23:52:25', '2019-01-28 23:52:25'),
(2173, '596', '6', '40', '5', '1', '1', '2019-01-28 23:52:25', '2019-01-28 23:52:25'),
(2174, '597', '6', '38', '5', '1', '1', '2019-01-28 23:52:25', '2019-01-28 23:52:25'),
(2175, '597', '6', '40', '5', '1', '1', '2019-01-28 23:52:25', '2019-01-28 23:52:25'),
(2176, '598', '6', '38', '5', '1', '1', '2019-01-28 23:52:25', '2019-01-28 23:52:25'),
(2177, '598', '6', '40', '5', '1', '1', '2019-01-28 23:52:25', '2019-01-28 23:52:25'),
(2178, '599', '6', '38', '5', '1', '1', '2019-01-28 23:52:26', '2019-01-28 23:52:26'),
(2179, '599', '6', '40', '5', '1', '1', '2019-01-28 23:52:26', '2019-01-28 23:52:26'),
(2180, '600', '6', '38', '5', '1', '1', '2019-01-28 23:52:26', '2019-01-28 23:52:26'),
(2181, '600', '6', '40', '5', '1', '1', '2019-01-28 23:52:26', '2019-01-28 23:52:26'),
(2182, '601', '6', '38', '5', '1', '1', '2019-01-28 23:52:26', '2019-01-28 23:52:26'),
(2183, '601', '6', '40', '5', '1', '1', '2019-01-28 23:52:26', '2019-01-28 23:52:26'),
(2184, '602', '6', '38', '5', '1', '1', '2019-01-28 23:52:26', '2019-01-28 23:52:26'),
(2185, '602', '6', '40', '5', '1', '1', '2019-01-28 23:52:26', '2019-01-28 23:52:26'),
(2186, '603', '6', '38', '5', '1', '1', '2019-01-28 23:52:26', '2019-01-28 23:52:26'),
(2187, '603', '6', '40', '5', '1', '1', '2019-01-28 23:52:26', '2019-01-28 23:52:26'),
(2188, '604', '6', '38', '5', '1', '1', '2019-01-28 23:52:26', '2019-01-28 23:52:26'),
(2189, '604', '6', '40', '5', '1', '1', '2019-01-28 23:52:26', '2019-01-28 23:52:26'),
(2190, '605', '6', '38', '5', '1', '1', '2019-01-28 23:52:26', '2019-01-28 23:52:26'),
(2191, '605', '6', '40', '5', '1', '1', '2019-01-28 23:52:26', '2019-01-28 23:52:26'),
(2192, '606', '6', '38', '5', '1', '1', '2019-01-28 23:52:27', '2019-01-28 23:52:27'),
(2193, '606', '6', '40', '5', '1', '1', '2019-01-28 23:52:27', '2019-01-28 23:52:27'),
(2194, '607', '6', '38', '5', '1', '1', '2019-01-28 23:52:27', '2019-01-28 23:52:27'),
(2195, '607', '6', '40', '5', '1', '1', '2019-01-28 23:52:27', '2019-01-28 23:52:27'),
(2196, '608', '6', '38', '5', '1', '1', '2019-01-28 23:52:27', '2019-01-28 23:52:27'),
(2197, '608', '6', '40', '5', '1', '1', '2019-01-28 23:52:27', '2019-01-28 23:52:27'),
(2198, '612', '6', '38', '5', '1', '1', '2019-01-28 23:52:27', '2019-01-28 23:52:27'),
(2199, '612', '6', '40', '5', '1', '1', '2019-01-28 23:52:27', '2019-01-28 23:52:27'),
(2200, '613', '6', '38', '5', '1', '1', '2019-01-28 23:52:27', '2019-01-28 23:52:27'),
(2201, '613', '6', '40', '5', '1', '1', '2019-01-28 23:52:28', '2019-01-28 23:52:28'),
(2202, '614', '6', '38', '5', '1', '1', '2019-01-28 23:52:28', '2019-01-28 23:52:28'),
(2203, '614', '6', '40', '5', '1', '1', '2019-01-28 23:52:28', '2019-01-28 23:52:28'),
(2204, '615', '6', '38', '5', '1', '1', '2019-01-28 23:52:28', '2019-01-28 23:52:28'),
(2205, '615', '6', '40', '5', '1', '1', '2019-01-28 23:52:28', '2019-01-28 23:52:28'),
(2206, '616', '6', '38', '5', '1', '1', '2019-01-28 23:52:28', '2019-01-28 23:52:28'),
(2207, '616', '6', '40', '5', '1', '1', '2019-01-28 23:52:28', '2019-01-28 23:52:28'),
(2208, '617', '6', '38', '5', '1', '1', '2019-01-28 23:52:28', '2019-01-28 23:52:28'),
(2209, '617', '6', '40', '5', '1', '1', '2019-01-28 23:52:28', '2019-01-28 23:52:28'),
(2210, '618', '6', '38', '5', '1', '1', '2019-01-28 23:52:28', '2019-01-28 23:52:28'),
(2211, '618', '6', '40', '5', '1', '1', '2019-01-28 23:52:29', '2019-01-28 23:52:29'),
(2212, '619', '6', '38', '5', '1', '1', '2019-01-28 23:52:29', '2019-01-28 23:52:29'),
(2213, '619', '6', '40', '5', '1', '1', '2019-01-28 23:52:29', '2019-01-28 23:52:29'),
(2214, '620', '6', '38', '5', '1', '1', '2019-01-28 23:52:29', '2019-01-28 23:52:29'),
(2215, '620', '6', '40', '5', '1', '1', '2019-01-28 23:52:29', '2019-01-28 23:52:29'),
(2216, '621', '6', '38', '5', '1', '1', '2019-01-28 23:52:29', '2019-01-28 23:52:29'),
(2217, '621', '6', '40', '5', '1', '1', '2019-01-28 23:52:29', '2019-01-28 23:52:29'),
(2218, '622', '6', '38', '5', '1', '1', '2019-01-28 23:52:29', '2019-01-28 23:52:29'),
(2219, '622', '6', '40', '5', '1', '1', '2019-01-28 23:52:29', '2019-01-28 23:52:29'),
(2220, '623', '6', '38', '5', '1', '1', '2019-01-28 23:52:29', '2019-01-28 23:52:29'),
(2221, '623', '6', '40', '5', '1', '1', '2019-01-28 23:52:30', '2019-01-28 23:52:30'),
(2222, '624', '6', '38', '5', '1', '1', '2019-01-28 23:52:30', '2019-01-28 23:52:30'),
(2223, '624', '6', '40', '5', '1', '1', '2019-01-28 23:52:30', '2019-01-28 23:52:30'),
(2224, '625', '6', '38', '5', '1', '1', '2019-01-28 23:52:30', '2019-01-28 23:52:30'),
(2225, '625', '6', '40', '5', '1', '1', '2019-01-28 23:52:30', '2019-01-28 23:52:30'),
(2226, '626', '6', '38', '5', '1', '1', '2019-01-28 23:52:30', '2019-01-28 23:52:30'),
(2227, '626', '6', '40', '5', '1', '1', '2019-01-28 23:52:30', '2019-01-28 23:52:30'),
(2228, '627', '6', '38', '5', '1', '1', '2019-01-28 23:52:30', '2019-01-28 23:52:30'),
(2229, '627', '6', '40', '5', '1', '1', '2019-01-28 23:52:30', '2019-01-28 23:52:30'),
(2230, '628', '6', '38', '5', '1', '1', '2019-01-28 23:52:30', '2019-01-28 23:52:30'),
(2231, '628', '6', '40', '5', '1', '1', '2019-01-28 23:52:30', '2019-01-28 23:52:30'),
(2232, '629', '6', '38', '5', '1', '1', '2019-01-28 23:52:31', '2019-01-28 23:52:31'),
(2233, '629', '6', '40', '5', '1', '1', '2019-01-28 23:52:31', '2019-01-28 23:52:31'),
(2234, '630', '6', '38', '5', '1', '1', '2019-01-28 23:52:31', '2019-01-28 23:52:31'),
(2235, '630', '6', '40', '5', '1', '1', '2019-01-28 23:52:31', '2019-01-28 23:52:31'),
(2236, '631', '6', '38', '5', '1', '1', '2019-01-28 23:52:31', '2019-01-28 23:52:31'),
(2237, '631', '6', '40', '5', '1', '1', '2019-01-28 23:52:31', '2019-01-28 23:52:31'),
(2238, '632', '6', '38', '5', '1', '1', '2019-01-28 23:52:31', '2019-01-28 23:52:31'),
(2239, '632', '6', '40', '5', '1', '1', '2019-01-28 23:52:31', '2019-01-28 23:52:31'),
(2240, '633', '6', '38', '5', '1', '1', '2019-01-28 23:52:31', '2019-01-28 23:52:31'),
(2241, '633', '6', '40', '5', '1', '1', '2019-01-28 23:52:31', '2019-01-28 23:52:31'),
(2242, '634', '6', '38', '5', '1', '1', '2019-01-28 23:52:31', '2019-01-28 23:52:31'),
(2243, '634', '6', '40', '5', '1', '1', '2019-01-28 23:52:31', '2019-01-28 23:52:31'),
(2244, '635', '6', '38', '5', '1', '1', '2019-01-28 23:52:32', '2019-01-28 23:52:32'),
(2245, '635', '6', '40', '5', '1', '1', '2019-01-28 23:52:32', '2019-01-28 23:52:32'),
(2246, '636', '6', '38', '5', '1', '1', '2019-01-28 23:52:32', '2019-01-28 23:52:32'),
(2247, '636', '6', '40', '5', '1', '1', '2019-01-28 23:52:32', '2019-01-28 23:52:32'),
(2248, '637', '6', '38', '5', '1', '1', '2019-01-28 23:52:32', '2019-01-28 23:52:32'),
(2249, '637', '6', '40', '5', '1', '1', '2019-01-28 23:52:32', '2019-01-28 23:52:32'),
(2250, '638', '6', '38', '5', '1', '1', '2019-01-28 23:52:32', '2019-01-28 23:52:32'),
(2251, '638', '6', '40', '5', '1', '1', '2019-01-28 23:52:32', '2019-01-28 23:52:32'),
(2252, '639', '6', '38', '5', '1', '1', '2019-01-28 23:52:32', '2019-01-28 23:52:32'),
(2253, '639', '6', '40', '5', '1', '1', '2019-01-28 23:52:32', '2019-01-28 23:52:32'),
(2254, '640', '6', '38', '5', '1', '1', '2019-01-28 23:52:33', '2019-01-28 23:52:33'),
(2255, '640', '6', '40', '5', '1', '1', '2019-01-28 23:52:33', '2019-01-28 23:52:33'),
(2256, '641', '6', '38', '5', '1', '1', '2019-01-28 23:52:33', '2019-01-28 23:52:33'),
(2257, '641', '6', '40', '5', '1', '1', '2019-01-28 23:52:33', '2019-01-28 23:52:33'),
(2258, '642', '6', '38', '5', '1', '1', '2019-01-28 23:52:33', '2019-01-28 23:52:33'),
(2259, '642', '6', '40', '5', '1', '1', '2019-01-28 23:52:33', '2019-01-28 23:52:33'),
(2260, '643', '6', '38', '5', '1', '1', '2019-01-28 23:52:33', '2019-01-28 23:52:33'),
(2261, '643', '6', '40', '5', '1', '1', '2019-01-28 23:52:33', '2019-01-28 23:52:33'),
(2262, '644', '6', '38', '5', '1', '1', '2019-01-28 23:52:33', '2019-01-28 23:52:33'),
(2263, '644', '6', '40', '5', '1', '1', '2019-01-28 23:52:34', '2019-01-28 23:52:34'),
(2264, '645', '6', '38', '5', '1', '1', '2019-01-28 23:52:34', '2019-01-28 23:52:34');
INSERT INTO `document_permission` (`id`, `document_id`, `project_id`, `group_id`, `permission_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2265, '645', '6', '40', '5', '1', '1', '2019-01-28 23:52:34', '2019-01-28 23:52:34'),
(2266, '646', '6', '38', '5', '1', '1', '2019-01-28 23:52:34', '2019-01-28 23:52:34'),
(2267, '646', '6', '40', '5', '1', '1', '2019-01-28 23:52:34', '2019-01-28 23:52:34'),
(2268, '647', '6', '38', '5', '1', '1', '2019-01-28 23:52:34', '2019-01-28 23:52:34'),
(2269, '647', '6', '40', '5', '1', '1', '2019-01-28 23:52:34', '2019-01-28 23:52:34'),
(2270, '648', '6', '38', '5', '1', '1', '2019-01-28 23:52:34', '2019-01-28 23:52:34'),
(2271, '648', '6', '40', '5', '1', '1', '2019-01-28 23:52:34', '2019-01-28 23:52:34'),
(2272, '649', '6', '38', '5', '1', '1', '2019-01-28 23:52:35', '2019-01-28 23:52:35'),
(2273, '649', '6', '40', '5', '1', '1', '2019-01-28 23:52:35', '2019-01-28 23:52:35'),
(2274, '650', '6', '38', '5', '1', '1', '2019-01-28 23:52:35', '2019-01-28 23:52:35'),
(2275, '650', '6', '40', '5', '1', '1', '2019-01-28 23:52:35', '2019-01-28 23:52:35'),
(2276, '651', '6', '38', '5', '1', '1', '2019-01-28 23:52:35', '2019-01-28 23:52:35'),
(2277, '651', '6', '40', '5', '1', '1', '2019-01-28 23:52:35', '2019-01-28 23:52:35'),
(2278, '652', '6', '38', '5', '1', '1', '2019-01-28 23:52:35', '2019-01-28 23:52:35'),
(2279, '652', '6', '40', '5', '1', '1', '2019-01-28 23:52:35', '2019-01-28 23:52:35'),
(2280, '653', '6', '38', '5', '1', '1', '2019-01-28 23:52:35', '2019-01-28 23:52:35'),
(2281, '653', '6', '40', '5', '1', '1', '2019-01-28 23:52:35', '2019-01-28 23:52:35'),
(2282, '654', '6', '38', '5', '1', '1', '2019-01-28 23:52:35', '2019-01-28 23:52:35'),
(2283, '654', '6', '40', '5', '1', '1', '2019-01-28 23:52:35', '2019-01-28 23:52:35'),
(2284, '655', '6', '38', '5', '1', '1', '2019-01-28 23:52:35', '2019-01-28 23:52:35'),
(2285, '655', '6', '40', '5', '1', '1', '2019-01-28 23:52:36', '2019-01-28 23:52:36'),
(2286, '656', '6', '38', '5', '1', '1', '2019-01-28 23:52:36', '2019-01-28 23:52:36'),
(2287, '656', '6', '40', '5', '1', '1', '2019-01-28 23:52:36', '2019-01-28 23:52:36'),
(2288, '657', '6', '38', '5', '1', '1', '2019-01-28 23:52:36', '2019-01-28 23:52:36'),
(2289, '657', '6', '40', '5', '1', '1', '2019-01-28 23:52:36', '2019-01-28 23:52:36'),
(2290, '658', '6', '38', '5', '1', '1', '2019-01-28 23:52:36', '2019-01-28 23:52:36'),
(2291, '658', '6', '40', '5', '1', '1', '2019-01-28 23:52:36', '2019-01-28 23:52:36'),
(2292, '659', '6', '38', '5', '1', '1', '2019-01-28 23:52:36', '2019-01-28 23:52:36'),
(2293, '659', '6', '40', '5', '1', '1', '2019-01-28 23:52:36', '2019-01-28 23:52:36'),
(2294, '660', '6', '38', '5', '1', '1', '2019-01-28 23:52:36', '2019-01-28 23:52:36'),
(2295, '660', '6', '40', '5', '1', '1', '2019-01-28 23:52:36', '2019-01-28 23:52:36'),
(2296, '661', '6', '38', '5', '1', '1', '2019-01-28 23:52:36', '2019-01-28 23:52:36'),
(2297, '661', '6', '40', '5', '1', '1', '2019-01-28 23:52:36', '2019-01-28 23:52:36'),
(2298, '662', '6', '38', '5', '1', '1', '2019-01-28 23:52:37', '2019-01-28 23:52:37'),
(2299, '662', '6', '40', '5', '1', '1', '2019-01-28 23:52:37', '2019-01-28 23:52:37'),
(2300, '663', '6', '38', '5', '1', '1', '2019-01-28 23:52:37', '2019-01-28 23:52:37'),
(2301, '663', '6', '40', '5', '1', '1', '2019-01-28 23:52:37', '2019-01-28 23:52:37'),
(2302, '664', '6', '38', '5', '1', '1', '2019-01-28 23:52:37', '2019-01-28 23:52:37'),
(2303, '664', '6', '40', '5', '1', '1', '2019-01-28 23:52:37', '2019-01-28 23:52:37'),
(2304, '665', '6', '38', '5', '1', '1', '2019-01-28 23:52:37', '2019-01-28 23:52:37'),
(2305, '665', '6', '40', '5', '1', '1', '2019-01-28 23:52:37', '2019-01-28 23:52:37'),
(2306, '666', '6', '38', '5', '1', '1', '2019-01-28 23:52:37', '2019-01-28 23:52:37'),
(2307, '666', '6', '40', '5', '1', '1', '2019-01-28 23:52:37', '2019-01-28 23:52:37'),
(2308, '667', '6', '38', '5', '1', '1', '2019-01-28 23:52:37', '2019-01-28 23:52:37'),
(2309, '667', '6', '40', '5', '1', '1', '2019-01-28 23:52:38', '2019-01-28 23:52:38'),
(2310, '668', '6', '38', '5', '1', '1', '2019-01-28 23:52:38', '2019-01-28 23:52:38'),
(2311, '668', '6', '40', '5', '1', '1', '2019-01-28 23:52:38', '2019-01-28 23:52:38'),
(2312, '669', '6', '38', '5', '1', '1', '2019-01-28 23:52:38', '2019-01-28 23:52:38'),
(2313, '669', '6', '40', '5', '1', '1', '2019-01-28 23:52:38', '2019-01-28 23:52:38'),
(2314, '670', '6', '38', '5', '1', '1', '2019-01-28 23:52:38', '2019-01-28 23:52:38'),
(2315, '670', '6', '40', '5', '1', '1', '2019-01-28 23:52:38', '2019-01-28 23:52:38'),
(2316, '671', '6', '38', '5', '1', '1', '2019-01-28 23:52:38', '2019-01-28 23:52:38'),
(2317, '671', '6', '40', '5', '1', '1', '2019-01-28 23:52:38', '2019-01-28 23:52:38'),
(2318, '672', '6', '38', '5', '1', '1', '2019-01-28 23:52:38', '2019-01-28 23:52:38'),
(2319, '672', '6', '40', '5', '1', '1', '2019-01-28 23:52:38', '2019-01-28 23:52:38'),
(2320, '673', '6', '38', '5', '1', '1', '2019-01-28 23:52:39', '2019-01-28 23:52:39'),
(2321, '673', '6', '40', '5', '1', '1', '2019-01-28 23:52:39', '2019-01-28 23:52:39'),
(2322, '674', '6', '38', '5', '1', '1', '2019-01-28 23:52:39', '2019-01-28 23:52:39'),
(2323, '674', '6', '40', '5', '1', '1', '2019-01-28 23:52:39', '2019-01-28 23:52:39'),
(2324, '675', '6', '38', '5', '1', '1', '2019-01-28 23:52:39', '2019-01-28 23:52:39'),
(2325, '675', '6', '40', '5', '1', '1', '2019-01-28 23:52:39', '2019-01-28 23:52:39'),
(2326, '676', '6', '38', '5', '1', '1', '2019-01-28 23:52:39', '2019-01-28 23:52:39'),
(2327, '676', '6', '40', '5', '1', '1', '2019-01-28 23:52:39', '2019-01-28 23:52:39'),
(2328, '677', '6', '38', '5', '1', '1', '2019-01-28 23:52:39', '2019-01-28 23:52:39'),
(2329, '677', '6', '40', '5', '1', '1', '2019-01-28 23:52:39', '2019-01-28 23:52:39'),
(2330, '678', '6', '38', '5', '1', '1', '2019-01-28 23:52:40', '2019-01-28 23:52:40'),
(2331, '678', '6', '40', '5', '1', '1', '2019-01-28 23:52:40', '2019-01-28 23:52:40'),
(2332, '679', '6', '38', '5', '1', '1', '2019-01-28 23:52:40', '2019-01-28 23:52:40'),
(2333, '679', '6', '40', '5', '1', '1', '2019-01-28 23:52:40', '2019-01-28 23:52:40'),
(2334, '680', '6', '38', '5', '1', '1', '2019-01-28 23:52:40', '2019-01-28 23:52:40'),
(2335, '680', '6', '40', '5', '1', '1', '2019-01-28 23:52:40', '2019-01-28 23:52:40'),
(2336, '681', '6', '38', '5', '1', '1', '2019-01-28 23:52:40', '2019-01-28 23:52:40'),
(2337, '681', '6', '40', '5', '1', '1', '2019-01-28 23:52:40', '2019-01-28 23:52:40'),
(2338, '682', '6', '38', '5', '1', '1', '2019-01-28 23:52:41', '2019-01-28 23:52:41'),
(2339, '682', '6', '40', '5', '1', '1', '2019-01-28 23:52:41', '2019-01-28 23:52:41'),
(2340, '683', '6', '38', '5', '1', '1', '2019-01-28 23:52:41', '2019-01-28 23:52:41'),
(2341, '683', '6', '40', '5', '1', '1', '2019-01-28 23:52:41', '2019-01-28 23:52:41'),
(2342, '684', '6', '38', '5', '1', '1', '2019-01-28 23:52:41', '2019-01-28 23:52:41'),
(2343, '684', '6', '40', '5', '1', '1', '2019-01-28 23:52:41', '2019-01-28 23:52:41'),
(2344, '685', '6', '38', '5', '1', '1', '2019-01-28 23:52:41', '2019-01-28 23:52:41'),
(2345, '685', '6', '40', '5', '1', '1', '2019-01-28 23:52:41', '2019-01-28 23:52:41'),
(2346, '686', '6', '38', '5', '1', '1', '2019-01-28 23:52:41', '2019-01-28 23:52:41'),
(2347, '686', '6', '40', '5', '1', '1', '2019-01-28 23:52:41', '2019-01-28 23:52:41'),
(2348, '687', '6', '38', '5', '1', '1', '2019-01-28 23:52:42', '2019-01-28 23:52:42'),
(2349, '687', '6', '40', '5', '1', '1', '2019-01-28 23:52:42', '2019-01-28 23:52:42'),
(2350, '688', '6', '38', '5', '1', '1', '2019-01-28 23:52:42', '2019-01-28 23:52:42'),
(2351, '688', '6', '40', '5', '1', '1', '2019-01-28 23:52:42', '2019-01-28 23:52:42'),
(2352, '689', '6', '38', '5', '1', '1', '2019-01-28 23:52:42', '2019-01-28 23:52:42'),
(2353, '689', '6', '40', '5', '1', '1', '2019-01-28 23:52:42', '2019-01-28 23:52:42'),
(2354, '690', '6', '38', '5', '1', '1', '2019-01-28 23:52:42', '2019-01-28 23:52:42'),
(2355, '690', '6', '40', '5', '1', '1', '2019-01-28 23:52:42', '2019-01-28 23:52:42'),
(2356, '691', '6', '38', '5', '1', '1', '2019-01-28 23:52:42', '2019-01-28 23:52:42'),
(2357, '691', '6', '40', '5', '1', '1', '2019-01-28 23:52:42', '2019-01-28 23:52:42'),
(2358, '692', '6', '38', '5', '1', '1', '2019-01-28 23:52:43', '2019-01-28 23:52:43'),
(2359, '692', '6', '40', '5', '1', '1', '2019-01-28 23:52:43', '2019-01-28 23:52:43'),
(2360, '693', '6', '38', '5', '1', '1', '2019-01-28 23:52:43', '2019-01-28 23:52:43'),
(2361, '693', '6', '40', '5', '1', '1', '2019-01-28 23:52:43', '2019-01-28 23:52:43'),
(2362, '694', '6', '38', '5', '1', '1', '2019-01-28 23:52:43', '2019-01-28 23:52:43'),
(2363, '694', '6', '40', '5', '1', '1', '2019-01-28 23:52:43', '2019-01-28 23:52:43'),
(2364, '695', '6', '38', '5', '1', '1', '2019-01-28 23:52:43', '2019-01-28 23:52:43'),
(2365, '695', '6', '40', '5', '1', '1', '2019-01-28 23:52:43', '2019-01-28 23:52:43'),
(2366, '696', '6', '38', '5', '1', '1', '2019-01-28 23:52:43', '2019-01-28 23:52:43'),
(2367, '696', '6', '40', '5', '1', '1', '2019-01-28 23:52:43', '2019-01-28 23:52:43'),
(2368, '697', '6', '38', '5', '1', '1', '2019-01-28 23:52:43', '2019-01-28 23:52:43'),
(2369, '697', '6', '40', '5', '1', '1', '2019-01-28 23:52:44', '2019-01-28 23:52:44'),
(2370, '698', '6', '38', '5', '1', '1', '2019-01-28 23:52:44', '2019-01-28 23:52:44'),
(2371, '698', '6', '40', '5', '1', '1', '2019-01-28 23:52:44', '2019-01-28 23:52:44'),
(2372, '699', '6', '38', '5', '1', '1', '2019-01-28 23:52:44', '2019-01-28 23:52:44'),
(2373, '699', '6', '40', '5', '1', '1', '2019-01-28 23:52:44', '2019-01-28 23:52:44'),
(2374, '700', '6', '38', '5', '1', '1', '2019-01-28 23:52:44', '2019-01-28 23:52:44'),
(2375, '700', '6', '40', '5', '1', '1', '2019-01-28 23:52:44', '2019-01-28 23:52:44'),
(2376, '701', '6', '38', '5', '1', '1', '2019-01-28 23:52:45', '2019-01-28 23:52:45'),
(2377, '701', '6', '40', '5', '1', '1', '2019-01-28 23:52:45', '2019-01-28 23:52:45'),
(2378, '702', '6', '38', '5', '1', '1', '2019-01-28 23:52:45', '2019-01-28 23:52:45'),
(2379, '702', '6', '40', '5', '1', '1', '2019-01-28 23:52:45', '2019-01-28 23:52:45'),
(2380, '703', '6', '38', '5', '1', '1', '2019-01-28 23:52:45', '2019-01-28 23:52:45'),
(2381, '703', '6', '40', '5', '1', '1', '2019-01-28 23:52:45', '2019-01-28 23:52:45'),
(2382, '704', '6', '38', '5', '1', '1', '2019-01-28 23:52:45', '2019-01-28 23:52:45'),
(2383, '704', '6', '40', '5', '1', '1', '2019-01-28 23:52:45', '2019-01-28 23:52:45'),
(2384, '705', '6', '38', '5', '1', '1', '2019-01-28 23:52:46', '2019-01-28 23:52:46'),
(2385, '705', '6', '40', '5', '1', '1', '2019-01-28 23:52:46', '2019-01-28 23:52:46'),
(2386, '706', '6', '38', '5', '1', '1', '2019-01-28 23:52:46', '2019-01-28 23:52:46'),
(2387, '706', '6', '40', '5', '1', '1', '2019-01-28 23:52:46', '2019-01-28 23:52:46'),
(2388, '707', '6', '38', '5', '1', '1', '2019-01-28 23:52:46', '2019-01-28 23:52:46'),
(2389, '707', '6', '40', '5', '1', '1', '2019-01-28 23:52:46', '2019-01-28 23:52:46'),
(2390, '708', '6', '38', '5', '1', '1', '2019-01-28 23:52:46', '2019-01-28 23:52:46'),
(2391, '708', '6', '40', '5', '1', '1', '2019-01-28 23:52:46', '2019-01-28 23:52:46'),
(2392, '709', '6', '38', '5', '1', '1', '2019-01-28 23:52:46', '2019-01-28 23:52:46'),
(2393, '709', '6', '40', '5', '1', '1', '2019-01-28 23:52:47', '2019-01-28 23:52:47'),
(2394, '710', '6', '38', '5', '1', '1', '2019-01-28 23:52:47', '2019-01-28 23:52:47'),
(2395, '710', '6', '40', '5', '1', '1', '2019-01-28 23:52:47', '2019-01-28 23:52:47'),
(2396, '711', '6', '38', '5', '1', '1', '2019-01-28 23:52:47', '2019-01-28 23:52:47'),
(2397, '711', '6', '40', '5', '1', '1', '2019-01-28 23:52:47', '2019-01-28 23:52:47'),
(2398, '712', '6', '38', '5', '1', '1', '2019-01-28 23:52:47', '2019-01-28 23:52:47'),
(2399, '712', '6', '40', '5', '1', '1', '2019-01-28 23:52:47', '2019-01-28 23:52:47'),
(2400, '713', '6', '38', '5', '1', '1', '2019-01-28 23:52:47', '2019-01-28 23:52:47'),
(2401, '713', '6', '40', '5', '1', '1', '2019-01-28 23:52:47', '2019-01-28 23:52:47'),
(2402, '714', '6', '38', '5', '1', '1', '2019-01-28 23:52:47', '2019-01-28 23:52:47'),
(2403, '714', '6', '40', '5', '1', '1', '2019-01-28 23:52:47', '2019-01-28 23:52:47'),
(2404, '715', '6', '38', '5', '1', '1', '2019-01-28 23:52:47', '2019-01-28 23:52:47'),
(2405, '715', '6', '40', '5', '1', '1', '2019-01-28 23:52:48', '2019-01-28 23:52:48'),
(2406, '716', '6', '38', '5', '1', '1', '2019-01-28 23:52:48', '2019-01-28 23:52:48'),
(2407, '716', '6', '40', '5', '1', '1', '2019-01-28 23:52:48', '2019-01-28 23:52:48'),
(2408, '717', '6', '38', '5', '1', '1', '2019-01-28 23:52:48', '2019-01-28 23:52:48'),
(2409, '717', '6', '40', '5', '1', '1', '2019-01-28 23:52:48', '2019-01-28 23:52:48'),
(2410, '718', '6', '38', '5', '1', '1', '2019-01-28 23:52:48', '2019-01-28 23:52:48'),
(2411, '718', '6', '40', '5', '1', '1', '2019-01-28 23:52:48', '2019-01-28 23:52:48'),
(2412, '719', '6', '38', '5', '1', '1', '2019-01-28 23:52:48', '2019-01-28 23:52:48'),
(2413, '719', '6', '40', '5', '1', '1', '2019-01-28 23:52:48', '2019-01-28 23:52:48'),
(2414, '720', '6', '38', '5', '1', '1', '2019-01-28 23:52:48', '2019-01-28 23:52:48'),
(2415, '720', '6', '40', '5', '1', '1', '2019-01-28 23:52:48', '2019-01-28 23:52:48'),
(2416, '721', '6', '38', '5', '1', '1', '2019-01-28 23:52:48', '2019-01-28 23:52:48'),
(2417, '721', '6', '40', '5', '1', '1', '2019-01-28 23:52:49', '2019-01-28 23:52:49'),
(2418, '722', '6', '38', '5', '1', '1', '2019-01-28 23:52:49', '2019-01-28 23:52:49'),
(2419, '722', '6', '40', '5', '1', '1', '2019-01-28 23:52:49', '2019-01-28 23:52:49'),
(2420, '723', '6', '38', '5', '1', '1', '2019-01-28 23:52:49', '2019-01-28 23:52:49'),
(2421, '723', '6', '40', '5', '1', '1', '2019-01-28 23:52:49', '2019-01-28 23:52:49'),
(2422, '724', '6', '38', '5', '1', '1', '2019-01-28 23:52:49', '2019-01-28 23:52:49'),
(2423, '724', '6', '40', '5', '1', '1', '2019-01-28 23:52:49', '2019-01-28 23:52:49'),
(2424, '734', '6', '38', '3', '1', '1', '2019-01-29 08:34:57', '2019-01-29 08:34:57'),
(2425, '734', '6', '40', '2', '1', '1', '2019-01-29 08:34:57', '2019-01-29 08:34:57'),
(2426, '735', '3', '21', '3', '3', '3', '2019-01-29 09:23:25', '2019-01-29 09:23:25'),
(2427, '783', '6', '38', '3', '1', '1', '2019-01-30 04:48:31', '2019-01-30 04:48:31'),
(2428, '783', '6', '40', '2', '1', '1', '2019-01-30 04:48:31', '2019-01-30 04:48:31'),
(2429, '784', '6', '38', '3', '1', '1', '2019-01-30 04:48:40', '2019-01-30 04:48:40'),
(2430, '784', '6', '40', '2', '1', '1', '2019-01-30 04:48:40', '2019-01-30 04:48:40'),
(2445, '122', '25', '51', '6', '7', '7', '2019-01-30 05:00:06', '2019-01-30 05:00:06'),
(2446, '124', '25', '51', '6', '7', '7', '2019-01-30 05:00:06', '2019-01-30 05:00:06'),
(2447, '125', '25', '51', '6', '7', '7', '2019-01-30 05:00:06', '2019-01-30 05:00:06'),
(2448, '609', '25', '51', '6', '7', '7', '2019-01-30 05:00:06', '2019-01-30 05:00:06'),
(2449, '737', '25', '51', '6', '7', '7', '2019-01-30 05:00:06', '2019-01-30 05:00:06'),
(2450, '786', '25', '51', '6', '7', '7', '2019-01-30 05:00:06', '2019-01-30 05:00:06'),
(2451, '787', '25', '51', '6', '7', '7', '2019-01-30 05:00:07', '2019-01-30 05:00:07'),
(2452, '788', '25', '51', '6', '7', '7', '2019-01-30 05:00:07', '2019-01-30 05:00:07'),
(2453, '800', '6', '38', '3', '1', '1', '2019-02-08 09:14:50', '2019-02-08 09:14:50'),
(2454, '800', '6', '40', '2', '1', '1', '2019-02-08 09:14:50', '2019-02-08 09:14:50'),
(2455, '801', '6', '38', '3', '1', '1', '2019-02-08 09:14:54', '2019-02-08 09:14:54'),
(2456, '801', '6', '40', '2', '1', '1', '2019-02-08 09:14:54', '2019-02-08 09:14:54'),
(2457, '802', '6', '38', '3', '1', '1', '2019-02-08 09:15:03', '2019-02-08 09:15:03'),
(2458, '802', '6', '40', '2', '1', '1', '2019-02-08 09:15:03', '2019-02-08 09:15:03'),
(2459, '803', '6', '38', '3', '1', '1', '2019-02-08 09:15:03', '2019-02-08 09:15:03'),
(2460, '803', '6', '40', '2', '1', '1', '2019-02-08 09:15:03', '2019-02-08 09:15:03'),
(2461, '804', '6', '38', '3', '1', '1', '2019-02-08 09:15:04', '2019-02-08 09:15:04'),
(2462, '804', '6', '40', '2', '1', '1', '2019-02-08 09:15:04', '2019-02-08 09:15:04'),
(2463, '805', '6', '38', '3', '1', '1', '2019-02-08 09:15:04', '2019-02-08 09:15:04'),
(2464, '805', '6', '40', '2', '1', '1', '2019-02-08 09:15:04', '2019-02-08 09:15:04'),
(2473, '798', '31', '57', '6', '1', '1', '2019-02-11 01:51:12', '2019-02-11 01:51:12'),
(2474, '799', '31', '57', '6', '1', '1', '2019-02-11 01:51:12', '2019-02-11 01:51:12'),
(2475, '811', '6', '38', '3', '1', '1', '2019-02-20 02:07:03', '2019-02-20 02:07:03'),
(2476, '811', '6', '40', '2', '1', '1', '2019-02-20 02:07:03', '2019-02-20 02:07:03'),
(2477, '831', '6', '38', '3', '1', '1', '2019-03-07 07:07:01', '2019-03-07 07:07:01'),
(2478, '831', '6', '40', '2', '1', '1', '2019-03-07 07:07:01', '2019-03-07 07:07:01'),
(2479, '832', '6', '38', '3', '1', '1', '2019-03-07 07:07:42', '2019-03-07 07:07:42'),
(2480, '832', '6', '40', '2', '1', '1', '2019-03-07 07:07:43', '2019-03-07 07:07:43'),
(2481, '833', '6', '38', '3', '1', '1', '2019-03-07 07:08:18', '2019-03-07 07:08:18'),
(2482, '833', '6', '40', '2', '1', '1', '2019-03-07 07:08:18', '2019-03-07 07:08:18'),
(2483, '835', '6', '38', '3', '1', '1', '2019-04-10 07:35:24', '2019-04-10 07:35:24'),
(2484, '835', '6', '40', '2', '1', '1', '2019-04-10 07:35:24', '2019-04-10 07:35:24'),
(2485, '836', '6', '38', '3', '1', '1', '2019-04-10 07:38:50', '2019-04-10 07:38:50'),
(2486, '836', '6', '40', '2', '1', '1', '2019-04-10 07:38:50', '2019-04-10 07:38:50'),
(2487, '837', '6', '38', '3', '1', '1', '2019-04-10 07:39:51', '2019-04-10 07:39:51'),
(2488, '837', '6', '40', '2', '1', '1', '2019-04-10 07:39:51', '2019-04-10 07:39:51'),
(2489, '838', '6', '38', '3', '1', '1', '2019-04-11 04:59:45', '2019-04-11 04:59:45'),
(2490, '838', '6', '40', '2', '1', '1', '2019-04-11 04:59:45', '2019-04-11 04:59:45'),
(2491, '839', '6', '38', '3', '1', '1', '2019-04-11 05:09:40', '2019-04-11 05:09:40'),
(2492, '839', '6', '40', '2', '1', '1', '2019-04-11 05:09:40', '2019-04-11 05:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `fav_documents`
--

CREATE TABLE `fav_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_path` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `directory_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fav_documents`
--

INSERT INTO `fav_documents` (`id`, `document_id`, `document_path`, `user_id`, `project_id`, `directory_url`, `time`, `created_at`, `updated_at`) VALUES
(1, '42', 'public/documents/1/contriverz/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (6).jpg', '1', '1', 'public/documents/1/contriverz', '1547614139', '2019-01-15 23:18:59', '2019-01-15 23:18:59'),
(2, '44', 'public/documents/1/contriverz/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (4).jpg', '1', '1', 'public/documents/1/contriverz', '1547614143', '2019-01-15 23:19:03', '2019-01-15 23:19:03'),
(3, '94', 'public/documents/1/contriverz/sdsd', '1', '1', 'public/documents/1/contriverz', '1547614144', '2019-01-15 23:19:04', '2019-01-15 23:19:04'),
(4, '47', 'public/documents/1/contriverz/27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1).jpeg', '1', '1', 'public/documents/1/contriverz', '1547614199', '2019-01-15 23:19:59', '2019-01-15 23:19:59'),
(5, '110', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (1) (1).jpg', '1', '6', 'public/documents/1/erwer', '1547735959', '2019-01-17 09:09:19', '2019-01-17 09:09:19'),
(6, '114', 'public/documents/1/erwer/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF.jpeg', '1', '6', 'public/documents/1/erwer', '1548134958', '2019-01-21 23:59:18', '2019-01-21 23:59:18'),
(8, '119', 'public/documents/1/erwer/6 25367832364_Current Permissions (3).xlsx', '1', '6', 'public/documents/1/erwer', '1548244821', '2019-01-23 06:30:21', '2019-01-23 06:30:21'),
(9, '113', 'public/documents/1/erwer/9713ABFA-C1C5-4BC2-B84B-5B749916B5B2.png', '1', '6', 'public/documents/1/erwer', '1548244822', '2019-01-23 06:30:22', '2019-01-23 06:30:22'),
(10, '111', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (1).jpg', '1', '6', 'public/documents/1/erwer', '1548244823', '2019-01-23 06:30:23', '2019-01-23 06:30:23'),
(11, '130', 'public/documents/1/erwer/fdfsf/retert/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1).jpeg', '1', '6', 'public/documents/1/erwer/fdfsf/retert', '1548244849', '2019-01-23 06:30:49', '2019-01-23 06:30:49'),
(12, '133', 'public/documents/1/erwer/fdfsf/retert/6 25367832364_Current Permissions (3) (1).xlsx', '1', '6', 'public/documents/1/erwer/fdfsf/retert', '1548244850', '2019-01-23 06:30:50', '2019-01-23 06:30:50'),
(13, '134', 'public/documents/1/erwer/fdfsf/retert/6 25367832364_Current Permissions (3) (2) (1).xlsx', '1', '6', 'public/documents/1/erwer/fdfsf/retert', '1548244851', '2019-01-23 06:30:51', '2019-01-23 06:30:51'),
(14, '129', 'public/documents/1/erwer/fdfsf/retert/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1) (1).jpeg', '1', '6', 'public/documents/1/erwer/fdfsf/retert', '1548244852', '2019-01-23 06:30:52', '2019-01-23 06:30:52'),
(15, '131', 'public/documents/1/erwer/fdfsf/retert/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF.jpeg', '1', '6', 'public/documents/1/erwer/fdfsf/retert', '1548244853', '2019-01-23 06:30:53', '2019-01-23 06:30:53'),
(16, '132', 'public/documents/1/erwer/fdfsf/retert/6 25367832364_Current Permissions (3) (1) (1).xlsx', '1', '6', 'public/documents/1/erwer/fdfsf/retert', '1548244853', '2019-01-23 06:30:53', '2019-01-23 06:30:53'),
(17, '127', 'public/documents/1/erwer/fdfsf/retert', '1', '6', 'public/documents/1/erwer/fdfsf', '1548244878', '2019-01-23 06:31:18', '2019-01-23 06:31:18'),
(18, '135', 'public/documents/1/erwer/rerdfgsfg/dfgf', '1', '6', 'public/documents/1/erwer/rer', '1548244900', '2019-01-23 06:31:40', '2019-01-28 01:46:50'),
(20, '137', 'public/documents/7/test/Test-1', '7', '8', 'public/documents/7/test/just_verify', '1548245285', '2019-01-23 06:38:05', '2019-01-23 06:38:05'),
(22, '142', 'public/documents/7/tset/infrazone.docx', '7', '13', 'public/documents/7/tset', '1548246240', '2019-01-23 06:54:00', '2019-01-23 06:54:00'),
(23, '141', 'public/documents/7/tset/Jellyfish.jpg', '7', '13', 'public/documents/7/tset', '1548246303', '2019-01-23 06:55:03', '2019-01-23 06:55:03'),
(28, '146', 'public/documents/8/tester_testing12/Chrysanthemum.jpg', '8', '16', 'public/documents/8/tester_testing12', '1548307133', '2019-01-23 23:48:53', '2019-01-23 23:48:53'),
(29, '147', 'public/documents/8/tester_testing12/Desert.jpg', '8', '16', 'public/documents/8/tester_testing12', '1548307138', '2019-01-23 23:48:58', '2019-01-23 23:48:58'),
(31, '150', 'public/documents/8/testing/Chrysanthem.jpg', '8', '15', 'public/documents/8/testing', '1548309369', '2019-01-24 00:26:09', '2019-01-24 00:47:24'),
(33, '148', 'public/documents/8/tester_testing12/tester_', '8', '16', 'public/documents/8/tester_testing12', '1548392794', '2019-01-24 23:36:34', '2019-01-24 23:36:34'),
(37, '610', 'public/documents/7/test1/hey_check in folder', '7', '22', 'public/documents/7/test1', '1548659394', '2019-01-28 01:39:54', '2019-01-28 01:39:54'),
(39, '611', 'public/documents/7/test1/Jellyfish (1).jpg', '7', '22', 'public/documents/7/test1', '1548667766', '2019-01-28 03:59:26', '2019-01-28 03:59:26'),
(40, '732', 'public/documents/7/test1/8uy7u87', '7', '22', 'public/documents/7/test1', '1548670973', '2019-01-28 04:52:53', '2019-01-28 04:52:53'),
(46, '399', 'public/documents/1/erwer/rer-copy', '1', '6', 'public/documents/1/erwer', '1548739049', '2019-01-28 23:47:29', '2019-01-28 23:47:29'),
(47, '115', 'public/documents/1/erwer/fdfsf', '1', '6', 'public/documents/1/erwer', '1548739050', '2019-01-28 23:47:30', '2019-01-28 23:47:30'),
(48, '564', 'public/documents/1/erwer/2 Chrysanthemum (1) - Copy - Copy - Copy (1).pdf', '1', '6', 'public/documents/1/erwer', '1548739052', '2019-01-28 23:47:32', '2019-01-28 23:47:32'),
(49, '795', 'public/documents/1/ioiijoio/Koala.jpg', '1', '29', 'public/documents/1/ioiijoio', '1549440645', '2019-02-06 02:40:45', '2019-02-06 02:40:45'),
(50, '109', 'public/documents/1/erwer/rerdfgsfg', '1', '6', 'public/documents/1/erwer', '1549445234', '2019-02-06 03:57:14', '2019-02-06 03:57:14'),
(51, '563', 'public/documents/1/erwer/terter', '1', '6', 'public/documents/1/erwer', '1549445268', '2019-02-06 03:57:48', '2019-02-06 03:57:48'),
(52, '612', 'public/documents/1/erwer/fdfsf-copy', '1', '6', 'public/documents/1/erwer', '1549445269', '2019-02-06 03:57:49', '2019-02-06 03:57:49'),
(53, '401', 'public/documents/1/erwer/rer-copy-copy', '1', '6', 'public/documents/1/erwer', '1549445269', '2019-02-06 03:57:49', '2019-02-06 03:57:49'),
(54, '841', 'public/documents/1/re/25367832364_Index (1).xlsx', '1', '38', 'public/documents/1/re', '1555400286', '2019-04-16 02:08:06', '2019-04-16 02:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `group_for` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collaboration_with` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_limit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_date` date DEFAULT NULL,
  `QA_access_limit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `project_id`, `group_status`, `group_for`, `group_user_type`, `collaboration_with`, `access_limit`, `active_date`, `QA_access_limit`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '1', 1, 'Administrator', 'Administrator', 'all_groups', '1', NULL, '0', '1', '1', '2018-12-27 08:42:09', '2018-12-27 08:42:09'),
(2, 'test', '1', 1, 'user', 'Collaboration_users', 'own_group', '1', NULL, '0', '1', '1', '2018-12-27 09:20:54', '2018-12-27 09:20:54'),
(3, 'Administrator', '2', 1, 'Administrator', 'Administrator', 'all_groups', '1', NULL, '0', '2', '2', '2018-12-28 23:30:21', '2018-12-28 23:30:21'),
(4, 'j9mi0o,pp;.', '2', 1, 'user', 'Collaboration_users', 'own_group', '1', NULL, '0', '2', '2', '2018-12-28 23:35:44', '2018-12-28 23:35:44'),
(5, '23213213', '1', 1, 'user', 'Collaboration_users', 'own_group', '1', NULL, '0', '1', '1', '2018-12-29 00:04:02', '2018-12-29 00:04:02'),
(7, 'Administrator', '3', 1, 'Administrator', 'Administrator', 'all_groups', '1', NULL, '0', '3', '3', '2018-12-29 08:20:37', '2018-12-29 08:20:37'),
(16, 'Administrator', '4', 1, 'Administrator', 'Administrator', 'all_groups', '1', NULL, '0', '4', '4', '2018-12-29 09:13:53', '2018-12-29 09:13:53'),
(17, 'FDD', '4', 1, 'user', 'Collaboration_users', 'all_group', '2', '2019-01-02', '0', '4', '4', '2018-12-29 09:17:11', '2018-12-29 09:17:11'),
(18, 'titruru', '1', 1, 'user', 'Collaboration_users', 'own_group', '1', NULL, '0', '1', '1', '2019-01-02 08:49:03', '2019-01-02 08:49:03'),
(19, 'Administrator', '5', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '1', '1', '2019-01-04 04:27:26', '2019-01-04 04:27:26'),
(20, 'test', '3', 1, 'user', 'Collaboration_users', 'own_group', '1', NULL, '0', '3', '3', '2019-01-14 09:42:58', '2019-01-14 09:42:58'),
(21, 'rtretretrt', '3', 1, 'user', 'Collaboration_users', 'own_group', '1', NULL, '0', '3', '3', '2019-01-14 09:43:09', '2019-01-14 09:43:09'),
(22, 'Administrator', '6', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '1', '1', '2019-01-17 01:21:07', '2019-01-17 01:21:07'),
(24, 'Administrator', '7', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '2', '2', '2019-01-18 05:29:12', '2019-01-18 05:29:12'),
(25, 'Administrator', '8', 1, 'Administrator', 'Administrator', 'all_groups', '1', NULL, '0', '7', '7', '2019-01-23 05:31:14', '2019-01-23 05:31:14'),
(26, 'Administrator', '9', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '7', '7', '2019-01-23 06:12:13', '2019-01-23 06:12:13'),
(27, 'Administrator', '10', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '7', '7', '2019-01-23 06:12:35', '2019-01-23 06:12:35'),
(28, 'Administrator', '11', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '7', '7', '2019-01-23 06:13:40', '2019-01-23 06:13:40'),
(29, 'Administrator', '12', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '7', '7', '2019-01-23 06:19:05', '2019-01-23 06:19:05'),
(30, 'Administrator', '13', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '7', '7', '2019-01-23 06:42:50', '2019-01-23 06:42:50'),
(31, 'Administrator', '14', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '7', '7', '2019-01-23 06:43:22', '2019-01-23 06:43:22'),
(32, 'test', '13', 1, 'user', 'Individual_users', 'own_group', '1', NULL, '0', '7', '7', '2019-01-23 07:06:34', '2019-01-23 07:06:34'),
(33, 'test', '13', 1, 'user', 'Collaboration_users', 'users_group', '1', NULL, '0', '7', '7', '2019-01-23 07:13:18', '2019-01-23 07:13:18'),
(34, 'Administrator', '15', 1, 'Administrator', 'Administrator', 'all_groups', '1', NULL, '0', '8', '8', '2019-01-23 23:27:08', '2019-01-23 23:27:08'),
(35, 'Administrator', '16', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '8', '8', '2019-01-23 23:37:39', '2019-01-23 23:37:39'),
(36, 'y6hy6h', '16', 1, 'user', 'Collaboration_users', 'own_group', '1', NULL, '0', '8', '8', '2019-01-23 23:49:15', '2019-01-23 23:49:15'),
(37, 'Administrator', '17', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '7', '7', '2019-01-24 01:28:48', '2019-01-24 01:28:48'),
(38, 'retretk', '6', 1, 'user', 'Collaboration_users', 'own_group', '2', '2019-01-30', '0', '1', '1', '2019-01-24 04:10:25', '2019-01-27 23:43:08'),
(39, 'Administrator', '18', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '7', '7', '2019-01-24 04:19:09', '2019-01-24 04:19:09'),
(40, 'ghjghj', '6', 1, 'user', 'Individual_users', 'own_group', '1', NULL, '0', '1', '1', '2019-01-27 23:45:06', '2019-01-27 23:45:06'),
(41, 'Administrator', '19', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '7', '7', '2019-01-27 23:47:27', '2019-01-27 23:47:27'),
(42, 'Administrator', '20', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '7', '7', '2019-01-28 00:04:37', '2019-01-28 00:04:37'),
(44, 'Administrator', '22', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '7', '7', '2019-01-28 00:25:20', '2019-01-28 00:25:20'),
(45, 'test1', '22', 1, 'user', 'Collaboration_users', 'own_group', '1', NULL, '0', '7', '7', '2019-01-28 00:51:03', '2019-01-28 00:51:03'),
(46, 'Administrator', '23', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '7', '7', '2019-01-28 04:29:31', '2019-01-28 04:29:31'),
(47, 'Administrator', '24', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '7', '7', '2019-01-30 04:06:46', '2019-01-30 04:06:46'),
(48, 'Administrator', '25', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '7', '7', '2019-01-30 04:07:32', '2019-01-30 04:07:32'),
(49, 'Administrator', '26', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '7', '7', '2019-01-30 04:11:01', '2019-01-30 04:11:01'),
(50, 'Administrator', '27', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '7', '7', '2019-01-30 04:12:41', '2019-01-30 04:12:41'),
(51, 'jkjnkj', '25', 1, 'user', 'Collaboration_users', 'own_group', '1', NULL, '0', '7', '7', '2019-01-30 04:55:44', '2019-01-30 04:55:44'),
(52, 'Administrator', '28', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '7', '7', '2019-01-30 05:04:14', '2019-01-30 05:04:14'),
(53, 'Administrator', '29', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '1', '1', '2019-02-04 07:25:17', '2019-02-04 07:25:17'),
(54, 'Administrator', '30', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '4', '4', '2019-02-05 07:10:46', '2019-02-05 07:10:46'),
(55, 'Administrator', '31', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '1', '1', '2019-02-07 01:07:10', '2019-02-07 01:07:10'),
(56, 'Administrator', '32', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '9', '9', '2019-02-08 09:19:22', '2019-02-08 09:19:22'),
(57, 'uytuyu', '31', 1, 'user', 'Collaboration_users', 'users_group', '1', NULL, '7', '1', '1', '2019-02-11 01:49:35', '2019-02-11 01:49:35'),
(58, 'Administrator', '33', 1, 'Administrator', 'Administrator', 'all_groups', '1', NULL, '0', '10', '10', '2019-02-18 21:50:52', '2019-02-18 21:50:52'),
(59, 'Administrator', '34', 1, 'Administrator', 'Administrator', 'all_groups', '1', NULL, '0', '11', '11', '2019-02-21 08:24:50', '2019-02-21 08:24:50'),
(60, 'Administrator', '35', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '1', '1', '2019-02-22 05:42:31', '2019-02-22 05:42:31'),
(61, 'Administrator', '36', 1, 'Administrator', 'Administrator', 'all_groups', '1', NULL, '0', '12', '12', '2019-02-25 07:19:14', '2019-02-25 07:19:14'),
(62, 'Administrator', '37', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '1', '1', '2019-02-27 05:59:52', '2019-02-27 05:59:52'),
(63, 'Administrator', '38', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '1', '1', '2019-04-16 00:46:34', '2019-04-16 00:46:34'),
(64, 'Administrator', '39', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '1', '1', '2019-04-16 06:45:01', '2019-04-16 06:45:01'),
(65, 'Administrator', '40', 1, 'Administrator', 'Administrator', 'all_groups', '1', NULL, '0', '13', '13', '2019-04-17 00:50:46', '2019-04-17 00:50:46'),
(66, 'Administrator', '41', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '13', '13', '2019-04-28 23:43:55', '2019-04-28 23:43:55'),
(67, 'Administrator', '42', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '13', '13', '2019-04-28 23:50:13', '2019-04-28 23:50:13'),
(68, 'Administrator', '43', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '1', '1', '2019-04-28 23:53:04', '2019-04-28 23:53:04'),
(69, 'Administrator', '44', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '1', '1', '2019-04-28 23:53:41', '2019-04-28 23:53:41'),
(70, 'Administrator', '45', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '13', '13', '2019-04-28 23:54:28', '2019-04-28 23:54:28'),
(71, 'Administrator', '46', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '1', '1', '2019-04-28 23:58:47', '2019-04-28 23:58:47'),
(72, 'Administrator', '47', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '13', '13', '2019-04-29 04:24:40', '2019-04-29 04:24:40'),
(73, 'Administrator', '48', 1, 'Administrator', 'Administrator', 'all_groups', '1', NULL, '0', '14', '14', '2019-04-30 04:01:21', '2019-04-30 04:01:21'),
(74, 'Administrator', '49', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '14', '14', '2019-04-30 04:02:34', '2019-04-30 04:02:34'),
(75, 'Administrator', '50', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '1', '1', '2019-04-30 04:36:03', '2019-04-30 04:36:03'),
(76, 'Administrator', '51', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '1', '1', '2019-04-30 04:44:00', '2019-04-30 04:44:00'),
(77, 'Administrator', '52', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '14', '14', '2019-04-30 04:50:23', '2019-04-30 04:50:23'),
(78, 'Administrator', '53', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '14', '14', '2019-04-30 05:38:48', '2019-04-30 05:38:48'),
(79, 'Administrator', '54', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '14', '14', '2019-04-30 05:39:19', '2019-04-30 05:39:19'),
(80, 'Administrator', '55', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '14', '14', '2019-04-30 05:40:23', '2019-04-30 05:40:23'),
(81, 'Administrator', '76', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '14', '14', '2019-04-30 05:58:04', '2019-04-30 05:58:04'),
(82, 'Administrator', '77', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '14', '14', '2019-04-30 06:01:23', '2019-04-30 06:01:23'),
(83, 'Administrator', '78', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '14', '14', '2019-04-30 06:02:02', '2019-04-30 06:02:02'),
(84, 'Administrator', '79', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '14', '14', '2019-04-30 06:02:59', '2019-04-30 06:02:59'),
(85, 'Administrator', '80', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '14', '14', '2019-04-30 06:07:07', '2019-04-30 06:07:07'),
(86, 'Administrator', '81', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '14', '14', '2019-04-30 06:46:12', '2019-04-30 06:46:12'),
(87, 'Administrator', '82', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '14', '14', '2019-04-30 06:53:12', '2019-04-30 06:53:12'),
(88, 'Administrator', '83', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '14', '14', '2019-04-30 06:54:53', '2019-04-30 06:54:53'),
(89, 'Administrator', '84', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '14', '14', '2019-04-30 06:56:23', '2019-04-30 06:56:23'),
(90, 'Administrator', '85', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '14', '14', '2019-04-30 06:58:40', '2019-04-30 06:58:40'),
(91, 'Administrator', '86', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '14', '14', '2019-04-30 06:59:06', '2019-04-30 06:59:06'),
(92, 'Administrator', '87', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '14', '14', '2019-04-30 07:02:49', '2019-04-30 07:02:49'),
(93, 'Administrator', '88', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '14', '14', '2019-04-30 07:03:28', '2019-04-30 07:03:28'),
(94, 'Administrator', '89', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '13', '13', '2019-05-01 00:19:29', '2019-05-01 00:19:29'),
(95, 'Administrator', '90', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '13', '13', '2019-05-01 00:19:52', '2019-05-01 00:19:52'),
(96, 'Administrator', '91', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '13', '13', '2019-05-01 00:42:56', '2019-05-01 00:42:56'),
(97, 'Administrator', '92', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '1', '1', '2019-05-01 05:05:31', '2019-05-01 05:05:31'),
(98, 'Administrator', '93', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '1', '1', '2019-05-01 05:05:54', '2019-05-01 05:05:54'),
(99, 'Administrator', '94', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '1', '1', '2019-05-01 07:21:35', '2019-05-01 07:21:35'),
(100, 'Administrator', '95', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '1', '1', '2019-05-01 07:21:51', '2019-05-01 07:21:51'),
(101, 'Administrator', '96', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '1', '1', '2019-05-01 07:24:27', '2019-05-01 07:24:27'),
(102, 'Administrator', '92', 1, 'Administrator', 'Administrator', 'all_group', '1', NULL, '0', '6', '6', '2020-03-05 06:33:29', '2020-03-05 06:33:29');

-- --------------------------------------------------------

--
-- Table structure for table `groups_reports`
--

CREATE TABLE `groups_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

CREATE TABLE `group_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_limit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_date` date DEFAULT NULL,
  `access_qa` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_members`
--

INSERT INTO `group_members` (`id`, `group_id`, `project_id`, `member_email`, `member_status`, `user_type`, `role`, `access_limit`, `active_date`, `access_qa`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'priyanshu.chauhan@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '1', '1', '2018-12-27 08:42:09', '2018-12-27 08:42:09'),
(2, '2', '1', 'ankit.chauhan@contriverz.com', '1', 'user', '1', '1', NULL, '3', '1', '1', '2018-12-27 09:21:13', '2018-12-27 09:21:13'),
(3, '2', '1', 'vishal.ojha@contriverz.com', '1', 'user', '1', '1', NULL, '3', '1', '1', '2018-12-28 05:27:46', '2018-12-28 05:27:46'),
(4, '3', '2', 'gdeep@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '2', '2', '2018-12-28 23:30:21', '2018-12-28 23:30:21'),
(5, '4', '2', 'priyanshu.chauhan@contriverz.com', '1', 'user', '1', '1', NULL, '3', '2', '2', '2018-12-28 23:36:25', '2018-12-28 23:36:25'),
(6, '7', '3', 'ankit.chauhan@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '3', '3', '2018-12-29 08:20:37', '2018-12-29 08:20:37'),
(7, '16', '4', 'dc@collinsdale.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '4', '4', '2018-12-29 09:13:53', '2018-12-29 09:13:53'),
(8, '17', '4', 'danilo@cambo.it', '1', 'user', '1', '1', NULL, '3', '4', '4', '2018-12-29 09:17:30', '2018-12-29 09:17:30'),
(10, '0', '1', 'satveer17119773434@gmail.com', '1', 'user', '1', '1', NULL, '3', '1', '1', '2019-01-02 05:11:23', '2019-01-02 05:11:23'),
(11, '2', '1', 'pramod.kumar@contriverz.com', '1', 'user', '1', '1', NULL, '3', '1', '1', '2019-01-03 00:45:49', '2019-01-03 00:45:49'),
(12, '19', '5', 'priyanshu.chauhan@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '1', '1', '2019-01-04 04:27:26', '2019-01-04 04:27:26'),
(13, '21', '3', 'erwer@gmail.com', '1', 'user', '1', '1', NULL, '3', '3', '3', '2019-01-14 09:43:40', '2019-01-14 09:43:40'),
(14, '21', '3', 'pramod.kumar@contriverz.com', '1', 'user', '1', '1', NULL, '3', '3', '3', '2019-01-15 08:06:42', '2019-01-15 08:06:42'),
(15, '22', '6', 'priyanshu.chauhan@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '1', '1', '2019-01-17 01:21:07', '2019-01-17 01:21:07'),
(18, '24', '7', 'gdeep@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '2', '2', '2019-01-18 05:29:12', '2019-01-18 05:29:12'),
(19, '25', '8', 'kavita.sharma@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '7', '7', '2019-01-23 05:31:14', '2019-01-23 05:31:14'),
(20, '26', '9', 'kavita.sharma@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '7', '7', '2019-01-23 06:12:13', '2019-01-23 06:12:13'),
(21, '27', '10', 'kavita.sharma@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '7', '7', '2019-01-23 06:12:35', '2019-01-23 06:12:35'),
(22, '28', '11', 'kavita.sharma@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '7', '7', '2019-01-23 06:13:40', '2019-01-23 06:13:40'),
(23, '29', '12', 'kavita.sharma@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '7', '7', '2019-01-23 06:19:05', '2019-01-23 06:19:05'),
(24, '30', '13', 'kavita.sharma@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '7', '7', '2019-01-23 06:42:50', '2019-01-23 06:42:50'),
(25, '31', '14', 'kavita.sharma@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '7', '7', '2019-01-23 06:43:23', '2019-01-23 06:43:23'),
(26, '33', '13', 'test@gmail.com', '1', 'user', '1', '1', NULL, '3', '7', '7', '2019-01-23 07:23:56', '2019-01-23 07:23:56'),
(27, '32', '13', 'check@gmail.com', '1', 'user', '2', '1', NULL, '3', '7', '7', '2019-01-23 07:32:47', '2019-01-23 07:32:47'),
(28, '34', '15', 'seema.arora@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '8', '8', '2019-01-23 23:27:08', '2019-01-23 23:27:08'),
(29, '35', '16', 'seema.arora@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '8', '8', '2019-01-23 23:37:39', '2019-01-23 23:37:39'),
(30, '37', '17', 'kavita.sharma@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '7', '7', '2019-01-24 01:28:49', '2019-01-24 01:28:49'),
(31, '38', '6', 'pramod.kumar@contriverz.com', '1', 'user', '1', '1', NULL, '3', '1', '1', '2019-01-24 04:10:53', '2019-01-24 04:10:53'),
(32, '39', '18', 'kavita.sharma@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '7', '7', '2019-01-24 04:19:09', '2019-01-24 04:19:09'),
(33, '41', '19', 'kavita.sharma@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '7', '7', '2019-01-27 23:47:27', '2019-01-27 23:47:27'),
(34, '42', '20', 'kavita.sharma@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '7', '7', '2019-01-28 00:04:37', '2019-01-28 00:04:37'),
(36, '44', '22', 'kavita.sharma@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '7', '7', '2019-01-28 00:25:20', '2019-01-28 00:25:20'),
(37, '46', '23', 'kavita.sharma@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '7', '7', '2019-01-28 04:29:31', '2019-01-28 04:29:31'),
(38, '47', '24', 'kavita.sharma@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '7', '7', '2019-01-30 04:06:46', '2019-01-30 04:06:46'),
(39, '48', '25', 'kavita.sharma@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '7', '7', '2019-01-30 04:07:32', '2019-01-30 04:07:32'),
(40, '49', '26', 'kavita.sharma@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '7', '7', '2019-01-30 04:11:01', '2019-01-30 04:11:01'),
(41, '50', '27', 'kavita.sharma@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '7', '7', '2019-01-30 04:12:42', '2019-01-30 04:12:42'),
(42, '52', '28', 'kavita.sharma@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '7', '7', '2019-01-30 05:04:14', '2019-01-30 05:04:14'),
(43, '53', '29', 'priyanshu.chauhan@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '1', '1', '2019-02-04 07:25:17', '2019-02-04 07:25:17'),
(44, '54', '30', 'dc@collinsdale.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '4', '4', '2019-02-05 07:10:46', '2019-02-05 07:10:46'),
(45, '55', '31', 'priyanshu.chauhan@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '1', '1', '2019-02-07 01:07:10', '2019-02-07 01:07:10'),
(46, '56', '32', 'dchoudhary@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '9', '9', '2019-02-08 09:19:22', '2019-02-08 09:19:22'),
(47, '57', '31', 'pramod.kumar@contriverz.com', '1', 'user', '1', '1', NULL, '3', '1', '1', '2019-02-11 01:49:59', '2019-02-11 01:49:59'),
(48, '58', '33', 'priyanshu7111997@gmail.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '10', '10', '2019-02-18 21:50:52', '2019-02-18 21:50:52'),
(49, '59', '34', 'alberto.cerri@collinsdale.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '11', '11', '2019-02-21 08:24:50', '2019-02-21 08:24:50'),
(50, '60', '35', 'priyanshu.chauhan@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '1', '1', '2019-02-22 05:42:31', '2019-02-22 05:42:31'),
(51, '61', '36', 'vellabnda420@gmail.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '12', '12', '2019-02-25 07:19:15', '2019-02-25 07:19:15'),
(52, '62', '37', 'priyanshu.chauhan@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '1', '1', '2019-02-27 05:59:52', '2019-02-27 05:59:52'),
(53, '63', '38', 'priyanshu.chauhan@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '1', '1', '2019-04-16 00:46:34', '2019-04-16 00:46:34'),
(54, '64', '39', 'priyanshu.chauhan@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '1', '1', '2019-04-16 06:45:01', '2019-04-16 06:45:01'),
(55, '65', '40', 'rahul.mamotra@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '13', '13', '2019-04-17 00:50:46', '2019-04-17 00:50:46'),
(56, '66', '41', 'rahul.mamotra@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '13', '13', '2019-04-28 23:43:55', '2019-04-28 23:43:55'),
(57, '67', '42', 'rahul.mamotra@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '13', '13', '2019-04-28 23:50:14', '2019-04-28 23:50:14'),
(58, '68', '43', 'priyanshu.chauhan@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '1', '1', '2019-04-28 23:53:04', '2019-04-28 23:53:04'),
(59, '69', '44', 'priyanshu.chauhan@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '1', '1', '2019-04-28 23:53:41', '2019-04-28 23:53:41'),
(60, '70', '45', 'rahul.mamotra@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '13', '13', '2019-04-28 23:54:28', '2019-04-28 23:54:28'),
(61, '71', '46', 'priyanshu.chauhan@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '1', '1', '2019-04-28 23:58:47', '2019-04-28 23:58:47'),
(62, '72', '47', 'rahul.mamotra@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '13', '13', '2019-04-29 04:24:40', '2019-04-29 04:24:40'),
(63, '73', '48', 'd.carolini@collinsdale.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '14', '14', '2019-04-30 04:01:21', '2019-04-30 04:01:21'),
(64, '74', '49', 'd.carolini@collinsdale.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '14', '14', '2019-04-30 04:02:34', '2019-04-30 04:02:34'),
(65, '75', '50', 'priyanshu.chauhan@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '1', '1', '2019-04-30 04:36:03', '2019-04-30 04:36:03'),
(66, '76', '51', 'priyanshu.chauhan@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '1', '1', '2019-04-30 04:44:00', '2019-04-30 04:44:00'),
(67, '77', '52', 'd.carolini@collinsdale.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '14', '14', '2019-04-30 04:50:23', '2019-04-30 04:50:23'),
(68, '78', '53', 'd.carolini@collinsdale.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '14', '14', '2019-04-30 05:38:48', '2019-04-30 05:38:48'),
(69, '79', '54', 'd.carolini@collinsdale.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '14', '14', '2019-04-30 05:39:19', '2019-04-30 05:39:19'),
(70, '80', '55', 'd.carolini@collinsdale.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '14', '14', '2019-04-30 05:40:23', '2019-04-30 05:40:23'),
(71, '81', '76', 'd.carolini@collinsdale.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '14', '14', '2019-04-30 05:58:04', '2019-04-30 05:58:04'),
(72, '82', '77', 'd.carolini@collinsdale.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '14', '14', '2019-04-30 06:01:23', '2019-04-30 06:01:23'),
(73, '83', '78', 'd.carolini@collinsdale.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '14', '14', '2019-04-30 06:02:02', '2019-04-30 06:02:02'),
(74, '84', '79', 'd.carolini@collinsdale.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '14', '14', '2019-04-30 06:02:59', '2019-04-30 06:02:59'),
(75, '85', '80', 'd.carolini@collinsdale.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '14', '14', '2019-04-30 06:07:07', '2019-04-30 06:07:07'),
(76, '86', '81', 'd.carolini@collinsdale.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '14', '14', '2019-04-30 06:46:12', '2019-04-30 06:46:12'),
(77, '87', '82', 'd.carolini@collinsdale.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '14', '14', '2019-04-30 06:53:12', '2019-04-30 06:53:12'),
(78, '88', '83', 'd.carolini@collinsdale.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '14', '14', '2019-04-30 06:54:54', '2019-04-30 06:54:54'),
(79, '89', '84', 'd.carolini@collinsdale.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '14', '14', '2019-04-30 06:56:23', '2019-04-30 06:56:23'),
(80, '90', '85', 'd.carolini@collinsdale.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '14', '14', '2019-04-30 06:58:41', '2019-04-30 06:58:41'),
(81, '91', '86', 'd.carolini@collinsdale.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '14', '14', '2019-04-30 06:59:06', '2019-04-30 06:59:06'),
(82, '92', '87', 'd.carolini@collinsdale.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '14', '14', '2019-04-30 07:02:49', '2019-04-30 07:02:49'),
(83, '93', '88', 'd.carolini@collinsdale.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '14', '14', '2019-04-30 07:03:28', '2019-04-30 07:03:28'),
(84, '94', '89', 'rahul.mamotra@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '13', '13', '2019-05-01 00:19:29', '2019-05-01 00:19:29'),
(85, '95', '90', 'rahul.mamotra@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '13', '13', '2019-05-01 00:19:52', '2019-05-01 00:19:52'),
(86, '96', '91', 'rahul.mamotra@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '13', '13', '2019-05-01 00:42:56', '2019-05-01 00:42:56'),
(87, '97', '92', 'priyanshu.chauhan@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '1', '1', '2019-05-01 05:05:31', '2019-05-01 05:05:31'),
(88, '98', '93', 'priyanshu.chauhan@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '1', '1', '2019-05-01 05:05:54', '2019-05-01 05:05:54'),
(89, '99', '94', 'priyanshu.chauhan@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '1', '1', '2019-05-01 07:21:35', '2019-05-01 07:21:35'),
(90, '100', '95', 'priyanshu.chauhan@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '1', '1', '2019-05-01 07:21:51', '2019-05-01 07:21:51'),
(91, '101', '96', 'priyanshu.chauhan@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '1', '1', '2019-05-01 07:24:27', '2019-05-01 07:24:27'),
(92, '102', '92', 'pramod.kumar@contriverz.com', '1', 'Administrator', 'Administrator', '1', NULL, '00', '6', '6', '2020-03-05 06:33:29', '2020-03-05 06:33:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_21_133608_create_projects_table', 1),
(4, '2018_09_18_061347_create_groups_table', 1),
(5, '2018_09_18_135616_create_group__members_table', 1),
(6, '2018_10_08_132028_add_company_to_users', 1),
(7, '2018_10_10_082812_add_server_location_to_projects', 1),
(8, '2018_10_10_120124_create_documents_table', 1),
(9, '2018_10_11_131113_create_delete_documents_table', 1),
(10, '2018_10_17_050239_create_fav_documents_table', 1),
(11, '2018_10_18_060456_create_notes_table', 1),
(12, '2018_11_20_110749_create_collaboration_with_group_table', 1),
(13, '2018_11_26_053307_create_document_permission_table', 1),
(14, '2018_12_18_103720_create_question_reply_table', 1),
(15, '2018_12_19_114802_create_questions_table', 1),
(16, '2019_01_03_063031_create_reports_table', 2),
(17, '2019_01_03_105425_create_action_type_table', 2),
(18, '2019_01_17_081416_create_groups_reports_table', 3),
(19, '2019_01_17_081439_create_questions_reports_table', 3),
(20, '2019_01_22_111150_create_admin_users_table', 3),
(21, '2019_01_30_080303_create_settings_table', 4),
(22, '2019_01_31_102418_create_share_documents_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `document_id`, `content`, `user_id`, `project_id`, `priority`, `time`, `updated_time`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '842', 'ewre', '1', '38', '1', '1545920044', '', '1', '1', '2018-12-27 08:44:04', '2018-12-27 08:44:04'),
(2, '6', 'retre', '1', '1', '1', '1545994934', '', '1', '1', '2018-12-28 05:32:14', '2018-12-28 05:32:14'),
(3, '15', '67', '1', '1', '1', '1545995287', '', '1', '1', '2018-12-28 05:38:07', '2018-12-28 05:38:07'),
(4, '19', 'uiuiu', '1', '1', '1', '1546083980', '', '1', '1', '2018-12-29 06:16:20', '2018-12-29 06:16:20'),
(5, '4', 'yuyu', '1', '1', '1', '1546092409', '', '1', '1', '2018-12-29 08:36:49', '2018-12-29 08:36:49'),
(6, '38', 'lklkl', '1', '1', '1', '1546836980', '', '1', '1', '2019-01-06 23:26:20', '2019-01-06 23:26:20'),
(7, '44', 'dfd', '1', '1', '1', '1546957253', '', '1', '1', '2019-01-08 08:50:53', '2019-01-08 08:50:53'),
(8, '43', 'Hejej', '3', '1', '1', '1547255163', '', '3', '3', '2019-01-11 19:36:03', '2019-01-11 19:36:03'),
(9, '77', 'fgf', '3', '3', '1', '1547478725', '', '3', '3', '2019-01-14 09:42:05', '2019-01-14 09:42:05'),
(10, '110', '952', '6', '6', '1', '1547805800', '', '6', '6', '2019-01-18 04:33:20', '2019-01-18 04:33:20'),
(11, '110', 'wewe', '1', '6', '1', '1548132551', '', '1', '1', '2019-01-21 23:19:11', '2019-01-21 23:19:11'),
(12, '111', 'wewqe', '1', '6', '1', '1548132562', '', '1', '1', '2019-01-21 23:19:22', '2019-01-21 23:19:22'),
(13, '127', 'ytuyfdf', '1', '6', '1', '1548244881', '1548245107', '1', '1', '2019-01-23 06:31:21', '2019-01-23 06:35:07'),
(14, '135', 'ertt', '1', '6', '1', '1548244902', '', '1', '1', '2019-01-23 06:31:42', '2019-01-23 06:31:42'),
(17, '113', 'yrtytr', '1', '6', '1', '1548246897', '', '1', '1', '2019-01-23 07:04:57', '2019-01-23 07:04:57'),
(18, '146', 'testng', '8', '16', '1', '1548306569', '', '8', '8', '2019-01-23 23:39:29', '2019-01-23 23:39:29'),
(19, '147', 'hhjnjun', '8', '16', '1', '1548307110', '', '8', '8', '2019-01-23 23:48:30', '2019-01-23 23:48:30'),
(20, '148', 'huyy', '8', '16', '1', '1548307121', '', '8', '8', '2019-01-23 23:48:41', '2019-01-23 23:48:41'),
(21, '141', '++', '7', '13', '1', '1548315158', '', '7', '7', '2019-01-24 02:02:38', '2019-01-24 02:02:38'),
(22, '399', 'eqrwer', '1', '6', '1', '1548667438', '', '1', '1', '2019-01-28 03:53:58', '2019-01-28 03:53:58'),
(24, '611', '\"?\'/', '7', '22', '1', '1548670117', '', '7', '7', '2019-01-28 04:38:37', '2019-01-28 04:38:37'),
(25, '786', 'kjkjk', '7', '25', '1', '1548843831', '', '7', '7', '2019-01-30 04:53:51', '2019-01-30 04:53:51'),
(26, '787', 'nkjkmjk', '7', '25', '1', '1548843849', '', '7', '7', '2019-01-30 04:54:09', '2019-01-30 04:54:09'),
(27, '570', 'Bdbsnnsnsnsnnsns', '1', '6', '1', '1549428749', '1549428756', '1', '1', '2019-02-05 23:22:29', '2019-02-05 23:22:36'),
(28, '844', 'etets', '1', '38', '1', '1555409139', '', '1', '1', '2019-04-16 04:35:39', '2019-04-16 04:35:39');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(32, 'home', NULL, NULL, NULL),
(33, 'platform', NULL, NULL, NULL),
(34, 'solutions', NULL, NULL, NULL),
(35, 'support', NULL, NULL, NULL),
(36, 'clients', NULL, NULL, NULL),
(37, 'pricing', NULL, NULL, NULL),
(38, 'contact', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('dchoudhary@contriverz.com', '$2y$10$19ch4aM/MFl231Vi14dZ0.qHM3N1eJ5dirA66B8/dsRyQ6tiDIICq', '2019-03-05 05:05:27'),
('priyanshu.chauhan@contriverz.com', '$2y$10$6E0hZ3emZ6ovb9B0LgxQ3.tNDFU5mlc/gKkvz6ogEGN5gQ5j.6wky', '2020-03-02 06:44:56');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `industry` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `server_location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `user_id`, `project_name`, `company_name`, `is_active`, `created_by`, `updated_by`, `project_slug`, `created_at`, `updated_at`, `industry`, `server_location`) VALUES
(3, '3', '34234234', 'Contriverz', 0, '3', '3', '34234234', '2018-12-29 08:20:37', '2018-12-29 08:20:37', 'empty', 'empty'),
(4, '4', 'TAKEOFF', 'Collins Dale Capital Partners Ltd', 0, '4', '4', 'takeoff', '2018-12-29 09:13:53', '2018-12-29 09:13:53', 'empty', 'empty'),
(7, '2', '4597474', 'sfad15da5s', 0, '2', '2', '4597474', '2019-01-18 05:29:11', '2019-01-18 05:29:11', 'empty', 'London'),
(15, '8', 'testing', 'contriverz', 0, '8', '8', 'testing', '2019-01-23 23:27:08', '2019-01-23 23:27:08', 'empty', 'empty'),
(25, '7', 'test1', 'cz', 0, '7', '7', 'test1', '2019-01-30 04:07:31', '2019-01-30 04:07:31', 'empty', 'London'),
(26, '7', 'test2', 'cz', 0, '7', '7', 'test2', '2019-01-30 04:11:00', '2019-01-30 04:11:00', 'empty', 'London'),
(27, '7', 'ty87', 'u9iouu9o', 0, '7', '7', 'ty87', '2019-01-30 04:12:41', '2019-01-30 04:12:41', 'empty', 'Usa'),
(28, '7', 'test12345', 'test123', 0, '7', '7', 'test12345', '2019-01-30 05:04:14', '2019-01-30 05:04:14', 'empty', 'NewYork'),
(30, '4', 'Marketing_Material', 'Collins Dale Capital Partners Ltd', 0, '4', '4', 'marketing_material', '2019-02-05 07:10:46', '2019-02-05 07:10:46', 'empty', 'London'),
(32, '9', 'oop', 'mjk', 0, '9', '9', 'oop', '2019-02-08 09:19:22', '2019-02-08 09:19:22', 'empty', 'London'),
(33, '10', 'DreamWorker', 'dream_worker', 0, '10', '10', 'dreamworker', '2019-02-18 21:50:52', '2019-02-18 21:50:52', 'empty', 'empty'),
(34, '11', 'CDCP', 'Collins Dale Capital Partners Ltd', 0, '11', '11', 'cdcp', '2019-02-21 08:24:50', '2019-02-21 08:24:50', 'empty', 'empty'),
(36, '12', 'testapp', 'new', 0, '12', '12', 'testapp', '2019-02-25 07:19:14', '2019-02-25 07:19:14', 'empty', 'empty'),
(46, '1', 'test', 'test', 0, '1', '1', 'test', '2019-04-28 23:58:47', '2019-04-28 23:58:47', 'empty', 'India'),
(49, '14', 'Shared_Material', 'Collins Dale Capital Partners', 0, '14', '14', 'shared_material', '2019-04-30 04:02:34', '2019-04-30 04:02:34', 'empty', 'London'),
(52, '14', 'Danilo', 'Danilo', 0, '14', '14', 'danilo', '2019-04-30 04:50:23', '2019-04-30 04:50:23', 'empty', 'Usa'),
(55, '14', 'cdcp-shared-material', 'cdcp-shared-material', 0, '14', '14', 'cdcp_shared_material', '2019-04-30 05:40:22', '2019-04-30 05:40:22', 'empty', 'Usa'),
(89, '13', 'rahu_lrahul', 'rahul_rahul', 0, '13', '13', 'rahu_lrahul', '2019-05-01 00:19:29', '2019-05-01 00:19:29', 'empty', 'India'),
(91, '13', 'dsddssds-sds', 'wdwd-sdsd', 0, '13', '13', 'dsddssds_sds', '2019-05-01 00:42:56', '2019-05-01 00:42:56', 'empty', 'India'),
(92, '6', 'xvxc', 'sg', 0, '6', '6', 'xvxc', '2020-03-05 06:33:29', '2020-03-05 06:33:29', 'empty', 'Usa');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ques_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `document_id`, `project_id`, `subject`, `ques_content`, `send_by`, `send_to`, `priority`, `time`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '4', '1', 'test', 'test', '1', 'ankit.chauhan@contriverz.com', '0', '1545922291', '1', '1', '2018-12-27 09:21:31', '2018-12-27 09:21:31'),
(3, '4', '1', 'ewr', 'werewre', '1', 'ankit.chauhan@contriverz.com', '0', '1545994707', '1', '1', '2018-12-28 05:28:27', '2018-12-28 05:28:27'),
(6, '20', '1', 'ques', '4ques\n3434', '1', 'ankit.chauhan@contriverz.com', '0', '1546007335', '1', '1', '2018-12-28 08:58:55', '2018-12-28 08:58:55'),
(7, '27', '2', '[j08kopl/', 'buy8u9m,o', '2', 'priyanshu.chauhan@contriverz.com', '0', '1546060178', '2', '2', '2018-12-28 23:39:38', '2018-12-28 23:39:38'),
(8, '36', '1', 'test', 'test', '1', 'ankit.chauhan@contriverz.com', '0', '1546614008', '1', '1', '2019-01-04 09:30:08', '2019-01-04 09:30:08'),
(9, '35', '1', 'sdf', 'sdfsdfdf', '1', 'ankit.chauhan@contriverz.com', '0', '1546614219', '1', '1', '2019-01-04 09:33:39', '2019-01-04 09:33:39'),
(10, '1', '1', 'fg', 'dgfdgfdg', '1', 'vishal.ojha@contriverz.com', '0', '1546614271', '1', '1', '2019-01-04 09:34:31', '2019-01-04 09:34:31'),
(11, '43', '1', 'Test', 'Tujhse', '3', 'priyanshu.chauhan@contriverz.com', '0', '1547255123', '3', '3', '2019-01-11 19:35:23', '2019-01-11 19:35:23'),
(17, '143', '13', 'test', 'tstsett', '7', 'test@gmail.com', '0', '1548248063', '7', '7', '2019-01-23 07:24:23', '2019-01-23 07:24:23'),
(18, '139', '13', 'testt', 'testse', '7', 'check@gmail.com', '0', '1548248622', '7', '7', '2019-01-23 07:33:42', '2019-01-23 07:33:42'),
(24, '122', '22', 'p', '\"gvhg', '7', 'kavita.sharma@contriverz.com', '0', '1548660838', '7', '7', '2019-01-28 02:03:58', '2019-01-28 02:03:58'),
(25, '108', '6', 'fgh', 'fgh', '1', 'priyanshu.chauhan@contriverz.com', '0', '1548661183', '1', '1', '2019-01-28 02:09:43', '2019-01-28 02:09:43'),
(27, '122', '22', 'test', 'test', '7', 'kavita.sharma@contriverz.com', '0', '1548664499', '7', '7', '2019-01-28 03:04:59', '2019-01-28 03:04:59'),
(29, '122', '25', 'test', 'test', '7', 'kavita.sharma@contriverz.com', '0', '1548841810', '7', '7', '2019-01-30 04:20:10', '2019-01-30 04:20:10'),
(30, '122', '25', 'test', 'testt test test test test tst', '7', 'kavita.sharma@contriverz.com', '0', '1548841831', '7', '7', '2019-01-30 04:20:31', '2019-01-30 04:20:31');

-- --------------------------------------------------------

--
-- Table structure for table `questions_reports`
--

CREATE TABLE `questions_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question_reply`
--

CREATE TABLE `question_reply` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply_subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply_to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_reply`
--

INSERT INTO `question_reply` (`id`, `question_id`, `project_id`, `reply_subject`, `reply_content`, `reply_status`, `reply_by`, `reply_to`, `time`, `created_at`, `updated_at`) VALUES
(9, '7', '2', 'rdytfuyiop', '67rty7hujikolp', '0', 'gdeep@contriverz.com', 'priyanshu.chauhan@contriverz.com', 'Dec/30/2018 09:30:26', '2018-12-30 04:00:26', '2018-12-30 04:00:26'),
(10, '1', '1', 'trytr', 'rtyy', '0', 'priyanshu.chauhan@contriverz.com', 'ankit.chauhan@contriverz.com', 'Jan/02/2019 05:13:01', '2019-01-01 23:43:01', '2019-01-01 23:43:01'),
(11, '1', '1', 'tret', 'retre', '0', 'priyanshu.chauhan@contriverz.com', 'vishal.ojha@contriverz.com', 'Jan/02/2019 09:59:45', '2019-01-02 04:29:45', '2019-01-02 04:29:45'),
(12, '8', '1', 'qwe', 'wqewqe', '0', 'priyanshu.chauhan@contriverz.com', 'ankit.chauhan@contriverz.com', 'Jan/04/2019 15:00:32', '2019-01-04 09:30:32', '2019-01-04 09:30:32'),
(13, '8', '1', 'we', 'wewqe', '0', 'priyanshu.chauhan@contriverz.com', 'ankit.chauhan@contriverz.com', 'Jan/04/2019 15:00:38', '2019-01-04 09:30:38', '2019-01-04 09:30:38'),
(14, '8', '1', 'wqe', 'qewqewq', '0', 'priyanshu.chauhan@contriverz.com', 'ankit.chauhan@contriverz.com', 'Jan/04/2019 15:00:43', '2019-01-04 09:30:43', '2019-01-04 09:30:43'),
(15, '8', '1', 'wqe', 'wqewqew', '0', 'priyanshu.chauhan@contriverz.com', 'ankit.chauhan@contriverz.com', 'Jan/04/2019 15:00:49', '2019-01-04 09:30:49', '2019-01-04 09:30:49'),
(16, '9', '1', 'dsf', 'fdsfsdf', '0', 'priyanshu.chauhan@contriverz.com', 'pramod.kumar@contriverz.com', 'Jan/04/2019 15:04:02', '2019-01-04 09:34:02', '2019-01-04 09:34:02'),
(17, '9', '1', 'dsfsd', 'dsfdsfdf', '0', 'priyanshu.chauhan@contriverz.com', 'pramod.kumar@contriverz.com', 'Jan/04/2019 15:04:07', '2019-01-04 09:34:07', '2019-01-04 09:34:07'),
(18, '12', '6', 'ytuytu', 'Some of the countless traits of Concept are charts and tables, forms, loads of internal pages and other practical UI elements. Of course, Concept is also 100% mobile- and retina-ready, as well as compatible with all the modern web browsers. Concept is a Bootstrap Framework based template what ensures flexibility and extendability, allowing you to alter it to your regulations with', '0', 'priyanshu.chauhan@contriverz.com', 'rwer@gdfg.xokm', 'Jan/17/2019 13:34:06', '2019-01-17 08:04:06', '2019-01-17 08:04:06'),
(19, '12', '6', 'ewrwer', 'If not niche-oriented, pretty much all free Bootstrap admin dashboard templates come applicable to numerous websites and applications. Adminty is one more super versatile site canvas that will take your breath away with the number of features it rocks. With as solid admin that you can build with the out of this world Adminty, you are on the right path to see the success you want to see. Having it all in total order is a must when running a business and bringing it to an entirely new level.\n\nWith Adminty, that is very achievable.\n\nAdminty is an admin panel with three home designs and loads of other pages. It also has a full-screen button and a hide and show button for the sidebar. When both options turned on, you are all in your statistics and information, nothing else disturbing you.', '0', 'priyanshu.chauhan@contriverz.com', 'rwer@gdfg.xokm', 'Jan/17/2019 13:38:30', '2019-01-17 08:08:30', '2019-01-17 08:08:30'),
(20, '12', '6', 'saafsd', 'To some extent, free Bootstrap admin dashboard templates appear to be pretty similar at first glance. Of course, once you dig deeper, you see that that is not true. Octopus is another example of a refined, optimized and simple to use item that helps you craft top-notch admins. May the word “free” not fool you. Yes, you do not need to spend a dime to start working with Octopus. However, although Octopus is at the price of free, the features, the elements and the layouts are still there. In fact, they all have a very premium-like feel.\n\nOctopus has a nifty index page and other sections for sign up and sign in, user profile, invoice, locked screen and search results to name a few. Amongst numerous pre-built UI elements, widgets and forms, you will surely find all the must-haves and any additional ones you might consider adding as well.\nTo some extent, free Bootstrap admin dashboard templates appear to be pretty similar at first glance. Of course, once you dig deeper, you see that that is not true. Octopus is another example of a refined, optimized and simple to use item that helps you craft top-notch admins. May the word “free” not fool you. Yes, you do not need to spend a dime to start working with Octopus. However, although Octopus is at the price of free, the features, the elements and the layouts are still there. In fact, they all have a very premium-like feel.\n\nOctopus has a nifty index page and other sections for sign up and sign in, user profile, invoice, locked screen and search results to name a few. Amongst numerous pre-built UI elements, widgets and forms, you will surely find all the must-haves and any additional ones you might consider adding as well.\nTo some extent, free Bootstrap admin dashboard templates appear to be pretty similar at first glance. Of course, once you dig deeper, you see that that is not true. Octopus is another example of a refined, optimized and simple to use item that helps you craft top-notch admins. May the word “free” not fool you. Yes, you do not need to spend a dime to start working with Octopus. However, although Octopus is at the price of free, the features, the elements and the layouts are still there. In fact, they all have a very premium-like feel.\n\nOctopus has a nifty index page and other sections for sign up and sign in, user profile, invoice, locked screen and search results to name a few. Amongst numerous pre-built UI elements, widgets and forms, you will surely find all the must-haves and any additional ones you might consider adding as well.\nTo some extent, free Bootstrap admin dashboard templates appear to be pretty similar at first glance. Of course, once you dig deeper, you see that that is not true. Octopus is another example of a refined, optimized and simple to use item that helps you craft top-notch admins. May the word “free” not fool you. Yes, you do not need to spend a dime to start working with Octopus. However, although Octopus is at the price of free, the features, the elements and the layouts are still there. In fact, they all have a very premium-like feel.\n\nOctopus has a nifty index page and other sections for sign up and sign in, user profile, invoice, locked screen and search results to name a few. Amongst numerous pre-built UI elements, widgets and forms, you will surely find all the must-haves and any additional ones you might consider adding as well.\nTo some extent, free Bootstrap admin dashboard templates appear to be pretty similar at first glance. Of course, once you dig deeper, you see that that is not true. Octopus is another example of a refined, optimized and simple to use item that helps you craft top-notch admins. May the word “free” not fool you. Yes, you do not need to spend a dime to start working with Octopus. However, although Octopus is at the price of free, the features, the elements and the layouts are still there. In fact, they all have a very premium-like feel.\n\nOctopus has a nifty index page and other sections for sign up and sign in, user profile, invoice, locked screen and search results to name a few. Amongst numerous pre-built UI elements, widgets and forms, you will surely find all the must-haves and any additional ones you might consider adding as well.', '0', 'priyanshu.chauhan@contriverz.com', 'rwer@gdfg.xokm', 'Jan/17/2019 13:40:32', '2019-01-17 08:10:32', '2019-01-17 08:10:32'),
(21, '14', '6', 'yuytut', 'To some extent, free Bootstrap admin dashboard templates appear to be pretty similar at first glance. Of course, once you dig deeper, you see that that is not true. Octopus is another example of a refined, optimized and simple to use item that helps you craft top-notch admins. May the word “free” not fool you. Yes, you do not need to spend a dime to start working with Octopus. However, although Octopus is at the price of free, the features, the elements and the layouts are still there. In fact, they all have a very premium-like feel.\n\nOctopus has a nifty index page and other sections for sign up and sign in, user profile, invoice, locked screen and search results to name a few. Amongst numerous pre-built UI elements, widgets and forms, you will surely find all the must-haves and any additional ones you might consider adding as well.', '0', 'priyanshu.chauhan@contriverz.com', 'rwer@gdfg.xokm', 'Jan/17/2019 13:44:48', '2019-01-17 08:14:48', '2019-01-17 08:14:48'),
(23, '15', '6', 'as', 'sadsadd', '0', 'priyanshu.chauhan@contriverz.com', 'pramod.kumar@contriverz.com', 'Jan/22/2019 07:25:34', '2019-01-22 01:55:34', '2019-01-22 01:55:34'),
(24, '18', '13', 'test', 'tst', '0', 'kavita.sharma@contriverz.com', 'check@gmail.com', 'Jan/23/2019 13:04:19', '2019-01-23 07:34:19', '2019-01-23 07:34:19'),
(25, '15', '6', 'lkjhgcfxfghjkl', 'nhgygjk bgo;ub ougohbnlkhoi ol o9yhoillhgfdfghjkl;lkjhgf', '0', 'priyanshu.chauhan@contriverz.com', 'priyanshu.chauhan@contriverz.com,pramod.kumar@contriverz.com', 'Jan/26/2019 14:57:12', '2019-01-26 09:27:12', '2019-01-26 09:27:12'),
(26, '15', '6', 'ijkhuih', 'mkk', '0', 'priyanshu.chauhan@contriverz.com', 'pramod.kumar@contriverz.com', 'Jan/26/2019 14:58:26', '2019-01-26 09:28:26', '2019-01-26 09:28:26'),
(27, '13', '6', '5et', 'trtr', '0', 'priyanshu.chauhan@contriverz.com', 'pramod.kumar@contriverz.com', 'Jan/26/2019 14:58:38', '2019-01-26 09:28:38', '2019-01-26 09:28:38'),
(28, '13', '6', 'rdtrd', 'ttedftrf', '0', 'priyanshu.chauhan@contriverz.com', 'pramod.kumar@contriverz.com', 'Jan/26/2019 14:58:49', '2019-01-26 09:28:49', '2019-01-26 09:28:49'),
(29, '19', '6', 'adsa', 'dasdasd', '0', 'priyanshu.chauhan@contriverz.com', 'priyanshu.chauhan@contriverz.com,pramod.kumar@contriverz.com', 'Jan/28/2019 07:12:14', '2019-01-28 01:42:14', '2019-01-28 01:42:14'),
(31, '25', '6', 'tretre', 'tretret', '0', 'priyanshu.chauhan@contriverz.com', 'priyanshu.chauhan@contriverz.com', 'Jan/30/2019 09:24:12', '2019-01-30 03:54:12', '2019-01-30 03:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Auth` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `action`, `document_path`, `Auth`, `created_at`, `updated_at`) VALUES
(1, '6', 'public/documents/1/contriverz/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (5).jpg', '1', '2019-01-04 09:31:15', '2019-01-04 09:31:15'),
(2, '6', 'public/documents/1/contriverz/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (6).jpg', '1', '2019-01-04 09:31:28', '2019-01-04 09:31:28'),
(3, '10', 'public/documents/1/contriverz/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (6).jpg', '1', '2019-01-04 09:31:32', '2019-01-04 09:31:32'),
(4, '2', 'public/documents/1/contriverz/16 wdfsdfsd_Index.pdf', '1', '2019-01-04 09:32:33', '2019-01-04 09:32:33'),
(5, '2', 'public/documents/1/contriverz/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (4).jpg', '1', '2019-01-04 09:32:34', '2019-01-04 09:32:34'),
(6, '2', 'public/documents/1/contriverz/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (5).jpg', '1', '2019-01-04 09:32:34', '2019-01-04 09:32:34'),
(7, '2', 'public/documents/1/contriverz/22 Desert (2).pdf', '1', '2019-01-04 09:32:35', '2019-01-04 09:32:35'),
(8, '2', 'public/documents/1/contriverz/27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1).jpeg', '1', '2019-01-04 09:32:35', '2019-01-04 09:32:35'),
(9, '2', 'public/documents/1/contriverz/27B0CE0F-007D-4D13-817F-ED2A8E1323DF (2).jpeg', '1', '2019-01-04 09:32:36', '2019-01-04 09:32:36'),
(10, '2', 'public/documents/1/contriverz/27B0CE0F-007D-4D13-817F-ED2A8E1323DF.jpeg', '1', '2019-01-04 09:32:37', '2019-01-04 09:32:37'),
(11, '2', 'public/documents/1/contriverz/28 sept.php', '1', '2019-01-04 09:32:37', '2019-01-04 09:32:37'),
(12, '2', 'public/documents/1/contriverz/25367832364_Current Permissions (1) (1) (1) (1).xlsx', '1', '2019-01-04 09:32:37', '2019-01-04 09:32:37'),
(13, '2', 'public/documents/1/contriverz/25367832364_Current Permissions (1) (1) (1) (2).xlsx', '1', '2019-01-04 09:32:38', '2019-01-04 09:32:38'),
(14, '2', 'public/documents/1/contriverz/25367832364_Current Permissions (1) (1) (1) (3).xlsx', '1', '2019-01-04 09:32:38', '2019-01-04 09:32:38'),
(15, '2', 'public/documents/1/contriverz/25367832364_Current Permissions (1) (1) (1).xlsx', '1', '2019-01-04 09:32:39', '2019-01-04 09:32:39'),
(16, '2', 'public/documents/1/contriverz/25367832364_Current Permissions (1) (1).xlsx', '1', '2019-01-04 09:32:39', '2019-01-04 09:32:39'),
(17, '2', 'public/documents/1/contriverz/25367832364_Current Permissions (1) (2).xlsx', '1', '2019-01-04 09:32:40', '2019-01-04 09:32:40'),
(18, '2', 'public/documents/1/contriverz/25367832364_Current Permissions (1) (3).xlsx', '1', '2019-01-04 09:32:40', '2019-01-04 09:32:40'),
(19, '2', 'public/documents/1/contriverz/25367832364_Current Permissions (1) (4).xlsx', '1', '2019-01-04 09:32:41', '2019-01-04 09:32:41'),
(20, '2', 'public/documents/1/contriverz/25367832364_Current Permissions (1).xlsx', '1', '2019-01-04 09:32:41', '2019-01-04 09:32:41'),
(21, '26', 'public/documents/1/contriverz/25367832364_Current Permissions (1) (1) (1) (1).xlsx', '1', '2019-01-04 09:32:53', '2019-01-04 09:32:53'),
(22, '13', 'public/documents/1/contriverz/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy.jpg', '1', '2019-01-06 23:27:35', '2019-01-06 23:27:35'),
(23, '1', 'public/documents/1/contriverz/newTest/fg', '1', '2019-01-06 23:27:43', '2019-01-06 23:27:43'),
(24, '11', 'public/documents/1/contriverz/newTest/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy.jpg', '1', '2019-01-06 23:28:10', '2019-01-06 23:28:10'),
(25, '2', 'public/documents/1/contriverz/newTest/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1).jpeg', '1', '2019-01-06 23:28:26', '2019-01-06 23:28:26'),
(26, '11', 'public/documents/1/contriverz/newTest/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1).jpeg', '1', '2019-01-06 23:28:30', '2019-01-06 23:28:30'),
(27, '2', 'public/documents/1/contriverz/newTest/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (1) (1).jpg', '1', '2019-01-06 23:28:39', '2019-01-06 23:28:39'),
(28, '1', 'public/documents/1/contriverz/newTest/jkkljl', '1', '2019-01-06 23:28:46', '2019-01-06 23:28:46'),
(29, '11', 'public/documents/1/contriverz/newTest/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (1) (1).jpg', '1', '2019-01-06 23:28:48', '2019-01-06 23:28:48'),
(30, '2', 'public/documents/1/contriverz/newTest/27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1).jpeg', '1', '2019-01-06 23:29:06', '2019-01-06 23:29:06'),
(31, '11', 'public/documents/1/contriverz/newTest/27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1).jpeg', '1', '2019-01-06 23:29:09', '2019-01-06 23:29:09'),
(32, '6', 'public/documents/1/contriverz/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy.jpg', '1', '2019-01-08 06:27:55', '2019-01-08 06:27:55'),
(33, '7', 'public/documents/1/contriverz/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (4).jpg', '1', '2019-01-08 08:50:57', '2019-01-08 08:50:57'),
(34, '26', 'public/documents/1/contriverz/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (4).jpg', '1', '2019-01-08 08:51:01', '2019-01-08 08:51:01'),
(35, '7', 'public/documents/1/contriverz/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (4).jpg', '1', '2019-01-08 08:52:40', '2019-01-08 08:52:40'),
(36, '7', 'public/documents/1/contriverz/25367832364_Current Permissions (1) (3).xlsx', '1', '2019-01-08 08:58:17', '2019-01-08 08:58:17'),
(37, '2', 'public/documents/1/contriverz/2 Chrysanthemum (1) - Copy - Copy - Copy.pdf', '1', '2019-01-10 00:51:12', '2019-01-10 00:51:12'),
(38, '2', 'public/documents/1/contriverz/1 Chrysanthemum (1) - Copy - Copy - Copy (2).pdf', '1', '2019-01-10 00:51:30', '2019-01-10 00:51:30'),
(39, '7', 'public/documents/1/contriverz/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (6).jpg', '1', '2019-01-10 00:51:34', '2019-01-10 00:51:34'),
(40, '2', 'public/documents/1/contriverz/20-1.zip', '1', '2019-01-10 00:51:49', '2019-01-10 00:51:49'),
(41, '7', 'public/documents/1/contriverz/27B0CE0F-007D-4D13-817F-ED2A8E1323DF.jpeg', '3', '2019-01-11 19:37:12', '2019-01-11 19:37:12'),
(42, '7', 'public/documents/1/contriverz/25367832364_Current Permissions (1) (1) (1).xlsx', '3', '2019-01-11 19:38:05', '2019-01-11 19:38:05'),
(43, '7', 'public/documents/1/contriverz/1 Chrysanthemum (1) - Copy - Copy - Copy (2).pdf', '3', '2019-01-11 19:38:43', '2019-01-11 19:38:43'),
(44, '2', 'public/documents/3/34234234/8 Untitled spreadsheet (1).pdf', '3', '2019-01-14 09:41:57', '2019-01-14 09:41:57'),
(45, '2', 'public/documents/3/34234234/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (4) (1).jpg', '3', '2019-01-14 09:41:57', '2019-01-14 09:41:57'),
(46, '2', 'public/documents/3/34234234/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (4) (2).jpg', '3', '2019-01-14 09:41:58', '2019-01-14 09:41:58'),
(47, '2', 'public/documents/3/34234234/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (4).jpg', '3', '2019-01-14 09:41:58', '2019-01-14 09:41:58'),
(48, '2', 'public/documents/3/34234234/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (5).jpg', '3', '2019-01-14 09:41:58', '2019-01-14 09:41:58'),
(49, '2', 'public/documents/3/34234234/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (6).jpg', '3', '2019-01-14 09:41:58', '2019-01-14 09:41:58'),
(50, '2', 'public/documents/3/34234234/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy.jpg', '3', '2019-01-14 09:41:58', '2019-01-14 09:41:58'),
(51, '2', 'public/documents/3/34234234/22 Desert (2).pdf', '3', '2019-01-14 09:41:59', '2019-01-14 09:41:59'),
(52, '2', 'public/documents/3/34234234/27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1).jpeg', '3', '2019-01-14 09:41:59', '2019-01-14 09:41:59'),
(53, '1', 'public/documents/3/34234234/sdfsd', '3', '2019-01-14 09:42:20', '2019-01-14 09:42:20'),
(54, '2', 'public/documents/3/34234234/sdfsd/2 Chrysanthemum (1) - Copy - Copy - Copy (4).pdf', '3', '2019-01-14 09:42:29', '2019-01-14 09:42:29'),
(55, '2', 'public/documents/3/34234234/sdfsd/2 Chrysanthemum (1) - Copy - Copy - Copy.pdf', '3', '2019-01-14 09:42:29', '2019-01-14 09:42:29'),
(56, '2', 'public/documents/3/34234234/sdfsd/4A32687A-6947-43F3-B4B4-85C302DE1D7C (1).jpeg', '3', '2019-01-14 09:42:29', '2019-01-14 09:42:29'),
(57, '2', 'public/documents/3/34234234/sdfsd/4A32687A-6947-43F3-B4B4-85C302DE1D7C.jpeg', '3', '2019-01-14 09:42:29', '2019-01-14 09:42:29'),
(58, '2', 'public/documents/3/34234234/sdfsd/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1) (1).jpeg', '3', '2019-01-14 09:42:30', '2019-01-14 09:42:30'),
(59, '2', 'public/documents/3/34234234/sdfsd/8 Untitled spreadsheet (1) (1).pdf', '3', '2019-01-14 09:42:30', '2019-01-14 09:42:30'),
(60, '2', 'public/documents/3/34234234/sdfsd/8 Untitled spreadsheet (1).pdf', '3', '2019-01-14 09:42:30', '2019-01-14 09:42:30'),
(61, '2', 'public/documents/3/34234234/sdfsd/9 ajax.php', '3', '2019-01-14 09:42:30', '2019-01-14 09:42:30'),
(62, '2', 'public/documents/3/34234234/sdfsd/9 tryrtrt.zip', '3', '2019-01-14 09:42:30', '2019-01-14 09:42:30'),
(63, '2', 'public/documents/3/34234234/sdfsd/9.1 ajax (1).php', '3', '2019-01-14 09:42:30', '2019-01-14 09:42:30'),
(64, '7', 'public/documents/3/34234234/sdfsd/8 Untitled spreadsheet (1) (1).pdf', '3', '2019-01-14 09:42:45', '2019-01-14 09:42:45'),
(65, '13', 'public/documents/1/contriverz/16 wdfsdfsd_Index.pdf', '3', '2019-01-14 12:35:34', '2019-01-14 12:35:34'),
(66, '1', 'public/documents/1/contriverz/sdsd', '1', '2019-01-15 00:37:56', '2019-01-15 00:37:56'),
(67, '7', 'public/documents/1/contriverz/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (6).jpg', '1', '2019-01-15 05:19:14', '2019-01-15 05:19:14'),
(68, '1', 'public/documents/1/contriverz/fgsgf', '1', '2019-01-15 12:22:34', '2019-01-15 12:22:34'),
(69, '6', 'public/documents/1/contriverz/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (6).jpg', '1', '2019-01-15 23:19:15', '2019-01-15 23:19:15'),
(70, '10', 'public/documents/1/contriverz/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy.jpg', '1', '2019-01-15 23:19:25', '2019-01-15 23:19:25'),
(71, '10', 'public/documents/1/contriverz/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (6).jpg', '1', '2019-01-15 23:19:26', '2019-01-15 23:19:26'),
(72, '2', 'public/documents/1/contriverz/newTest/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (4) (2).jpg', '1', '2019-01-15 23:21:15', '2019-01-15 23:21:15'),
(73, '2', 'public/documents/1/contriverz/newTest/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (4).jpg', '1', '2019-01-15 23:21:16', '2019-01-15 23:21:16'),
(74, '2', 'public/documents/1/contriverz/newTest/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (5).jpg', '1', '2019-01-15 23:21:16', '2019-01-15 23:21:16'),
(75, '2', 'public/documents/1/contriverz/newTest/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (6).jpg', '1', '2019-01-15 23:21:17', '2019-01-15 23:21:17'),
(76, '2', 'public/documents/1/contriverz/newTest/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy.jpg', '1', '2019-01-15 23:21:17', '2019-01-15 23:21:17'),
(77, '2', 'public/documents/1/contriverz/newTest/22 Desert (2).pdf', '1', '2019-01-15 23:21:17', '2019-01-15 23:21:17'),
(78, '2', 'public/documents/1/contriverz/newTest/27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1).jpeg', '1', '2019-01-15 23:21:18', '2019-01-15 23:21:18'),
(79, '1', 'public/documents/1/contriverz/newTest/tret', '1', '2019-01-15 23:21:54', '2019-01-15 23:21:54'),
(80, '1', 'public/documents/1/contriverz/newTest/wer', '1', '2019-01-15 23:22:00', '2019-01-15 23:22:00'),
(81, '7', 'public/documents/1/contriverz/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (4).jpg', '1', '2019-01-15 23:40:17', '2019-01-15 23:40:17'),
(82, '7', 'public/documents/1/contriverz/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (4).jpg', '1', '2019-01-16 00:30:15', '2019-01-16 00:30:15'),
(83, '26', 'public/documents/1/contriverz/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (4).jpg', '1', '2019-01-16 00:30:45', '2019-01-16 00:30:45'),
(84, '7', 'public/documents/1/contriverz/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (4).jpg', '1', '2019-01-16 00:31:59', '2019-01-16 00:31:59'),
(85, '7', 'public/documents/1/contriverz/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (4).jpg', '1', '2019-01-16 00:32:01', '2019-01-16 00:32:01'),
(86, '7', 'public/documents/1/contriverz/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (4).jpg', '1', '2019-01-16 00:32:04', '2019-01-16 00:32:04'),
(87, '7', 'public/documents/1/contriverz/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (4).jpg', '1', '2019-01-16 00:32:32', '2019-01-16 00:32:32'),
(88, '7', 'public/documents/1/contriverz/25367832364_Current Permissions (1) (1) (1) (1).xlsx', '1', '2019-01-16 04:39:53', '2019-01-16 04:39:53'),
(89, '2', 'public/documents/1/contriverz/6 25367832364_Current Permissions (3) (1) (1).xlsx', '1', '2019-01-16 04:40:49', '2019-01-16 04:40:49'),
(90, '7', 'public/documents/1/contriverz/25367832364_Current Permissions (1) (1) (1) (1).xlsx', '1', '2019-01-16 04:41:02', '2019-01-16 04:41:02'),
(91, '1', 'public/documents/1/erwer/rer', '1', '2019-01-17 01:21:12', '2019-01-17 01:21:12'),
(92, '2', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (1) (1).jpg', '1', '2019-01-17 01:21:19', '2019-01-17 01:21:19'),
(93, '2', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (1).jpg', '1', '2019-01-17 01:21:19', '2019-01-17 01:21:19'),
(94, '2', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (2).jpg', '1', '2019-01-17 01:21:19', '2019-01-17 01:21:19'),
(95, '2', 'public/documents/1/erwer/9713ABFA-C1C5-4BC2-B84B-5B749916B5B2.png', '1', '2019-01-17 02:52:03', '2019-01-17 02:52:03'),
(96, '2', 'public/documents/1/erwer/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF.jpeg', '1', '2019-01-17 02:52:12', '2019-01-17 02:52:12'),
(97, '1', 'public/documents/1/erwer/fdfsf', '1', '2019-01-18 04:30:08', '2019-01-18 04:30:08'),
(98, '7', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (1) (1).jpg', '6', '2019-01-18 04:32:12', '2019-01-18 04:32:12'),
(99, '7', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (1) (1).jpg', '6', '2019-01-18 04:32:45', '2019-01-18 04:32:45'),
(100, '2', 'public/documents/2/4597474/Development.pdf', '2', '2019-01-18 05:29:52', '2019-01-18 05:29:52'),
(101, '7', 'public/documents/2/4597474/Development.pdf', '2', '2019-01-18 05:29:56', '2019-01-18 05:29:56'),
(102, '7', 'public/documents/2/4597474/Development.pdf', '2', '2019-01-18 05:35:49', '2019-01-18 05:35:49'),
(103, '7', 'public/documents/2/4597474/Development.pdf', '2', '2019-01-18 05:36:35', '2019-01-18 05:36:35'),
(104, '26', 'public/documents/2/4597474/Development.pdf', '2', '2019-01-18 05:45:31', '2019-01-18 05:45:31'),
(105, '7', 'public/documents/2/4597474/Development.pdf', '2', '2019-01-18 05:50:54', '2019-01-18 05:50:54'),
(106, '7', 'public/documents/2/4597474/Development.pdf', '2', '2019-01-18 06:07:22', '2019-01-18 06:07:22'),
(107, '7', 'public/documents/2/4597474/Development.pdf', '2', '2019-01-18 06:07:33', '2019-01-18 06:07:33'),
(108, '7', 'public/documents/2/4597474/Development.pdf', '2', '2019-01-18 06:12:59', '2019-01-18 06:12:59'),
(109, '30', '6', '1', '2019-01-20 23:39:42', '2019-01-20 23:39:42'),
(110, '30', '6', '1', '2019-01-20 23:39:43', '2019-01-20 23:39:43'),
(111, '30', '6', '1', '2019-01-21 23:19:25', '2019-01-21 23:19:25'),
(112, '30', '6', '1', '2019-01-21 23:59:45', '2019-01-21 23:59:45'),
(113, '6', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (1) (1).jpg', '1', '2019-01-21 23:59:55', '2019-01-21 23:59:55'),
(114, '2', 'public/documents/1/erwer/6 25367832364_Current Permissions (3) (1).xlsx', '1', '2019-01-22 07:19:03', '2019-01-22 07:19:03'),
(115, '7', 'public/documents/1/erwer/6 25367832364_Current Permissions (3) (1).xlsx', '1', '2019-01-22 07:19:05', '2019-01-22 07:19:05'),
(116, '2', 'public/documents/1/erwer/6 25367832364_Current Permissions (3).xlsx', '1', '2019-01-22 07:19:22', '2019-01-22 07:19:22'),
(117, '7', 'public/documents/1/erwer/6 25367832364_Current Permissions (3).xlsx', '1', '2019-01-22 07:19:25', '2019-01-22 07:19:25'),
(118, '7', 'public/documents/1/erwer/6 25367832364_Current Permissions (3).xlsx', '1', '2019-01-22 07:20:34', '2019-01-22 07:20:34'),
(119, '7', 'public/documents/1/erwer/6 25367832364_Current Permissions (3) (1).xlsx', '1', '2019-01-22 07:20:38', '2019-01-22 07:20:38'),
(120, '7', 'public/documents/1/erwer/6 25367832364_Current Permissions (3) (1).xlsx', '1', '2019-01-22 07:20:47', '2019-01-22 07:20:47'),
(121, '7', 'public/documents/1/erwer/6 25367832364_Current Permissions (3) (1).xlsx', '1', '2019-01-22 07:21:02', '2019-01-22 07:21:02'),
(122, '7', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (1).jpg', '1', '2019-01-22 07:26:21', '2019-01-22 07:26:21'),
(123, '2', 'public/documents/1/erwer/formats_20140628 (1).xlsb', '1', '2019-01-22 07:27:42', '2019-01-22 07:27:42'),
(124, '7', 'public/documents/1/erwer/formats_20140628 (1).xlsb', '1', '2019-01-22 07:27:45', '2019-01-22 07:27:45'),
(125, '14', 'public/documents/7/test1', '7', '2019-01-23 06:12:12', '2019-01-23 06:12:12'),
(126, '28', '26', '7', '2019-01-23 06:12:13', '2019-01-23 06:12:13'),
(127, '14', 'public/documents/7/test2', '7', '2019-01-23 06:12:34', '2019-01-23 06:12:34'),
(128, '28', '27', '7', '2019-01-23 06:12:35', '2019-01-23 06:12:35'),
(129, '29', 'public/documents/7/test2', '7', '2019-01-23 06:12:56', '2019-01-23 06:12:56'),
(130, '29', 'public/documents/7/test1', '7', '2019-01-23 06:13:00', '2019-01-23 06:13:00'),
(131, '14', 'public/documents/7/test1', '7', '2019-01-23 06:13:39', '2019-01-23 06:13:39'),
(132, '28', '28', '7', '2019-01-23 06:13:40', '2019-01-23 06:13:40'),
(133, '1', 'public/documents/7/test1/klojkpji0', '7', '2019-01-23 06:17:51', '2019-01-23 06:17:51'),
(134, '14', 'public/documents/7/dgdg', '7', '2019-01-23 06:19:05', '2019-01-23 06:19:05'),
(135, '28', '29', '7', '2019-01-23 06:19:05', '2019-01-23 06:19:05'),
(136, '15', '6', '1', '2019-01-23 06:25:29', '2019-01-23 06:25:29'),
(137, '15', '6', '1', '2019-01-23 06:25:33', '2019-01-23 06:25:33'),
(138, '15', '6', '1', '2019-01-23 06:25:46', '2019-01-23 06:25:46'),
(139, '7', 'public/documents/1/erwer/formats_20140628 (1).xlsb', '1', '2019-01-23 06:29:19', '2019-01-23 06:29:19'),
(140, '7', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (1).jpg', '1', '2019-01-23 06:29:34', '2019-01-23 06:29:34'),
(141, '7', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (1).jpg', '1', '2019-01-23 06:29:40', '2019-01-23 06:29:40'),
(142, '29', 'public/documents/7/dgdg', '7', '2019-01-23 06:29:46', '2019-01-23 06:29:46'),
(143, '7', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (1).jpg', '1', '2019-01-23 06:29:53', '2019-01-23 06:29:53'),
(144, '30', '6', '1', '2019-01-23 06:30:03', '2019-01-23 06:30:03'),
(145, '30', '6', '1', '2019-01-23 06:30:12', '2019-01-23 06:30:12'),
(146, '30', '6', '1', '2019-01-23 06:30:25', '2019-01-23 06:30:25'),
(147, '1', 'public/documents/1/erwer/fdfsf/retert', '1', '2019-01-23 06:30:33', '2019-01-23 06:30:33'),
(148, '1', 'public/documents/1/erwer/fdfsf/retert/rtretre', '1', '2019-01-23 06:30:38', '2019-01-23 06:30:38'),
(149, '2', 'public/documents/1/erwer/fdfsf/retert/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1) (1).jpeg', '1', '2019-01-23 06:30:44', '2019-01-23 06:30:44'),
(150, '2', 'public/documents/1/erwer/fdfsf/retert/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1).jpeg', '1', '2019-01-23 06:30:45', '2019-01-23 06:30:45'),
(151, '2', 'public/documents/1/erwer/fdfsf/retert/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF.jpeg', '1', '2019-01-23 06:30:45', '2019-01-23 06:30:45'),
(152, '2', 'public/documents/1/erwer/fdfsf/retert/6 25367832364_Current Permissions (3) (1) (1).xlsx', '1', '2019-01-23 06:30:46', '2019-01-23 06:30:46'),
(153, '2', 'public/documents/1/erwer/fdfsf/retert/6 25367832364_Current Permissions (3) (1).xlsx', '1', '2019-01-23 06:30:46', '2019-01-23 06:30:46'),
(154, '2', 'public/documents/1/erwer/fdfsf/retert/6 25367832364_Current Permissions (3) (2) (1).xlsx', '1', '2019-01-23 06:30:46', '2019-01-23 06:30:46'),
(155, '30', '6', '1', '2019-01-23 06:30:56', '2019-01-23 06:30:56'),
(156, '30', '6', '1', '2019-01-23 06:31:23', '2019-01-23 06:31:23'),
(157, '1', 'public/documents/1/erwer/rer/dfgf', '1', '2019-01-23 06:31:39', '2019-01-23 06:31:39'),
(158, '30', '6', '1', '2019-01-23 06:31:44', '2019-01-23 06:31:44'),
(159, '1', 'public/documents/7/test/just_verify', '7', '2019-01-23 06:33:43', '2019-01-23 06:33:43'),
(160, '1', 'public/documents/7/test/Test-1', '7', '2019-01-23 06:35:07', '2019-01-23 06:35:07'),
(161, '2', 'public/documents/7/test/Test-1/Excel sheet of web app.xlsx', '7', '2019-01-23 06:36:07', '2019-01-23 06:36:07'),
(162, '7', 'public/documents/7/test/Test-1/Excel sheet of web app.xlsx', '7', '2019-01-23 06:36:12', '2019-01-23 06:36:12'),
(163, '26', 'public/documents/7/test/Test-1/Excel sheet of web app.xlsx', '7', '2019-01-23 06:36:39', '2019-01-23 06:36:39'),
(164, '26', 'public/documents/7/test/Test-1/Excel sheet of web app.xlsx', '7', '2019-01-23 06:36:47', '2019-01-23 06:36:47'),
(165, '25', 'public/documents/7/test', '7', '2019-01-23 06:37:14', '2019-01-23 06:37:14'),
(166, '15', '8', '7', '2019-01-23 06:37:56', '2019-01-23 06:37:56'),
(167, '15', '8', '7', '2019-01-23 06:38:29', '2019-01-23 06:38:29'),
(168, '29', 'public/documents/7/test', '7', '2019-01-23 06:42:33', '2019-01-23 06:42:33'),
(169, '29', 'public/documents/7/test1', '7', '2019-01-23 06:42:38', '2019-01-23 06:42:38'),
(170, '14', 'public/documents/7/tset', '7', '2019-01-23 06:42:50', '2019-01-23 06:42:50'),
(171, '28', '30', '7', '2019-01-23 06:42:50', '2019-01-23 06:42:50'),
(172, '14', 'public/documents/7/tset1', '7', '2019-01-23 06:43:22', '2019-01-23 06:43:22'),
(173, '28', '31', '7', '2019-01-23 06:43:23', '2019-01-23 06:43:23'),
(174, '2', 'public/documents/7/tset/Jellyfish.jpg', '7', '2019-01-23 06:47:02', '2019-01-23 06:47:02'),
(175, '2', 'public/documents/7/tset/infrazone.docx', '7', '2019-01-23 06:47:44', '2019-01-23 06:47:44'),
(176, '7', 'public/documents/7/tset/infrazone.docx', '7', '2019-01-23 06:47:53', '2019-01-23 06:47:53'),
(177, '7', 'public/documents/7/tset/Jellyfish.jpg', '7', '2019-01-23 06:48:22', '2019-01-23 06:48:22'),
(178, '28', '32', '7', '2019-01-23 07:06:34', '2019-01-23 07:06:34'),
(179, '1', 'public/documents/7/tset/test', '7', '2019-01-23 07:08:20', '2019-01-23 07:08:20'),
(180, '28', '33', '7', '2019-01-23 07:13:18', '2019-01-23 07:13:18'),
(181, '25', 'public/documents/7/tset', '7', '2019-01-23 07:19:13', '2019-01-23 07:19:13'),
(182, '7', 'public/documents/7/tset/Jellyfish.jpg', '7', '2019-01-23 07:36:08', '2019-01-23 07:36:08'),
(183, '7', 'public/documents/7/tset/Jellyfish.jpg', '7', '2019-01-23 07:37:13', '2019-01-23 07:37:13'),
(184, '26', 'public/documents/7/tset/Jellyfish.jpg', '7', '2019-01-23 07:37:17', '2019-01-23 07:37:17'),
(185, '7', 'public/documents/7/tset/Jellyfish.jpg', '7', '2019-01-23 07:37:25', '2019-01-23 07:37:25'),
(186, '7', 'public/documents/7/tset/Jellyfish.jpg', '7', '2019-01-23 07:37:51', '2019-01-23 07:37:51'),
(187, '26', 'public/documents/7/tset/Jellyfish.jpg', '7', '2019-01-23 07:37:53', '2019-01-23 07:37:53'),
(188, '7', 'public/documents/7/tset/Jellyfish.jpg', '7', '2019-01-23 07:37:58', '2019-01-23 07:37:58'),
(189, '7', 'public/documents/7/tset/infrazone.docx', '7', '2019-01-23 07:38:09', '2019-01-23 07:38:09'),
(190, '25', 'public/documents/7/tset', '7', '2019-01-23 07:39:36', '2019-01-23 07:39:36'),
(191, '7', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (1).jpg', '1', '2019-01-23 07:45:23', '2019-01-23 07:45:23'),
(192, '26', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (1).jpg', '1', '2019-01-23 07:49:10', '2019-01-23 07:49:10'),
(193, '14', 'public/documents/8/tester_testing12', '8', '2019-01-23 23:37:39', '2019-01-23 23:37:39'),
(194, '28', '35', '8', '2019-01-23 23:37:39', '2019-01-23 23:37:39'),
(195, '2', 'public/documents/8/tester_testing12/Chrysanthemum.jpg', '8', '2019-01-23 23:38:49', '2019-01-23 23:38:49'),
(196, '7', 'public/documents/8/tester_testing12/Chrysanthemum.jpg', '8', '2019-01-23 23:38:54', '2019-01-23 23:38:54'),
(197, '7', 'public/documents/8/tester_testing12/Chrysanthemum.jpg', '8', '2019-01-23 23:39:31', '2019-01-23 23:39:31'),
(198, '2', 'public/documents/8/tester_testing12/Desert.jpg', '8', '2019-01-23 23:40:40', '2019-01-23 23:40:40'),
(199, '1', 'public/documents/8/tester_testing12/tester_', '8', '2019-01-23 23:41:08', '2019-01-23 23:41:08'),
(200, '25', 'public/documents/8/tester_testing12', '8', '2019-01-23 23:43:17', '2019-01-23 23:43:17'),
(201, '7', 'public/documents/8/tester_testing12/Desert.jpg', '8', '2019-01-23 23:47:05', '2019-01-23 23:47:05'),
(202, '28', '36', '8', '2019-01-23 23:49:15', '2019-01-23 23:49:15'),
(203, '7', 'public/documents/8/tester_testing12/Chrysanthemum.jpg', '8', '2019-01-23 23:49:41', '2019-01-23 23:49:41'),
(204, '6', 'public/documents/8/tester_testing12/Desert.jpg', '8', '2019-01-23 23:55:41', '2019-01-23 23:55:41'),
(205, '1', 'public/documents/8/testing/test', '8', '2019-01-24 00:23:41', '2019-01-24 00:23:41'),
(206, '5', 'public/documents/8/testing/test', '8', '2019-01-24 00:23:52', '2019-01-24 00:23:52'),
(207, '2', 'public/documents/8/testing/Chrysanthemum.jpg', '8', '2019-01-24 00:24:17', '2019-01-24 00:24:17'),
(208, '7', 'public/documents/8/testing/Chrysanthemum.jpg', '8', '2019-01-24 00:25:16', '2019-01-24 00:25:16'),
(209, '7', 'public/documents/8/testing/Chrysanthemum.jpg', '8', '2019-01-24 00:32:28', '2019-01-24 00:32:28'),
(210, '26', 'public/documents/8/testing/Chrysanthemum.jpg', '8', '2019-01-24 00:33:22', '2019-01-24 00:33:22'),
(211, '26', 'public/documents/8/testing/Chrysanthemum.jpg', '8', '2019-01-24 00:33:27', '2019-01-24 00:33:27'),
(212, '13', 'public/documents/8/testing/Chrysanthemum.jpg', '8', '2019-01-24 00:33:44', '2019-01-24 00:33:44'),
(213, '7', 'public/documents/8/testing/Chrysanthemum-copy.jpg', '8', '2019-01-24 00:33:46', '2019-01-24 00:33:46'),
(214, '6', 'public/documents/8/testing/Chrysanthemum-copy.jpg', '8', '2019-01-24 00:33:57', '2019-01-24 00:33:57'),
(215, '4', 'public/documents/8/testing/Chrysanthemum.jpg', '8', '2019-01-24 00:34:06', '2019-01-24 00:34:06'),
(216, '7', 'public/documents/8/testing/Chrysanthemum1223.jpg', '8', '2019-01-24 00:41:03', '2019-01-24 00:41:03'),
(217, '4', 'public/documents/8/testing/Chrysanthemum1223.jpg', '8', '2019-01-24 00:45:55', '2019-01-24 00:45:55'),
(218, '4', 'public/documents/8/testing/Chrysanthemumbvnbv.jpg', '8', '2019-01-24 00:46:23', '2019-01-24 00:46:23'),
(219, '4', 'public/documents/8/testing/Chrysanthemumbvnbvgn.jpg', '8', '2019-01-24 00:46:46', '2019-01-24 00:46:46'),
(220, '4', 'public/documents/8/testing/Chrysanthem.jpg', '8', '2019-01-24 00:47:15', '2019-01-24 00:47:15'),
(221, '4', 'public/documents/8/testing/Chrysanthemg.jpg', '8', '2019-01-24 00:47:24', '2019-01-24 00:47:24'),
(222, '6', 'public/documents/8/tester_testing12/Chrysanthemum.jpg', '8', '2019-01-24 01:10:33', '2019-01-24 01:10:33'),
(223, '14', 'public/documents/7/tst', '7', '2019-01-24 01:28:48', '2019-01-24 01:28:48'),
(224, '28', '37', '7', '2019-01-24 01:28:49', '2019-01-24 01:28:49'),
(225, '15', '13', '7', '2019-01-24 03:32:10', '2019-01-24 03:32:10'),
(226, '7', 'public/documents/7/tset/infrazone.docx', '7', '2019-01-24 03:56:44', '2019-01-24 03:56:44'),
(227, '13', 'public/documents/7/tset/infrazone.docx', '7', '2019-01-24 03:56:50', '2019-01-24 03:56:50'),
(228, '29', 'public/documents/7/tset1', '7', '2019-01-24 04:09:24', '2019-01-24 04:09:24'),
(229, '29', 'public/documents/7/tset', '7', '2019-01-24 04:09:27', '2019-01-24 04:09:27'),
(230, '28', '38', '1', '2019-01-24 04:10:25', '2019-01-24 04:10:25'),
(231, '14', 'public/documents/7/testcz', '7', '2019-01-24 04:19:09', '2019-01-24 04:19:09'),
(232, '28', '39', '7', '2019-01-24 04:19:09', '2019-01-24 04:19:09'),
(233, '30', '6', '1', '2019-01-24 04:24:55', '2019-01-24 04:24:55'),
(234, '2', 'public/documents/1/erwer/documnet_viewer.html', '1', '2019-01-24 04:39:34', '2019-01-24 04:39:34'),
(235, '7', 'public/documents/1/erwer/documnet_viewer.html', '1', '2019-01-24 04:39:37', '2019-01-24 04:39:37'),
(236, '30', '6', '1', '2019-01-24 05:02:47', '2019-01-24 05:02:47'),
(237, '30', '6', '1', '2019-01-24 05:02:56', '2019-01-24 05:02:56'),
(238, '15', '6', '1', '2019-01-24 05:03:02', '2019-01-24 05:03:02'),
(239, '15', '6', '1', '2019-01-24 05:03:06', '2019-01-24 05:03:06'),
(240, '15', '6', '1', '2019-01-24 05:03:14', '2019-01-24 05:03:14'),
(241, '7', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (2).jpg', '1', '2019-01-24 05:03:24', '2019-01-24 05:03:24'),
(242, '25', 'public/documents/8/tester_testing12/tester_', '8', '2019-01-24 23:36:26', '2019-01-24 23:36:26'),
(243, '1', 'public/documents/8/tester_testing12/tester_-copy/441661', '8', '2019-01-24 23:48:25', '2019-01-24 23:48:25'),
(244, '5', 'public/documents/8/tester_testing12/tester_', '8', '2019-01-24 23:50:02', '2019-01-24 23:50:02'),
(245, '5', 'public/documents/8/tester_testing12/tester_-copy', '8', '2019-01-24 23:50:03', '2019-01-24 23:50:03'),
(246, '5', 'public/documents/8/tester_testing12/tester_-copy-copy', '8', '2019-01-24 23:50:03', '2019-01-24 23:50:03'),
(247, '5', 'public/documents/8/tester_testing12/tester_-copy-copy-copy', '8', '2019-01-24 23:50:03', '2019-01-24 23:50:03'),
(248, '1', 'public/documents/8/tester_testing12/565', '8', '2019-01-24 23:50:13', '2019-01-24 23:50:13'),
(249, '12', 'public/documents/8/tester_testing12/565', '8', '2019-01-24 23:50:26', '2019-01-24 23:50:26'),
(250, '12', 'public/documents/8/tester_testing12/565', '8', '2019-01-24 23:50:30', '2019-01-24 23:50:30'),
(251, '1', 'public/documents/7/tst/test', '7', '2019-01-24 23:50:57', '2019-01-24 23:50:57'),
(252, '12', 'public/documents/8/tester_testing12/565-copy-copy', '8', '2019-01-24 23:51:58', '2019-01-24 23:51:58'),
(253, '7', 'public/documents/8/testing/Chrysanthem.jpg', '8', '2019-01-24 23:55:19', '2019-01-24 23:55:19'),
(254, '7', 'public/documents/8/testing/Chrysanthem.jpg', '8', '2019-01-24 23:55:58', '2019-01-24 23:55:58'),
(255, '29', 'public/documents/8/tester_testing12', '8', '2019-01-24 23:56:55', '2019-01-24 23:56:55'),
(256, '7', 'public/documents/8/testing/Chrysanthem.jpg', '8', '2019-01-24 23:58:27', '2019-01-24 23:58:27'),
(257, '7', 'public/documents/8/testing/Chrysanthem.jpg', '8', '2019-01-24 23:58:36', '2019-01-24 23:58:36'),
(258, '7', 'public/documents/8/testing/Chrysanthem.jpg', '8', '2019-01-24 23:58:45', '2019-01-24 23:58:45'),
(259, '6', 'public/documents/8/testing/Chrysanthem.jpg', '8', '2019-01-24 23:58:57', '2019-01-24 23:58:57'),
(260, '1', 'public/documents/7/tst/test(2)', '7', '2019-01-25 02:01:44', '2019-01-25 02:01:44'),
(261, '1', 'public/documents/7/tst/test/test', '7', '2019-01-25 02:03:18', '2019-01-25 02:03:18'),
(262, '1', 'public/documents/7/tst/test/test/test', '7', '2019-01-25 02:05:29', '2019-01-25 02:05:29'),
(263, '12', 'public/documents/7/tst/test/test/test', '7', '2019-01-25 02:05:36', '2019-01-25 02:05:36'),
(264, '12', 'public/documents/7/tst/test/test/test', '7', '2019-01-25 02:05:40', '2019-01-25 02:05:40'),
(265, '12', 'public/documents/7/tst/test/test/test', '7', '2019-01-25 02:06:11', '2019-01-25 02:06:11'),
(266, '2', 'public/documents/2/4597474/top_image.jpg', '2', '2019-01-25 02:45:06', '2019-01-25 02:45:06'),
(267, '7', 'public/documents/2/4597474/top_image.jpg', '2', '2019-01-25 02:45:14', '2019-01-25 02:45:14'),
(268, '7', 'public/documents/2/4597474/top_image.jpg', '2', '2019-01-25 03:15:08', '2019-01-25 03:15:08'),
(269, '7', 'public/documents/2/4597474/top_image.jpg', '2', '2019-01-25 03:45:59', '2019-01-25 03:45:59'),
(270, '7', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (1).jpg', '1', '2019-01-26 09:25:33', '2019-01-26 09:25:33'),
(271, '26', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (1).jpg', '1', '2019-01-26 09:26:01', '2019-01-26 09:26:01'),
(272, '1', 'public/documents/7/tst/testing1', '7', '2019-01-27 22:53:47', '2019-01-27 22:53:47'),
(273, '1', 'public/documents/7/tst/folder_images', '7', '2019-01-27 22:54:55', '2019-01-27 22:54:55'),
(274, '3', 'public/documents/7/tst/folder_images', '7', '2019-01-27 22:55:10', '2019-01-27 22:55:10'),
(275, '3', 'public/documents/7/tst/folderimages', '7', '2019-01-27 22:55:23', '2019-01-27 22:55:23'),
(276, '1', 'public/documents/7/tst/video_folder', '7', '2019-01-27 22:55:43', '2019-01-27 22:55:43'),
(277, '3', 'public/documents/7/tst/video_folder', '7', '2019-01-27 22:55:55', '2019-01-27 22:55:55'),
(278, '5', 'public/documents/7/tst/video_ folder', '7', '2019-01-27 23:00:15', '2019-01-27 23:00:15'),
(279, '1', 'public/documents/7/tst/folder images-copy/folder images/check_image and videos', '7', '2019-01-27 23:05:23', '2019-01-27 23:05:23'),
(280, '12', 'public/documents/1/erwer/rer', '1', '2019-01-27 23:09:48', '2019-01-27 23:09:48'),
(281, '12', 'public/documents/1/erwer/rer', '1', '2019-01-27 23:10:11', '2019-01-27 23:10:11'),
(282, '12', 'public/documents/1/erwer/rer', '1', '2019-01-27 23:10:14', '2019-01-27 23:10:14'),
(283, '28', '40', '1', '2019-01-27 23:45:06', '2019-01-27 23:45:06'),
(284, '1', 'public/documents/2/4597474/wsw', '2', '2019-01-27 23:46:28', '2019-01-27 23:46:28'),
(285, '12', 'public/documents/2/4597474/wsw', '2', '2019-01-27 23:46:33', '2019-01-27 23:46:33'),
(286, '12', 'public/documents/2/4597474/wsw', '2', '2019-01-27 23:46:35', '2019-01-27 23:46:35'),
(287, '12', 'public/documents/2/4597474/wsw', '2', '2019-01-27 23:46:36', '2019-01-27 23:46:36'),
(288, '12', 'public/documents/2/4597474/wsw', '2', '2019-01-27 23:46:38', '2019-01-27 23:46:38'),
(289, '14', 'public/documents/7/uiuiui', '7', '2019-01-27 23:47:26', '2019-01-27 23:47:26'),
(290, '28', '41', '7', '2019-01-27 23:47:27', '2019-01-27 23:47:27'),
(291, '1', 'public/documents/7/uiuiui/jikjkj', '7', '2019-01-27 23:47:36', '2019-01-27 23:47:36'),
(292, '12', 'public/documents/7/uiuiui/jikjkj', '7', '2019-01-27 23:47:41', '2019-01-27 23:47:41'),
(293, '12', 'public/documents/7/uiuiui/jikjkj', '7', '2019-01-27 23:47:43', '2019-01-27 23:47:43'),
(294, '12', 'public/documents/7/uiuiui/jikjkj', '7', '2019-01-27 23:47:44', '2019-01-27 23:47:44'),
(295, '12', 'public/documents/7/tst/testing1', '7', '2019-01-27 23:48:47', '2019-01-27 23:48:47'),
(296, '12', 'public/documents/7/tst/testing1', '7', '2019-01-27 23:48:51', '2019-01-27 23:48:51'),
(297, '12', 'public/documents/7/tst/testing1', '7', '2019-01-27 23:48:53', '2019-01-27 23:48:53'),
(298, '12', 'public/documents/7/tst/testing1', '7', '2019-01-27 23:48:54', '2019-01-27 23:48:54'),
(299, '5', 'public/documents/7/tst/test', '7', '2019-01-27 23:49:22', '2019-01-27 23:49:22'),
(300, '5', 'public/documents/7/tst/test(2)', '7', '2019-01-27 23:49:22', '2019-01-27 23:49:22'),
(301, '5', 'public/documents/7/tst/testing1', '7', '2019-01-27 23:49:22', '2019-01-27 23:49:22'),
(302, '5', 'public/documents/7/uiuiui/jikjkj-copy-copy', '7', '2019-01-27 23:56:59', '2019-01-27 23:56:59'),
(303, '5', 'public/documents/7/uiuiui/jikjkj-copy', '7', '2019-01-27 23:57:06', '2019-01-27 23:57:06'),
(304, '5', 'public/documents/7/uiuiui/jikjkj', '7', '2019-01-27 23:57:15', '2019-01-27 23:57:15'),
(305, '1', 'public/documents/7/uiuiui/Test_01', '7', '2019-01-27 23:57:37', '2019-01-27 23:57:37'),
(306, '29', 'public/documents/7/tst', '7', '2019-01-27 23:58:01', '2019-01-27 23:58:01'),
(307, '29', 'public/documents/7/uiuiui', '7', '2019-01-27 23:58:05', '2019-01-27 23:58:05'),
(308, '1', 'public/documents/7/testcz/Test_01', '7', '2019-01-27 23:58:42', '2019-01-27 23:58:42'),
(309, '29', 'public/documents/7/testcz', '7', '2019-01-28 00:03:30', '2019-01-28 00:03:30'),
(310, '14', 'public/documents/7/check', '7', '2019-01-28 00:04:37', '2019-01-28 00:04:37'),
(311, '28', '42', '7', '2019-01-28 00:04:37', '2019-01-28 00:04:37'),
(312, '29', 'public/documents/7/check', '7', '2019-01-28 00:05:27', '2019-01-28 00:05:27'),
(313, '14', 'public/documents/7/test', '7', '2019-01-28 00:06:15', '2019-01-28 00:06:15'),
(314, '28', '43', '7', '2019-01-28 00:06:15', '2019-01-28 00:06:15'),
(315, '1', 'public/documents/7/test/Test1', '7', '2019-01-28 00:06:27', '2019-01-28 00:06:27'),
(316, '3', 'public/documents/1/erwer/rer', '1', '2019-01-28 00:07:28', '2019-01-28 00:07:28'),
(317, '12', 'public/documents/7/test/Test1', '7', '2019-01-28 00:10:24', '2019-01-28 00:10:24'),
(318, '12', 'public/documents/7/test/Test1', '7', '2019-01-28 00:10:32', '2019-01-28 00:10:32'),
(319, '12', 'public/documents/7/test/Test1', '7', '2019-01-28 00:10:35', '2019-01-28 00:10:35'),
(320, '12', 'public/documents/7/test/Test1-copy', '7', '2019-01-28 00:11:07', '2019-01-28 00:11:07'),
(321, '12', 'public/documents/7/test/Test1-copy', '7', '2019-01-28 00:11:10', '2019-01-28 00:11:10'),
(322, '12', 'public/documents/7/test/Test1-copy', '7', '2019-01-28 00:11:13', '2019-01-28 00:11:13'),
(323, '12', 'public/documents/7/test/Test1-copy', '7', '2019-01-28 00:11:22', '2019-01-28 00:11:22'),
(324, '12', 'public/documents/7/test/Test1-copy', '7', '2019-01-28 00:11:32', '2019-01-28 00:11:32'),
(325, '12', 'public/documents/7/test/Test1-copy-copy-copy-copy-copy-copy', '7', '2019-01-28 00:11:44', '2019-01-28 00:11:44'),
(326, '12', 'public/documents/7/test/Test1-copy-copy-copy-copy-copy-copy', '7', '2019-01-28 00:11:47', '2019-01-28 00:11:47'),
(327, '12', 'public/documents/7/test/Test1-copy-copy-copy-copy-copy-copy', '7', '2019-01-28 00:11:55', '2019-01-28 00:11:55'),
(328, '12', 'public/documents/7/test/Test1-copy-copy-copy-copy-copy-copy', '7', '2019-01-28 00:12:02', '2019-01-28 00:12:02'),
(329, '12', 'public/documents/7/test/Test1-copy-copy-copy-copy-copy-copy', '7', '2019-01-28 00:12:06', '2019-01-28 00:12:06'),
(330, '12', 'public/documents/7/test/Test1-copy-copy-copy-copy-copy-copy', '7', '2019-01-28 00:12:08', '2019-01-28 00:12:08'),
(331, '1', 'public/documents/1/erwer/terter', '1', '2019-01-28 00:17:24', '2019-01-28 00:17:24'),
(332, '7', 'public/documents/1/erwer/formats_20140628 (1).xlsb', '1', '2019-01-28 00:18:02', '2019-01-28 00:18:02'),
(333, '7', 'public/documents/1/erwer/formats_20140628 (1).xlsb', '1', '2019-01-28 00:18:10', '2019-01-28 00:18:10'),
(334, '7', 'public/documents/1/erwer/formats_20140628 (1).xlsb', '1', '2019-01-28 00:18:19', '2019-01-28 00:18:19'),
(335, '30', '6', '1', '2019-01-28 00:22:05', '2019-01-28 00:22:05'),
(336, '30', '6', '1', '2019-01-28 00:22:11', '2019-01-28 00:22:11'),
(337, '2', 'public/documents/1/erwer/2 Chrysanthemum (1) - Copy - Copy - Copy (1).pdf', '1', '2019-01-28 00:22:38', '2019-01-28 00:22:38'),
(338, '2', 'public/documents/1/erwer/2 Chrysanthemum (1) - Copy - Copy - Copy (2).pdf', '1', '2019-01-28 00:22:39', '2019-01-28 00:22:39'),
(339, '2', 'public/documents/1/erwer/2 Chrysanthemum (1) - Copy - Copy - Copy (3).pdf', '1', '2019-01-28 00:22:39', '2019-01-28 00:22:39'),
(340, '2', 'public/documents/1/erwer/2 Chrysanthemum (1) - Copy - Copy - Copy (4).pdf', '1', '2019-01-28 00:22:40', '2019-01-28 00:22:40'),
(341, '2', 'public/documents/1/erwer/2 Chrysanthemum (1) - Copy - Copy - Copy.pdf', '1', '2019-01-28 00:22:40', '2019-01-28 00:22:40'),
(342, '2', 'public/documents/1/erwer/5 21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy.jpg', '1', '2019-01-28 00:22:40', '2019-01-28 00:22:40'),
(343, '2', 'public/documents/1/erwer/5 21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy.pdf', '1', '2019-01-28 00:22:41', '2019-01-28 00:22:41'),
(344, '2', 'public/documents/1/erwer/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1) (1).jpeg', '1', '2019-01-28 00:22:41', '2019-01-28 00:22:41'),
(345, '2', 'public/documents/1/erwer/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1).jpeg', '1', '2019-01-28 00:22:42', '2019-01-28 00:22:42'),
(346, '2', 'public/documents/1/erwer/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (2).jpeg', '1', '2019-01-28 00:22:42', '2019-01-28 00:22:42'),
(347, '2', 'public/documents/1/erwer/6 25367832364_Current Permissions (3) (1) (1).xlsx', '1', '2019-01-28 00:22:43', '2019-01-28 00:22:43'),
(348, '2', 'public/documents/1/erwer/fdfsf/5 21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (1).pdf', '1', '2019-01-28 00:23:05', '2019-01-28 00:23:05'),
(349, '2', 'public/documents/1/erwer/fdfsf/5 21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy.jpg', '1', '2019-01-28 00:23:06', '2019-01-28 00:23:06'),
(350, '2', 'public/documents/1/erwer/fdfsf/5 21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy.pdf', '1', '2019-01-28 00:23:06', '2019-01-28 00:23:06'),
(351, '2', 'public/documents/1/erwer/fdfsf/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1) (1).jpeg', '1', '2019-01-28 00:23:06', '2019-01-28 00:23:06'),
(352, '2', 'public/documents/1/erwer/fdfsf/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1).jpeg', '1', '2019-01-28 00:23:07', '2019-01-28 00:23:07'),
(353, '2', 'public/documents/1/erwer/fdfsf/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (2).jpeg', '1', '2019-01-28 00:23:07', '2019-01-28 00:23:07'),
(354, '2', 'public/documents/1/erwer/fdfsf/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF.jpeg', '1', '2019-01-28 00:23:08', '2019-01-28 00:23:08'),
(355, '2', 'public/documents/1/erwer/fdfsf/6 25367832364_Current Permissions (3) (1) (1).xlsx', '1', '2019-01-28 00:23:08', '2019-01-28 00:23:08'),
(356, '2', 'public/documents/1/erwer/fdfsf/6 25367832364_Current Permissions (3) (1).xlsx', '1', '2019-01-28 00:23:08', '2019-01-28 00:23:08'),
(357, '2', 'public/documents/1/erwer/fdfsf/6 25367832364_Current Permissions (3) (2) (1).xlsx', '1', '2019-01-28 00:23:09', '2019-01-28 00:23:09'),
(358, '2', 'public/documents/1/erwer/fdfsf/6 25367832364_Current Permissions (3) (2).xlsx', '1', '2019-01-28 00:23:09', '2019-01-28 00:23:09'),
(359, '2', 'public/documents/1/erwer/fdfsf/6 25367832364_Current Permissions (3).xlsx', '1', '2019-01-28 00:23:10', '2019-01-28 00:23:10'),
(360, '2', 'public/documents/1/erwer/fdfsf/7 Chrysanthemum (1) - Copy - Copy - Copy (1).pdf', '1', '2019-01-28 00:23:10', '2019-01-28 00:23:10'),
(361, '2', 'public/documents/1/erwer/fdfsf/8 new.zip', '1', '2019-01-28 00:23:10', '2019-01-28 00:23:10'),
(362, '2', 'public/documents/1/erwer/fdfsf/8 Untitled spreadsheet (1) - Copy (1).pdf', '1', '2019-01-28 00:23:11', '2019-01-28 00:23:11'),
(363, '2', 'public/documents/1/erwer/fdfsf/8 Untitled spreadsheet (1) - Copy.pdf', '1', '2019-01-28 00:23:11', '2019-01-28 00:23:11'),
(364, '2', 'public/documents/1/erwer/fdfsf/8 Untitled spreadsheet (1) (1) - Copy.pdf', '1', '2019-01-28 00:23:12', '2019-01-28 00:23:12'),
(365, '2', 'public/documents/1/erwer/fdfsf/8 Untitled spreadsheet (1) (1).pdf', '1', '2019-01-28 00:23:12', '2019-01-28 00:23:12'),
(366, '2', 'public/documents/1/erwer/fdfsf/8 Untitled spreadsheet (1).pdf', '1', '2019-01-28 00:23:12', '2019-01-28 00:23:12'),
(367, '2', 'public/documents/1/erwer/fdfsf/9 ajax.php', '1', '2019-01-28 00:23:13', '2019-01-28 00:23:13'),
(368, '2', 'public/documents/1/erwer/fdfsf/9 tryrtrt.zip', '1', '2019-01-28 00:23:13', '2019-01-28 00:23:13'),
(369, '2', 'public/documents/1/erwer/fdfsf/9.1 ajax (1).php', '1', '2019-01-28 00:23:13', '2019-01-28 00:23:13'),
(370, '2', 'public/documents/1/erwer/fdfsf/9.1 ajax.php', '1', '2019-01-28 00:23:14', '2019-01-28 00:23:14'),
(371, '2', 'public/documents/1/erwer/fdfsf/11 13 vlc (1).exe', '1', '2019-01-28 00:23:14', '2019-01-28 00:23:14'),
(372, '2', 'public/documents/1/erwer/fdfsf/11 13 vlc.exe', '1', '2019-01-28 00:23:14', '2019-01-28 00:23:14'),
(373, '2', 'public/documents/1/erwer/fdfsf/12 Renewal-Project-Scoring-Rubric.pdf', '1', '2019-01-28 00:23:15', '2019-01-28 00:23:15'),
(374, '2', 'public/documents/1/erwer/fdfsf/13 vlc.exe', '1', '2019-01-28 00:23:15', '2019-01-28 00:23:15'),
(375, '2', 'public/documents/1/erwer/fdfsf/16 wdfsdfsd_Index.pdf', '1', '2019-01-28 00:23:15', '2019-01-28 00:23:15'),
(376, '2', 'public/documents/1/erwer/fdfsf/16.42.10 (1).mp4', '1', '2019-01-28 00:23:16', '2019-01-28 00:23:16'),
(377, '2', 'public/documents/1/erwer/fdfsf/16.42.10 (2).mp4', '1', '2019-01-28 00:23:16', '2019-01-28 00:23:16'),
(378, '2', 'public/documents/1/erwer/fdfsf/16.42.10 (3).mp4', '1', '2019-01-28 00:23:17', '2019-01-28 00:23:17'),
(379, '2', 'public/documents/1/erwer/fdfsf/16.42.10 (4).mp4', '1', '2019-01-28 00:23:17', '2019-01-28 00:23:17'),
(380, '2', 'public/documents/1/erwer/fdfsf/16.42.10 (5).mp4', '1', '2019-01-28 00:23:17', '2019-01-28 00:23:17'),
(381, '7', 'public/documents/1/erwer/fdfsf/16.42.10 (1).mp4', '1', '2019-01-28 00:23:23', '2019-01-28 00:23:23'),
(382, '7', 'public/documents/1/erwer/fdfsf/16 wdfsdfsd_Index.pdf', '1', '2019-01-28 00:23:32', '2019-01-28 00:23:32'),
(383, '7', 'public/documents/1/erwer/fdfsf/13 vlc.exe', '1', '2019-01-28 00:23:43', '2019-01-28 00:23:43'),
(384, '7', 'public/documents/1/erwer/fdfsf/12 Renewal-Project-Scoring-Rubric.pdf', '1', '2019-01-28 00:23:46', '2019-01-28 00:23:46'),
(385, '7', 'public/documents/1/erwer/fdfsf/9.1 ajax (1).php', '1', '2019-01-28 00:23:53', '2019-01-28 00:23:53'),
(386, '7', 'public/documents/1/erwer/fdfsf/6 25367832364_Current Permissions (3).xlsx', '1', '2019-01-28 00:24:02', '2019-01-28 00:24:02'),
(387, '27', 'public/documents/1/erwer/fdfsf/8 new.zip', '1', '2019-01-28 00:24:06', '2019-01-28 00:24:06'),
(388, '14', 'public/documents/7/test1', '7', '2019-01-28 00:25:19', '2019-01-28 00:25:19'),
(389, '28', '44', '7', '2019-01-28 00:25:20', '2019-01-28 00:25:20'),
(390, '1', 'public/documents/7/test1/hey_check in folder', '7', '2019-01-28 00:25:48', '2019-01-28 00:25:48'),
(391, '2', 'public/documents/7/test1/Jellyfish (1).jpg', '7', '2019-01-28 00:40:20', '2019-01-28 00:40:20'),
(392, '28', '45', '7', '2019-01-28 00:51:03', '2019-01-28 00:51:03'),
(393, '12', 'public/documents/1/erwer/fdfsf', '1', '2019-01-28 01:30:20', '2019-01-28 01:30:20'),
(394, '12', 'public/documents/1/erwer/fdfsf', '1', '2019-01-28 01:30:44', '2019-01-28 01:30:44'),
(395, '27', 'public/documents/1/erwer/fdfsf-copy/9 tryrtrt.zip', '1', '2019-01-28 01:31:18', '2019-01-28 01:31:18'),
(396, '7', 'public/documents/1/erwer/fdfsf-copy/16.42.10 (4).mp4', '1', '2019-01-28 01:31:21', '2019-01-28 01:31:21'),
(397, '1', 'public/documents/1/erwer/fdfsf-copy/yuyt', '1', '2019-01-28 01:31:50', '2019-01-28 01:31:50'),
(398, '1', 'public/documents/1/erwer/fdfsf/new/ghg', '1', '2019-01-28 01:31:59', '2019-01-28 01:31:59'),
(399, '12', 'public/documents/1/erwer/fdfsf/new', '1', '2019-01-28 01:32:11', '2019-01-28 01:32:11'),
(400, '2', 'public/documents/1/erwer/fdfsf/new/ghg/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1) (1).jpeg', '1', '2019-01-28 01:32:39', '2019-01-28 01:32:39'),
(401, '2', 'public/documents/1/erwer/fdfsf/new/ghg/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1).jpeg', '1', '2019-01-28 01:32:40', '2019-01-28 01:32:40'),
(402, '2', 'public/documents/1/erwer/fdfsf/new/ghg/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (2).jpeg', '1', '2019-01-28 01:32:40', '2019-01-28 01:32:40'),
(403, '2', 'public/documents/1/erwer/fdfsf/new/ghg/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF.jpeg', '1', '2019-01-28 01:32:40', '2019-01-28 01:32:40'),
(404, '2', 'public/documents/1/erwer/fdfsf/new/ghg/5 21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy.jpg', '1', '2019-01-28 01:32:40', '2019-01-28 01:32:40'),
(405, '2', 'public/documents/1/erwer/fdfsf/new/ghg/5 21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy.pdf', '1', '2019-01-28 01:32:41', '2019-01-28 01:32:41'),
(406, '3', 'public/documents/1/erwer/rer dfgsfg', '1', '2019-01-28 01:46:50', '2019-01-28 01:46:50'),
(407, '1', 'public/documents/1/erwer/hjghj_jhhj', '1', '2019-01-28 01:49:06', '2019-01-28 01:49:06'),
(408, '1', 'public/documents/1/erwer/_gh  ghg   ghhgh', '1', '2019-01-28 01:49:15', '2019-01-28 01:49:15'),
(409, '25', 'public/documents/7/test', '7', '2019-01-28 02:07:48', '2019-01-28 02:07:48'),
(410, '7', 'public/documents/1/erwer/5 21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy.jpg', '1', '2019-01-28 02:33:17', '2019-01-28 02:33:17'),
(411, '1', 'public/documents/1/erwer/hjhj', '1', '2019-01-28 02:38:12', '2019-01-28 02:38:12'),
(412, '1', 'public/documents/1/erwer/fsdfsdfd', '1', '2019-01-28 02:38:27', '2019-01-28 02:38:27'),
(413, '1', 'public/documents/1/erwer/asds_adsa', '1', '2019-01-28 02:38:32', '2019-01-28 02:38:32'),
(414, '2', 'public/documents/7/test/Jellyfish.jpg', '7', '2019-01-28 03:09:39', '2019-01-28 03:09:39'),
(415, '7', 'public/documents/7/test/Jellyfish.jpg', '7', '2019-01-28 03:10:00', '2019-01-28 03:10:00'),
(416, '26', 'public/documents/7/test/Jellyfish.jpg', '7', '2019-01-28 03:10:09', '2019-01-28 03:10:09'),
(417, '15', '21', '7', '2019-01-28 03:10:53', '2019-01-28 03:10:53'),
(418, '15', '21', '7', '2019-01-28 03:11:18', '2019-01-28 03:11:18'),
(419, '15', '21', '7', '2019-01-28 03:11:29', '2019-01-28 03:11:29'),
(420, '15', '21', '7', '2019-01-28 03:12:12', '2019-01-28 03:12:12'),
(421, '29', 'public/documents/7/test', '7', '2019-01-28 03:59:07', '2019-01-28 03:59:07'),
(422, '14', 'public/documents/7/tttt', '7', '2019-01-28 04:29:31', '2019-01-28 04:29:31'),
(423, '28', '46', '7', '2019-01-28 04:29:31', '2019-01-28 04:29:31'),
(424, '6', 'public/documents/7/test1/Jellyfish (1).jpg', '7', '2019-01-28 04:39:59', '2019-01-28 04:39:59'),
(425, '1', 'public/documents/7/test1/8uy7u87', '7', '2019-01-28 04:43:12', '2019-01-28 04:43:12'),
(426, '30', '22', '7', '2019-01-28 04:46:14', '2019-01-28 04:46:14'),
(427, '30', '22', '7', '2019-01-28 04:46:15', '2019-01-28 04:46:15'),
(428, '30', '22', '7', '2019-01-28 04:46:16', '2019-01-28 04:46:16'),
(429, '30', '22', '7', '2019-01-28 04:46:17', '2019-01-28 04:46:17'),
(430, '30', '22', '7', '2019-01-28 04:46:17', '2019-01-28 04:46:17'),
(431, '30', '22', '7', '2019-01-28 04:46:21', '2019-01-28 04:46:21'),
(432, '30', '22', '7', '2019-01-28 04:52:55', '2019-01-28 04:52:55'),
(433, '5', 'public/documents/7/test1/8uy7u87', '7', '2019-01-28 04:53:51', '2019-01-28 04:53:51'),
(434, '5', 'public/documents/7/test1/hey_check in folder', '7', '2019-01-28 04:54:18', '2019-01-28 04:54:18');
INSERT INTO `reports` (`id`, `action`, `document_path`, `Auth`, `created_at`, `updated_at`) VALUES
(435, '7', 'public/documents/1/erwer/fdfsf/12 Renewal-Project-Scoring-Rubric.pdf', '1', '2019-01-28 05:01:34', '2019-01-28 05:01:34'),
(436, '7', 'public/documents/1/erwer/fdfsf-copy/retert/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF.jpeg', '1', '2019-01-28 05:02:19', '2019-01-28 05:02:19'),
(437, '30', '6', '1', '2019-01-28 07:29:57', '2019-01-28 07:29:57'),
(438, '7', 'public/documents/1/erwer/9713ABFA-C1C5-4BC2-B84B-5B749916B5B2.png', '1', '2019-01-28 07:30:31', '2019-01-28 07:30:31'),
(439, '7', 'public/documents/1/erwer/9713ABFA-C1C5-4BC2-B84B-5B749916B5B2.png', '1', '2019-01-28 07:30:46', '2019-01-28 07:30:46'),
(440, '1', 'public/documents/1/erwer/rert', '1', '2019-01-28 07:33:08', '2019-01-28 07:33:08'),
(441, '7', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (2).jpg', '1', '2019-01-28 07:47:34', '2019-01-28 07:47:34'),
(442, '7', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (2).jpg', '1', '2019-01-28 07:53:26', '2019-01-28 07:53:26'),
(443, '7', 'public/documents/1/erwer/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF.jpeg', '1', '2019-01-29 00:45:00', '2019-01-29 00:45:00'),
(444, '7', 'public/documents/1/erwer/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF.jpeg', '1', '2019-01-29 00:45:21', '2019-01-29 00:45:21'),
(445, '7', 'public/documents/1/erwer/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF.jpeg', '1', '2019-01-29 00:51:37', '2019-01-29 00:51:37'),
(446, '7', 'public/documents/1/erwer/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF.jpeg', '1', '2019-01-29 00:51:52', '2019-01-29 00:51:52'),
(447, '7', 'public/documents/2/4597474/top_image.jpg', '2', '2019-01-29 01:17:40', '2019-01-29 01:17:40'),
(448, '7', 'public/documents/2/4597474/top_image.jpg', '2', '2019-01-29 01:19:14', '2019-01-29 01:19:14'),
(449, '7', 'public/documents/3/34234234/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (4) (1).jpg', '3', '2019-01-29 01:51:40', '2019-01-29 01:51:40'),
(450, '7', 'public/documents/3/34234234/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (4) (1).jpg', '3', '2019-01-29 01:55:07', '2019-01-29 01:55:07'),
(451, '7', 'public/documents/1/erwer/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF.jpeg', '1', '2019-01-29 02:24:19', '2019-01-29 02:24:19'),
(452, '7', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (1).jpg', '1', '2019-01-29 05:36:45', '2019-01-29 05:36:45'),
(453, '1', 'public/documents/1/erwer/gh', '1', '2019-01-29 08:34:57', '2019-01-29 08:34:57'),
(454, '7', 'public/documents/3/34234234/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (4) (1).jpg', '3', '2019-01-29 09:22:18', '2019-01-29 09:22:18'),
(455, '7', 'public/documents/3/34234234/sdfsd/2 Chrysanthemum (1) - Copy - Copy - Copy (4).pdf', '3', '2019-01-29 09:22:40', '2019-01-29 09:22:40'),
(456, '2', 'public/documents/3/34234234/sdfsd/ Perfumes.desktop', '3', '2019-01-29 09:23:25', '2019-01-29 09:23:25'),
(457, '7', 'public/documents/3/34234234/sdfsd/ Perfumes.desktop', '3', '2019-01-29 09:23:28', '2019-01-29 09:23:28'),
(458, '7', 'public/documents/3/34234234/sdfsd/ Perfumes.desktop', '3', '2019-01-29 09:23:47', '2019-01-29 09:23:47'),
(459, '7', 'public/documents/3/34234234/sdfsd/ Perfumes.desktop', '3', '2019-01-29 09:23:55', '2019-01-29 09:23:55'),
(460, '29', 'public/documents/7/test1', '7', '2019-01-30 04:06:21', '2019-01-30 04:06:21'),
(461, '29', 'public/documents/7/tttt', '7', '2019-01-30 04:06:25', '2019-01-30 04:06:25'),
(462, '14', 'public/documents/7/test', '7', '2019-01-30 04:06:46', '2019-01-30 04:06:46'),
(463, '28', '47', '7', '2019-01-30 04:06:46', '2019-01-30 04:06:46'),
(464, '14', 'public/documents/7/test1', '7', '2019-01-30 04:07:31', '2019-01-30 04:07:31'),
(465, '28', '48', '7', '2019-01-30 04:07:32', '2019-01-30 04:07:32'),
(466, '14', 'public/documents/7/test2', '7', '2019-01-30 04:11:00', '2019-01-30 04:11:00'),
(467, '28', '49', '7', '2019-01-30 04:11:01', '2019-01-30 04:11:01'),
(468, '29', 'public/documents/7/test', '7', '2019-01-30 04:11:49', '2019-01-30 04:11:49'),
(469, '14', 'public/documents/7/ty87', '7', '2019-01-30 04:12:41', '2019-01-30 04:12:41'),
(470, '28', '50', '7', '2019-01-30 04:12:41', '2019-01-30 04:12:41'),
(471, '1', 'public/documents/7/test1/ijhjibhujij', '7', '2019-01-30 04:13:19', '2019-01-30 04:13:19'),
(472, '1', 'public/documents/7/test1/test', '7', '2019-01-30 04:25:06', '2019-01-30 04:25:06'),
(473, '12', 'public/documents/7/test1/test', '7', '2019-01-30 04:25:12', '2019-01-30 04:25:12'),
(474, '12', 'public/documents/7/test1/test', '7', '2019-01-30 04:25:16', '2019-01-30 04:25:16'),
(475, '12', 'public/documents/7/test1/test', '7', '2019-01-30 04:25:40', '2019-01-30 04:25:40'),
(476, '12', 'public/documents/7/test1/test', '7', '2019-01-30 04:25:45', '2019-01-30 04:25:45'),
(477, '12', 'public/documents/7/test1/test', '7', '2019-01-30 04:25:51', '2019-01-30 04:25:51'),
(478, '12', 'public/documents/7/test1/test', '7', '2019-01-30 04:25:57', '2019-01-30 04:25:57'),
(479, '12', 'public/documents/7/test1/test', '7', '2019-01-30 04:26:10', '2019-01-30 04:26:10'),
(480, '12', 'public/documents/7/test1/test', '7', '2019-01-30 04:26:24', '2019-01-30 04:26:24'),
(481, '12', 'public/documents/7/test1/test', '7', '2019-01-30 04:26:32', '2019-01-30 04:26:32'),
(482, '12', 'public/documents/7/test1/test', '7', '2019-01-30 04:26:45', '2019-01-30 04:26:45'),
(483, '12', 'public/documents/7/test1/test', '7', '2019-01-30 04:26:54', '2019-01-30 04:26:54'),
(484, '25', 'public/documents/7/test1', '7', '2019-01-30 04:36:31', '2019-01-30 04:36:31'),
(485, '25', 'public/documents/7/test1', '7', '2019-01-30 04:37:31', '2019-01-30 04:37:31'),
(486, '25', 'public/documents/7/test1', '7', '2019-01-30 04:39:39', '2019-01-30 04:39:39'),
(487, '1', 'public/documents/1/erwer/ghfgh_hgfh_fgh', '1', '2019-01-30 04:48:31', '2019-01-30 04:48:31'),
(488, '1', 'public/documents/1/erwer/gh_gh_gh', '1', '2019-01-30 04:48:40', '2019-01-30 04:48:40'),
(489, '1', 'public/documents/7/test1/kllklkl', '7', '2019-01-30 04:50:25', '2019-01-30 04:50:25'),
(490, '5', 'public/documents/7/test1/ijhjibhujij', '7', '2019-01-30 04:50:42', '2019-01-30 04:50:42'),
(491, '5', 'public/documents/7/test1/test', '7', '2019-01-30 04:50:42', '2019-01-30 04:50:42'),
(492, '5', 'public/documents/7/test1/test-copy', '7', '2019-01-30 04:50:42', '2019-01-30 04:50:42'),
(493, '5', 'public/documents/7/test1/test-copy-copy', '7', '2019-01-30 04:50:43', '2019-01-30 04:50:43'),
(494, '5', 'public/documents/7/test1/test-copy-copy-copy', '7', '2019-01-30 04:50:44', '2019-01-30 04:50:44'),
(495, '5', 'public/documents/7/test1/test-copy-copy-copy-copy', '7', '2019-01-30 04:50:44', '2019-01-30 04:50:44'),
(496, '5', 'public/documents/7/test1/test-copy-copy-copy-copy-copy', '7', '2019-01-30 04:50:44', '2019-01-30 04:50:44'),
(497, '5', 'public/documents/7/test1/test-copy-copy-copy-copy-copy-copy', '7', '2019-01-30 04:50:45', '2019-01-30 04:50:45'),
(498, '5', 'public/documents/7/test1/test-copy-copy-copy-copy-copy-copy-copy', '7', '2019-01-30 04:50:45', '2019-01-30 04:50:45'),
(499, '5', 'public/documents/7/test1/test-copy-copy-copy-copy-copy-copy-copy-copy', '7', '2019-01-30 04:50:45', '2019-01-30 04:50:45'),
(500, '5', 'public/documents/7/test1/test-copy-copy-copy-copy-copy-copy-copy-copy-copy', '7', '2019-01-30 04:50:46', '2019-01-30 04:50:46'),
(501, '5', 'public/documents/7/test1/test-copy-copy-copy-copy-copy-copy-copy-copy-copy-copy', '7', '2019-01-30 04:50:46', '2019-01-30 04:50:46'),
(502, '5', 'public/documents/7/test1/kllklkl', '7', '2019-01-30 04:50:46', '2019-01-30 04:50:46'),
(503, '1', 'public/documents/7/test1/ijkjnikj', '7', '2019-01-30 04:51:07', '2019-01-30 04:51:07'),
(504, '2', 'public/documents/7/test1/-families-20190129.csv', '7', '2019-01-30 04:54:02', '2019-01-30 04:54:02'),
(505, '28', '51', '7', '2019-01-30 04:55:44', '2019-01-30 04:55:44'),
(506, '1', 'public/documents/7/test1/test', '7', '2019-01-30 04:59:54', '2019-01-30 04:59:54'),
(507, '13', 'public/documents/7/test1/-families-20190129.csv', '7', '2019-01-30 05:00:48', '2019-01-30 05:00:48'),
(508, '14', 'public/documents/7/test12345', '7', '2019-01-30 05:04:14', '2019-01-30 05:04:14'),
(509, '28', '52', '7', '2019-01-30 05:04:14', '2019-01-30 05:04:14'),
(510, '2', 'public/documents/7/test12345/Jellyfish (2).jpg', '7', '2019-01-30 05:04:44', '2019-01-30 05:04:44'),
(511, '7', 'public/documents/7/test1/-families-20190129-copy.csv', '7', '2019-01-30 05:34:19', '2019-01-30 05:34:19'),
(512, '2', 'public/documents/7/test1/Jellyfish (2).jpg', '7', '2019-01-30 07:05:57', '2019-01-30 07:05:57'),
(513, '7', 'public/documents/7/test1/Jellyfish (2).jpg', '7', '2019-01-30 07:05:59', '2019-01-30 07:05:59'),
(514, '1', 'public/documents/7/test1/teststet', '7', '2019-01-30 07:08:26', '2019-01-30 07:08:26'),
(515, '25', 'public/documents/7/test1/test', '7', '2019-01-30 07:52:31', '2019-01-30 07:52:31'),
(516, '7', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (1).jpg', '1', '2019-02-04 07:13:38', '2019-02-04 07:13:38'),
(517, '7', 'public/documents/1/erwer/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF.jpeg', '1', '2019-02-04 07:15:07', '2019-02-04 07:15:07'),
(518, '7', 'public/documents/1/erwer/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF.jpeg', '1', '2019-02-04 07:15:59', '2019-02-04 07:15:59'),
(519, '7', 'public/documents/1/erwer/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF.jpeg', '1', '2019-02-04 07:23:57', '2019-02-04 07:23:57'),
(520, '7', 'public/documents/1/erwer/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF.jpeg', '1', '2019-02-04 07:24:18', '2019-02-04 07:24:18'),
(521, '7', 'public/documents/1/erwer/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF.jpeg', '1', '2019-02-04 07:24:31', '2019-02-04 07:24:31'),
(522, '7', 'public/documents/1/erwer/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF.jpeg', '1', '2019-02-04 07:24:48', '2019-02-04 07:24:48'),
(523, '14', 'public/documents/1/ioiijoio', '1', '2019-02-04 07:25:17', '2019-02-04 07:25:17'),
(524, '28', '53', '1', '2019-02-04 07:25:17', '2019-02-04 07:25:17'),
(525, '2', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 07:25:30', '2019-02-04 07:25:30'),
(526, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 07:25:32', '2019-02-04 07:25:32'),
(527, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 07:26:29', '2019-02-04 07:26:29'),
(528, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 07:28:25', '2019-02-04 07:28:25'),
(529, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 07:33:34', '2019-02-04 07:33:34'),
(530, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 07:34:43', '2019-02-04 07:34:43'),
(531, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 07:37:34', '2019-02-04 07:37:34'),
(532, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 07:41:06', '2019-02-04 07:41:06'),
(533, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 07:42:01', '2019-02-04 07:42:01'),
(534, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 07:42:13', '2019-02-04 07:42:13'),
(535, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 07:42:35', '2019-02-04 07:42:35'),
(536, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 07:43:33', '2019-02-04 07:43:33'),
(537, '7', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (1).jpg', '1', '2019-02-04 23:04:45', '2019-02-04 23:04:45'),
(538, '7', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (2).jpg', '1', '2019-02-04 23:05:08', '2019-02-04 23:05:08'),
(539, '7', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (2).jpg', '1', '2019-02-04 23:15:31', '2019-02-04 23:15:31'),
(540, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 23:15:42', '2019-02-04 23:15:42'),
(541, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 23:16:56', '2019-02-04 23:16:56'),
(542, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 23:17:09', '2019-02-04 23:17:09'),
(543, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 23:17:12', '2019-02-04 23:17:12'),
(544, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 23:17:29', '2019-02-04 23:17:29'),
(545, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 23:17:42', '2019-02-04 23:17:42'),
(546, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 23:17:46', '2019-02-04 23:17:46'),
(547, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 23:18:01', '2019-02-04 23:18:01'),
(548, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 23:19:10', '2019-02-04 23:19:10'),
(549, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 23:19:17', '2019-02-04 23:19:17'),
(550, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 23:19:31', '2019-02-04 23:19:31'),
(551, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 23:19:43', '2019-02-04 23:19:43'),
(552, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 23:19:54', '2019-02-04 23:19:54'),
(553, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 23:20:14', '2019-02-04 23:20:14'),
(554, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-04 23:26:30', '2019-02-04 23:26:30'),
(555, '14', 'public/documents/4/marketing_material', '4', '2019-02-05 07:10:46', '2019-02-05 07:10:46'),
(556, '28', '54', '4', '2019-02-05 07:10:46', '2019-02-05 07:10:46'),
(557, '2', 'public/documents/4/marketing_material/CDCP_Corporate_Valuation_Report-SAMPLE.pdf', '4', '2019-02-05 07:12:43', '2019-02-05 07:12:43'),
(558, '7', 'public/documents/4/marketing_material/CDCP_Corporate_Valuation_Report-SAMPLE.pdf', '4', '2019-02-05 07:12:48', '2019-02-05 07:12:48'),
(559, '26', 'public/documents/4/marketing_material/CDCP_Corporate_Valuation_Report-SAMPLE.pdf', '4', '2019-02-05 07:13:51', '2019-02-05 07:13:51'),
(560, '7', 'public/documents/4/marketing_material/CDCP_Corporate_Valuation_Report-SAMPLE.pdf', '4', '2019-02-05 18:42:35', '2019-02-05 18:42:35'),
(561, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-05 23:11:12', '2019-02-05 23:11:12'),
(562, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-05 23:18:43', '2019-02-05 23:18:43'),
(563, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-06 02:04:16', '2019-02-06 02:04:16'),
(564, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-06 02:24:02', '2019-02-06 02:24:02'),
(565, '30', '29', '1', '2019-02-06 02:40:48', '2019-02-06 02:40:48'),
(566, '15', '29', '1', '2019-02-06 02:40:59', '2019-02-06 02:40:59'),
(567, '15', '29', '1', '2019-02-06 02:41:04', '2019-02-06 02:41:04'),
(568, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-06 08:02:57', '2019-02-06 08:02:57'),
(569, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-06 08:03:17', '2019-02-06 08:03:17'),
(570, '26', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-06 08:03:38', '2019-02-06 08:03:38'),
(571, '26', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-06 08:04:10', '2019-02-06 08:04:10'),
(572, '7', 'public/documents/1/erwer/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF.jpeg', '1', '2019-02-07 01:04:09', '2019-02-07 01:04:09'),
(573, '7', 'public/documents/1/erwer/5 21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy.jpg', '1', '2019-02-07 01:04:23', '2019-02-07 01:04:23'),
(574, '7', 'public/documents/1/erwer/5 21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy.jpg', '1', '2019-02-07 01:04:58', '2019-02-07 01:04:58'),
(575, '7', 'public/documents/1/erwer/5 21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy.jpg', '1', '2019-02-07 01:05:12', '2019-02-07 01:05:12'),
(576, '7', 'public/documents/1/erwer/5 21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy.jpg', '1', '2019-02-07 01:05:14', '2019-02-07 01:05:14'),
(577, '7', 'public/documents/1/erwer/5 21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy.jpg', '1', '2019-02-07 01:05:48', '2019-02-07 01:05:48'),
(578, '7', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (2).jpg', '1', '2019-02-07 01:06:08', '2019-02-07 01:06:08'),
(579, '14', 'public/documents/1/jkkjkjkjk', '1', '2019-02-07 01:07:10', '2019-02-07 01:07:10'),
(580, '28', '55', '1', '2019-02-07 01:07:10', '2019-02-07 01:07:10'),
(581, '2', 'public/documents/1/jkkjkjkjk/Koala.jpg', '1', '2019-02-07 01:07:24', '2019-02-07 01:07:24'),
(582, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '1', '2019-02-07 01:07:26', '2019-02-07 01:07:26'),
(583, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '1', '2019-02-07 01:07:54', '2019-02-07 01:07:54'),
(584, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '1', '2019-02-07 01:08:58', '2019-02-07 01:08:58'),
(585, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '1', '2019-02-07 01:09:13', '2019-02-07 01:09:13'),
(586, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '1', '2019-02-07 01:09:18', '2019-02-07 01:09:18'),
(587, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '1', '2019-02-07 01:10:09', '2019-02-07 01:10:09'),
(588, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '1', '2019-02-07 01:10:38', '2019-02-07 01:10:38'),
(589, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '1', '2019-02-07 01:10:42', '2019-02-07 01:10:42'),
(590, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '1', '2019-02-07 01:11:50', '2019-02-07 01:11:50'),
(591, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '1', '2019-02-07 01:12:08', '2019-02-07 01:12:08'),
(592, '26', 'public/documents/1/jkkjkjkjk/Koala.jpg', '1', '2019-02-07 01:13:42', '2019-02-07 01:13:42'),
(593, '7', 'public/documents/1/erwer/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF.jpeg', '1', '2019-02-07 01:49:19', '2019-02-07 01:49:19'),
(594, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '1', '2019-02-07 02:27:53', '2019-02-07 02:27:53'),
(595, '7', 'public/documents/1/erwer/21.7 Chrysanthemum (1) (1) - Copy - Copy (2) - Copy - Copy - Copy (2).jpg', '1', '2019-02-07 02:27:53', '2019-02-07 02:27:53'),
(596, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '1', '2019-02-07 05:45:29', '2019-02-07 05:45:29'),
(597, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '1', '2019-02-07 06:36:27', '2019-02-07 06:36:27'),
(598, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '1', '2019-02-07 06:58:54', '2019-02-07 06:58:54'),
(599, '26', 'public/documents/1/jkkjkjkjk/Koala.jpg', '1', '2019-02-07 07:00:51', '2019-02-07 07:00:51'),
(600, '1', 'public/documents/1/erwer/rerdfgsfg/dfgf/tryrty', '1', '2019-02-08 09:14:50', '2019-02-08 09:14:50'),
(601, '1', 'public/documents/1/erwer/rerdfgsfg/dfgf/ghgh', '1', '2019-02-08 09:14:54', '2019-02-08 09:14:54'),
(602, '2', 'public/documents/1/erwer/rerdfgsfg/dfgf/tryrty/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (2) (2).jpeg', '1', '2019-02-08 09:15:03', '2019-02-08 09:15:03'),
(603, '2', 'public/documents/1/erwer/rerdfgsfg/dfgf/tryrty/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (2).jpeg', '1', '2019-02-08 09:15:03', '2019-02-08 09:15:03'),
(604, '2', 'public/documents/1/erwer/rerdfgsfg/dfgf/tryrty/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (3).jpeg', '1', '2019-02-08 09:15:04', '2019-02-08 09:15:04'),
(605, '2', 'public/documents/1/erwer/rerdfgsfg/dfgf/tryrty/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (4).jpeg', '1', '2019-02-08 09:15:04', '2019-02-08 09:15:04'),
(606, '14', 'public/documents/9/oop', '9', '2019-02-08 09:19:22', '2019-02-08 09:19:22'),
(607, '28', '56', '9', '2019-02-08 09:19:22', '2019-02-08 09:19:22'),
(608, '28', '57', '1', '2019-02-11 01:49:35', '2019-02-11 01:49:35'),
(609, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '6', '2019-02-11 01:51:03', '2019-02-11 01:51:03'),
(610, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '6', '2019-02-11 01:51:15', '2019-02-11 01:51:15'),
(611, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '6', '2019-02-11 01:52:22', '2019-02-11 01:52:22'),
(612, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '6', '2019-02-11 01:52:30', '2019-02-11 01:52:30'),
(613, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '6', '2019-02-11 01:52:57', '2019-02-11 01:52:57'),
(614, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '6', '2019-02-11 01:53:06', '2019-02-11 01:53:06'),
(615, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '6', '2019-02-11 01:53:12', '2019-02-11 01:53:12'),
(616, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '6', '2019-02-11 01:53:21', '2019-02-11 01:53:21'),
(617, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '6', '2019-02-11 01:53:28', '2019-02-11 01:53:28'),
(618, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '6', '2019-02-11 01:53:37', '2019-02-11 01:53:37'),
(619, '26', 'public/documents/1/jkkjkjkjk/Koala.jpg', '6', '2019-02-11 01:53:39', '2019-02-11 01:53:39'),
(620, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '6', '2019-02-11 01:53:43', '2019-02-11 01:53:43'),
(621, '26', 'public/documents/1/jkkjkjkjk/Koala.jpg', '6', '2019-02-11 01:53:46', '2019-02-11 01:53:46'),
(622, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '1', '2019-02-12 22:12:29', '2019-02-12 22:12:29'),
(623, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '1', '2019-02-12 22:13:03', '2019-02-12 22:13:03'),
(624, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '1', '2019-02-12 22:14:44', '2019-02-12 22:14:44'),
(625, '7', 'public/documents/1/jkkjkjkjk/Koala.jpg', '1', '2019-02-12 22:15:27', '2019-02-12 22:15:27'),
(626, '7', 'public/documents/4/marketing_material/CDCP_Corporate_Valuation_Report-SAMPLE.pdf', '4', '2019-02-18 08:35:02', '2019-02-18 08:35:02'),
(627, '2', 'public/documents/10/dreamworker/Priyanshu.docx', '10', '2019-02-18 21:51:09', '2019-02-18 21:51:09'),
(628, '7', 'public/documents/10/dreamworker/Priyanshu.docx', '10', '2019-02-18 21:51:13', '2019-02-18 21:51:13'),
(629, '2', 'public/documents/10/dreamworker/034C1B70-FC24-4927-9476-A6379988F403.png', '10', '2019-02-18 21:52:30', '2019-02-18 21:52:30'),
(630, '2', 'public/documents/10/dreamworker/503C0924-C66A-44A6-A120-B206673AD68B.png', '10', '2019-02-18 21:52:30', '2019-02-18 21:52:30'),
(631, '7', 'public/documents/10/dreamworker/034C1B70-FC24-4927-9476-A6379988F403.png', '10', '2019-02-18 21:52:33', '2019-02-18 21:52:33'),
(632, '2', 'public/documents/1/erwer/pdf.pdf', '1', '2019-02-20 02:07:03', '2019-02-20 02:07:03'),
(633, '7', 'public/documents/1/erwer/pdf.pdf', '1', '2019-02-20 02:07:07', '2019-02-20 02:07:07'),
(634, '7', 'public/documents/1/erwer/pdf.pdf', '1', '2019-02-20 02:09:09', '2019-02-20 02:09:09'),
(635, '7', 'public/documents/1/erwer/pdf.pdf', '1', '2019-02-20 02:10:16', '2019-02-20 02:10:16'),
(636, '7', 'public/documents/1/erwer/pdf.pdf', '1', '2019-02-20 02:11:22', '2019-02-20 02:11:22'),
(637, '2', 'public/documents/1/ioiijoio/pdf.pdf', '1', '2019-02-20 08:43:25', '2019-02-20 08:43:25'),
(638, '7', 'public/documents/1/ioiijoio/pdf.pdf', '1', '2019-02-20 08:43:32', '2019-02-20 08:43:32'),
(639, '7', 'public/documents/4/marketing_material/CDCP_Corporate_Valuation_Report-SAMPLE.pdf', '4', '2019-02-20 12:59:55', '2019-02-20 12:59:55'),
(640, '7', 'public/documents/4/marketing_material/CDCP_Corporate_Valuation_Report-SAMPLE.pdf', '4', '2019-02-20 13:02:50', '2019-02-20 13:02:50'),
(641, '2', 'public/documents/4/marketing_material/Business plan complete Meat and Egg production (2) (1).pdf', '4', '2019-02-20 13:09:39', '2019-02-20 13:09:39'),
(642, '1', 'public/documents/4/marketing_material/Test_43', '4', '2019-02-20 13:11:05', '2019-02-20 13:11:05'),
(643, '2', 'public/documents/4/marketing_material/Test_43/5108374870.pdf', '4', '2019-02-20 13:11:27', '2019-02-20 13:11:27'),
(644, '7', 'public/documents/4/marketing_material/Test_43/5108374870.pdf', '4', '2019-02-20 13:11:31', '2019-02-20 13:11:31'),
(645, '7', 'public/documents/4/marketing_material/CDCP_Corporate_Valuation_Report-SAMPLE.pdf', '4', '2019-02-20 13:22:14', '2019-02-20 13:22:14'),
(646, '7', 'public/documents/4/marketing_material/CDCP_Corporate_Valuation_Report-SAMPLE.pdf', '4', '2019-02-20 13:24:10', '2019-02-20 13:24:10'),
(647, '7', 'public/documents/1/erwer/pdf.pdf', '1', '2019-02-21 05:32:57', '2019-02-21 05:32:57'),
(648, '7', 'public/documents/4/marketing_material/CDCP_Corporate_Valuation_Report-SAMPLE.pdf', '4', '2019-02-21 06:36:08', '2019-02-21 06:36:08'),
(649, '7', 'public/documents/4/marketing_material/CDCP_Corporate_Valuation_Report-SAMPLE.pdf', '4', '2019-02-21 07:52:05', '2019-02-21 07:52:05'),
(650, '2', 'public/documents/11/cdcp/CDCP_SAMPLE - Corporate_Valuation_Report.pdf', '11', '2019-02-21 08:27:02', '2019-02-21 08:27:02'),
(651, '2', 'public/documents/11/cdcp/CDCP_SAMPLE - Investment_Memorandum.pdf', '11', '2019-02-21 08:27:02', '2019-02-21 08:27:02'),
(652, '2', 'public/documents/11/cdcp/CDCP_SAMPLE - Teaser.pdf', '11', '2019-02-21 08:27:02', '2019-02-21 08:27:02'),
(653, '7', 'public/documents/11/cdcp/CDCP_SAMPLE - Corporate_Valuation_Report.pdf', '11', '2019-02-21 08:30:25', '2019-02-21 08:30:25'),
(654, '7', 'public/documents/11/cdcp/CDCP_SAMPLE - Corporate_Valuation_Report.pdf', '11', '2019-02-21 08:34:38', '2019-02-21 08:34:38'),
(655, '7', 'public/documents/11/cdcp/CDCP_SAMPLE - Teaser.pdf', '11', '2019-02-21 08:35:50', '2019-02-21 08:35:50'),
(656, '7', 'public/documents/11/cdcp/CDCP_SAMPLE - Corporate_Valuation_Report.pdf', '11', '2019-02-21 08:42:28', '2019-02-21 08:42:28'),
(657, '7', 'public/documents/11/cdcp/CDCP_SAMPLE - Corporate_Valuation_Report.pdf', '11', '2019-02-21 08:45:53', '2019-02-21 08:45:53'),
(658, '7', 'public/documents/11/cdcp/CDCP_SAMPLE - Corporate_Valuation_Report.pdf', '11', '2019-02-21 08:52:07', '2019-02-21 08:52:07'),
(659, '2', 'public/documents/11/cdcp/CDCP_SAMPLE - Corporate_Valuation_Report_CONFIDENTIAL.pdf', '11', '2019-02-21 08:52:36', '2019-02-21 08:52:36'),
(660, '7', 'public/documents/11/cdcp/CDCP_SAMPLE - Corporate_Valuation_Report_CONFIDENTIAL.pdf', '11', '2019-02-21 08:52:41', '2019-02-21 08:52:41'),
(661, '2', 'public/documents/4/marketing_material/CDCP_SAMPLE - Corporate_Valuation_Report.pdf', '4', '2019-02-21 08:59:11', '2019-02-21 08:59:11'),
(662, '2', 'public/documents/4/marketing_material/CDCP_SAMPLE - Investment_Memorandum.pdf', '4', '2019-02-21 08:59:11', '2019-02-21 08:59:11'),
(663, '2', 'public/documents/4/marketing_material/CDCP_SAMPLE - Teaser.pdf', '4', '2019-02-21 08:59:11', '2019-02-21 08:59:11'),
(664, '14', 'public/documents/1/tdg', '1', '2019-02-22 05:42:31', '2019-02-22 05:42:31'),
(665, '28', '60', '1', '2019-02-22 05:42:31', '2019-02-22 05:42:31'),
(666, '2', 'public/documents/1/tdg/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (10).jpeg', '1', '2019-02-22 05:42:43', '2019-02-22 05:42:43'),
(667, '7', 'public/documents/1/tdg/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (10).jpeg', '1', '2019-02-22 05:42:45', '2019-02-22 05:42:45'),
(668, '7', 'public/documents/1/tdg/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (10).jpeg', '1', '2019-02-22 05:54:58', '2019-02-22 05:54:58'),
(669, '7', 'public/documents/1/tdg/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (10).jpeg', '1', '2019-02-22 05:55:25', '2019-02-22 05:55:25'),
(670, '7', 'public/documents/1/ioiijoio/pdf.pdf', '1', '2019-02-22 07:18:25', '2019-02-22 07:18:25'),
(671, '7', 'public/documents/1/ioiijoio/pdf.pdf', '1', '2019-02-22 07:29:40', '2019-02-22 07:29:40'),
(672, '7', 'public/documents/1/ioiijoio/Koala.jpg', '1', '2019-02-22 07:30:24', '2019-02-22 07:30:24'),
(673, '7', 'public/documents/1/ioiijoio/pdf.pdf', '1', '2019-02-22 07:30:52', '2019-02-22 07:30:52'),
(674, '7', 'public/documents/4/marketing_material/CDCP_Corporate_Valuation_Report-SAMPLE.pdf', '4', '2019-02-22 08:29:53', '2019-02-22 08:29:53'),
(675, '7', 'public/documents/1/ioiijoio/pdf.pdf', '1', '2019-02-25 07:32:51', '2019-02-25 07:32:51'),
(676, '7', 'public/documents/1/erwer/pdf.pdf', '1', '2019-02-25 07:59:10', '2019-02-25 07:59:10'),
(677, '14', 'public/documents/1/fh', '1', '2019-02-27 05:59:51', '2019-02-27 05:59:51'),
(678, '28', '62', '1', '2019-02-27 05:59:52', '2019-02-27 05:59:52'),
(679, '2', 'public/documents/1/fh/Renewal-Project-Scoring-Rubric.pdf', '1', '2019-02-27 06:00:10', '2019-02-27 06:00:10'),
(680, '7', 'public/documents/1/fh/Renewal-Project-Scoring-Rubric.pdf', '1', '2019-02-27 06:00:13', '2019-02-27 06:00:13'),
(681, '7', 'public/documents/1/fh/Renewal-Project-Scoring-Rubric.pdf', '1', '2019-02-27 06:01:13', '2019-02-27 06:01:13'),
(682, '7', 'public/documents/1/fh/Renewal-Project-Scoring-Rubric.pdf', '1', '2019-02-27 06:03:42', '2019-02-27 06:03:42'),
(683, '7', 'public/documents/1/fh/Renewal-Project-Scoring-Rubric.pdf', '1', '2019-02-27 06:04:13', '2019-02-27 06:04:13'),
(684, '2', 'public/documents/1/fh/Koala.jpg', '1', '2019-02-27 06:04:29', '2019-02-27 06:04:29'),
(685, '7', 'public/documents/1/fh/Koala.jpg', '1', '2019-02-27 06:04:31', '2019-02-27 06:04:31'),
(686, '7', 'public/documents/1/fh/Koala.jpg', '1', '2019-02-27 06:06:01', '2019-02-27 06:06:01'),
(687, '7', 'public/documents/1/fh/Renewal-Project-Scoring-Rubric.pdf', '1', '2019-02-27 06:06:09', '2019-02-27 06:06:09'),
(688, '7', 'public/documents/1/fh/Koala.jpg', '1', '2019-02-27 06:13:21', '2019-02-27 06:13:21'),
(689, '7', 'public/documents/1/fh/Renewal-Project-Scoring-Rubric.pdf', '1', '2019-02-27 06:13:24', '2019-02-27 06:13:24'),
(690, '7', 'public/documents/1/fh/Renewal-Project-Scoring-Rubric.pdf', '1', '2019-02-27 06:13:27', '2019-02-27 06:13:27'),
(691, '7', 'public/documents/1/fh/Renewal-Project-Scoring-Rubric.pdf', '1', '2019-02-27 06:15:47', '2019-02-27 06:15:47'),
(692, '7', 'public/documents/1/fh/Renewal-Project-Scoring-Rubric.pdf', '1', '2019-02-27 06:17:36', '2019-02-27 06:17:36'),
(693, '7', 'public/documents/1/fh/Renewal-Project-Scoring-Rubric.pdf', '1', '2019-02-27 06:18:26', '2019-02-27 06:18:26'),
(694, '7', 'public/documents/1/fh/Renewal-Project-Scoring-Rubric.pdf', '1', '2019-02-27 06:22:09', '2019-02-27 06:22:09'),
(695, '7', 'public/documents/1/fh/Renewal-Project-Scoring-Rubric.pdf', '1', '2019-02-27 06:22:27', '2019-02-27 06:22:27'),
(696, '2', 'public/documents/1/fh/c4611_sample_explain.pdf', '1', '2019-02-27 06:23:39', '2019-02-27 06:23:39'),
(697, '7', 'public/documents/1/fh/c4611_sample_explain.pdf', '1', '2019-02-27 06:23:43', '2019-02-27 06:23:43'),
(698, '7', 'public/documents/1/fh/Renewal-Project-Scoring-Rubric.pdf', '1', '2019-02-27 06:51:32', '2019-02-27 06:51:32'),
(699, '7', 'public/documents/1/fh/Renewal-Project-Scoring-Rubric.pdf', '1', '2019-02-27 06:51:40', '2019-02-27 06:51:40'),
(700, '2', 'public/documents/1/erwer/guests-channels-15.csv', '1', '2019-03-07 07:07:00', '2019-03-07 07:07:00'),
(701, '7', 'public/documents/1/erwer/guests-channels-15.csv', '1', '2019-03-07 07:07:14', '2019-03-07 07:07:14'),
(702, '2', 'public/documents/1/erwer/sample.doc', '1', '2019-03-07 07:07:42', '2019-03-07 07:07:42'),
(703, '7', 'public/documents/1/erwer/sample.doc', '1', '2019-03-07 07:07:46', '2019-03-07 07:07:46'),
(704, '2', 'public/documents/1/erwer/sample.txt', '1', '2019-03-07 07:08:18', '2019-03-07 07:08:18'),
(705, '7', 'public/documents/1/erwer/sample.txt', '1', '2019-03-07 07:08:22', '2019-03-07 07:08:22'),
(706, '2', 'public/documents/1/tdg/Renewal-Project-Scoring-Rubric.pdf', '1', '2019-04-10 05:03:51', '2019-04-10 05:03:51'),
(707, '7', 'public/documents/1/tdg/Renewal-Project-Scoring-Rubric.pdf', '1', '2019-04-10 05:03:54', '2019-04-10 05:03:54'),
(708, '2', 'public/documents/1/erwer/ecel.xls', '1', '2019-04-10 07:35:24', '2019-04-10 07:35:24'),
(709, '7', 'public/documents/1/erwer/ecel.xls', '1', '2019-04-10 07:35:27', '2019-04-10 07:35:27'),
(710, '2', 'public/documents/1/erwer/download (1).xls', '1', '2019-04-10 07:38:50', '2019-04-10 07:38:50'),
(711, '7', 'public/documents/1/erwer/download (1).xls', '1', '2019-04-10 07:38:55', '2019-04-10 07:38:55'),
(712, '2', 'public/documents/1/erwer/qqq.xls', '1', '2019-04-10 07:39:51', '2019-04-10 07:39:51'),
(713, '7', 'public/documents/1/erwer/qqq.xls', '1', '2019-04-10 07:39:55', '2019-04-10 07:39:55'),
(714, '7', 'public/documents/1/erwer/qqq.xls', '1', '2019-04-10 08:08:30', '2019-04-10 08:08:30'),
(715, '7', 'public/documents/1/erwer/qqq.xls', '1', '2019-04-10 08:12:39', '2019-04-10 08:12:39'),
(716, '7', 'public/documents/1/erwer/ecel.xls', '1', '2019-04-10 08:21:46', '2019-04-10 08:21:46'),
(717, '7', 'public/documents/1/erwer/ecel.xls', '1', '2019-04-10 08:23:35', '2019-04-10 08:23:35'),
(718, '7', 'public/documents/1/erwer/ecel.xls', '1', '2019-04-10 08:25:40', '2019-04-10 08:25:40'),
(719, '7', 'public/documents/1/erwer/ecel.xls', '1', '2019-04-10 08:26:06', '2019-04-10 08:26:06'),
(720, '7', 'public/documents/1/erwer/qqq.xls', '1', '2019-04-10 08:41:40', '2019-04-10 08:41:40'),
(721, '7', 'public/documents/1/erwer/qqq.xls', '1', '2019-04-10 08:41:46', '2019-04-10 08:41:46'),
(722, '7', 'public/documents/1/erwer/qqq.xls', '1', '2019-04-10 08:45:05', '2019-04-10 08:45:05'),
(723, '7', 'public/documents/1/erwer/ecel.xls', '1', '2019-04-11 04:56:38', '2019-04-11 04:56:38'),
(724, '2', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 04:59:45', '2019-04-11 04:59:45'),
(725, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:00:16', '2019-04-11 05:00:16'),
(726, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:02:47', '2019-04-11 05:02:47'),
(727, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:03:23', '2019-04-11 05:03:23'),
(728, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:03:46', '2019-04-11 05:03:46'),
(729, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:05:07', '2019-04-11 05:05:07'),
(730, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:05:33', '2019-04-11 05:05:33'),
(731, '2', 'public/documents/1/erwer/swsw.xls', '1', '2019-04-11 05:09:40', '2019-04-11 05:09:40'),
(732, '7', 'public/documents/1/erwer/swsw.xls', '1', '2019-04-11 05:09:44', '2019-04-11 05:09:44'),
(733, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:14:48', '2019-04-11 05:14:48'),
(734, '7', 'public/documents/1/erwer/swsw.xls', '1', '2019-04-11 05:14:57', '2019-04-11 05:14:57'),
(735, '7', 'public/documents/1/erwer/swsw.xls', '1', '2019-04-11 05:15:20', '2019-04-11 05:15:20'),
(736, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:15:33', '2019-04-11 05:15:33'),
(737, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:19:51', '2019-04-11 05:19:51'),
(738, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:22:11', '2019-04-11 05:22:11'),
(739, '7', 'public/documents/1/erwer/swsw.xls', '1', '2019-04-11 05:22:16', '2019-04-11 05:22:16'),
(740, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:24:23', '2019-04-11 05:24:23'),
(741, '7', 'public/documents/1/erwer/swsw.xls', '1', '2019-04-11 05:24:27', '2019-04-11 05:24:27'),
(742, '7', 'public/documents/1/erwer/swsw.xls', '1', '2019-04-11 05:26:46', '2019-04-11 05:26:46'),
(743, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:26:52', '2019-04-11 05:26:52'),
(744, '7', 'public/documents/1/erwer/swsw.xls', '1', '2019-04-11 05:27:50', '2019-04-11 05:27:50'),
(745, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:28:00', '2019-04-11 05:28:00'),
(746, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:29:09', '2019-04-11 05:29:09'),
(747, '7', 'public/documents/1/erwer/swsw.xls', '1', '2019-04-11 05:29:30', '2019-04-11 05:29:30'),
(748, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:30:44', '2019-04-11 05:30:44'),
(749, '7', 'public/documents/1/erwer/swsw.xls', '1', '2019-04-11 05:30:50', '2019-04-11 05:30:50'),
(750, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:36:45', '2019-04-11 05:36:45'),
(751, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:38:20', '2019-04-11 05:38:20'),
(752, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:39:46', '2019-04-11 05:39:46'),
(753, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:40:42', '2019-04-11 05:40:42'),
(754, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:43:00', '2019-04-11 05:43:00'),
(755, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:44:21', '2019-04-11 05:44:21'),
(756, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:46:46', '2019-04-11 05:46:46'),
(757, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:53:52', '2019-04-11 05:53:52'),
(758, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:54:31', '2019-04-11 05:54:31'),
(759, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:55:42', '2019-04-11 05:55:42'),
(760, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:56:39', '2019-04-11 05:56:39'),
(761, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 05:59:52', '2019-04-11 05:59:52'),
(762, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 06:02:18', '2019-04-11 06:02:18'),
(763, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 06:04:24', '2019-04-11 06:04:24'),
(764, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 06:18:22', '2019-04-11 06:18:22'),
(765, '7', 'public/documents/1/erwer/qqq.xls', '1', '2019-04-11 06:30:41', '2019-04-11 06:30:41'),
(766, '7', 'public/documents/1/erwer/qqq.xls', '1', '2019-04-11 06:33:12', '2019-04-11 06:33:12'),
(767, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 06:33:22', '2019-04-11 06:33:22'),
(768, '7', 'public/documents/1/erwer/qqq.xls', '1', '2019-04-11 06:33:28', '2019-04-11 06:33:28'),
(769, '7', 'public/documents/1/erwer/qqq.xls', '1', '2019-04-11 06:33:59', '2019-04-11 06:33:59'),
(770, '7', 'public/documents/1/erwer/qqq.xls', '1', '2019-04-11 06:34:26', '2019-04-11 06:34:26'),
(771, '7', 'public/documents/1/erwer/qqq.xls', '1', '2019-04-11 06:35:13', '2019-04-11 06:35:13'),
(772, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 06:35:30', '2019-04-11 06:35:30'),
(773, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-11 06:35:54', '2019-04-11 06:35:54'),
(774, '7', 'public/documents/1/erwer/qqq.xls', '1', '2019-04-11 07:29:52', '2019-04-11 07:29:52'),
(775, '7', 'public/documents/1/erwer/qqq.xls', '1', '2019-04-11 08:32:51', '2019-04-11 08:32:51'),
(776, '7', 'public/documents/1/erwer/qqq.xls', '1', '2019-04-11 08:35:47', '2019-04-11 08:35:47'),
(777, '7', 'public/documents/1/erwer/qqq.xls', '1', '2019-04-11 08:36:20', '2019-04-11 08:36:20'),
(778, '7', 'public/documents/1/erwer/qqq.xls', '1', '2019-04-11 08:39:39', '2019-04-11 08:39:39'),
(779, '7', 'public/documents/1/erwer/qqq.xls', '1', '2019-04-11 08:53:15', '2019-04-11 08:53:15'),
(780, '7', 'public/documents/1/erwer/swsw.xls', '1', '2019-04-11 08:57:04', '2019-04-11 08:57:04'),
(781, '7', 'public/documents/1/erwer/swsw.xls', '1', '2019-04-12 00:26:54', '2019-04-12 00:26:54'),
(782, '7', 'public/documents/1/erwer/rrrrr.xls', '1', '2019-04-12 04:10:48', '2019-04-12 04:10:48'),
(783, '7', 'public/documents/1/erwer/swsw.xls', '1', '2019-04-12 05:29:42', '2019-04-12 05:29:42'),
(784, '7', 'public/documents/1/erwer/swsw.xls', '1', '2019-04-16 00:22:27', '2019-04-16 00:22:27'),
(785, '29', 'public/documents/1/jkkjkjkjk', '1', '2019-04-16 00:29:51', '2019-04-16 00:29:51'),
(786, '29', 'public/documents/1/tdg', '1', '2019-04-16 00:46:14', '2019-04-16 00:46:14'),
(787, '29', 'public/documents/1/fh', '1', '2019-04-16 00:46:18', '2019-04-16 00:46:18'),
(788, '29', 'public/documents/1/erwer', '1', '2019-04-16 00:46:20', '2019-04-16 00:46:20'),
(789, '29', 'public/documents/1/ioiijoio', '1', '2019-04-16 00:46:23', '2019-04-16 00:46:23'),
(790, '14', 'public/documents/1/re', '1', '2019-04-16 00:46:34', '2019-04-16 00:46:34'),
(791, '28', '63', '1', '2019-04-16 00:46:34', '2019-04-16 00:46:34'),
(792, '2', 'public/documents/1/re/25367832364_Index (1).xlsx', '1', '2019-04-16 00:47:08', '2019-04-16 00:47:08'),
(793, '2', 'public/documents/1/re/gre_research_validity_data.pdf', '1', '2019-04-16 00:47:08', '2019-04-16 00:47:08'),
(794, '2', 'public/documents/1/re/Koala.jpg', '1', '2019-04-16 00:47:08', '2019-04-16 00:47:08'),
(795, '7', 'public/documents/1/re/gre_research_validity_data.pdf', '1', '2019-04-16 00:47:12', '2019-04-16 00:47:12'),
(796, '7', 'public/documents/1/re/gre_research_validity_data.pdf', '1', '2019-04-16 00:58:04', '2019-04-16 00:58:04'),
(797, '7', 'public/documents/1/re/Koala.jpg', '1', '2019-04-16 01:45:37', '2019-04-16 01:45:37'),
(798, '6', 'public/documents/1/re/Koala.jpg', '1', '2019-04-16 02:21:24', '2019-04-16 02:21:24'),
(799, '2', 'public/documents/1/re/(3).jpg', '1', '2019-04-16 04:12:43', '2019-04-16 04:12:43'),
(800, '14', 'public/documents/1/test', '1', '2019-04-16 06:45:01', '2019-04-16 06:45:01'),
(801, '28', '64', '1', '2019-04-16 06:45:01', '2019-04-16 06:45:01'),
(802, '2', 'public/documents/1/test/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1).jpeg', '1', '2019-04-16 06:45:16', '2019-04-16 06:45:16'),
(803, '7', 'public/documents/1/test/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1).jpeg', '1', '2019-04-16 06:49:44', '2019-04-16 06:49:44'),
(804, '7', 'public/documents/1/test/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1).jpeg', '1', '2019-04-16 07:01:24', '2019-04-16 07:01:24'),
(805, '2', 'public/documents/1/test/(3).jpg', '1', '2019-04-16 08:07:55', '2019-04-16 08:07:55'),
(806, '7', 'public/documents/1/test/(3).jpg', '1', '2019-04-16 08:07:59', '2019-04-16 08:07:59'),
(807, '7', 'public/documents/1/test/(3).jpg', '1', '2019-04-16 08:29:48', '2019-04-16 08:29:48'),
(808, '7', 'public/documents/1/test/(3).jpg', '1', '2019-04-16 23:06:03', '2019-04-16 23:06:03'),
(809, '2', 'public/documents/13/dataroom/(3).jpg', '13', '2019-04-17 00:54:06', '2019-04-17 00:54:06'),
(810, '7', 'public/documents/13/dataroom/(3).jpg', '13', '2019-04-17 03:05:38', '2019-04-17 03:05:38'),
(811, '25', 'public/documents/1/test', '1', '2019-04-17 23:36:23', '2019-04-17 23:36:23'),
(812, '7', 'public/documents/1/test/(3).jpg', '1', '2019-04-17 23:37:30', '2019-04-17 23:37:30'),
(813, '7', 'public/documents/1/test/(3).jpg', '1', '2019-04-18 01:55:23', '2019-04-18 01:55:23'),
(814, '7', 'public/documents/1/test/(3).jpg', '1', '2019-04-18 05:13:15', '2019-04-18 05:13:15'),
(815, '7', 'public/documents/1/test/(3).jpg', '1', '2019-04-18 06:30:29', '2019-04-18 06:30:29'),
(816, '2', 'public/documents/1/test/test.txt', '1', '2019-04-18 06:31:43', '2019-04-18 06:31:43'),
(817, '7', 'public/documents/1/test/test.txt', '1', '2019-04-18 06:31:46', '2019-04-18 06:31:46'),
(818, '30', '39', '1', '2019-04-18 23:17:01', '2019-04-18 23:17:01'),
(819, '30', '39', '1', '2019-04-18 23:17:02', '2019-04-18 23:17:02'),
(820, '7', 'public/documents/1/test/test.txt', '1', '2019-04-19 04:19:48', '2019-04-19 04:19:48'),
(821, '2', 'public/documents/1/test/file-sample_500kB.docx', '1', '2019-04-19 04:21:05', '2019-04-19 04:21:05'),
(822, '7', 'public/documents/1/test/file-sample_500kB.docx', '1', '2019-04-19 04:21:20', '2019-04-19 04:21:20'),
(823, '7', 'public/documents/1/test/file-sample_500kB.docx', '1', '2019-04-19 04:21:35', '2019-04-19 04:21:35'),
(824, '7', 'public/documents/1/test/file-sample_500kB.docx', '1', '2019-04-19 04:28:58', '2019-04-19 04:28:58'),
(827, '7', 'public/documents/1/test/(3).jpg', '1', '2019-04-19 04:45:07', '2019-04-19 04:45:07'),
(828, '7', 'public/documents/1/test/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1).jpeg', '1', '2019-04-19 04:45:27', '2019-04-19 04:45:27'),
(841, '7', 'public/documents/1/test/test.txt', '1', '2019-04-19 04:52:43', '2019-04-19 04:52:43'),
(842, '7', 'public/documents/1/test/test.txt', '1', '2019-04-19 04:58:25', '2019-04-19 04:58:25'),
(843, '7', 'public/documents/1/test/test.txt', '1', '2019-04-19 04:58:40', '2019-04-19 04:58:40'),
(844, '7', 'public/documents/1/test/test.txt', '1', '2019-04-19 04:59:07', '2019-04-19 04:59:07'),
(845, '7', 'public/documents/1/test/file-sample_500kB.docx', '1', '2019-04-19 05:24:30', '2019-04-19 05:24:30'),
(846, '7', 'public/documents/1/test/file-sample_500kB.docx', '1', '2019-04-19 05:35:59', '2019-04-19 05:35:59'),
(847, '7', 'public/documents/1/test/file-sample_500kB.docx', '1', '2019-04-21 22:48:39', '2019-04-21 22:48:39'),
(848, '7', 'public/documents/1/test/file-sample_500kB.docx', '1', '2019-04-21 23:28:57', '2019-04-21 23:28:57'),
(849, '7', 'public/documents/1/test/file-sample_500kB.docx', '1', '2019-04-22 00:22:54', '2019-04-22 00:22:54'),
(850, '30', '39', '1', '2019-04-22 04:33:00', '2019-04-22 04:33:00'),
(851, '30', '39', '1', '2019-04-22 04:33:01', '2019-04-22 04:33:01'),
(852, '30', '39', '1', '2019-04-22 04:33:02', '2019-04-22 04:33:02'),
(853, '30', '39', '1', '2019-04-22 04:33:04', '2019-04-22 04:33:04'),
(854, '15', '39', '1', '2019-04-22 04:33:09', '2019-04-22 04:33:09'),
(855, '30', '39', '1', '2019-04-22 04:33:17', '2019-04-22 04:33:17'),
(856, '15', '39', '1', '2019-04-22 04:33:29', '2019-04-22 04:33:29'),
(857, '2', 'public/documents/1/test/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1) (1).jpeg', '1', '2019-04-23 03:39:15', '2019-04-23 03:39:15'),
(859, '6', 'public/documents/13/dataroom/(3).jpg', '13', '2019-04-26 03:21:10', '2019-04-26 03:21:10'),
(860, '2', 'public/documents/13/dataroom/2 Chrysanthemum (1) - Copy - Copy - Copy (1).pdf', '13', '2019-04-26 03:22:13', '2019-04-26 03:22:13'),
(861, '7', 'public/documents/13/dataroom/2 Chrysanthemum (1) - Copy - Copy - Copy (1).pdf', '13', '2019-04-26 03:22:15', '2019-04-26 03:22:15'),
(862, '2', 'public/documents/13/dataroom/Screenshot from 2018-12-27 15-45-44.png', '13', '2019-04-26 05:29:06', '2019-04-26 05:29:06'),
(863, '7', 'public/documents/13/dataroom/Screenshot from 2018-12-27 15-45-44.png', '13', '2019-04-26 05:29:08', '2019-04-26 05:29:08'),
(864, '6', 'public/documents/13/dataroom/Screenshot from 2018-12-27 15-45-44.png', '13', '2019-04-26 05:29:19', '2019-04-26 05:29:19'),
(865, '2', 'public/documents/13/dataroom/Screenshot from 2019-04-16 11-05-31.png', '13', '2019-04-26 05:49:02', '2019-04-26 05:49:02'),
(866, '7', 'public/documents/13/dataroom/Screenshot from 2019-04-16 11-05-31.png', '13', '2019-04-26 05:49:06', '2019-04-26 05:49:06'),
(867, '6', 'public/documents/13/dataroom/Screenshot from 2019-04-16 11-05-31.png', '13', '2019-04-26 05:49:21', '2019-04-26 05:49:21'),
(868, '2', 'public/documents/1/test/6 25367832364_Current Permissions (3) (1).xlsx', '1', '2019-04-26 05:54:09', '2019-04-26 05:54:09'),
(869, '6', 'public/documents/1/test/6 25367832364_Current Permissions (3) (1).xlsx', '1', '2019-04-26 05:54:16', '2019-04-26 05:54:16'),
(870, '29', 'public/documents/13/dataroom', '13', '2019-04-28 23:43:31', '2019-04-28 23:43:31'),
(871, '14', 'public/documents/13/test33', '13', '2019-04-28 23:43:54', '2019-04-28 23:43:54'),
(872, '28', '66', '13', '2019-04-28 23:43:55', '2019-04-28 23:43:55'),
(873, '2', 'public/documents/13/test33/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (8).jpeg', '13', '2019-04-28 23:44:12', '2019-04-28 23:44:12'),
(874, '7', 'public/documents/13/test33/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (8).jpeg', '13', '2019-04-28 23:44:14', '2019-04-28 23:44:14'),
(875, '6', 'public/documents/13/test33/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (8).jpeg', '13', '2019-04-28 23:44:24', '2019-04-28 23:44:24'),
(876, '2', 'public/documents/13/test33/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1).jpeg', '13', '2019-04-28 23:44:37', '2019-04-28 23:44:37'),
(877, '6', 'public/documents/13/test33/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (1).jpeg', '13', '2019-04-28 23:45:01', '2019-04-28 23:45:01'),
(878, '29', 'public/documents/13/test33', '13', '2019-04-28 23:46:04', '2019-04-28 23:46:04'),
(879, '29', 'public/documents/1/re', '1', '2019-04-28 23:49:08', '2019-04-28 23:49:08'),
(880, '29', 'public/documents/1/test', '1', '2019-04-28 23:49:10', '2019-04-28 23:49:10'),
(881, '14', 'public/documents/13/sdsds', '13', '2019-04-28 23:50:13', '2019-04-28 23:50:13'),
(882, '28', '67', '13', '2019-04-28 23:50:14', '2019-04-28 23:50:14'),
(883, '29', 'public/documents/13/sdsds', '13', '2019-04-28 23:50:28', '2019-04-28 23:50:28'),
(884, '14', 'public/documents/1/test33', '1', '2019-04-28 23:53:04', '2019-04-28 23:53:04'),
(885, '28', '68', '1', '2019-04-28 23:53:04', '2019-04-28 23:53:04'),
(886, '29', 'public/documents/1/test33', '1', '2019-04-28 23:53:21', '2019-04-28 23:53:21'),
(887, '14', 'public/documents/1/test', '1', '2019-04-28 23:53:40', '2019-04-28 23:53:40'),
(888, '28', '69', '1', '2019-04-28 23:53:41', '2019-04-28 23:53:41'),
(889, '29', 'public/documents/1/test', '1', '2019-04-28 23:53:52', '2019-04-28 23:53:52'),
(890, '14', 'public/documents/13/test', '13', '2019-04-28 23:54:27', '2019-04-28 23:54:27'),
(891, '28', '70', '13', '2019-04-28 23:54:28', '2019-04-28 23:54:28'),
(892, '29', 'public/documents/13/test', '13', '2019-04-28 23:58:27', '2019-04-28 23:58:27'),
(893, '14', 'public/documents/1/test', '1', '2019-04-28 23:58:47', '2019-04-28 23:58:47'),
(894, '28', '71', '1', '2019-04-28 23:58:47', '2019-04-28 23:58:47'),
(895, '2', 'public/documents/1/test/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (8).jpeg', '1', '2019-04-29 00:01:15', '2019-04-29 00:01:15'),
(896, '7', 'public/documents/1/test/5 27B0CE0F-007D-4D13-817F-ED2A8E1323DF (8).jpeg', '1', '2019-04-29 03:16:41', '2019-04-29 03:16:41'),
(897, '14', 'public/documents/13/testtest', '13', '2019-04-29 04:24:40', '2019-04-29 04:24:40'),
(898, '28', '72', '13', '2019-04-29 04:24:40', '2019-04-29 04:24:40'),
(899, '2', 'public/documents/13/testtest/Screenshot from 2018-12-27 15-45-44.png', '13', '2019-04-29 04:25:06', '2019-04-29 04:25:06'),
(900, '6', 'public/documents/13/testtest/Screenshot from 2018-12-27 15-45-44.png', '13', '2019-04-29 04:25:18', '2019-04-29 04:25:18'),
(901, '2', 'public/documents/13/testtest/download.jpeg', '13', '2019-04-29 04:26:08', '2019-04-29 04:26:08'),
(902, '14', 'public/documents/14/shared_material', '14', '2019-04-30 04:02:34', '2019-04-30 04:02:34'),
(903, '28', '74', '14', '2019-04-30 04:02:34', '2019-04-30 04:02:34'),
(904, '14', 'public/documents/1/drgdrgr', '1', '2019-04-30 04:36:03', '2019-04-30 04:36:03'),
(905, '28', '75', '1', '2019-04-30 04:36:03', '2019-04-30 04:36:03'),
(906, '29', 'public/documents/1/drgdrgr', '1', '2019-04-30 04:43:18', '2019-04-30 04:43:18'),
(907, '14', 'public/documents/1/drgdrgr', '1', '2019-04-30 04:44:00', '2019-04-30 04:44:00'),
(908, '28', '76', '1', '2019-04-30 04:44:00', '2019-04-30 04:44:00'),
(909, '14', 'public/documents/14/danilo', '14', '2019-04-30 04:50:23', '2019-04-30 04:50:23'),
(910, '28', '77', '14', '2019-04-30 04:50:23', '2019-04-30 04:50:23'),
(911, '29', 'public/documents/14/cdcp-shared-material', '14', '2019-04-30 05:33:43', '2019-04-30 05:33:43'),
(912, '14', 'public/documents/14/cdcp_shared_material', '14', '2019-04-30 05:38:48', '2019-04-30 05:38:48'),
(913, '28', '78', '14', '2019-04-30 05:38:48', '2019-04-30 05:38:48'),
(914, '14', 'public/documents/14/tetst', '14', '2019-04-30 05:39:19', '2019-04-30 05:39:19');
INSERT INTO `reports` (`id`, `action`, `document_path`, `Auth`, `created_at`, `updated_at`) VALUES
(915, '28', '79', '14', '2019-04-30 05:39:19', '2019-04-30 05:39:19'),
(916, '29', 'public/documents/14/tetst', '14', '2019-04-30 05:39:43', '2019-04-30 05:39:43'),
(917, '29', 'public/documents/14/cdcp_shared_material', '14', '2019-04-30 05:40:11', '2019-04-30 05:40:11'),
(918, '14', 'public/documents/14/cdcp_shared_material', '14', '2019-04-30 05:40:22', '2019-04-30 05:40:22'),
(919, '28', '80', '14', '2019-04-30 05:40:23', '2019-04-30 05:40:23'),
(920, '14', 'public/documents/14/cdcp_shared_material2', '14', '2019-04-30 05:58:04', '2019-04-30 05:58:04'),
(921, '28', '81', '14', '2019-04-30 05:58:04', '2019-04-30 05:58:04'),
(922, '29', 'public/documents/14/cdcp_shared_material2', '14', '2019-04-30 05:58:21', '2019-04-30 05:58:21'),
(923, '14', 'public/documents/14/cdcp_shared_material2', '14', '2019-04-30 06:01:23', '2019-04-30 06:01:23'),
(924, '28', '82', '14', '2019-04-30 06:01:23', '2019-04-30 06:01:23'),
(925, '14', 'public/documents/14/cdcp_shared_material_2', '14', '2019-04-30 06:02:02', '2019-04-30 06:02:02'),
(926, '28', '83', '14', '2019-04-30 06:02:02', '2019-04-30 06:02:02'),
(927, '29', 'public/documents/14/cdcp_shared_material2', '14', '2019-04-30 06:02:21', '2019-04-30 06:02:21'),
(928, '29', 'public/documents/14/cdcp_shared_material_2', '14', '2019-04-30 06:02:41', '2019-04-30 06:02:41'),
(929, '14', 'public/documents/14/test_test', '14', '2019-04-30 06:02:59', '2019-04-30 06:02:59'),
(930, '28', '84', '14', '2019-04-30 06:02:59', '2019-04-30 06:02:59'),
(931, '29', 'public/documents/14/test_test', '14', '2019-04-30 06:03:26', '2019-04-30 06:03:26'),
(932, '14', 'public/documents/14/tetsss', '14', '2019-04-30 06:07:07', '2019-04-30 06:07:07'),
(933, '28', '85', '14', '2019-04-30 06:07:07', '2019-04-30 06:07:07'),
(934, '29', 'public/documents/14/tetsss', '14', '2019-04-30 06:12:03', '2019-04-30 06:12:03'),
(935, '14', 'public/documents/14/sasa_asas', '14', '2019-04-30 06:46:12', '2019-04-30 06:46:12'),
(936, '28', '86', '14', '2019-04-30 06:46:12', '2019-04-30 06:46:12'),
(937, '29', 'public/documents/14/sasa_asas', '14', '2019-04-30 06:46:19', '2019-04-30 06:46:19'),
(938, '14', 'public/documents/14/test_test', '14', '2019-04-30 06:53:12', '2019-04-30 06:53:12'),
(939, '28', '87', '14', '2019-04-30 06:53:12', '2019-04-30 06:53:12'),
(940, '29', 'public/documents/14/test_test', '14', '2019-04-30 06:53:28', '2019-04-30 06:53:28'),
(941, '14', 'public/documents/14/sdssdsd-sdsd', '14', '2019-04-30 06:54:53', '2019-04-30 06:54:53'),
(942, '28', '88', '14', '2019-04-30 06:54:53', '2019-04-30 06:54:53'),
(943, '29', 'public/documents/14/sdssdsd-sdsd', '14', '2019-04-30 06:55:16', '2019-04-30 06:55:16'),
(944, '14', 'public/documents/14/ssa_sasa', '14', '2019-04-30 06:56:23', '2019-04-30 06:56:23'),
(945, '28', '89', '14', '2019-04-30 06:56:23', '2019-04-30 06:56:23'),
(946, '29', 'public/documents/14/ssa_sasa', '14', '2019-04-30 06:56:42', '2019-04-30 06:56:42'),
(947, '14', 'public/documents/14/sds-sdsd', '14', '2019-04-30 06:58:40', '2019-04-30 06:58:40'),
(948, '28', '90', '14', '2019-04-30 06:58:40', '2019-04-30 06:58:40'),
(949, '29', 'public/documents/14/sds-sdsd', '14', '2019-04-30 06:58:54', '2019-04-30 06:58:54'),
(950, '14', 'public/documents/14/sdsd-sdsd', '14', '2019-04-30 06:59:06', '2019-04-30 06:59:06'),
(951, '28', '91', '14', '2019-04-30 06:59:06', '2019-04-30 06:59:06'),
(952, '29', 'public/documents/14/sdsd-sdsd', '14', '2019-04-30 06:59:21', '2019-04-30 06:59:21'),
(953, '14', 'public/documents/14/sdsd-sdsdsd', '14', '2019-04-30 07:02:48', '2019-04-30 07:02:48'),
(954, '28', '92', '14', '2019-04-30 07:02:49', '2019-04-30 07:02:49'),
(955, '29', 'public/documents/14/sdsd-sdsdsd', '14', '2019-04-30 07:03:17', '2019-04-30 07:03:17'),
(956, '14', 'public/documents/14/ffd_dfdf_dfdf', '14', '2019-04-30 07:03:28', '2019-04-30 07:03:28'),
(957, '28', '93', '14', '2019-04-30 07:03:28', '2019-04-30 07:03:28'),
(958, '29', 'public/documents/14/ffd_dfdf_dfdf', '14', '2019-04-30 07:03:37', '2019-04-30 07:03:37'),
(959, '29', 'public/documents/13/testtest', '13', '2019-05-01 00:18:45', '2019-05-01 00:18:45'),
(960, '14', 'public/documents/13/rahu_lrahul', '13', '2019-05-01 00:19:29', '2019-05-01 00:19:29'),
(961, '28', '94', '13', '2019-05-01 00:19:29', '2019-05-01 00:19:29'),
(962, '14', 'public/documents/13/dsd_dsds_ds_ds', '13', '2019-05-01 00:19:52', '2019-05-01 00:19:52'),
(963, '28', '95', '13', '2019-05-01 00:19:52', '2019-05-01 00:19:52'),
(964, '29', 'public/documents/13/dsd_dsds_ds_ds', '13', '2019-05-01 00:23:52', '2019-05-01 00:23:52'),
(965, '14', 'public/documents/13/dsddssds_sds', '13', '2019-05-01 00:42:56', '2019-05-01 00:42:56'),
(966, '28', '96', '13', '2019-05-01 00:42:56', '2019-05-01 00:42:56'),
(967, '14', 'public/documents/1/dsds_dsdsd_sds', '1', '2019-05-01 05:05:31', '2019-05-01 05:05:31'),
(968, '28', '97', '1', '2019-05-01 05:05:31', '2019-05-01 05:05:31'),
(969, '14', 'public/documents/1/divesh_divesh_f', '1', '2019-05-01 05:05:54', '2019-05-01 05:05:54'),
(970, '28', '98', '1', '2019-05-01 05:05:54', '2019-05-01 05:05:54'),
(971, '29', 'public/documents/1/divesh_divesh_f', '1', '2019-05-01 07:21:12', '2019-05-01 07:21:12'),
(972, '29', 'public/documents/1/dsds_dsdsd_sds', '1', '2019-05-01 07:21:14', '2019-05-01 07:21:14'),
(973, '29', 'public/documents/1/drgdrgr', '1', '2019-05-01 07:21:16', '2019-05-01 07:21:16'),
(974, '14', 'public/documents/1/sdsdsdd_dssdsd', '1', '2019-05-01 07:21:35', '2019-05-01 07:21:35'),
(975, '28', '99', '1', '2019-05-01 07:21:35', '2019-05-01 07:21:35'),
(976, '29', 'public/documents/1/sdsdsdd_dssdsd', '1', '2019-05-01 07:21:42', '2019-05-01 07:21:42'),
(977, '14', 'public/documents/1/sdsd_dsds_dsd', '1', '2019-05-01 07:21:51', '2019-05-01 07:21:51'),
(978, '28', '100', '1', '2019-05-01 07:21:51', '2019-05-01 07:21:51'),
(979, '29', 'public/documents/1/sdsd_dsds_dsd', '1', '2019-05-01 07:21:56', '2019-05-01 07:21:56'),
(980, '14', 'public/documents/1/dsds_sdsd_dsds', '1', '2019-05-01 07:24:27', '2019-05-01 07:24:27'),
(981, '28', '101', '1', '2019-05-01 07:24:27', '2019-05-01 07:24:27'),
(982, '29', 'public/documents/1/dsds_sdsd_dsds', '1', '2019-05-01 07:24:34', '2019-05-01 07:24:34'),
(983, '14', 'public/documents/6/xvxc', '6', '2020-03-05 06:33:29', '2020-03-05 06:33:29'),
(984, '28', '102', '6', '2020-03-05 06:33:29', '2020-03-05 06:33:29'),
(985, '2', 'public/documents/6/xvxc/1568264632733Chrysanthemum.jpg', '6', '2020-03-05 06:33:45', '2020-03-05 06:33:45');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `watermark_view` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `watermark_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `watermark_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `downloadable` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `printable` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discussable` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `project_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `watermark_view`, `watermark_text`, `watermark_color`, `downloadable`, `printable`, `discussable`, `project_id`, `created_at`, `updated_at`) VALUES
(1, '1', 'Copyright issue, Copyright issue, Copyright issue, Copyright issue,', '1', '1', '1', '1', '29', '2019-02-04 07:25:17', '2019-02-04 23:19:51'),
(2, '1', 'Collins Dale Capital Partners  - Collins Dale Capital Partners', '1', '1', '1', '1', '30', '2019-02-05 07:10:46', '2019-02-21 07:51:53'),
(3, '1', 'Ankit Ankit  Ankit Ankit Ankit Ankit  Ankit   Ankit  Ankit  Ankit  Ankit  Ankit  Ankit  An', '1', '0', '0', '1', '31', '2019-02-07 01:07:10', '2019-02-12 22:15:11'),
(4, '1', 'Prodata 2019-02-08 14:49:22...oop Prodata 2019-02-08 14:49:22...oop', '1', '1', '1', '1', '32', '2019-02-08 09:19:22', '2019-02-08 09:19:22'),
(5, '1', 'sfsdfdgfd cdfgfdgfd fhfhdfhdfh gdfgdfgfd dfgd', '1', '1', '1', '1', '35', '2019-02-22 05:42:31', '2019-02-22 05:55:21'),
(6, '1', 'fgfhfghfgfg vhfghfthr fyhrthfgn fhfn hjjghj', '1', '1', '1', '1', '6', '2019-02-22 06:30:37', '2019-02-22 06:30:37'),
(7, '1', 'Prodata 2019-02-27 11:29:51...fh Prodata 2019-02-27 11:29:51...fh', '1', '1', '1', '1', '37', '2019-02-27 05:59:52', '2019-02-27 05:59:52'),
(8, '1', 'Prodata 2019-04-16 06:16:34...re Prodata 2019-04-16 06:16:34...re', '1', '1', '1', '1', '38', '2019-04-16 00:46:34', '2019-04-16 00:46:34'),
(9, '1', 'Prodata 2019-04-16 12:15:01...Test Prodata 2019-04-16 12:15:01...Test', '1', '1', '1', '1', '39', '2019-04-16 06:45:01', '2019-04-16 06:45:01'),
(10, '1', 'Prodata 2019-04-29 05:13:54...test33 Prodata 2019-04-29 05:13:54...test33', '1', '1', '1', '1', '41', '2019-04-28 23:43:55', '2019-04-28 23:43:55'),
(11, '1', 'Prodata 2019-04-29 05:20:13...sdsds Prodata 2019-04-29 05:20:13...sdsds', '1', '1', '1', '1', '42', '2019-04-28 23:50:14', '2019-04-28 23:50:14'),
(12, '1', 'Prodata 2019-04-29 05:23:04...test33 Prodata 2019-04-29 05:23:04...test33', '1', '1', '1', '1', '43', '2019-04-28 23:53:04', '2019-04-28 23:53:04'),
(13, '1', 'Prodata 2019-04-29 05:23:40...test Prodata 2019-04-29 05:23:40...test', '1', '1', '1', '1', '44', '2019-04-28 23:53:41', '2019-04-28 23:53:41'),
(14, '1', 'Prodata 2019-04-29 05:24:27...test Prodata 2019-04-29 05:24:27...test', '1', '1', '1', '1', '45', '2019-04-28 23:54:28', '2019-04-28 23:54:28'),
(15, '1', 'Prodata 2019-04-29 05:28:47...test Prodata 2019-04-29 05:28:47...test', '1', '1', '1', '1', '46', '2019-04-28 23:58:47', '2019-04-28 23:58:47'),
(16, '1', 'Prodata 2019-04-29 09:54:40...testtest Prodata 2019-04-29 09:54:40...testtest', '1', '1', '1', '1', '47', '2019-04-29 04:24:40', '2019-04-29 04:24:40'),
(17, '1', 'Prodata 2019-04-30 09:32:34...Shared_Material Prodata 2019-04-30 09:32:34...Shared_Material', '1', '1', '1', '1', '49', '2019-04-30 04:02:34', '2019-04-30 04:02:34'),
(18, '1', 'Prodata 2019-04-30 10:06:03...drgdrgr Prodata 2019-04-30 10:06:03...drgdrgr', '1', '1', '1', '1', '50', '2019-04-30 04:36:04', '2019-04-30 04:36:04'),
(19, '1', 'Prodata 2019-04-30 10:14:00...drgdrgr Prodata 2019-04-30 10:14:00...drgdrgr', '1', '1', '1', '1', '51', '2019-04-30 04:44:00', '2019-04-30 04:44:00'),
(20, '1', 'Prodata 2019-04-30 10:20:23...Danilo Prodata 2019-04-30 10:20:23...Danilo', '1', '1', '1', '1', '52', '2019-04-30 04:50:23', '2019-04-30 04:50:23'),
(21, '1', 'Prodata 2019-04-30 11:08:48...cdcp-shared-material Prodata 2019-04-30 11:08:48...cdcp-shared-material', '1', '1', '1', '1', '53', '2019-04-30 05:38:48', '2019-04-30 05:38:48'),
(22, '1', 'Prodata 2019-04-30 11:09:19...tetst Prodata 2019-04-30 11:09:19...tetst', '1', '1', '1', '1', '54', '2019-04-30 05:39:19', '2019-04-30 05:39:19'),
(23, '1', 'Prodata 2019-04-30 11:10:22...cdcp-shared-material Prodata 2019-04-30 11:10:22...cdcp-shared-material', '1', '1', '1', '1', '55', '2019-04-30 05:40:23', '2019-04-30 05:40:23'),
(24, '1', 'Prodata 2019-04-30 11:28:04...cdcp_shared_material2 Prodata 2019-04-30 11:28:04...cdcp_shared_material2', '1', '1', '1', '1', '76', '2019-04-30 05:58:04', '2019-04-30 05:58:04'),
(25, '1', 'Prodata 2019-04-30 11:31:22...cdcp_shared_material2 Prodata 2019-04-30 11:31:22...cdcp_shared_material2', '1', '1', '1', '1', '77', '2019-04-30 06:01:23', '2019-04-30 06:01:23'),
(26, '1', 'Prodata 2019-04-30 11:32:02...cdcp-shared-material-2 Prodata 2019-04-30 11:32:02...cdcp-shared-material-2', '1', '1', '1', '1', '78', '2019-04-30 06:02:02', '2019-04-30 06:02:02'),
(27, '1', 'Prodata 2019-04-30 11:32:59...test-test Prodata 2019-04-30 11:32:59...test-test', '1', '1', '1', '1', '79', '2019-04-30 06:02:59', '2019-04-30 06:02:59'),
(28, '1', 'Prodata 2019-04-30 11:37:07...tetsss Prodata 2019-04-30 11:37:07...tetsss', '1', '1', '1', '1', '80', '2019-04-30 06:07:07', '2019-04-30 06:07:07'),
(29, '1', 'Prodata 2019-04-30 12:16:12...sasa_Asas Prodata 2019-04-30 12:16:12...sasa_Asas', '1', '1', '1', '1', '81', '2019-04-30 06:46:12', '2019-04-30 06:46:12'),
(30, '1', 'Prodata 2019-04-30 12:23:12...test_test Prodata 2019-04-30 12:23:12...test_test', '1', '1', '1', '1', '82', '2019-04-30 06:53:12', '2019-04-30 06:53:12'),
(31, '1', 'Prodata 2019-04-30 12:24:53...sdssdsd_Sdsd Prodata 2019-04-30 12:24:53...sdssdsd_Sdsd', '1', '1', '1', '1', '83', '2019-04-30 06:54:54', '2019-04-30 06:54:54'),
(32, '1', 'Prodata 2019-04-30 12:26:23...ssa-sasa Prodata 2019-04-30 12:26:23...ssa-sasa', '1', '1', '1', '1', '84', '2019-04-30 06:56:23', '2019-04-30 06:56:23'),
(33, '1', 'Prodata 2019-04-30 12:28:40...sds_Sdsd Prodata 2019-04-30 12:28:40...sds_Sdsd', '1', '1', '1', '1', '85', '2019-04-30 06:58:41', '2019-04-30 06:58:41'),
(34, '1', 'Prodata 2019-04-30 12:29:06...sdsd-sdsd Prodata 2019-04-30 12:29:06...sdsd-sdsd', '1', '1', '1', '1', '86', '2019-04-30 06:59:06', '2019-04-30 06:59:06'),
(35, '1', 'Prodata 2019-04-30 12:32:48...sdsd_SDsdsd Prodata 2019-04-30 12:32:48...sdsd_SDsdsd', '1', '1', '1', '1', '87', '2019-04-30 07:02:49', '2019-04-30 07:02:49'),
(36, '1', 'Prodata 2019-04-30 12:33:28...ffd_DfdF_Dfdf Prodata 2019-04-30 12:33:28...ffd_DfdF_Dfdf', '1', '1', '1', '1', '88', '2019-04-30 07:03:29', '2019-04-30 07:03:29'),
(37, '1', 'Prodata 2019-05-01 05:49:29...rahu_lrahul Prodata 2019-05-01 05:49:29...rahu_lrahul', '1', '1', '1', '1', '89', '2019-05-01 00:19:29', '2019-05-01 00:19:29'),
(38, '1', 'Prodata 2019-05-01 05:49:52...dsd-dsds-ds-ds Prodata 2019-05-01 05:49:52...dsd-dsds-ds-ds', '1', '1', '1', '1', '90', '2019-05-01 00:19:52', '2019-05-01 00:19:52'),
(39, '1', 'Prodata 2019-05-01 06:12:56...dsddssds-sds Prodata 2019-05-01 06:12:56...dsddssds-sds', '1', '1', '1', '1', '91', '2019-05-01 00:42:56', '2019-05-01 00:42:56'),
(40, '1', 'Prodata 2019-05-01 10:35:31...dsds_dsdsd_Sds Prodata 2019-05-01 10:35:31...dsds_dsdsd_Sds', '1', '1', '1', '1', '92', '2019-05-01 05:05:31', '2019-05-01 05:05:31'),
(41, '1', 'Prodata 2019-05-01 10:35:54...divesh-divesh-f Prodata 2019-05-01 10:35:54...divesh-divesh-f', '1', '1', '1', '1', '93', '2019-05-01 05:05:54', '2019-05-01 05:05:54'),
(42, '1', 'Prodata 2019-05-01 12:51:35...sdsdsdd-dssdsd Prodata 2019-05-01 12:51:35...sdsdsdd-dssdsd', '1', '1', '1', '1', '94', '2019-05-01 07:21:35', '2019-05-01 07:21:35'),
(43, '1', 'Prodata 2019-05-01 12:51:51...sdsd_dsds_dsd Prodata 2019-05-01 12:51:51...sdsd_dsds_dsd', '1', '1', '1', '1', '95', '2019-05-01 07:21:51', '2019-05-01 07:21:51'),
(44, '1', 'Prodata 2019-05-01 12:54:27...dsds_sdsd_dsds Prodata 2019-05-01 12:54:27...dsds_sdsd_dsds', '1', '1', '1', '1', '96', '2019-05-01 07:24:27', '2019-05-01 07:24:27'),
(45, '1', 'Prodata 2020-03-05 12:03:29...xvxc Prodata 2020-03-05 12:03:29...xvxc', '1', '1', '1', '1', '92', '2020-03-05 06:33:29', '2020-03-05 06:33:29');

-- --------------------------------------------------------

--
-- Table structure for table `share_documents`
--

CREATE TABLE `share_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `duration_time` date NOT NULL,
  `project_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Shared_with` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Shared_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `register_required` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `printable` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `downloadable` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `share_documents`
--

INSERT INTO `share_documents` (`id`, `duration_time`, `project_id`, `document_id`, `Shared_with`, `Shared_by`, `email_title`, `register_required`, `printable`, `downloadable`, `access_token`, `created_at`, `updated_at`) VALUES
(147, '2019-04-15', '6', '572', 'pramod.kumar@contriverz.com', 'priyanshu.chauhan@contriverz.com', 'dfg', '1', '1', '1', '1555065698', '2019-04-12 05:11:38', '2019-04-12 05:11:38'),
(148, '2019-04-15', '6', '839', 'pramod.kumar@contriverz.com', 'priyanshu.chauhan@contriverz.com', 'sf', '1', '1', '1', '1555066820', '2019-04-12 05:30:20', '2019-04-12 05:30:20'),
(149, '2019-04-19', '6', '564', 'pramod.kumar@contriverz.com', 'priyanshu.chauhan@contriverz.com', 'dfgdf', '1', '1', '1', '1555393872', '2019-04-16 00:21:13', '2019-04-16 00:21:13'),
(150, '2019-04-19', '6', '839', 'pramod.kumar@contriverz.com', 'priyanshu.chauhan@contriverz.com', 'dsf', '1', '1', '1', '1555393996', '2019-04-16 00:23:16', '2019-04-16 00:23:16'),
(151, '2019-04-19', '6', '838', 'rahul.mamotra@contriver.com', 'priyanshu.chauhan@contriverz.com', 'TEST', '1', '1', '1', '1555394439', '2019-04-16 00:30:39', '2019-04-16 00:30:39'),
(152, '2019-04-19', '29', '812', 'rahul.mamotra@contriverz.com', 'priyanshu.chauhan@contriverz.com', 'test2', '1', '1', '1', '1555394885', '2019-04-16 00:38:05', '2019-04-16 00:38:05'),
(153, '2019-04-19', '6', '564', 'rahul.mamotra@contriverz.com', 'priyanshu.chauhan@contriverz.com', 'dfdfdff', '1', '1', '1', '1555395008', '2019-04-16 00:40:08', '2019-04-16 00:40:08'),
(154, '2019-04-19', '38', '842', 'rahun.mahotra@contriverz.com', 'priyanshu.chauhan@contriverz.com', 'dd', '1', '1', '1', '1555395537', '2019-04-16 00:48:57', '2019-04-16 00:48:57'),
(155, '2019-04-19', '38', '842', 'rahul.mamotra@contriverz.com', 'priyanshu.chauhan@contriverz.com', 'dddd', '1', '1', '1', '1555395625', '2019-04-16 00:50:25', '2019-04-16 00:50:25'),
(156, '2019-04-19', '38', '842', 'pramod.kumar@contriverz.com', 'priyanshu.chauhan@contriverz.com', 'dfg', '1', '1', '1', '1555396194', '2019-04-16 00:59:54', '2019-04-16 01:40:20'),
(157, '2019-04-19', '39', '846', 'cxcxc', 'priyanshu.chauhan@contriverz.com', 'cxcxcx', '1', '1', '1', '1555416950', '2019-04-16 06:45:50', '2019-04-16 06:45:50'),
(158, '2019-04-19', '39', '846', 'cxcxc', 'priyanshu.chauhan@contriverz.com', 'cxcxcx', '1', '1', '1', '1555417114', '2019-04-16 06:48:34', '2019-04-16 06:48:34'),
(159, '2019-04-19', '39', '846', 'rahul.mamotra@contriverz.com', 'priyanshu.chauhan@contriverz.com', 'cxcxcxcxcx', '1', '1', '1', '1555417137', '2019-04-16 06:48:57', '2019-04-16 06:48:57'),
(160, '2019-04-19', '39', '846', 'pramod.kumar@contriverz.com', 'priyanshu.chauhan@contriverz.com', 'sdsdsd', '1', '1', '1', '1555417384', '2019-04-16 06:53:04', '2019-04-16 06:53:04'),
(161, '2019-04-19', '39', '847', 'pramod.kumar@contriverz.com', 'priyanshu.chauhan@contriverz.com', 'asasas', '1', '1', '1', '1555421903', '2019-04-16 08:08:23', '2019-04-16 08:08:23'),
(162, '2019-04-20', '39', '847', 'pramod.kumar@contriverz.com', 'priyanshu.chauhan@contriverz.com', 'dsdsdsd', '1', '1', '1', '1555481890', '2019-04-17 00:48:10', '2019-04-17 00:48:10'),
(163, '2019-04-20', '39', '847', 'rahul.mamotra@contriverz.com', 'priyanshu.chauhan@contriverz.com', 'dsdsdsd', '1', '1', '1', '1555481890', '2019-04-17 00:48:13', '2019-04-17 00:48:13'),
(164, '2019-04-20', '40', '849', 'rahul.mamotra@contriverz.com', 'rahul.mamotra@contriverz.com', 'dsd', '1', '1', '1', '1555482354', '2019-04-17 00:55:54', '2019-04-17 00:55:54'),
(165, '2019-04-26', '39', '846', 'rahul.mamotra@contriverz.com', 'priyanshu.chauhan@contriverz.com', 'ddsdsd', '1', '1', '1', '1555994195', '2019-04-22 23:06:35', '2019-04-22 23:06:35'),
(166, '2019-04-26', '39', '850', 'rahul.mamotra@contriverz.com', 'priyanshu.chauhan@contriverz.com', 'ddsdsd', '1', '1', '1', '1555994195', '2019-04-22 23:06:35', '2019-04-22 23:06:35'),
(167, '2019-04-26', '39', '851', 'rahul.mamotra@contriverz.com', 'priyanshu.chauhan@contriverz.com', 'ddsdsd', '1', '1', '1', '1555994195', '2019-04-22 23:06:35', '2019-04-22 23:06:35'),
(168, '2019-04-26', '39', '852', 'rahul.mamotra@contriverz.com', 'priyanshu.chauhan@contriverz.com', 'ddsdsd', '1', '1', '1', '1555994195', '2019-04-22 23:06:35', '2019-04-22 23:06:35'),
(169, '2019-04-26', '39', '853', 'rahul.mamotra@contriverz.com', 'priyanshu.chauhan@contriverz.com', 'xccxc', '1', '1', '1', '1556010591', '2019-04-23 03:39:51', '2019-04-23 03:39:51'),
(170, '2019-05-02', '40', '854', 'rahul.mamotra@contriverz.com', 'rahul.mamotra@contriverz.com', 'test', '1', '1', '1', '1556513661', '2019-04-28 23:24:21', '2019-04-28 23:24:21'),
(171, '2019-05-02', '40', '854', 'rahul.mamotra@contriverz.com', 'rahul.mamotra@contriverz.com', 'test', '1', '1', '1', '1556513723', '2019-04-28 23:25:23', '2019-04-28 23:25:23'),
(172, '2019-05-02', '46', '9', 'rahul.mamotra@contriverz.com', 'priyanshu.chauhan@contriverz.com', 'dddd', '1', '1', '1', '1556515899', '2019-04-01 00:01:39', '2019-04-29 00:01:39'),
(173, '2019-05-02', '47', '12', 'rahul.mamotra@contriverz.com', 'rahul.mamotra@contriverz.com', 'test', '1', '1', '1', '1556531788', '2019-04-18 04:26:28', '2019-04-29 04:26:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone_no`, `is_active`, `remember_token`, `created_at`, `updated_at`, `company`) VALUES
(1, 'priyanshu45', 'priyanshu.chauhan@contriverz.com', '$2y$10$4wdR7nyN3KivA3kJLPuwCeTYPKMSMUhZpBbskSLkHI3AZ2DuI9BTK', '7409610653', 1, 'atyrvRuXmz6NLSyAK88et1khWfkeFCa1l2JMqBOCg41IXsqhMALh6HV7BTgX', '2018-12-27 08:42:08', '2019-01-23 09:38:04', 'Contriverz'),
(2, 'Gagandeep', 'gdeep@contriverz.com', '$2y$10$n3ueaSw4UkN4i7eUkGr7uubhHIjoJCbDN5UIBCYpDQEJEvzloB0j2', '9988429146', 1, NULL, '2018-12-28 23:30:20', '2018-12-28 23:30:20', 'Contriverz'),
(3, 'Ankit', 'ankit.chauhan@contriverz.com', '', '62789453467', 1, NULL, '2018-12-29 08:20:37', '2020-03-05 05:19:37', 'Contriverz'),
(4, 'Danilo Campestrin', 'dc@collinsdale.com', '$2y$10$RiTRblliyTeCyxoqvX16VeEVNgddn8ILphxBF8cqF2qp/S6JlUNfm', '+447946628918', 1, 'c9R79TzFgFloi7MM35GWbux4u6I7FfEgPRiAKM9NfBUorTWxnnTlOYB4IPlE', '2018-12-29 09:13:53', '2018-12-29 09:13:53', 'Collins Dale Capital Partners Ltd'),
(5, 'DC CAMBO', 'danilo@cambo.it', '$2y$10$Wme0GDe9tE.yHsd7nM5UZelJQ5GFNXljeOP8irqS0PjZfyxi2CwC6', '+393475401412', 1, NULL, '2018-12-29 09:20:53', '2018-12-29 09:20:53', 'CAMBO s.a.s.'),
(6, 'parmod', 'pramod.kumar@contriverz.com', '$2y$10$yvhOngi9IzzZmPxXq7WPeeyvB.L7D4csY5oEklh.5dOF0fwQjHoD.', '7695220', 1, 'ePnGin9YcWRS5gL6BAyGnhnb5sBfT61PVumuDru2jgrvJS72dAaXYmocxYtN', '2019-01-18 04:31:33', '2020-03-02 06:47:07', 'fgf'),
(7, 'kavita', 'kavita.sharma@contriverz.com', '$2y$10$gZTO7PqZgfZcta74rco.quRaqJ8P5tvIGMbAMTGJsdI3ZjMLLiAi2', '09288623746', 1, '2yMqAIlnrZxhppDXHvumXc8oeujrKaz6hz5VeTy3h5oi3yePoWG3P3IsOkJG', '2019-01-23 05:31:12', '2019-01-30 04:05:20', 'in'),
(8, 'seema arora', 'seema.arora@contriverz.com', '$2y$10$r9OD3HfAhWdREDirX7OTZ.puzFeDslq6.I4nbKGk9K9KtUMygY.JC', '9784161012', 1, NULL, '2019-01-23 23:27:07', '2019-01-23 23:27:07', 'contriverz'),
(9, 'dedar', 'dchoudhary@contriverz.com', '$2y$10$z1EE1nD4KtuqmRij0C0J6.ZaMy7CZ1r1rljcm3jjPVXYjKuX7PT9i', '9090909090', 1, NULL, '2019-02-08 09:19:10', '2019-02-08 09:19:10', 'contriverz'),
(10, 'priyanshu chauhan', 'priyanshu7111997@gmail.com', '$2y$10$54H2fUM3zwh2oFPtp6Jtn.aN.n.MIEHUPc3DutuAKbMnCgcH1x4wu', '740961653', 1, NULL, '2019-02-18 21:50:52', '2019-02-18 21:50:52', 'dream_worker'),
(11, 'Alberto Cerri', 'alberto.cerri@collinsdale.com', '$2y$10$wdxsTH42.ZAXx4WfQLz97uehnncocI.gk/hiIgngbzJ2RoamwBiPK', '+393478189463', 0, 'BkbIx7UiMUNfHT3zcJkmUXG46k8rfcUNC9bNXa6dEACOVYiauIL52Ks4d58J', '2019-02-21 08:24:50', '2020-03-05 04:04:45', 'Collins Dale Capital Partners Ltd'),
(12, 'ashish sharma', 'vellabnda420@gmail.com', '$2y$10$d5XNrR0O1atm8x6g1TiBKeyeuAQR5uVRCe.EVNx/A35ijTuKnWvAi', '7404678848', 1, NULL, '2019-02-25 07:19:14', '2019-02-25 07:19:14', 'new'),
(13, 'Rahul Malhotra', 'rahul.mamotra@contriverz.com', '$2y$10$kxr5AWf8aj7N5Fuv7OH1JOVSXv5AMR7LiOArksifebiqGBAj.OroS', '898998998', 1, '21AZtHVhORfpQVgkUKlOQR2AjbvMrfLL40H30Gg1gFEv2m7QSAMHpVXlxXtD', '2019-04-17 00:50:46', '2019-04-17 00:50:46', 'cz'),
(14, 'Danilo Carolini', 'd.carolini@collinsdale.com', '$2y$10$pdFByNQa.nhjJKDZ4mRUmu8lF8jlTEoKKA9LDkNEe2rImToyG1zL2', '004407526733364', 1, 'xZHvLACnvQXB14TYOLhfICAdxTvQocvbCF4GjZVPevOMsOGmuzaM2GUaY8BQ', '2019-04-30 04:01:21', '2019-04-30 04:01:21', 'Collins Dale Capital Partners');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action_type`
--
ALTER TABLE `action_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_email_unique` (`email`),
  ADD UNIQUE KEY `admin_users_phone_no_unique` (`phone_no`);

--
-- Indexes for table `collaboration_with_group`
--
ALTER TABLE `collaboration_with_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delete_documents`
--
ALTER TABLE `delete_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_detect`
--
ALTER TABLE `device_detect`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document_permission`
--
ALTER TABLE `document_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fav_documents`
--
ALTER TABLE `fav_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups_reports`
--
ALTER TABLE `groups_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `projects_project_slug_unique` (`project_slug`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions_reports`
--
ALTER TABLE `questions_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_reply`
--
ALTER TABLE `question_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `share_documents`
--
ALTER TABLE `share_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_no_unique` (`phone_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action_type`
--
ALTER TABLE `action_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `collaboration_with_group`
--
ALTER TABLE `collaboration_with_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `delete_documents`
--
ALTER TABLE `delete_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `device_detect`
--
ALTER TABLE `device_detect`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `document_permission`
--
ALTER TABLE `document_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2493;
--
-- AUTO_INCREMENT for table `fav_documents`
--
ALTER TABLE `fav_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `groups_reports`
--
ALTER TABLE `groups_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `group_members`
--
ALTER TABLE `group_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `questions_reports`
--
ALTER TABLE `questions_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `question_reply`
--
ALTER TABLE `question_reply`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=986;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `share_documents`
--
ALTER TABLE `share_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
