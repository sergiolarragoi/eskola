-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2018 a las 15:01:57
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eskola`
--
CREATE DATABASE IF NOT EXISTS `eskola` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `eskola`;

DELIMITER $$
--
-- Procedimientos
--
DROP PROCEDURE IF EXISTS `sp_borrar_ikasle`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_borrar_ikasle` (IN `p_id_ikasle` INT)  NO SQL
    DETERMINISTIC
BEGIN
	DELETE FROM ikasleak WHERE id = p_id_ikasle;
END$$

DROP PROCEDURE IF EXISTS `sp_insertar_ikasle`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_ikasle` (IN `p_nombre` VARCHAR(30), IN `p_edad` INT, IN `p_curso` INT)  NO SQL
BEGIN
 INSERT INTO ikasleak(Nombre, Edad, Curso)                 VALUES (p_nombre,p_edad,p_curso);
END$$

DROP PROCEDURE IF EXISTS `sp_modificar_ikasle`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_modificar_ikasle` (IN `p_id_ikasle` INT, IN `p_nombre` VARCHAR(30), IN `p_edad` INT, IN `p_curso` INT)  NO SQL
    DETERMINISTIC
BEGIN
UPDATE ikasleak SET Nombre = p_nombre, Edad = p_edad , Curso = p_curso  

where ikasleak.id = p_id_ikasle;

END$$

DROP PROCEDURE IF EXISTS `sp_mostrar_ikasleak`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mostrar_ikasleak` ()  NO SQL
    DETERMINISTIC
SELECT *
FROM
ikasleak$$

DROP PROCEDURE IF EXISTS `sp_mostrar_moduluak`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mostrar_moduluak` ()  NO SQL
    DETERMINISTIC
SELECT *
FROM
moduluak$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ikasleak`
--

DROP TABLE IF EXISTS `ikasleak`;
CREATE TABLE `ikasleak` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Edad` int(11) NOT NULL,
  `Curso` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ikasleak`
--

INSERT INTO `ikasleak` (`id`, `Nombre`, `Edad`, `Curso`) VALUES
(1, 'Ane', 21, 1),
(2, 'Mikel', 23, 2),
(3, 'Gorka', 24, 1),
(16, 'sara', 21, 2),
(15, 'Ander', 28, 2),
(17, 'ane', 21, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matrikulak`
--

DROP TABLE IF EXISTS `matrikulak`;
CREATE TABLE `matrikulak` (
  `id_matricula` int(11) NOT NULL,
  `id-ikasle` int(11) NOT NULL,
  `id_modulo` int(11) NOT NULL,
  `nota` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moduluak`
--

DROP TABLE IF EXISTS `moduluak`;
CREATE TABLE `moduluak` (
  `id_modulo` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Curso` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `moduluak`
--

INSERT INTO `moduluak` (`id_modulo`, `Nombre`, `Curso`) VALUES
(1, 'LENGUAJE DE MARCAS', 1),
(2, 'SISTEMAS', 1),
(3, 'DCLI', 2),
(4, 'IWEB', 2),
(5, 'DSER', 2),
(6, 'INGLES', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ikasleak`
--
ALTER TABLE `ikasleak`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `matrikulak`
--
ALTER TABLE `matrikulak`
  ADD PRIMARY KEY (`id_matricula`);

--
-- Indices de la tabla `moduluak`
--
ALTER TABLE `moduluak`
  ADD PRIMARY KEY (`id_modulo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ikasleak`
--
ALTER TABLE `ikasleak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `matrikulak`
--
ALTER TABLE `matrikulak`
  MODIFY `id_matricula` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `moduluak`
--
ALTER TABLE `moduluak`
  MODIFY `id_modulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
