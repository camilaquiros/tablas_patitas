-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-08-2019 a las 11:50:51
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `patitas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avatars`
--

CREATE TABLE `avatars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `avatars`
--

INSERT INTO `avatars` (`id`, `created_at`, `updated_at`, `url`) VALUES
(1, '2019-08-29 06:50:36', '2019-08-29 06:50:36', 'pelaM.jpg'),
(2, '2019-08-29 06:50:36', '2019-08-29 06:50:36', 'chicaColorada.jpg'),
(3, '2019-08-29 06:50:36', '2019-08-29 06:50:36', 'gatoGris.jpg'),
(4, '2019-08-29 06:50:36', '2019-08-29 06:50:36', 'sinBarbaM.jpg'),
(5, '2019-08-29 06:50:36', '2019-08-29 06:50:36', 'perro1.jpg'),
(6, '2019-08-29 06:50:36', '2019-08-29 06:50:36', 'sinBarba.jpg'),
(7, '2019-08-29 06:50:36', '2019-08-29 06:50:36', 'señora.jpg'),
(8, '2019-08-29 06:50:36', '2019-08-29 06:50:36', 'señor.jpg'),
(9, '2019-08-29 06:50:36', '2019-08-29 06:50:36', 'conBarba.jpg'),
(10, '2019-08-29 06:50:36', '2019-08-29 06:50:36', 'perro2.jpg'),
(11, '2019-08-29 06:50:36', '2019-08-29 06:50:36', 'chicaCortoM.jpg'),
(12, '2019-08-29 06:50:36', '2019-08-29 06:50:36', 'chicaLargo.jpg'),
(13, '2019-08-29 06:50:36', '2019-08-29 06:50:36', 'chicoLargo.jpg'),
(14, '2019-08-29 06:50:36', '2019-08-29 06:50:36', 'gatoNaranja.jpg'),
(15, '2019-08-29 06:50:36', '2019-08-29 06:50:36', 'chicaCorto.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Perro', '2019-08-29 06:50:36', '2019-08-29 06:50:36'),
(2, 'Gato', '2019-08-29 06:50:36', '2019-08-29 06:50:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `favorites`
--

INSERT INTO `favorites` (`id`, `created_at`, `updated_at`, `product_id`, `user_id`) VALUES
(3, '2019-08-27 00:01:00', '2019-08-27 00:01:00', 1, 4),
(11, '2019-08-29 02:18:16', '2019-08-29 02:18:16', 1, 3),
(12, '2019-08-29 02:59:26', '2019-08-29 02:59:26', 5, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_02_003511_create_all_tables', 1),
(4, '2019_08_13_233858_create_services_table', 1),
(5, '2019_08_15_005212_create_avatars_table', 1),
(6, '2019_08_15_021424_create_products_users_table', 1),
(7, '2019_08_17_214712_add_column_state_to_user', 1),
(8, '2019_08_18_003121_delete_age_from_users', 1),
(9, '2019_08_18_040246_add_nullable_from_users', 1),
(10, '2019_08_22_161135_add_long_desc_to_services', 1),
(11, '2019_08_22_161411_remove_category_from_services', 1),
(12, '2019_08_24_212702_delete_description_from_services', 2),
(13, '2019_08_25_220336_create_favorites_table', 2),
(14, '2019_08_26_220801_add_nullable_from_users', 3),
(15, '2019_08_27_152651_create_pets_table', 4),
(16, '2019_08_28_181553_create_roles_table', 5),
(17, '2019_08_28_181815_create_role_user_table', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pets`
--

CREATE TABLE `pets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pets`
--

INSERT INTO `pets` (`id`, `created_at`, `updated_at`, `photo`, `user_id`) VALUES
(7, '2019-08-29 02:46:45', '2019-08-29 02:46:45', 'img_5d6712653fb39.jpeg', 3),
(8, '2019-08-29 02:46:55', '2019-08-29 02:46:55', 'img_5d67126fa3bf5.jpeg', 3),
(9, '2019-08-29 02:47:08', '2019-08-29 02:47:08', 'img_5d67127c26335.jpeg', 3),
(10, '2019-08-29 02:47:19', '2019-08-29 02:47:19', 'img_5d6712878a911.jpeg', 3),
(11, '2019-08-29 02:47:27', '2019-08-29 02:47:27', 'img_5d67128f122f6.jpeg', 3),
(12, '2019-08-29 08:51:17', '2019-08-29 08:51:17', 'img_5d6767d543c31.jpeg', 1),
(13, '2019-08-29 08:51:25', '2019-08-29 08:51:25', 'img_5d6767dd64a3c.jpeg', 1),
(14, '2019-08-29 08:51:46', '2019-08-29 08:51:46', 'img_5d6767f2b6cf2.jpeg', 1),
(15, '2019-08-29 08:51:58', '2019-08-29 08:51:58', 'img_5d6767fe34778.jpeg', 1),
(16, '2019-08-29 08:52:11', '2019-08-29 08:52:11', 'img_5d67680bcba03.jpeg', 1),
(17, '2019-08-29 09:55:22', '2019-08-29 09:55:22', 'img_5d6776da11d30.jpeg', 1),
(18, '2019-08-29 09:55:35', '2019-08-29 09:55:35', 'img_5d6776e76fe81.jpeg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `offer` smallint(6) NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rating` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `description`, `price`, `offer`, `category_id`, `subcategory_id`, `rating`, `created_at`, `updated_at`) VALUES
(1, 'Colchon', 'img_5d61888615b86.jpeg', 'Lorem ipsum dolteor sit amet, consectetur adipisicing elit, sed do eiusmod mpor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '800.00', 1, 1, 4, 1, '2019-08-25 00:57:10', '2019-08-25 00:57:10'),
(2, 'Collar', 'img_5d618907933db.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '350.00', 0, 1, 4, 3, '2019-08-25 00:59:19', '2019-08-25 00:59:19'),
(3, 'Correa', 'img_5d61894fb9ed3.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '950.00', 0, 1, 4, 3, '2019-08-25 01:00:31', '2019-08-25 01:00:31'),
(4, 'Cucha', 'img_5d61898075287.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '1750.00', 1, 1, 4, 5, '2019-08-25 01:01:20', '2019-08-25 01:01:20'),
(5, 'Hueso masticable', 'img_5d618b19d5e28.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '150.00', 0, 1, 3, 3, '2019-08-25 01:08:09', '2019-08-26 07:35:23'),
(6, 'Litera para gatos', 'img_5d618c07ae338.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '475.00', 0, 2, 5, 3, '2019-08-25 01:12:07', '2019-08-26 07:36:31'),
(7, 'Comedero para gato', 'img_5d618c6706a99.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '546.00', 0, 2, 4, 5, '2019-08-25 01:13:43', '2019-08-25 01:13:43'),
(8, 'Rascador con caja', 'img_5d618cde0d20a.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '1199.00', 1, 2, 4, 5, '2019-08-25 01:15:42', '2019-08-25 01:15:42'),
(9, 'Transportador grande', 'img_5d618deb20837.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '1950.00', 0, 1, 4, 2, '2019-08-25 01:20:11', '2019-08-25 01:20:11'),
(10, 'Alimento adultos 15kg', 'img_5d618fb47eb40.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2499.00', 1, 1, 1, 4, '2019-08-25 01:27:48', '2019-08-25 01:27:48'),
(11, 'Alimento adultos 7.5 Kg', 'img_5d61923a32ded.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '1390.00', 0, 1, 1, 4, '2019-08-25 01:38:34', '2019-08-25 01:38:34'),
(12, 'Alimento raza pequeña', 'img_5d6193163c2d2.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '249.00', 0, 1, 1, 3, '2019-08-25 01:42:14', '2019-08-25 01:42:14'),
(13, 'Alimento bajas calorias 3kg', 'img_5d6193dedd54c.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '999.00', 0, 1, 1, 5, '2019-08-25 01:45:34', '2019-08-25 01:45:34'),
(14, 'Alimento adultos 3kg', 'img_5d61968710afd.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '249.00', 0, 2, 1, 3, '2019-08-25 01:56:55', '2019-08-25 01:56:55'),
(15, 'Alimento gatitos 1.5Kg', 'img_5d6197001b73e.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '299.00', 0, 2, 1, 5, '2019-08-25 01:58:56', '2019-08-25 01:58:56'),
(16, 'Alimento especial urinario 1kg', 'img_5d61979a568c8.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '230.00', 0, 2, 1, 5, '2019-08-25 02:01:30', '2019-08-25 02:01:30'),
(17, 'Alimento bajas calorias 3kg', 'img_5d61985b4e5b2.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '1560.00', 0, 2, 1, 5, '2019-08-25 02:04:43', '2019-08-25 02:04:43'),
(18, 'Golosina lata pollo y arroz', 'img_5d6198d788f81.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '160.00', 1, 2, 3, 2, '2019-08-25 02:06:47', '2019-08-26 07:35:48'),
(19, 'Bocaditos de atún', 'img_5d619948a2773.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '210.00', 0, 2, 3, 3, '2019-08-25 02:08:40', '2019-08-26 07:35:58'),
(20, 'Bocaditos para digestión', 'img_5d6199ffed973.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '220.00', 0, 2, 3, 2, '2019-08-25 02:11:43', '2019-08-26 07:36:11'),
(21, 'Snack semihúmedo', 'img_5d619b09a445f.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '110.00', 1, 1, 3, 1, '2019-08-25 02:16:09', '2019-08-26 07:36:58'),
(22, 'Bocaditos de pollo', 'img_5d619bc5f2b34.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '240.00', 0, 1, 3, 5, '2019-08-25 02:19:17', '2019-08-26 07:37:26'),
(23, 'Golosina humeda cachorros', 'img_5d619d4f30fc9.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '180.00', 1, 1, 3, 2, '2019-08-25 02:25:51', '2019-08-26 07:37:40'),
(24, 'Bebedero fuente', 'img_5d619f1fb1b9d.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '680.00', 1, 2, 4, 4, '2019-08-25 02:33:35', '2019-08-25 02:33:35'),
(25, 'Hamaca gatuna', 'img_5d619feeee02e.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '890.00', 1, 2, 4, 5, '2019-08-25 02:37:02', '2019-08-25 02:37:03'),
(26, 'Rascador simple', 'img_5d61a04b48552.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '450.00', 0, 2, 4, 3, '2019-08-25 02:38:35', '2019-08-25 02:38:35'),
(27, 'Collares varios', 'img_5d61a2baccf5f.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '150.00', 0, 2, 4, 5, '2019-08-25 02:48:58', '2019-08-26 07:38:19'),
(28, 'Disfraz policía', 'img_5d61a38844872.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '560.00', 1, 2, 4, 5, '2019-08-25 02:52:24', '2019-08-26 07:38:52'),
(29, 'Disfraz pirata', 'img_5d61a3e710fec.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '560.00', 0, 2, 4, 5, '2019-08-25 02:53:59', '2019-08-26 07:39:11'),
(30, 'Rascador horizontal', 'img_5d61a54185f62.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '760.00', 0, 2, 4, 3, '2019-08-25 02:59:45', '2019-08-26 07:39:23'),
(31, 'Cepillo grande', 'img_5d61a5c6ac26a.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '280.00', 0, 1, 5, 4, '2019-08-25 03:01:58', '2019-08-26 07:39:35'),
(32, 'Bolsitas higiénicas 25u', 'img_5d61a6759ffcb.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '89.00', 1, 1, 5, 4, '2019-08-25 03:04:53', '2019-08-26 07:40:04'),
(33, 'Shampoo con desinfectante', 'img_5d61a83a2866a.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '450.00', 0, 1, 2, 4, '2019-08-25 03:12:26', '2019-08-25 03:12:26'),
(34, 'Shampoo extra brillo', 'img_5d61a8d93f35d.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '230.00', 0, 1, 5, 2, '2019-08-25 03:15:05', '2019-08-26 07:40:39'),
(35, 'Shampoo pelaje claro', 'img_5d61a96654800.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '190.00', 1, 1, 5, 3, '2019-08-25 03:17:26', '2019-08-26 07:40:50'),
(36, 'Pipeta 10-20kg', 'img_5d61aa3697d49.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '150.00', 0, 1, 2, 2, '2019-08-25 03:20:54', '2019-08-25 03:20:54'),
(37, 'Antiparasitario liquido', 'img_5d61aacadf9e5.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '570.00', 0, 1, 2, 4, '2019-08-25 03:23:22', '2019-08-25 03:23:22'),
(38, 'Collar grande antiparasitario', 'img_5d61ab2098543.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '230.00', 0, 1, 2, 3, '2019-08-25 03:24:48', '2019-08-25 03:24:48'),
(39, 'Antiparasitario liquido', 'img_5d61ac04c25e9.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '540.00', 0, 2, 2, 4, '2019-08-25 03:28:36', '2019-08-25 03:28:36'),
(40, 'Collar antipulgas', 'img_5d61ac952d605.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '230.00', 0, 2, 2, 3, '2019-08-25 03:31:01', '2019-08-25 03:31:01'),
(41, 'Pipeta 0.5ml', 'img_5d61aceb38a2e.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '150.00', 0, 2, 2, 4, '2019-08-25 03:32:27', '2019-08-25 03:32:27'),
(42, 'Guante sacapelos', 'img_5d65aa39925ef.jpeg', 'Lorem ipsum dolteor sit amet, consectetur adipisicing elit, sed do eiusmod mpor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '250.00', 0, 2, 5, 3, '2019-08-28 01:10:01', '2019-08-28 01:10:02'),
(43, 'Piedras Sanitaria duración prolongada', 'img_5d65aae41864b.jpeg', 'Lorem ipsum dolteor sit amet, consectetur adipisicing elit, sed do eiusmod mpor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '160.00', 0, 2, 5, 5, '2019-08-28 01:12:52', '2019-08-28 01:12:52'),
(44, 'Piedras sanitarias clásica', 'img_5d65ab5f07f8e.jpeg', 'Lorem ipsum dolteor sit amet, consectetur adipisicing elit, sed do eiusmod mpor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '130.00', 0, 2, 5, 2, '2019-08-28 01:14:54', '2019-08-28 01:14:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_users`
--

CREATE TABLE `products_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `services`
--

INSERT INTO `services` (`id`, `name`, `longDescription`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Clinica veterinaria', 'Todos los días, entre las 9 y las 20.30 hs. funcionan la atención y los consultorios de manera habitual. A partir de las 20.30 hs., y durante toda la noche, tenemos un Servicio de Guardia, con un médico a cargo y su asistente. El equipo está capacitado para atender tanto casos clínicos que no requieren de intervención rápida como para actuar frente a urgencias y emergencias. Nuestro consultorio de urgencias, cuenta con todo lo necesario para atender a su mascota rápidamente y no generar esperas innecesarias.', '2019-08-21 17:17:00', '2019-08-21 17:17:00', 'medic-vet1.jpg'),
(2, 'Estudios especiales', 'La tecnología avanza cada día más y esto nos permite tener un diagnóstico veterinario mas especifico por cada uno de los pacientes. Contamos con los equipos necesarios del laboratorio de análisis clínicos y patológicos, cardiología, rayos X y ecografía, y así poder brindar una atención completa y única para su mascota. ', '2019-08-21 17:17:00', '2019-08-21 17:17:00', 'estudios.jpg'),
(3, 'Entrenador personal para tu mascota', 'Creemos que el vínculo con tu perro es fundamental por eso vamos a trabajar juntos para que seas vos quien realmente aprenda a conectar correctamente con tu perro.\r\nEn estos años hemos entrenado muchísimos perros y cada uno es un nuevo desafío. Por eso estamos convencidos que podemos ayudarte a vos y a tu perro a lograr el equilibrio que necesitan.\r\nConsulta en nuestras oficinas o llamanos al 0810-220-8383 (vete).', '2019-08-21 17:17:00', '2019-08-21 17:17:00', 'entrenamiento.jpg'),
(4, 'Peluqueria Canina', 'La peluquería no es sólo una cuestión de higiene o belleza: es una excelente oportunidad para que podamos cuidar a tu perro.\r\nRealizamos servicio de Baño, corte de razas, corte de uñas.\r\nAdemás utilizamos productos de primera calidad y específicos cómo pulguicidas, hipoalergénicos, para piel sensible, perfumados, etc… Contactános al 0810-220-8383 (vete) y agendamos tu turno.', '2019-08-21 17:17:00', '2019-08-21 17:17:00', 'peluqueriaCanina.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Alimentos', '2019-08-29 06:50:36', '2019-08-29 06:50:36'),
(2, 'Salud', '2019-08-29 06:50:36', '2019-08-29 06:50:36'),
(3, 'Snacks', '2019-08-29 06:50:36', '2019-08-29 06:50:36'),
(4, 'Accesorios', '2019-08-29 06:50:36', '2019-08-29 06:50:36'),
(5, 'Estetica e higiene', '2019-08-29 06:50:36', '2019-08-29 06:50:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` smallint(6) DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `full_name`, `country`, `state`, `username`, `shipping_address`, `email`, `email_verified_at`, `password`, `avatar`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Camila', 'Argentina', 'Capital Federal', 'camiqdsadas', '25 de mayo 758', 'camiq_07@hotmail.com', NULL, '$2y$10$aBrE9skWWq.eWXd7P5B/yeA5fptg/yvLjovz0VVsePEpt9xD46S9q', 'chicaCortoM.jpg', 0, NULL, '2019-08-23 07:55:07', '2019-08-29 08:52:30'),
(2, 'Camila A. Quiros', 'AR', NULL, 'csfdsfds', NULL, 'camila.quiros.07@gmail.com', NULL, '$2y$10$lNMT/GbnMtIJ2a1crh26CeyCF8FcfGkNWxFe462Smi9Nfg7l188JO', 'chicoLargo.jpg', 0, NULL, '2019-08-24 10:07:55', '2019-08-24 10:07:55'),
(3, 'Camila A. Quiros', 'Argentina', 'Salta', 'adminpatitas', '25 de Mayo 758, 8A', 'admin@admin.com', NULL, '$2y$10$InOoy6BX.oXmxy1OppuKjeCqQpfldCqAUZH162trioBzenrPV1.6K', 'perro1.jpg', 1, NULL, '2019-08-26 07:32:38', '2019-08-29 01:41:13'),
(4, 'Camila Quiros', 'AR', '70', 'fdfdsfdsfds', NULL, 'camiq_ffdf07@hotmail.com', NULL, '$2y$10$SfPrOp7c2ckpBiN4TzsoOu6EJRq/4.TyPtYAz4h1QeTqLVZBv6gJy', 'chicoLargo.jpg', 0, NULL, '2019-08-26 23:04:47', '2019-08-26 23:04:47'),
(5, 'Camila Quiros', 'Argentina', 'Catamarca', 'dsdadcxszs', NULL, 'camiq_07@hotmail.comdfs', NULL, '$2y$10$BJX0xwYNMUy0zcUICChiUOlrkDdB1qc5ZoBEENs/syDVDQG4c.bBS', 'perro2.jpg', 0, NULL, '2019-08-27 00:05:35', '2019-08-27 00:28:19'),
(6, 'Administration', 'Argentina', 'Ciudad Autónoma de Buenos Aires', 'admin2019', NULL, 'administration@gmail.com', NULL, '$2y$10$GhCzXLfA63BTvwuiSbCVL.WIbZ0TNEyhbW8lCCnGwZ208SL2mgQjO', 'chicaCorto.jpg', 1, NULL, '2019-08-28 00:49:51', '2019-08-28 00:49:51'),
(7, 'Silvia zabala', 'Argentina', 'Misiones', 'silvi2019', NULL, 'silviazabala1512@gmail.com', NULL, '$2y$10$rOEjskp73JLivLiHpCf4kODey4cxbdthEotQ.BVnYqgEpykoLJMx.', 'chicaCorto.jpg', 1, NULL, '2019-08-28 03:35:58', '2019-08-28 03:35:58');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `avatars`
--
ALTER TABLE `avatars`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_product_id_foreign` (`product_id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pets_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indices de la tabla `products_users`
--
ALTER TABLE `products_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_users_product_id_foreign` (`product_id`),
  ADD KEY `products_users_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `avatars`
--
ALTER TABLE `avatars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `pets`
--
ALTER TABLE `pets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `products_users`
--
ALTER TABLE `products_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `pets`
--
ALTER TABLE `pets`
  ADD CONSTRAINT `pets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`);

--
-- Filtros para la tabla `products_users`
--
ALTER TABLE `products_users`
  ADD CONSTRAINT `products_users_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `products_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
