-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2023 at 10:05 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

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
(1, '2023_07_20_103227_create_customers_table', 1),
(2, '2023_07_20_104136_update_some_value_in_customers_table', 1),
(3, '2023_07_20_104507_updating_some_field_in_customers_table', 1),
(4, '2023_07_20_112841_updating_customers_table', 2),
(5, '2014_10_12_000000_create_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `due_date` date DEFAULT NULL,
  `has_completed` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `user_id`, `title`, `description`, `due_date`, `has_completed`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'AD', 'DDDD', '2023-08-28', 1, '2023-07-31 20:29:28', '2023-08-01 07:45:05', NULL),
(2, 11, 'Sample', 'Hello world', '2023-09-09', 1, '2023-07-31 20:32:35', '2023-08-01 07:47:51', NULL),
(3, 5, 'Hello 21', 'Hell my name is upendra kumar prasad s', '2023-08-24', 1, '2023-08-01 05:21:50', '2023-08-01 07:47:33', '2023-08-01 06:34:41'),
(4, 5, 'Simple Task', 'Test desc', '2023-08-08', 1, '2023-08-01 05:23:11', '2023-08-01 07:47:33', '2023-08-01 07:05:57'),
(5, 5, 'Hello World', 'Test 1', '2023-08-18', 1, '2023-08-01 06:36:04', '2023-08-01 07:47:33', '2023-08-01 06:51:37'),
(6, 5, 'Upendra Test', 'Hello Test Todays i will comp', '2023-08-01', 1, '2023-08-01 07:06:33', '2023-08-01 07:07:06', NULL),
(7, 12, 'I have to do handover on todays days', 'its going in process ys', '2023-08-01', 1, '2023-08-01 07:09:15', '2023-08-01 07:10:01', '2023-08-01 07:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `updated_at`, `created_at`) VALUES
(1, 'TEST', 'test@gmail.com', NULL, '', NULL, NULL),
(2, 'Upendra Kr Pd', 'upe@gmail.com', NULL, 'Admin', '2023-07-31 17:37:55', '2023-07-31 17:37:55'),
(3, 'Upendra Kr Pd', 'upe1@gmail.com', NULL, 'Admin', '2023-07-31 17:38:22', '2023-07-31 17:38:22'),
(4, 'Upendra Kr Pd', 'uda@gmail.com', NULL, 'Admin', '2023-07-31 17:41:03', '2023-07-31 17:41:03'),
(5, 'Upendra', 'up11e@gmail.com', NULL, 'e3afed0047b08059d0fada10f400c1e5', '2023-07-31 17:53:13', '2023-07-31 17:53:13'),
(6, 'Upend', 'up121e@gmail.com', NULL, 'e3afed0047b08059d0fada10f400c1e5', '2023-07-31 17:57:17', '2023-07-31 17:57:17'),
(7, 'UKP', 'dajkdjkaj@gmail.com', NULL, 'e3afed0047b08059d0fada10f400c1e5', '2023-07-31 17:58:45', '2023-07-31 17:58:45'),
(8, 'UKP', 's@gmail.co', NULL, 'e3afed0047b08059d0fada10f400c1e5', '2023-07-31 19:55:33', '2023-07-31 19:55:33'),
(9, 'HOYA', 'm@gmail.com', NULL, '2e33a9b0b06aa0a01ede70995674ee23', '2023-07-31 19:56:11', '2023-07-31 19:56:11'),
(10, 'UH', 'up1dd1e@gmail.com', NULL, 'e3afed0047b08059d0fada10f400c1e5', '2023-07-31 20:11:11', '2023-07-31 20:11:11'),
(11, 'AS', 'up13d1e@gmail.com', 971123456789, 'e3afed0047b08059d0fada10f400c1e5', '2023-07-31 20:12:27', '2023-07-31 20:12:27'),
(12, 'Upendratest', 'upendratest@gmail.com', 9719572453211, '2e33a9b0b06aa0a01ede70995674ee23', '2023-08-01 07:08:31', '2023-08-01 07:08:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
