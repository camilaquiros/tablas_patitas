-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-08-2019 a las 05:32:47
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
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `avatars`
--

INSERT INTO `avatars` (`id`, `url`, `code`, `created_at`, `updated_at`) VALUES
(1, '/img/Avatars/chicaCorto.jpg', 'cc', NULL, NULL),
(2, '/img/Avatars/chicaCortoM.jpg', 'ccm', NULL, NULL),
(3, '/img/Avatars/chicaLargo.jpg', 'cl', NULL, NULL),
(4, '/img/Avatars/conBarba.jpg', 'cb', NULL, NULL),
(5, '/img/Avatars/gatoNaranja.jpg', 'gn', NULL, NULL),
(6, '/img/Avatars/pelaM,jpg', 'pm', NULL, NULL),
(7, '/img/Avatars/perro1.jpg', 'p1', NULL, NULL),
(8, '/img/Avatars/señor.jpg', 'sr', NULL, NULL),
(9, '/img/Avatars/señora.jpg', 'sra', NULL, NULL),
(10, '/img/Avatars/sinBarba.jpg', 'sb', NULL, NULL),
(11, '/img/Avatars/sinBarbaM.jpg', 'sbm', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `avatars`
--
ALTER TABLE `avatars`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `avatars`
--
ALTER TABLE `avatars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
