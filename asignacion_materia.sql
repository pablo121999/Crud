-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-01-2023 a las 19:10:24
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `asignacion_materia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `id_asignatura` smallint(5) NOT NULL,
  `nombre` char(60) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `creditos` tinyint(10) NOT NULL,
  `area_conocimiento` char(60) NOT NULL,
  `electiva_u_obligatoria` char(30) NOT NULL,
  `id_docente` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`id_asignatura`, `nombre`, `descripcion`, `creditos`, `area_conocimiento`, `electiva_u_obligatoria`, `id_docente`) VALUES
(1, 'calculo 1', 'Repaso de Algebra y Trigonometrıa, Desigualdades y Completitud, Funciones Reales, Vectores en el plano y la recta, Cónicas, Lımites y continuidad, La derivada y derivación, Aplicación de la derivada, Técnicas de integración, la integral definida, Series infinitas e integrales impropias.', 3, 'Ingeniería y Arquitectura', 'obligatoria', '3'),
(4, 'biologia', 'aprenderemos apreciar la naturaleza en especial los seres vivos', 2, 'ciencias', 'obligatoria', '2'),
(5, 'trigonometria', 'matematicas', 3, 'ciencias matematicas', 'obligatoria', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `id_docente` smallint(5) NOT NULL,
  `documento` int(10) NOT NULL,
  `nombres` char(45) NOT NULL,
  `telefono` bigint(11) NOT NULL,
  `email` char(45) NOT NULL,
  `direccion` char(60) NOT NULL,
  `ciudad` char(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`id_docente`, `documento`, `nombres`, `telefono`, `email`, `direccion`, `ciudad`) VALUES
(1, 1105307865, 'arcadio portela oliveros', 3227893920, 'luisarcadio@gmail.com', 'calle 12 cr 2', 'itagui'),
(2, 5876694, 'maria del pilar', 3124563213, 'mariadelpilar@gmail.com', 'el poblado', 'medellin'),
(3, 5978554, 'Edith garcia', 3123295643, 'edith@gmail.com', 'barrio dolores', 'cali');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id_estudiante` mediumint(7) NOT NULL,
  `documento` int(10) NOT NULL,
  `nombres` char(45) NOT NULL,
  `telefono` bigint(11) NOT NULL,
  `email` char(45) NOT NULL,
  `direccion` char(60) NOT NULL,
  `ciudad` char(40) NOT NULL,
  `semestre` tinyint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id_estudiante`, `documento`, `nombres`, `telefono`, `email`, `direccion`, `ciudad`, `semestre`) VALUES
(1, 1105307215, 'pablo andres aroca', 3227893926, 'pabloaroca78@gmail.com', 'calle 12 cr 2  barrio las palmas', 'Ibague', 8),
(3, 5978553, 'arnulfo aroca', 3133116668, 'arnulfo.aroca@sedtolima.edu.co', 'las palmas', 'prado', 5),
(4, 56783445, 'pauliño', 3123256944, 'paulino@gmail.com', 'villa esperanza', 'purificacion', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_materias`
--

CREATE TABLE `registro_materias` (
  `id_registro` mediumint(7) NOT NULL,
  `id_estudiante` char(50) NOT NULL,
  `id_asignatura` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registro_materias`
--

INSERT INTO `registro_materias` (`id_registro`, `id_estudiante`, `id_asignatura`) VALUES
(1, '1', '5'),
(5, '1', '4'),
(8, '3', '1'),
(9, '4', '4');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`id_asignatura`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`id_docente`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id_estudiante`);

--
-- Indices de la tabla `registro_materias`
--
ALTER TABLE `registro_materias`
  ADD PRIMARY KEY (`id_registro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `id_asignatura` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `id_docente` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id_estudiante` mediumint(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `registro_materias`
--
ALTER TABLE `registro_materias`
  MODIFY `id_registro` mediumint(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
