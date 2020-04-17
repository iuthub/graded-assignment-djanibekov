-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2020 at 08:58 PM
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
-- Database: `laravel_todolist`
--

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
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2020_04_16_115609_create_tasks_table', 1);

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
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'sp lab', '2020-04-17 08:59:22', '2020-04-17 08:59:22', 1),
(3, 'buy food', '2020-04-17 09:01:51', '2020-04-17 11:40:29', 1),
(4, 'linkin park', '2020-04-17 11:38:55', '2020-04-17 11:38:55', 5),
(6, 'two more', '2020-04-17 12:03:39', '2020-04-17 12:03:50', 4),
(7, 'buy bread', '2020-04-17 12:39:30', '2020-04-17 12:39:30', 8);

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
(1, 'amir', 'amir.akilbekovich@gmail.com', NULL, '$2y$10$5DP2/CyVlyi/K1cyY2lHcualp8Z42iJDrSdiihbnXjoHy0bAR3wB.', NULL, '2020-04-17 06:53:17', '2020-04-17 06:53:17'),
(2, 'temp', 'temp@gmail.com', NULL, '$2y$10$skf3OfBRllQvw1TeA3An5.CXnrJp5UGgRCmGvSs0LnqSAmY/hCpau', NULL, '2020-04-17 09:03:17', '2020-04-17 09:03:17'),
(3, 'temp1', 'todolistlaravel@gmail.com', NULL, '$2y$10$pJbd4s6TzPu/xKHNM9G0z.k4miKLnoc/Uz7VPLyA2PWwUDo385gTS', NULL, '2020-04-17 09:49:13', '2020-04-17 09:49:13'),
(4, 'qwerty', 'qwerty@gmail.com', NULL, '$2y$10$0ojIs.2.pPnwkVw5n0Jt4eRh9losN.r.iViX5U.0pG3kb/VGoJnp2', NULL, '2020-04-17 10:01:48', '2020-04-17 10:01:48'),
(5, 'linkinpark', 'linkinpark@gmail.com', NULL, '$2y$10$hK6vnzzX1LM6cxm1OW1K5OBLPxxzSh5uiR97mTI1iy0riyYd.qAUS', NULL, '2020-04-17 10:05:30', '2020-04-17 10:05:30'),
(6, 'wrert', 'ertwet@gmail.com', NULL, '$2y$10$aDbC4f9OZ6WwURFr3ZBt4eZ0fmS21VVlpQ4LWcQHKWyWHRprH/lrK', NULL, '2020-04-17 10:10:04', '2020-04-17 10:10:04'),
(7, 'done', 'done@gmail.com', NULL, '$2y$10$f9HVjgBeatbUfjOsLd71x.8.CJ9R/845z6WLhlxDE1YkJhh9E4.lu', NULL, '2020-04-17 12:04:28', '2020-04-17 12:04:28'),
(8, 'asd', 'asd@gmail.com', NULL, '$2y$10$C4ACmSNBd9FL2zi676jYsOnReHtqjiLejDTPSDNc7Jjdu6ZYQ1ITy', NULL, '2020-04-17 12:39:12', '2020-04-17 12:39:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
