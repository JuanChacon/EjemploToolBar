-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-04-2017 a las 23:51:32
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eventossociales`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` int(11) NOT NULL,
  `siglas` varchar(4) NOT NULL,
  `nombre` varchar(450) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `siglas`, `nombre`) VALUES
(1, 'ARQ', 'Arquitectura'),
(2, 'ISC', 'Ingenieria en Sistemas Computacionales'),
(3, 'II', 'Ingenieria Industrial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `id` int(12) NOT NULL,
  `nombreEv` varchar(450) NOT NULL,
  `nombreExpo` varchar(450) NOT NULL,
  `MaterialExtra` varchar(450) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`id`, `nombreEv`, `nombreExpo`, `MaterialExtra`) VALUES
(1, 'Platica motivacional', 'Luis', 'martillo'),
(2, 'Curso de JS', 'Luis', 'PC'),
(3, 'Curso de IOS', 'Armando', 'PC'),
(9, 'Curso robotica', 'Luis alcala', 'Computadora'),
(11, '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(450) NOT NULL,
  `noControl` int(15) NOT NULL,
  `carrera` varchar(450) NOT NULL,
  `id_evento` int(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `nombre`, `noControl`, `carrera`, `id_evento`) VALUES
(5, 'juan', 1354, 'ISC', 1),
(6, 'Juan', 135503, 'ISC', 2),
(7, 'London', 13, 'IGM', 3),
(10, 'London', 13, 'IGM', 3),
(11, 'Mariana', 13550314, 'Ingenieria en Sistemas Computacionales', 3),
(12, 'Mariana', 13550314, 'Ingenieria en Sistemas Computacionales', 1),
(13, 'Mariana', 13550314, 'Ingenieria en Sistemas Computacionales', 1),
(14, 'Mariana', 13550314, 'Ingenieria en Sistemas Computacionales', 1),
(15, 'Mariana', 13550314, 'Ingenieria en Sistemas Computacionales', 1),
(16, 'London', 13550340, 'Ingenieria en Sistemas Computacionales', 9),
(17, 'Luisa', 13550346, 'Arquitectura', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
