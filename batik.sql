-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2022 at 02:28 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `batik`
--

-- --------------------------------------------------------

--
-- Table structure for table `alamat`
--

CREATE TABLE `alamat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cities_id` int(10) UNSIGNED NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `kode_pos` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alamat`
--

INSERT INTO `alamat` (`id`, `cities_id`, `detail`, `user_id`, `kode_pos`, `created_at`, `updated_at`) VALUES
(1, 323, 'Jl. Nasution No.2B', 5, 0, '2022-07-08 08:08:14', '2022-07-08 08:08:14'),
(2, 64, 'Jln. Basmol Raya No. 836, Payakumbuh 37432, Riau', 7, 0, '2022-07-15 00:02:14', '2022-07-15 00:02:14'),
(3, 345, 'Ds. Mojoasri Rt 08 Rw 01 Kec. Mojogedang Kab. Mojokerto  Jl. Asri indah No.2 Mojolayu', 9, 0, '2022-07-31 22:47:56', '2022-07-31 22:47:56'),
(4, 323, 'Desa Bulu kerto no.23 Jl. Kemenangan', 10, 0, '2022-07-31 23:26:31', '2022-07-31 23:26:31'),
(5, 345, 'Desa Bulu kerto no.23 Jl. Kemenangan', 11, 0, '2022-07-31 23:35:13', '2022-07-31 23:35:13'),
(6, 335, 'Jl.Rutas, RT.11/RW03, Desa Kayu Bawang, Kecamatan Barabai, Kabupaten Hulu Sungai Tengah, Kalimantan Selatan, 71315', 1, 0, '2022-08-05 15:25:08', '2022-08-05 15:25:08'),
(7, 103, 'ugkugkjgkgkgkjgkjgkjgkjgkjg', 12, 0, '2022-08-05 15:51:35', '2022-08-05 15:57:35');

-- --------------------------------------------------------

--
-- Table structure for table `alamat_toko`
--

CREATE TABLE `alamat_toko` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` int(11) NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alamat_toko`
--

INSERT INTO `alamat_toko` (`id`, `city_id`, `detail`, `created_at`, `updated_at`) VALUES
(1, 385, 'Simbatan Wetan, Simbatan, Kec. Nguntoronadi, Kabupaten Magetan, Jawa Timur 63383', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Original Ciprat', NULL, NULL),
(2, 'Lurikan', NULL, NULL),
(3, 'Meteor', NULL, NULL),
(4, 'Gepyokan', NULL, NULL),
(5, 'Kombinasi Canting & Ciprat 	', NULL, NULL),
(6, 'Jumputan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cekongkir`
--

CREATE TABLE `cekongkir` (
  `id` int(10) UNSIGNED NOT NULL,
  `province_id` bigint(20) UNSIGNED NOT NULL,
  `nama_province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `nama_cities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_couriers` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(10) UNSIGNED NOT NULL,
  `province_id` int(10) UNSIGNED NOT NULL,
  `nama_cities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `province_id`, `nama_cities`, `created_at`, `updated_at`) VALUES
(11, 1, 'Banda Aceh', NULL, NULL),
(12, 1, 'Langsa', NULL, NULL),
(13, 1, 'Lhokseumawe', NULL, NULL),
(14, 1, 'Sabang', NULL, NULL),
(15, 5, 'Sungai Penuh', NULL, NULL),
(16, 6, 'Lubuklinggau', NULL, NULL),
(17, 7, 'Bengkulu', NULL, NULL),
(18, 8, 'Bandar Lampung', NULL, NULL),
(19, 9, 'Pangkal Pinang', NULL, NULL),
(21, 10, 'Batam', NULL, NULL),
(27, 11, 'Jakarta Utara', NULL, NULL),
(28, 11, 'Jakarta Timur', NULL, NULL),
(29, 11, 'Jakarta Selatan', NULL, NULL),
(30, 11, 'Jakarta Pusat', NULL, NULL),
(31, 11, 'Jakarta Barat', NULL, NULL),
(32, 12, 'Bandung', NULL, NULL),
(33, 13, 'Magelang', NULL, NULL),
(34, 14, 'Yogyakarta', NULL, NULL),
(35, 15, 'Batu', NULL, NULL),
(36, 16, 'Cilegon', NULL, NULL),
(37, 16, 'Serang', NULL, NULL),
(38, 16, 'Tangerang Selatan', NULL, NULL),
(39, 16, 'Tangerang', NULL, NULL),
(51, 17, 'Denpasar', NULL, NULL),
(52, 18, 'Bima', NULL, NULL),
(53, 19, 'Kupang', NULL, NULL),
(61, 20, 'Pontianak', NULL, NULL),
(62, 21, 'Palangkaraya', NULL, NULL),
(63, 22, 'Banjarbaru', NULL, NULL),
(64, 23, 'Balikpapan', NULL, NULL),
(65, 24, 'Tarakan', NULL, NULL),
(71, 25, 'Bitung', NULL, NULL),
(72, 26, 'Palu', NULL, NULL),
(73, 27, 'Makassar', NULL, NULL),
(74, 28, 'Baubau', NULL, NULL),
(75, 29, 'Gorontalo', NULL, NULL),
(81, 31, 'Ambon', NULL, NULL),
(82, 32, 'Ternate', NULL, NULL),
(91, 33, 'Jayapura', NULL, NULL),
(92, 34, 'Sorong', NULL, NULL),
(102, 2, 'Binjai', NULL, NULL),
(103, 3, 'Bukittinggi', NULL, NULL),
(104, 4, 'Dumai', NULL, NULL),
(105, 1, 'Subulussalam', NULL, NULL),
(106, 6, 'Pagar Alam', NULL, NULL),
(108, 8, 'Metro', NULL, NULL),
(112, 2, 'Gunungsitoli', NULL, NULL),
(113, 3, 'Padang', NULL, NULL),
(114, 4, 'Pekanbaru', NULL, NULL),
(115, 5, 'Jambi', NULL, NULL),
(116, 6, 'Palembang', NULL, NULL),
(122, 2, 'Medan', NULL, NULL),
(123, 3, 'Padang Panjang', NULL, NULL),
(126, 6, 'Prabumulih', NULL, NULL),
(132, 2, 'Padang Sidempuan', NULL, NULL),
(133, 3, 'Pariaman', NULL, NULL),
(136, 6, 'Sekayu', NULL, NULL),
(142, 2, 'Pematangsiantar', NULL, NULL),
(143, 3, 'Sawahlunto', NULL, NULL),
(152, 2, 'Sibolga', NULL, NULL),
(153, 3, 'Solok', NULL, NULL),
(162, 2, 'Tanjungbalai', NULL, NULL),
(172, 2, 'Tebing Tinggi', NULL, NULL),
(201, 10, 'Tanjungpinang', NULL, NULL),
(302, 12, 'Bekasi', NULL, NULL),
(303, 13, 'Pekalongan', NULL, NULL),
(305, 15, 'Blitar', NULL, NULL),
(312, 12, 'Bogor', NULL, NULL),
(313, 13, 'Salatiga', NULL, NULL),
(315, 15, 'Kediri', NULL, NULL),
(322, 12, 'Cimahi', NULL, NULL),
(323, 13, 'Semarang', NULL, NULL),
(325, 15, 'Madiun', NULL, NULL),
(332, 12, 'Cirebon', NULL, NULL),
(333, 13, 'Surakarta', NULL, NULL),
(342, 12, 'Depok', NULL, NULL),
(343, 13, 'Tegal', NULL, NULL),
(345, 15, 'Mojokerto', NULL, NULL),
(352, 12, 'Sukabumi', NULL, NULL),
(355, 15, 'Pasuruan', NULL, NULL),
(362, 12, 'Tasikmalaya', NULL, NULL),
(365, 15, 'Probolinggo', NULL, NULL),
(372, 12, 'Banjar', NULL, NULL),
(375, 15, 'Surabaya', NULL, NULL),
(385, 15, 'Magetan', NULL, NULL),
(395, 15, 'Malang', NULL, NULL),
(502, 18, 'Mataram', NULL, NULL),
(601, 20, 'Singkawang', NULL, NULL),
(603, 22, 'Banjarmasin', NULL, NULL),
(604, 23, 'Bontang', NULL, NULL),
(614, 23, 'Samarinda', NULL, NULL),
(701, 25, 'Kotamobagu', NULL, NULL),
(703, 27, 'Palopo', NULL, NULL),
(704, 28, 'Kendari', NULL, NULL),
(711, 25, 'Manado', NULL, NULL),
(713, 27, 'Parepare', NULL, NULL),
(721, 25, 'Tomohon', NULL, NULL),
(801, 31, 'Tual', NULL, NULL),
(802, 32, 'Tidoro Kepulauan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `couriers`
--

CREATE TABLE `couriers` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_couriers` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `couriers`
--

INSERT INTO `couriers` (`id`, `code`, `nama_couriers`, `created_at`, `updated_at`) VALUES
(1, 'jne', 'JNE', NULL, NULL),
(2, 'pos', 'POS', NULL, NULL),
(3, 'tiki', 'TIKI', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detail_order`
--

CREATE TABLE `detail_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_order`
--

INSERT INTO `detail_order` (`id`, `order_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 12, 1, '2020-12-18 12:27:06', '2020-12-18 12:27:06'),
(2, 2, 3, 2, '2020-12-18 12:31:11', '2020-12-18 12:31:11'),
(3, 3, 10, 1, '2020-12-18 18:08:52', '2020-12-18 18:08:52'),
(4, 4, 12, 1, '2020-12-18 23:50:11', '2020-12-18 23:50:11'),
(5, 5, 4, 1, '2020-12-19 00:06:52', '2020-12-19 00:06:52'),
(6, 6, 2, 1, '2020-12-19 08:46:10', '2020-12-19 08:46:10'),
(7, 6, 12, 1, '2020-12-19 08:46:10', '2020-12-19 08:46:10'),
(8, 7, 5, 2, '2020-12-19 20:21:39', '2020-12-19 20:21:39'),
(9, 8, 10, 1, '2020-12-20 03:59:42', '2020-12-20 03:59:42'),
(10, 8, 8, 2, '2020-12-20 03:59:42', '2020-12-20 03:59:42'),
(11, 9, 10, 2, '2020-12-20 04:26:17', '2020-12-20 04:26:17'),
(12, 10, 3, 1, '2020-12-20 08:39:37', '2020-12-20 08:39:37'),
(13, 11, 3, 1, '2022-06-05 15:48:07', '2022-06-05 15:48:07'),
(14, 12, 12, 1, '2022-06-05 16:00:06', '2022-06-05 16:00:06'),
(15, 13, 1, 1, '2022-06-05 18:25:29', '2022-06-05 18:25:29'),
(16, 14, 3, 1, '2022-06-05 18:44:01', '2022-06-05 18:44:01'),
(17, 15, 2, 2, '2022-06-26 09:54:12', '2022-06-26 09:54:12'),
(18, 16, 12, 1, '2022-06-28 14:07:04', '2022-06-28 14:07:04'),
(19, 16, 1, 8, '2022-06-28 14:07:04', '2022-06-28 14:07:04'),
(20, 17, 8, 1, '2022-06-28 17:50:25', '2022-06-28 17:50:25'),
(21, 18, 10, 2, '2022-06-30 03:55:58', '2022-06-30 03:55:58'),
(22, 19, 9, 4, '2022-07-02 05:52:05', '2022-07-02 05:52:05'),
(23, 20, 9, 5, '2022-07-02 06:08:07', '2022-07-02 06:08:07'),
(24, 21, 9, 2, '2022-07-02 06:15:17', '2022-07-02 06:15:17'),
(25, 22, 1, 1, '2022-07-02 06:50:59', '2022-07-02 06:50:59'),
(26, 23, 6, 1, '2022-07-02 07:13:58', '2022-07-02 07:13:58'),
(27, 24, 3, 1, '2022-07-02 08:27:22', '2022-07-02 08:27:22'),
(28, 25, 3, 1, '2022-07-02 09:22:07', '2022-07-02 09:22:07'),
(29, 26, 2, 1, '2022-07-02 09:39:01', '2022-07-02 09:39:01'),
(30, 27, 2, 1, '2022-07-02 09:46:08', '2022-07-02 09:46:08'),
(31, 28, 6, 1, '2022-07-02 09:54:27', '2022-07-02 09:54:27'),
(32, 29, 7, 1, '2022-07-02 10:34:24', '2022-07-02 10:34:24'),
(33, 30, 4, 1, '2022-07-02 10:45:43', '2022-07-02 10:45:43'),
(34, 31, 5, 1, '2022-07-02 10:46:41', '2022-07-02 10:46:41'),
(35, 32, 8, 1, '2022-07-02 10:56:46', '2022-07-02 10:56:46'),
(36, 33, 7, 1, '2022-07-02 11:30:26', '2022-07-02 11:30:26'),
(37, 34, 11, 1, '2022-07-02 11:32:06', '2022-07-02 11:32:06'),
(38, 35, 1, 1, '2022-07-02 11:45:42', '2022-07-02 11:45:42'),
(39, 36, 1, 1, '2022-07-02 17:52:16', '2022-07-02 17:52:16'),
(40, 37, 3, 1, '2022-07-02 19:14:18', '2022-07-02 19:14:18'),
(41, 38, 12, 4, '2022-07-15 08:47:30', '2022-07-15 08:47:30'),
(42, 38, 4, 3, '2022-07-15 08:47:30', '2022-07-15 08:47:30'),
(43, 39, 4, 3, '2022-07-15 09:32:08', '2022-07-15 09:32:08'),
(44, 39, 12, 5, '2022-07-15 09:32:08', '2022-07-15 09:32:08'),
(45, 40, 4, 2, '2022-07-15 20:03:28', '2022-07-15 20:03:28'),
(46, 41, 4, 1, '2022-07-15 21:48:52', '2022-07-15 21:48:52'),
(47, 42, 2, 1, '2022-07-17 00:57:23', '2022-07-17 00:57:23'),
(48, 43, 3, 1, '2022-07-17 17:02:35', '2022-07-17 17:02:35'),
(49, 44, 1, 1, '2022-07-31 22:48:51', '2022-07-31 22:48:51'),
(50, 45, 2, 1, '2022-07-31 23:36:37', '2022-07-31 23:36:37'),
(51, 46, 3, 1, '2022-08-04 00:17:38', '2022-08-04 00:17:38'),
(52, 47, 2, 1, '2022-08-05 16:00:05', '2022-08-05 16:00:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id`, `user_id`, `products_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 5, 7, 1, '2022-07-08 07:48:31', '2022-07-08 07:48:31'),
(3, 10, 2, 1, '2022-07-31 23:24:34', '2022-07-31 23:24:34');

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2022_05_17_225843_create_provinces_table', 1),
(4, '2022_05_17_231243_create_cities_table', 1),
(5, '2022_05_17_231410_create_alamat_toko_table', 1),
(6, '2022_05_17_231811_create_keranjang_table', 1),
(7, '2022_05_17_232123_create_rekening_table', 1),
(8, '2022_05_17_232319_create_status_order_table', 1),
(9, '2022_05_17_232419_create_detail_order', 1),
(10, '2022_05_17_232503_create_order_table', 2),
(11, '2022_05_17_232614_create_alamat_tables', 3),
(12, '2022_05_17_232704_create_products_tables', 3),
(13, '2022_05_17_232818_create_categories_tables', 3),
(14, '2022_05_17_232918_create_couriers_table', 3),
(15, '2022_05_19_144518_add_pesan_to_order', 3),
(16, '2022_05_19_145455_add_bukti_telepon_to_order', 3),
(17, '2022_05_19_145714_add_keterangan_to_order', 3),
(18, '2022_05_19_145841_add_biaya_cod_to_order', 3),
(19, '2022_05_19_145950_add_stok_to_product', 3),
(20, '2022_05_21_150210_location_cek_ongkir', 3),
(21, '2022_06_18_000336_create_testimony_customers_table', 4),
(22, '2022_06_18_040013_create_posts_table', 5),
(23, '2022_07_07_041324_create_users_table', 5),
(24, '2022_07_07_041749_modif_table_users', 5),
(29, '2022_07_15_231913_create_review_table', 6),
(31, '2022_07_18_021418_create_response_review_table', 7),
(32, '2022_07_18_222253_add_pengrajin_column_products_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` int(11) NOT NULL,
  `no_resi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_order_id` bigint(20) UNSIGNED NOT NULL,
  `metode_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ongkir` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `biaya_cod` int(11) NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pesan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `invoice`, `user_id`, `subtotal`, `no_resi`, `status_order_id`, `metode_pembayaran`, `ongkir`, `created_at`, `updated_at`, `biaya_cod`, `no_hp`, `bukti_pembayaran`, `pesan`) VALUES
(44, 'ALV202208010548', 9, 513000, 'V345678', 6, 'trf', 63000, '2022-07-31 22:48:50', '2022-07-31 23:11:02', 0, '081828364728', 'buktibayar/NRwv07cUL9yfTLkzWAlTffhSWxqHMjyOxRsdVDAf.jpg', 'Warna Biru Langit'),
(45, 'ALV202208010635', 11, 233000, '120040042107018', 6, 'trf', 63000, '2022-07-31 23:36:37', '2022-08-01 00:06:22', 0, '0853657899', 'buktibayar/EbkUW8vla31JQuNA3EKlV9vGXfZVOheu70tx0d2w.jpg', 'Warna Merah hati'),
(46, 'ALV202208040717', 9, 238000, 'V56899006', 6, 'trf', 63000, '2022-08-04 00:17:36', '2022-08-04 00:29:48', 0, '087657654378996', 'buktibayar/guiACKqbVyTdLy6JoluPFg2D480zsD5w2sHyU0hy.png', 'warna biru laut'),
(47, 'ALV202208051057', 12, 209000, NULL, 1, 'cod', 39000, '2022-08-05 16:00:05', '2022-08-05 16:00:05', 10000, '02302032083', NULL, NULL);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weigth` int(11) NOT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stok` int(11) NOT NULL,
  `pengrajin_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `weigth`, `categories_id`, `created_at`, `updated_at`, `stok`, `pengrajin_id`) VALUES
(1, 'Batik Motif Lurik Emil', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\nBatik Ciprat motif lurik emil\r\nBahan   : semi sutra\r\nUkuran  :105cm x 220cm', 'imageproduct/Batik Motif Lurik Emil.jpeg', '450000', 500, 2, '2022-03-03 03:03:05', '2022-03-03 03:04:00', 7, 3),
(2, 'Batik Ciprat Dewi Sri', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\nBatik Ciprat Dewi Sri\r\nBahan   : katun primisima\r\nUkuran  :105cm x 220cm\r\n', 'imageproduct/Batik-Ciprat-Dewi-Sri.png', '170000', 500, 5, '2022-03-03 03:03:05', '2022-03-03 03:04:00', 5, 3),
(3, 'Batik Ciprat Motif Garuda', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\nBatik Ciprat motif garuda\r\nBahan   : katun primisima\r\nUkuran  :105cm x 220cm\r\n', 'imageproduct/Batik Motif Garuda.jpeg', '175000', 500, 5, '2022-03-03 03:03:05', '2022-03-03 03:04:00', 5, 3),
(4, 'Batik Pelangi Coret', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\n            Batik Ciprat motif pelangi coret\r\n            Bahan   : katun primisima\r\n            Ukuran  :105cm x 220cm', 'imageproduct/gambar 12.png', '160000', 500, 3, '2022-03-03 03:03:05', '2022-03-03 03:04:00', 11, 3),
(5, 'Batik Tumpul Jumput', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\n            Batik Ciprat motif batik Tumpul Jumput\r\n            Bahan   : katun primisima\r\n            Ukuran  :105cm x 220cm', 'imageproduct/gambar 13.png', '160000', 500, 5, '2022-03-03 03:03:05', '2022-03-03 03:04:00', 9, 3),
(6, 'Batik Gelombang Laut', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\n            Batik Ciprat motif Gelombang Laut\r\n            Bahan   : katun jepang\r\n            Ukuran  :105cm x 220cm', 'imageproduct/gambar 14.png', '160000', 500, 4, '2022-03-03 03:03:05', '2022-03-03 03:04:00', 11, 3),
(7, 'Batik Ciprat Morat - marit', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\n            Batik Ciprat motif morat - marit\r\n            Bahan   : katun Jepang\r\n            Ukuran  :105cm x 220cm', 'imageproduct/gambar 15.png', '200000', 500, 2, '2022-03-03 03:03:05', '2022-03-03 03:04:00', 12, 3),
(8, 'Batik Ciprat Bintang', 'Motif Ciprat Bintang\r\n            Primisima\r\n            Ukuran 2,15 x 1,10\r\n            Ready stok\r\n            160rb', 'imageproduct/UUe9D2qjZccC79yLKN52HUZx8FQYhnSBG0J7I4KG.jpg', '160000', 500, 2, '2022-03-03 03:03:05', '2022-07-31 23:43:26', 4, 3),
(9, 'Batik Ciprat Motif Dong Telo', 'Motif Dong Telo\r\n            Ready stok\r\n            Ukuran 2,15 x 1,10\r\n            Harga 200rb', 'imageproduct/batik_dongtelo.png', '200000', 500, 5, '2022-03-03 03:03:05', '2022-03-03 03:04:00', 12, 3),
(10, 'Batik Motif Kembang Krokot', 'Motif Terbaru Kembang Krokot\r\n            Ready stok\r\n            Ukuran 2,15 x 1,10\r\n            Harga 150rb', 'imageproduct/batik_kembangkrokot.png', '160000', 500, 5, '2022-03-03 03:03:05', '2022-03-03 03:04:00', 0, 3),
(11, 'Batik Motif Cahaya Pelangi', 'Motif cahaya pelangi\r\n            Primisima\r\n            Ukuran 2,15 x 1,10\r\n            Harga 160rb', 'imageproduct/cahaya_pelangi.png', '160000', 500, 1, '2022-03-03 03:03:05', '2022-03-03 03:04:00', 6, 8),
(12, 'Batik MOtif Ciprat Anyam', 'Motif ciprat anyam\r\n            Ukuran 2,15 x 1,10\r\n            Kain Primisima\r\n            Ready stok', 'imageproduct/ciprat_anyaman.png', '160000', 500, 2, '2022-03-04 03:04:05', '2022-03-05 04:02:00', 14, 8),
(14, 'Batik Ciprat Motif Balok', 'Motif ciprat balok\r\n            Primisima\r\n            Ukuran 2,15 x 1,10\r\n            Ready stok\r\n            Bisa reques warna', 'imageproduct/ciprat_balok.png', '160000', 500, 6, '2022-03-03 03:03:05', '2022-03-03 03:04:00', 0, 8),
(16, 'Batik Ciprat Rumput', 'Motif ciprat Rumput\r\n            Ukuran 2,15 x 1,10\r\n            Ready stok\r\n            150rb\r\n            Bisa reques warna', 'imageproduct/ciprat_rumput.png', '160000', 500, 1, '2022-03-03 03:03:05', '2022-03-03 03:04:00', 10, 8),
(17, 'Batik Ciprat Motif Tumpal Jumput', 'Motif Tumpal jumput berbagai warna ready \r\n            140rb\r\n            Bisa reques warna', 'imageproduct/tumpal_jumput.png', '140000', 500, 6, '2022-03-03 03:03:05', '2022-03-03 03:04:00', 5, 8),
(18, 'Batik Ciprat Motif Pelangi Tetes', 'Motif Pelangi Tetes berbagai warna ready stok\r\n            Bisa reques warna', 'imageproduct/pelangi_tetes.png', '160000', 500, 2, '2022-03-03 03:03:05', '2022-03-03 03:04:00', 20, 8),
(19, 'Batik Ciprat Motif Layangan', 'Motif Layangan\r\n            Ukuran 2,15 x 1,10\r\n            Primisima\r\n            Harga 160rb\r\n            Ready stok', 'imageproduct/motif_layangan.png', '160000', 500, 5, '2022-03-03 03:03:05', '2022-03-03 03:04:00', 15, 8),
(20, 'Batik Ciprat Motif Prapatan', 'Motif Prapatan\r\n            Harga 160rb\r\n            Ukuran 2,15 x 1,10\r\n            Warna bisa memilih\r\n            Ready stok kain primisima', 'imageproduct/motif_prapatan.png', '160000', 500, 6, '2022-03-03 03:03:05', '2022-03-03 03:04:00', 5, 8),
(21, 'Batik Ciprat Motif Rubik', 'Motif rubik\r\n            Ukuran 2,15 x 1,10\r\n            Primisima\r\n            Harga 160rb\r\n            Ready stok', 'imageproduct/motif_rubik.png', '160000', 500, 3, '2022-03-03 03:03:05', '2022-03-03 03:04:00', 8, 8),
(22, 'Batik Ciprat Motif Kotak', 'Motif kotak\r\n            Ready stok\r\n            Ukuran 2,15 x 1,10\r\n            Harga 160rb\r\n            Bisa reques warna', 'imageproduct/motif_kotak.png', '160000', 500, 3, '2022-03-03 03:03:05', '2022-03-03 03:04:00', 6, 8),
(23, 'Batik Ciprat Motif Bunga Matahari', 'Motif Bunga Matahari\r\n            Ready stok\r\n            Ukuran 2,15 x 1,10\r\n            Harga 150rb\r\n            Bisa reques warna', 'imageproduct/motif_bungamatahari.png', '160000', 500, 6, '2022-03-03 03:03:05', '2022-03-03 03:04:00', 21, 8),
(24, 'Batik Ciprat Motif Cendol Dawet', 'Motif Terbaru Cendol Dawet \r\n        Ready stok\r\n        Ukuran 2,15 x 1,10\r\n        Harga 150rb\r\n        Bisa reques warna', 'imageproduct/krokot.png', '160000', 500, 5, '2022-03-03 03:03:05', '2022-03-03 03:04:00', 15, 3),
(26, 'Batik Motif Kembang Krokot', 'Motif Terbaru Kembang Krokot\r\n        Ready stok\r\n        Ukuran 2,15 x 1,10\r\n        Harga 150rb', 'imageproduct/batik_kembangkrokot.png', '160000', 500, 5, '2022-03-03 03:03:05', '2022-03-03 03:04:00', 25, 3),
(27, 'Batik Motif Kembang Api', 'Motif KEMBANG API\r\nUkuran 2,15×1,10\r\nKatun primisima\r\n160rb', 'imageproduct/kembang_api.png', '160000', 500, 6, '2022-03-03 03:03:05', '2022-03-03 03:04:00', 0, 3),
(28, 'Batik Motif Ciprat Gasing', 'Motif ciprat gasing\r\nUkuran 2,15×1,10\r\nKain primisima\r\nHarga 160rb', 'imageproduct/gasing.png', '160000', 500, 6, '2022-03-03 03:03:05', '2022-03-03 03:04:00', 0, 8),
(29, 'Batik Ciprat Obat Nyamuk', 'bahan : primisima\r\nukuran: 2.15 x 1.10\r\npewarna: sintetis', 'imageproduct/gambar 2.jpg', '160000', 500, 3, '2022-03-03 02:03:05', '2022-03-03 02:04:00', 9, 3),
(30, 'Batik Ciprat Kecubung', 'bahan : primisima\r\nukuran: 2.15 x 1.10\r\npewarna: sintetis', 'imageproduct/gambar 1.jpg', '160000', 500, 5, '2022-03-03 02:03:05', '2022-03-03 02:04:00', 7, 3),
(31, 'Batik Ciprat Motif Bunga Tulip', 'Batik Ciprat motif bunga tulip\r\nBahan   : katun primisima\r\nUkuran :105cm x 220cm', 'imageproduct/gambar 7.png', '160000', 500, 5, '2022-03-03 02:03:05', '2022-03-03 02:04:00', 12, 3),
(32, 'Batik Ciprat Endhok Ceplok', 'Batik Ciprat motif bunga tulip\r\nBahan   : katun primisima\r\nUkuran :105cm x 220cm', 'imageproduct/Batik Ciprat Endhok Ceplok.jpeg', '160000', 500, 3, '2022-03-03 02:03:05', '2022-03-03 02:04:00', 13, 3),
(33, 'Batik Motif Ciprat Godong Randu', 'Batik Ciprat motif godong randu\r\nBahan   : katun primisima\r\nUkuran :105cm x 220cm', 'imageproduct/Batik Motif Ciprat Godong Randu.jpeg', '160000', 500, 4, '2022-03-03 02:03:05', '2022-03-03 02:04:00', 12, 3),
(34, 'Batik Ciprat Luhur', 'Batik Ciprat Langitan Motif luhur Ready Stok Dengan Harga 170000', 'imageproduct/zEucC2hZfiAvIquGth1W2lsQ2njEwCEFu0OE0ycq.jpg', '170000', 500, 2, '2022-07-31 23:41:41', '2022-07-31 23:41:41', 15, 3),
(35, 'Batik Motif Sisik Ikan', 'Batik Ciprat motif sisik ikan\r\nBahan   : katun primisima\r\nUkuran :105cm x 220cm', 'imageproduct/Batik Motif Sisik Ikan.jpeg', '160000', 500, 6, '2022-03-03 02:03:05', '2022-03-03 02:04:00', 10, 8),
(36, 'Batik Motif Saringgan', 'Batik Ciprat motif saringgan\r\nBahan   : katun primisima\r\nUkuran :105cm x 220cm', 'imageproduct/Batik Motif Saringgan.jpeg', '160000', 500, 5, '2022-03-03 02:03:05', '2022-03-03 02:04:00', 15, 3),
(37, 'Batik Motif Persegi', 'Batik Ciprat motif persegi\r\nBahan   : katun primisima\r\nUkuran :105cm x 220cm', 'imageproduct/Batik Motif Persegi.jpeg', '160000', 500, 2, '2022-03-03 02:03:05', '2022-03-03 02:04:00', 9, 8),
(38, 'Batik Motif Ondho', 'Batik Ciprat motif ondho\r\nBahan   : katun primisima\r\nUkuran :105cm x 220cm', 'imageproduct/Batik Motif Ondho.jpeg', '160000', 500, 2, '2022-03-03 02:03:05', '2022-03-03 02:04:00', 10, 3),
(39, 'Batik Motif Kupu Tumpal Gedek', 'Batik Ciprat motif kupu tumpal gedek\r\nBahan   : katun primisima\r\nUkuran :105cm x 220cm', 'imageproduct/Batik Motif Kupu Tumpal Gedek.jpeg', '175000', 500, 5, '2022-03-03 02:03:05', '2022-03-03 02:04:00', 11, 3),
(40, 'Batik Motif Kates & Angin', 'Batik Motif Kates & Angin\r\nBahan   : katun primisima\r\nUkuran :105cm x 220cm', 'imageproduct/Batik Motif Kates & Angin.jpeg', '175000', 500, 5, '2022-03-03 02:03:05', '2022-03-03 02:04:00', 14, 8),
(41, 'Batik Motif Godong Suruh', 'Batik Motif Godong Suruh\r\nBahan   : katun primisima\r\nUkuran :105cm x 220cm', 'imageproduct/Batik Motif Godong Suruh.jpeg', '160000', 500, 5, '2022-03-03 02:03:05', '2022-03-03 02:04:00', 13, 3),
(42, 'Batik Motif Godong So', 'Batik Motif Godong So\r\nBahan   : katun primisima\r\nUkuran :105cm x 220cm', 'imageproduct/Batik Motif Godong So.jpeg', '170000', 500, 5, '2022-03-03 02:03:05', '2022-03-03 02:04:00', 16, 8),
(43, 'Batik Motif Gepyok', 'Batik Motif Gepyok\r\nBahan   : katun primisima\r\nUkuran :105cm x 220cm', 'imageproduct/Batik Motif Gepyok.jpeg', '160000', 500, 4, '2022-03-03 02:03:05', '2022-03-03 02:04:00', 13, 8),
(44, 'Batik Motif Gepyok Tumpal', 'Batik Motif Gepyok Tumpal\r\nBahan   : katun primisima\r\nUkuran :105cm x 220cm', 'imageproduct/Batik Motif Gepyok Tumpal.jpeg', '170000', 500, 4, '2022-03-03 02:03:05', '2022-03-03 02:04:00', 12, 3),
(45, 'Batik Motif Gepyok Pelangi', 'Batik Motif Gepyok Pelangi\r\nBahan   : katun primisima\r\nUkuran :105cm x 220cm', 'imageproduct/Batik Motif Gepyok Pelangi.jpeg', '160000', 500, 4, '2022-03-03 02:03:05', '2022-03-03 02:04:00', 20, 8),
(46, 'Batik Motif Enting - Enting', 'Batik Motif Enting - Enting\r\nBahan   : katun primisima\r\nUkuran :105cm x 220cm', 'imageproduct/Batik Motif Enting - Enting.jpeg', '170000', 500, 3, '2022-03-03 02:03:05', '2022-03-03 02:04:00', 13, 8),
(47, 'Batik Motif Ekor Kuda Morat - Marit', 'Batik Motif Ekor Kuda Morat - Marit\r\nBahan   : katun primisima\r\nUkuran :105cm x 220cm', 'imageproduct/Batik Motif Ekor Kuda Morat - Marit.jpeg', '160000', 500, 3, '2022-03-03 02:03:05', '2022-03-03 02:04:00', 15, 3),
(48, 'Batik Motif Colet', 'Batik Motif Colet\r\nBahan   : katun primisima\r\nUkuran :105cm x 220cm', 'imageproduct/Batik Motif Colet.jpeg', '160000', 500, 4, '2022-03-03 02:03:05', '2022-03-03 02:04:00', 16, 3);

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `province_id` int(10) UNSIGNED NOT NULL,
  `nama_province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`province_id`, `nama_province`, `created_at`, `updated_at`) VALUES
(1, 'Aceh', NULL, NULL),
(2, 'Sumatra Utara', NULL, NULL),
(3, 'Sumatra Barat', NULL, NULL),
(4, 'Riau', NULL, NULL),
(5, 'Jambi', NULL, NULL),
(6, 'Sumatera Selatan', NULL, NULL),
(7, 'Bengkulu', NULL, NULL),
(8, 'Lampung', NULL, NULL),
(9, 'Kepulauan Bangka Belitung', NULL, NULL),
(10, 'Kepulauan Riau', NULL, NULL),
(11, 'DKI Jakarta', NULL, NULL),
(12, 'Jawa Barat', NULL, NULL),
(13, 'Jawa Tengah', NULL, NULL),
(14, 'DI Yogyakarta', NULL, NULL),
(15, 'Jawa Timur', NULL, NULL),
(16, 'Banten', NULL, NULL),
(17, 'Bali', NULL, NULL),
(18, 'Nusa Tenggara Barat', NULL, NULL),
(19, 'Nusa Tenggara Timur', NULL, NULL),
(20, 'Kalimantan Barat', NULL, NULL),
(21, 'Kalimantan Tengah', NULL, NULL),
(22, 'Kalimantan Selatan', NULL, NULL),
(23, 'Kalimantan Timur', NULL, NULL),
(24, 'Kalimantan Utara', NULL, NULL),
(25, 'Sulawesi Utara', NULL, NULL),
(26, 'Sulawesi Tengah', NULL, NULL),
(27, 'Sulawesi Selatan', NULL, NULL),
(28, 'Sulawesi Tenggara', NULL, NULL),
(29, 'Gorontalo', NULL, NULL),
(30, 'Sulawesi Barat', NULL, NULL),
(31, 'Maluku', NULL, NULL),
(32, 'Maluku Utara', NULL, NULL),
(33, 'Papua', NULL, NULL),
(34, 'Papua Barat', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id` int(10) UNSIGNED NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atas_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_rekening` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id`, `bank_name`, `atas_nama`, `no_rekening`, `created_at`, `updated_at`) VALUES
(1, 'BRI', 'KSM SAMBUNG ROSO', '3880-01-024073-xx', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `response_review`
--

CREATE TABLE `response_review` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggapan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `review_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `response_review`
--

INSERT INTO `response_review` (`id`, `tanggapan`, `review_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'Terimakasih feed back nya', 7, 3, '2022-08-01 00:09:02', '2022-08-01 00:09:02');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `star` int(11) NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `star`, `review`, `product_id`, `order_id`, `created_at`, `updated_at`) VALUES
(6, 4, 'Kualitas Produk oke', 1, 44, '2022-07-31 23:12:50', '2022-07-31 23:12:50'),
(7, 5, 'Barang sampaidengan baik', 2, 45, '2022-08-01 00:07:03', '2022-08-01 00:07:03'),
(8, 5, 'barang sesuai pesanan', 3, 46, '2022-08-04 00:30:24', '2022-08-04 00:30:24');

-- --------------------------------------------------------

--
-- Table structure for table `status_order`
--

CREATE TABLE `status_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_order`
--

INSERT INTO `status_order` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Tunggu Konfirmasi', NULL, NULL),
(2, 'Belum Bayar', NULL, NULL),
(3, 'Perlu Di Cek', NULL, NULL),
(4, 'Telah Di Bayar', NULL, NULL),
(5, 'Barang Di Kirim', NULL, NULL),
(6, 'Barang Telah Sampai', NULL, NULL),
(7, 'Pesanan Di Batalkan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimony_customers`
--

CREATE TABLE `testimony_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES
(1, 'administrator', 'admin@gmail.com', NULL, '$2y$10$c.oXIcN9oFoIvifZxhDUvORu/1NqHKDFy/K1QYl2C5VZveYxPp5E2', NULL, '2022-07-06 22:55:55', '2022-07-06 22:55:55', 'Administrator'),
(2, 'ketua', 'ketua@gmail.com', NULL, '$2y$10$uE.pvcPcn.DA/Ul.B3PXyOVJT7BNs.ogkJKjKJ6aDgK05P0fJ/FX6', NULL, '2022-07-06 22:55:56', '2022-07-06 22:55:56', 'Ketua'),
(3, 'pengrajin', 'pengrajin@gmail.com', NULL, '$2y$10$.ZWQZesC3351OtOur4hBVeRObOwS7fKMQmO1tXNcEA09fAN3JXJWC', NULL, '2022-07-06 22:55:56', '2022-07-06 22:55:56', 'Pengrajin'),
(8, 'Pengrajin B', 'pengrajin_b@gmail.com', NULL, '$2y$10$.ZWQZesC3351OtOur4hBVeRObOwS7fKMQmO1tXNcEA09fAN3JXJWC', NULL, '2022-07-19 19:06:07', '2022-07-19 19:06:07', 'Pengrajin'),
(9, 'Ana Subekti', 'ana@gmail.com', NULL, '$2y$10$/YgUvbO5rntvhkPBPUxCy.ebLPRwXDd8z7UtxYWBg6UJvviCSGmKO', NULL, '2022-07-31 22:46:41', '2022-07-31 22:46:41', 'Customer'),
(11, 'Yusuf Ahmad', 'yusuf@gmail.com', NULL, '$2y$10$2zgrWSZZtlsaj7UuUbOJHOaL5eEtpPsgUm275IgsSJEpkjd4SxP9e', NULL, '2022-07-31 23:33:29', '2022-07-31 23:33:29', 'Customer'),
(12, 'Muhammad Afrizal Miqdad', 'afrizal.bbm123@gmail.com', NULL, '$2y$10$Hx9r4joBSmEM60U8Pydy8eCG/v9t4cK/jAVmg0RIvjmkFPxelQ8wq', NULL, '2022-08-05 15:50:50', '2022-08-05 15:50:50', 'Customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alamat`
--
ALTER TABLE `alamat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alamat_cities_id_index` (`cities_id`),
  ADD KEY `alamat_user_id_index` (`user_id`);

--
-- Indexes for table `alamat_toko`
--
ALTER TABLE `alamat_toko`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cekongkir`
--
ALTER TABLE `cekongkir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `cities_province_id_foreign` (`province_id`);

--
-- Indexes for table `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_order`
--
ALTER TABLE `detail_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_customer_id_index` (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_pengrajin_id_foreign` (`pengrajin_id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`province_id`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `response_review`
--
ALTER TABLE `response_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `response_review_review_id_foreign` (`review_id`),
  ADD KEY `response_review_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_order_id_foreign` (`order_id`);

--
-- Indexes for table `status_order`
--
ALTER TABLE `status_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimony_customers`
--
ALTER TABLE `testimony_customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimony_customers_customer_id_index` (`customer_id`);

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
-- AUTO_INCREMENT for table `alamat`
--
ALTER TABLE `alamat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `alamat_toko`
--
ALTER TABLE `alamat_toko`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cekongkir`
--
ALTER TABLE `cekongkir`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=803;

--
-- AUTO_INCREMENT for table `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `detail_order`
--
ALTER TABLE `detail_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `province_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `response_review`
--
ALTER TABLE `response_review`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `status_order`
--
ALTER TABLE `status_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `testimony_customers`
--
ALTER TABLE `testimony_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`province_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_pengrajin_id_foreign` FOREIGN KEY (`pengrajin_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `response_review`
--
ALTER TABLE `response_review`
  ADD CONSTRAINT `response_review_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `response_review_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
