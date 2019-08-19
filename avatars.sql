-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-08-2019 a las 00:07:52
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
(1, NULL, NULL, '/img/Avatars/chicaCorto.jpg'),
(2, NULL, NULL, '/img/Avatars/chicaCortoM.jpg'),
(3, NULL, NULL, '/img/Avatars/chicaLargo.jpg'),
(4, NULL, NULL, '/img/Avatars/conBarba.jpg'),
(5, NULL, NULL, '/img/Avatars/gatoNaranja.jpg'),
(6, NULL, NULL, '/img/Avatars/pelaM.jpg'),
(7, NULL, NULL, '/img/Avatars/perro1.jpg'),
(8, NULL, NULL, '/img/Avatars/señor.jpg'),
(9, NULL, NULL, '/img/Avatars/señora.jpg'),
(10, NULL, NULL, '/img/Avatars/sinBarba.jpg'),
(11, NULL, NULL, '/img/Avatars/sinBarbaM.jpg');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
