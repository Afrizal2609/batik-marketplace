-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for oke
CREATE DATABASE IF NOT EXISTS `batik` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `batik`;

-- Dumping structure for table oke.alamat
CREATE TABLE IF NOT EXISTS `alamat` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cities_id` int(10) unsigned NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `kode_pos` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `alamat_cities_id_index` (`cities_id`),
  KEY `alamat_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oke.alamat: ~2 rows (approximately)
/*!40000 ALTER TABLE `alamat` DISABLE KEYS */;
INSERT INTO `alamat` (`id`, `cities_id`, `detail`, `user_id`, `kode_pos`, `created_at`, `updated_at`) VALUES
	(1, 323, 'Jl. Nasution No.2B', 5, 0, '2022-07-08 15:08:14', '2022-07-08 15:08:14'),
	(2, 64, 'Jln. Basmol Raya No. 836, Payakumbuh 37432, Riau', 7, 0, '2022-07-15 07:02:14', '2022-07-15 07:02:14');
/*!40000 ALTER TABLE `alamat` ENABLE KEYS */;

-- Dumping structure for table oke.alamat_toko
CREATE TABLE IF NOT EXISTS `alamat_toko` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `city_id` int(11) NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oke.alamat_toko: ~0 rows (approximately)
/*!40000 ALTER TABLE `alamat_toko` DISABLE KEYS */;
INSERT INTO `alamat_toko` (`id`, `city_id`, `detail`, `created_at`, `updated_at`) VALUES
	(1, 255, 'Jl. Soekarno Hatta No. 9', NULL, NULL);
/*!40000 ALTER TABLE `alamat_toko` ENABLE KEYS */;

-- Dumping structure for table oke.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oke.categories: ~6 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Original Ciprat', NULL, NULL),
	(2, 'Lurikan', NULL, NULL),
	(3, 'Meteor', NULL, NULL),
	(4, 'Gepyokan', NULL, NULL),
	(5, 'Kombinasi Canting & Ciprat 	', NULL, NULL),
	(6, 'Jumputan', NULL, NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table oke.cekongkir
CREATE TABLE IF NOT EXISTS `cekongkir` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `province_id` bigint(20) unsigned NOT NULL,
  `nama_province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` bigint(20) unsigned NOT NULL,
  `nama_cities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_couriers` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oke.cekongkir: ~0 rows (approximately)
/*!40000 ALTER TABLE `cekongkir` DISABLE KEYS */;
/*!40000 ALTER TABLE `cekongkir` ENABLE KEYS */;

-- Dumping structure for table oke.cities
CREATE TABLE IF NOT EXISTS `cities` (
  `city_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `province_id` int(10) unsigned NOT NULL,
  `nama_cities` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`city_id`),
  KEY `cities_province_id_foreign` (`province_id`),
  CONSTRAINT `cities_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`province_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=803 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oke.cities: ~99 rows (approximately)
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
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
	(335, 15, 'Malang', NULL, NULL),
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
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;

-- Dumping structure for table oke.couriers
CREATE TABLE IF NOT EXISTS `couriers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_couriers` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oke.couriers: ~3 rows (approximately)
/*!40000 ALTER TABLE `couriers` DISABLE KEYS */;
INSERT INTO `couriers` (`id`, `code`, `nama_couriers`, `created_at`, `updated_at`) VALUES
	(1, 'jne', 'JNE', NULL, NULL),
	(2, 'pos', 'POS', NULL, NULL),
	(3, 'tiki', 'TIKI', NULL, NULL);
/*!40000 ALTER TABLE `couriers` ENABLE KEYS */;

-- Dumping structure for table oke.detail_order
CREATE TABLE IF NOT EXISTS `detail_order` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oke.detail_order: ~48 rows (approximately)
/*!40000 ALTER TABLE `detail_order` DISABLE KEYS */;
INSERT INTO `detail_order` (`id`, `order_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES
	(1, 1, 12, 1, '2020-12-18 19:27:06', '2020-12-18 19:27:06'),
	(2, 2, 3, 2, '2020-12-18 19:31:11', '2020-12-18 19:31:11'),
	(3, 3, 10, 1, '2020-12-19 01:08:52', '2020-12-19 01:08:52'),
	(4, 4, 12, 1, '2020-12-19 06:50:11', '2020-12-19 06:50:11'),
	(5, 5, 4, 1, '2020-12-19 07:06:52', '2020-12-19 07:06:52'),
	(6, 6, 2, 1, '2020-12-19 15:46:10', '2020-12-19 15:46:10'),
	(7, 6, 12, 1, '2020-12-19 15:46:10', '2020-12-19 15:46:10'),
	(8, 7, 5, 2, '2020-12-20 03:21:39', '2020-12-20 03:21:39'),
	(9, 8, 10, 1, '2020-12-20 10:59:42', '2020-12-20 10:59:42'),
	(10, 8, 8, 2, '2020-12-20 10:59:42', '2020-12-20 10:59:42'),
	(11, 9, 10, 2, '2020-12-20 11:26:17', '2020-12-20 11:26:17'),
	(12, 10, 3, 1, '2020-12-20 15:39:37', '2020-12-20 15:39:37'),
	(13, 11, 3, 1, '2022-06-05 22:48:07', '2022-06-05 22:48:07'),
	(14, 12, 12, 1, '2022-06-05 23:00:06', '2022-06-05 23:00:06'),
	(15, 13, 1, 1, '2022-06-06 01:25:29', '2022-06-06 01:25:29'),
	(16, 14, 3, 1, '2022-06-06 01:44:01', '2022-06-06 01:44:01'),
	(17, 15, 2, 2, '2022-06-26 16:54:12', '2022-06-26 16:54:12'),
	(18, 16, 12, 1, '2022-06-28 21:07:04', '2022-06-28 21:07:04'),
	(19, 16, 1, 8, '2022-06-28 21:07:04', '2022-06-28 21:07:04'),
	(20, 17, 8, 1, '2022-06-29 00:50:25', '2022-06-29 00:50:25'),
	(21, 18, 10, 2, '2022-06-30 10:55:58', '2022-06-30 10:55:58'),
	(22, 19, 9, 4, '2022-07-02 12:52:05', '2022-07-02 12:52:05'),
	(23, 20, 9, 5, '2022-07-02 13:08:07', '2022-07-02 13:08:07'),
	(24, 21, 9, 2, '2022-07-02 13:15:17', '2022-07-02 13:15:17'),
	(25, 22, 1, 1, '2022-07-02 13:50:59', '2022-07-02 13:50:59'),
	(26, 23, 6, 1, '2022-07-02 14:13:58', '2022-07-02 14:13:58'),
	(27, 24, 3, 1, '2022-07-02 15:27:22', '2022-07-02 15:27:22'),
	(28, 25, 3, 1, '2022-07-02 16:22:07', '2022-07-02 16:22:07'),
	(29, 26, 2, 1, '2022-07-02 16:39:01', '2022-07-02 16:39:01'),
	(30, 27, 2, 1, '2022-07-02 16:46:08', '2022-07-02 16:46:08'),
	(31, 28, 6, 1, '2022-07-02 16:54:27', '2022-07-02 16:54:27'),
	(32, 29, 7, 1, '2022-07-02 17:34:24', '2022-07-02 17:34:24'),
	(33, 30, 4, 1, '2022-07-02 17:45:43', '2022-07-02 17:45:43'),
	(34, 31, 5, 1, '2022-07-02 17:46:41', '2022-07-02 17:46:41'),
	(35, 32, 8, 1, '2022-07-02 17:56:46', '2022-07-02 17:56:46'),
	(36, 33, 7, 1, '2022-07-02 18:30:26', '2022-07-02 18:30:26'),
	(37, 34, 11, 1, '2022-07-02 18:32:06', '2022-07-02 18:32:06'),
	(38, 35, 1, 1, '2022-07-02 18:45:42', '2022-07-02 18:45:42'),
	(39, 36, 1, 1, '2022-07-03 00:52:16', '2022-07-03 00:52:16'),
	(40, 37, 3, 1, '2022-07-03 02:14:18', '2022-07-03 02:14:18'),
	(41, 38, 12, 4, '2022-07-15 15:47:30', '2022-07-15 15:47:30'),
	(42, 38, 4, 3, '2022-07-15 15:47:30', '2022-07-15 15:47:30'),
	(43, 39, 4, 3, '2022-07-15 16:32:08', '2022-07-15 16:32:08'),
	(44, 39, 12, 5, '2022-07-15 16:32:08', '2022-07-15 16:32:08'),
	(45, 40, 4, 2, '2022-07-16 03:03:28', '2022-07-16 03:03:28'),
	(46, 41, 4, 1, '2022-07-16 04:48:52', '2022-07-16 04:48:52'),
	(47, 42, 2, 1, '2022-07-17 07:57:23', '2022-07-17 07:57:23'),
	(48, 43, 3, 1, '2022-07-18 00:02:35', '2022-07-18 00:02:35');
/*!40000 ALTER TABLE `detail_order` ENABLE KEYS */;

-- Dumping structure for table oke.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oke.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table oke.keranjang
CREATE TABLE IF NOT EXISTS `keranjang` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `products_id` int(10) unsigned NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oke.keranjang: ~0 rows (approximately)
/*!40000 ALTER TABLE `keranjang` DISABLE KEYS */;
INSERT INTO `keranjang` (`id`, `user_id`, `products_id`, `qty`, `created_at`, `updated_at`) VALUES
	(1, 5, 7, 1, '2022-07-08 14:48:31', '2022-07-08 14:48:31');
/*!40000 ALTER TABLE `keranjang` ENABLE KEYS */;

-- Dumping structure for table oke.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oke.migrations: ~27 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table oke.order
CREATE TABLE IF NOT EXISTS `order` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `subtotal` int(11) NOT NULL,
  `no_resi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_order_id` bigint(20) unsigned NOT NULL,
  `metode_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ongkir` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `biaya_cod` int(11) NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pesan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oke.order: ~42 rows (approximately)
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` (`id`, `invoice`, `user_id`, `subtotal`, `no_resi`, `status_order_id`, `metode_pembayaran`, `ongkir`, `created_at`, `updated_at`, `biaya_cod`, `no_hp`, `bukti_pembayaran`, `pesan`) VALUES
	(1, 'ALV202012180626', 2, 119000, '12345', 5, 'trf', 0, '2020-12-18 19:27:06', '2020-12-18 19:31:24', 0, '087678546234', 'buktibayar/ghYBggHL1cNLsvYYegafvyNoJkmph0dri3Eht2vA.jpg', 'kirim cepat'),
	(2, 'ALV202012180630', 2, 1468000, NULL, 6, 'cod', 0, '2020-12-18 19:31:11', '2020-12-19 01:07:42', 10000, '082332132566', NULL, 'jne'),
	(3, 'ALV202012191208', 7, 999000, '12345', 6, 'trf', 0, '2020-12-19 01:08:52', '2022-07-18 01:10:29', 0, '087678546234', 'buktibayar/ghYBggHL1cNLsvYYegafvyNoJkmph0dri3Eht2vA.jpg', 'jne'),
	(4, 'ALV202012190549', 3, 119000, '12345', 5, 'trf', 0, '2020-12-19 06:50:11', '2020-12-19 06:52:47', 0, '082332132566', 'buktibayar/ghYBggHL1cNLsvYYegafvyNoJkmph0dri3Eht2vA.jpg', 'kirim cepat'),
	(5, 'ALV202012190606', 3, 479000, '12345', 5, 'trf', 0, '2020-12-19 07:06:52', '2020-12-19 07:15:28', 0, '081335876457', 'buktibayar/ghYBggHL1cNLsvYYegafvyNoJkmph0dri3Eht2vA.jpg', 'kirim cepat'),
	(6, 'ALV202012190245', 3, 1190000, '12345', 5, 'trf', 0, '2020-12-19 15:46:10', '2020-12-19 15:51:40', 0, '087678546234', 'buktibayar/ghYBggHL1cNLsvYYegafvyNoJkmph0dri3Eht2vA.jpg', 'kirim kilat'),
	(7, 'ALV202012200221', 3, 1598000, '12345', 5, 'trf', 0, '2020-12-20 03:21:39', '2020-12-20 11:27:34', 0, '081335876457', 'buktibayar/ghYBggHL1cNLsvYYegafvyNoJkmph0dri3Eht2vA.jpg', 'warna sesuai gambar'),
	(8, 'ALV202012200959', 4, 1572000, '12345', 5, 'trf', 0, '2020-12-20 10:59:42', '2020-12-20 11:09:08', 0, '085436782496', 'buktibayar/ghYBggHL1cNLsvYYegafvyNoJkmph0dri3Eht2vA.jpg', 'Kirim cepat'),
	(9, 'ALV202012201025', 3, 1998000, '1234567890', 4, 'trf', 0, '2020-12-20 11:26:17', '2022-06-02 08:49:19', 0, '083858679324', 'buktibayar/ghYBggHL1cNLsvYYegafvyNoJkmph0dri3Eht2vA.jpg', 'kirim cepat'),
	(10, 'ALV202012200239', 5, 734000, '12345', 5, 'trf', 0, '2020-12-20 15:39:37', '2020-12-20 15:47:03', 0, '084536787999', 'buktibayar/ghYBggHL1cNLsvYYegafvyNoJkmph0dri3Eht2vA.jpg', 'kirim cepat'),
	(11, 'ALV202206050947', 4, 734000, NULL, 6, 'trf', 0, '2022-06-05 22:48:06', '2022-06-05 22:51:13', 0, '087654345678', NULL, 'rger'),
	(12, 'ALV202206050959', 4, 1190000, '578', 5, 'trf', 0, '2022-06-05 23:00:06', '2022-06-05 23:08:48', 0, '098765432123', 'buktibayar/ghYBggHL1cNLsvYYegafvyNoJkmph0dri3Eht2vA.jpg', 'jhgfd'),
	(13, 'ALV202206061225', 4, 599000, '12345678900', 4, 'trf', 0, '2022-06-06 01:25:29', '2022-06-06 22:30:01', 0, '098765346878778', 'buktibayar/ghYBggHL1cNLsvYYegafvyNoJkmph0dri3Eht2vA.jpg', 'fgyhujik'),
	(14, 'ALV202206061243', 2, 734000, NULL, 6, 'trf', 0, '2022-06-06 01:44:01', '2022-07-02 17:00:12', 0, '081335768899', NULL, 'cepet'),
	(15, 'ALV202206260339', 5, 1592000, '12345678', 5, 'trf', 0, '2022-06-26 16:54:12', '2022-07-02 12:57:06', 0, '081335768899', 'buktibayar/sTCysMeE94cysJUilk4VmpVk0NHLw5bQVszhhCxS.png', 'pengirimannya yang cepat yaa'),
	(16, 'ALV202206280806', 5, 4792000, '23456789pl', 4, 'trf', 0, '2022-06-28 21:07:04', '2022-07-02 14:55:21', 0, '1234567890', 'buktibayar/t70ASAf7PwLH2FZPugVewrJLsoQX1J2ycqO4mHwS.jpg', 'esdrtfghuiokpl'),
	(17, 'ALV202206281150', 5, 786000, NULL, 2, 'trf', 0, '2022-06-29 00:50:24', '2022-07-01 18:23:27', 0, '12345678', 'buktibayar/uOWbTKrQrtO23VtQlJNPmF21FRRuXCto18nNztar.png', 'fdcbdusnoicmds,'),
	(18, 'ALV202206300955', 4, 1998000, NULL, 3, 'trf', 0, '2022-06-30 10:55:58', '2022-07-03 01:36:38', 0, 'uiop', 'buktibayar/ghYBggHL1cNLsvYYegafvyNoJkmph0dri3Eht2vA.jpg', 'tuio'),
	(19, 'ALV202207021151', 5, 2356000, '12346790855', 5, 'trf', 0, '2022-07-02 12:52:05', '2022-07-02 12:59:50', 0, '087654346798', 'buktibayar/X6kiMmj5erzaNlb4zD9RBRjkEr5csbrffhcA0K1m.png', 'kirim yang cepet'),
	(20, 'ALV202207021207', 5, 2945000, '234567890', 5, 'trf', 0, '2022-07-02 13:08:07', '2022-07-02 13:14:44', 0, '34567890098765', 'buktibayar/Tw0bNH1WIbQrIfAMTfE8idOIrgXv9lIBUzj4aNsx.jpg', 'mmmmmm'),
	(21, 'ALV202207021215', 5, 1178000, '1234567890', 5, 'trf', 0, '2022-07-02 13:15:17', '2022-07-02 13:21:22', 0, '12345678', 'buktibayar/ytQ5taoL1abUngeWbEz4dQeLZipUEUzkqpxs3HmD.png', 'szxdcfgbhnjkl,;'),
	(22, 'ALV202207021250', 5, 599000, NULL, 3, 'trf', 0, '2022-07-02 13:50:59', '2022-07-11 15:29:24', 0, '34567890-', 'buktibayar/ghYBggHL1cNLsvYYegafvyNoJkmph0dri3Eht2vA.jpg', 'dxfcghjkl;'),
	(23, 'ALV202207020113', 5, 699000, NULL, 3, 'trf', 0, '2022-07-02 14:13:58', '2022-07-11 15:42:29', 0, '456789', 'buktibayar/ghYBggHL1cNLsvYYegafvyNoJkmph0dri3Eht2vA.jpg', 'dfghjk'),
	(24, 'ALV202207020227', 4, 734000, NULL, 2, 'trf', 0, '2022-07-02 15:27:22', '2022-07-02 15:27:38', 0, '234567890-', 'buktibayar/6xyU4td6Eic3KmH7OgpEb9e280vEkwUzcgjnFPIZ.jpg', 'dfcgvhjikl,;\'.\r\n/'),
	(25, 'ALV202207020321', 2, 734000, NULL, 6, 'trf', 0, '2022-07-02 16:22:07', '2022-07-02 17:00:18', 0, '12345678', NULL, 'edrtfghjk'),
	(26, 'ALV202207020324', 2, 796000, NULL, 6, 'trf', 0, '2022-07-02 16:39:01', '2022-07-02 17:00:15', 0, '124356476', NULL, 'yhtyyjkjhgfds'),
	(27, 'ALV202207020345', 2, 796000, NULL, 6, 'trf', 0, '2022-07-02 16:46:07', '2022-07-02 17:00:22', 0, '234567890-', NULL, 'sxdcfgvbhjnkml,;.'),
	(28, 'ALV202207020354', 2, 699000, NULL, 6, 'trf', 0, '2022-07-02 16:54:27', '2022-07-02 17:00:20', 0, '3456789', NULL, 'yuio'),
	(29, 'ALV202207020434', 2, 599000, '1232534654', 5, 'trf', 56000, '2022-07-02 17:34:24', '2022-07-02 23:59:42', 0, '1234567890', 'buktibayar/waIe5lixzfybkzuiVCdhJ4Ds3RcXFAkIMHi2qJ2U.jpg', 'lmokjiyvj'),
	(30, 'ALV202207020445', 2, 479000, NULL, 6, 'trf', 56000, '2022-07-02 17:45:43', '2022-07-02 18:44:31', 0, '67585966097', NULL, 'joijm\'nk'),
	(31, 'ALV202207020446', 2, 799000, NULL, 6, 'cod', 56000, '2022-07-02 17:46:41', '2022-07-02 18:05:43', 10000, '757859877', NULL, 'utfbgni8omyluihjp,m;ol'),
	(32, 'ALV202207020456', 2, 786000, NULL, 2, 'trf', 56000, '2022-07-02 17:56:45', '2022-07-02 17:57:42', 0, '35234645647', 'buktibayar/lXWKfRHbUOXHLVeW94v4u1LmUD50asgskpJdCmap.jpg', 'fghfgjdt'),
	(33, 'ALV202207020520', 2, 599000, NULL, 6, 'trf', 56000, '2022-07-02 18:30:26', '2022-07-02 18:44:35', 0, '789508967098', NULL, 'ffuyfigkugikbubikbubguyjvb'),
	(34, 'ALV202207020531', 2, 1146000, 'p80978096789709', 5, 'trf', 56000, '2022-07-02 18:32:06', '2022-07-02 18:38:35', 0, '865879698987', 'buktibayar/9GF7PutcAJCGzmU9J8m5octiycp3Fp61OyHGqT9q.png', 'jjhjjnlkj,m'),
	(35, 'ALV202207020545', 2, 655000, NULL, 2, 'trf', 56000, '2022-07-02 18:45:42', '2022-07-02 18:45:56', 0, '456789654', 'buktibayar/UdyKP9uCOxyPsZImOiXM294b7QPgYi1qO6o7SWh0.png', 'ijo royo royo'),
	(36, 'ALV202207021147', 2, 655000, NULL, 2, 'trf', 56000, '2022-07-03 00:52:16', '2022-07-03 01:00:02', 0, '789579', 'buktibayar/qIe2z9kGtcE73SBb7abTlS47g6FQJIjOadGOjxBY.jpg', 'yfcihj'),
	(37, 'ALV202207030113', 13, 779000, NULL, 2, 'trf', 45000, '2022-07-03 02:14:18', '2022-07-03 02:14:42', 0, '0879324567890', 'buktibayar/ghYBggHL1cNLsvYYegafvyNoJkmph0dri3Eht2vA.jpg', 'WARNA MERAH'),
	(39, 'ALV202207150431', 7, 1502000, '123', 6, 'cod', 252000, '2022-07-15 16:32:08', '2022-07-18 01:10:40', 10000, '231232131', 'buktibayar/ghYBggHL1cNLsvYYegafvyNoJkmph0dri3Eht2vA.jpg', 'beli bang'),
	(40, 'ALV202207160303', 7, 363000, '123', 6, 'trf', 63000, '2022-07-16 03:03:28', '2022-07-18 01:10:54', 0, '1234', 'buktibayar/ghYBggHL1cNLsvYYegafvyNoJkmph0dri3Eht2vA.jpg', 'beli bang'),
	(41, 'ALV202207160448', 7, 213000, '123', 6, 'trf', 63000, '2022-07-16 04:48:52', '2022-07-18 01:11:13', 0, '123312', 'buktibayar/ghYBggHL1cNLsvYYegafvyNoJkmph0dri3Eht2vA.jpg', 'beli bang'),
	(42, 'ALV202207170757', 7, 213000, '456', 6, 'trf', 63000, '2022-07-17 07:57:23', '2022-07-18 01:13:08', 0, '123', 'buktibayar/ghYBggHL1cNLsvYYegafvyNoJkmph0dri3Eht2vA.jpg', 'beli bang'),
	(43, 'ALV202207181202', 7, 213000, NULL, 2, 'trf', 63000, '2022-07-18 00:02:35', '2022-07-18 00:40:40', 0, '123', NULL, 'beli bang');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;

-- Dumping structure for table oke.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oke.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table oke.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_customer_id_index` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oke.posts: ~0 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping structure for table oke.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weigth` int(11) NOT NULL,
  `categories_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stok` int(11) NOT NULL,
  `pengrajin_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_pengrajin_id_foreign` (`pengrajin_id`),
  CONSTRAINT `products_pengrajin_id_foreign` FOREIGN KEY (`pengrajin_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oke.products: ~26 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `weigth`, `categories_id`, `created_at`, `updated_at`, `stok`, `pengrajin_id`) VALUES
	(1, 'Batik Ciprat Obat Nyamuk', 'bahan : primisima ukuran: 2.15 x 1.10\r\n            pewarna: sintetis', 'imageproduct/gambar 2.jpg', '150.000', 500, 3, '2022-03-03 10:03:05', '2022-03-03 10:04:00', -1, 3),
	(2, 'Batik Ciprat Kecubung', 'bahan : primisima ukuran: 2.15 x 1.10\r\n            pewarna: sintetis', 'imageproduct/gambar 1.jpg', '150.000', 500, 5, '2022-03-03 10:03:05', '2022-03-03 10:04:00', -2, 3),
	(3, 'Batik Ciprat Motif Bunga tulip', 'Batik Ciprat motif bunga tulip\r\n            Bahan   : katun primisima Ukuran :105cm x 220cm', 'imageproduct/gambar 7.png', '150.000', 500, 5, '2022-03-03 10:03:05', '2022-03-03 10:04:00', 7, 3),
	(4, 'Batik Pelangi Coret', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\n            Batik Ciprat motif pelangi coret\r\n            Bahan   : katun primisima\r\n            Ukuran  :105cm x 220cm', 'imageproduct/gambar 12.png', '150.000', 500, 3, '2022-03-03 10:03:05', '2022-03-03 10:04:00', -2, 3),
	(5, 'Batik Tumpul Jumput', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\n            Batik Ciprat motif batik Tumpul Jumput\r\n            Bahan   : katun primisima\r\n            Ukuran  :105cm x 220cm', 'imageproduct/gambar 13.png', '150.000', 500, 5, '2022-03-03 10:03:05', '2022-03-03 10:04:00', 9, 3),
	(6, 'Batik Gelombang Laut', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\n            Batik Ciprat motif Gelombang Laut\r\n            Bahan   : katun jepang\r\n            Ukuran  :105cm x 220cm', 'imageproduct/gambar 14.png', '150.000', 500, 4, '2022-03-03 10:03:05', '2022-03-03 10:04:00', 11, 3),
	(7, 'Batik Ciprat Morat - marit', 'Batik Ciprat Desa Simbatan yang dibuat oleh para penyandang disabilitas\r\n\r\n            Batik Ciprat motif morat - marit\r\n            Bahan   : katun Jepang\r\n            Ukuran  :105cm x 220cm', 'imageproduct/gambar 15.png', '200.000', 500, 2, '2022-03-03 10:03:05', '2022-03-03 10:04:00', 12, 3),
	(8, 'Batik Ciprat Bintang', 'Motif Ciprat Bintang\r\n            Primisima\r\n            Ukuran 2,15 x 1,10\r\n            Ready stok\r\n            160rb', 'imageproduct/batik_bintang.png', '160.000', 500, 2, '2022-03-03 10:03:05', '2022-03-03 10:04:00', 4, 3),
	(9, 'Batik Ciprat Motif Dong Telo', 'Motif Dong Telo\r\n            Ready stok\r\n            Ukuran 2,15 x 1,10\r\n            Harga 200rb', 'imageproduct/batik_dongtelo.png', '200.000', 500, 5, '2022-03-03 10:03:05', '2022-03-03 10:04:00', -2, 3),
	(10, 'Batik Motif Kembang Krokot', 'Motif Terbaru Kembang Krokot\r\n            Ready stok\r\n            Ukuran 2,15 x 1,10\r\n            Harga 150rb', 'imageproduct/batik_kembangkrokot.png', '150.000', 500, 5, '2022-03-03 10:03:05', '2022-03-03 10:04:00', 0, 3),
	(11, 'Batik Motif Cahaya Pelangi', 'Motif cahaya pelangi\r\n            Primisima\r\n            Ukuran 2,15 x 1,10\r\n            Harga 160rb', 'imageproduct/cahaya_pelangi.png', '160.000', 500, 1, '2022-03-03 10:03:05', '2022-03-03 10:04:00', 6, 8),
	(12, 'Batik MOtif Ciprat Anyam', 'Motif ciprat anyam\r\n            Ukuran 2,15 x 1,10\r\n            Kain Primisima\r\n            Ready stok', 'imageproduct/ciprat_anyaman.png', '160.000', 500, 2, '2022-03-04 10:04:05', '2022-03-05 11:02:00', -1, 8),
	(14, 'Batik Ciprat Motif Balok', 'Motif ciprat balok\r\n            Primisima\r\n            Ukuran 2,15 x 1,10\r\n            Ready stok\r\n            Bisa reques warna', 'imageproduct/ciprat_balok.png', '160.000', 500, 6, '2022-03-03 10:03:05', '2022-03-03 10:04:00', 0, 8),
	(16, 'Batik Ciprat Rumput', 'Motif ciprat Rumput\r\n            Ukuran 2,15 x 1,10\r\n            Ready stok\r\n            150rb\r\n            Bisa reques warna', 'imageproduct/ciprat_rumput.png', '150.000', 500, 1, '2022-03-03 10:03:05', '2022-03-03 10:04:00', 10, 8),
	(17, 'Batik Ciprat Motif Tumpal Jumput', 'Motif Tumpal jumput berbagai warna ready \r\n            140rb\r\n            Bisa reques warna', 'imageproduct/tumpal_jumput.png', '140.000', 500, 6, '2022-03-03 10:03:05', '2022-03-03 10:04:00', 5, 8),
	(18, 'Batik Ciprat Motif Pelangi Tetes', 'Motif Pelangi Tetes berbagai warna ready stok\r\n            Bisa reques warna', 'imageproduct/pelangi_tetes.png', '150.000', 500, 2, '2022-03-03 10:03:05', '2022-03-03 10:04:00', 20, 8),
	(19, 'Batik Ciprat Motif Layangan', 'Motif Layangan\r\n            Ukuran 2,15 x 1,10\r\n            Primisima\r\n            Harga 160rb\r\n            Ready stok', 'imageproduct/motif_layangan.png', '160.000', 500, 5, '2022-03-03 10:03:05', '2022-03-03 10:04:00', 15, 8),
	(20, 'Batik Ciprat Motif Prapatan', 'Motif Prapatan\r\n            Harga 160rb\r\n            Ukuran 2,15 x 1,10\r\n            Warna bisa memilih\r\n            Ready stok kain primisima', 'imageproduct/motif_prapatan.png', '160.000', 500, 6, '2022-03-03 10:03:05', '2022-03-03 10:04:00', 5, 8),
	(21, 'Batik Ciprat Motif Rubik', 'Motif rubik\r\n            Ukuran 2,15 x 1,10\r\n            Primisima\r\n            Harga 160rb\r\n            Ready stok', 'imageproduct/motif_rubik.png', '160.000', 500, 3, '2022-03-03 10:03:05', '2022-03-03 10:04:00', 3, 8),
	(22, 'Batik Ciprat Motif Kotak', 'Motif kotak\r\n            Ready stok\r\n            Ukuran 2,15 x 1,10\r\n            Harga 160rb\r\n            Bisa reques warna', 'imageproduct/motif_kotak.png', '160.000', 500, 3, '2022-03-03 10:03:05', '2022-03-03 10:04:00', 6, 8),
	(23, 'Batik Ciprat Motif Bunga Matahari', 'Motif Bunga Matahari\r\n            Ready stok\r\n            Ukuran 2,15 x 1,10\r\n            Harga 150rb\r\n            Bisa reques warna', 'imageproduct/motif_bungamatahari.png', '150.000', 500, 6, '2022-03-03 10:03:05', '2022-03-03 10:04:00', 21, 8),
	(24, 'Batik Ciprat Motif Cendol Dawet', 'Motif Terbaru Cendol Dawet \r\n        Ready stok\r\n        Ukuran 2,15 x 1,10\r\n        Harga 150rb\r\n        Bisa reques warna', 'imageproduct/krokot.png', '150.000', 500, 5, '2022-03-03 10:03:05', '2022-03-03 10:04:00', 15, 3),
	(25, 'Batik Ciprat Bintang', 'Motif Ciprat Bintang\r\n        Primisima\r\n        Ukuran 2,15 x 1,10\r\n        Ready stok\r\n        160rb', 'imageproduct/batik_bintang.png', '160.000', 500, 2, '2022-03-03 10:03:05', '2022-03-03 10:04:00', 10, 3),
	(26, 'Batik Motif Kembang Krokot', 'Motif Terbaru Kembang Krokot\r\n        Ready stok\r\n        Ukuran 2,15 x 1,10\r\n        Harga 150rb', 'imageproduct/batik_kembangkrokot.png', '150.000', 500, 5, '2022-03-03 10:03:05', '2022-03-03 10:04:00', 25, 3),
	(27, 'Batik Motif Kembang Api', 'Motif KEMBANG API\r\nUkuran 2,15×1,10\r\nKatun primisima\r\n160rb', 'imageproduct/kembang_api.png', '160.000', 500, 6, '2022-03-03 10:03:05', '2022-03-03 10:04:00', 0, 3),
	(28, 'Batik Motif Ciprat Gasing', 'Motif ciprat gasing\r\nUkuran 2,15×1,10\r\nKain primisima\r\nHarga 160rb', 'imageproduct/gasing.png', '160.000', 500, 6, '2022-03-03 10:03:05', '2022-03-03 10:04:00', 0, 8);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table oke.provinces
CREATE TABLE IF NOT EXISTS `provinces` (
  `province_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oke.provinces: ~34 rows (approximately)
/*!40000 ALTER TABLE `provinces` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `provinces` ENABLE KEYS */;

-- Dumping structure for table oke.rekening
CREATE TABLE IF NOT EXISTS `rekening` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atas_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_rekening` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oke.rekening: ~2 rows (approximately)
/*!40000 ALTER TABLE `rekening` DISABLE KEYS */;
INSERT INTO `rekening` (`id`, `bank_name`, `atas_nama`, `no_rekening`, `created_at`, `updated_at`) VALUES
	(1, 'BRI', 'Deni Mustika', '0341-01-000-743xxx', NULL, NULL),
	(2, 'Mandiri', 'Saktiyaningrum', '111-00-045xx-xx', NULL, NULL);
/*!40000 ALTER TABLE `rekening` ENABLE KEYS */;

-- Dumping structure for table oke.response_review
CREATE TABLE IF NOT EXISTS `response_review` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tanggapan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `review_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `response_review_review_id_foreign` (`review_id`),
  KEY `response_review_user_id_foreign` (`user_id`),
  CONSTRAINT `response_review_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`) ON DELETE CASCADE,
  CONSTRAINT `response_review_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oke.response_review: ~3 rows (approximately)
/*!40000 ALTER TABLE `response_review` DISABLE KEYS */;
INSERT INTO `response_review` (`id`, `tanggapan`, `review_id`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 'terimakasih atas reviewnya', 5, 3, '2022-07-18 08:38:32', '2022-07-18 08:38:32'),
	(2, 'terimakasih bang', 4, 3, '2022-07-18 08:59:01', '2022-07-18 08:59:01'),
	(3, 'Terimakasih atas penilaiannya', 1, 3, '2022-07-18 09:11:42', '2022-07-18 09:11:42');
/*!40000 ALTER TABLE `response_review` ENABLE KEYS */;

-- Dumping structure for table oke.reviews
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `star` int(11) NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `order_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_product_id_foreign` (`product_id`),
  KEY `reviews_order_id_foreign` (`order_id`),
  CONSTRAINT `reviews_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oke.reviews: ~5 rows (approximately)
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` (`id`, `star`, `review`, `product_id`, `order_id`, `created_at`, `updated_at`) VALUES
	(1, 4, 'Barang bagus', 10, 3, '2022-07-16 03:59:41', '2022-07-16 03:59:41'),
	(2, 2, 'Hmmm', 4, 39, '2022-07-16 04:05:28', '2022-07-16 04:05:28'),
	(3, 4, 'Kain nyaman dipakai', 12, 39, '2022-07-16 04:05:36', '2022-07-16 04:05:36'),
	(4, 5, 'Barang bagus', 4, 40, '2022-07-16 04:05:47', '2022-07-16 04:05:47'),
	(5, 4, 'Barang bagus', 4, 41, '2022-07-16 11:13:29', '2022-07-16 11:13:29');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;

-- Dumping structure for table oke.status_order
CREATE TABLE IF NOT EXISTS `status_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oke.status_order: ~7 rows (approximately)
/*!40000 ALTER TABLE `status_order` DISABLE KEYS */;
INSERT INTO `status_order` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Tunggu Konfirmasi', NULL, NULL),
	(2, 'Belum Bayar', NULL, NULL),
	(3, 'Perlu Di Cek', NULL, NULL),
	(4, 'Telah Di Bayar', NULL, NULL),
	(5, 'Barang Di Kirim', NULL, NULL),
	(6, 'Barang Telah Sampai', NULL, NULL),
	(7, 'Pesanan Di Batalkan', NULL, NULL);
/*!40000 ALTER TABLE `status_order` ENABLE KEYS */;

-- Dumping structure for table oke.testimony_customers
CREATE TABLE IF NOT EXISTS `testimony_customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `testimony_customers_customer_id_index` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oke.testimony_customers: ~0 rows (approximately)
/*!40000 ALTER TABLE `testimony_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimony_customers` ENABLE KEYS */;

-- Dumping structure for table oke.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table oke.users: ~6 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES
	(1, 'administrator', 'admin@gmail.com', NULL, '$2y$10$c.oXIcN9oFoIvifZxhDUvORu/1NqHKDFy/K1QYl2C5VZveYxPp5E2', NULL, '2022-07-07 05:55:55', '2022-07-07 05:55:55', 'Administrator'),
	(2, 'ketua', 'ketua@gmail.com', NULL, '$2y$10$uE.pvcPcn.DA/Ul.B3PXyOVJT7BNs.ogkJKjKJ6aDgK05P0fJ/FX6', NULL, '2022-07-07 05:55:56', '2022-07-07 05:55:56', 'Ketua'),
	(3, 'pengrajin', 'pengrajin@gmail.com', NULL, '$2y$10$.ZWQZesC3351OtOur4hBVeRObOwS7fKMQmO1tXNcEA09fAN3JXJWC', NULL, '2022-07-07 05:55:56', '2022-07-07 05:55:56', 'Pengrajin'),
	(4, 'Syalva Naura', 'syalva@gmail.com', NULL, '$2y$10$RtH2QXU8O38hnC9tbLSwoe8IBQebQJHJ3WWyP/geDUKbqRiNpuqt6', NULL, '2022-07-08 02:15:02', '2022-07-08 02:15:02', 'Customer'),
	(5, 'Anandi Sukma', 'anandi@gmail.com', NULL, '$2y$10$rF9BGyMh2ah.OGjy3U2X3.b1vFVvr8ru4BCf1uSW2lj/lIqVlzL7y', NULL, '2022-07-08 14:43:54', '2022-07-08 14:43:54', 'Customer'),
	(7, 'Joe Dohn', 'joe@gmail.com', NULL, '$2y$10$wDzuictQiNTqyxS0p2fKtOiICeDdUOn1P3NZ9a5K/MohKlrkqG1j2', NULL, '2022-07-15 07:01:48', '2022-07-15 07:01:48', 'Customer'),
	(8, 'Pengrajin B', 'pengrajin_b@gmail.com', NULL, '$2y$10$.ZWQZesC3351OtOur4hBVeRObOwS7fKMQmO1tXNcEA09fAN3JXJWC', NULL, '2022-07-20 02:06:07', '2022-07-20 02:06:07', 'Pengrajin');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
