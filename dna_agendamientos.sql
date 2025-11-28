-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2025 a las 22:39:58
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dna_agendamientos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendamientos`
--

CREATE TABLE `agendamientos` (
  `id` int(11) NOT NULL,
  `estudiante` varchar(100) NOT NULL,
  `sede` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `agendamientos`
--

INSERT INTO `agendamientos` (`id`, `estudiante`, `sede`, `fecha`, `estado`) VALUES
(1, 'Juan Pérez', 'Bogotá', '2025-11-30', 'asistido'),
(2, 'Juan Pérez', 'Bogotá', '2025-11-30', 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_api`
--

CREATE TABLE `usuarios_api` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios_api`
--

INSERT INTO `usuarios_api` (`id`, `usuario`, `clave`, `token`) VALUES
(1, 'admin', '$2b$12$Y300lZGk5mfDw029VizaZuj4v278BIT0DGz5clQCI69jUWfqTIqxG', '724d499edd9eaa48980d44a34f4c6fa29d9af1b58ea61f0baefdb2197da561cb');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_dummy`
--

CREATE TABLE `usuarios_dummy` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `universidad` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios_dummy`
--

INSERT INTO `usuarios_dummy` (`id`, `nombre`, `email`, `ciudad`, `universidad`) VALUES
(1, 'Emily Johnson', 'emily.johnson@x.dummyjson.com', 'Phoenix', 'University of Wisconsin--Madison'),
(2, 'Michael Williams', 'michael.williams@x.dummyjson.com', 'Houston', 'Ohio State University'),
(3, 'Sophia Brown', 'sophia.brown@x.dummyjson.com', 'Washington', 'Pepperdine University'),
(4, 'James Davis', 'james.davis@x.dummyjson.com', 'Seattle', 'University of Southern California'),
(5, 'Emma Miller', 'emma.miller@x.dummyjson.com', 'Jacksonville', 'Northeastern University'),
(6, 'Olivia Wilson', 'olivia.wilson@x.dummyjson.com', 'Fort Worth', 'University of North Carolina--Chapel Hill'),
(7, 'Alexander Jones', 'alexander.jones@x.dummyjson.com', 'Indianapolis', 'University of Illinois--Urbana-Champaign'),
(8, 'Ava Taylor', 'ava.taylor@x.dummyjson.com', 'Fort Worth', 'University of Wisconsin--Madison'),
(9, 'Ethan Martinez', 'ethan.martinez@x.dummyjson.com', 'San Antonio', 'Syracuse University'),
(10, 'Isabella Anderson', 'isabella.anderson@x.dummyjson.com', 'New York', 'California Institute of Technology (Caltech)'),
(11, 'Liam Garcia', 'liam.garcia@x.dummyjson.com', 'Denver', 'Ohio State University'),
(12, 'Mia Rodriguez', 'mia.rodriguez@x.dummyjson.com', 'Jacksonville', 'William & Mary'),
(13, 'Noah Hernandez', 'noah.hernandez@x.dummyjson.com', 'New York', 'New York University (NYU)'),
(14, 'Charlotte Lopez', 'charlotte.lopez@x.dummyjson.com', 'Columbus', 'Northeastern University'),
(15, 'William Gonzalez', 'william.gonzalez@x.dummyjson.com', 'San Jose', 'Tufts University'),
(16, 'Avery Perez', 'avery.perez@x.dummyjson.com', 'Columbus', 'Harvard University'),
(17, 'Evelyn Sanchez', 'evelyn.sanchez@x.dummyjson.com', 'San Diego', 'Washington University in St. Louis'),
(18, 'Logan Torres', 'logan.torres@x.dummyjson.com', 'Columbus', 'University of Illinois--Urbana-Champaign'),
(19, 'Abigail Rivera', 'abigail.rivera@x.dummyjson.com', 'Chicago', 'California Institute of Technology (Caltech)'),
(20, 'Jackson Evans', 'jackson.evans@x.dummyjson.com', 'New York', 'Ohio State University'),
(21, 'Madison Collins', 'madison.collins@x.dummyjson.com', 'Philadelphia', 'University of Pennsylvania'),
(22, 'Elijah Stewart', 'elijah.stewart@x.dummyjson.com', 'Columbus', 'Georgetown University'),
(23, 'Chloe Morales', 'chloe.morales@x.dummyjson.com', 'Dallas', 'Syracuse University'),
(24, 'Mateo Nguyen', 'mateo.nguyen@x.dummyjson.com', 'Columbus', 'Columbia University'),
(25, 'Harper Kelly', 'harper.kelly@x.dummyjson.com', 'Philadelphia', 'Boston College'),
(26, 'Evelyn Gonzalez', 'evelyn.gonzalez@x.dummyjson.com', 'Dallas', 'Washington University in St. Louis'),
(27, 'Daniel Cook', 'daniel.cook@x.dummyjson.com', 'Los Angeles', 'Columbia University'),
(28, 'Lily Lee', 'lily.lee@x.dummyjson.com', 'Phoenix', 'Johns Hopkins University'),
(29, 'Henry Hill', 'henry.hill@x.dummyjson.com', 'Indianapolis', 'University of Illinois--Urbana-Champaign'),
(30, 'Addison Wright', 'addison.wright@x.dummyjson.com', 'San Francisco', 'Syracuse University'),
(31, 'Emily Johnson', 'emily.johnson@x.dummyjson.com', 'Phoenix', 'University of Wisconsin--Madison'),
(32, 'Michael Williams', 'michael.williams@x.dummyjson.com', 'Houston', 'Ohio State University'),
(33, 'Sophia Brown', 'sophia.brown@x.dummyjson.com', 'Washington', 'Pepperdine University'),
(34, 'James Davis', 'james.davis@x.dummyjson.com', 'Seattle', 'University of Southern California'),
(35, 'Emma Miller', 'emma.miller@x.dummyjson.com', 'Jacksonville', 'Northeastern University'),
(36, 'Olivia Wilson', 'olivia.wilson@x.dummyjson.com', 'Fort Worth', 'University of North Carolina--Chapel Hill'),
(37, 'Alexander Jones', 'alexander.jones@x.dummyjson.com', 'Indianapolis', 'University of Illinois--Urbana-Champaign'),
(38, 'Ava Taylor', 'ava.taylor@x.dummyjson.com', 'Fort Worth', 'University of Wisconsin--Madison'),
(39, 'Ethan Martinez', 'ethan.martinez@x.dummyjson.com', 'San Antonio', 'Syracuse University'),
(40, 'Isabella Anderson', 'isabella.anderson@x.dummyjson.com', 'New York', 'California Institute of Technology (Caltech)'),
(41, 'Liam Garcia', 'liam.garcia@x.dummyjson.com', 'Denver', 'Ohio State University'),
(42, 'Mia Rodriguez', 'mia.rodriguez@x.dummyjson.com', 'Jacksonville', 'William & Mary'),
(43, 'Noah Hernandez', 'noah.hernandez@x.dummyjson.com', 'New York', 'New York University (NYU)'),
(44, 'Charlotte Lopez', 'charlotte.lopez@x.dummyjson.com', 'Columbus', 'Northeastern University'),
(45, 'William Gonzalez', 'william.gonzalez@x.dummyjson.com', 'San Jose', 'Tufts University'),
(46, 'Avery Perez', 'avery.perez@x.dummyjson.com', 'Columbus', 'Harvard University'),
(47, 'Evelyn Sanchez', 'evelyn.sanchez@x.dummyjson.com', 'San Diego', 'Washington University in St. Louis'),
(48, 'Logan Torres', 'logan.torres@x.dummyjson.com', 'Columbus', 'University of Illinois--Urbana-Champaign'),
(49, 'Abigail Rivera', 'abigail.rivera@x.dummyjson.com', 'Chicago', 'California Institute of Technology (Caltech)'),
(50, 'Jackson Evans', 'jackson.evans@x.dummyjson.com', 'New York', 'Ohio State University'),
(51, 'Madison Collins', 'madison.collins@x.dummyjson.com', 'Philadelphia', 'University of Pennsylvania'),
(52, 'Elijah Stewart', 'elijah.stewart@x.dummyjson.com', 'Columbus', 'Georgetown University'),
(53, 'Chloe Morales', 'chloe.morales@x.dummyjson.com', 'Dallas', 'Syracuse University'),
(54, 'Mateo Nguyen', 'mateo.nguyen@x.dummyjson.com', 'Columbus', 'Columbia University'),
(55, 'Harper Kelly', 'harper.kelly@x.dummyjson.com', 'Philadelphia', 'Boston College'),
(56, 'Evelyn Gonzalez', 'evelyn.gonzalez@x.dummyjson.com', 'Dallas', 'Washington University in St. Louis'),
(57, 'Daniel Cook', 'daniel.cook@x.dummyjson.com', 'Los Angeles', 'Columbia University'),
(58, 'Lily Lee', 'lily.lee@x.dummyjson.com', 'Phoenix', 'Johns Hopkins University'),
(59, 'Henry Hill', 'henry.hill@x.dummyjson.com', 'Indianapolis', 'University of Illinois--Urbana-Champaign'),
(60, 'Addison Wright', 'addison.wright@x.dummyjson.com', 'San Francisco', 'Syracuse University'),
(61, 'Emily Johnson', 'emily.johnson@x.dummyjson.com', 'Phoenix', 'University of Wisconsin--Madison'),
(62, 'Michael Williams', 'michael.williams@x.dummyjson.com', 'Houston', 'Ohio State University'),
(63, 'Sophia Brown', 'sophia.brown@x.dummyjson.com', 'Washington', 'Pepperdine University'),
(64, 'James Davis', 'james.davis@x.dummyjson.com', 'Seattle', 'University of Southern California'),
(65, 'Emma Miller', 'emma.miller@x.dummyjson.com', 'Jacksonville', 'Northeastern University'),
(66, 'Olivia Wilson', 'olivia.wilson@x.dummyjson.com', 'Fort Worth', 'University of North Carolina--Chapel Hill'),
(67, 'Alexander Jones', 'alexander.jones@x.dummyjson.com', 'Indianapolis', 'University of Illinois--Urbana-Champaign'),
(68, 'Ava Taylor', 'ava.taylor@x.dummyjson.com', 'Fort Worth', 'University of Wisconsin--Madison'),
(69, 'Ethan Martinez', 'ethan.martinez@x.dummyjson.com', 'San Antonio', 'Syracuse University'),
(70, 'Isabella Anderson', 'isabella.anderson@x.dummyjson.com', 'New York', 'California Institute of Technology (Caltech)'),
(71, 'Liam Garcia', 'liam.garcia@x.dummyjson.com', 'Denver', 'Ohio State University'),
(72, 'Mia Rodriguez', 'mia.rodriguez@x.dummyjson.com', 'Jacksonville', 'William & Mary'),
(73, 'Noah Hernandez', 'noah.hernandez@x.dummyjson.com', 'New York', 'New York University (NYU)'),
(74, 'Charlotte Lopez', 'charlotte.lopez@x.dummyjson.com', 'Columbus', 'Northeastern University'),
(75, 'William Gonzalez', 'william.gonzalez@x.dummyjson.com', 'San Jose', 'Tufts University'),
(76, 'Avery Perez', 'avery.perez@x.dummyjson.com', 'Columbus', 'Harvard University'),
(77, 'Evelyn Sanchez', 'evelyn.sanchez@x.dummyjson.com', 'San Diego', 'Washington University in St. Louis'),
(78, 'Logan Torres', 'logan.torres@x.dummyjson.com', 'Columbus', 'University of Illinois--Urbana-Champaign'),
(79, 'Abigail Rivera', 'abigail.rivera@x.dummyjson.com', 'Chicago', 'California Institute of Technology (Caltech)'),
(80, 'Jackson Evans', 'jackson.evans@x.dummyjson.com', 'New York', 'Ohio State University'),
(81, 'Madison Collins', 'madison.collins@x.dummyjson.com', 'Philadelphia', 'University of Pennsylvania'),
(82, 'Elijah Stewart', 'elijah.stewart@x.dummyjson.com', 'Columbus', 'Georgetown University'),
(83, 'Chloe Morales', 'chloe.morales@x.dummyjson.com', 'Dallas', 'Syracuse University'),
(84, 'Mateo Nguyen', 'mateo.nguyen@x.dummyjson.com', 'Columbus', 'Columbia University'),
(85, 'Harper Kelly', 'harper.kelly@x.dummyjson.com', 'Philadelphia', 'Boston College'),
(86, 'Evelyn Gonzalez', 'evelyn.gonzalez@x.dummyjson.com', 'Dallas', 'Washington University in St. Louis'),
(87, 'Daniel Cook', 'daniel.cook@x.dummyjson.com', 'Los Angeles', 'Columbia University'),
(88, 'Lily Lee', 'lily.lee@x.dummyjson.com', 'Phoenix', 'Johns Hopkins University'),
(89, 'Henry Hill', 'henry.hill@x.dummyjson.com', 'Indianapolis', 'University of Illinois--Urbana-Champaign'),
(90, 'Addison Wright', 'addison.wright@x.dummyjson.com', 'San Francisco', 'Syracuse University'),
(91, 'Emily Johnson', 'emily.johnson@x.dummyjson.com', 'Phoenix', 'University of Wisconsin--Madison'),
(92, 'Michael Williams', 'michael.williams@x.dummyjson.com', 'Houston', 'Ohio State University'),
(93, 'Sophia Brown', 'sophia.brown@x.dummyjson.com', 'Washington', 'Pepperdine University'),
(94, 'James Davis', 'james.davis@x.dummyjson.com', 'Seattle', 'University of Southern California'),
(95, 'Emma Miller', 'emma.miller@x.dummyjson.com', 'Jacksonville', 'Northeastern University'),
(96, 'Olivia Wilson', 'olivia.wilson@x.dummyjson.com', 'Fort Worth', 'University of North Carolina--Chapel Hill'),
(97, 'Alexander Jones', 'alexander.jones@x.dummyjson.com', 'Indianapolis', 'University of Illinois--Urbana-Champaign'),
(98, 'Ava Taylor', 'ava.taylor@x.dummyjson.com', 'Fort Worth', 'University of Wisconsin--Madison'),
(99, 'Ethan Martinez', 'ethan.martinez@x.dummyjson.com', 'San Antonio', 'Syracuse University'),
(100, 'Isabella Anderson', 'isabella.anderson@x.dummyjson.com', 'New York', 'California Institute of Technology (Caltech)'),
(101, 'Liam Garcia', 'liam.garcia@x.dummyjson.com', 'Denver', 'Ohio State University'),
(102, 'Mia Rodriguez', 'mia.rodriguez@x.dummyjson.com', 'Jacksonville', 'William & Mary'),
(103, 'Noah Hernandez', 'noah.hernandez@x.dummyjson.com', 'New York', 'New York University (NYU)'),
(104, 'Charlotte Lopez', 'charlotte.lopez@x.dummyjson.com', 'Columbus', 'Northeastern University'),
(105, 'William Gonzalez', 'william.gonzalez@x.dummyjson.com', 'San Jose', 'Tufts University'),
(106, 'Avery Perez', 'avery.perez@x.dummyjson.com', 'Columbus', 'Harvard University'),
(107, 'Evelyn Sanchez', 'evelyn.sanchez@x.dummyjson.com', 'San Diego', 'Washington University in St. Louis'),
(108, 'Logan Torres', 'logan.torres@x.dummyjson.com', 'Columbus', 'University of Illinois--Urbana-Champaign'),
(109, 'Abigail Rivera', 'abigail.rivera@x.dummyjson.com', 'Chicago', 'California Institute of Technology (Caltech)'),
(110, 'Jackson Evans', 'jackson.evans@x.dummyjson.com', 'New York', 'Ohio State University'),
(111, 'Madison Collins', 'madison.collins@x.dummyjson.com', 'Philadelphia', 'University of Pennsylvania'),
(112, 'Elijah Stewart', 'elijah.stewart@x.dummyjson.com', 'Columbus', 'Georgetown University'),
(113, 'Chloe Morales', 'chloe.morales@x.dummyjson.com', 'Dallas', 'Syracuse University'),
(114, 'Mateo Nguyen', 'mateo.nguyen@x.dummyjson.com', 'Columbus', 'Columbia University'),
(115, 'Harper Kelly', 'harper.kelly@x.dummyjson.com', 'Philadelphia', 'Boston College'),
(116, 'Evelyn Gonzalez', 'evelyn.gonzalez@x.dummyjson.com', 'Dallas', 'Washington University in St. Louis'),
(117, 'Daniel Cook', 'daniel.cook@x.dummyjson.com', 'Los Angeles', 'Columbia University'),
(118, 'Lily Lee', 'lily.lee@x.dummyjson.com', 'Phoenix', 'Johns Hopkins University'),
(119, 'Henry Hill', 'henry.hill@x.dummyjson.com', 'Indianapolis', 'University of Illinois--Urbana-Champaign'),
(120, 'Addison Wright', 'addison.wright@x.dummyjson.com', 'San Francisco', 'Syracuse University');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agendamientos`
--
ALTER TABLE `agendamientos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_api`
--
ALTER TABLE `usuarios_api`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_dummy`
--
ALTER TABLE `usuarios_dummy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agendamientos`
--
ALTER TABLE `agendamientos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios_api`
--
ALTER TABLE `usuarios_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios_dummy`
--
ALTER TABLE `usuarios_dummy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
