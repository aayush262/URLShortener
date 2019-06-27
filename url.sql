-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2019 at 05:00 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `url`
--

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `url`, `code`, `created_at`, `updated_at`) VALUES
(1, 'https://php.net/', '31231', NULL, NULL),
(2, 'https://www.facebook.com/', '997456', '2019-06-27 04:41:31', '2019-06-27 04:41:31'),
(3, 'https://laravel.com/docs/5.8/csrf', '691581', '2019-06-27 04:43:49', '2019-06-27 04:43:49'),
(6, 'https://www.google.com/', '627807', '2019-06-27 04:48:43', '2019-06-27 04:48:43'),
(7, 'https://laravel.com/docs/5.8/requests', 'ERB8elD', '2019-06-27 05:33:30', '2019-06-27 05:33:30'),
(9, 'https://afterthought.example.com/', 'YpTDe7Y', '2019-06-27 05:34:55', '2019-06-27 05:34:55'),
(10, 'https://www.example.org/', 'hQ7i0nS', '2019-06-27 05:36:01', '2019-06-27 05:36:01'),
(11, 'https://breath.example.com/', '2rK0NCU', '2019-06-27 05:40:52', '2019-06-27 05:40:52'),
(12, 'https://example.com/', '5E5GoNa', '2019-06-27 05:41:55', '2019-06-27 05:41:55'),
(13, 'https://boy.example.com/afterthought/bag?addition=bone', 'MGrQ47B', '2019-06-27 05:44:17', '2019-06-27 05:44:17'),
(14, 'http://example.com/birds/bat.html', 'XgPW4cw', '2019-06-27 05:45:02', '2019-06-27 05:45:02'),
(15, 'https://www.facebook.com/', 'Gbnb074', '2019-06-27 05:46:34', '2019-06-27 05:46:34'),
(16, 'https://www.example.org/', '7335138', '2019-06-27 05:47:50', '2019-06-27 05:47:50'),
(17, 'https://boy.example.com/afterthought/bag?addition=bone', '9262609', '2019-06-27 05:48:06', '2019-06-27 05:48:06'),
(18, 'https://laravel.com/docs/5.8/csrf', '0979365', '2019-06-27 05:48:56', '2019-06-27 05:48:56'),
(19, 'http://www.example.com/bells/aunt', '1659994', '2019-06-27 05:58:23', '2019-06-27 05:58:23'),
(20, 'https://example.com/appliance', '5006037', '2019-06-27 06:00:28', '2019-06-27 06:00:28'),
(21, 'https://example.com/appliance', '1288234', '2019-06-27 06:01:20', '2019-06-27 06:01:20');

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
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_06_27_072158_create_links_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `links`
--
ALTER TABLE `links`
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
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

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
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
