-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2020 at 05:28 PM
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
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `aboutme` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_funds` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_projects` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_volunteers` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `aboutme`, `total_funds`, `total_projects`, `total_volunteers`, `created_at`, `updated_at`) VALUES
(1, 'I love data and coding', '3000000', '16', '6', '2020-06-25 01:07:11', '2020-06-25 01:07:11');

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 8, 'Admin', 'fa-tasks', '', NULL, NULL, '2020-06-25 00:58:37'),
(3, 2, 9, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2020-06-25 00:58:37'),
(4, 2, 10, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2020-06-25 00:58:37'),
(5, 2, 11, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2020-06-25 00:58:37'),
(6, 2, 12, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2020-06-25 00:58:37'),
(7, 2, 13, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2020-06-25 00:58:37'),
(8, 0, 2, 'Identitas', 'fa-user-secret', 'identity', '*', '2020-06-25 00:51:34', '2020-06-25 00:52:16'),
(9, 0, 3, 'Tentang Saya', 'fa-gitlab', 'about', '*', '2020-06-25 00:52:08', '2020-06-25 00:52:16'),
(10, 0, 5, 'Pengalaman', 'fa-bug', 'experiences', '*', '2020-06-25 00:53:43', '2020-06-25 00:58:37'),
(11, 0, 4, 'Pendidikan', 'fa-graduation-cap', 'education', '*', '2020-06-25 00:54:25', '2020-06-25 00:58:37'),
(12, 0, 6, 'Kemampuan', 'fa-bolt', 'skills', '*', '2020-06-25 00:56:55', '2020-06-25 01:14:30'),
(13, 0, 7, 'Fitur', 'fa-crosshairs', 'features', '*', '2020-06-25 00:57:59', '2020-06-25 00:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-06-25 00:48:20', '2020-06-25 00:48:20'),
(2, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 00:48:32', '2020-06-25 00:48:32'),
(3, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Identitas\",\"icon\":\"fa-user-secret\",\"uri\":\"identity\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"d9YdHRF6osCAVWVzH9RV13otLsfQl8Oi9ImIdil3\"}', '2020-06-25 00:51:34', '2020-06-25 00:51:34'),
(4, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-25 00:51:34', '2020-06-25 00:51:34'),
(5, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Tentang Saya\",\"icon\":\"fa-gitlab\",\"uri\":\"about\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"d9YdHRF6osCAVWVzH9RV13otLsfQl8Oi9ImIdil3\"}', '2020-06-25 00:52:08', '2020-06-25 00:52:08'),
(6, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-25 00:52:09', '2020-06-25 00:52:09'),
(7, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"d9YdHRF6osCAVWVzH9RV13otLsfQl8Oi9ImIdil3\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-06-25 00:52:16', '2020-06-25 00:52:16'),
(8, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 00:52:17', '2020-06-25 00:52:17'),
(9, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Pengalaman\",\"icon\":\"fa-bug\",\"uri\":\"experiences\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"d9YdHRF6osCAVWVzH9RV13otLsfQl8Oi9ImIdil3\"}', '2020-06-25 00:53:42', '2020-06-25 00:53:42'),
(10, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-25 00:53:43', '2020-06-25 00:53:43'),
(11, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Pendidikan\",\"icon\":\"fa-graduation-cap\",\"uri\":\"education\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"d9YdHRF6osCAVWVzH9RV13otLsfQl8Oi9ImIdil3\"}', '2020-06-25 00:54:25', '2020-06-25 00:54:25'),
(12, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-25 00:54:26', '2020-06-25 00:54:26'),
(13, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Kemampuan\",\"icon\":\"fa-bolt\",\"uri\":\"skills\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"d9YdHRF6osCAVWVzH9RV13otLsfQl8Oi9ImIdil3\"}', '2020-06-25 00:56:55', '2020-06-25 00:56:55'),
(14, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-25 00:56:55', '2020-06-25 00:56:55'),
(15, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Fitur\",\"icon\":\"fa-crosshairs\",\"uri\":\"features\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"d9YdHRF6osCAVWVzH9RV13otLsfQl8Oi9ImIdil3\"}', '2020-06-25 00:57:59', '2020-06-25 00:57:59'),
(16, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-25 00:58:00', '2020-06-25 00:58:00'),
(17, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"d9YdHRF6osCAVWVzH9RV13otLsfQl8Oi9ImIdil3\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":11},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":12}]},{\\\"id\\\":13},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-06-25 00:58:37', '2020-06-25 00:58:37'),
(18, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 00:58:37', '2020-06-25 00:58:37'),
(19, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"d9YdHRF6osCAVWVzH9RV13otLsfQl8Oi9ImIdil3\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":11},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":12}]},{\\\"id\\\":13},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-06-25 01:01:50', '2020-06-25 01:01:50'),
(20, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 01:01:50', '2020-06-25 01:01:50'),
(21, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-25 01:01:52', '2020-06-25 01:01:52'),
(22, 1, 'admin/identity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 01:02:02', '2020-06-25 01:02:02'),
(23, 1, 'admin/identity/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 01:02:05', '2020-06-25 01:02:05'),
(24, 1, 'admin/identity', 'POST', '127.0.0.1', '{\"name\":\"Made Mas Adi Winata, S. Kom.\",\"jobs\":\"Operation Officer & Freelance Programmer\",\"description\":null,\"birth_date\":\"1997-05-08\",\"phone_number\":\"0895 3415 86838\",\"email\":\"m45adiwinata@gmail.com\",\"address\":\"Desa Panji, Buleleng, Bali\",\"facebook\":null,\"twitter\":null,\"linkedin\":null,\"_token\":\"d9YdHRF6osCAVWVzH9RV13otLsfQl8Oi9ImIdil3\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/identity\"}', '2020-06-25 01:03:41', '2020-06-25 01:03:41'),
(25, 1, 'admin/identity/create', 'GET', '127.0.0.1', '[]', '2020-06-25 01:03:43', '2020-06-25 01:03:43'),
(26, 1, 'admin/identity', 'POST', '127.0.0.1', '{\"name\":\"Made Mas Adi Winata, S. Kom.\",\"jobs\":\"Operation Officer & Freelance Programmer\",\"description\":\"I\'m an Operation Officer at P.T. Bimasakti Alterra Company and a freelance web and desktop application programmer.\",\"birth_date\":\"1997-05-08\",\"phone_number\":\"0895 3415 86838\",\"email\":\"m45adiwinata@gmail.com\",\"address\":\"Desa Panji, Buleleng, Bali\",\"facebook\":null,\"twitter\":null,\"linkedin\":null,\"_token\":\"d9YdHRF6osCAVWVzH9RV13otLsfQl8Oi9ImIdil3\"}', '2020-06-25 01:04:57', '2020-06-25 01:04:57'),
(27, 1, 'admin/identity/create', 'GET', '127.0.0.1', '[]', '2020-06-25 01:04:58', '2020-06-25 01:04:58'),
(28, 1, 'admin/identity', 'POST', '127.0.0.1', '{\"name\":\"Made Mas Adi Winata, S. Kom.\",\"jobs\":\"Operation Officer & Freelance Programmer\",\"description\":\"I\'m an Operation Officer at P.T. Bimasakti Alterra Company and a freelance web and desktop application programmer.\",\"birth_date\":\"1997-05-08\",\"phone_number\":\"0895 3415 86838\",\"email\":\"m45adiwinata@gmail.com\",\"address\":\"Desa Panji, Buleleng, Bali\",\"facebook\":null,\"twitter\":null,\"linkedin\":null,\"_token\":\"d9YdHRF6osCAVWVzH9RV13otLsfQl8Oi9ImIdil3\"}', '2020-06-25 01:05:07', '2020-06-25 01:05:07'),
(29, 1, 'admin/identity', 'GET', '127.0.0.1', '[]', '2020-06-25 01:05:08', '2020-06-25 01:05:08'),
(30, 1, 'admin/identity/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 01:05:14', '2020-06-25 01:05:14'),
(31, 1, 'admin/identity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 01:05:19', '2020-06-25 01:05:19'),
(32, 1, 'admin/about', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 01:05:22', '2020-06-25 01:05:22'),
(33, 1, 'admin/about/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 01:05:25', '2020-06-25 01:05:25'),
(34, 1, 'admin/about', 'POST', '127.0.0.1', '{\"aboutme\":\"I love data and coding\",\"total_funds\":\"3000000\",\"total_projects\":\"16\",\"total_volunteers\":\"6\",\"skills\":{\"new_1\":{\"name\":\"Python\",\"value\":\"90\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"name\":\"Javascript\",\"value\":\"85\",\"id\":null,\"_remove_\":\"0\"},\"new_3\":{\"name\":\"PHP\",\"value\":\"80\",\"id\":null,\"_remove_\":\"0\"},\"new_4\":{\"name\":\"C#\",\"value\":\"50\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"d9YdHRF6osCAVWVzH9RV13otLsfQl8Oi9ImIdil3\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/about\"}', '2020-06-25 01:07:11', '2020-06-25 01:07:11'),
(35, 1, 'admin/about', 'GET', '127.0.0.1', '[]', '2020-06-25 01:07:11', '2020-06-25 01:07:11'),
(36, 1, 'admin/education', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 01:07:17', '2020-06-25 01:07:17'),
(37, 1, 'admin/education/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 01:07:19', '2020-06-25 01:07:19'),
(38, 1, 'admin/education', 'POST', '127.0.0.1', '{\"about_id\":\"1\",\"start\":\"2002\",\"end\":\"2003\",\"position\":\"Kindergarten\",\"school\":\"TK Sandhi Putra Banjar Jawa, Singaraja, Bali\",\"location\":\"Jl. Gajah Mada, Singaraja\",\"_token\":\"d9YdHRF6osCAVWVzH9RV13otLsfQl8Oi9ImIdil3\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/education\"}', '2020-06-25 01:08:37', '2020-06-25 01:08:37'),
(39, 1, 'admin/education', 'GET', '127.0.0.1', '[]', '2020-06-25 01:08:38', '2020-06-25 01:08:38'),
(40, 1, 'admin/features', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 01:08:45', '2020-06-25 01:08:45'),
(41, 1, 'admin/features', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 01:09:00', '2020-06-25 01:09:00'),
(42, 1, 'admin/identity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 01:09:27', '2020-06-25 01:09:27'),
(43, 1, 'admin/identity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 01:09:31', '2020-06-25 01:09:31'),
(44, 1, 'admin/education', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 01:11:26', '2020-06-25 01:11:26'),
(45, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-25 01:11:30', '2020-06-25 01:11:30'),
(46, 1, 'admin/education/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 01:11:36', '2020-06-25 01:11:36'),
(47, 1, 'admin/education', 'POST', '127.0.0.1', '{\"about_id\":\"1\",\"start\":\"2003\",\"end\":\"2009\",\"position\":\"Elementary School\",\"school\":\"S.D. 3 4 7 Banjar Jawa, Singaraja, Bali\",\"location\":\"Jl. Ngurah Rai, Singaraja\",\"_token\":\"d9YdHRF6osCAVWVzH9RV13otLsfQl8Oi9ImIdil3\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/education\"}', '2020-06-25 01:12:33', '2020-06-25 01:12:33'),
(48, 1, 'admin/education', 'GET', '127.0.0.1', '[]', '2020-06-25 01:12:33', '2020-06-25 01:12:33'),
(49, 1, 'admin/education/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 01:12:39', '2020-06-25 01:12:39'),
(50, 1, 'admin/education', 'POST', '127.0.0.1', '{\"about_id\":\"1\",\"start\":null,\"end\":null,\"position\":null,\"school\":null,\"location\":null,\"_token\":\"d9YdHRF6osCAVWVzH9RV13otLsfQl8Oi9ImIdil3\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/education\"}', '2020-06-25 01:12:43', '2020-06-25 01:12:43'),
(51, 1, 'admin/education/create', 'GET', '127.0.0.1', '[]', '2020-06-25 01:12:45', '2020-06-25 01:12:45'),
(52, 1, 'admin/education', 'POST', '127.0.0.1', '{\"about_id\":\"1\",\"start\":\"2009\",\"end\":\"2012\",\"position\":\"Junior High School\",\"school\":\"SMP Negeri 1 Singaraja\",\"location\":\"Jl. Gajah Mada, Singaraja\",\"_token\":\"d9YdHRF6osCAVWVzH9RV13otLsfQl8Oi9ImIdil3\"}', '2020-06-25 01:13:37', '2020-06-25 01:13:37'),
(53, 1, 'admin/education', 'GET', '127.0.0.1', '[]', '2020-06-25 01:13:37', '2020-06-25 01:13:37'),
(54, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 01:14:20', '2020-06-25 01:14:20'),
(55, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Pengalaman\",\"icon\":\"fa-bug\",\"uri\":\"experiences\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"d9YdHRF6osCAVWVzH9RV13otLsfQl8Oi9ImIdil3\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2020-06-25 01:14:24', '2020-06-25 01:14:24'),
(56, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-25 01:14:25', '2020-06-25 01:14:25'),
(57, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"d9YdHRF6osCAVWVzH9RV13otLsfQl8Oi9ImIdil3\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":11},{\\\"id\\\":10},{\\\"id\\\":12},{\\\"id\\\":13},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-06-25 01:14:30', '2020-06-25 01:14:30'),
(58, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 01:14:31', '2020-06-25 01:14:31'),
(59, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-06-25 01:14:38', '2020-06-25 01:14:38'),
(60, 1, 'admin/experiences', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 01:14:43', '2020-06-25 01:14:43'),
(61, 1, 'admin/identity', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 01:15:04', '2020-06-25 01:15:04'),
(62, 1, 'admin/identity/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-06-25 01:15:07', '2020-06-25 01:15:07'),
(63, 1, 'admin/identity/1', 'PUT', '127.0.0.1', '{\"name\":\"Made Mas Adi Winata, S. Kom.\",\"jobs\":\"Operation Officer & Freelance Programmer\",\"description\":\"I\'m an Operation Officer at P.T. Bimasakti Alterra Company and a freelance web and desktop application programmer.\",\"birth_date\":\"1997-05-08\",\"phone_number\":\"0895 3415 86838\",\"email\":\"m45adiwinata@gmail.com\",\"address\":\"Desa Panji, Buleleng, Bali\",\"facebook\":null,\"twitter\":null,\"linkedin\":null,\"_token\":\"d9YdHRF6osCAVWVzH9RV13otLsfQl8Oi9ImIdil3\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/identity\"}', '2020-06-25 01:19:11', '2020-06-25 01:19:11'),
(64, 1, 'admin/identity', 'GET', '127.0.0.1', '[]', '2020-06-25 01:19:12', '2020-06-25 01:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2020-06-25 00:47:17', '2020-06-25 00:47:17');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL),
(1, 9, NULL, NULL),
(1, 10, NULL, NULL),
(1, 11, NULL, NULL),
(1, 12, NULL, NULL),
(1, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$dh0kjoCyDSA5kNZVMd3bYuDe4rP2cFlvQf42atRMC1LElF7ftRx9e', 'Administrator', NULL, '4QQRznOYmfA9gCVU6yeNplgvbivDYxZCy0XtrSjNJEJU9qmtjQBI2oZia2zN', '2020-06-25 00:47:17', '2020-06-25 00:47:17');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_id` int(11) NOT NULL,
  `start` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `about_id`, `start`, `end`, `position`, `school`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, '2002', '2003', 'Kindergarten', 'TK Sandhi Putra Banjar Jawa, Singaraja, Bali', 'Jl. Gajah Mada, Singaraja', '2020-06-25 01:08:37', '2020-06-25 01:08:37'),
(2, 1, '2003', '2009', 'Elementary School', 'S.D. 3 4 7 Banjar Jawa, Singaraja, Bali', 'Jl. Ngurah Rai, Singaraja', '2020-06-25 01:12:33', '2020-06-25 01:12:33'),
(3, 1, '2009', '2012', 'Junior High School', 'SMP Negeri 1 Singaraja', 'Jl. Gajah Mada, Singaraja', '2020-06-25 01:13:37', '2020-06-25 01:13:37');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_id` int(11) NOT NULL,
  `start` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `identities`
--

CREATE TABLE `identities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `identities`
--

INSERT INTO `identities` (`id`, `name`, `jobs`, `description`, `birth_date`, `phone_number`, `email`, `address`, `facebook`, `twitter`, `linkedin`, `picture_path`, `created_at`, `updated_at`) VALUES
(1, 'Made Mas Adi Winata, S. Kom.', 'Operation Officer & Freelance Programmer', 'I\'m an Operation Officer at P.T. Bimasakti Alterra Company and a freelance web and desktop application programmer.', '1997-05-08', '0895 3415 86838', 'm45adiwinata@gmail.com', 'Desa Panji, Buleleng, Bali', NULL, NULL, NULL, 'images/14d9025ee0bc0a9b5fffc21317fa9194.gif', '2020-06-25 01:05:07', '2020-06-25 01:19:11');

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
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_11_18_040150_create_identities_table', 1),
(6, '2019_11_19_042249_create_abouts_table', 1),
(7, '2019_11_19_043122_create_skills_table', 1),
(8, '2019_11_19_055727_add_picture_column', 1),
(9, '2019_11_19_102952_create_experiences_table', 1),
(10, '2019_11_19_132502_create_education_table', 1),
(11, '2019_11_19_141218_create_features_table', 1);

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
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `about_id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'Python', 90, '2020-06-25 01:07:11', '2020-06-25 01:07:11'),
(2, 1, 'Javascript', 85, '2020-06-25 01:07:11', '2020-06-25 01:07:11'),
(3, 1, 'PHP', 80, '2020-06-25 01:07:11', '2020-06-25 01:07:11'),
(4, 1, 'C#', 50, '2020-06-25 01:07:11', '2020-06-25 01:07:11');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `identities`
--
ALTER TABLE `identities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
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
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `identities`
--
ALTER TABLE `identities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
