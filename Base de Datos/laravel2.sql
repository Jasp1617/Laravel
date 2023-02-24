-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para laravel2
CREATE DATABASE IF NOT EXISTS `laravel2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `laravel2`;

-- Volcando estructura para tabla laravel2.empleados
CREATE TABLE IF NOT EXISTS `empleados` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Apellido` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sexo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla laravel2.empleados: ~11 rows (aproximadamente)
REPLACE INTO `empleados` (`id`, `Nombre`, `Apellido`, `Sexo`, `Correo`, `Foto`, `created_at`, `updated_at`) VALUES
	(1, 'helmunt', 'urueta', 'Masculino', 'hfe@mail.com', 'C:\\Users\\susan\\AppData\\Local\\Temp\\php5F1B.tmp', NULL, NULL),
	(2, 'helmunt', 'urueta', 'Masculino', 'hfe@mail.com', 'C:\\Users\\susan\\AppData\\Local\\Temp\\phpCEE2.tmp', NULL, NULL),
	(3, 'helmunt', 'urueta', 'Masculino', 'hfe@mail.com', 'C:\\Users\\susan\\AppData\\Local\\Temp\\php6716.tmp', NULL, NULL),
	(4, 'helmunt', 'urueta', 'Masculino', 'hfe@mail.com', 'upload/radlPjUR8PrvvkWRE3jRP1Vrt4xqsEilEw55ZjH0.pdf', NULL, NULL),
	(5, 'Andres', 'urueta', 'Masculino', 'hfe@mail.com', 'upload/9v3QLsmXaUsziuaYN6DOIWeyM9KgKvmu7nABPuH7.jpg', NULL, '2023-02-13 07:51:57'),
	(6, 'helmunt', 'urueta', 'Masculino', 'hfe@mail.com', 'upload/AfTO0JlvcTpxEocFv3Y7kcDVx8ru8MENh4qf70b8.jpg', NULL, NULL),
	(7, 'helmunt', 'urueta', 'Masculino', 'hfe@mail.com', 'upload/McSig8ndtFNiULkpGXACdXDn7HRvJ9YC7xpDrVkf.jpg', NULL, NULL),
	(8, 'helmunt', 'urueta', 'Masculino', 'hfe@mail.com', 'upload/Yr2Uji4O18xMhk5qJbHqJDKP290uwcvQW8g98A2u.jpg', NULL, NULL),
	(9, 'helmunt', 'urueta', 'Masculino', 'hfe@mail.com', 'upload/BYsxcPRkk0fMIYgFryBVa6qjUGZBeCs5oW7odweN.jpg', NULL, NULL),
	(10, 'helmunt', 'urueta', 'Masculino', 'hfe@mail.com', 'upload/pkickkTl4Mks42uaqDIOfc7Qx6dKHOhvgDu9tSj8.jpg', NULL, NULL),
	(11, 'helmunt', 'urueta', 'Masculino', 'hfe@mail.com', 'upload/blmxha92EQcPDHcsZtoQj2q26iYg38KDjRgmaJCH.jpg', NULL, NULL);

-- Volcando estructura para tabla laravel2.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla laravel2.failed_jobs: ~0 rows (aproximadamente)

-- Volcando estructura para tabla laravel2.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla laravel2.migrations: ~0 rows (aproximadamente)
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2023_02_12_224905_create_empleados_table', 2);

-- Volcando estructura para tabla laravel2.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla laravel2.password_resets: ~0 rows (aproximadamente)

-- Volcando estructura para tabla laravel2.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla laravel2.personal_access_tokens: ~0 rows (aproximadamente)

-- Volcando estructura para tabla laravel2.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
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

-- Volcando datos para la tabla laravel2.users: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
