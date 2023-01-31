-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jan 2023 pada 14.32
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ppob`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_03_125517_create_table_nominal', 1),
(5, '2020_10_03_125541_create_table_pulsa', 1),
(6, '2020_10_03_125555_create_table_kategori', 1),
(7, '2020_10_03_125611_create_table_data', 1),
(8, '2020_10_03_125622_create_table_paket_data', 1),
(9, '2020_10_03_125637_create_table_pln', 1),
(10, '2020_10_03_125655_create_table_nominal_pln', 1),
(11, '2020_10_03_125706_create_table_informasi', 1),
(12, '2020_10_03_133410_create_table_provider', 1),
(13, '2020_10_04_054139_create_table_pln_customer', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_kategori`
--

CREATE TABLE `table_kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_nominal_data`
--

CREATE TABLE `table_nominal_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_provider` int(11) NOT NULL,
  `nama_paket` varchar(255) NOT NULL,
  `fixed_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `table_nominal_data`
--

INSERT INTO `table_nominal_data` (`id`, `id_provider`, `nama_paket`, `fixed_price`, `created_at`, `updated_at`) VALUES
(1, 2, 'Paket 25 GB 1 Bulan', 100000, '2020-10-04 02:56:45', '2020-10-04 02:56:45'),
(2, 1, '1 GB 1 minggu', 20000, '2020-10-04 02:56:45', '2020-10-04 02:56:45'),
(3, 3, '1.5 GB 1 Minggu', 10000, '2020-10-04 03:33:18', '2020-10-04 03:33:18'),
(4, 2, '3 GB 1 Bulan Unlimited Social Media', 25000, '2020-10-04 03:33:18', '2020-10-04 03:33:18'),
(7, 1, '3 GB 1 Bulan', 25000, '2020-10-04 04:48:11', '2020-10-04 04:48:11'),
(8, 1, '7 GB 1 Bulan', 50000, '2020-10-04 04:48:11', '2020-10-04 04:48:11'),
(9, 2, '10 GB & Unlimited Social Media', 50000, '2020-10-04 04:50:54', '2020-10-04 04:50:54'),
(10, 5, 'Paket Unlimited 1 Bulan', 120000, '2023-01-20 01:54:19', '2023-01-22 01:54:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_nominal_pln`
--

CREATE TABLE `table_nominal_pln` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paket_pln` varchar(255) NOT NULL,
  `fixed_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `table_nominal_pln`
--

INSERT INTO `table_nominal_pln` (`id`, `paket_pln`, `fixed_price`, `created_at`, `updated_at`) VALUES
(1, '20Rb', 20000, '2020-10-04 05:29:41', '2020-10-04 05:29:41'),
(2, '50Rb', 50000, '2020-10-04 05:29:41', '2020-10-04 05:29:41'),
(3, '100Rb', 100000, '2020-10-04 05:29:41', '2020-10-04 05:29:41'),
(4, '200Rb', 200000, '2020-10-04 05:29:41', '2020-10-04 05:29:41'),
(5, '500Rb', 5004500, '2020-10-04 05:29:41', '2020-10-04 05:29:41'),
(6, '1Jt', 1005000, '2020-10-04 05:29:41', '2020-10-04 05:29:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_nominal_pulsa`
--

CREATE TABLE `table_nominal_pulsa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nominal` int(11) NOT NULL,
  `fixed_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `table_nominal_pulsa`
--

INSERT INTO `table_nominal_pulsa` (`id`, `nominal`, `fixed_price`, `created_at`, `updated_at`) VALUES
(1, 5000, 6500, '2020-10-03 16:24:19', '2020-10-03 16:24:19'),
(2, 10000, 11500, '2020-10-03 16:24:19', '2020-10-03 16:24:19'),
(3, 20000, 21500, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 15000, 16500, '2020-10-03 14:51:55', '2020-10-03 14:51:55'),
(5, 50000, 51000, '2020-10-03 16:52:41', '2020-10-03 16:52:41'),
(7, 100000, 101000, '2023-01-21 01:50:38', '2023-01-22 01:50:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_paket_data`
--

CREATE TABLE `table_paket_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomor_hp` varchar(255) NOT NULL,
  `id_paket_data` varchar(255) NOT NULL,
  `id_provider` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `table_paket_data`
--

INSERT INTO `table_paket_data` (`id`, `nomor_hp`, `id_paket_data`, `id_provider`, `price`, `created_at`, `updated_at`) VALUES
(1, '085111222333', '1', '2', '100000', '2020-10-04 04:17:44', '2020-10-04 04:17:44'),
(2, '083555444777', '3', '3', '10000', '2020-10-04 04:51:50', '2020-10-04 04:51:50'),
(3, '087555444111', '3', '3', '10000', '2020-10-04 04:53:59', '2020-10-04 04:53:59'),
(4, '085654785215', '3', '3', '10000', '2020-10-04 04:54:25', '2020-10-04 04:54:25'),
(5, '085654785215', '1', '3', '10000', '2020-10-04 04:56:44', '2020-10-04 04:56:44'),
(6, '085888999777', '7', '3', '10000', '2020-10-04 04:58:15', '2020-10-04 04:58:15'),
(7, '085654785215', '1', '3', '10000', '2020-10-04 05:01:16', '2020-10-04 05:01:16'),
(8, '08565478544', '9', '3', '50000', '2020-10-04 05:06:29', '2020-10-04 05:06:29'),
(9, '085111222333', '9', '3', '50000', '2020-10-04 08:20:36', '2020-10-04 08:20:36'),
(10, '08885082933', '3', '3', '10000', '2023-01-20 09:11:32', '2023-01-20 09:11:32'),
(11, '08885082933', '8', '3', '50000', '2023-01-20 09:11:54', '2023-01-20 09:11:54'),
(12, '08885082933', '10', '5', '120000', '2023-01-21 08:33:04', '2023-01-21 08:33:04'),
(13, '08885082933', '10', '5', '120000', '2023-01-29 11:47:33', '2023-01-29 11:47:33'),
(14, '08885082933', '10', '5', '120000', '2023-01-29 13:29:42', '2023-01-29 13:29:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_pln`
--

CREATE TABLE `table_pln` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_customer` int(30) NOT NULL,
  `id_paket_pln` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `informasi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `table_pln`
--

INSERT INTO `table_pln` (`id`, `id_customer`, `id_paket_pln`, `price`, `informasi`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 20000, 'pembayaran masuk 1 jam setelah checkout!', '2020-10-04 06:24:00', '2020-10-04 06:24:00'),
(2, 2, 2, 50000, 'pembayaran masuk 1 jam setelah checkout!', '2020-10-04 06:30:42', '2020-10-04 06:30:42'),
(3, 1, 4, 200000, 'pembayaran masuk 1 jam setelah checkout!', '2020-10-04 06:39:25', '2020-10-04 06:39:25'),
(4, 6, 2, 50000, 'pembayaran masuk 1 jam setelah checkout!', '2020-10-04 08:21:53', '2020-10-04 08:21:53'),
(5, 7, 4, 200000, '250000', '2023-01-20 09:13:38', '2023-01-20 09:13:38'),
(6, 8, 6, 1005000, 'Pembayaran token pulsa', '2023-01-21 08:35:30', '2023-01-21 08:35:30'),
(7, 7, 6, 1005000, 'TEST', '2023-01-29 13:30:49', '2023-01-29 13:30:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_pln_customer`
--

CREATE TABLE `table_pln_customer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `id_pelanggan` varchar(255) NOT NULL,
  `no_meteran` varchar(255) NOT NULL,
  `batas_daya` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `table_pln_customer`
--

INSERT INTO `table_pln_customer` (`id`, `nama`, `id_pelanggan`, `no_meteran`, `batas_daya`, `created_at`, `updated_at`) VALUES
(1, 'Andhika', '434234324234', '111212454', '400 VA', '2020-10-04 05:50:14', '2020-10-04 05:50:14'),
(7, 'Arfiyan', '112233', '223344', '1200 VA', '2023-01-20 09:12:52', '2023-01-20 09:12:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_provider`
--

CREATE TABLE `table_provider` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_provider` varchar(255) NOT NULL,
  `kode_provider` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `table_provider`
--

INSERT INTO `table_provider` (`id`, `nama_provider`, `kode_provider`, `created_at`, `updated_at`) VALUES
(1, 'Telkom', '007', '2020-10-03 16:17:48', '2020-10-03 16:17:48'),
(2, 'Indosat Oredooo', '001', '2020-10-03 16:17:48', '2020-10-03 16:17:48'),
(3, '3 Indonesia', '002', NULL, NULL),
(5, 'Smartfreen', '003', '2023-01-27 01:52:15', '2023-01-05 01:52:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_pulsa`
--

CREATE TABLE `table_pulsa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomor_hp` varchar(15) NOT NULL,
  `id_nominal` int(11) NOT NULL,
  `id_provider` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `table_pulsa`
--

INSERT INTO `table_pulsa` (`id`, `nomor_hp`, `id_nominal`, `id_provider`, `price`, `created_at`, `updated_at`) VALUES
(1, '0645645645654', 2, 1, 11500, '2020-10-03 17:04:57', '2020-10-03 17:04:57'),
(10, '085654785215', 2, 2, 11500, '2020-10-03 17:35:45', '2020-10-03 17:35:45'),
(11, '085654785215', 1, 2, 6500, '2020-10-03 17:38:50', '2020-10-03 17:38:50'),
(12, '085654785215', 2, 1, 11500, '2020-10-04 02:44:13', '2020-10-04 02:44:13'),
(13, '085888999777', 5, 2, 31000, '2020-10-04 03:52:29', '2020-10-04 03:52:29'),
(14, '08565478544', 5, 2, 31000, '2020-10-04 05:06:58', '2020-10-04 05:06:58'),
(15, '083555444777', 5, 3, 31000, '2020-10-04 05:07:24', '2020-10-04 05:07:24'),
(16, '085654785215', 2, 2, 11500, '2020-10-04 05:07:50', '2020-10-04 05:07:50'),
(17, '085654785215', 5, 2, 31000, '2020-10-04 08:16:05', '2020-10-04 08:16:05'),
(18, '085654785215', 2, 2, 11500, '2023-01-20 09:10:49', '2023-01-20 09:10:49'),
(19, '08885082933', 7, 5, 101000, '2023-01-21 08:31:59', '2023-01-21 08:31:59'),
(20, '08885082933', 7, 2, 101000, '2023-01-29 11:44:39', '2023-01-29 11:44:39'),
(21, '08885082933', 5, 1, 51000, '2023-01-29 13:29:23', '2023-01-29 13:29:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `saldo` int(11) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `saldo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', NULL, '$2y$10$2anSO8sPAbKuzg3kVazG9.TKEF82gJN96uA4qH0xTbbj4izkx0LP.', 13824000, NULL, NULL, '2023-01-29 13:30:49'),
(4, 'Arfiyan', 'arfieyan1903@gmail.com', NULL, '$2y$10$rQGqF5S.73StqD24zWkMmeOVanV5fvcHeGjiNAi50wa8zibdxSRO6', 13824000, 'qySojfQnKvxAxzptbffiIkYUDgP1v9YojRv27nO2YlIhuQRnAGUiZLcYLg4o', '2023-01-21 01:12:25', '2023-01-29 13:30:49'),
(6, 'admin', 'admin@gmail.com', NULL, '$2y$10$Mt1ptvjD60XIJJyfBa5sfOfY1fVgLPXitICMkpPC8T7gva.zaJ2Na', 10000000, '7xPKSzeSYwU8qJyGFnguKNToOicW4t4ZLfMBNIXa4OWhoBmOGMzmJtVFzSsL', '2023-01-29 11:42:36', '2023-01-29 13:30:49');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `table_kategori`
--
ALTER TABLE `table_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `table_nominal_data`
--
ALTER TABLE `table_nominal_data`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `table_nominal_pln`
--
ALTER TABLE `table_nominal_pln`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `table_nominal_pulsa`
--
ALTER TABLE `table_nominal_pulsa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `table_paket_data`
--
ALTER TABLE `table_paket_data`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `table_pln`
--
ALTER TABLE `table_pln`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `table_pln_customer`
--
ALTER TABLE `table_pln_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `table_provider`
--
ALTER TABLE `table_provider`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `table_pulsa`
--
ALTER TABLE `table_pulsa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `table_kategori`
--
ALTER TABLE `table_kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `table_nominal_data`
--
ALTER TABLE `table_nominal_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `table_nominal_pln`
--
ALTER TABLE `table_nominal_pln`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `table_nominal_pulsa`
--
ALTER TABLE `table_nominal_pulsa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `table_paket_data`
--
ALTER TABLE `table_paket_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `table_pln`
--
ALTER TABLE `table_pln`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `table_pln_customer`
--
ALTER TABLE `table_pln_customer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `table_provider`
--
ALTER TABLE `table_provider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `table_pulsa`
--
ALTER TABLE `table_pulsa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
