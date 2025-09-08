-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2025 at 02:03 PM
-- Server version: 8.0.33
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arsip_surat`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Surat Desa Rakyat', '2025-09-08 04:37:04', '2025-09-08 04:37:14'),
(2, 'Undangan', '2025-09-08 06:34:48', '2025-09-08 06:34:48'),
(3, 'Pengumuman', '2025-09-08 06:34:48', '2025-09-08 06:34:48'),
(4, 'Nota Dinas', '2025-09-08 06:34:48', '2025-09-08 06:34:48'),
(5, 'Pemberitahuan', '2025-09-08 06:34:48', '2025-09-08 06:34:48'),
(6, 'Undangan', '2025-09-08 06:35:55', '2025-09-08 06:35:55'),
(7, 'Pengumuman', '2025-09-08 06:35:55', '2025-09-08 06:35:55'),
(8, 'Nota Dinas', '2025-09-08 06:35:55', '2025-09-08 06:35:55'),
(9, 'Pemberitahuan', '2025-09-08 06:35:55', '2025-09-08 06:35:55');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_09_08_112850_create_kategoris_table', 2),
(5, '2025_09_08_112850_create_surats_table', 2),
(6, '2025_09_08_122151_add_user_id_to_surats_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('bVd32B9cCGfAH3smnT3swlAhxgo39e6ui7uNR2B7', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlRvOFZ0cXJPRUY5ekJCbENzeVNRVmhNNE5mUHJLRWJpTGc1aVF0NCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9sb2dpbiI7fX0=', 1757338981),
('maLjFytAzTq4OnSlhSmv1ecHjqUjVsqSJV1Jf63W', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiWFdyZ3VLZmNZWE8wQzFuaVJZM09kTGtaNnQ0TExnN05xcUFjUGxuYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkcEVsbXhuNHg5QzlxcVhCYjZ5c3NsZW9TcGZPUm4ueGZ2ZVhYeDk2emFHUnc4WWRObFp6OG0iO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1757331893),
('mYhlqyfvyCFNTJW5Z0Jn0k0QYYLbTmHre1w1x4g3', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiOUNydktQOHpCSThyVFRCSXJib2ptT05KcDNmVFZYTWp6Um9XMm53OSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRwRWxteG40eDlDOXFxWEJiNnlzc2xlb1NwZk9Sbi54ZnZlWFh4OTZ6YUdSdzhZZE5sWno4bSI7fQ==', 1757336364);

-- --------------------------------------------------------

--
-- Table structure for table `surats`
--

CREATE TABLE `surats` (
  `id` bigint UNSIGNED NOT NULL,
  `nomor_surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_pdf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surats`
--

INSERT INTO `surats` (`id`, `nomor_surat`, `kategori_id`, `judul`, `file_pdf`, `created_at`, `updated_at`, `user_id`) VALUES
(4, 'SK/2614/48/2025', 9, 'Animi laborum sint.', 'surat/825ebe81-5665-3e6f-a0dc-93d29fc415c3.pdf', '2025-09-08 06:35:55', '2025-09-08 06:35:55', 1),
(5, 'SK/7983/11/2025', 5, 'Dolore at quia quisquam.', 'surat/d6837a65-9c35-32b2-85bf-a376b4786cd1.pdf', '2025-09-08 06:35:55', '2025-09-08 06:35:55', 2),
(6, 'SK/7943/04/2025', 3, 'Quasi ut fuga.', 'surat/d3cc450d-0150-3242-a1b5-7ccaa3194d03.pdf', '2025-09-08 06:35:55', '2025-09-08 06:35:55', 1),
(7, 'SK/5516/61/2025', 3, 'Dolor ipsa.', 'surat/35ad7aa7-00da-3892-8800-e1fde27390a6.pdf', '2025-09-08 06:35:55', '2025-09-08 06:35:55', 2),
(8, 'SK/1810/63/2025', 1, 'Rerum quo aperiam.', 'surat/1830dc6e-04f6-32d5-8859-5df3b06d142b.pdf', '2025-09-08 06:35:55', '2025-09-08 06:35:55', 2),
(9, 'SK/6881/14/2025', 2, 'Reiciendis iure labore maiores.', 'surat/feeae820-ddcc-367d-9dcb-a787648b3235.pdf', '2025-09-08 06:35:55', '2025-09-08 06:35:55', 2),
(10, 'SK/3272/24/2025', 1, 'Non quo quis.', 'surat/fb4843e4-509c-3188-9243-762fd4ef503e.pdf', '2025-09-08 06:35:55', '2025-09-08 06:35:55', 1),
(11, 'SK/0961/99/2025', 7, 'Tenetur repellat et.', 'surat/b97aa130-b908-3d2b-aac1-7d860c2589a9.pdf', '2025-09-08 06:35:55', '2025-09-08 06:35:55', 1),
(12, 'SK/5816/52/2025', 2, 'Ut ex.', 'surat/0dc9ab1b-eece-3b47-af2f-524c65b68ad9.pdf', '2025-09-08 06:35:55', '2025-09-08 06:35:55', 1),
(13, 'SK/9386/94/2025', 4, 'Porro perspiciatis sint.', 'surat/ed0681ab-9afc-330c-8b94-97bc5ee29d10.pdf', '2025-09-08 06:35:55', '2025-09-08 06:35:55', 2),
(14, 'SK/7894/41/2025', 3, 'Repellendus laboriosam eum et.', 'surat/ecbd2e44-e846-321c-842c-2c868403ea87.pdf', '2025-09-08 06:35:55', '2025-09-08 06:35:55', 2),
(15, 'SK/7014/28/2025', 4, 'Harum vel quibusdam.', 'surat/ff376464-2be2-33bd-9d58-3846239ada7b.pdf', '2025-09-08 06:35:55', '2025-09-08 06:35:55', 2),
(16, 'SK/8997/60/2025', 6, 'Quam ipsum explicabo.', 'surat/d1ef186e-f011-3b8c-97a7-f9d35b1759ae.pdf', '2025-09-08 06:35:55', '2025-09-08 06:35:55', 2),
(17, 'SK/4288/09/2025', 1, 'Facere perspiciatis fuga unde.', 'surat/8c5b29c3-674a-36bb-b59d-0eccd3150804.pdf', '2025-09-08 06:35:55', '2025-09-08 06:35:55', 2),
(18, 'SK/7671/53/2025', 4, 'Tempore est alias.', 'surat/a165bbf4-d135-33c1-8ffc-8238a70100ef.pdf', '2025-09-08 06:35:55', '2025-09-08 06:35:55', 2),
(19, 'SK/3658/51/2025', 4, 'Ipsum atque vitae.', 'surat/e8fc3d3a-e3d8-31bd-9df7-41b6fb8c2c04.pdf', '2025-09-08 06:35:55', '2025-09-08 06:35:55', 2),
(20, 'SK/2828/45/2025', 6, 'Optio non consequatur.', 'surat/e738868a-5484-3843-bd1c-f02f01c78b12.pdf', '2025-09-08 06:35:55', '2025-09-08 06:35:55', 2),
(21, 'SK/8602/91/2025', 9, 'Exercitationem assumenda repellat rerum.', 'surat/a94cb63f-b38a-33d2-891a-49fcbcaafb71.pdf', '2025-09-08 06:35:55', '2025-09-08 06:35:55', 2),
(22, 'SK/2512/29/2025', 7, 'Illo aperiam nulla eum.', 'surat/4659046d-b450-3660-aa57-baca06383319.pdf', '2025-09-08 06:35:55', '2025-09-08 06:35:55', 1),
(23, 'SK/4846/61/2025', 1, 'Iste repellendus deleniti ut.', 'surat/7ccf478f-1fd8-3858-82c1-cb076a1e5119.pdf', '2025-09-08 06:35:55', '2025-09-08 06:35:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(1, 'admin', 'admin@gmail.com', NULL, '$2y$12$pElmxn4x9C9qqXBb6yssleoSpfORn.xfveXXx96zaGRw8YdNlZz8m', NULL, '2025-09-08 04:25:38', '2025-09-08 04:25:38'),
(2, 'yoki', 'yokirahmada@gmail.com', NULL, '$2y$12$WiwVmiKocqa6FBiCWQIig.ybmUjqhf9eoVOvftYotPu55X47Plfz2', NULL, '2025-09-08 05:47:39', '2025-09-08 05:47:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `surats`
--
ALTER TABLE `surats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surats_kategori_id_foreign` (`kategori_id`),
  ADD KEY `surats_user_id_foreign` (`user_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `surats`
--
ALTER TABLE `surats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `surats`
--
ALTER TABLE `surats`
  ADD CONSTRAINT `surats_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategoris` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `surats_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
