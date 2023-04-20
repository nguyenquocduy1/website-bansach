-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 19, 2022 lúc 01:12 PM
-- Phiên bản máy phục vụ: 5.7.36
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `websitebansach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

DROP TABLE IF EXISTS `binhluan`;
CREATE TABLE IF NOT EXISTS `binhluan` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `IdSach` int(10) UNSIGNED NOT NULL,
  `IdKH` int(10) UNSIGNED NOT NULL,
  `HoTen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NoiDung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ngay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `Duyet` tinyint(1) NOT NULL,
  `Xoa` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `binhluan_idsach_foreign` (`IdSach`),
  KEY `binhluan_idkh_foreign` (`IdKH`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `IdSach`, `IdKH`, `HoTen`, `NoiDung`, `Ngay`, `TrangThai`, `Duyet`, `Xoa`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Ngân Trần', 'ok', '09-02-2022 22:07', 1, 1, 1, '2022-02-09 08:07:02', '2022-10-11 04:50:06'),
(2, 1, 4, 'Ngân Trần', 'okll', '09-02-2022 22:09', 1, 1, 1, '2022-02-09 08:09:16', '2022-10-11 04:50:10'),
(3, 1, 4, 'Ngân Trần', 'ok', '09-02-2022 22:22', 1, 0, 1, '2022-02-09 08:22:28', '2022-10-11 04:51:00'),
(4, 1, 4, 'Ngân Trần', 'ok', '09-02-2022 22:23', 1, 1, 0, '2022-02-09 08:23:01', '2022-07-22 21:46:55'),
(5, 1, 4, 'Ngân Trần', 'ok', '09-02-2022 22:24', 1, 0, 1, '2022-02-09 08:24:10', '2022-02-10 07:54:16'),
(6, 1, 4, 'Ngân Trần', 'ok lam', '20-02-2022 08:56', 1, 1, 1, '2022-02-19 18:56:26', '2022-10-11 04:51:04'),
(7, 36, 7, 'Bich Tran', 'Sách Khá Hay..!!!', '13-07-2022 08:59', 1, 1, 0, '2022-07-12 18:59:30', '2022-07-12 18:59:50'),
(8, 7, 10, 'KieuNgaNguyenThi', 'Sách này hay quá...!!', '20-07-2022 18:23', 1, 0, 1, '2022-07-20 04:23:44', '2022-07-20 05:40:06'),
(9, 30, 11, 'KieuNgaNguyen', 'Sách hay quá..!!', '20-07-2022 19:24', 1, 1, 1, '2022-07-20 05:24:57', '2022-07-20 05:39:58'),
(10, 153, 1, 'Nguyễn Khánh', 'test', '26-07-2022 06:18', 1, 1, 0, '2022-07-26 06:18:45', '2022-07-26 06:52:21'),
(11, 155, 1, 'Nguyễn Khánh', 'Sách này hay nè', '26-07-2022 06:53', 1, 0, 0, '2022-07-26 06:53:28', '2022-07-26 06:53:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadonban`
--

DROP TABLE IF EXISTS `chitiethoadonban`;
CREATE TABLE IF NOT EXISTS `chitiethoadonban` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `IdSach` int(10) UNSIGNED NOT NULL,
  `IdHoaDB` int(10) UNSIGNED NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `GiaBan` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chitiethoadonban_idsach_foreign` (`IdSach`),
  KEY `chitiethoadonban_idhoadb_foreign` (`IdHoaDB`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadonban`
--

INSERT INTO `chitiethoadonban` (`id`, `IdSach`, `IdHoaDB`, `SoLuong`, `GiaBan`, `created_at`, `updated_at`) VALUES
(23, 155, 24, 1, 15000, '2022-10-11 04:55:43', '2022-10-11 04:55:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

DROP TABLE IF EXISTS `giohang`;
CREATE TABLE IF NOT EXISTS `giohang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Sach` int(11) UNSIGNED NOT NULL,
  `Id_TK` int(11) UNSIGNED NOT NULL,
  `So_Luong` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Id_Sach` (`Id_Sach`),
  KEY `Id_TK` (`Id_TK`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`id`, `Id_Sach`, `Id_TK`, `So_Luong`, `TrangThai`, `created_at`, `updated_at`) VALUES
(27, 155, 14, 1, 0, '2022-10-11 04:52:56', '2022-10-11 04:55:43'),
(28, 155, 13, 1, 1, '2022-11-17 17:47:54', '2022-11-17 17:47:54'),
(25, 153, 13, 1, 0, '2022-10-11 04:34:07', '2022-10-11 04:37:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadonban`
--

DROP TABLE IF EXISTS `hoadonban`;
CREATE TABLE IF NOT EXISTS `hoadonban` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `IdKH` int(10) UNSIGNED NOT NULL,
  `NgayLap` date NOT NULL,
  `DiaChiGH` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TongTien` int(11) NOT NULL,
  `id_makm` int(10) UNSIGNED DEFAULT NULL,
  `PhuongTTT` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hoadonban_idkh_foreign` (`IdKH`),
  KEY `id_makm` (`id_makm`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadonban`
--

INSERT INTO `hoadonban` (`id`, `IdKH`, `NgayLap`, `DiaChiGH`, `SDT`, `TongTien`, `id_makm`, `PhuongTTT`, `TrangThai`, `created_at`, `updated_at`) VALUES
(24, 14, '2022-10-11', '45A Đường Nam Kỳ Khởi Nghĩa ,Phường Bến Nghé ,Quận 1, TP Hồ Chí Minh', '0937653620', 30000, NULL, 1, 1, '2022-10-11 04:55:43', '2022-10-11 04:55:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kho`
--

DROP TABLE IF EXISTS `kho`;
CREATE TABLE IF NOT EXISTS `kho` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `IdSach` int(10) UNSIGNED NOT NULL,
  `SoLuongTon` int(11) NOT NULL,
  `Xoa` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kho_idsach_foreign` (`IdSach`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `kho`
--

INSERT INTO `kho` (`id`, `IdSach`, `SoLuongTon`, `Xoa`, `created_at`, `updated_at`) VALUES
(1, 2, 98, 0, '2022-02-15 06:05:26', '2022-06-04 08:04:56'),
(2, 3, 99, 0, '2022-02-15 06:05:57', '2022-07-20 08:57:46'),
(3, 1, 106, 0, '2022-02-15 08:39:33', '2022-07-02 22:59:01'),
(4, 4, 110, 0, '2022-02-15 08:53:04', '2022-02-18 20:18:43'),
(5, 5, 99, 0, NULL, '2022-05-21 23:46:32'),
(6, 7, 99, 0, '2022-03-06 23:41:12', '2022-05-21 23:59:03'),
(7, 6, 100, 0, '2022-03-06 23:41:54', '2022-03-06 23:41:54'),
(8, 8, 101, 0, '2022-03-06 23:42:15', '2022-07-02 22:59:13'),
(9, 9, 100, 0, '2022-03-06 23:42:24', '2022-03-06 23:42:24'),
(10, 10, 100, 0, '2022-03-06 23:42:33', '2022-03-06 23:42:33'),
(11, 11, 99, 0, '2022-03-06 23:42:41', '2022-05-21 23:53:51'),
(12, 12, 99, 0, '2022-03-06 23:42:52', '2022-05-21 23:53:51'),
(13, 13, 100, 0, '2022-03-06 23:43:00', '2022-03-06 23:43:00'),
(14, 14, 100, 0, '2022-03-06 23:43:09', '2022-03-06 23:43:09'),
(15, 15, 100, 0, '2022-03-06 23:43:18', '2022-03-06 23:43:18'),
(16, 16, 100, 0, '2022-03-06 23:43:29', '2022-03-06 23:43:29'),
(17, 17, 100, 0, '2022-03-06 23:43:36', '2022-03-06 23:43:36'),
(18, 18, 100, 0, '2022-03-06 23:43:43', '2022-03-06 23:43:43'),
(19, 19, 100, 0, '2022-03-06 23:43:52', '2022-03-06 23:43:52'),
(20, 20, 100, 0, '2022-03-06 23:44:00', '2022-03-06 23:44:00'),
(21, 21, 100, 0, '2022-03-06 23:44:09', '2022-03-06 23:44:09'),
(22, 22, 100, 0, '2022-03-06 23:44:22', '2022-03-06 23:44:22'),
(23, 23, 100, 0, '2022-03-06 23:44:32', '2022-03-06 23:44:32'),
(24, 24, 100, 0, '2022-03-06 23:44:40', '2022-03-06 23:44:40'),
(25, 25, 99, 0, '2022-03-06 23:44:53', '2022-07-20 08:50:36'),
(26, 26, 100, 0, '2022-03-06 23:45:16', '2022-03-06 23:45:16'),
(27, 27, 100, 0, '2022-03-06 23:45:25', '2022-03-06 23:45:25'),
(28, 28, 100, 0, '2022-03-06 23:45:42', '2022-03-06 23:45:42'),
(29, 29, 100, 0, '2022-03-06 23:45:52', '2022-03-06 23:45:52'),
(30, 30, 98, 0, '2022-03-06 23:46:04', '2022-07-12 21:39:49'),
(31, 31, 30, 0, '2022-03-06 23:46:17', '2022-07-20 08:50:24'),
(32, 32, 57, 0, '2022-03-06 23:46:29', '2022-07-20 18:45:06'),
(33, 33, 97, 0, '2022-03-06 23:46:45', '2022-07-06 06:26:53'),
(34, 34, 100, 0, '2022-03-06 23:46:59', '2022-03-06 23:46:59'),
(35, 35, 72, 0, '2022-03-06 23:47:23', '2022-06-26 04:26:32'),
(36, 36, 93, 0, '2022-03-06 23:47:40', '2022-07-20 08:43:53'),
(37, 37, 100, 0, '2022-03-06 23:47:52', '2022-03-06 23:47:52'),
(38, 38, 97, 0, '2022-03-06 23:48:01', '2022-06-04 04:03:22'),
(39, 39, 99, 0, '2022-03-06 23:48:12', '2022-06-10 22:19:15'),
(40, 40, 97, 0, '2022-03-06 23:48:30', '2022-06-26 04:27:54'),
(41, 41, 51, 0, '2022-03-06 23:48:47', '2022-07-20 09:26:17'),
(42, 42, 54, 0, '2022-03-06 23:49:01', '2022-07-20 18:48:40'),
(43, 43, 94, 0, '2022-03-06 23:49:18', '2022-06-03 08:10:15'),
(44, 44, 100, 0, '2022-03-06 23:49:27', '2022-03-06 23:49:27'),
(45, 45, 99, 0, '2022-03-06 23:49:42', '2022-07-12 21:50:09'),
(46, 46, 100, 0, '2022-03-06 23:50:07', '2022-03-06 23:50:07'),
(47, 47, 100, 0, '2022-03-06 23:50:26', '2022-03-06 23:50:26'),
(48, 48, 100, 0, '2022-03-06 23:50:40', '2022-03-06 23:50:40'),
(49, 49, 100, 0, '2022-03-06 23:50:55', '2022-03-06 23:50:55'),
(50, 50, 100, 0, '2022-03-06 23:51:10', '2022-03-06 23:51:10'),
(51, 51, 100, 0, '2022-03-06 23:51:24', '2022-03-06 23:51:24'),
(52, 52, 100, 0, '2022-03-06 23:51:34', '2022-03-06 23:51:34'),
(53, 53, 100, 0, '2022-03-06 23:51:45', '2022-03-06 23:51:45'),
(54, 54, 100, 0, '2022-03-06 23:51:59', '2022-03-06 23:51:59'),
(55, 55, 100, 0, '2022-03-06 23:52:12', '2022-03-06 23:52:12'),
(56, 56, 100, 0, '2022-03-06 23:52:23', '2022-03-06 23:52:23'),
(57, 57, 100, 0, '2022-03-06 23:52:33', '2022-03-06 23:52:33'),
(58, 58, 100, 0, '2022-03-06 23:52:45', '2022-03-06 23:52:45'),
(59, 59, 100, 0, '2022-03-06 23:52:59', '2022-03-06 23:52:59'),
(60, 60, 100, 0, '2022-03-06 23:53:13', '2022-03-06 23:53:13'),
(61, 61, 100, 0, '2022-03-06 23:53:24', '2022-03-06 23:53:24'),
(62, 62, 100, 0, '2022-03-06 23:53:35', '2022-03-06 23:53:35'),
(63, 63, 87, 0, '2022-03-06 23:53:47', '2022-07-20 08:47:11'),
(64, 64, 99, 0, '2022-03-06 23:54:11', '2022-07-12 21:22:48'),
(65, 65, 100, 0, '2022-03-06 23:54:37', '2022-03-06 23:54:37'),
(66, 66, 100, 0, '2022-03-06 23:54:55', '2022-03-06 23:54:55'),
(67, 67, 99, 0, '2022-03-06 23:55:05', '2022-07-12 21:39:24'),
(68, 68, 99, 0, '2022-03-06 23:55:19', '2022-07-20 08:56:07'),
(69, 69, 96, 0, '2022-03-06 23:55:42', '2022-06-04 08:04:54'),
(70, 70, 100, 0, '2022-03-06 23:55:52', '2022-03-06 23:55:52'),
(71, 71, 100, 0, '2022-03-06 23:56:22', '2022-03-06 23:56:22'),
(72, 72, 100, 0, '2022-03-06 23:57:11', '2022-03-06 23:57:11'),
(73, 73, 100, 0, '2022-03-06 23:57:31', '2022-03-06 23:57:31'),
(74, 74, 100, 0, '2022-03-06 23:57:54', '2022-03-06 23:57:54'),
(75, 75, 100, 0, '2022-03-06 23:58:14', '2022-03-06 23:58:14'),
(76, 76, 100, 0, '2022-03-06 23:58:32', '2022-03-06 23:58:32'),
(77, 77, 100, 0, '2022-03-06 23:58:47', '2022-03-06 23:58:47'),
(78, 78, 83, 0, '2022-03-06 23:58:59', '2022-07-12 21:39:07'),
(79, 79, 99, 0, '2022-03-06 23:59:16', '2022-06-20 07:41:48'),
(80, 80, 100, 0, '2022-03-06 23:59:47', '2022-03-06 23:59:47'),
(81, 81, 97, 0, '2022-03-07 00:00:02', '2022-05-27 20:07:11'),
(82, 82, 99, 0, '2022-03-07 00:03:35', '2022-07-20 08:47:30'),
(83, 83, 100, 0, '2022-03-07 00:03:59', '2022-03-07 00:03:59'),
(84, 84, 100, 0, '2022-03-07 00:04:24', '2022-03-07 00:04:24'),
(85, 85, 100, 0, '2022-03-07 00:04:46', '2022-03-07 00:04:46'),
(86, 86, 100, 0, '2022-03-07 00:05:02', '2022-03-07 00:05:02'),
(87, 87, 100, 0, '2022-03-07 00:05:14', '2022-03-07 00:05:14'),
(88, 88, 100, 0, '2022-03-07 00:05:29', '2022-03-07 00:05:29'),
(89, 89, 100, 0, '2022-03-07 00:05:41', '2022-03-07 00:05:41'),
(90, 90, 100, 0, '2022-03-07 00:05:53', '2022-03-07 00:05:53'),
(91, 91, 100, 0, '2022-03-07 00:06:18', '2022-03-07 00:06:18'),
(92, 92, 100, 0, '2022-03-07 00:06:39', '2022-03-07 00:06:39'),
(93, 93, 100, 0, '2022-03-07 00:07:00', '2022-03-07 00:07:00'),
(94, 94, 100, 0, '2022-03-07 00:07:58', '2022-03-07 00:07:58'),
(95, 95, 100, 0, '2022-03-07 00:08:13', '2022-03-07 00:08:13'),
(96, 96, 100, 0, '2022-03-07 00:08:46', '2022-03-07 00:08:46'),
(97, 97, 100, 0, '2022-03-07 00:08:58', '2022-03-07 00:08:58'),
(98, 98, 100, 0, '2022-03-07 00:09:12', '2022-03-07 00:09:12'),
(99, 99, 100, 0, '2022-03-07 00:09:27', '2022-03-07 00:09:27'),
(100, 100, 100, 0, '2022-03-07 00:09:50', '2022-03-07 00:09:50'),
(101, 101, 100, 0, '2022-03-07 00:10:22', '2022-03-07 00:10:22'),
(102, 102, 100, 0, '2022-03-07 00:10:39', '2022-03-07 00:10:39'),
(103, 103, 100, 0, '2022-03-07 00:10:58', '2022-03-07 00:10:58'),
(104, 104, 99, 0, '2022-03-07 00:11:16', '2022-07-12 21:22:33'),
(105, 105, 100, 0, '2022-03-07 00:11:34', '2022-03-07 00:11:34'),
(106, 106, 100, 0, '2022-03-07 00:11:44', '2022-03-07 00:11:44'),
(107, 107, 100, 0, '2022-03-07 00:11:59', '2022-03-07 00:11:59'),
(108, 108, 100, 0, '2022-03-07 00:12:13', '2022-03-07 00:12:13'),
(109, 109, 100, 0, '2022-03-07 00:12:38', '2022-03-07 00:12:38'),
(110, 110, 99, 0, '2022-03-07 00:12:54', '2022-05-27 20:25:30'),
(111, 111, 100, 0, '2022-03-07 00:13:09', '2022-03-07 00:13:09'),
(112, 112, 100, 0, '2022-03-07 00:13:31', '2022-03-07 00:13:31'),
(113, 113, 100, 0, '2022-03-07 00:13:54', '2022-03-07 00:13:54'),
(114, 114, 100, 0, '2022-03-07 00:14:13', '2022-03-07 00:14:13'),
(115, 115, 100, 0, '2022-03-07 00:14:31', '2022-03-07 00:14:31'),
(116, 116, 100, 0, '2022-03-07 00:14:44', '2022-03-07 00:14:44'),
(117, 117, 100, 0, '2022-03-07 00:15:00', '2022-03-07 00:15:00'),
(118, 118, 100, 0, '2022-03-07 00:15:53', '2022-03-07 00:15:53'),
(119, 119, 100, 0, '2022-03-07 00:16:09', '2022-03-07 00:16:09'),
(120, 120, 100, 0, '2022-03-07 00:16:31', '2022-03-07 00:16:31'),
(121, 121, 100, 0, '2022-03-07 00:16:53', '2022-03-07 00:16:53'),
(122, 122, 100, 0, '2022-03-07 00:17:07', '2022-03-07 00:17:07'),
(123, 123, 100, 0, '2022-03-07 00:19:08', '2022-03-07 00:19:08'),
(124, 124, 100, 0, '2022-03-07 00:19:41', '2022-03-07 00:19:41'),
(125, 125, 100, 0, '2022-03-07 00:19:55', '2022-03-07 00:19:55'),
(126, 126, 100, 0, '2022-03-07 00:20:11', '2022-03-07 00:20:11'),
(127, 127, 100, 0, '2022-03-07 00:20:36', '2022-03-07 00:20:36'),
(128, 128, 100, 0, '2022-03-07 00:21:06', '2022-03-07 00:21:06'),
(129, 129, 100, 0, '2022-03-07 00:21:22', '2022-03-07 00:21:22'),
(130, 130, 100, 0, '2022-03-07 00:21:41', '2022-03-07 00:21:41'),
(131, 131, 95, 0, '2022-03-07 00:22:08', '2022-07-12 21:22:10'),
(132, 132, 66, 0, '2022-03-07 00:22:30', '2022-07-12 21:22:11'),
(133, 133, 100, 0, '2022-03-07 00:22:46', '2022-06-03 08:10:17'),
(134, 134, 100, 0, '2022-03-07 00:23:01', '2022-03-07 00:23:01'),
(135, 135, 100, 0, '2022-03-07 00:23:18', '2022-03-07 00:23:18'),
(136, 136, 99, 0, '2022-03-07 00:23:31', '2022-05-22 02:20:21'),
(137, 137, 99, 0, '2022-03-07 00:23:43', '2022-07-20 08:56:49'),
(138, 138, 100, 0, '2022-03-07 00:23:58', '2022-03-07 00:23:58'),
(139, 139, 100, 0, '2022-03-07 00:24:11', '2022-03-07 00:24:11'),
(140, 140, 100, 0, '2022-03-07 00:24:24', '2022-03-07 00:24:24'),
(141, 141, 100, 0, '2022-03-07 00:24:35', '2022-03-07 00:24:35'),
(142, 142, 100, 0, '2022-03-07 00:24:47', '2022-03-07 00:24:47'),
(143, 143, 100, 0, '2022-03-07 00:25:01', '2022-03-07 00:25:01'),
(144, 144, 100, 0, '2022-03-07 00:25:19', '2022-03-07 00:25:19'),
(145, 145, 100, 0, '2022-03-07 00:25:36', '2022-03-07 00:25:36'),
(146, 146, 100, 0, '2022-03-07 00:25:53', '2022-03-07 00:25:53'),
(147, 147, 100, 0, '2022-03-07 00:26:13', '2022-03-07 00:26:13'),
(148, 148, 100, 0, '2022-03-07 00:26:25', '2022-03-07 00:26:25'),
(149, 149, 97, 0, '2022-03-07 00:26:38', '2022-07-06 07:00:54'),
(150, 150, 99, 0, '2022-03-07 00:26:50', '2022-07-12 21:47:27'),
(151, 151, 99, 0, '2022-03-07 00:27:02', '2022-07-22 21:49:48'),
(152, 152, 94, 0, '2022-03-07 00:27:16', '2022-07-06 07:16:50'),
(153, 153, 94, 0, '2022-03-07 00:27:28', '2022-10-11 04:37:58'),
(154, 154, 95, 0, '2022-03-07 00:27:38', '2022-07-12 21:21:36'),
(155, 155, 84, 0, '2022-03-07 00:27:51', '2022-10-11 04:55:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

DROP TABLE IF EXISTS `khuyenmai`;
CREATE TABLE IF NOT EXISTS `khuyenmai` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TenCTKM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ThoiGianBD` date NOT NULL,
  `ThoiGianKT` date NOT NULL,
  `ChietKhau` float NOT NULL,
  `TrangThai` int(11) DEFAULT NULL,
  `Xoa` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`id`, `TenCTKM`, `ThoiGianBD`, `ThoiGianKT`, `ChietKhau`, `TrangThai`, `Xoa`, `created_at`, `updated_at`) VALUES
(1, 'chao he', '2022-07-12', '2022-07-12', 5, 1, 0, '2022-07-12 09:32:26', '2022-07-12 09:43:10'),
(2, 'sale thang 9', '2022-07-14', '2022-07-15', 5, 2, 0, '2022-07-12 09:40:49', '2022-07-12 09:40:49'),
(3, 'Tháng 8', '2022-07-13', '2022-07-13', 5, 1, 0, '2022-07-12 19:12:13', '2022-07-12 19:12:13'),
(4, 'Tháng mới', '2022-07-20', '2022-07-22', 5, 1, 0, '2022-07-20 05:40:48', '2022-07-20 07:19:21'),
(5, 'sale lon', '2022-07-20', '2022-07-20', 4, 1, 0, '2022-07-20 05:41:15', '2022-07-20 05:41:15'),
(6, 'tháng 9', '2022-07-21', '2022-07-21', 10, 1, 0, '2022-07-20 19:03:08', '2022-07-20 19:03:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kichthuoc`
--

DROP TABLE IF EXISTS `kichthuoc`;
CREATE TABLE IF NOT EXISTS `kichthuoc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kichthuoc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Xoa` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `kichthuoc`
--

INSERT INTO `kichthuoc` (`id`, `kichthuoc`, `Xoa`, `created_at`, `updated_at`) VALUES
(1, '20.5 x 14.5 cm', 0, '2022-07-16 03:21:17', '2022-07-16 03:21:17'),
(2, '14.5 x 20.5 cm', 0, '2022-07-16 03:21:39', '2022-07-16 03:21:39'),
(3, '13 x 20 cm', 0, '2022-07-16 03:21:48', '2022-07-16 03:21:48'),
(4, '13 x 20.5 cm', 0, '2022-07-16 03:56:58', '2022-07-16 03:56:58'),
(5, '15.5 x 23 cm', 0, '2022-07-16 03:57:22', '2022-07-16 03:57:22'),
(6, '20.5 x 15 cm', 0, '2022-07-16 03:57:58', '2022-07-16 03:57:58'),
(7, '20.5 x 14.5 x 0.5', 0, '2022-07-16 03:59:10', '2022-07-16 03:59:10'),
(8, '14 x 20.5 cm', 0, '2022-07-16 03:59:34', '2022-07-16 03:59:34'),
(9, '19 x 13 cm', 0, '2022-07-16 03:59:45', '2022-07-16 03:59:45'),
(10, '20.5 x 14 x 2 cm', 0, '2022-07-16 04:02:24', '2022-07-16 04:02:24'),
(11, '20.5 x 14 cm', 0, '2022-07-16 04:02:54', '2022-07-16 04:02:54'),
(12, '24 x 16 cm', 0, '2022-07-16 04:03:17', '2022-07-16 04:03:17'),
(13, '23 x 15.5 cm', 0, '2022-07-16 04:03:49', '2022-07-16 04:03:49'),
(14, '20.5 x 14 x 0.5 cm', 0, '2022-07-16 04:05:10', '2022-07-16 04:05:10'),
(15, '20.5 x 13 cm', 0, '2022-07-16 04:05:30', '2022-07-16 04:05:30'),
(16, '23 x 15 x 1.5 cm', 0, '2022-07-16 04:05:48', '2022-07-16 04:05:48'),
(17, '14 x 21.5 cm', 0, '2022-07-16 04:06:17', '2022-07-16 04:06:17'),
(18, '25.3 x 18.3 cm', 0, '2022-07-16 04:06:28', '2022-07-16 04:06:28'),
(19, '18.7 x 23.5 cm', 0, '2022-07-16 04:06:46', '2022-07-16 04:06:46'),
(20, '13 x 19 cm', 0, '2022-07-16 04:07:04', '2022-07-16 04:07:04'),
(21, '20 x 14 cm', 0, '2022-07-16 04:07:19', '2022-07-16 04:07:19'),
(22, '24 x 15.5 cm', 0, '2022-07-16 04:07:33', '2022-07-16 04:07:33'),
(23, '15.5 x 24 cm', 0, '2022-07-16 04:07:55', '2022-07-16 05:09:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ma_giamgia`
--

DROP TABLE IF EXISTS `ma_giamgia`;
CREATE TABLE IF NOT EXISTS `ma_giamgia` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoLuong` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ChietKhau` int(11) NOT NULL,
  `LoaiKM` int(11) NOT NULL,
  `NgayBĐ` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NgayKT` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TrangThai` int(11) DEFAULT NULL,
  `Xoa` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Code` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ma_giamgia`
--

INSERT INTO `ma_giamgia` (`id`, `Code`, `SoLuong`, `ChietKhau`, `LoaiKM`, `NgayBĐ`, `NgayKT`, `TrangThai`, `Xoa`, `created_at`, `updated_at`) VALUES
(1, 'MG41657203319', '1', 10, 1, '07-07-2022', '07-08-2022', 0, 0, '2022-07-07 07:15:19', '2022-07-20 18:48:40'),
(2, 'MG81657688877', '1', 10, 1, '13-07-2022', '13-08-2022', 1, 0, '2022-07-12 22:07:57', '2022-07-12 22:07:57'),
(3, 'MG81657689085', '1', 10, 1, '13-07-2022', '13-08-2022', 1, 0, '2022-07-12 22:11:25', '2022-10-11 04:43:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_12_25_053717_create_sach_table', 1),
(5, '2021_12_25_062734_create_theloai_sach_table', 1),
(6, '2021_12_25_062951_create_theloai_table', 1),
(7, '2021_12_25_063221_create_nhacungcap_table', 1),
(8, '2021_12_25_063626_create_sanphamyeuthich_table', 1),
(9, '2021_12_25_063828_create_binhluan_table', 1),
(10, '2021_12_25_064645_create_hoadonnhap_table', 1),
(11, '2021_12_25_065132_create_chitiethoadonnhap_table', 1),
(12, '2021_12_25_065319_create_hoadonban_table', 1),
(13, '2021_12_25_065512_create_chitiethoadonban_table', 1),
(14, '2021_12_25_070748_create_kho_table', 1),
(15, '2021_12_25_070925_create_khuyenmai_table', 1),
(16, '2021_12_26_050958_create_user_table', 1),
(17, '2021_12_27_040827_create_ma_giamgia_table', 1),
(18, '2021_12_27_041201_create_chitiet_ma_giamgia_table', 1),
(19, '2021_12_27_043144_create_add_foreign_key_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
CREATE TABLE IF NOT EXISTS `nhacungcap` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TenNCC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `Xoa` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`id`, `TenNCC`, `DiaChi`, `SDT`, `Email`, `TrangThai`, `Xoa`, `created_at`, `updated_at`) VALUES
(1, 'CTY Khang Phúc', '128 Cô Giang,Q1,TPHCM', '0945623115', 'khangphuc@gmail.com', 1, 0, NULL, '2021-12-31 07:55:15'),
(2, 'TNHH Sách Bình Minh', '81/10 Đường ĐX080, P, Tp. Thủ Dầu Một, Bình Dương ', '0939406365', 'binhminh@gmail.com', 1, 0, NULL, NULL),
(3, 'Công ty TNHH Một Thành Viên Sách Phương Nam', 'Lầu 1, số 940 Đường 3/2, P.15, Q.11, TP. Hồ Chí Minh.', '0939406365', 'phuongnam@gmail.com', 1, 0, '2021-12-31 07:31:06', '2021-12-31 07:31:06'),
(4, 'Minh Long', 'Lầu 1, số 940 Đường 3/2, P.15, Q.11, TP. Hồ Chí Minh.', '0939406365', 'minhlong@gmail.com', 1, 0, '2021-12-31 07:31:06', '2022-01-01 20:38:42'),
(5, 'Nhã Nam', 'số 940 Đường 3/2, P.15, Q.2, TP. Hồ Chí Minh.', '0939406365', 'nhanam@gmail.com', 1, 0, '2021-12-31 07:31:07', '2022-01-01 23:54:53'),
(6, 'FIRST NEWS', '70, Huỳnh Tấn Phát,Q7,TPHCM', '0939406365', 'firstnews@gmail.com', 1, 0, '2022-01-01 20:47:04', '2022-01-01 20:47:04'),
(7, 'Thái Hà', '2, Huỳnh Tấn Phát,Q7,TPHCM', '0939406365', 'thaiha@gmail.com', 1, 0, '2022-01-01 20:47:30', '2022-01-01 20:58:12'),
(8, 'NXB Trẻ', '70, Huỳnnh Thúc Kháng,Q1,TPHCM', '0939406365', 'trenew@gmail.com', 1, 0, '2022-01-01 20:48:15', '2022-01-01 21:42:58'),
(9, '1980 Books', '21, Huỳnh Tấn Phát,Q7,TPHCM', '0939406365', 'abc@gmail.com', 1, 0, '2022-01-01 22:12:23', '2022-01-01 22:12:23'),
(10, 'AZ Việt Nam', '75A, Hoàng Sa,Q2,TPHCM', '0939406365', 'vn@gmail.com', 1, 0, '2022-01-02 00:47:15', '2022-01-02 00:47:15'),
(11, 'Panda Books', 'Số 2, Đường Cao Thắng,Q3,TPHCM', '0939406365', 'panda@gmail.com', 1, 0, '2022-01-02 02:36:13', '2022-01-02 02:36:13'),
(12, 'Cty Văn Hóa Minh Tâm', '10, Nguyễn Văn Linh,Q7,TPHCM', '0939406365', 'minhtam@gmail.com', 1, 0, '2022-01-02 02:58:42', '2022-01-02 02:58:42'),
(13, 'Đinh Tị', 'Tòa Nhà F, Khu B, Q7, TPHCM', '0939406365', 'dinhti@gmail.com', 1, 0, '2022-01-02 03:17:12', '2022-01-02 03:17:12'),
(14, 'NXB Văn Hóa Văn Nghệ TP.HCM', '2A,Huỳnh Văn Lũy,Tân Phú,TPHCM', '0939406365', 'vanhoa@gmail.com', 1, 0, '2022-01-02 06:59:20', '2022-01-02 06:59:20'),
(15, 'NXB Công An Nhân Dân', '25, Nguyễn Huệ,Q1,TPHCM', '0939406365', 'nhandan@gmail.com', 1, 0, '2022-01-02 07:02:32', '2022-01-02 07:02:32'),
(16, 'ZGROUP', '13 Nguyễn Trãi,Q5,TPHCM', '0939406365', 'zgroup@gmail.com', 1, 0, '2022-01-02 22:52:28', '2022-01-02 22:52:28'),
(17, 'Bách Việt', '12B, Khu phố 4, Q1, TPHCM', '0939406365', 'bachviet@gmail.com', 1, 0, '2022-01-02 23:06:35', '2022-01-02 23:06:35'),
(18, 'Alpha Books', '56B, Âu Dương Lân, Q8, TPHCM', '0939406365', 'alpha@gmail.com', 1, 0, '2022-01-03 06:32:46', '2022-01-03 06:32:46'),
(19, 'NXB Tổng Hợp TPHCM', '45, Huỳnh Văn Lũy, Bình Dương', '0939406365', 'tonghop@gmail.com', 1, 0, '2022-01-03 06:52:10', '2022-01-03 06:52:10'),
(20, 'Công Ty Cổ Phần Time Books', '78, Cao Thắng Q3, TPHCM', '0939406365', 'timebooks@gmail.com', 1, 0, '2022-01-03 06:54:27', '2022-01-03 06:54:27'),
(21, 'Cty Văn Hóa HN', '8, Cao Thắng Q3, TPHCM', '0939406365', 'vhhn@gmail.com', 1, 0, '2022-01-03 06:54:58', '2022-01-03 07:00:59'),
(22, 'Cty Sách Dân Trí', '8, Huỳnh Văn Bảy, Q5, TPHCM', '0939406365', 'dantri@gmail.com', 1, 0, '2022-01-03 22:39:09', '2022-01-03 22:39:09'),
(23, 'Công ty Cổ Phần Sách Điện Tử Lộc', '90B, Trần Hưng Đạo, Q5, TPHCM', '0939406365', 'tuloc@gmail.com', 1, 0, '2022-01-03 22:45:23', '2022-01-03 22:45:23'),
(24, 'Skybooks', '4C, Nguyễn Huệ , Q1, TPHCM', '0939406365', 'sky@gmail.com', 1, 0, '2022-01-03 23:00:54', '2022-01-03 23:00:54'),
(25, 'Công ty Cổ Phần Thiên Minh Book', '23, Nguyễn Trãi, Q5, TPHCM', '0939406365', 'thienminh@gmail.com', 1, 0, '2022-01-03 23:04:24', '2022-01-03 23:04:24'),
(26, 'Saigon Books', '75, Nguyễn Hữu Cảnh, Bình Thạnh, TPHCM', '0939406365', 'saigon@gmail.com', 1, 0, '2022-01-04 00:00:56', '2022-01-04 00:00:56'),
(27, 'Rio Book', '45, Nam Kỳ Khởi Nghĩa, Q3, TPHCM', '0939406365', 'riobook@gmail.com', 1, 0, '2022-01-04 00:05:48', '2022-01-04 00:05:48'),
(28, 'Nhà Xuất Bản Kim Đồng', '13, Bà Hạt Q10, TPHCM', '0939406365', 'kimdong@gmail.com', 1, 0, '2022-01-05 01:58:08', '2022-01-05 01:58:08'),
(29, 'Quang Van Books', '81, Nguyễn Đình Chiểu, Q3, TPHCM', '0939406365', 'quangvan@gmail.com', 1, 0, '2022-01-05 02:06:47', '2022-01-05 02:06:47'),
(30, 'Đông A', '43, Trần Hưng Đạo, Q5, TPHCM', '0939406365', 'donga@gmail.com', 1, 0, '2022-01-05 05:15:23', '2022-01-05 05:15:23'),
(31, 'MC Books', '112, Huỳnh Tấn Phát, Q7, TPHCM', '0939406365', 'mcbooks@gmail.com', 1, 0, '2022-01-05 06:15:01', '2022-01-05 06:15:01'),
(32, 'Cty Văn Hóa Việt', '8, Nguyễn Thị Minh Khai, Q3, TPHCM', '0939406365', 'vhv@gmail.com', 1, 0, '2022-01-05 06:29:07', '2022-01-05 06:29:07'),
(33, 'Phụ Nữ', '56, Nguyễn Văn Cừ, Q10, TPHCM', '0939406365', 'phunu@gmail.com', 1, 0, '2022-01-07 23:26:53', '2022-01-07 23:26:53'),
(34, 'Nhà xuất bản Giáo Dục', '212, Lý Thái Tổ, Q10, TPHCM', '0939406365', 'giaoduc@gmail.com', 1, 0, '2022-01-08 06:49:13', '2022-01-18 21:10:42'),
(35, 'Huy Hoang Bookstore', '89 Huỳnh Văn Lũy Q6 TPHCM', '0779123456', 'huyhoang@gmail.com', 1, 0, '2022-03-02 06:54:54', '2022-03-02 06:54:54'),
(36, 'Cty CP Sách Và CN Giáo Dục Việt Nam', '12a, Trần Phú, Q3 TPHCM', '0731456231', 'gdvn@gmail.com', 1, 0, '2022-03-02 08:43:16', '2022-03-02 08:43:16'),
(37, 'Mega Book', '90, Trung Sơn, Q2, TPHCM', '09241564231', 'megabook@gmail.com', 1, 0, '2022-03-02 09:59:14', '2022-03-02 09:59:14'),
(38, 'Nhà Cung Cấp Mới', 'HCM', '1234567890', 'vanan@gmail.com', 1, 1, '2022-07-22 21:46:09', '2022-07-22 21:46:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhaxuatban`
--

DROP TABLE IF EXISTS `nhaxuatban`;
CREATE TABLE IF NOT EXISTS `nhaxuatban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tennhaxb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Xoa` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhaxuatban`
--

INSERT INTO `nhaxuatban` (`id`, `tennhaxb`, `Xoa`, `created_at`, `updated_at`) VALUES
(1, 'NXB Tổng Hợp TPHCM', 0, '2022-07-15 06:01:30', '2022-07-15 06:01:30'),
(2, 'NXB Lao Động', 0, '2022-07-15 06:01:35', '2022-07-15 06:01:35'),
(3, 'NXB Phụ Nữ Việt Nam', 0, '2022-07-15 06:01:41', '2022-07-15 06:01:41'),
(4, 'NXB Thanh Niên', 0, '2022-07-15 06:01:48', '2022-07-15 06:01:48'),
(5, 'NXB Hà Nội', 0, '2022-07-15 06:01:54', '2022-07-15 06:01:54'),
(6, 'NXB Văn hóa Văn nghệ', 0, '2022-07-15 06:01:59', '2022-07-15 06:01:59'),
(7, 'NXB Trẻ', 0, '2022-07-15 06:02:40', '2022-07-15 06:02:40'),
(8, 'NXB Văn Học', 0, '2022-07-15 06:03:12', '2022-07-15 06:03:12'),
(9, 'NXB Hội Nhà Văn', 0, '2022-07-15 06:03:45', '2022-07-15 06:03:45'),
(10, 'NXB Công An Nhân Dân', 0, '2022-07-15 06:04:26', '2022-07-15 06:04:26'),
(11, 'NXB Thế Giới', 0, '2022-07-15 06:06:17', '2022-07-15 06:06:17'),
(12, 'NXB Dân Trí', 0, '2022-07-15 06:06:29', '2022-07-15 06:06:29'),
(13, 'NXB Tài Chính', 0, '2022-07-15 06:06:44', '2022-07-15 06:06:44'),
(14, 'NXB Lao Động – Xã Hội', 0, '2022-07-15 06:07:18', '2022-07-15 06:07:18'),
(15, 'NXB Hồng Đức', 0, '2022-07-15 06:07:30', '2022-07-15 06:07:30'),
(16, 'NXB Thông Tin Và Truyền Thông', 0, '2022-07-15 06:07:40', '2022-07-15 06:07:40'),
(17, 'NXB Công Thương', 0, '2022-07-15 06:07:58', '2022-07-15 06:07:58'),
(18, 'NXB Kim Đồng', 0, '2022-07-15 06:08:13', '2022-07-15 06:08:13'),
(19, 'Văn Học', 0, '2022-07-15 06:08:27', '2022-07-15 06:08:27'),
(20, 'NXB Giáo Dục Việt Nam', 0, '2022-07-15 06:09:23', '2022-07-15 06:09:23'),
(21, 'NXB Đại Học Quốc Gia Hà Nội', 0, '2022-07-15 06:09:49', '2022-07-16 04:48:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

DROP TABLE IF EXISTS `sach`;
CREATE TABLE IF NOT EXISTS `sach` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TenSach` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AnhSach` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NhaXuatBan` int(11) DEFAULT NULL,
  `DichGia` int(11) DEFAULT NULL,
  `IdNCC` int(10) UNSIGNED NOT NULL,
  `LoaiBia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SoTrang` int(11) NOT NULL,
  `KichThuoc` int(11) DEFAULT NULL,
  `NamXB` int(11) NOT NULL,
  `GiaTien` int(11) NOT NULL,
  `MoTa` varchar(2550) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IdKM` int(10) UNSIGNED DEFAULT NULL,
  `TrangThai` int(11) NOT NULL,
  `Xoa` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sach_idkm_foreign` (`IdKM`),
  KEY `IdNCC` (`IdNCC`),
  KEY `NhaXuatBan` (`NhaXuatBan`),
  KEY `DichGia` (`DichGia`),
  KEY `KichThuoc` (`KichThuoc`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`id`, `TenSach`, `AnhSach`, `NhaXuatBan`, `DichGia`, `IdNCC`, `LoaiBia`, `SoTrang`, `KichThuoc`, `NamXB`, `GiaTien`, `MoTa`, `IdKM`, `TrangThai`, `Xoa`, `created_at`, `updated_at`) VALUES
(1, 'Thay Đổi Cuộc Sống Với Nhân Số Học', '1641095760.jpg', 1, 3, 6, '2', 416, 1, 2000, 248000, 'Cuốn sách Thay đổi cuộc sống với Nhân số học là tác phẩm được chị Lê Đỗ Quỳnh Hương phát triển từ tác phẩm gốc “The Complete Book of Numerology” của tiến sỹ David A. Phillips, khiến bộ môn Nhân số học khởi nguồn từ nhà toán học Pythagoras trở nên gần gũi,', NULL, 2, 0, '2021-12-30 21:07:52', '2022-01-01 20:56:00'),
(2, 'Khéo Ăn Nói Sẽ Có Được Thiên Hạ', '1641094895.jpg', 2, 2, 4, '0', 406, 2, 1999, 71500, 'Trong xã hội thông tin hiện đại, sự im lặng không còn là vàng nữa, nếu không biết cách giao tiếp thì dù là vàng cũng sẽ bị chôn vùi. Trong cuộc đời một con người, từ xin việc đến thăng tiến, từ tình yêu đến hôn nhân, từ tiếp thị cho đến đàm phán, từ xã gi', NULL, 2, 0, '2021-12-30 21:07:52', '2022-01-01 20:43:35'),
(3, 'Trên Đường Băng (Tái Bản 2017)', '1641098748.jpg', 3, 4, 8, '2', 308, 3, 2017, 69600, 'Nội dung chính được đề cập trong cuốn sách này là nhận diện và giải quyết triệt để tình trạng thất thoát thường xảy ra trong các cửa hàng bán lẻ, giúp các chủ cửa hàng quản lý hiệu quả mà không cần lo nghĩ trong khi cửa hàng vẫn được vận hành trơn tru. Ki', NULL, 2, 0, '2021-12-30 21:07:52', '2022-01-01 21:45:48'),
(4, 'Đọc Vị Bất Kỳ Ai (Tái Bản 2019)', '1641096310.jpg', 1, 4, 7, '2', 223, 1, 2019, 79000, 'ĐỌC người khác là một trong những công cụ quan trọng, có giá trị nhất, giúp ích cho bạn trong mọi khía cạnh của cuộc sống. ĐỌC VỊ người khác để:\r\n\r\nHãy chiếm thế thượng phong trong việc chủ động nhận biết điều cần tìm kiếm - ở bất kỳ ai bằng cách “thâm nh', NULL, 2, 0, '2022-01-01 21:05:10', '2022-01-01 21:05:10'),
(5, 'Hiểu Về Trái Tim (Tái Bản 2019)', '1641099087.jpg', 4, 5, 6, '2', 480, 4, 2019, 133860, '“Hiểu về trái tim” là một cuốn sách đặc biệt được viết bởi thiền sư Minh Niệm. Với phong thái và lối hành văn gần gũi với những sinh hoạt của người Việt, thầy Minh Niệm đã thật sự thổi hồn Việt vào cuốn sách nhỏ này.\r\n\r\nXuất bản lần đầu tiên vào năm 2011,', NULL, 2, 0, '2022-01-01 21:51:27', '2022-01-01 21:51:27'),
(6, 'Rèn Luyện Tư Duy Phản Biện', '1641100630.jpg', 5, 22, 9, '2', 400, 4, 2017, 81180, 'Như bạn có thể thấy, chìa khóa để trở thành một người có tư duy phản biện tốt chính là sự tự nhận thức. Bạn cần phải đánh giá trung thực những điều trước đây bạn nghĩ là đúng, cũng như quá trình suy nghĩ đã dẫn bạn tới những kết luận đó. Nếu bạn không có ', NULL, 2, 0, '2022-01-01 22:17:10', '2022-01-01 22:17:10'),
(7, 'Dám Bị Ghét - Bản Mới 2021', '1641106701.jpg', 1, 7, 6, '2', 333, 5, 2018, 83520, 'Dám Bị Ghét\r\n\r\nCác mối quan hệ xã hội thật mệt mỏi.\r\n\r\nCuộc sống sao mà nhạt nhẽo và vô nghĩa.\r\n\r\nBản thân mình xấu xí và kém cỏi.\r\n\r\nQuá khứ đầy buồn đau còn tương lai thì mờ mịt.\r\n\r\nYêu cầu của người khác thật khắc nghiệt và phi lý.\r\n\r\nTẠI SAO BẠN CỨ PH', NULL, 2, 0, '2022-01-01 23:58:21', '2022-01-01 23:58:21'),
(8, 'Khi Bạn Đang Mơ Thì Người Khác Đang Nỗ Lực', '1641107213.jpg', 1, 13, 4, '2', 416, 1, 2018, 74750, 'Khi Bạn Đang Mơ Thì Người Khác Đang Nỗ Lực\r\n\r\nNgười khác có thể mang lại cho bạn nhiều lắm là sân khấu, còn vai diễn là do bạn đảm nhiệm. Thế giới này không đợi bạn trưởng thành, cũng chẳng có ai trưởng thành thay bạn, bạn chỉ có thể tự vượt qua gian khổ,', NULL, 2, 0, '2022-01-02 00:06:53', '2022-01-02 00:06:53'),
(9, 'Tuổi Trẻ Đáng Giá Bao Nhiêu? ', '1641108410.jpg', 17, 12, 5, '2', 292, 1, 2018, 69600, '“Bạn hối tiếc vì không nắm bắt lấy một cơ hội nào đó, chẳng có ai phải mất ngủ.\r\n\r\nBạn trải qua những ngày tháng nhạt nhẽo với công việc bạn căm ghét, người ta chẳng hề bận lòng.\r\n\r\nBạn có chết mòn nơi xó tường với những ước mơ dang dở, đó không phải là v', NULL, 2, 0, '2022-01-02 00:26:50', '2022-01-02 00:26:50'),
(10, 'Một Đời Như Kẻ Tìm Đường', '1641108572.jpg', 1, 1, 8, '2', 414, 6, 2019, 155750, 'Hai cuốn sách trước của Giáo sư Phan Văn Trường, Một đời thương thuyết và Một đời quản trị, là sự chắt lọc từ những trải nghiệm trong suốt nhiều năm tháng nghề nghiệp của bản thân. Tuy nhiên, đến với cuốn sách này, tác giả lại muốn dành một khoảng không g', NULL, 2, 0, '2022-01-02 00:29:32', '2022-01-02 00:29:32'),
(11, 'Chạm Nhẹ- Bản Mới 2021', '1641109740.jpg', 14, 6, 10, '0', 248, 1, 2019, 120000, 'Nói đến sự đụng chạm, hầu hết mọi người sẽ cảm thấy khó chịu và nghĩ rằng đó là hành động bất thường làm phá vỡ mọi giới hạn khoảng cách. Tùy vào nền văn hóa của từng nước, ví dụ như ở châu Âu thì đó là một hành động hết sức thân mật và thể hiện sự thân t', NULL, 2, 0, '2022-01-02 00:49:00', '2022-01-02 00:49:00'),
(12, 'Điểm Mù (Tái Bản) - Bản Mới 2021', '1641116402.jpg', 1, 8, 11, '2', 265, 8, 2016, 75650, 'Trong cuốn sách Điểm Mù, những nhà nghiên cứu hàng đầu trong lĩnh vực đạo đức kinh doanh Max Bazerman và Ann Tenbrunsel đã nghiên cứu cách thức chúng ta đánh giá quá cao năng lực để làm những gì chúng ta cho là đúng đắn và chúng ta đã hành xử thiếu đạo đứ', NULL, 2, 0, '2022-01-02 02:40:02', '2022-01-02 02:40:02'),
(13, 'Thuật Đắc Nhân Tâm (Tái Bản 2018)', '1641116686.jpg', 19, 9, 11, '2', 412, 7, 2020, 111980, 'Điều gì có thể chinh phục lòng người? Có phải ai sinh ra cũng có những phẩm chất hay sự nhạy cảm và tinh tế để gặt hái thành công trong mọi mối quan hệ? Chúng ta có thể có những kỹ năng để chinh phục lòng người không hay chỉ chấp nhận những gì Chúa đã ban', NULL, 2, 0, '2022-01-02 02:44:46', '2022-01-02 02:44:46'),
(14, 'Thuận Cho Người Lợi Cho Mình', '1641116874.jpg', 1, 11, 10, '2', 280, 1, 2018, 100920, 'Thuận Cho Người Lợi Cho Mình\r\n\r\nTrong xã hội hiện đại, khi mà con người ngày càng phải đối diện với nhiều lo lắng, thị phi, bất công, cô đơn,... thì vấn đề thành hay bại được quyết định bởi trí tuệ cảm xúc chứ không phải thứ gì khác. Bạn phải làm thế nào ', NULL, 2, 0, '2022-01-02 02:47:54', '2022-01-02 02:47:54'),
(15, 'Dị Bản Của Mỗi Nhà - Gia Đình Thế Hệ Mới', '1641117046.jpg', 8, 1, 8, '2', 244, 9, 2017, 90000, 'Dị Bản Của Mỗi Nhà - Gia Đình Thế Hệ Mới\r\n\r\nHôn nhân đang là một vấn đề xã hội, khi ngày càng có nhiều người không còn háo hức kết hôn, lại xuất hiện lắm quan điểm trái chiều về ly hôn.\r\nQua 35 câu chuyện thực tế về hôn nhân và gia đình được ghi chép bởi ', NULL, 2, 0, '2022-01-02 02:50:46', '2022-01-02 02:50:46'),
(16, 'Hà Nội - Băm Sáu Phố Phường', '1641117659.jpg', 7, 10, 12, '2', 91, 1, 2019, 27000, 'Văn học Việt Nam thời xưa có nhiều tác phẩm có giá trị to lớn về mặt nhân văn và nghệ thuật, đã được công nhận và chứng thực qua thời gian. Bộ sách Việt Nam danh tác bao gồm loạt tác phẩm đi cùng năm tháng như: Số đỏ (Vũ Trọng Phụng), Việc làng (Ngô Tất T', NULL, 2, 0, '2022-01-02 03:00:59', '2022-01-02 03:00:59'),
(17, 'Sóng Ngầm', '1641117858.jpg', 1, 17, 5, '2', 289, 1, 2018, 78300, 'Sóng Ngầm\r\n\r\nBốn nhân vật, mỗi người một giọng kể, mỗi người một tâm tư. Họ bị ràng buộc với nhau bởi một câu chuyện và bởi Lịch sử. Bức thư của Ulma như một con sóng ngầm mang sức mạnh hủy diệt dội lên từ lòng biển tưởng yên bình bao năm, ập vào từng nhâ', NULL, 2, 0, '2022-01-02 03:04:18', '2022-01-02 03:04:18'),
(18, 'Bàn Tay Cho Em', '1641118492.jpg', 1, 16, 5, '2', 268, 1, 2018, 78300, 'Hiro và Satomi, hai đứa trẻ tự chơi và chăm sóc nhau trong căn hộ tập thể nghèo khi mẹ chúng đi làm cả ngày.\r\n\r\nMaho, cô gái 24 tuổi hay ốm, đầy tự ti sợ hãi bỗng gặp hai bố con Yasuo mang tâm hồn bị tổn thương, xa lánh người đời. Takayuki và Hatsue đều l', NULL, 2, 0, '2022-01-02 03:14:52', '2022-01-02 03:14:52'),
(19, 'Chuỗi Đời Bất Tận (Tập 2)', '1641118803.jpg', 1, 13, 13, '2', 360, 10, 2018, 86400, 'Ngày 11 tháng 2 năm 1910, vào một đêm tuyết rơi lạnh giá, Ursula được sinh ra. Nhưng không may, cô bé bị dây rốn quấn quanh cổ và chết.\r\n\r\nNgày 11 tháng 2 năm 1910, vào một đêm tuyết rơi lạnh giá, Ursula được sinh ra. Bác sĩ cắt dây rốn, cô bé được cứu số', NULL, 2, 0, '2022-01-02 03:20:03', '2022-01-02 03:20:03'),
(20, 'Chương Trình Nghị Sự', '1641118951.jpg', 1, 20, 5, '2', 330, 1, 2019, 65250, '“Chúng ta chất vấn Lịch sử, chúng ta khẳng định Lịch sử có lẽ đã buộc các diễn viên chính trong những dằn vặt của chúng ta phải tạo dáng. Chúng ta sẽ không bao giờ thấy ống quần dơ bẩn, khăn bàn ngả vàng, cuống séc, vết cà phê...”\r\n\r\nPhát xít Đức nổi tiến', NULL, 2, 0, '2022-01-02 03:22:31', '2022-01-02 03:22:31'),
(21, 'Con Gái Người Canh Giữ Giấc Mơ - Tập 1', '1641125241.jpg', 1, 14, 13, '2', 396, 1, 2019, 80640, 'Tám năm sau sự mất tích bí ẩn của người bạn trai tên Max Adair, nhà khảo cổ học Isabel Griffin đã cố gắng vượt qua nỗi đau, xây dựng lại cuộc đời cùng cô con gái nhỏ Finn, mối ràng buộc cuối cùng của cô với Max. Nhưng sau khi một loạt sự kiện kỳ lạ xảy ra', NULL, 2, 0, '2022-01-02 05:07:21', '2022-01-02 05:07:21'),
(22, 'Ảo Ảnh Thần Tượng', '1641131868.jpg', 1, 18, 5, '2', 248, 11, 2020, 86130, 'Trước đây tớ không hiểu nổi đám đông người hâm mộ được quay lên ti vi, hoặc là tớ đã được dạy để không thể hiểu được họ. Họ hướng về phía những ca sĩ đang đứng trên sân khấu, gào thét, khóc lóc vật vã đến mức người ta muốn đặt câu hỏi, rốt cuộc là thứ cảm', NULL, 2, 0, '2022-01-02 06:57:48', '2022-01-02 06:57:48'),
(23, 'Thôn 9 Hóc', '1641132071.jpg', 15, 17, 14, '2', 120, 1, 2020, 90000, 'Thôn “9 hóc”\r\n\r\n“Thôn 9 hóc ngắn, nhưng những kỷ niệm trải qua 9 hóc lặng lẽ, chảy dài trong tôi, mải miết.\r\n\r\nThôn 9 hóc là một tập truyện dài dày dặn và trọn vẹn hơn khởi từ tập tạp bút Về lại Ô Loan (2016). Về lại Ô Loan gồm 40 tạp bút viết ròng rã về ', NULL, 2, 0, '2022-01-02 07:01:11', '2022-01-02 07:01:11'),
(24, 'Diều Hâu', '1641132238.jpg', 1, 19, 6, '2', 208, 12, 2020, 70000, 'Bối cảnh truyện là xã M thời kỳ hậu chiến sau năm 75. Một xã tập trung phần lớn là gia đình những người lính cộng hòa sau khi cải tạo về lập nghiệp và sinh sống.\r\n\r\nTừ chuyên án điều tra về cái chết của 2 cha con Vũ Kỳ Vọng và Vũ Kỳ Bình, những chiến sĩ c', NULL, 2, 0, '2022-01-02 07:03:58', '2022-01-02 07:03:58'),
(25, 'Thiên Quan Tứ Phúc - Tập 4', '1641189279.jpg', 1, 15, 16, '2', 416, 13, 2021, 159000, 'Tạ Liên và Sư Thanh Huyền tiếp tục truy tìm chân tướng của Bạch Thoại Chân Tiên, nhưng nào ngờ lại bị cuốn về nơi biển khơi dậy sóng, quỷ thần đối đầu, người phàm cũng bị kéo vào vòng vây. Cuối cùng sự thật hé lộ nơi Hắc Thủy Quỷ Vực, tội ác năm xưa bị ph', NULL, 2, 0, '2022-01-02 22:54:39', '2022-01-02 22:54:39'),
(26, 'Thiên Quan Tứ Phúc - Tập 1', '1641189420.jpg', 21, 21, 16, '2', 456, 14, 2020, 149000, 'Một thái tử điện hạ được vạn người ngưỡng vọng, phi thăng thành tiên. Những tưởng thế là mỹ mãn, nào ngờ y phi thăng hai lần thì hai lần bị đánh xuống trần, từ thần tướng tay hoa tay kiếm muôn dân thờ phụng trở thành tiên nhân đồng nát lang thang khắp ngõ', NULL, 2, 0, '2022-01-02 22:57:00', '2022-01-02 22:57:00'),
(27, 'Thất Tịch Không Mưa (Tái Bản 2019)', '1641189798.jpg', 19, 22, 13, '0', 448, 15, 2019, 72240, 'Từ nhỏ cô đã thầm yêu anh, như số kiếp không thể thay đổi Tình yêu trong sáng ấy, như lần đầu được nếm mùi vị của quả khế mới chín. Sau đó cô và anh xa nhau, gặp lại đều cách nhau ba năm.\r\n\r\nTình yêu, giống như lần đầu được nếm thử quả khế mới chín.\r\n\r\nCh', NULL, 2, 0, '2022-01-02 23:03:18', '2022-01-02 23:03:18'),
(28, 'Thiên Quan Tứ Phúc - Tập 3', '1641189922.jpg', 2, 23, 1, '2', 424, 1, 2021, 130380, 'Gặp lại Thích Dung, chuyện xưa hé lộ, vị thần quan non trẻ lần đầu nếm trải mùi vị đắng cay, ngày xưa điện vàng thềm ngọc, cha mẹ thương yêu, tín đồ tôn thờ, giờ hóa dĩ vãng đau thương.\r\n\r\nTrong đoạn ký ức xa xôi đó thấp thoáng một nhành hoa trắng, là ai ', NULL, 2, 0, '2022-01-02 23:05:22', '2022-01-02 23:05:22'),
(29, 'Yêu Anh Hơn Cả Tử Thần (Tái Bản 2019)', '1641190086.jpg', 1, 16, 17, '2', 241, 1, 2019, 63960, 'Yêu Anh Hơn Cả Tử Thần (Tái Bản 2019)\r\n\r\nThông tin tác giả:\r\n\r\nTào Đình sinh ngày 14/2/1985, bút danh Bảo Thê, là nữ nhà văn trẻ nổi tiếng của Trung Quốc. Cô thường tự cho mình là người EQ lớn hơn IQ, rất ít tham vọng, chỉ muốn viết một chút văn chương tự', NULL, 2, 0, '2022-01-02 23:08:06', '2022-01-02 23:08:06'),
(30, 'Quốc Gia Khởi Nghiệp (Tái Bản 2019)', '1641217542.jpg', 5, 22, 18, '2', 506, 17, 2019, 146780, 'Quốc Gia Khởi Nghiệp - Câu Chuyện Về Nền Kinh Tế Thần Kỳ Của Israel (Tái Bản 2019)\r\n\r\nLà câu chuyện viết về sự phát triển thần kỳ của nền kinh tế Israel từ lúc lập quốc cho đến khi trở thành quốc gia có nền công nghệ hàng đầu thế giới. Quyển sách này có t', NULL, 2, 0, '2022-01-03 06:45:42', '2022-01-03 06:45:42'),
(31, 'Chiến Tranh Tiền Tệ - Ai Thực Sự Là Người Giàu Nhất Thế Giới? (Phần I)', '1641217699.jpg', 14, 21, 17, '0', 532, 16, 2020, 123000, 'Chiến Tranh Tiền Tệ - Ai Thực Sự Là Người Giàu Nhất Thế Giới?\r\n\r\nPhần lớn chúng ta thường nghĩ sự hiện diện của đồng tiền trong cuộc sống là một lẽ đương nhiên, như không khí hay nước vậy. Rất ít người trong chúng ta hiểu được nguồn gốc của tiền bạc cũng ', NULL, 2, 0, '2022-01-03 06:48:19', '2022-01-03 06:49:42'),
(32, 'Kinh Tế Trung Quốc', '1641218006.jpg', 11, 20, 9, '2', 132, 18, 2012, 50840, 'Kinh Tế Trung Quốc Trải qua quá trình phát triển nhanh chóng và liên tục trong hơn 30 năm qua kể từ khi cải cách mở cửa đến nay, kinh tế Trung Quốc đã giành được những thành tựu khiến cả thế giới phải chú ý và trở thành nền kinh tế lớn thứ hai trên thế gi', NULL, 2, 0, '2022-01-03 06:53:26', '2022-01-03 06:53:26'),
(33, 'Bóc Phốt Tài Chính', '1641218217.jpg', 15, 19, 37, '2', 384, 19, 2021, 151200, 'Giới thiệu nội dung sách\r\n\r\nĐây không phải cuốn sách dạy bạn lướt sóng chứng khoán, đây là cuốn sách giúp bạn nhìn rõ những góc tối, góc khuất của chứng khoán\r\n\r\nĐây cũng không phải cuốn sách về tài chính đơn thuần, đây là cuốn sách giúp bạn giữ vững tâm ', NULL, 2, 0, '2022-01-03 06:56:57', '2022-01-03 06:56:57'),
(34, 'Tương Lai Sau Đại Dịch Covid', '1641218349.jpg', 1, 18, 5, '2', 232, 1, 2021, 95700, 'Tương Lai Sau Đại Dịch Covid\r\n\r\nTương lai sau đại dịch Covid được viết ra trong bối cảnh một đại dịch ở tầm mức thảm họa toàn cầu đang bắt đầu làm lung lay các đế chế kinh tế, đe dọa sinh kế người dân, và nhanh chóng làm thay đổi toàn bộ đời sống xã hội ở', NULL, 2, 0, '2022-01-03 06:59:09', '2022-01-03 06:59:09'),
(35, 'Giáo Trình Quản Trị Logistics', '1641218576.jpg', 6, 23, 21, '2', 311, 20, 2018, 108360, 'Giáo trình Quản trị Logistics được biên soạn nhằm đáp ứng yêu cầu giảng dạy và học tập ngày càng mở rộng ở các trường Đại học Kinh tế do GS.TS Đặng Đình Đào, PGS.TS Trần Văn Bão, TS Phạm Cảnh Duy và TS Đặng Thị Thúy Hồng, chịu trách nhiệm đồng chủ biên. Q', NULL, 2, 0, '2022-01-03 07:02:56', '2022-01-03 07:02:56'),
(36, 'Thiên Nga Đen (Tái Bản 2020)', '1641274530.jpg', 1, 9, 18, '2', 628, 1, 2020, 245160, 'Trước khi khám phá ra thiên nga đen tồn tại trên đời (ở Úc), người ta vẫn tin rằng tất cả chim thiên nga trên đời đều có màu trắng. Phát hiện bất ngờ này đã thay đổi toàn bộ thế giới quan của nhân loại (về thiên nga).\r\nChúng ta không biết rất nhiều thứ nh', NULL, 2, 0, '2022-01-03 22:35:30', '2022-01-03 22:35:30'),
(37, '7 Nguyên Tắc Bất Biến Để Xây Dựng Doanh Nghiệp Nhỏ', '1641274665.jpg', 15, 3, 18, '2', 316, 21, 2017, 92820, '7 Nguyên Tắc Bất Biến Để Xây Dựng Doanh Nghiệp Nhỏ\r\n\r\nĐể khởi sự và phát triển thành công một doanh nghiệp nhỏ, nhất định cần chú trọng đúng mức các nguyên tắc nền tảng. Những nguyên tắc đó là gì? Steven S. Little sẽ giúp bạn trả lời câu hỏi hóc búa này t', NULL, 2, 0, '2022-01-03 22:37:45', '2022-01-03 22:37:45'),
(38, 'Nền Kinh Tế Tăng Trưởng Và Sụp Đổ Như Thế Nào? (Tái Bản 2020)', '1641274989.jpg', 1, 1, 22, '2', 292, 22, 2020, 152000, 'Nền Kinh Tế Tăng Trưởng Và Sụp Đổ Như Thế Nào?\r\n\r\nHàng ngày, tất cả chúng ta đều tham gia vào các hoạt động kinh tế. Các phương tiện thông tin đại chúng như truyền hình, báo chí, internet v.v… cũng đầy rẫy những bài viết, phân tích hay đưa tin về các sự k', NULL, 2, 0, '2022-01-03 22:43:09', '2022-01-03 22:43:09'),
(39, 'The Fintech Book - Công Nghệ Tài Chính Dành Cho Người Nhìn Xa Trông Rộng', '1641275234.jpg', 19, 12, 23, '2', 450, 1, 2019, 398000, 'CUỐN SÁCH FINTECH ĐẦU TIÊN ĐƯỢC TẠO RA BỞI CỘNG ĐỒNG TOÀN CẦU\r\n\r\nThe FinTech Book là cuốn cẩm nang hàng đầu về cuộc cách mạng công nghệ tài chính (FinTech) – đề cập đến những đột phá, phát kiến đổi mới và các cơ hội sinh lợi. Được kiến tạo bởi các nhà lãn', NULL, 2, 0, '2022-01-03 22:47:14', '2022-01-03 22:47:14'),
(40, 'Digital Branding - Định Danh Trong Thời Đại Số', '1641276168.jpg', 13, 1, 24, '2', 336, 23, 2021, 97580, 'Digital Branding - Định Danh Trong Thời Đại Số\r\n\r\nDigital branding là một hoạt động nằm trong khái niệm marketing nói chung. Mục tiêu của hoạt động này là xây dựng mối quan hệ tốt đẹp giữa doanh nghiệp và khách hàng (từ nhận diện thương hiệu, tin tưởng th', NULL, 2, 0, '2022-01-03 23:02:48', '2022-01-03 23:02:48'),
(41, 'Thấy Trước Doanh Thu', '1641276991.jpg', 10, 1, 25, '2', 309, 23, 2021, 195160, 'Đây không phải một cuốn sách khác về cách có những cuộc gọi lạnh hay chốt giao dịch. Đây là toàn bộ kinh thư về bán hàng mới cho CEO những doanh nhân và Phó giám đốc bán hàng để hỗ trợ bạn xây dựng một cỗ máy bán hàng. Những gì có thể giúp đội ngũ bán hàn', NULL, 2, 0, '2022-01-03 23:16:31', '2022-01-03 23:16:31'),
(42, 'Bán Hàng Cho Người Giàu', '1641277154.jpg', 17, 22, 25, '2', 714, 1, 2020, 298000, 'Bán hàng cho người giàu - không giới hạn ,không khoan nhượng (cẩm nang trở nên cực kỳ giàu có- cẩm nang bách thắng )\r\n\r\nBán hàng cho những người có thể cho trả\r\n\r\nSỰ THẬT ĐÁNG SỢ : Tầng lớp trung lưu- và những khoản chi tiêu của họ- đang biến mất với tốc ', NULL, 2, 0, '2022-01-03 23:19:14', '2022-01-03 23:19:14'),
(43, 'Tiếp Thị 4.0 - Dịch Chuyển Từ Truyền Thống Sang Công Nghệ Số', '1641277278.jpg', 16, 6, 8, '2', 264, 22, 2017, 89000, 'Tiếp Thị 4.0 - Dịch Chuyển Từ Truyền Thống Sang Công Nghệ Số\r\n\r\nQuyển cẩm nang vô cùng cần thiết cho những người làm tiếp thị trong thời đại số. Được viết bởi cha đẻ ngành tiếp thị hiện đại, cùng hai đồng tác giả là lãnh đạo của công ty MarkPlus, quyển sá', NULL, 2, 0, '2022-01-03 23:21:18', '2022-01-03 23:21:18'),
(44, '22 Quy Luật Bất Biến Trong Marketing (Tái Bản 2021)', '1641277568.jpg', 1, 1, 6, '0', 184, 21, 2021, 63960, 'Trong giai đoạn phát triển kinh tế và cạnh tranh hiện nay, sự thành công trong kinh doanh hay của một thương hiệu phụ thuộc rất nhiều vào cách thức tiến hành công tác marketing. Thế nhưng, hàng tỷ đô la đang bị tiêu phí vào những chương trình marketing ké', NULL, 2, 0, '2022-01-03 23:26:08', '2022-01-03 23:26:58'),
(45, 'Traffic Secrets - Bí Mật Traffic', '1641278191.jpg', 12, 4, 25, '2', 300, 20, 2021, 241200, 'Như các bạn cũng biết Russell Brunson tác giả của 2 cuốn sách nổi tiếng trước đây là Bí Mật DotCom và Bí Mật Chuyên Gia, thời gian này anh cũng cho ra lò cuốn Bí Mật Traffic đang nổi đình nổi đám cộng đồng online. Trong bài viết này mình sẽ Review lại cuố', NULL, 2, 0, '2022-01-03 23:36:31', '2022-01-03 23:36:31'),
(46, 'Content Đúng Là King (Tái Bản 2021)', '1641279533.jpg', 18, 7, 7, '2', 241, 1, 2021, 77430, 'Xây dựng một doanh nghiệp hàng triệu đôla, mà không tốn 1 đồng quảng cáo. Tại sao không? Với những tuyệt chiêu Content Marketing trong cuốn bí kíp này, bạn sẽ còn làm được nhiều hơn thế!\r\n\r\nCuốn sách này sẽ giúp bạn đạt được một số điều:\r\nTrước tiên, bạn ', NULL, 2, 0, '2022-01-03 23:58:53', '2022-01-03 23:58:53'),
(47, 'Kỹ Năng Bán Hàng Tuyệt Đỉnh', '1641279773.jpg', 9, 1, 26, '2', 296, 19, 2019, 90470, 'Kỹ Năng Bán Hàng Tuyệt Đỉnh\r\n\r\nKỹ năng bán hàng tuyệt đỉnh sẽ cho bạn đọc biết được những quy tắc bán hàng, vốn là điều kiện tiên quyết để gặt hái thành công trong bất kỳ lĩnh vực nào, với bất kỳ ai, bất kỳ ở đâu.\r\n\r\nTrong từng trang sách, tác giả Cardone', NULL, 2, 0, '2022-01-04 00:02:53', '2022-01-04 00:02:53'),
(48, 'Digital Marketing - Từ Chiến Lược Đến Thực Thi (Tái Bản)', '1641280117.jpg', 13, 1, 27, '2', 250, 18, 2021, 141400, '20,000 cuốn sách “Digital Marketing - Từ chiến lược đến thực thi\" đã được bán ra liên tục trong suốt gần 3 năm kể từ ngày ra mắt! Có thể nói, Digital Marketing là một trong những cuốn sách best-seller và phổ biến nhất của RIO Book.\r\n\r\n➤ Đây cũng là cuốn s', NULL, 2, 0, '2022-01-04 00:08:37', '2022-01-04 00:08:37'),
(49, 'Nâng Tầm Dịch Vụ (Tái Bản 2020)', '1641280304.jpg', 8, 14, 8, '2', 436, 17, 2020, 150000, 'Cuốn sách tiết lộ sức mạnh của việc cung cấp dịch vụ nâng tầm và các bước đi mà người làm dịch vụ có thể áp dụng nhằm xây dựng văn hóa dịch vụ bền vững, có thể phát huy hiệu quả hàng ngày. Cuốn sách cũng trả lời rất nhiều câu hỏi về quá trình thúc đẩy dịc', NULL, 2, 0, '2022-01-04 00:11:44', '2022-01-04 00:11:44'),
(50, 'Branding For Dummies', '1641280511.jpg', 18, 12, 7, '2', 548, 16, 2019, 186150, 'Nếu bạn đang nghĩ: “Mình làm gì có thương hiệu để mà kiểm soát”, vậy thì cuốn sách Branding for dummies chính xác là dành cho bạn đấy. Cuốn sách cũng dành cho những người muốn xây dựng một thương hiệu tốt hơn, khắc phục hình ảnh cho một thương hiệu đã bị ', NULL, 2, 0, '2022-01-04 00:15:11', '2022-01-04 00:15:11'),
(51, '90% Trẻ Thông Minh Nhờ Cách Trò Chuyện Đúng Đắn Của Cha Mẹ (Tái Bản 2019)', '1641373194.jpg', 7, 1, 28, '2', 176, 15, 2019, 35100, 'Bạn có bao giờ thốt ra những câu dù biết là không nên nói như  “Còn lề mề đến bao giờ nữa hả?” hay “Chẳng được cái trò trống gì, đưa đây xem nào!”… nhưng vẫn lỡ lời không?\r\n\r\nTrong quá trình trẻ trưởng thành, những lời lẽ kiểu “Mày chẳng được cái tích sự ', NULL, 2, 0, '2022-01-05 01:59:54', '2022-01-05 01:59:54'),
(52, 'Vô Cùng Tàn Nhẫn, Vô Cùng Yêu Thương - Tập 1 (Tái Bản 2021)', '1641373314.jpg', 20, 1, 18, '2', 516, 14, 2021, 154980, 'Vô Cùng Tàn Nhẫn Vô Cùng Yêu Thương là cuốn sách nuôi dạy con của một bà mẹ Do Thái sinh ra và lớn lên ở Trung Quốc, đã giáo dục con của mình trở thành triệu phú.\r\n\r\n\"Vô Cùng Tàn Nhẫn Vô Cùng Yêu Thương\" là sự kết hợp phương pháp giáo dục con của Trung Qu', NULL, 2, 0, '2022-01-05 02:01:54', '2022-01-05 02:01:54'),
(53, 'Vắng Cha, Con Trai Lạc Lối', '1641373450.jpg', 2, 4, 7, '2', 300, 13, 2021, 86100, 'Ngày này, rất nhiều người đàn ông có cùng chung cảm giác mong manh về bản dạng nam tính của chính mình. Lòng tự tôn của họ trồi sụt thất thường, họ kìm nén hung tính (kéo theo đó là kìm nén nhu cầu tự khẳng định bản thân), kìm nén hoài bão và bản tính tò ', NULL, 2, 0, '2022-01-05 02:04:10', '2022-01-05 02:04:10'),
(54, 'Chờ Đến Mẫu Giáo Thì Đã Muộn', '1641373700.jpg', 16, 12, 29, '2', 240, 1, 2013, 60030, 'TOP 100 BEST SELLER - Chờ đến mẫu giáo thì đã muộn là cuốn sách bàn về phương pháp giáo dục trẻ trong giai đoạn từ 0 đến 3 tuổi của tác giả Ibuka Masaru, người sáng lập tập đoàn Sony đồng thời là một nhà nghiên cứu giáo dục. Dựa trên những nghiên cứu về s', NULL, 2, 0, '2022-01-05 02:08:20', '2022-01-05 02:08:20'),
(55, 'Nuôi Con Không Phải Là Cuộc Chiến 2 (Tái Bản 2021)', '1641373858.jpg', 15, 3, 7, '2', 258, 12, 2021, 105780, 'Những năm trở lại đây, cùng với sự phát hành của hàng loạt các đầu sách về nuôi con tự lập và nuôi con khoa học thì khái niệm sinh hoạt E.A.S.Y hay chu kì sinh hoạt Bú – Chơi – Ngủ cũng đã không còn xa lạ với các cha mẹ Việt. Việc áp dụng trình tự sinh ho', NULL, 2, 0, '2022-01-05 02:10:58', '2022-01-05 02:10:58'),
(56, 'Nuôi Con Không Phải Là Cuộc Chiến 1 (Tái Bản 2021)', '1641373972.jpg', 3, 10, 7, '1', 199, 11, 2020, 97580, 'Các bạn thân mến, dù là người lớn hay trẻ em, thì chúng ta đều là những cá thể khác nhau từ hình thể, kích thước đến những quan điểm, tính cách, thẩm mỹ, cảm nhận và mong muốn không giống nhau.\r\n\r\nNgay cả những em bé sinh đôi, dù hình dạng có giống nhau đ', NULL, 2, 0, '2022-01-05 02:12:52', '2022-01-05 02:12:52'),
(57, 'Vô Cùng Tàn Nhẫn, Vô Cùng Yêu Thương - Tập 2 (Tái Bản 2017)', '1641374065.jpg', 12, 6, 18, '2', 331, 10, 2017, 103200, 'Vô Cùng Tàn Nhẫn, Vô Cùng Yêu Thương - Tập 2 (Tái Bản 2017)\r\n\r\nVì trái tim có hình ngọn lửa, nên dù yêu con đến mấy, cha mẹ cũng cần phải biết \"tàn nhẫn\", cần phải đẩy con ra khỏi vòng tay ấm áp của mình, dằn lòng tập cho con quen với nghịch cảnh và cố gi', NULL, 2, 0, '2022-01-05 02:14:25', '2022-01-05 02:14:25'),
(58, 'Phương Pháp Dạy Con Không Đòn Roi', '1641374178.jpg', 1, 1, 9, '2', 378, 1, 2017, 85020, 'Phương Pháp Dạy Con Không Đòn Roi\r\n\r\nTóm tắt nội dung:\r\n\r\nCó bao giờ bạn tự hỏi mình, đặc biệt là sau mỗi cuộc đối thoại tuyệt vọng với bọn trẻ, “Mình không thể làm tốt hơn được sao? Mình không thể cư xử đúng mực hơn và là một người cha mẹ có sức ảnh hưởn', NULL, 2, 0, '2022-01-05 02:16:18', '2022-01-05 02:16:18'),
(59, 'Nuôi Con Không Phải Là Cuộc Chiến', '1641374377.jpg', 11, 7, 7, '2', 312, 1, 2019, 79200, 'Nuôi con không phải là cuộc chiến: Cuốn sách không là cẩm nang để bé ăn nhiều tăng cân nhanh hay dạy bé nghe lời răm rắp, mà giúp bạn hiểu con mình hơn. Giúp bạn hiểu chu kỳ sinh học của con và cách phối kết hợp cuộc sống gia đình với chu kỳ sinh học đó c', NULL, 2, 0, '2022-01-05 02:19:37', '2022-01-05 02:19:37'),
(60, 'Con Mình Chẳng Lẽ Lại Vứt', '1641374561.jpg', 8, 23, 7, '0', 328, 9, 2021, 122180, 'Qua cuốn sách này, ba tác giả muốn truyền tải đến các bậc phụ huynh thông điệp: Con bạn đang sống trong một thế giới mà bạn không thể tưởng tượng được khi ở độ tuổi của chúng. Những cách làm cha mẹ hiệu quả của thế hệ trước sẽ không còn hiệu quả nữa. Bạn ', NULL, 2, 0, '2022-01-05 02:22:41', '2022-01-05 02:22:41'),
(61, 'Sách Tương Phản - Kích Thích Thị Giác Trẻ Sơ Sinh - Xin Chào Những Người Bạn Dưới Biển', '1641384731.jpg', 14, 1, 10, '0', 20, 1, 2020, 46400, 'Bộ Sách Tương Phản - Kích Thích Thị Giác Trẻ Sơ Sinh (Bộ 4 Cuốn)\r\n\r\nBỘ SÁCH TƯƠNG PHẢN PHÁT TRIỂN THỊ GIÁC CHO TRẺ SƠ SINH\r\n\r\nNằm trong tủ sách NEWBORN của Fujikids, Bộ sách tương phản gồm 4 cuốn là những hình ảnh gần gũi giúp bé làm quen với các con vật ', NULL, 2, 0, '2022-01-05 05:12:11', '2022-01-05 05:12:11'),
(62, 'Miếng Dán Thần Kì - Chỉ Số Cảm Xúc EQ (3-4 Tuổi)', '1641385086.jpg', 1, 18, 30, '2', 20, 7, 2021, 33930, 'Chắc hẳn ba mẹ nào cũng mong con mình sẽ thông minh, giàu cảm xúc và dồi dào khả năng sáng tạo. Nhưng làm thế nào để giúp trẻ có được sự phát triển toàn diện ấy?\r\n\r\nBộ sách Miếng dán thần kì với ba chủ đề phát triển chỉ số thông minh, chỉ số cảm xúc, chỉ ', NULL, 2, 0, '2022-01-05 05:18:07', '2022-01-05 05:18:07'),
(63, 'Cùng Con Học Nói', '1641387624.jpg', 10, 17, 29, '2', 496, 1, 2018, 103200, '“Cùng con học nói” là cuốn sách được đúc kết sau nhiều năm nghiên cứu và thực nghiệm Chương trình Trẻ học nói của Tiến sĩ Sally Ward. Theo chuyên gia, ba năm đầu đời là giai đoạn then chốt đối với sự phát triển ngôn ngữ và khả năng giao tiếp, cũng như khả', NULL, 2, 0, '2022-01-05 06:00:24', '2022-01-05 06:00:24'),
(64, 'Bí Ẩn Của Não Phải (Tái Bản 2019)', '1641387838.jpg', 9, 1, 6, '2', 223, 6, 2019, 78400, 'Mỗi Đứa Trẻ Là Một Thiên Tài! Những Thành Tựu Của Phương Pháp Tiếp Cận Mới Nhất Trong Giáo Dục\r\n\r\nĐối với trẻ nhỏ việc giúp bé phát triển khả năng tư duy sáng tạo là điều rất quan trọng, vì vậy cha mẹ cần quan tâm giúp trẻ rèn luyện kích thích hoạt động c', NULL, 2, 0, '2022-01-05 06:03:58', '2022-01-05 06:03:58'),
(65, 'Kích Thích Phát Triển Thị Giác Cho Bé Từ 0-12 Tháng: Nụ Cười Xinh', '1641387961.jpg', 1, 5, 1, '0', 6, 1, 2021, 76000, 'CUỐN SÁCH TREO NÔI - MÓN QUÀ THÚ VỊ CHO BÉ TỪ  0 ĐẾN 12 THÁNG\r\n\r\nMột cuốn sách nhỏ nhắn với những bài đồng dao đáng yêu? “Hô biến”, ta sẽ có ngay một món đồ chơi cực kì thú vị. Với móc treo thuận tiện, an toàn, bạn có thể treo cuốn sách thành một chiếc đè', NULL, 2, 0, '2022-01-05 06:06:01', '2022-01-05 06:06:01'),
(66, 'Phát Triển Toàn Diện Giác Quan IQ - Toán Học Vui', '1641388415.jpg', 20, 14, 6, '2', 23, 8, 2016, 17000, 'Phát Triển Toàn Diện Giác Quan IQ - Toán Học Vui\r\n\r\nKhả năng tư duy, sáng tạo là điều mà bậc cha mẹ nào cũng muốn có ở con mình. Nhiều cha mẹ cho rằng sự tư duy, sáng tạo là tài năng bẩm sinh. Nhưng thực tế, sự sáng tạo thuộc về kỹ năng hơn là thiên bẩm, ', NULL, 2, 0, '2022-01-05 06:13:35', '2022-01-05 06:13:35'),
(67, 'Cách Biến Con Bạn Thành Thần Đồng Tài Chính (Ngay Cả Khi Bạn Không Giàu)', '1641388588.jpg', 1, 3, 31, '2', 395, 1, 2019, 134400, 'Hướng dẫn dành cho cha mẹ có con từ 3 đến 23 tuổi \r\n\r\nTheo các nghiên cứu của Đại học Wisconsin - Madison, khi đã lên ba, rất nhiều trẻ em có thể nắm bắt được các khái niệm về kinh tế như giá trị và trao đổi, dù rằng vẫn rất thô sơ. Trẻ cũng có thể kiểm s', NULL, 2, 0, '2022-01-05 06:16:28', '2022-01-05 06:16:28'),
(68, 'Bố Mẹ Yên Tâm Con An Toàn - Dạy Trẻ Tự Bảo Vệ', '1641388850.jpg', 13, 12, 13, '2', 96, 1, 2018, 36000, 'Xã hội ngày càng phát triển thì tỉ lệ thương tích ngoài ý muốn ở trẻ em ngày càng gia tăng, đe dọa đến sự an toàn cũng như tính mạng của các bạn nhỏ. Làm thế nào nâng cao ý thức phòng tránh và bảo vệ bản thân của trẻ là vấn đề đang trở nên cấp bách hơn ba', NULL, 2, 0, '2022-01-05 06:20:50', '2022-01-05 06:20:50'),
(69, 'Kích Thích Phát Triển Thị Giác Cho Bé Từ 0-12 Tháng: Các Con Vật', '1641388953.jpg', 10, 5, 28, '0', 7, 5, 2017, 76000, 'CUỐN SÁCH TREO NÔI - MÓN QUÀ THÚ VỊ CHO BÉ TỪ  0 ĐẾN 12 THÁNG\r\n\r\nMột cuốn sách nhỏ nhắn với những bài đồng dao đáng yêu? “Hô biến”, ta sẽ có ngay một món đồ chơi cực kì thú vị. Với móc treo thuận tiện, an toàn, bạn có thể treo cuốn sách thành một chiếc đè', NULL, 2, 0, '2022-01-05 06:22:33', '2022-01-05 06:22:46'),
(70, 'Phát Triển IQ - Tư Duy Nhanh Nhẹn', '1641389437.jpg', 1, 11, 32, '2', 40, 1, 2021, 87000, 'CUỐN SÁCH TREO NÔI - MÓN QUÀ THÚ VỊ CHO BÉ TỪ  0 ĐẾN 12 THÁNG\r\n\r\nMột cuốn sách nhỏ nhắn với những bài đồng dao đáng yêu? “Hô biến”, ta sẽ có ngay một món đồ chơi cực kì thú vị. Với móc treo thuận tiện, an toàn, bạn có thể treo cuốn sách thành một chiếc đè', NULL, 2, 0, '2022-01-05 06:30:37', '2022-01-05 06:30:37'),
(71, 'Gieo Mầm Tính Cách - Tự Tin (Tái Bản 2019)', '1641389941.jpg', 16, 21, 8, '2', 84, 1, 2022, 27200, 'Tính cách của trẻ được hình thành từ rất sớm, thông qua sự giáo dục trong gia đình, qua những việc làm, lời nói, cách ứng xử của những người xung quanh. Nhưng ở độ tuổi nhỏ, không thể ép trẻ phát triển tính cách theo ý muốn của cha mẹ bằng lời dạy dỗ suôn', NULL, 2, 0, '2022-01-05 06:39:01', '2022-01-05 06:39:01'),
(72, 'Phát Triển Trí Tuệ Cảm Xúc - Cảm Xúc Của Con Màu Gì?', '1641390161.jpg', 1, 8, 5, '2', 40, 1, 2020, 42500, 'PHÁT TRIỂN TRÍ TUỆ CẢM XÚC - hành trang tâm lý vững vàng cho con.\r\n\r\nHữu ích cho phụ huynh và trẻ 3+\r\n\r\nBộ sách thiết thực này là kết hợp giữa những minh họa trực quan cao độ và chủ đề giáo dục trọng yếu. Tất các cuốn sách trong bộ đều có Phần câu hỏi thả', NULL, 2, 0, '2022-01-05 06:42:41', '2022-01-05 06:42:41'),
(73, 'Phát Triển Trí Tuệ Cảm Xúc', '1641390310.jpg', 18, 1, 5, '2', 40, 3, 2020, 45000, '\"PHÁT TRIỂN TRÍ TUỆ CẢM XÚC - hành trang tâm lý vững vàng cho con.\r\nHữu ích cho phụ huynh và trẻ 3+\r\n\r\nBộ sách thiết thực này là kết hợp giữa những minh họa trực quan cao độ và chủ đề giáo dục trọng yếu. Tất các cuốn sách trong bộ đều có Phần câu hỏi thảo', NULL, 2, 0, '2022-01-05 06:45:10', '2022-01-05 06:45:10'),
(74, 'Gieo Mầm Tính Cách - Công Bằng (Tái Bản 2019)', '1641390446.jpg', 15, 13, 8, '2', 84, 4, 2019, 27200, 'Tính cách của trẻ được hình thành từ rất sớm, thông qua sự giáo dục trong gia đình, qua những việc làm, lời nói, cách ứng xử của những người xung quanh. Nhưng ở độ tuổi nhỏ, không thể ép trẻ phát triển tính cách theo ý muốn của cha mẹ bằng lời dạy dỗ suôn', NULL, 2, 0, '2022-01-05 06:47:26', '2022-01-05 06:47:26'),
(75, 'Bé Học Lễ Giáo - Bubu Tập 33: Đi Ngủ (Tái Bản)', '1641390603.jpg', 4, 15, 8, '2', 76, 1, 2016, 9400, 'Bé Học Lễ Giáo - Bubu Tập 33: Đi Ngủ\r\n\r\nNhững câu chuyện lễ giáo trong bộ sách này là những bài giáo dục đạo đức nho nhỏ giúp các em học hỏi những điều hay và tránh những thói quen, tật xấu để trở thành người con ngoan, trò giỏi.', NULL, 2, 0, '2022-01-05 06:50:03', '2022-01-05 06:50:03'),
(76, 'Danh Nhân Thế Giới: Fabrê (Tái Bản 2019)', '1641390994.jpg', 6, 8, 28, '2', 160, 2, 2019, 27000, 'Fabrê là nhà côn trùng học đã khám phá rất nhiều tập tính kì bí của các loài công trùng. Việc nghiên cứu của ông được bắt đầu từ sự hiếu kì và thích thú các loài công trùng từ khi còn nhỏ. Ông luôn đặt ra những câu hỏi “tại sao” và quan sát để giải đáp nh', NULL, 2, 0, '2022-01-05 06:56:34', '2022-01-05 06:56:34'),
(77, 'Who? Chuyện Kể Về: Louis Pasteur (Tái Bản 2020)', '1641391109.jpg', 14, 11, 28, '0', 160, 1, 2020, 52250, 'Các bạn có biết nhà bác học lỗi lạc thời Pháp Louis Pasteur đã phát minh ra vắc xin phòng bệnh than và bệnh dại, cứu nhân loại thoát khỏi những căn bệnh đáng sợ không? Tuy nhiên, ông không đăng kí bảo hộ những phát minh của mình mà cho phép mọi cá nhân, t', NULL, 2, 0, '2022-01-05 06:58:29', '2022-01-07 02:48:38'),
(78, 'Mẹ Hỏi Bé Trả Lời 2-3 Tuổi (Tái Bản 2019)', '1641391202.jpg', 13, 9, 28, '2', 88, 3, 2019, 27000, 'Bộ sách nhỏ xinh “Mẹ hỏi bé trả lời” tập hợp những trò chơi phong phú, câu đố thông minh giúp bé và cha mẹ có thể “học mà chơi, chơi mà học” qua các chủ đề: cách ứng xử, câu hỏi về tự nhiên, không gian, phân biệt hình khối, ngôn ngữ, toán học...\r\n\r\nSách p', NULL, 2, 0, '2022-01-05 07:00:02', '2022-01-05 07:00:02'),
(79, 'Mẹ Hỏi Bé Trả Lời 1-2 Tuổi (Tái Bản 2019)', '1641391365.jpg', 21, 4, 28, '2', 88, 4, 2019, 27000, 'Bộ sách nhỏ xinh “Mẹ hỏi bé trả lời” tập hợp những trò chơi phong phú, câu đố thông minh giúp bé và cha mẹ có thể “học mà chơi, chơi mà học” qua các chủ đề: cách ứng xử, câu hỏi về tự nhiên, không gian, phân biệt hình khối, ngôn ngữ, toán học...\r\n\r\nSách p', NULL, 2, 0, '2022-01-05 07:02:45', '2022-01-05 07:02:45'),
(80, 'Danh Nhân Thế Giới: Napôlêông (Tái Bản 2019)', '1641445883.jpg', 18, 1, 28, '0', 160, 1, 2019, 27000, 'Napôlêông sinh ra ở đảo Coóc (thuộc địa của Pháp). Thân hình nhỏ bé, khuôn mặt trắng, xuất thân không có gì đặc biệt nhưng những câu chuyện về ông vẫn còn lưu truyền cho đến tận ngày nay. Ngay từ nhỏ Napôlêông đã có ước mơ đem lại độc lập cho Tổ quốc và l', NULL, 2, 0, '2022-01-05 09:17:06', '2022-01-07 08:19:10'),
(81, 'Trump - Đừng Bao Giờ Bỏ Cuộc', '1641622466.jpg', 17, 1, 8, '2', 216, 5, 2017, 65000, 'Trump - Đừng Bao Giờ Bỏ Cuộc\r\n\r\nTrump - Đừng bao giờ bỏ cuộc, doanh nhân nổi tiếng nhất thế giới này thẳng thắn giãi bày những thách thức to lớn nhất, những giây phút tệ hại nhất, và những cuộc chiến khốc liệt nhất - và cách ông biến những nghịch cảnh đó ', NULL, 2, 0, '2022-01-07 23:14:26', '2022-01-07 23:14:26'),
(82, 'Điệp Viên Hoàn Hảo X6 (Tái Bản 2019)', '1641622751.jpg', 15, 1, 6, '2', 392, 7, 2019, 134400, 'Cuộc đời hai mặt phi thường của PHẠM XUÂN ẨN Phóng viên Reuters, Time, New York Herald Tribune… &Tướng Tình Báo Chiến Lược Việt Nam VÀ CÔNG BỐ TRAO BẢN QUYỀN “ĐIỆP VIÊN HOÀN HẢO X6” CHO FIRST NEWS - TRI VIỆT -Phạm Xuân Ẩn, một cái tên chứa biết bao điều b', NULL, 2, 0, '2022-01-07 23:19:11', '2022-01-07 23:19:11'),
(83, '45 Đời Tổng Thống Hoa Kỳ', '1641622886.jpg', 20, 7, 18, '0', 1536, 6, 2020, 479200, '45 Đời Tổng Thống Hoa Kỳ\r\n\r\n45 đời tổng thống Hoa Kỳ là một bộ cẩm nang đồ sộ dày hơn 1500 trang, tái hiện toàn bộ lịch sử nước Mỹ. Mỗi tổng thống, một tính cách, một bối cảnh lịch sử, rất nhiều những câu chuyện và bí ẩn xoay quanh, mà không có bất cứ một', NULL, 2, 0, '2022-01-07 23:21:26', '2022-01-07 23:21:26'),
(84, 'Trật Tự Chính Trị Và Suy Tàn Chính Trị', '1641623139.jpg', 2, 19, 18, '0', 808, 1, 2021, 302580, 'Bộ sách về lý thuyết chính trị được đáng giá cao của nhà kinh tế chính trị người Mỹ Francis Fukuyama gồm có 2 tập:\r\n\r\nTập 1 - Nguồn gốc trật tự chính trị: Từ thời tiền sử đến cách mạng Pháp\r\n\r\nTập 2 - Trật tự chính trị và suy tàn chính trị: Từ cách mạng c', NULL, 2, 0, '2022-01-07 23:25:39', '2022-01-07 23:25:39'),
(85, 'Lời Nguyện Cầu Chernobyl', '1641623326.jpg', 3, 1, 33, '2', 364, 11, 2020, 144500, 'Lời nguyện cầu Chernobyl có thể được coi là một bản dịch mới so với ấn bản Lời nguyện cầu từ Chernobyl cũng do Nhà xuất bản Phụ nữ Việt Nam ấn hành năm 2016. Chính tác giả Svetlana Alexievich đã chỉnh sửa, bổ sung đáng kể cho tác phẩm phi hư cấu đặc biệt ', NULL, 2, 0, '2022-01-07 23:28:46', '2022-01-07 23:28:46'),
(86, 'Quân Vương', '1641623495.jpg', 11, 1, 30, '0', 130, 8, 2017, 130000, 'Quân Vương \r\n\r\n“Khiến cho người sợ mình hơn khiến cho người yêu mến mình” (Niccolò Machiavelli)\r\n\r\nÍt có quyển sách nào gây nhiều tranh cãi trong lần xuất bản đầu tiên như Quân vương, và số sách có thể duy trì những cuốc tranh cãi đó trong suốt hơn năm th', NULL, 2, 0, '2022-01-07 23:31:35', '2022-01-07 23:31:35'),
(87, 'Donald Trump - Không Bao Giờ Là Đủ', '1641623610.jpg', 17, 2, 6, '2', 480, 9, 2017, 142400, 'CUỐN SÁCH LÝ GIẢI CON NGƯỜI VÀ TÍNH CÁCH CỦA TỔNG THỐNG NHIỀU SCANDAL NHẤT THẾ GIỚI: DONALD TRUMP\r\n\r\nBằng cách này hay cách khác, Donald Trump đã là chủ đề bàn tán trên khắp đất nước Mỹ suốt gần bốn mươi năm nay. Không một ai trong giới kinh doanh, không ', NULL, 2, 0, '2022-01-07 23:33:30', '2022-01-07 23:33:30'),
(88, 'Con Tàu Ma Của Thế Chiến II', '1641623803.jpg', 19, 3, 18, '2', 436, 1, 2021, 187780, 'Câu chuyện bắt đầu với một vài cái tên trong những người thợ lặn biển sâu giỏi nhất thế giới. Ngoài công việc hằng ngày, họ là những thợ lặn cừ khôi, nghiệp dư mà rất chuyên nghiệp. Họ nghiệp dư ở chỗ lặn không phải nghề của họ mà là đam mê và họ rất chuy', NULL, 2, 0, '2022-01-07 23:36:43', '2022-01-07 23:36:43'),
(89, 'Giới Tinh Hoa Quyền Lực', '1641623943.jpg', 14, 1, 18, '2', 568, 13, 2020, 207200, 'Xuất bản lần đầu tiên năm 1956, Giới tinh hoa quyền lực là tác phẩm kinh điển về khoa học xã hội và phê bình xã hội của nhà xã hội học uy tín C. Wright Mills. Qua những phân tích toàn diện và phê bình sắc sảo, tác phẩm chỉ ra rõ cấu trúc quyền lực tại Mỹ ', NULL, 2, 0, '2022-01-07 23:39:03', '2022-01-07 23:39:03'),
(90, 'Medvedev & Putin Bộ Đội Quyền Lực', '1641624237.jpg', 19, 11, 11, '2', 450, 1, 2009, 52200, 'Medvedev & Putin Bộ Đội Quyền Lực\r\n\r\nCục diện chính trị Nga thay đổi thường mang tính đột ngột, bí mật và khó dự đoán. Medvedev và Putin có quyền sắp xếp chính trị mang tính chiến lược đối với các nhà cầm quyền và những quyền lực tối cao của nước Nga. Put', NULL, 2, 0, '2022-01-07 23:43:57', '2022-01-07 23:43:57'),
(91, 'Fashion Stylist - Vén Màn Hậu Trường Của Những Bước Chân 4.0', '1641624539.jpg', 5, 10, 28, '2', 232, 15, 2021, 114000, 'Kỉ nguyên 4.0 đã tạo ra những thay đổi sâu rộng trong sản xuất và đời sống, đặc biệt có những tác động không nhỏ đến sự chuyển dịch của các ngành nghề trong xã hội. Đứng trước các cơ hội lựa chọn nghề nghiệp phong phú, làm thế nào để người Việt trẻ có thể', NULL, 2, 0, '2022-01-07 23:48:59', '2022-01-07 23:48:59'),
(92, 'BLACKPINK Mãi Mãi Bên Nhau', '1641624656.jpg', 10, 1, 10, '2', 136, 14, 2022, 72200, 'BLACKPINK Mãi Mãi Bên Nhau - Tặng Kèm 4 Postcard Thành Viên BLACKPINK\r\n\r\n“Mình không phải thiên thần, mình chỉ là người bình thường thôi. Nhưng BLINK à! Các cậu là thiên thần của mình.” - Jennie\r\n\r\nLà một fan trung thành của BLACKPINK, chắc hẳn ai cũng bi', NULL, 2, 0, '2022-01-07 23:50:56', '2022-01-07 23:50:56'),
(93, 'BTS Ước Mơ Không Chờ Đợi Ai', '1641624869.jpg', 7, 1, 10, '2', 240, 1, 2022, 132200, 'BTS Ước Mơ Không Chờ Đợi Ai\r\n\r\nCuộc sống không bao giờ là chắc chắn và ước mơ cũng sẽ không chờ đợi ai khi bạn không cố gắng hết mình để theo đuổi. BTS đã nỗ lực không ngừng nghỉ từ con số không để cuối cùng đạt được thứ mà họ chưa từng mường tượng ra trư', NULL, 2, 0, '2022-01-07 23:54:29', '2022-01-07 23:54:29'),
(94, 'Bí Mật Phía Sau Đế Chế Marvel Studios', '1641624989.jpg', 18, 3, 10, '2', 220, 12, 2021, 72160, 'BÍ MẬT PHÍA SAU ĐẾ CHẾ MARVEL STUDIOS - CÂU CHUYỆN ĐỘC QUYỀN VỀ CÔNG TY XUẤT BẢN TỪNG THẤT BẠI TRỞ THÀNH ĐẾ CHẾ SIÊU ANH HÙNG HOLLYWOOD\r\n\r\nBạn có thể học được gì từ những công ty thành công nhất trên thế giới? Alibaba, Apple, Amazon, Microsoft...\r\n\r\nCâu c', NULL, 2, 0, '2022-01-07 23:56:29', '2022-01-07 23:56:29'),
(95, 'Là Người Phụ Nữ Như Tôi Mong Muốn (Tái Bản 2019)', '1641625099.jpg', 13, 6, 10, '2', 301, 17, 2019, 84150, 'Là Người Phụ Nữ Như Tôi Mong Muốn\r\n\r\nCâu chuyện cuộc đời của nữ cường nhân đình đám trong làng thời trang thế giới\r\n\r\nDiane von Furstenberg được mệnh danh là nhà thiết kế có tầm ảnh hưởng nhất nhì làng thời trang đương đại - \"mẹ đẻ\" của chiếc đầm quấn (wr', NULL, 2, 0, '2022-01-07 23:58:19', '2022-01-07 23:58:19'),
(96, 'Sách Giáo Khoa Bộ Lớp 11 - Sách Bài Học (Bộ 14 Cuốn) (2021)', '1641649874.jpg', 9, 1, 34, '2', 1113, 1, 2021, 169000, 'Sách Giáo Khoa Bộ Lớp 11 - Sách Bài Học (Bộ 14 Cuốn) (2021)', NULL, 2, 0, '2022-01-08 06:51:14', '2022-01-08 06:51:14'),
(97, 'Sách Giáo Khoa Bộ Lớp 7 - Sách Bài Học (Bộ 12 Cuốn) (2021)', '1641650101.jpg', 12, 8, 34, '2', 900, 1, 2021, 134000, 'Sách Giáo Khoa Bộ Lớp 7 - Sách Bài Học (Bộ 12 Cuốn) (2021)', NULL, 2, 0, '2022-01-08 06:55:01', '2022-01-08 06:55:01'),
(98, 'Hóa Học 10 (2021)', '1641650503.jpg', 1, 17, 34, '0', 172, 18, 2021, 7000, 'Hóa Học 10 cung cấp thêm nhiều kiến thức mới lạ cho học sinh.', NULL, 2, 0, '2022-01-08 07:01:43', '2022-01-08 07:01:43'),
(99, 'Tập Bản Đồ Địa Lí 9 (2021)', '1641650734.jpg', 17, 15, 34, '2', 89, 16, 2021, 29000, 'Tập Bản Đồ Địa Lí 9 (2021)\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đố', NULL, 2, 0, '2022-01-08 07:05:34', '2022-01-08 07:05:34'),
(100, 'Giáo Dục Công Dân 10 (2021)', '1641650864.jpg', 1, 3, 34, '0', 116, 1, 2021, 3700, 'Sách Giáo Khoa Giáo Dục Công Dân Lớp 10 được bộ Giáo Dục và Đào Tạo biên soạn và phát hành. Sách gồm hai phần :Công dân với việc hình thành thế giới quan,phương pháp luận khoa học và Công dân với Đạo Đức …', NULL, 2, 0, '2022-01-08 07:07:44', '2022-02-18 20:35:17'),
(101, 'Tin Học Dành Cho THCS - Quyển 2 (2021)', '1646205953.jpg', 8, 1, 34, '2', 136, 19, 2019, 12000, 'Sách Tin học dành cho trung học cơ sở - quyển 2 (sử dụng cho học sinh lớp 7) của nhà xuất bản Giáo dục Việt Nam được các tác giả biên soạn với nội dung được cập nhật kịp thời với sự phát triển của công nghệ hiện nay. Nội dung gồm 2 phần chính: Bảng tính v', NULL, 2, 0, '2022-03-02 00:25:53', '2022-03-02 00:25:53'),
(102, 'Luyện Tập Mĩ Thuật 3 - Tập 2 (2021)', '1646206213.jpg', 3, 17, 34, '2', 132, 1, 2018, 15000, 'Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ', NULL, 2, 0, '2022-03-02 00:30:13', '2022-03-02 00:30:13'),
(103, 'Luyện Tập Tin Học 3 - Tập 2 (Cùng IC3 Spark) (2021)', '1646206503.jpg', 4, 11, 34, '2', 142, 20, 2019, 28500, 'Trước yêu cầu cập nhật những phần mềm, công cụ học tập hiện đại cho việc dạy và học môn Tin học cấp Tiểu học của học sinh Thành phố Hồ Chí Minh, Sở Giáo dục và Đào tạo Thành phố Hồ Chí Minh đã phối hợp với Nhà xuất bản Giáo dục Việt Nam tổ chức biên soạn ', NULL, 2, 0, '2022-03-02 00:35:03', '2022-03-02 00:35:03'),
(104, 'Em Tập Viết Đúng Viết Đẹp - Lớp 3 (Tập 2)', '1646212583.jpg', 6, 1, 34, '2', 189, 1, 2018, 11700, 'Em Tập Viết Đúng Viết Đẹp - Lớp 3 (Tập 2)\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thu', NULL, 2, 0, '2022-03-02 02:16:23', '2022-03-02 02:16:23'),
(105, 'Em Vốn Thích Cô Độc Cho Đến Khi Có Anh (Yêu Là Thế Tái Bản) - 2020', '1646213192.jpg', 3, 1, 13, '2', 400, 21, 2020, 86400, 'Em Vốn Thích Cô Độc Cho Đến Khi Có Anh (Yêu Là Thế Tái Bản) - 2020\r\n\r\nTháng 10 vừa qua, nữ tác giả ăn khách Diệp Lạc Vô Tâm đã trở lại sau hai năm vắng bóng với “Yêu là thế”. Cuốn sách sau đó đã được đông đảo bạn đọc đón nhận và “tẩu tán” hết hàng vạn bản', NULL, 2, 0, '2022-03-02 02:26:32', '2022-03-02 02:26:32'),
(106, 'Bến Xe (Tái Bản 2020)', '1646213383.jpg', 21, 1, 13, '2', 284, 22, 2020, 60800, 'Bến Xe (Tái Bản 2020)\r\n\r\nBến Xe\r\n\r\nThứ tôi có thể cho em trong cuộc đời này\r\n\r\nchỉ là danh dự trong sạch\r\n\r\nvà một tương lai tươi đẹp mà thôi.\r\n\r\nThế nhưng, nếu chúng ta có kiếp sau,\r\n\r\nnếu kiếp sau tôi có đôi mắt sáng,\r\n\r\ntôi sẽ ở bến xe này… đợi em.\r\n\r\n', NULL, 2, 0, '2022-03-02 02:29:43', '2022-03-02 02:29:43'),
(107, 'Bên Nhau Trọn Đời (Tái Bản 2019)', '1646213617.jpg', 21, 1, 17, '2', 437, 1, 2019, 108000, 'Bên Nhau Trọn Đời (Tái Bản 2019)\r\nBảy năm trước, vì hiểu lầm và cả sự chen chân của Hà Dĩ Mai mà Triệu Mặc Sênh đau lòng rời bỏ Hà Dĩ Thâm, lên máy bay sang Mỹ. Cô cứ nghĩ rằng anh không đau lòng, là anh đuổi cô đi, mà đâu ngờ cuộc chia ly năm ấy đã trở t', NULL, 2, 0, '2022-03-02 02:33:37', '2022-03-02 02:33:37'),
(108, 'All In Love - Ngập Tràn Yêu Thương (Tái Bản 2020)', '1646213813.jpg', 18, 1, 13, '2', 416, 23, 2020, 95200, 'Từ Vi Vũ hơi mắc bệnh sạch sẽ, có chút bỉ ổi, có chút mặt dày, tuy nhiên trước mặt người ngoài anh luôn hào hoa phong nhã, sống tách biệt, độc lập, lạnh lùng mà kiêu ngạo, lạnh lùng mà xa cách, trong sự xa cách ấy lại toát lên sự cao quý. Nhưng cứ về đến ', NULL, 2, 0, '2022-03-02 02:36:53', '2022-03-02 02:36:53'),
(109, 'Economix - Các Nền Kinh Tế Vận Hành (Và Không Vận Hành) Thế Nào Và Tại Sao?', '1646222748.jpg', 20, 5, 5, '2', 310, 23, 2019, 129200, 'Nếu các bạn từng tìm cách hiểu những khái niệm kinh tế qua việc đọc vô số giáo trình kinh tế học, nhưng vẫn thấy thật khó hình dung được bức tranh toàn cảnh về bộ môn này, thì cuốn sách sẽ cung cấp cho các bạn một mảnh ghép hoàn chỉnh cho những mảnh nho n', NULL, 2, 0, '2022-03-02 05:05:48', '2022-03-02 05:05:48'),
(110, 'Chiếc Lexus Và Cây Ô Liu (Tái Bản 2020)', '1646223030.jpg', 16, 21, 17, '2', 566, 22, 2020, 204000, 'Trong cuốn Chiếc Lexus Và Cây Ô Liu, Thomas L. Friedman, người từng đoạt giải Pulitzer, bình luận viên quan hệ quốc tế của The New York Times, đưa ra một cái nhìn xuyên suốt về hệ thống quốc tế mới đang làm biến đổi tình hình thế giới ngày nay. Toàn cầu h', NULL, 2, 0, '2022-03-02 05:10:30', '2022-03-02 05:10:30'),
(111, 'Economix - Các Nền Kinh Tế Vận Hành (Và Không Vận Hành) Thế Nào Và Tại Sao?', '1646223194.jpg', 7, 2, 5, '0', 310, 1, 2019, 129200, 'Nếu các bạn từng tìm cách hiểu những khái niệm kinh tế qua việc đọc vô số giáo trình kinh tế học, nhưng vẫn thấy thật khó hình dung được bức tranh toàn cảnh về bộ môn này, thì cuốn sách sẽ cung cấp cho các bạn một mảnh ghép hoàn chỉnh cho những mảnh nho n', NULL, 2, 0, '2022-03-02 05:13:14', '2022-04-22 08:10:00'),
(112, 'Kinh Tế Đêm & Phi Chính Thức', '1646223401.jpg', 1, 15, 7, '2', 216, 20, 2020, 240000, 'Kinh Tế Đêm & Phi Chính Thức\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (', NULL, 2, 0, '2022-03-02 05:16:41', '2022-03-02 05:16:41'),
(113, 'Quảng Trường Và Tòa Tháp', '1646223567.jpg', 11, 18, 18, '0', 696, 1, 2020, 286180, '“Quảng trường và tòa tháp: Mạng lưới và quyền lực, từ Hội Tam điểm đến Facebook” (tên tiếng Anh: “The Square And The Tower: Networks And Power, From The Freemasons To Facebook”) là tác phẩm mới nhất của tác giả từng đạt nhiều giải thưởng nổi tiếng của Anh', NULL, 2, 0, '2022-03-02 05:19:27', '2022-03-02 05:19:27'),
(114, 'Thế Giới Hậu Vắc Xin Covid 19', '1646223736.jpg', 14, 1, 5, '2', 204, 18, 2021, 86200, 'Sau những dự báo về tương lai và những tác động chưa từng có tiền lệ đối với kinh doanh, nền kinh tế và xã hội của đại dịch Covid-19, trong cuốn sách này, tác giả Jason tiếp tục đưa ra những dự báo về thế giới sau khi vắc xin đã được chủng ngừa rộng rãi.\r', NULL, 2, 0, '2022-03-02 05:22:16', '2022-03-02 05:22:16'),
(115, 'Thế Hệ Z: Hiểu Rõ Về Thế Hệ Sẽ Định Hình Tương Lai Của Doanh Nghiệp', '1646224060.jpg', 1, 10, 10, '2', 316, 19, 2019, 111200, 'Thế hệ Z hiện nay phần lớn là những người dưới 20 tuổi (sinh năm 1995 đến 2015).\r\n\r\nThế hệ Z nắm trong tay công cụ hoạt động và sáng tạo rất hiệu quả là công nghệ, sống trong các mạng xã hội với tính tương tác cao, cho nên, nhóm dân số này được kỳ vọng sẽ', NULL, 2, 0, '2022-03-02 05:27:40', '2022-03-02 05:27:40'),
(116, 'Khát Vọng Việt - Tập 1: Vì Sao Đất Nước Ta Còn Nghèo', '1646224233.jpg', 21, 4, 7, '2', 372, 21, 2021, 120390, 'Khát Vọng Việt - Tập 1: Vì Sao Đất Nước Ta Còn Nghèo\r\n\r\nKhát vọng Việt: Vì sao đất nước ta còn nghèo? là tập hợp những bài viết của Đỗ Cao Bảo, nhà đồng sáng lập, phó tổng giám đốc phụ trách kinh doanh tập đoàn FPT. Sinh ra và lớn lên trong những năm thán', NULL, 2, 0, '2022-03-02 05:30:33', '2022-03-02 05:30:33'),
(117, 'Tự Chữa Lành Thông Qua Hiểu Biết Về Khoa Học Tâm Thức', '1646224779.jpg', 4, 10, 7, '2', 280, 1, 2021, 97580, 'Tự chữa lành thông qua hiểu biết về khoa học tâm thức, cuốn sách được ThS. BS Dương Quỳnh Châu ghi chép những lời giảng của Pradeep Vijay & Navneet Kaur. Cuốn sách sẽ phù hợp với ai đang trên hành trình tìm kiếm sứ mệnh tâm linh của mình trong kiếp này, c', NULL, 2, 0, '2022-03-02 05:39:39', '2022-03-02 05:39:39'),
(118, 'Tâm Lý Học Hiện Đại - Nhìn Thấu Tâm Can, Thay Đổi Tâm Trí', '1646224957.jpg', 1, 16, 10, '2', 320, 17, 2021, 123000, '[TÂM LÝ HỌC HIỆN ĐẠI - NHÌN THẤU TÂM CAN, THAY ĐỔI TÂM TRÍ]\r\n\r\nTâm lý học đang là lĩnh vực được xã hội quan tâm, ngày càng có nhiều người tìm hiểu và mong muốn dấn thân phát triển trong lĩnh vực này. Tuy nhiên, đây cũng chính là bộ môn khoa học rất dễ bị ', 1, 2, 0, '2022-03-02 05:42:37', '2022-03-02 05:42:37'),
(119, 'Thuật Phân Tích Tâm Lí Và Hành Vi Như Một FBI', '1646225109.jpg', 13, 9, 28, '2', 260, 16, 2021, 64600, 'Cục Điều tra Liên bang (Hoa Kì), gọi tắt FBI, có vai trò quan trọng trong việc điều tra tội phạm,\r\n\r\nđảm bảo an ninh quốc gia. Vậy cơ quan FBI lừng danh thế giới sở hữu những bản lĩnh tuyệt mật nào mà có thể lập nên những thành tích thần kì đến vậy trong ', 1, 2, 0, '2022-03-02 05:45:09', '2022-03-02 05:45:09');
INSERT INTO `sach` (`id`, `TenSach`, `AnhSach`, `NhaXuatBan`, `DichGia`, `IdNCC`, `LoaiBia`, `SoTrang`, `KichThuoc`, `NamXB`, `GiaTien`, `MoTa`, `IdKM`, `TrangThai`, `Xoa`, `created_at`, `updated_at`) VALUES
(120, 'Nghiệp Tình Yêu - Karma Of Love (Tái Bản 2021)', '1646225273.jpg', 1, 1, 7, '2', 589, 15, 2021, 163200, 'Geshe Michael Roach đã viết cuốn sách Năng đoạn Kim cương. Nó được đặt theo tên của một bộ kinh nổi tiếng giải thích về nghiệp cùng khía cạnh kém quan trọng hơn của nó, đó là khái niệm “không” trong Phật giáo. Nó đã trở thành cuốn sách kinh doanh bán chạy', 1, 2, 0, '2022-03-02 05:47:53', '2022-03-02 05:47:53'),
(121, 'Bách Khoa Tri Thức Về Khám Phá Thế Giới Cho Trẻ Em', '1646225752.jpg', 4, 23, 13, '2', 56, 1, 20200404, 44000, 'Bách khoa tri thức về khám phá thế giới cho trẻ em là bộ sách được biên soạn dành riêng cho các bạn nhỏ từ 6 tuổi trở lên. Bộ sách cực kỳ hấp dẫn với:\r\n\r\n- Nội dung đa dạng, thuộc nhiều lĩnh vực từ khoa học tự nhiên đến khoa học xã hội bao gồm thiên văn, ', 1, 2, 0, '2022-03-02 05:55:52', '2022-03-02 05:55:52'),
(122, 'Khủng Long Nhỏ - Đừng Đẩy Nhé', '1646225897.jpg', 1, 18, 1, '0', 28, 14, 2018, 58650, 'Bộ sách Khủng Long Nhỏ DINOS gồm 4 quyển tương ứng 4 chủ đề dành cho các bé từ 3 tuổi trở lên. Thông qua chú khủng long DINOS đáng yêu, các bé sẽ học được những hành xử tích cực ứng xử lịch sự và những từ vựng đầu tiên qua những cấu trúc câu từ đơn giản.\r', 1, 2, 0, '2022-03-02 05:58:17', '2022-03-02 05:58:17'),
(123, 'Lớp Học Vui Về Thời Gian - Time', '1646226079.jpg', 1, 2, 10, '2', 32, 1, 20190707, 46400, 'Hoạt động trong một ngày của bé diễn ra như thế nào? Bé thức dậy lúc mấy giờ? Mấy giờ bé đến trường? Bé có đi ngủ đúng giờ không đấy?\r\nNếu như không biết xem đồng hồ thì chúng ta sẽ sắp xếp THỜI GIAN ra sao đây? Cùng học cách xem đồng hồ thôi nào!\r\nCuốn s', NULL, 2, 0, '2022-03-02 06:01:19', '2022-03-02 06:01:19'),
(124, 'Khám Phá Đầu Tiên Của Tớ Về… - Từ Vựng', '1646226304.jpg', 16, 20, 13, '2', 100, 13, 2020, 80000, 'Khám phá đầu tiên của tớ về Từ vựng được ra đời với kỳ vọng hoàn thành mục tiêu làm giàu vốn từ vựng và tăng cường khả năng phản ứng của các bạn nhỏ. Xuyên suốt cuốn sách, các bé sẽ được:\r\n\r\n- Trải qua các thử thách nhẹ nhàng, bổ ích, lôi cuốn từ đó ghi n', NULL, 2, 0, '2022-03-02 06:05:04', '2022-03-02 06:05:04'),
(125, '10 Vạn Câu Hỏi Vì Sao - Các Hiện Tượng Tự Nhiên Kỳ Thú (Tái Bản 2018)', '1646226481.jpg', 8, 18, 13, '2', 80, 12, 2018, 46750, 'Tại sao ngày nào mặt trời cũng mọc? Tại sao chim sẻ luôn nhảy lò cò trên mặt đất? Tại sao con nòng nọc lại không giống như mẹ nó nhỉ? Liệu mình có thể bay được như chú chim kia không?... Trong con mắt trẻ thơ, thế giới này vừa mới mẻ, vừa huyền bí. Vũ trụ', NULL, 2, 0, '2022-03-02 06:08:01', '2022-03-02 06:08:01'),
(126, 'Tài Liệu Dạy Và Học Vật Lí 8 (2021)', '1646227143.jpg', 1, 1, 3, '2', 180, 1, 2021, 42750, 'Tài Liệu Dạy Và Học Vật Lý 8 (2021)\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập', NULL, 2, 0, '2022-03-02 06:19:03', '2022-03-02 06:19:03'),
(127, 'Luyện Tập Mĩ Thuật 4 - Tập 2 (2020)', '1646227333.jpg', 2, 19, 16, '2', 190, 11, 2020, 19950, 'Luyện Tập Mĩ Thuật 4 - Tập 2 được biên soạn theo chương trình sách giáo khoa hiện hành nhằm khơi gợi và phát huy khiếu thẩm mỹ của các em. Bên cạnh đó, sách còn là công cụ giúp giáo viên chủ động tổ chức dạy học môn Mỹ Thuật theo chủ đề, phát huy các hình', NULL, 2, 0, '2022-03-02 06:22:13', '2022-03-02 06:22:13'),
(128, 'Sổ Tay Kiến Thức Toán Trung Học Phổ Thông', '1646227503.jpg', 1, 1, 4, '2', 246, 10, 2019, 29000, 'Sổ Tay Kiến Thức Toán Trung Học Phổ Thông tập hợp những công thức, kiến thức căn bản của môn Toán cấp THPT, giúp các em học sinh có thể nắm bắt kiến thức nhanh chóng và áp dụng làm bài tập.\r\n\r\nCuốn sách chia thành 2 phần: \r\n\r\nPhần Đại Số: 12 chuyên đề\r\n\r\n', NULL, 2, 0, '2022-03-02 06:25:03', '2022-03-02 06:25:03'),
(129, 'Tài Liệu Giáo Dục An Toàn Giao Thông Dành Cho Học Sinh - Lớp 4', '1646227593.jpg', 3, 7, 3, '2', 24, 5, 2021, 12350, 'Bộ sách Tài liệu Giáo dục an toàn giao thông (lớp 1 đến lớp 5) được biên soạn theo Chương trình An toàn giao thông cho nụ cười trẻ thơ với mục đích giúp các em hiểu và tham gia giao thông an toàn, do các chuyên gia của của Bộ Giáo dục và Đào tạo, Ủy ban A', NULL, 2, 0, '2022-03-02 06:26:33', '2022-03-02 06:26:33'),
(130, 'Chinh Phục Luyện Thi Vào Lớp 10 Môn Ngữ Văn Theo Chủ Đề', '1646227828.jpg', 2, 14, 7, '2', 120, 1, 2019, 95400, 'Cuốn sách nằm trong bộ 3 cuốn Chinh phục luyện thi vào 10 theo chủ đề - Toán Văn Anh.\r\n\r\nChinh phục luyện thi vào 10 theo chủ đề: Hơn cả sự mong đợi về một bộ sách tổng hợp chuyên đề trọng tâm cho học sinh lớp 9.\r\n\r\nBộ sách Chinh phục luyện thi vào 10 the', NULL, 2, 0, '2022-03-02 06:30:28', '2022-03-02 06:30:28'),
(131, 'Cẩm Nang Cấu Trúc Tiếng Anh', '1646229402.jpg', 11, 1, 35, '2', 237, 7, 2019, 82320, 'Cuốn sách CẨM NANG CẤU TRÚC TIẾNG ANH gồm 25 phần, mỗi phần là một phạm trù kiến thức trong tiếng Anh được trình bày một cách ngắn gọn, đơn giản, cô đọng và hệ thống hoá dưới dạng sơ đồ, bảng biểu nhằm phát triển khả năng tư duy của người học và từ đó giú', NULL, 2, 0, '2022-03-02 06:56:42', '2022-03-02 06:56:42'),
(132, '25 Chuyên Đề Ngữ Pháp Tiếng Anh Trọng Tâm - Tập 1', '1646229526.jpg', 7, 20, 35, '2', 298, 8, 2018, 88000, 'Các chuyên đề ngữ pháp trọng tâm được trình bày đơn giản, dễ hiểu cùng với hệ thống bài tập và từ vựng phong phú. Có tất cả 25 chuyên đề trong 2 tập sách, là tài liệu hữu ích cho học sinh, sinh viên, người đi làm, luyện thi cho các kỳ thi quốc gia, ôn luy', NULL, 2, 0, '2022-03-02 06:58:46', '2022-03-02 06:58:46'),
(133, 'Động Từ Bất Quy Tắc & Ngữ Pháp Tiếng Anh Căn Bản', '1646229646.jpg', 1, 16, 35, '0', 39, 9, 2016, 9750, 'Động Từ Bất Quy Tắc & Ngữ Pháp Tiếng Anh Căn Bản\r\n\r\nViệc học một thứ ngôn ngữ khác không phải tiếng mẹ đẻ, bao giờ cũng đem lại cho bạn nhiều khó khăn, vì thế  để học tốt tiếng Anh hay bất kì thứ tiếng nào khác đòi hỏi bạn phải có sự kiên trì và tài liệu ', NULL, 2, 0, '2022-03-02 07:00:46', '2022-03-02 07:00:46'),
(134, '25 Chuyên Đề Ngữ Pháp Tiếng Anh Trọng Tâm - Tập 1', '1646229771.jpg', 8, 19, 35, '2', 298, 1, 2018, 88000, 'Các chuyên đề ngữ pháp trọng tâm được trình bày đơn giản, dễ hiểu cùng với hệ thống bài tập và từ vựng phong phú. Có tất cả 25 chuyên đề trong 2 tập sách, là tài liệu hữu ích cho học sinh, sinh viên, người đi làm, luyện thi cho các kỳ thi quốc gia, ôn luy', NULL, 2, 0, '2022-03-02 07:02:51', '2022-03-02 07:02:51'),
(135, 'Hackers Ielts: Writing', '1646229893.jpg', 1, 13, 35, '2', 452, 6, 2019, 143400, 'Bộ sách luyện thi IELTS đầu tiên có kèm giải thích đáp án chi tiết và hướng dẫn cách tự nâng band điểm.\r\n\r\nIELTS là cánh cửa giúp các bạn thí sinh hiện thực hóa ước mơ vươn ra thế giới. Chính vì vậy, ngay từ bây giờ, hãy nỗ lực luyện tập và chuẩn bị cho b', NULL, 2, 0, '2022-03-02 07:04:53', '2022-03-02 07:04:53'),
(136, 'Tiếng Nhật Cho Mọi Người - Sơ Cấp 1', '1646234442.jpg', 14, 21, 8, '2', 184, 1, 2018, 60000, 'Giáo trình dạy tiếng Nhật Minna no Nihongo bộ mới\r\n\r\n“Minna no Nihongo” là bộ giáo trình sơ cấp dành cho những ai muốn tìm hiểu về tiếng Nhật rất thông dụng tại Châu Á và Việt Nam.Sách gồm 2 tập với 50 bài học, mỗi bài bao gồm phần Mẫu câu, Ví dụ, Hội tho', NULL, 2, 0, '2022-03-02 08:20:42', '2022-03-02 08:20:42'),
(137, '2000 Câu Giao Tiếp Nhật - Việt', '1646234555.jpg', 1, 13, 4, '2', 428, 4, 2015, 75680, '2000 Câu Giao Tiếp Nhật - Việt\r\n\r\nCuốn sách 2000 Câu Giao Tiếp - Nhật Việt giới thiệu đến bạn đọc những nội dung chính sau:\r\n\r\nGiới thiệu về tiếng Nhật Những từ thường dùng Từ loại thường dùng Những câu ngắn thường gặp Đàm thoại thông dụng Những tình huốn', NULL, 2, 0, '2022-03-02 08:22:35', '2022-03-02 08:22:35'),
(138, 'Tập Viết Tiếng Nhật Căn Bản - Kanji (Tái Bản 2021)', '1646234690.jpg', 15, 22, 22, '2', 156, 2, 2021, 42640, 'Hệ thống chữ viết và phát âm tiếng Nhật khác hoàn toàn so với hệ thống chữ tiếng Việt, nên việc nhớ được bảng chữ cái tiếng Nhật là rất khó khăn đối với hầu hết những người mới học. Cho dù học bất cứ ngôn ngữ gì bạn cũng cần có phươngpháp thì mới có hiệu ', NULL, 2, 0, '2022-03-02 08:24:50', '2022-03-02 08:24:50'),
(139, 'Marugoto A1 - Hoạt Động Giao Tiếp', '1646234801.jpg', 1, 20, 6, '2', 148, 1, 2018, 127500, 'Marugoto A1 - Hoạt Động Giao Tiếp\r\n\r\nGiáo trình Marugoto - Ngôn ngữ và Văn hóa Nhật Bản được triển khai dựa trên Chuẩn Giáo dục tiếng Nhật JF. Tựa đề Marugoto, có nghĩa là “trọn vẹn”, chứa đựng thông điệp mà ban biên soạn muốn gửi đến quý độc giả: sự kết ', NULL, 2, 0, '2022-03-02 08:26:41', '2022-03-02 08:26:41'),
(140, 'Tiếng Nhật Cho Mọi Người - Sơ Cấp 1 - Bản Tiếng Nhật (Bản Mới)', '1646235197.jpg', 1, 19, 8, '2', 308, 3, 2018, 116000, 'Giáo trình dạy tiếng Nhật Minna no Nihongo bộ mới', NULL, 2, 0, '2022-03-02 08:33:17', '2022-03-02 08:33:17'),
(141, 'Ôn Luyện Thi Tốt Nghiệp THPT Năm 2022 Bài Thi Khoa Học Xã Hội', '1646235922.jpg', 1, 2, 36, '2', 312, 1, 2021, 65250, 'Căn cứ phương án tổ chức Kỳ thi tốt nghiệp THPT và tuyển sinh vào Đại học, Cao đẳng năm 2022 cũng như dựa trên thực tế nhu cầu ôn luyện của học sinh, Công ty CP Giáo dục và Chuyển giao công nghệ Việt Nam tổ chức biên soạn và phát hành bộ sách Ôn luyện thi', NULL, 2, 0, '2022-03-02 08:45:22', '2022-03-02 08:45:22'),
(142, 'Bộ Đề Đánh Giá Năng Lực Môn Ngữ Văn', '1646236054.jpg', 4, 5, 36, '2', 180, 1, 2021, 73800, 'Trong những năm gần đây, việc thay đổi trong kiểm tra, đánh giá năng lực và kết quả học tập của học sinh đã trở thành nhu cầu tất yếu. Trong đó việc sử dụng hình thức thi trắc nghiệm trong kiểm tra, đánh giá thường xuyên cũng như các kì thi cuối cấp ngày ', NULL, 2, 0, '2022-03-02 08:47:34', '2022-03-02 08:47:34'),
(143, 'Luyện Đề Thi Tốt Nghiệp THPT Năm 2022 Môn Ngữ Văn', '1646236152.jpg', 1, 1, 36, '2', 148, 4, 2021, 39150, 'Căn cứ vào phương án tổ chức Kỳ thi tốt nghiệp THPT và tuyển sinh vào Đại học, Cao đẳng năm 2022 cũng như dựa trên thực tế nhu cầu ôn luyện thi của học sinh, Công ty CP Giáo dục và Chuyển giao công nghệ Việt Nam tổ chức biên soạn và phát hành bộ sách Luyệ', NULL, 2, 0, '2022-03-02 08:49:12', '2022-03-02 08:49:12'),
(144, 'Luyện Đề Thi Tốt Nghiệp THPT Năm 2022 Bài Thi Khoa Học Xã Hội', '1646236249.jpg', 1, 5, 36, '2', 220, 3, 2021, 56250, 'Căn cứ vào phương án tổ chức Kỳ thi tốt nghiệp THPT và tuyển sinh vào Đại học, Cao đẳng năm 2022 cũng như dựa trên thực tế nhu cầu ôn luyện thi của học sinh, Công ty CP Giáo dục và Chuyển giao công nghệ Việt Nam tổ chức biên soạn và phát hành bộ sách Luyệ', NULL, 2, 0, '2022-03-02 08:50:49', '2022-03-02 08:50:49'),
(145, 'Hướng Dẫn Ôn Tập Kì Thi THPT Quốc Gia Năm Học 2019 - 2020 Môn Ngữ Văn', '1646236376.jpg', 1, 15, 34, '2', 200, 2, 2019, 45000, 'Bộ Sách Hướng dẫn ôn tập kì thi THPT Quốc gia năm học 2019 - 2020 của nhà xuất bản giáo dục cung cấp kiến thức cơ bản và nâng cao cho học sinh tham gia kỳ thi THPT Quốc gia năm học 2019 - 2020.', NULL, 2, 0, '2022-03-02 08:52:56', '2022-03-02 08:52:56'),
(146, 'Ôn Luyện Thi Tốt Nghiệp THPT Năm 2022 Môn Ngữ Văn', '1646236479.jpg', 1, 2, 36, '2', 148, 1, 2021, 47850, 'Căn cứ phương án tổ chức Kỳ thi tốt nghiệp THPT và tuyển sinh vào Đại học, Cao đẳng năm 2022 cũng như dựa trên thực tế nhu cầu ôn luyện của học sinh, Công ty CP Giáo dục và Chuyển giao công nghệ Việt Nam tổ chức biên soạn và phát hành bộ sách Ôn luyện thi', NULL, 2, 0, '2022-03-02 08:54:39', '2022-03-02 08:54:39'),
(147, '3 Step - Tiết Lộ Bí Quyết 3 Bước Đạt Điểm 8+ Ngữ Văn', '1646236577.jpg', 1, 1, 36, '2', 272, 6, 2020, 143400, '3 Step – Tiết lộ bí quyết 3 bước đạt điểm 8+ là bộ sách luyện thi THPT Quốc gia bao trọn kiến thức quan trọng cần phải ôn tập được hệ thống từ dễ đến khó. Bộ sách được biên soạn bởi đội ngũ tác giả dày dặn kinh nghiệm đã tạo nên tên tuổi của Mega Siêu tốc', NULL, 2, 0, '2022-03-02 08:56:17', '2022-03-02 08:56:17'),
(148, 'Ôn Luyện Thi Tốt Nghiệp THPT Năm 2022 Bài Thi Khoa Học Tự Nhiên', '1646239952.jpg', 19, 6, 36, '2', 312, 7, 2021, 65250, 'Căn cứ phương án tổ chức Kỳ thi tốt nghiệp THPT và tuyển sinh vào Đại học, Cao đẳng năm 2022 cũng như dựa trên thực tế nhu cầu ôn luyện của học sinh, Công ty CP Giáo dục và Chuyển giao công nghệ Việt Nam tổ chức biên soạn và phát hành bộ sách Ôn luyện thi', NULL, 2, 0, '2022-03-02 09:52:32', '2022-03-02 09:52:32'),
(149, 'Luyện Đề Thi Tốt Nghiệp Thpt Năm 2022 Môn Toán', '1646240058.jpg', 16, 6, 36, '2', 148, 5, 2021, 39150, 'Căn cứ vào phương án tổ chức Kỳ thi tốt nghiệp THPT và tuyển sinh vào Đại học, Cao đẳng năm 2022 cũng như dựa trên thực tế nhu cầu ôn luyện thi của học sinh, Công ty CP Giáo dục và Chuyển giao công nghệ Việt Nam tổ chức biên soạn và phát hành bộ sách Luyệ', NULL, 2, 0, '2022-03-02 09:54:18', '2022-03-02 09:54:18'),
(150, '3 Step - Tiết Lộ Bí Quyết 3 Bước Đạt Điểm 8+ Toán Học', '1646240177.jpg', 1, 17, 31, '0', 360, 1, 2020, 143400, '3 Step – Tiết lộ bí quyết 3 bước đạt điểm 8+ là bộ sách luyện thi THPT Quốc gia bao trọn kiến thức quan trọng cần phải ôn tập được hệ thống từ dễ đến khó. Bộ sách được biên soạn bởi đội ngũ tác giả dày dặn kinh nghiệm đã tạo nên tên tuổi của Mega Siêu tốc', 1, 2, 0, '2022-03-02 09:56:17', '2022-07-16 05:23:36'),
(151, 'Ôn Luyện Thi Tốt Nghiệp THPT Năm 2022 Môn Toán', '1646240263.jpg', 13, 1, 36, '2', 192, 8, 2021, 47850, 'Căn cứ phương án tổ chức Kỳ thi tốt nghiệp THPT và tuyển sinh vào Đại học, Cao đẳng năm 2022 cũng như dựa trên thực tế nhu cầu ôn luyện của học sinh, Công ty CP Giáo dục và Chuyển giao công nghệ Việt Nam tổ chức biên soạn và phát hành bộ sách Ôn luyện thi', NULL, 2, 0, '2022-03-02 09:57:43', '2022-03-02 09:57:43'),
(152, 'Mega 2021 - Siêu Luyện Đề 9+ THPT Quốc Gia 2021 Môn Toán Học', '1646240426.jpg', 1, 16, 37, '0', 448, 10, 2020, 110000, 'Trải qua 6 năm – Đồng hành 6 mùa thi thành công, Mega Luyện đề đã trở thành bộ sách luyện đề THPT Quốc gia số 1, giúp hơn 200 nghìn bạn sĩ tử lớp 12 đỗ vào những ngôi trường Đại học mơ ước.', 1, 2, 0, '2022-03-02 10:00:26', '2022-07-16 05:28:07'),
(153, 'Luyện Đề Thi Tốt Nghiệp THPT Năm 2022 Bài Thi Khoa Học Tự Nhiên', '1646240515.jpg', 8, 1, 36, '2', 268, 11, 2021, 56550, 'Căn cứ vào phương án tổ chức Kỳ thi tốt nghiệp THPT và tuyển sinh vào Đại học, Cao đẳng năm 2022 cũng như dựa trên thực tế nhu cầu ôn luyện thi của học sinh, Công ty CP Giáo dục và Chuyển giao công nghệ Việt Nam tổ chức biên soạn và phát hành bộ sách Luyệ', NULL, 2, 0, '2022-03-02 10:01:55', '2022-03-02 10:01:55'),
(154, 'Penbook – Luyện Đề Thi Tốt Nghiệp THPT Quốc Gia Môn Toán 2022', '1646240615.jpg', 20, 2, 37, '0', 410, 14, 2021, 195750, 'Penbook – Luyện Đề Thi Tốt Nghiệp THPT Quốc Gia Môn Toán 2022\r\n\r\n1. Định nghĩa\r\n\r\nPENBOOK – Luyện Đề Thi Tốt Nghiệp THPT bộ sách luyện thi THPT QG giúp học sinh rèn phương pháp, luyện kĩ năng làm bài thông qua hệ thống đề thi sau quá trình trang bị và ôn ', 1, 2, 0, '2022-03-02 10:03:35', '2022-07-16 05:23:18'),
(155, 'Sketch Test Luyện Đề THPTQG 2020 - Môn Toán', '1646240722.jpg', 11, 1, 37, '0', 292, 9, 2020, 15000, 'Như tất cả các bạn học sinh đều biết, phương pháp học tư duy trực quan chính là phương pháp học được đánh giá hiệu quả nhất hiện nay, bởi nó có thể giúp các bạn nhớ lâu, nhớ 1 cách rõ ràng và hệ thống.\r\n\r\nVậy nếu muốn quá trình học của các bạn đạt hiệu qu', NULL, 2, 0, '2022-03-02 10:05:22', '2022-04-22 08:18:59'),
(163, 'Ra Bờ Suối Ngắm Hoa Kèn Hồng', '1657677015.jpg', 1, 19, 2, '2', 272, 12, 2022, 150000, 'Ra Bờ Suối Ngắm Hoa Kèn Hồng\r\n\r\nRa bờ suối ngắm hoa kèn hồng là tác phẩm trong trẻo, tràn đầy tình yêu thương mát lành, trải ra trước mắt người đọc khu vườn trại rực rỡ cỏ hoa của vùng quê thanh bình, kèm theo đó là những “nhân vật” đáng yêu, làm nên một “thế giới giàu có, rộng lớn và vô cùng hấp dẫn” mà dường như người lớn đã bỏ quên đâu đó từ lâu.', 1, 2, 0, '2022-07-12 18:50:15', '2022-07-12 18:55:19'),
(166, 'luyện thi', '1658368765.jpg', 4, 14, 4, '2', 272, 2, 2022, 150000, 'Lorem', 3, 2, 0, '2022-07-20 18:59:25', '2022-07-20 18:59:25'),
(167, 'Sách Giáo Khoa test', '1658792888.jpg', 2, 3, 2, '0', 10, 7, 2018, 250000, 'lorem shhsshsssssssssssssss shhhhhhhhhhhhhksjgshhd', NULL, 2, 1, '2022-07-26 06:48:08', '2022-07-26 06:50:38'),
(168, 'Sách Giáo Khoa test', '1658793091.jpg', 3, 4, 3, '1', 10, 12, 2018, 250000, 'sách giáo khoa', 3, 2, 0, '2022-07-26 06:51:31', '2022-07-26 06:51:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphamyeuthich`
--

DROP TABLE IF EXISTS `sanphamyeuthich`;
CREATE TABLE IF NOT EXISTS `sanphamyeuthich` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `IdSach` int(10) UNSIGNED NOT NULL,
  `IdKH` int(10) UNSIGNED NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sanphamyeuthich_idsach_foreign` (`IdSach`),
  KEY `sanphamyeuthich_idkh_foreign` (`IdKH`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanphamyeuthich`
--

INSERT INTO `sanphamyeuthich` (`id`, `IdSach`, `IdKH`, `TrangThai`, `created_at`, `updated_at`) VALUES
(3, 7, 4, 0, '2022-04-16 10:20:07', '2022-04-16 10:20:07'),
(4, 32, 4, 0, '2022-04-16 10:22:11', '2022-04-16 10:22:11'),
(5, 111, 4, 0, '2022-04-18 01:07:27', '2022-04-18 01:07:27'),
(7, 153, 7, 0, '2022-07-07 08:51:13', '2022-07-07 08:51:13'),
(8, 2, 7, 0, '2022-07-07 08:54:05', '2022-07-07 08:54:05'),
(11, 31, 11, 0, '2022-07-20 05:28:58', '2022-07-20 05:28:58'),
(12, 30, 12, 0, '2022-07-20 18:36:08', '2022-07-20 18:36:08'),
(13, 153, 13, 0, '2022-10-11 04:41:33', '2022-10-11 04:41:33'),
(14, 155, 14, 0, '2022-10-11 04:53:00', '2022-10-11 04:53:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slideshow`
--

DROP TABLE IF EXISTS `slideshow`;
CREATE TABLE IF NOT EXISTS `slideshow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `HinhAnh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Xoa` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slideshow`
--

INSERT INTO `slideshow` (`id`, `link`, `HinhAnh`, `Xoa`, `created_at`, `updated_at`) VALUES
(1, '#', '1641561935.jpg', 0, '2022-01-07 05:59:53', '2022-01-07 06:25:35'),
(2, '#', '1641561944.png', 0, '2022-01-07 05:59:53', '2022-01-07 06:25:44'),
(3, '#', '1641561973.png', 0, '2022-01-07 06:26:13', '2022-01-07 06:26:13'),
(4, '#', '1641561987.png', 0, '2022-01-07 06:26:27', '2022-01-07 06:26:27'),
(5, '#', '1641562031.jpg', 0, '2022-01-07 06:27:11', '2022-01-07 08:45:12'),
(6, '#', '1651971361.jpg', 0, '2022-05-07 17:56:01', '2022-05-07 17:56:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tacgia`
--

DROP TABLE IF EXISTS `tacgia`;
CREATE TABLE IF NOT EXISTS `tacgia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tentacgia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Xoa` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tacgia`
--

INSERT INTO `tacgia` (`id`, `tentacgia`, `Xoa`, `created_at`, `updated_at`) VALUES
(1, 'Lê Đỗ Quỳnh Hương', 0, '2022-07-16 01:38:49', '2022-07-16 01:38:49'),
(2, 'Trác Nhã', 0, '2022-07-16 01:39:03', '2022-07-16 01:39:03'),
(3, 'Tony Buổi Sáng', 0, '2022-07-16 01:39:15', '2022-07-16 01:39:15'),
(4, 'Hà Trần', 0, '2022-07-16 01:39:30', '2022-07-16 01:39:30'),
(5, 'Minh Niệm', 0, '2022-07-16 01:39:42', '2022-07-16 01:39:42'),
(6, 'Albert Rutherford', 0, '2022-07-16 01:39:52', '2022-07-16 01:39:52'),
(7, 'Kishimi Ichiro, Koga Fumitake', 0, '2022-07-16 01:40:23', '2022-07-16 01:40:23'),
(8, 'Vĩ Nhân', 0, '2022-07-16 01:43:51', '2022-07-16 01:43:51'),
(9, 'Rosie Nguyễn', 0, '2022-07-16 01:44:11', '2022-07-16 01:44:11'),
(10, 'Phan Văn Trường', 0, '2022-07-16 01:45:57', '2022-07-16 01:45:57'),
(11, 'Werner Bartens', 0, '2022-07-16 01:46:35', '2022-07-16 01:46:35'),
(12, 'Hoàng Hà', 0, '2022-07-16 01:46:48', '2022-07-16 01:46:48'),
(13, 'John C. Maxwell', 0, '2022-07-16 01:46:57', '2022-07-16 01:46:57'),
(14, 'Tạ Quốc Kế', 0, '2022-07-16 01:47:07', '2022-07-16 01:47:07'),
(15, 'Nguyên Hương', 0, '2022-07-16 01:47:19', '2022-07-16 01:47:19'),
(16, 'Thạch Lam', 0, '2022-07-16 01:47:30', '2022-07-16 01:47:30'),
(17, 'Linda Lê', 0, '2022-07-16 01:47:40', '2022-07-16 01:47:40'),
(18, 'Ichikawa Takuji', 0, '2022-07-16 01:47:55', '2022-07-16 01:47:55'),
(19, 'Kate Atkinson', 0, '2022-07-16 01:48:05', '2022-07-16 01:48:05'),
(20, 'Éric Vuillard', 0, '2022-07-16 01:48:14', '2022-07-16 01:48:14'),
(21, 'Emily Colin', 0, '2022-07-16 01:48:27', '2022-07-16 01:48:27'),
(22, 'Lee Heejoo', 0, '2022-07-16 01:48:39', '2022-07-16 01:48:39'),
(23, 'Mạnh Hoài Nam', 0, '2022-07-16 01:49:37', '2022-07-16 01:49:37'),
(24, 'Nguyễn Trí', 0, '2022-07-16 01:49:46', '2022-07-16 01:49:46'),
(25, 'Dạ Nguyệt', 0, '2022-07-16 01:49:55', '2022-07-16 01:49:55'),
(26, 'Thanh Du', 0, '2022-07-16 01:50:15', '2022-07-16 01:50:15'),
(27, 'Lâu Vũ Tình', 0, '2022-07-16 01:50:25', '2022-07-16 01:50:25'),
(28, 'Nguyên Hương', 0, '2022-07-16 01:50:37', '2022-07-16 01:50:37'),
(29, 'Mặc Hương Đồng Khứu', 0, '2022-07-16 01:51:14', '2022-07-16 01:51:14'),
(30, 'Nassim Nicholas Taleb', 0, '2022-07-16 01:52:52', '2022-07-16 01:52:52'),
(31, 'Hachun Lyonnet, Hương Đỗ, Bubu Hương', 0, '2022-07-16 01:54:16', '2022-07-16 01:54:16'),
(32, 'Nhiều Tác Giả', 0, '2022-07-16 02:06:32', '2022-07-16 02:06:32'),
(33, 'Urako Kanamori', 0, '2022-07-16 02:06:49', '2022-07-16 02:06:49'),
(34, 'Diệp Lạc Vô Tâm', 0, '2022-07-16 02:13:18', '2022-07-16 02:13:18'),
(35, 'Thương Thái Vi', 0, '2022-07-16 02:13:29', '2022-07-16 04:56:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

DROP TABLE IF EXISTS `theloai`;
CREATE TABLE IF NOT EXISTS `theloai` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TenTheLoai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenTLCha` int(10) UNSIGNED NOT NULL,
  `Xoa` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `theloai_tentlcha_foreign` (`TenTLCha`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`id`, `TenTheLoai`, `TenTLCha`, `Xoa`, `created_at`, `updated_at`) VALUES
(1, 'Tiểu Thuyết', 1, 0, '2022-03-15 05:52:02', '2022-03-15 05:52:02'),
(2, 'Ngôn Tình\r\n', 1, 0, '2022-03-15 05:52:33', '2022-03-15 05:52:33'),
(3, 'Phân Tích Kinh Tế', 2, 0, '2022-03-15 05:53:47', '2022-03-15 05:53:47'),
(4, 'Marketing - Bán Hàng', 2, 0, '2022-03-15 05:53:59', '2022-03-15 05:53:59'),
(5, 'Tâm Lý', 3, 0, '2022-03-15 05:54:22', '2022-03-15 05:54:22'),
(6, 'Kỹ Năng Sống', 3, 0, '2022-03-15 05:54:33', '2022-03-15 05:54:33'),
(7, 'Cẩm Nang Làm Cha Mẹ', 4, 0, '2022-03-15 05:55:11', '2022-03-15 05:55:11'),
(8, 'Phát Triển Kỹ Năng Cho Trẻ', 4, 0, '2022-03-15 05:55:43', '2022-03-15 05:55:43'),
(9, 'Kiến Thức Bách Khoa', 5, 0, '2022-03-15 05:58:12', '2022-03-15 05:58:12'),
(10, 'Kiến Thức - Kỹ Năng Sống Cho Trẻ', 5, 0, '2022-03-15 05:58:46', '2022-03-15 05:58:46'),
(11, 'Chính Trị', 6, 0, '2022-03-15 05:59:22', '2022-03-15 05:59:22'),
(12, 'Kinh Tế - Giải Trí', 6, 0, '2022-03-15 05:59:41', '2022-03-15 05:59:41'),
(13, 'Tiếng Anh', 8, 0, '2022-03-15 06:00:06', '2022-03-15 06:00:06'),
(14, 'Tiếng Nhật', 8, 0, '2022-03-15 06:00:20', '2022-03-15 06:00:20'),
(15, 'Sách Giáo Khoa', 7, 0, '2022-03-15 06:00:30', '2022-03-15 06:00:30'),
(16, 'Sách Tham Khảo', 7, 0, '2022-03-15 06:00:46', '2022-03-15 06:00:46'),
(17, 'Luyện Thi Môn Toán', 9, 0, '2022-03-17 08:57:12', '2022-03-28 19:14:52'),
(18, 'Luyện Thi Môn Ngữ Văn', 9, 0, '2022-03-17 08:57:31', '2022-04-11 23:02:06'),
(19, 'Luyện Thi Anh Văn', 9, 1, '2022-05-07 18:59:22', '2022-07-13 08:11:46'),
(20, 'Truyện Tranh', 5, 0, '2022-07-20 19:00:12', '2022-07-20 19:00:12'),
(21, 'Sách Giáo Khoa 5', 10, 0, '2022-07-20 19:02:03', '2022-07-20 19:02:03'),
(22, 'Test', 2, 1, '2022-07-22 21:45:37', '2022-07-22 21:45:44'),
(23, 'Giáo Dục', 1, 1, '2022-07-26 06:51:55', '2022-07-26 06:52:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloaicha`
--

DROP TABLE IF EXISTS `theloaicha`;
CREATE TABLE IF NOT EXISTS `theloaicha` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TenTheLoaiCha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Xoa` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloaicha`
--

INSERT INTO `theloaicha` (`id`, `TenTheLoaiCha`, `Xoa`, `created_at`, `updated_at`) VALUES
(1, 'VĂN HỌC', 0, '2022-03-15 05:41:47', '2022-03-28 19:01:42'),
(2, 'KINH TẾ', 0, '2022-03-15 05:42:56', '2022-03-15 05:42:56'),
(3, 'TÂM LÝ - KĨ NĂNG SỐNG', 0, '2022-03-15 05:43:56', '2022-03-15 05:43:56'),
(4, 'NUÔI DẠY CON', 0, '2022-03-15 05:45:44', '2022-03-15 05:45:44'),
(5, 'SÁCH THIẾU NHI', 0, '2022-03-15 05:45:53', '2022-03-15 05:45:53'),
(6, 'TIỂU SỬ - HỒI KÝ', 0, '2022-03-15 05:46:24', '2022-03-15 05:46:24'),
(7, 'GIÁO KHOA - THAM KHẢO', 0, '2022-03-15 05:46:49', '2022-03-15 05:46:49'),
(8, 'SÁCH HỌC NGOẠI NGỮ', 0, '2022-03-15 05:47:07', '2022-03-15 05:47:07'),
(9, 'LUYỆN THI', 0, '2022-03-17 08:56:42', '2022-04-11 03:38:41'),
(10, 'HỒI KÝ', 0, '2022-07-20 19:01:26', '2022-07-20 19:01:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai_sach`
--

DROP TABLE IF EXISTS `theloai_sach`;
CREATE TABLE IF NOT EXISTS `theloai_sach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `IdSach` int(10) UNSIGNED NOT NULL,
  `IdTheLoai` int(10) UNSIGNED NOT NULL,
  `Xoa` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `theloai_sach_idsach_foreign` (`IdSach`),
  KEY `theloai_sach_idtheloai_foreign` (`IdTheLoai`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai_sach`
--

INSERT INTO `theloai_sach` (`id`, `IdSach`, `IdTheLoai`, `Xoa`, `created_at`, `updated_at`) VALUES
(1, 2, 6, 0, '2021-12-31 06:03:33', '2022-04-10 06:42:16'),
(2, 1, 6, 0, '2021-12-31 06:04:28', '2022-04-10 06:42:49'),
(3, 3, 6, 0, '2021-12-31 06:08:41', '2022-04-10 06:43:23'),
(4, 4, 6, 0, '2021-12-31 06:08:41', '2022-04-10 06:43:48'),
(5, 5, 6, 0, '2022-03-01 19:20:07', '2022-03-01 19:20:07'),
(6, 6, 6, 0, '2022-03-01 19:21:30', '2022-03-01 19:21:30'),
(7, 7, 6, 0, '2022-03-01 19:29:08', '2022-03-01 19:29:08'),
(8, 8, 6, 0, '2022-03-01 19:30:11', '2022-03-01 19:30:11'),
(9, 9, 6, 0, '2022-03-01 19:30:54', '2022-03-01 19:30:54'),
(10, 10, 6, 0, '2022-03-01 19:31:39', '2022-03-01 19:31:39'),
(11, 11, 6, 0, '2022-03-01 19:33:12', '2022-04-10 06:44:39'),
(12, 12, 6, 0, '2022-03-01 19:35:38', '2022-03-01 19:35:38'),
(13, 13, 6, 0, '2022-03-01 19:36:45', '2022-03-01 19:36:45'),
(14, 14, 6, 0, '2022-03-01 19:37:29', '2022-03-01 19:37:29'),
(15, 15, 6, 0, '2022-03-01 19:44:25', '2022-03-01 19:44:25'),
(16, 16, 1, 0, '2022-03-01 19:45:10', '2022-03-01 19:45:10'),
(17, 17, 1, 0, '2022-03-01 19:45:45', '2022-03-01 19:45:45'),
(18, 18, 1, 0, '2022-03-01 19:46:28', '2022-03-01 19:46:28'),
(19, 19, 1, 0, '2022-03-01 19:47:11', '2022-03-01 19:47:11'),
(20, 20, 1, 0, '2022-03-01 19:48:01', '2022-03-01 19:48:01'),
(21, 21, 1, 0, '2022-03-01 19:53:54', '2022-03-01 19:53:54'),
(22, 22, 1, 0, '2022-03-01 19:54:35', '2022-03-01 19:54:35'),
(23, 23, 1, 0, '2022-03-01 19:55:39', '2022-03-01 19:55:39'),
(24, 24, 1, 0, '2022-03-01 19:56:54', '2022-03-01 19:56:54'),
(25, 25, 2, 0, '2022-03-01 19:57:58', '2022-07-18 07:09:31'),
(26, 26, 2, 0, '2022-03-01 19:58:18', '2022-03-01 19:58:18'),
(27, 27, 2, 0, '2022-03-01 20:00:11', '2022-03-01 20:00:11'),
(28, 28, 2, 0, '2022-03-01 20:00:57', '2022-03-01 20:00:57'),
(29, 29, 2, 0, '2022-03-01 20:01:45', '2022-03-01 20:01:45'),
(30, 30, 3, 0, '2022-03-01 20:11:06', '2022-04-10 06:51:02'),
(31, 31, 3, 0, '2022-03-01 20:11:22', '2022-03-01 20:11:22'),
(32, 32, 3, 0, '2022-03-01 20:11:41', '2022-03-01 20:11:41'),
(33, 33, 3, 0, '2022-03-01 20:12:00', '2022-03-01 20:12:00'),
(34, 34, 3, 0, '2022-03-01 20:12:26', '2022-03-01 20:12:26'),
(35, 35, 3, 0, '2022-03-01 20:13:21', '2022-03-01 20:13:21'),
(36, 36, 3, 0, '2022-03-01 20:14:58', '2022-03-01 20:14:58'),
(37, 37, 3, 0, '2022-03-01 20:15:21', '2022-03-01 20:15:21'),
(38, 38, 3, 0, '2022-03-01 20:16:07', '2022-03-01 20:16:07'),
(39, 39, 3, 0, '2022-03-01 20:26:19', '2022-03-01 20:26:19'),
(40, 40, 4, 0, '2022-03-01 20:27:54', '2022-04-10 07:18:54'),
(41, 41, 4, 0, '2022-03-01 20:28:12', '2022-03-01 20:28:12'),
(42, 42, 4, 0, '2022-03-01 20:28:37', '2022-03-01 20:28:37'),
(43, 43, 4, 0, '2022-03-01 20:29:01', '2022-03-01 20:29:01'),
(44, 44, 4, 0, '2022-03-01 20:29:21', '2022-03-01 20:29:21'),
(45, 45, 4, 0, '2022-03-01 20:30:39', '2022-03-01 20:30:39'),
(46, 46, 4, 0, '2022-03-01 20:31:16', '2022-03-01 20:31:16'),
(47, 47, 4, 0, '2022-03-01 20:32:15', '2022-03-01 20:32:15'),
(48, 48, 4, 0, '2022-03-01 20:32:45', '2022-03-01 20:32:45'),
(49, 49, 4, 0, '2022-03-01 20:33:33', '2022-03-01 20:33:33'),
(50, 50, 4, 0, '2022-03-01 20:34:05', '2022-03-01 20:34:05'),
(51, 51, 7, 0, '2022-03-01 20:35:19', '2022-03-01 20:35:19'),
(52, 52, 7, 0, '2022-03-01 21:37:50', '2022-03-01 21:37:50'),
(53, 53, 7, 0, '2022-03-01 21:39:13', '2022-03-01 21:39:13'),
(54, 54, 7, 0, '2022-03-01 21:39:38', '2022-03-01 21:39:38'),
(55, 55, 7, 0, '2022-03-01 21:41:03', '2022-03-01 21:41:03'),
(56, 56, 7, 0, '2022-03-01 21:41:31', '2022-03-01 21:41:31'),
(57, 57, 7, 0, '2022-03-01 21:41:56', '2022-03-01 21:41:56'),
(58, 58, 7, 0, '2022-03-01 21:43:32', '2022-03-01 21:43:32'),
(59, 59, 7, 0, '2022-03-01 21:46:51', '2022-03-01 21:46:51'),
(60, 60, 7, 0, '2022-03-01 21:47:16', '2022-03-01 21:47:16'),
(61, 61, 8, 0, '2022-03-01 21:48:59', '2022-04-10 07:23:48'),
(62, 62, 10, 0, '2022-03-01 21:49:25', '2022-03-01 21:49:25'),
(63, 63, 10, 0, '2022-03-01 21:49:58', '2022-03-01 21:49:58'),
(64, 64, 10, 0, '2022-03-01 21:50:26', '2022-03-01 21:50:26'),
(65, 65, 10, 0, '2022-03-01 21:53:10', '2022-03-01 21:53:10'),
(66, 66, 10, 0, '2022-03-01 22:03:32', '2022-03-01 22:03:32'),
(67, 67, 10, 0, '2022-03-01 22:04:33', '2022-03-01 22:04:33'),
(68, 68, 10, 0, '2022-03-01 22:06:05', '2022-03-01 22:06:05'),
(69, 69, 12, 0, '2022-03-01 22:06:35', '2022-03-01 23:44:07'),
(70, 66, 12, 0, '2022-03-01 23:19:02', '2022-03-01 23:43:11'),
(71, 71, 12, 0, '2022-03-01 23:19:36', '2022-03-01 23:43:45'),
(72, 72, 12, 0, '2022-03-01 23:20:56', '2022-03-01 23:44:54'),
(73, 73, 12, 0, '2022-03-01 23:21:48', '2022-03-01 23:22:14'),
(74, 74, 12, 0, '2022-03-01 23:23:29', '2022-03-01 23:23:29'),
(75, 75, 12, 0, '2022-03-01 23:24:05', '2022-03-01 23:42:39'),
(76, 80, 9, 0, '2022-03-01 23:25:50', '2022-03-01 23:25:50'),
(77, 78, 9, 0, '2022-03-01 23:28:32', '2022-03-01 23:28:32'),
(78, 79, 9, 0, '2022-03-01 23:29:01', '2022-03-01 23:29:01'),
(79, 80, 9, 0, '2022-03-01 23:29:27', '2022-03-01 23:29:27'),
(80, 81, 11, 0, '2022-03-01 23:30:33', '2022-04-10 08:07:59'),
(81, 82, 11, 0, '2022-03-01 23:31:30', '2022-04-10 08:07:35'),
(82, 83, 11, 0, '2022-03-01 23:31:52', '2022-04-10 08:07:09'),
(83, 84, 11, 0, '2022-03-01 23:32:12', '2022-04-10 08:06:49'),
(84, 85, 11, 0, '2022-03-01 23:32:32', '2022-04-10 08:06:30'),
(85, 86, 11, 0, '2022-03-01 23:32:34', '2022-04-10 08:06:00'),
(86, 87, 11, 0, '2022-03-01 23:33:19', '2022-04-10 08:05:36'),
(87, 88, 11, 0, '2022-03-01 23:33:40', '2022-04-10 08:04:47'),
(88, 89, 11, 0, '2022-03-01 23:35:02', '2022-04-10 08:04:13'),
(89, 90, 11, 0, '2022-03-01 23:35:23', '2022-04-10 08:02:45'),
(90, 91, 11, 0, '2022-03-01 23:50:04', '2022-03-01 23:50:04'),
(91, 92, 11, 0, '2022-03-01 23:50:45', '2022-03-01 23:50:45'),
(92, 93, 10, 0, '2022-03-01 23:51:11', '2022-03-01 23:51:11'),
(93, 94, 11, 0, '2022-03-01 23:52:54', '2022-03-01 23:52:54'),
(94, 95, 11, 0, '2022-03-01 23:53:20', '2022-03-01 23:53:20'),
(95, 97, 15, 0, '2022-03-01 23:53:59', '2022-04-10 07:31:09'),
(96, 96, 15, 0, '2022-03-01 23:54:20', '2022-04-10 07:29:32'),
(97, 98, 15, 0, '2022-03-01 23:54:44', '2022-04-10 07:37:36'),
(98, 99, 15, 0, '2022-03-01 23:55:06', '2022-03-01 23:55:06'),
(99, 100, 15, 0, '2022-03-01 23:55:30', '2022-03-01 23:55:30'),
(100, 101, 15, 0, '2022-03-02 02:12:39', '2022-03-02 02:12:39'),
(101, 102, 18, 0, '2022-03-02 02:12:59', '2022-03-02 02:12:59'),
(102, 104, 18, 0, '2022-03-02 02:13:13', '2022-03-02 02:16:41'),
(103, 105, 4, 0, '2022-03-02 02:37:33', '2022-03-02 02:37:33'),
(104, 106, 4, 0, '2022-03-02 02:37:45', '2022-03-02 02:37:45'),
(105, 107, 4, 0, '2022-03-02 02:37:55', '2022-03-02 02:37:55'),
(106, 108, 4, 0, '2022-03-02 02:38:05', '2022-03-02 02:38:05'),
(107, 109, 3, 0, '2022-03-02 05:32:04', '2022-04-10 07:57:39'),
(108, 110, 3, 0, '2022-03-02 05:32:17', '2022-04-10 08:00:29'),
(109, 111, 3, 0, '2022-03-02 05:32:35', '2022-04-10 08:00:13'),
(110, 112, 3, 0, '2022-03-02 05:32:46', '2022-04-10 07:59:39'),
(111, 113, 3, 0, '2022-03-02 05:33:14', '2022-04-10 07:59:05'),
(112, 114, 3, 0, '2022-03-02 05:33:44', '2022-04-10 07:58:42'),
(113, 115, 3, 0, '2022-03-02 05:33:57', '2022-04-10 07:58:09'),
(114, 116, 3, 0, '2022-03-02 05:34:13', '2022-04-10 07:55:19'),
(115, 117, 5, 0, '2022-03-02 05:48:25', '2022-04-10 07:54:37'),
(116, 118, 5, 0, '2022-03-02 05:48:39', '2022-04-10 07:54:14'),
(117, 119, 5, 0, '2022-03-02 05:48:50', '2022-04-10 07:53:56'),
(118, 120, 5, 0, '2022-03-02 05:49:01', '2022-04-10 07:52:31'),
(119, 121, 9, 0, '2022-03-02 06:09:19', '2022-03-02 06:09:19'),
(120, 122, 9, 0, '2022-03-02 06:09:37', '2022-03-02 06:09:37'),
(121, 123, 9, 0, '2022-03-02 06:09:51', '2022-03-02 06:09:51'),
(122, 124, 9, 0, '2022-03-02 06:10:08', '2022-03-02 06:10:08'),
(123, 125, 9, 0, '2022-03-02 06:10:19', '2022-03-02 06:10:19'),
(124, 1, 16, 0, '2022-03-02 06:31:16', '2022-04-10 06:31:25'),
(125, 127, 18, 0, '2022-03-02 06:31:31', '2022-03-02 06:31:31'),
(126, 128, 18, 0, '2022-03-02 06:31:50', '2022-03-02 06:31:50'),
(127, 129, 18, 0, '2022-03-02 06:32:06', '2022-03-02 06:32:06'),
(128, 130, 18, 0, '2022-03-02 06:32:19', '2022-03-02 06:32:19'),
(129, 131, 13, 0, '2022-03-02 08:17:12', '2022-04-10 07:44:09'),
(130, 134, 13, 0, '2022-03-02 08:17:24', '2022-04-10 07:43:43'),
(131, 133, 13, 0, '2022-03-02 08:17:39', '2022-04-10 07:43:11'),
(132, 132, 13, 0, '2022-03-02 08:17:50', '2022-04-10 07:42:53'),
(133, 135, 16, 0, '2022-03-02 08:18:02', '2022-04-01 18:21:29'),
(134, 140, 14, 0, '2022-03-02 08:33:39', '2022-04-10 07:35:43'),
(135, 137, 14, 0, '2022-03-02 08:33:54', '2022-04-10 07:35:24'),
(136, 138, 14, 0, '2022-03-02 08:34:09', '2022-04-10 07:35:06'),
(137, 139, 14, 0, '2022-03-02 08:34:26', '2022-04-10 07:34:47'),
(138, 136, 14, 0, '2022-03-02 08:34:43', '2022-04-10 07:34:16'),
(139, 139, 16, 0, '2022-03-02 08:35:19', '2022-03-02 08:35:38'),
(140, 147, 18, 0, '2022-03-02 08:56:42', '2022-04-01 18:26:17'),
(141, 148, 17, 0, '2022-03-02 08:56:53', '2022-04-01 18:26:35'),
(142, 145, 18, 0, '2022-03-02 08:57:06', '2022-04-01 18:28:12'),
(143, 144, 18, 0, '2022-03-02 08:57:18', '2022-04-01 18:28:32'),
(144, 149, 17, 0, '2022-03-02 08:57:33', '2022-04-01 18:27:48'),
(145, 142, 18, 0, '2022-03-02 08:57:47', '2022-04-01 18:27:32'),
(146, 146, 18, 0, '2022-03-02 08:58:00', '2022-04-01 18:28:51'),
(147, 155, 17, 0, '2022-03-02 10:05:37', '2022-03-02 10:05:37'),
(148, 154, 17, 0, '2022-03-02 10:05:51', '2022-03-02 10:05:51'),
(149, 153, 17, 0, '2022-03-02 10:06:03', '2022-03-02 10:06:03'),
(150, 152, 17, 0, '2022-03-02 10:06:16', '2022-03-02 10:06:16'),
(151, 151, 17, 0, '2022-03-02 10:06:29', '2022-03-02 10:06:29'),
(152, 150, 17, 0, '2022-03-02 10:06:44', '2022-03-02 10:06:44'),
(153, 149, 17, 0, '2022-03-02 10:06:58', '2022-03-02 10:06:58'),
(154, 148, 17, 0, '2022-03-02 10:07:13', '2022-07-18 06:54:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `HoTen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DiaChi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LoaiTK` int(11) NOT NULL,
  `AnhDaiDien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TrangThai` int(11) DEFAULT NULL,
  `Xoa` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `HoTen`, `password`, `Email`, `SDT`, `DiaChi`, `LoaiTK`, `AnhDaiDien`, `TrangThai`, `Xoa`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Khánh', '$2y$10$EQEqaY0mtni5ZCLKsc2E.ee2P5h7w1wDZgd2cRrCOgMNtff/eOv0K', 'admin@gmail.com', '1234567890', 'Phường 24,Quận Bình Thạnh,TP Hồ Chí Minh', 1, 'admin.jpg', 1, 0, '2022-01-05 20:36:29', '2022-01-05 20:36:29'),
(13, 'Nguyễn Văn A', '$2y$10$y3xKLvi.95sPJcrOHxXdtOa8I4UvYGuCutw3qcIQGsWhNSmDTAHA.', 'user@gmail.com', '0937653620', '45A Đường Nam Kỳ Khởi Nghĩa ,Phường Bến Nghé ,Quận 1, TP Hồ Chí Minh', 0, 'tetsts.png', 1, 0, '2022-10-11 04:33:44', '2022-10-11 04:40:34'),
(14, 'Nguyễn Văn An', '$2y$10$9jltZhk9WQTnfEK5wpVS7.oEvy1Z1OU6DNizlpuwSZ8sPknP/p/yq', 'vanan@gmail.com', '0937653620', '45A Đường Nam Kỳ Khởi Nghĩa ,Phường Bến Nghé ,Quận 1, TP Hồ Chí Minh', 0, 'xuhuong.jpg', 1, 0, '2022-10-11 04:52:23', '2022-10-11 04:53:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `hoadonban`
--
ALTER TABLE `hoadonban`
  ADD CONSTRAINT `hoadonban_ibfk_1` FOREIGN KEY (`id_makm`) REFERENCES `ma_giamgia` (`id`);

--
-- Các ràng buộc cho bảng `sach`
--
ALTER TABLE `sach`
  ADD CONSTRAINT `sach_ibfk_1` FOREIGN KEY (`NhaXuatBan`) REFERENCES `nhaxuatban` (`id`),
  ADD CONSTRAINT `sach_idkm_foreign` FOREIGN KEY (`IdKM`) REFERENCES `khuyenmai` (`id`),
  ADD CONSTRAINT `sach_idncc_foreign` FOREIGN KEY (`IdNCC`) REFERENCES `nhacungcap` (`id`);

--
-- Các ràng buộc cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD CONSTRAINT `theloai_tentlcha_foreign` FOREIGN KEY (`TenTLCha`) REFERENCES `theloaicha` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
