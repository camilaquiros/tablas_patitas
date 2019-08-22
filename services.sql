-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-08-2019 a las 19:35:12
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
-- Estructura de tabla para la tabla `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `longDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `longDescription`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Clinica veterinaria', 'Et eum nihil.', 'Todos los días, entre las 9 y las 20.30 hs. funcionan la atención y los consultorios de manera habitual. A partir de las 20.30 hs., y durante toda la noche, tenemos un Servicio de Guardia, con un médico a cargo y su asistente. El equipo está capacitado para atender tanto casos clínicos que no requieren de intervención rápida como para actuar frente a urgencias y emergencias. Nuestro consultorio de urgencias, cuenta con todo lo necesario para atender a su mascota rápidamente y no generar esperas innecesarias.', '2019-08-21 14:17:00', '2019-08-21 14:17:00', 'medic-vet1.jpg'),
(2, 'Estudios especiales', 'Animi et ipsam.', 'La tecnología avanza cada día más y esto nos permite tener un diagnóstico veterinario mas especifico por cada uno de los pacientes. Contamos con los equipos necesarios del laboratorio de análisis clínicos y patológicos, cardiología, rayos X y ecografía, y así poder brindar una atención completa y única para su mascota. ', '2019-08-21 14:17:00', '2019-08-21 14:17:00', 'estudios.jpg'),
(3, 'Entrenador personal para tu mascota', 'Et incidunt.', 'Creemos que el vínculo con tu perro es fundamental por eso vamos a trabajar juntos para que seas vos quien realmente aprenda a conectar correctamente con tu perro.\r\nEn estos años hemos entrenado muchísimos perros y cada uno es un nuevo desafío. Por eso estamos convencidos que podemos ayudarte a vos y a tu perro a lograr el equilibrio que necesitan.\r\nConsulta en nuestras oficinas o llamanos al 0810-220-8383 (vete).', '2019-08-21 14:17:00', '2019-08-21 14:17:00', 'entrenamiento.jpg'),
(4, 'Peluqueria Canina', 'Possimus quos doloremque.', 'La peluquería no es sólo una cuestión de higiene o belleza: es una excelente oportunidad para que podamos cuidar a tu perro.\r\nRealizamos servicio de Baño, corte de razas, corte de uñas.\r\nAdemás utilizamos productos de primera calidad y específicos cómo pulguicidas, hipoalergénicos, para piel sensible, perfumados, etc… Contactános al 0810-220-8383 (vete) y agendamos tu turno.', '2019-08-21 14:17:00', '2019-08-21 14:17:00', 'peluqueriaCanina.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
