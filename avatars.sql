-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-08-2019 a las 16:05:46
-- Versión del servidor: 10.1.40-MariaDB
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
(1, '2019-08-28 16:55:28', '2019-08-28 16:55:28', 'sinBarba.jpg'),
(2, '2019-08-28 16:55:28', '2019-08-28 16:55:28', 'señor.jpg'),
(3, '2019-08-28 16:55:28', '2019-08-28 16:55:28', 'chicoLargo.jpg'),
(4, '2019-08-28 16:55:28', '2019-08-28 16:55:28', 'pelaM.jpg'),
(5, '2019-08-28 16:55:28', '2019-08-28 16:55:28', 'gatoGris.jpg'),
(6, '2019-08-28 16:55:28', '2019-08-28 16:55:28', 'señora.jpg'),
(7, '2019-08-28 16:55:28', '2019-08-28 16:55:28', 'chicaCortoM.jpg'),
(8, '2019-08-28 16:55:28', '2019-08-28 16:55:28', 'sinBarbaM.jpg'),
(9, '2019-08-28 16:55:28', '2019-08-28 16:55:28', 'perro1.jpg'),
(10, '2019-08-28 16:55:28', '2019-08-28 16:55:28', 'conBarba.jpg'),
(11, '2019-08-28 16:55:29', '2019-08-28 16:55:29', 'chicaCorto.jpg'),
(12, '2019-08-28 16:55:29', '2019-08-28 16:55:29', 'perro2.jpg'),
(13, '2019-08-28 16:55:29', '2019-08-28 16:55:29', 'chicaColorada.jpg'),
(14, '2019-08-28 16:55:29', '2019-08-28 16:55:29', 'chicaLargo.jpg'),
(15, '2019-08-28 16:55:29', '2019-08-28 16:55:29', 'gatoNaranja.jpg');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
