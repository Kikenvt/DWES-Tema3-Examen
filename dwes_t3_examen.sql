-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-12-2023 a las 12:38:55
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dwes_t3_examen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntosderecogida`
--

CREATE TABLE `puntosderecogida` (
  `id` int(11) NOT NULL,
  `localidad` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `capacidad` int(11) NOT NULL,
  `ocupadas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `puntosderecogida`
--

INSERT INTO `puntosderecogida` (`id`, `localidad`, `direccion`, `capacidad`, `ocupadas`) VALUES
(1, 'Gijón', 'Calle Corrida, Gijón', 14, 14),
(2, 'Oviedo', 'Calle Melquiades Álvarez, Oviedo', 15, 1),
(3, 'Avilés', 'Plaza de España, Avilés', 6, 5),
(4, 'Gijón', 'Avenida de la Costa, Gijón', 11, 5),
(5, 'Oviedo', 'Calle Independencia, Oviedo', 7, 6),
(6, 'Avilés', 'Avenida de Alemania, Avilés', 20, 4),
(7, 'Gijón', 'Plaza Mayor, Gijón', 18, 16),
(8, 'Oviedo', 'Plaza de la Escandalera, Oviedo', 5, 5),
(9, 'Avilés', 'Calle de La Fruta, Avilés', 17, 0),
(10, 'Gijón', 'Calle Los Moros, Gijón', 10, 1),
(11, 'Oviedo', 'Calle Fruela, Oviedo', 5, 3),
(12, 'Avilés', 'Calle de Rivero, Avilés', 10, 7),
(13, 'Gijón', 'Calle Instituto, Gijón', 10, 9),
(14, 'Oviedo', 'Calle Uría, Oviedo', 9, 6),
(15, 'Avilés', 'Calle de La Cámara, Avilés', 5, 5),
(20, 'Oviedo', 'Uria 33', 5, 2),
(21, 'Oviedo', 'Uria 33', 5, 2),
(22, 'Avilés', 'aaa', 1, 1),
(23, 'Avilés', 'Avd San agustin', 10, 2),
(24, 'Oviedo', 'Melquiades', 12, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `puntosderecogida`
--
ALTER TABLE `puntosderecogida`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `puntosderecogida`
--
ALTER TABLE `puntosderecogida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
