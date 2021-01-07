-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2021 at 09:11 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm_erika_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) NOT NULL,
  `about_us_image` char(50) NOT NULL,
  `about_us_title` varchar(255) NOT NULL,
  `about_us_description` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `about_us_image`, `about_us_title`, `about_us_description`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, '5ff751b70cae4.jpeg', 'Elsha Beauty House menempatkan kecantikan dan kesehatan kulit anda sebagai prioritas utama, dengan tenaga profesional serta didukung oleh teknologi terkini dan aman', 'Sejak Tahun 2018, Elsha Beauty House menjadi salah satu cabang Elsha Clinic dan juga salah satu menjadi klinik pilihan terbaik yang ada di Palembang. Elsha Beauty House menempatkan kecantikan dan kesehatan kulit anda sebagai prioritas utama, dengan tenaga profesional serta didukung oleh teknologi terkini dan aman. Elsha Beauty House juga memiliki produk skin & Beauty Care yang sudah lulus notifikasi BPOM & HALAL. Elsha Beauty House sudah memiliki pelanggan setia di dalam kota Palembang maupun seluruh Indonesia, karena kami mengutamakan kemudahan pelayanan, hasil yang maksimal, harga yang terjangkau untuk semua kalangan.', 1, NULL, '2021-01-07 11:23:51', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `advantage`
--

CREATE TABLE `advantage` (
  `id` bigint(20) NOT NULL,
  `advantage_title` varchar(255) NOT NULL,
  `advantage_image` char(50) NOT NULL,
  `advantage_description` varchar(100) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `advantage`
--

INSERT INTO `advantage` (`id`, `advantage_title`, `advantage_image`, `advantage_description`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Free Shipping', '5fd882887de8f.jpg', 'Free shipping on all US order or order above $200', 1, '2020-11-28 03:44:44', '2020-12-15 02:31:52', NULL, NULL),
(2, 'Support 24/7', '5fd882ae3b1bf.jpg', 'Contact us 24 hours a day, 7 days a week', 1, '2020-12-15 02:32:30', '2020-12-15 02:32:30', NULL, NULL),
(3, '30 Days Return', '5fd882cfce9b8.jpg', 'Simply return it within 30 days for an exchange', 1, '2020-12-15 02:33:03', '2020-12-15 02:33:03', NULL, NULL),
(4, '100% Payment Secure', '5fd882e972b5b.jpg', 'We ensure secure payment with PEV', 1, '2020-12-15 02:33:29', '2020-12-15 02:33:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` bigint(20) NOT NULL,
  `blog_title` varchar(255) DEFAULT NULL,
  `blog_image` char(50) NOT NULL,
  `blog_date` date NOT NULL,
  `blog_type` varchar(50) NOT NULL,
  `blog_short_description` varchar(255) NOT NULL,
  `blog_blockquote` text DEFAULT NULL,
  `blog_description` text DEFAULT NULL,
  `blog_tag` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `blog_title`, `blog_image`, `blog_date`, `blog_type`, `blog_short_description`, `blog_blockquote`, `blog_description`, `blog_tag`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'MANFAAT ROTI BAGI KESEHATAN TUBUH KAMU (DAN JUGA DIET!)', '5fd88a255e1c1.png', '2020-12-15', 'Makanan', 'Jika dulu kita beranggapan roti adalah makanan yang mahal, kini anggapan itu sudah hilang pasalnya, sekarang roti sudah menjadi sumber karbohidrat pengganti nasi.', 'Roti merupakan cemilan yang dapat dikonsumsi oleh berbagai kalangan. Penelitian telah membuktikan bahwa pentingnya penambahan PUFA ke dalam makanan formula untuk mendukung perkembangan  balita. PUFA dapat meningkatkan kemampuan anak untuk memusatkan perhatian, memecahkan masalah, dan penglihatan (visual). Dari nilai plus roti, apalagi yang difortifikasi berbagai zat gizi, jelas roti merupakan hidangan alternatif yang baik bagi menu keluarga..(*Prof. Dr. Made Astawan (Guru Besar pada Departemen Teknologi Pangan dan Gizi, Institut Pertanian Bogor).', 'Jika dulu kita beranggapan roti adalah makanan yang mahal, kini anggapan itu sudah hilang pasalnya, sekarang roti sudah menjadi sumber karbohidrat pengganti nasi. Roti yang berbahan dasar tepung terigu dan air lalu difermentasikan dengan ragi.\r\n\r\nPerkembangan industri pangan saat ini membuat roti tidak hanya mengandung karbohidrat saja tetapi juga mengandung protein serta lemak yang dibutuhkan tubuh. Roti yang dikenal sebagai cemilan adalah jenis roti manis dengan berbagai isian, atau roti tawar yang ditambahan dengan berbagai macam selai ataupun sayuran. Karbohidrat yang terkandung dalam roti, menjadikan roti sebagai sumber energi yang baik jika dikonsumsi saat sarapan pagi.\r\n\r\nDidalam roti sendiri mengandung zat yang bermanfaat, seperti vitamin B1, vitamin B2, dan niasin serta sejumlah mineral berupa zat besi, yodium, kalsium, dan kandungan mineral lainnya. Belakangan ini, untuk meningkatkan mutu protein bagi tubuh, roti juga diperkaya dengan asam lemak tidak jenuh ganda (PUFA), terutama kelompok omega-3 seperti EPA ( asam eikosapentaenoat ) dan DHA ( asam dokosaheksaenoat ). Roti isi tuna adalah salah satu contoh roti yang diperkaya omega-3.\r\n\r\nRoti merupakan cemilan yang dapat dikonsumsi oleh berbagai kalangan. Penelitian telah membuktikan bahwa pentingnya penambahan PUFA ke dalam makanan formula untuk mendukung perkembangan  balita. PUFA dapat meningkatkan kemampuan anak untuk memusatkan perhatian, memecahkan masalah, dan penglihatan (visual). Dari nilai plus roti, apalagi yang difortifikasi berbagai zat gizi, jelas roti merupakan hidangan alternatif yang baik bagi menu keluarga..(*Prof. Dr. Made Astawan (Guru Besar pada Departemen Teknologi Pangan dan Gizi, Institut Pertanian Bogor).\r\n\r\nRoti sangat cocok untuk semua kalangan usia, dari anak-anak hingga orang dewasa. Biasanya mereka mengkonsumsi roti tawar ataupun manis dengan menambahkan selai, seperti Roti Duo isi cream cerees, chocolate, skrikaya, choco cheese, naugat dan cheese speed sangat cocok untuk dinikmati saat cemil santai. Ukuran Roti Duo yang cukup besar, cukup untuk dikonsumsi bersama keluarga. Karena kandungan zat diroti yang sangat bermanfaat ini membuat roti memiliki beberapa manfaat untuk tubuh kita, berikut pemaparannya :\r\n\r\n1. MELANCARKAN SISTEM PENCERNAAN\r\nMengapa demikian? Karena kandungan serat didalam roti dapat membantu melancarkan penceraan sehingga pencernaan menjadi sehat.\r\n\r\n2. SUMBER ENERGI\r\nKarena kandungan karbohidrat yang ada diroti baik untuk menambah energi. Dengan memakan roti pada pagi hari dapat membuat perut terasa keyang lebih lama.\r\n\r\n3. BAIK UNTUK TULANG\r\nBagi kamu yang tidak suka minum susu, mungkin roti menjadi salah satu alternatif untuk kesehatan tulang. Karena roti mengandung kalsium yang bagus untuk kesehatan tulang.\r\n\r\n4. MENCUKUPI KEBUTUHAN VITAMIN TUBUH\r\nMengkonsumsi roti dengan secukupnya tanpa berlebihan akan mendapatkan vitamin yang dibutuhkan oleh tubuh. Beberapa vitamin yang terkandung didalam roti ialah vitamin b.\r\n\r\nWah, makin semangat yaa mengkonsumsi roti mulai sekarang, setelah mengeratahui beberapa manfaatnya.. tapi ingat yaa rotiholic jangan makan berlebihan yaa…', 'Sari Roti, Roti Cokelat', 1, '2020-12-15 03:04:21', '2020-12-15 03:04:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `total_price` double(18,2) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart_detail`
--

CREATE TABLE `cart_detail` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `cart_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `qty` bigint(20) NOT NULL,
  `price` double(18,2) NOT NULL,
  `subtotal` double(18,2) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `consultation`
--

CREATE TABLE `consultation` (
  `id` bigint(20) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `consultation` text DEFAULT NULL,
  `date_consultation` date DEFAULT NULL,
  `consultation_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `consultant_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `consultation`
--

INSERT INTO `consultation` (`id`, `subject`, `consultation`, `date_consultation`, `consultation_type_id`, `user_id`, `consultant_id`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Kecantikan', 'mulai ya', '2021-01-07', 0, 1, NULL, 1, '2021-01-07 10:22:35', '2021-01-07 10:22:35', 1, NULL),
(2, 'sdf', 'sdf', '2021-01-07', 0, 7, NULL, 1, '2021-01-07 13:00:30', '2021-01-07 13:00:30', 7, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `consultation_detail`
--

CREATE TABLE `consultation_detail` (
  `id` bigint(20) NOT NULL,
  `consultation_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `consultant_id` int(11) DEFAULT NULL,
  `consultation` text DEFAULT NULL,
  `date_consultation` date DEFAULT NULL,
  `consultation_type_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `consultation_detail`
--

INSERT INTO `consultation_detail` (`id`, `consultation_id`, `user_id`, `consultant_id`, `consultation`, `date_consultation`, `consultation_type_id`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(2, 1, 1, NULL, 'mulai ya', '2021-01-07', 0, 1, '2021-01-07 10:22:35', '2021-01-07 10:22:35', 1, NULL),
(3, 1, 1, NULL, 'test', '2021-01-07', 0, 1, '2021-01-07 10:23:30', '2021-01-07 10:23:30', 1, NULL),
(4, 1, 1, NULL, 'sdfsd', '2021-01-07', 0, 1, '2021-01-07 10:35:53', '2021-01-07 10:35:53', 1, NULL),
(5, 1, 1, NULL, 'aas', '2021-01-07', 0, 1, '2021-01-07 11:50:46', '2021-01-07 11:50:46', 1, NULL),
(6, 1, NULL, 1, NULL, '2021-01-07', 1, 1, '2021-01-07 12:36:50', '2021-01-07 12:36:50', 1, NULL),
(7, 1, NULL, 1, 'fdfg', '2021-01-07', 1, 1, '2021-01-07 12:37:48', '2021-01-07 12:37:48', 1, NULL),
(8, 1, 1, NULL, 'dfswd', '2021-01-07', 0, 1, '2021-01-07 12:38:03', '2021-01-07 12:38:03', 1, NULL),
(9, 1, NULL, 1, 'ersdf', '2021-01-07', 1, 1, '2021-01-07 12:38:38', '2021-01-07 12:38:38', 1, NULL),
(10, 2, 7, NULL, 'sdf', '2021-01-07', 0, 1, '2021-01-07 13:00:30', '2021-01-07 13:00:30', 7, NULL),
(11, 1, NULL, 1, 'sdfsd', '2021-01-07', 1, 1, '2021-01-07 13:05:47', '2021-01-07 13:05:47', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` bigint(20) NOT NULL,
  `currency_code` varchar(255) NOT NULL,
  `currency_name` varchar(50) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `currency_code`, `currency_name`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'IDR', 'Rupiah', 1, '2020-11-27 07:39:15', '2020-11-27 07:39:15', NULL, NULL),
(2, 'USD', 'Dollar', 1, '2020-11-28 03:00:28', '2020-11-28 03:00:28', NULL, NULL);

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
-- Table structure for table `languange`
--

CREATE TABLE `languange` (
  `id` bigint(20) NOT NULL,
  `languange_code` varchar(255) NOT NULL,
  `languange_name` varchar(50) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `languange`
--

INSERT INTO `languange` (`id`, `languange_code`, `languange_name`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'ID', 'Indonesia', 1, '2020-11-27 07:36:25', '2020-11-27 07:36:25', NULL, NULL),
(2, 'EN', 'English', 1, '2020-11-28 02:34:26', '2020-11-28 02:34:26', NULL, NULL);

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `qty` bigint(20) DEFAULT NULL,
  `price` double(18,2) DEFAULT NULL,
  `subtotal` double(18,2) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `user_id`, `order_id`, `product_id`, `qty`, `price`, `subtotal`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 6, 1, 1, 1, 6826.00, 6826.00, 1, '2020-12-16 01:08:41', '2020-12-16 01:08:41', 6, NULL),
(2, 1, 2, 4, 3, 70000.00, 210000.00, 1, '2021-01-07 07:41:43', '2021-01-07 07:41:43', 1, NULL),
(3, 1, 3, 4, 1, 70000.00, 70000.00, 1, '2021-01-07 07:56:00', '2021-01-07 07:56:00', 1, NULL),
(4, 1, 4, 4, 2, 70000.00, 140000.00, 1, '2021-01-07 08:08:31', '2021-01-07 08:08:31', 1, NULL),
(5, 1, 4, 5, 2, 60000.00, 120000.00, 1, '2021-01-07 08:08:31', '2021-01-07 08:08:31', 1, NULL),
(6, 1, 5, 4, 3, 70000.00, 210000.00, 1, '2021-01-07 09:03:18', '2021-01-07 09:03:18', 1, NULL),
(7, 1, 5, 5, 1, 60000.00, 60000.00, 1, '2021-01-07 09:03:18', '2021-01-07 09:03:18', 1, NULL),
(8, 1, 7, 5, 2, 60000.00, 120000.00, 1, '2021-01-07 11:50:30', '2021-01-07 11:50:30', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `total_price` double(18,2) DEFAULT NULL,
  `payment_method_id` bigint(20) DEFAULT NULL,
  `total_point_used` double(18,2) DEFAULT NULL,
  `total_voucher` double(18,2) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `user_id`, `total_price`, `payment_method_id`, `total_point_used`, `total_voucher`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 6, 6826.00, 1, NULL, NULL, 2, '2020-12-16 01:08:41', '2020-12-16 01:08:41', 6, NULL),
(2, 1, 210000.00, 1, NULL, NULL, 2, '2021-01-07 07:41:43', '2021-01-07 07:41:43', 1, NULL),
(3, 1, 70000.00, 1, NULL, NULL, 2, '2021-01-07 07:56:00', '2021-01-07 07:56:00', 1, NULL),
(4, 1, 260000.00, 1, NULL, NULL, 2, '2021-01-07 08:08:31', '2021-01-07 08:08:31', 1, NULL),
(5, 1, 270000.00, 1, NULL, NULL, 2, '2021-01-07 09:03:18', '2021-01-07 09:03:18', 1, NULL),
(6, 1, 0.00, 2, NULL, NULL, 2, '2021-01-07 10:33:30', '2021-01-07 10:33:30', 1, NULL),
(7, 1, 120000.00, 1, NULL, NULL, 2, '2021-01-07 11:50:30', '2021-01-07 11:50:30', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `id` bigint(20) NOT NULL,
  `partner_name` varchar(100) NOT NULL,
  `partner_image` char(50) NOT NULL,
  `partner_link` varchar(100) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`id`, `partner_name`, `partner_image`, `partner_link`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'PT. Citra Satria Utama', '5fd96dd7c9dfb.png', 'http://citradistribution.com', 1, '2020-11-29 02:44:16', '2020-12-15 19:15:51', NULL, NULL);

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
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `id` bigint(20) NOT NULL,
  `payment_method_code` varchar(255) NOT NULL,
  `payment_method_name` varchar(255) NOT NULL,
  `payment_method_image` char(50) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`id`, `payment_method_code`, `payment_method_name`, `payment_method_image`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'CA', 'CASH', '5fd9c0817c357.jpg', 1, '2020-12-16 01:08:33', '2020-12-16 01:08:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_category_id` bigint(20) NOT NULL,
  `price` double(18,2) DEFAULT NULL,
  `product_image` char(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_code`, `product_name`, `product_category_id`, `price`, `product_image`, `description`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(4, 'GDC', 'Glowing Day Cream', 8, 70000.00, '5ff7156099ae1.jpg', NULL, 1, '2021-01-07 07:06:24', '2021-01-07 07:06:24', NULL, NULL),
(5, 'GDG', 'Bright & Glow Facial Wash', 8, 60000.00, '5ff7170e88750.jpg', NULL, 1, '2021-01-07 07:13:34', '2021-01-07 07:13:34', NULL, NULL),
(6, 'CS001', 'Cleansing Spray', 8, 28500.00, '5ff74fb7ae427.jpg', 'Cream siang glow luxury mengandung whitening dan \r\nspf. 50\r\n🌸🌸 Cream Warna Pink\r\nHarga untuk per pcs yaa..', 1, '2021-01-07 11:15:19', '2021-01-07 11:15:19', NULL, NULL),
(7, 'FC123', 'Facial Wash Oil Acne Skin', 8, 34000.00, '5ff75048cd544.jpg', 'Active ingredient Salicylic Acid 2% Purpose Acne Treatment Inactive ingredients Water, Sodium C14-16 Olefin Sulfonate, Cocamidopropyl Betaine, Sodium Chloride, PEG-80 Sorbitan La', 1, '2021-01-07 11:17:44', '2021-01-07 11:17:44', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_banner`
--

CREATE TABLE `product_banner` (
  `id` bigint(20) NOT NULL,
  `product_banner_code` varchar(20) NOT NULL,
  `product_banner_image` char(50) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_banner`
--

INSERT INTO `product_banner` (`id`, `product_banner_code`, `product_banner_image`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'SR', '5fd96f62b123f.jpg', 1, '2020-12-15 19:18:02', '2020-12-15 19:22:26', NULL, NULL),
(2, 'ST', '5fd96f841fe66.jpg', 1, '2020-12-15 19:23:00', '2020-12-15 19:23:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_best`
--

CREATE TABLE `product_best` (
  `id` bigint(20) NOT NULL,
  `product_category_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `new_price` double(18,2) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_best`
--

INSERT INTO `product_best` (`id`, `product_category_id`, `product_id`, `new_price`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 1, 2, 4000.00, 1, '2020-12-15 03:06:11', '2020-12-15 03:06:11', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` bigint(20) NOT NULL,
  `product_category_code` varchar(255) NOT NULL,
  `product_category_name` varchar(50) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `product_category_code`, `product_category_name`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(8, 'BD', 'Bedak', 1, '2021-01-07 07:04:21', '2021-01-07 07:04:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_deal`
--

CREATE TABLE `product_deal` (
  `id` bigint(20) NOT NULL,
  `product_category_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `valid_until` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `new_price` double(18,2) DEFAULT NULL,
  `badge_text` varchar(30) DEFAULT NULL,
  `badge_sub_text` varchar(30) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_deal`
--

INSERT INTO `product_deal` (`id`, `product_category_id`, `product_id`, `valid_until`, `new_price`, `badge_text`, `badge_sub_text`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 1, 2, '2020-12-19 17:00:00', 4000.00, 'SALE', 'NEW', 1, '2020-12-15 02:54:47', '2020-12-15 02:59:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_home`
--

CREATE TABLE `product_home` (
  `id` bigint(20) NOT NULL,
  `product_home_title` varchar(255) NOT NULL,
  `product_home_sub_title` varchar(255) NOT NULL,
  `product_home_image` char(50) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_home`
--

INSERT INTO `product_home` (`id`, `product_home_title`, `product_home_sub_title`, `product_home_image`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'ELSHA Beauty House', 'Jl. May Zen, Sei Selayur (Komplek Ruko Pusri II No.2), Kec. Kalidoni, Kota Palembang, Sumatera Selatan 30161', '5ff74db068046.jpeg', 1, '2020-11-29 07:55:39', '2021-01-07 11:06:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_mostview`
--

CREATE TABLE `product_mostview` (
  `id` bigint(20) NOT NULL,
  `product_category_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `mostview_price` double(18,2) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_stock`
--

CREATE TABLE `product_stock` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_stock`
--

INSERT INTO `product_stock` (`id`, `product_id`, `stock`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(4, 4, 20, 1, '2021-01-07 07:31:46', '2021-01-07 07:31:46', NULL, NULL),
(5, 5, 30, 1, '2021-01-07 07:31:53', '2021-01-07 07:31:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_trend`
--

CREATE TABLE `product_trend` (
  `id` bigint(20) NOT NULL,
  `product_category_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `valid_until` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `new_price` double(18,2) DEFAULT NULL,
  `badge_text` varchar(30) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_trend`
--

INSERT INTO `product_trend` (`id`, `product_category_id`, `product_id`, `valid_until`, `new_price`, `badge_text`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 2, 1, '2020-12-15 09:48:43', 5000.00, 'SALE', 1, '2020-12-15 02:48:43', '2020-12-15 02:48:43', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` bigint(20) NOT NULL,
  `service_code` varchar(255) NOT NULL,
  `service_name` text NOT NULL,
  `service_icon` varchar(50) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `service_code`, `service_name`, `service_icon`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'CL', 'Konsultasi (Gratis)', 'icon-beenhere', 1, '2021-01-07 06:57:10', '2021-01-07 11:07:29', NULL, NULL),
(2, 'CP', 'Chemical Peeling', 'icon-beenhere', 1, '2021-01-07 11:07:54', '2021-01-07 11:07:54', NULL, NULL),
(3, 'LB', 'Laser Blackdoll Skin Rejuve / Flek / Acne / Tatto', 'icon-beenhere', 1, '2021-01-07 11:08:19', '2021-01-07 11:08:19', NULL, NULL),
(4, 'E', 'Electrocauter', 'icon-beenhere', 1, '2021-01-07 11:09:00', '2021-01-07 11:09:00', NULL, NULL),
(5, 'IJP', 'Injeksi Jerawat Parah', 'icon-beenhere', 1, '2021-01-07 11:09:13', '2021-01-07 11:09:13', NULL, NULL),
(6, 'IAG', 'Infus Acne Glow', 'icon-beenhere', 1, '2021-01-07 11:09:37', '2021-01-07 11:09:37', NULL, NULL),
(7, 'PS', 'Produk Skincare Sesuai Keluhan', 'icon-beenhere', 1, '2021-01-07 11:09:49', '2021-01-07 11:09:49', NULL, NULL),
(8, 'M', 'Mesotherapy', 'icon-beenhere', 1, '2021-01-07 11:10:57', '2021-01-07 11:10:57', NULL, NULL),
(9, 'YT', '12PL Yellow Toning / Acne / Hair Removal / Telangiektasi', 'icon-beenhere', 1, '2021-01-07 11:12:15', '2021-01-07 11:12:15', NULL, NULL),
(10, 'SC', 'Slimming Care', 'icon-beenhere', 1, '2021-01-07 11:12:26', '2021-01-07 11:12:26', NULL, NULL),
(11, 'IK', 'Infus Kromosom', 'icon-beenhere', 1, '2021-01-07 11:12:35', '2021-01-07 11:12:35', NULL, NULL),
(12, 'FT', 'Facial Treatment', 'icon-beenhere', 1, '2021-01-07 11:12:47', '2021-01-07 11:12:47', NULL, NULL),
(13, 'IW', 'Injeksi & Infus Whitening', 'icon-beenhere', 1, '2021-01-07 11:13:00', '2021-01-07 11:13:00', NULL, NULL),
(14, 'FK', 'HIFU Face Lifting / Double Chin / Eyebag / Neck / Vaginal', 'icon-beenhere', 1, '2021-01-07 11:13:14', '2021-01-07 11:13:14', NULL, NULL),
(15, 'IKL', 'Injeksi Keloid', 'icon-beenhere', 1, '2021-01-07 11:13:26', '2021-01-07 11:13:26', NULL, NULL),
(16, 'IDW', 'Infus Double Whitening', 'icon-beenhere', 1, '2021-01-07 11:13:39', '2021-01-07 11:13:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_information`
--

CREATE TABLE `shop_information` (
  `id` bigint(20) NOT NULL,
  `shop_code` varchar(50) NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `shop_logo` char(50) NOT NULL,
  `shop_description` text DEFAULT NULL,
  `shop_address` text DEFAULT NULL,
  `shop_email` varchar(50) DEFAULT NULL,
  `shop_call_us` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop_information`
--

INSERT INTO `shop_information` (`id`, `shop_code`, `shop_name`, `shop_logo`, `shop_description`, `shop_address`, `shop_email`, `shop_call_us`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'SHOP001', 'Shoping Center', '5fc37a86bb11a.png', 'We are a team of designers and developers that create high quality eCommerce, WordPress, Shopify .', '4710-4890 Breckinridge USA', 'demo@hasthemes.com', '(08) 23 456 789', 1, '2020-11-29 03:40:06', '2020-11-29 03:40:06', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) NOT NULL,
  `social_media_name` varchar(255) NOT NULL,
  `social_media_link` varchar(255) NOT NULL,
  `social_media_icon` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `social_media_name`, `social_media_link`, `social_media_icon`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Twitter', 'http://www.twitter.com', 'ion-social-twitter', 1, '2020-11-28 03:03:34', '2020-11-28 03:03:34', NULL, NULL),
(2, 'Google', 'http://www.google.com', 'ion-social-googleplus-outline', 1, '2020-11-28 03:04:03', '2020-11-28 03:04:03', NULL, NULL),
(3, 'Youtube', 'http://www.youtube.com', 'ion-social-youtube-outline', 1, '2020-11-28 03:04:25', '2020-11-28 03:04:25', NULL, NULL),
(4, 'Facebook', 'http://www.facebook.com', 'ion-social-facebook', 1, '2020-11-28 03:04:45', '2020-11-28 03:04:45', NULL, NULL),
(5, 'Instagram', 'http://www.instagram.com', 'ion-social-instagram-outline', 1, '2020-11-28 03:05:08', '2020-11-28 03:05:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id` bigint(20) NOT NULL,
  `subscriber_email` varchar(255) NOT NULL,
  `subscriber_date` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `role` int(11) NOT NULL DEFAULT 1,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `status`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dodi Novembri', 'dodinovembri32@gmail.com', '2020-11-26 14:33:57', 1, 1, '$2y$10$0Y6NB/N3U3PKDuRnpzJV8.y1vRryU8XfcKzOYi6eJb7EUJZSfvbYa', NULL, NULL, NULL),
(2, 'Dodi Novembri', 'dodinovembriA32@gmail.com', NULL, 1, 2, '$2y$10$jSlvM.K3aizGdKukXssNleu7tjl6K2mrvlBfw6K7ySreVxYdlt91O', NULL, '2020-12-12 23:43:42', '2020-12-12 23:43:42'),
(3, 'Dodi Novembri', 'dodinovembri32@gmail.coms', NULL, 1, 2, '$2y$10$YYUi1XMh2oU4VaNhL2R0kOrcMinW3U5AZ1ANhdIzRNej0olvDufyK', NULL, '2020-12-12 23:49:51', '2020-12-12 23:49:51'),
(4, 'Dodi Novembri', 'dodinovembri32@gmail.comw', NULL, 1, 2, '$2y$10$HtLi9Q5EKshh2.LZ83leg.tf7M9q087lxMKcXbNwGk/BUkphEMvUu', NULL, '2020-12-12 23:51:16', '2020-12-12 23:51:16'),
(5, 'dhik', 'dhika@gmail.com', NULL, 1, 2, '$2y$10$gHlDOz3LMNpyd2G4AOdS.u0XboaSvMkhs0H5tO0Mir0UK2FIGJSTm', NULL, '2020-12-13 00:17:44', '2020-12-13 00:17:44'),
(6, 'Quality Assurance', 'qa@gmail.com', NULL, 1, 2, '$2y$10$vzesEB.1Y.r24gagpA55Decl7E/a0gCyfEyHwM6PWVPA1iwef5wqi', NULL, '2020-12-16 01:07:23', '2020-12-16 01:07:23'),
(7, 'Dodi Novembri`', 'dodinovembri@gmail.com', NULL, 1, 2, '$2y$10$rh1o7YhjFJGnuPJcMC4G1ONPiUrYzuCjI1AE5CtXsGO7bi.zGmQ3y', NULL, '2021-01-07 12:59:57', '2021-01-07 12:59:57');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `voucher_code` varchar(50) NOT NULL,
  `voucher_percentage` int(11) NOT NULL,
  `voucher_description` text NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advantage`
--
ALTER TABLE `advantage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consultation`
--
ALTER TABLE `consultation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consultation_detail`
--
ALTER TABLE `consultation_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languange`
--
ALTER TABLE `languange`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_banner`
--
ALTER TABLE `product_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_best`
--
ALTER TABLE `product_best`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_deal`
--
ALTER TABLE `product_deal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_home`
--
ALTER TABLE `product_home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_mostview`
--
ALTER TABLE `product_mostview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_stock`
--
ALTER TABLE `product_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_trend`
--
ALTER TABLE `product_trend`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_information`
--
ALTER TABLE `shop_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advantage`
--
ALTER TABLE `advantage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cart_detail`
--
ALTER TABLE `cart_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `consultation`
--
ALTER TABLE `consultation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `consultation_detail`
--
ALTER TABLE `consultation_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languange`
--
ALTER TABLE `languange`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_banner`
--
ALTER TABLE `product_banner`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_best`
--
ALTER TABLE `product_best`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_deal`
--
ALTER TABLE `product_deal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_home`
--
ALTER TABLE `product_home`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_mostview`
--
ALTER TABLE `product_mostview`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_stock`
--
ALTER TABLE `product_stock`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_trend`
--
ALTER TABLE `product_trend`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `shop_information`
--
ALTER TABLE `shop_information`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
