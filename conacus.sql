-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-03-2021 a las 01:44:46
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
-- Base de datos: `conacus`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `datei` text NOT NULL,
  `type` text NOT NULL,
  `optionq` text NOT NULL,
  `query` text NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `info`
--

INSERT INTO `info` (`id`, `name`, `address`, `email`, `phone`, `datei`, `type`, `optionq`, `query`, `file`) VALUES
(1, 'abdiel', 'wef23twef', 'mflor7864@gmail.com', '23452345', 'wg3qw43', 'WhatsApp', 'Necesito ayuda de un asesor de inmigraciÃ³n con licencia para preparar una', 'sregwetweewtetwetwe', 'C:fakepathAlfortimo_simplex.c'),
(2, 'wegqeg', 'eqgtweg', 'logicacpp@gmail.com', 'gq24gq234g', 'revqwegqwe', 'Telefonica', 'Mi solicitud de visa ya ha sido enviada. Necesito la ayuda de un asesor de inmigraciÃ³n con licencia para preparar una respuesta a una carta recibida de emigraciÃ³n Nueva Zelanda.', 'gqwegqegq43g', 'C:fakepathanimales.jpg'),
(3, 'wegqeg', 'eqgtweg', 'logicacpp@gmail.com', 'gq24gq234g', 'revqwegqwe', 'Telefonica', 'Mi solicitud de visa ya ha sido enviada. Necesito la ayuda de un asesor de inmigraciÃ³n con licencia para preparar una respuesta a una carta recibida de emigraciÃ³n Nueva Zelanda.', 'gqwegqegq43g', 'C:fakepathanimales.jpg'),
(4, 'ewfgweg', 'ewgweg', 'logicacpp@gmail.com', '4t2f23', '2fgqgg', 'Telefonica', 'Mi solicitud de visa ya ha sido enviada. Necesito la ayuda de un asesor de inmigraciÃ³n con licencia para preparar una respuesta a una carta recibida de emigraciÃ³n Nueva Zelanda.', 'wegqwegqweg', 'C:fakepathprobandosww.m'),
(5, 'ewfgweg', 'ewgweg', 'logicacpp@gmail.com', '4t2f23', '2fgqgg', 'Telefonica', 'Mi solicitud de visa ya ha sido enviada. Necesito la ayuda de un asesor de inmigraciÃ³n con licencia para preparar una respuesta a una carta recibida de emigraciÃ³n Nueva Zelanda.', 'wegqwegqweg', 'C:fakepathprobandosww.m'),
(6, 'ewfgweg', 'ewgweg', 'logicacpp@gmail.com', '4t2f23', '2fgqgg', 'Telefonica', 'Mi solicitud de visa ya ha sido enviada. Necesito la ayuda de un asesor de inmigraciÃ³n con licencia para preparar una respuesta a una carta recibida de emigraciÃ³n Nueva Zelanda.', 'wegqwegqweg', 'C:fakepathprobandosww.m'),
(7, 'ewfgweg', 'ewgweg', 'logicacpp@gmail.com', '4t2f23', '2fgqgg', 'Telefonica', 'Mi solicitud de visa ya ha sido enviada. Necesito la ayuda de un asesor de inmigraciÃ³n con licencia para preparar una respuesta a una carta recibida de emigraciÃ³n Nueva Zelanda.', 'wegqwegqweg', 'C:fakepathprobandosww.m'),
(8, 'ewfgweg', 'ewgweg', 'logicacpp@gmail.com', '4t2f23', '2fgqgg', 'Telefonica', 'Mi solicitud de visa ya ha sido enviada. Necesito la ayuda de un asesor de inmigraciÃ³n con licencia para preparar una respuesta a una carta recibida de emigraciÃ³n Nueva Zelanda.', 'wegqwegqweg', 'C:fakepathprobandosww.m'),
(9, 'ewfgweg', 'ewgweg', 'logicacpp@gmail.com', '4t2f23', '2fgqgg', 'Telefonica', 'Mi solicitud de visa ya ha sido enviada. Necesito la ayuda de un asesor de inmigraciÃ³n con licencia para preparar una respuesta a una carta recibida de emigraciÃ³n Nueva Zelanda.', 'wegqwegqweg', 'C:fakepathprobandosww.m'),
(10, 'ewfgweg', 'ewgweg', 'logicacpp@gmail.com', '4t2f23', '2fgqgg', 'Telefonica', 'Mi solicitud de visa ya ha sido enviada. Necesito la ayuda de un asesor de inmigraciÃ³n con licencia para preparar una respuesta a una carta recibida de emigraciÃ³n Nueva Zelanda.', 'wegqwegqweg', 'C:fakepathprobandosww.m'),
(11, 'ewfgweg', 'ewgweg', 'logicacpp@gmail.com', '4t2f23', '2fgqgg', 'Telefonica', 'Mi solicitud de visa ya ha sido enviada. Necesito la ayuda de un asesor de inmigraciÃ³n con licencia para preparar una respuesta a una carta recibida de emigraciÃ³n Nueva Zelanda.', 'wegqwegqweg', 'C:fakepathprobandosww.m'),
(12, 'wefqwet32t', '32t23', 'logicacpp@gmail.com', 'q2f3tfq23fg', 'q32g23tgqwt', 'Viber', 'Yo mismo estoy preparando una solicitud de visa. Solo necesito respuestas a algunas preguntas.', '23t23gfgq23g', 'C:fakepathimpuesto_renta.xlsx'),
(13, 'wefqwet32t', '32t23', 'logicacpp@gmail.com', 'q2f3tfq23fg', 'q32g23tgqwt', 'Viber', 'Yo mismo estoy preparando una solicitud de visa. Solo necesito respuestas a algunas preguntas.', '23t23gfgq23g', 'C:fakepathimpuesto_renta.xlsx'),
(14, 'wefqwet32t', '32t23', 'logicacpp@gmail.com', 'q2f3tfq23fg', 'q32g23tgqwt', 'Viber', 'Yo mismo estoy preparando una solicitud de visa. Solo necesito respuestas a algunas preguntas.', '23t23gfgq23g', 'C:fakepathimpuesto_renta.xlsx'),
(15, 'wefqwet32t', '32t23', 'logicacpp@gmail.com', 'q2f3tfq23fg', 'q32g23tgqwt', 'Viber', 'Yo mismo estoy preparando una solicitud de visa. Solo necesito respuestas a algunas preguntas.', '23t23gfgq23g', 'C:fakepathimpuesto_renta.xlsx'),
(16, 'wefqwet32t', '32t23', 'logicacpp@gmail.com', 'q2f3tfq23fg', 'q32g23tgqwt', 'Viber', 'Yo mismo estoy preparando una solicitud de visa. Solo necesito respuestas a algunas preguntas.', '23t23gfgq23g', 'C:fakepathimpuesto_renta.xlsx'),
(17, 'wefqwet32t', '32t23', 'logicacpp@gmail.com', 'q2f3tfq23fg', 'q32g23tgqwt', 'Viber', 'Yo mismo estoy preparando una solicitud de visa. Solo necesito respuestas a algunas preguntas.', '23t23gfgq23g', 'C:fakepathimpuesto_renta.xlsx'),
(18, 'wefqwet32t', '32t23', 'logicacpp@gmail.com', 'q2f3tfq23fg', 'q32g23tgqwt', 'Viber', 'Yo mismo estoy preparando una solicitud de visa. Solo necesito respuestas a algunas preguntas.', '23t23gfgq23g', 'C:fakepathimpuesto_renta.xlsx'),
(19, 'wefqwet32t', '32t23', 'logicacpp@gmail.com', 'q2f3tfq23fg', 'q32g23tgqwt', 'Viber', 'Yo mismo estoy preparando una solicitud de visa. Solo necesito respuestas a algunas preguntas.', '23t23gfgq23g', 'C:fakepathimpuesto_renta.xlsx'),
(20, 'wefqwet32t', '32t23', 'logicacpp@gmail.com', 'q2f3tfq23fg', 'q32g23tgqwt', 'Viber', 'Yo mismo estoy preparando una solicitud de visa. Solo necesito respuestas a algunas preguntas.', '23t23gfgq23g', 'C:fakepathimpuesto_renta.xlsx'),
(21, 'wefqwet32t', '32t23', 'logicacpp@gmail.com', 'q2f3tfq23fg', 'q32g23tgqwt', 'Viber', 'Yo mismo estoy preparando una solicitud de visa. Solo necesito respuestas a algunas preguntas.', '23t23gfgq23g', 'C:fakepathimpuesto_renta.xlsx'),
(22, 'wefqwet32t', '32t23', 'logicacpp@gmail.com', 'q2f3tfq23fg', 'q32g23tgqwt', 'Viber', 'Yo mismo estoy preparando una solicitud de visa. Solo necesito respuestas a algunas preguntas.', '23t23gfgq23g', 'C:fakepathimpuesto_renta.xlsx'),
(23, 'wefqwet32t', '32t23', 'logicacpp@gmail.com', 'q2f3tfq23fg', 'q32g23tgqwt', 'Viber', 'Yo mismo estoy preparando una solicitud de visa. Solo necesito respuestas a algunas preguntas.', '23t23gfgq23g', 'C:fakepathimpuesto_renta.xlsx');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
