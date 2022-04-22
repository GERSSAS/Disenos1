-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 09-01-2020 a las 16:18:43
-- Versión del servidor: 5.7.27-0ubuntu0.16.04.1
-- Versión de PHP: 7.2.16-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `memorias_nuevabd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `1_ducto_media`
--

CREATE TABLE `1_ducto_media` (
  `calibre` varchar(50) NOT NULL,
  `t2001_5000` double NOT NULL,
  `t5001_35000` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `1_ducto_media`
--

INSERT INTO `1_ducto_media` (`calibre`, `t2001_5000`, `t5001_35000`) VALUES
('8', 64, 0),
('6', 85, 0),
('4', 110, 0),
('2', 145, 155),
('1/0', 195, 200),
('2/0', 220, 230),
('4/0', 290, 295),
('250', 320, 325),
('350', 385, 390),
('500', 470, 465);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `3_ductos_media`
--

CREATE TABLE `3_ductos_media` (
  `calibre` varchar(50) NOT NULL,
  `t2001_5000` double NOT NULL,
  `t5001_35000` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `3_ductos_media`
--

INSERT INTO `3_ductos_media` (`calibre`, `t2001_5000`, `t5001_35000`) VALUES
('8', 56, 0),
('6', 73, 0),
('4', 95, 0),
('2', 125, 130),
('1/0', 160, 165),
('2/0', 185, 185),
('4/0', 235, 240),
('250', 260, 260),
('350', 315, 310),
('500', 375, 370);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `6_ductos_media`
--

CREATE TABLE `6_ductos_media` (
  `calibre` varchar(50) NOT NULL,
  `t2001_5000` double NOT NULL,
  `t5001_35000` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `6_ductos_media`
--

INSERT INTO `6_ductos_media` (`calibre`, `t2001_5000`, `t5001_35000`) VALUES
('8', 56, 0),
('6', 73, 0),
('4', 95, 0),
('2', 125, 130),
('1/0', 160, 165),
('2/0', 185, 185),
('4/0', 235, 240),
('250', 260, 260),
('350', 315, 310),
('500', 375, 370);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `310-69_media`
--

CREATE TABLE `310-69_media` (
  `calibre` varchar(50) NOT NULL,
  `t2001_5000` double NOT NULL,
  `t5001_15000` double NOT NULL,
  `t15001_35000` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `310-69_media`
--

INSERT INTO `310-69_media` (`calibre`, `t2001_5000`, `t5001_15000`, `t15001_35000`) VALUES
('8', 83, 0, 0),
('6', 110, 0, 0),
('4', 145, 0, 0),
('2', 190, 195, 0),
('1/0', 260, 260, 260),
('2/0', 300, 335, 300),
('4/0', 400, 400, 395),
('250', 445, 445, 440),
('350', 550, 550, 545),
('500', 695, 685, 680);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ajustable`
--

CREATE TABLE `ajustable` (
  `fija` int(11) NOT NULL,
  `ajustable` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ajustable`
--

INSERT INTO `ajustable` (`fija`, `ajustable`) VALUES
(15, '11-16'),
(16, '11-16'),
(20, '18-25'),
(25, '22-32'),
(30, '22-32'),
(32, '28-40'),
(40, '35-50'),
(50, '44-63'),
(60, '44-63'),
(63, '56-80'),
(80, '70-100'),
(100, '87-125'),
(125, '112-160'),
(150, '112-160'),
(160, '140-200'),
(175, '140-200'),
(200, '175-250'),
(225, '175-250'),
(250, '160-320'),
(320, '160-400'),
(400, '250-500'),
(500, '250-630'),
(630, '300-700'),
(800, '400-1000'),
(1250, '900-1400'),
(1500, '1350-2100'),
(1600, '1350-2100'),
(1750, '1350-2100'),
(2000, '1350-2100'),
(2500, '1980-3080');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cables_vfd`
--

CREATE TABLE `cables_vfd` (
  `calibre` varchar(50) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `tierra` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cables_vfd`
--

INSERT INTO `cables_vfd` (`calibre`, `tipo`, `tierra`) VALUES
('1/0', '(3X1/0 + 3X10) AWG VFD 600 V TC', '10'),
('10', '(3X10 + 3X14) AWG VFD 600 V TC', '14'),
('12', '(3X12 + 3X18) AWG VFD 600 V TC', '18'),
('14', '(3X14 + 3X18) AWG VFD 600 V TC', '18'),
('2', '(3X2 + 3X10) AWG VFD 600 V TC', '10'),
('2/0', '(3X2/0 + 3X10) AWG VFD 600 V TC', '10'),
('4', '(3X4 + 3X12) AWG VFD 600 V TC', '12'),
('4/0', '(3X4/0 + 3X8) AWG VFD 600 V TC', '8'),
('6', '(3X6 + 3X12) AWG VFD 600 V TC', '12'),
('8', '(3X8 + 3X14) AWG VFD 600 V TC', '14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calibre_min_media`
--

CREATE TABLE `calibre_min_media` (
  `tension` double NOT NULL,
  `calibre` varchar(50) NOT NULL,
  `tension_maxima` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `calibre_min_media`
--

INSERT INTO `calibre_min_media` (`tension`, `calibre`, `tension_maxima`) VALUES
(4160, '8', '5 kV'),
(13200, '2', '15 kV'),
(13800, '2', '15 kV'),
(14400, '2', '15 kV'),
(24000, '1/0', '24 kV'),
(34500, '1/0', '35 kV');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogo_media`
--

CREATE TABLE `catalogo_media` (
  `calibre` varchar(50) NOT NULL,
  `reactancia` double NOT NULL,
  `resistencia_AC` double NOT NULL,
  `resistencia_DC` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `catalogo_media`
--

INSERT INTO `catalogo_media` (`calibre`, `reactancia`, `resistencia_AC`, `resistencia_DC`) VALUES
('8', 0.171, 2.56, 2.103),
('6', 0.167, 1.61, 1.327),
('4', 0.157, 1.02, 0.861),
('2', 0.148, 0.623, 0.531),
('1/0', 0.144, 0.394, 0.335),
('2/0', 0.141, 0.328, 0.2692),
('4/0', 0.135, 0.203, 0.1692),
('250', 0.135, 0.171, 0.1427),
('350', 0.1312, 0.1247, 0.1031),
('500', 0.128, 0.089, 0.0725);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `int_baja_tension`
--

CREATE TABLE `int_baja_tension` (
  `calibre` varchar(50) NOT NULL,
  `reactancia` float NOT NULL,
  `resistencia_AC` float NOT NULL,
  `resistencia_DC` float NOT NULL,
  `t310_t16` int(11) NOT NULL,
  `t310_t17` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `int_baja_tension`
--

INSERT INTO `int_baja_tension` (`calibre`, `reactancia`, `resistencia_AC`, `resistencia_DC`, `t310_t16`, `t310_t17`) VALUES
('1/0', 0.144, 0.394, 0.335, 150, 230),
('10', 0.164, 3.94, 3.364, 35, 50),
('1000', 0.1214, 0.0492, 0.0715, 545, 935),
('12', 0.177, 6.56, 5.333, 25, 35),
('14', 0.19, 10.17, 8.41, 20, 30),
('2', 0.148, 0.623, 0.531, 115, 170),
('2/0', 0.141, 0.328, 0.2692, 175, 265),
('250', 0.135, 0.171, 0.1427, 255, 405),
('3/0', 0.138, 0.253, 0, 200, 310),
('350', 0.1312, 0.1247, 0.1031, 310, 505),
('4', 0.157, 1.02, 0.861, 85, 125),
('4/0', 0.135, 0.203, 0.1692, 230, 360),
('400', 0.1312, 0.1083, 0.0892, 335, 545),
('500', 0.128, 0.089, 0.0725, 380, 620),
('6', 0.167, 1.61, 1.327, 65, 95),
('750', 0.1247, 0.0623, 0.072, 475, 785),
('8', 0.171, 2.56, 2.103, 50, 70);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `memoria_altas`
--

CREATE TABLE `memoria_altas` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_cable` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_carga` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hp` double NOT NULL,
  `kva_kw` double NOT NULL,
  `tension` double NOT NULL,
  `corriente_nominal` double NOT NULL,
  `valor_k` double NOT NULL,
  `donde_aplica` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `corriente_asignada` double NOT NULL,
  `calibre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_instal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabla_2050` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacidad_de_un_conductor` double DEFAULT NULL,
  `nro_con_fases` double DEFAULT NULL,
  `cantidad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ajuste_cant` double DEFAULT NULL,
  `temperatura` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ajuste_temp` double DEFAULT NULL,
  `cap_tot_conduc` double DEFAULT NULL,
  `longitud` double DEFAULT NULL,
  `resistencia` double DEFAULT NULL,
  `regulacion` double DEFAULT NULL,
  `proteccion` double DEFAULT NULL,
  `calibre_min` double DEFAULT NULL,
  `tipo_conductor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conductor_selec` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tablero_id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `memoria_bajas`
--

CREATE TABLE `memoria_bajas` (
  `id` int(10) UNSIGNED NOT NULL,
  `conductor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carga` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion_carga` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitud_km` double NOT NULL,
  `longitud_metros` double DEFAULT NULL,
  `potencia_hp` double DEFAULT NULL,
  `potencia_kw` double DEFAULT NULL,
  `potencia_kva` double DEFAULT NULL,
  `nro_fases` int(11) NOT NULL,
  `nro_hilos` int(11) NOT NULL,
  `neutro` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_cab` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tension_nominal` double NOT NULL,
  `corriente_nominal` double NOT NULL,
  `corriente_asignada` double NOT NULL,
  `proteccion_selec` double DEFAULT NULL,
  `ajustable` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `calibre_conductor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medio_de_instal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabla_2050` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacidad_de_un_conductor` double DEFAULT NULL,
  `nro_de_conductores_x_fase` int(11) DEFAULT NULL,
  `cantidad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `factor_de_ajuste_con` double DEFAULT NULL,
  `rango_temperatura` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `factor_de_ajuste_tem` double DEFAULT NULL,
  `cap_tot_conduc` double DEFAULT NULL,
  `reactancia` double DEFAULT NULL,
  `resistencia` double DEFAULT NULL,
  `factor_de_potencia` double DEFAULT NULL,
  `sen` double DEFAULT NULL,
  `regulacion` double DEFAULT NULL,
  `conductores_neutro` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calibre_conduc_neu` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conductor_tierra` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calibre_tierra` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conductor_selecc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tablero_id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `memoria_bajas`
--

INSERT INTO `memoria_bajas` (`id`, `conductor`, `carga`, `descripcion_carga`, `longitud_km`, `longitud_metros`, `potencia_hp`, `potencia_kw`, `potencia_kva`, `nro_fases`, `nro_hilos`, `neutro`, `tipo_cab`, `tension_nominal`, `corriente_nominal`, `corriente_asignada`, `proteccion_selec`, `ajustable`, `calibre_conductor`, `medio_de_instal`, `tabla_2050`, `capacidad_de_un_conductor`, `nro_de_conductores_x_fase`, `cantidad`, `factor_de_ajuste_con`, `rango_temperatura`, `factor_de_ajuste_tem`, `cap_tot_conduc`, `reactancia`, `resistencia`, `factor_de_potencia`, `sen`, `regulacion`, `conductores_neutro`, `calibre_conduc_neu`, `conductor_tierra`, `calibre_tierra`, `conductor_selecc`, `tablero_id`, `project_id`, `created_at`, `updated_at`) VALUES
(27, 'ju', 'uj', 'ñp', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '', '8', 'bandeja sin tapa', '310-69 al 75%', 45.5, 1, 'No mas de 3', 1, '26-30', 1, 45.5, 0.171, 2.56, 0.9, 0.4358898943540673, 15.94, '1', '8', '1', NULL, '1C X 3F N°8AWG THHN/THWN-2 TC 600V', 17, 19, '2018-10-03 22:13:09', '2018-10-05 22:06:01'),
(28, 'A', 'A', 'A', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Multiconductor', 480, 25.8, 32.25, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 123, 1, 'No mas de 3', 1, '26-30', 1, 123, 0.144, 0.394, 0.9, 0.4358898943540673, 0.17, '1', '1/0', '1', NULL, '5X1/0 AWG  THHN/THWN-2 TC 600V', 18, 19, '2018-10-04 00:33:09', '2018-10-05 22:10:09'),
(29, 'a', 'a', 'a', 0, NULL, 23, 17.16, 21.45, 3, 5, 'Si', 'Multiconductor', 480, 25.8, 32.25, NULL, '', '250', 'Tuberia/coraza', '310-16', 255, 1, 'No mas de 3', 1, '26-30', 1, 255, 0.135, 0.171, 0.9, 0.4358898943540673, 0, '1', '250', '1', NULL, '5X250 AWG  THHN/THWN-2 TC 600V', 18, 19, '2018-10-04 01:03:57', '2018-10-05 22:08:43'),
(30, 'p', 'w', 'w', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 127, 97.5, 121.88, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '31-35', 0.94, 141, 0.144, 0.394, 0.9, 0.4358898943540673, 2.5, '1', '1/0', '1', NULL, '1C X 3F N°1/0AWG THHN/THWN-2 TC 600V', 19, 19, '2018-10-04 21:41:58', '2018-10-05 02:31:17'),
(31, 'fg', 'f', 'fg', 0.045, 45, 34, 25.36, 31.71, 3, 5, 'Si', 'Monopolar', 120, 152.54, 190.68, 160, '', '4/0', 'Tuberia/coraza', '310-16', 230, 1, 'No mas de 3', 1, '26-30', 1, 230, 0.135, 0.203, 0.9, 0.4358898943540673, 2.39, '1', '4/0', '1', NULL, '1C X 3F N°4/0AWG THHN/THWN-2 TC 600V', 20, 19, '2018-10-05 01:11:29', '2018-10-05 01:25:04'),
(32, 'e', 'e', 'e', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 150, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.8, '1', '1/0', '1', NULL, '1C X 3F N°1/0AWG THHN/THWN-2 TC 600V', 20, 19, '2018-10-05 01:15:45', '2018-10-05 01:33:10'),
(33, 'ASD', 'S', 's', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.69, '1', '1/0', '1', NULL, '1C X 3F N°1/0AWG THHN/THWN-2 TC 600V', 20, 19, '2018-10-05 01:47:06', '2018-10-05 01:47:06'),
(34, 'sds', 'sd', 'sd', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 63, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.8, '1', '1/0', '1', NULL, '1C X 3F N°1/0AWG THHN/THWN-2 TC 600V', 20, 19, '2018-10-05 01:50:54', '2018-10-05 01:56:13'),
(35, 'a', 'a', 'a', 0, NULL, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 0, '1', '1/0', '1', NULL, '1C X 3F N°1/0AWG THHN/THWN-2 TC 600V', 20, 19, '2018-10-05 18:16:59', '2018-10-05 18:16:59'),
(36, 'a', 'a', 'a', 0, NULL, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '', '750', 'Tuberia/coraza', '310-16', 123, 1, 'No mas de 3', 1, '26-30', 1, 123, 0.1247, 0.0623, 0.9, 0.4358898943540673, 0, '1', '750', '1', NULL, '1C X 3F N°750AWG THHN/THWN-2 TC 600V', 20, 19, '2018-10-05 20:17:36', '2018-10-05 22:23:01'),
(37, 'SAD', 'SDA', 'SDA', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '', '1000', 'Tuberia/coraza', '310-16', 123, 1, 'No mas de 3', 1, '26-30', 1, 123, 0.1214, 0.0492, 0.9, 0.4358898943540673, 0.65, '1', '1000', '1', NULL, '1C X 3F N°1000AWG THHN/THWN-2 TC 600V', 20, 19, '2018-10-05 22:12:45', '2018-10-05 22:22:49'),
(38, 'asd', 'sadasf', 'asfasf', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 160, '', '4', 'Tuberia/coraza', '310-16', 123, 1, 'No mas de 3', 1, '26-30', 1, 123, 0.157, 1.02, 0.9, 0.4358898943540673, 6.61, '1', '4', '1', NULL, '1C X 3F N°4AWG THHN/THWN-2 TC 600V', 21, 19, '2018-10-05 22:23:32', '2018-10-05 22:30:34'),
(39, 'ds', 'd', 'd', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Vfd', 120, 103.19, 128.99, 16, '11-16', '2/0', 'Tuberia/coraza', '310-16', 175, 3, 'De 4 a 6', 0.8, '26-30', 1, 420, 0.141, 0.328, 0.9, 0.4358898943540673, 0.8, '3', '2/0', '3', '12', '(3X2/0 + 3X10) AWG VFD 600 V TC', 22, 20, '2018-10-05 22:31:47', '2018-10-11 00:58:05'),
(40, 's', 's', 's', 0, NULL, 23, 17.16, 21.45, 3, 5, 'Si', 'Multiconductor', 120, 103.19, 128.99, 2500, '1980-3080', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No mas de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.9, 0.4358898943540673, 0, '1', '3/0', '1', '400', '5X3/0 AWG  THHN/THWN-2 TC 600V', 22, 20, '2018-10-08 19:51:40', '2018-10-11 00:59:11'),
(41, 't', 't', 't', 0.043, 43, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 40, '35-50', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.67, '1', '1/0', '1', '10', '1C X 3F N°1/0AWG THHN/THWN-2 TC 600V', 22, 20, '2018-10-08 23:23:49', '2018-10-11 00:41:17'),
(42, 'w', 'w', 'w', 0.034, 34, 23, 17.16, 21.45, 3, 5, 'Si', 'Vfd', 120, 103.19, 128.99, 60, '44-63', '3/0', 'Tuberia/coraza', '310-16', 200, 3, 'No mas de 3', 1, '26-30', 1, 600, 0.138, 0.253, 0.9, 0.4358898943540673, 0.49, '3', '3/0', '3', '10', '(3X3/0 + 3X8) AWG VFD 600V TC', 22, 20, '2018-10-08 23:54:02', '2018-10-11 00:39:14'),
(43, 'r', 'r', 'r', 0.032, 32, 23, 17.16, 21.45, 3, 5, 'Si', 'Vfd', 120, 103.19, 128.99, 200, '175-250', '4/0', 'Tuberia/coraza', '310-16', 230, 3, 'No mas de 3', 1, '26-30', 1, 690, 0.135, 0.203, 0.9, 0.4358898943540673, 0.38, '3', '4/0', '3', '6', '(3X4/0 + 3X8) AWG VFD 600 V TC', 22, 20, '2018-10-08 23:56:33', '2018-10-11 00:39:20'),
(44, 'p', 'ṕ', 'o', 0.032, 32, 23, 17.16, 21.45, 3, 5, 'Si', 'Multiconductor', 120, 103.19, 128.99, 125, '112-160', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 1.99, '1', '1/0', '1', '6', '5X1/0 AWG  THHN/THWN-2 TC 600V', 22, 20, '2018-10-10 19:35:00', '2018-10-11 00:39:23'),
(45, 'q', 'q', 'q', 0.034, 34, 23, 17.16, 21.45, 3, 5, 'Si', 'Vfd', 120, 103.19, 128.99, 200, '175-250', '1/0', 'Tuberia/coraza', '310-16', 150, 3, 'No mas de 3', 1, '26-30', 1, 450, 0.144, 0.394, 0.9, 0.4358898943540673, 0.7, '3', '1/0', '3', '6', '(3X1/0 + 3X10) AWG VFD 600 V TC', 22, 20, '2018-10-10 19:42:12', '2018-10-11 00:40:03'),
(46, 'q', 'q', 'q', 0, NULL, 23, 17.16, 21.45, 3, 5, 'Si', 'Multiconductor', 120, 103.19, 128.99, 250, '160-320', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 0, '1', '1/0', '1', '4', '5X1/0 AWG  THHN/THWN-2 TC 600V', 22, 20, '2018-10-10 21:52:31', '2018-10-11 00:41:29'),
(47, 'a', 'a', 'a', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Multiconductor', 120, 103.19, 128.99, 30, '22-32', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No mas de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.9, 0.4358898943540673, 1.93, '1', '3/0', '1', '10', '5X3/0 AWG  THHN/THWN-2 TC 600V', 22, 20, '2018-10-11 01:00:18', '2018-10-11 01:01:26'),
(48, 'q', 'q', 'q', 0.063, 63, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 3, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.93, 'No Aplica', 'No Aplica', '3', '8', '(3X4 + 3X12) AWG VFD 600 V TC', 23, 20, '2018-10-11 01:39:22', '2018-10-11 01:44:57'),
(49, 'a', 'a', 'a', 0.075, 75, 60, 44.76, 55.95, 3, 4, 'No', 'Multiconductor', 480, 67.3, 84.12, 100, '87-125', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 1.66, 'No Aplica', 'No Aplica', '1', '8', '4X4 AWG  THHN/THWN-2 TC 600V', 23, 20, '2018-10-11 01:52:52', '2018-10-11 01:54:56'),
(50, 'u', 'u', 'u', 0.044, 44, 160.86, 120, 150, 3, 5, 'Si', 'Monopolar', 480, 180.42, 225.53, 225, '175-250', '4/0', 'Tuberia/coraza', '310-16', 230, 1, 'No mas de 3', 1, '26-30', 1, 230, 0.135, 0.203, 0.8, 0.5999999999999999, 0.7, '1', '4/0', '1', '4', '1C X 3F N°4/0AWG THHN/THWN-2 TC 600V', 23, 20, '2018-10-11 01:59:21', '2018-10-11 02:01:20'),
(51, 'q', 'q', 'q', 0.025, 25, 25, 18.65, 23.31, 3, 4, 'No', 'Vfd', 480, 28.04, 35.05, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 3, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.54, 'No Aplica', 'No Aplica', '3', '', '(3X8 + 3X14) AWG VFD 600 V TC', 23, 20, '2018-10-11 02:12:40', '2018-10-11 20:55:40'),
(52, 'q', 'q', 'q', 0.045, 45, 25, 18.65, 23.31, 3, 4, 'No', 'Monopolar', 480, 28.04, 35.05, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.98, 'No Aplica', 'No Aplica', '1', '', '1C X 3F N°8AWG THHN/THWN-2 TC 600V', 23, 20, '2018-10-11 18:21:50', '2018-10-11 18:22:17'),
(53, 's', 's', 's', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 480, 28.04, 35.05, NULL, '87-125', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.98, '1', '8', '1', '8', '1C X 3F N°8AWG THHN/THWN-2 TC 600V', 23, 20, '2018-10-11 18:43:08', '2018-10-11 18:43:08'),
(54, 'w', 'w', 'w', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 480, 28.04, 35.05, NULL, '18-25', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.98, '1', '8', '1', '12', '1C X 3F N°8AWG THHN/THWN-2 TC 600V', 23, 20, '2018-10-11 19:00:02', '2018-10-11 19:00:02'),
(55, 'a', 'a', 'a', 0.032, 32, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 480, 28.04, 35.05, NULL, '11-16', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.7, '1', '8', '1', '14', '1C X 3F N°8AWG THHN/THWN-2 TC 600V', 23, 20, '2018-10-11 19:05:54', '2018-10-11 19:05:54'),
(56, 'a', 'a', 'a', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 480, 28.04, 35.05, NULL, '28-40', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.98, '1', '8', '1', '10', '1C X 3F N°8AWG THHN/THWN-2 TC 600V', 23, 20, '2018-10-11 19:09:39', '2018-10-11 19:09:39'),
(57, 'x', 'x', 'x', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 480, 28.04, 35.05, NULL, '28-40', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.98, '1', '8', '1', '10', '1C X 3F N°8AWG THHN/THWN-2 TC 600V', 23, 20, '2018-10-11 19:10:58', '2018-10-11 19:10:58'),
(58, 'q', 'q', 'q', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Vfd', 480, 28.04, 35.05, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 3, 'No mas de 3', 1, '26-30', 1, 150, 0.171, 2.56, 0.8, 0.5999999999999999, 0.33, '3', '8', '3', '', '(3X8 + 3X14) AWG VFD 600 V TC', 23, 20, '2018-10-11 19:17:50', '2018-10-11 19:31:26'),
(59, 'q', 'q', 'q', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 480, 28.04, 35.05, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.98, '1', '8', '1', '', '1C X 3F N°8AWG THHN/THWN-2 TC 600V', 23, 20, '2018-10-11 19:20:25', '2018-10-11 19:20:47'),
(60, 'q', 'q', 'q', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Vfd', 480, 28.04, 35.05, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 3, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.98, '1', '8', '3', '', '(3X8 + 3X14) AWG VFD 600 V TC', 23, 20, '2018-10-11 20:12:30', '2018-10-11 20:12:43'),
(61, 'e', 'e', 'e', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Multiconductor', 480, 28.04, 35.05, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.98, '1', '8', '1', '', '5X8 AWG  THHN/THWN-2 TC 600V', 23, 20, '2018-10-11 20:13:25', '2018-10-11 20:38:53'),
(62, 'w', 'w', 'w', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Vfd', 480, 28.04, 35.05, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.98, '1', '8', '3', '', '(3X8 + 3X14) AWG VFD 600 V TC', 23, 20, '2018-10-11 20:42:46', '2018-10-11 20:42:46'),
(63, 'a', 'a', 'a', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 480, 28.04, 35.05, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.98, '1', '8', '1', '', '1C X 3F N°8AWG THHN/THWN-2 TC 600V', 23, 20, '2018-10-11 20:44:52', '2018-10-11 20:55:22'),
(64, 'w', 'w', 'w', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 480, 28.04, 35.05, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.98, '1', '8', '1', '', '1C X 3F N°8AWG THHN/THWN-2 TC 600V', 23, 20, '2018-10-11 21:20:29', '2018-10-11 21:20:29'),
(65, 'w', 'w', 'w', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 480, 28.04, 35.05, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.98, '1', '8', '1', '', '1C X 3F N°8AWG THHN/THWN-2 TC 600V', 23, 20, '2018-10-11 21:21:34', '2018-10-11 21:21:34'),
(66, 'd', 'd', 'd', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 480, 28.04, 35.05, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.98, '1', '8', '1', '', '1C X 3F N°8AWG THHN/THWN-2 TC 600V', 23, 20, '2018-10-11 21:24:45', '2018-10-11 21:24:45'),
(67, 'a', 'a', 'a', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 480, 28.04, 35.05, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.98, '1', '8', '1', '12', '1C X 3F N°8AWG THHN/THWN-2 TC 600V', 23, 20, '2018-10-11 21:27:01', '2018-10-11 21:27:01'),
(68, 'q', 'q', 'q', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 480, 28.04, 35.05, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.98, '1', '8', '1', '', '1C X 3F N°8AWG THHN/THWN-2 TC 600V', 23, 20, '2018-10-11 21:28:42', '2018-10-11 21:28:42'),
(70, 'f', 'f', 'f', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 480, 28.04, 35.05, NULL, '18-25', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.98, '1', '8', '1', '', '1C X 3F N°8AWG THHN/THWN-2 TC 600V', 23, 20, '2018-10-11 21:56:56', '2018-10-11 21:56:56'),
(71, 's', 's', 's', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 480, 28.04, 35.05, NULL, '1350-2100', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.98, '1', '8', '1', '250', '1C X 3F N°8AWG THHN/THWN-2 TC 600V', 23, 20, '2018-10-11 22:40:58', '2018-10-11 22:40:58'),
(72, 'AD', 'S', 'S', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 120, 112.16, 140.2, NULL, '1350-2100', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.93, '1', '1/0', '1', '250', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T250AWG THHN/THWN-2 TC 600V', 24, 20, '2018-10-12 02:06:34', '2018-10-12 02:06:34'),
(73, 'S', 'S', 'S', 0, NULL, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 120, 112.16, 140.2, NULL, '1350-2100', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 0, '1', '1/0', '1', '250', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T250AWG THHN/THWN-2 TC 600V', 24, 20, '2018-10-12 02:08:36', '2018-10-12 02:08:36'),
(74, 'W', 'W', 'W', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 120, 112.16, 140.2, NULL, '1350-2100', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.93, '1', '1/0', '1', '250', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T250AWG THHN/THWN-2 TC 600V', 24, 20, '2018-10-12 02:09:19', '2018-10-12 02:09:19'),
(75, 'A', 'A', 'A', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 480, 28.04, 35.05, NULL, '1350-2100', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.9, 0.4358898943540673, 0.98, '1', '8', '1', '250', '1C X 3F N°8AWG+1C X 1 N°8AWG+1C X 1T250AWG THHN/THWN-2 TC 600V', 23, 20, '2018-10-12 02:09:56', '2018-10-12 02:09:56'),
(76, 'Q', 'Q', 'Q', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 120, 112.16, 140.2, NULL, '1350-2100', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.93, '1', '1/0', '1', '250', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T250AWG THHN/THWN-2 TC 600V', 24, 20, '2018-10-12 02:32:46', '2018-10-12 02:32:46'),
(77, 'Q', 'Q', 'Q', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 120, 112.16, 140.2, NULL, '1350-2100', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.93, '1', '1/0', '1', '250', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T250AWG THHN/THWN-2 TC 600V', 24, 20, '2018-10-12 02:33:49', '2018-10-12 02:33:49'),
(78, 'W', 'W', 'W', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Vfd', 120, 112.16, 140.2, NULL, '1350-2100', '1/0', 'Tuberia/coraza', '310-16', 150, 3, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 3.04, '1', '1/0', '3', '250', '(3X1/0 + 3X10) AWG VFD 600 V TC', 24, 20, '2018-10-12 02:35:50', '2018-10-12 17:55:04'),
(79, 'S', 'S', 'S', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 480, 25.8, 32.25, NULL, '1350-2100', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No mas de 3', 1, '26-30', 1, 35, 0.164, 3.94, 0.8, 0.5999999999999999, 1.36, '1', '10', '1', '250', '1C X 3F N°10AWG+1C X 1 N°10AWG+1C X 1TAWG THHN/THWN-2 TC 600V', 23, 20, '2018-10-12 02:37:21', '2018-10-12 02:37:21'),
(80, 'w', 'w', 'w', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 120, 112.16, 140.2, NULL, '1350-2100', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.93, '1', '1/0', '1', '250', '1C X 3F N°1/0AWG THHN/THWN-2 TC 600V', 24, 20, '2018-10-12 18:19:11', '2018-10-12 18:19:11'),
(81, 'q', 'q', 'q', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 120, 112.16, 140.2, NULL, '1350-2100', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.93, '1', '1/0', '1', '250', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T250AWG THHN/THWN-2 TC 600V', 24, 20, '2018-10-12 18:45:01', '2018-10-12 18:45:01'),
(82, 'a', 'a', 'a', 0.043, 43, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 120, 112.16, 140.2, NULL, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.8, '1', '1/0', '1', '250', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T250AWG THHN/THWN-2 TC 600V', 24, 20, '2018-10-12 18:49:08', '2018-10-12 18:49:08'),
(83, 's', 's', 's', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 120, 112.16, 140.2, NULL, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.93, '1', '1/0', '1', '250', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T250AWG THHN/THWN-2 TC 600V', 24, 20, '2018-10-12 18:51:17', '2018-10-12 18:51:17'),
(84, 'r', 'r', 'r', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 120, 112.16, 140.2, NULL, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.93, '1', '1/0', '1', '250', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T250AWG THHN/THWN-2 TC 600V', 24, 20, '2018-10-12 18:56:38', '2018-10-12 18:56:38'),
(85, 'a', 'a', 'a', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 120, 112.16, 140.2, NULL, '11-16', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.93, '1', '1/0', '1', '250', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T250AWG THHN/THWN-2 TC 600V', 24, 20, '2018-10-12 19:07:35', '2018-10-12 19:07:35'),
(86, 's', 's', 's', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 120, 112.16, 140.2, NULL, '11-16', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.93, '1', '1/0', '1', '', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1TAWG THHN/THWN-2 TC 600V', 24, 20, '2018-10-12 19:08:59', '2018-10-12 19:08:59'),
(87, 'p', 'p', 'p', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 120, 112.16, 140.2, NULL, '1350-2100', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.93, '1', '1/0', '1', '', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1TAWG THHN/THWN-2 TC 600V', 24, 20, '2018-10-12 19:33:17', '2018-10-12 19:33:17'),
(88, 'w', 'w', 'w', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 480, 25.8, 32.25, NULL, '1350-2100', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No mas de 3', 1, '26-30', 1, 35, 0.164, 3.94, 0.8, 0.5999999999999999, 1.36, '1', '10', '1', '', '1C X 3F N°10AWG+1C X 1 N°10AWG+1C X 1TAWG THHN/THWN-2 TC 600V', 23, 20, '2018-10-12 19:34:05', '2018-10-12 19:34:05'),
(89, 'e', 'e', 'e', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 120, 112.16, 140.2, NULL, '1350-2100', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.93, '1', '1/0', '1', '', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1TAWG THHN/THWN-2 TC 600V', 24, 20, '2018-10-12 19:42:50', '2018-10-12 19:42:50'),
(90, 'q', 'q', 'q', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 120, 112.16, 140.2, NULL, '1350-2100', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.93, '1', '1/0', '1', '', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1TAWG THHN/THWN-2 TC 600V', 24, 20, '2018-10-12 19:44:24', '2018-10-12 19:44:24'),
(91, 'a', 'a', 'a', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '1350-2100', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.69, '1', '1/0', '1', '', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1TAWG THHN/THWN-2 TC 600V', 22, 20, '2018-10-12 19:45:59', '2018-10-12 19:45:59'),
(92, 't', 't', 't', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 1, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.69, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T12AWG THHN/THWN-2 TC 600V', 22, 20, '2018-10-12 20:00:48', '2018-10-12 20:00:48'),
(93, 'q', 'q', 'q', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 1, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.69, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T12AWG THHN/THWN-2 TC 600V', 22, 20, '2018-10-12 20:01:38', '2018-10-12 20:01:38'),
(94, 'o', 'o', 'o', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.69, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T12AWG THHN/THWN-2 TC 600V', 22, 20, '2018-10-12 20:12:33', '2018-10-12 20:12:33'),
(95, 'w', 'w', 'w', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 120, 112.16, 140.2, NULL, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.93, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T12AWG THHN/THWN-2 TC 600V', 24, 20, '2018-10-12 20:13:15', '2018-10-12 20:13:15'),
(96, 'w', 'w', 'w', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 120, 112.16, 140.2, NULL, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.93, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T12AWG THHN/THWN-2 TC 600V', 24, 20, '2018-10-12 20:14:34', '2018-10-12 20:14:34'),
(97, 'q', 'q', 'q', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 120, 112.16, 140.2, NULL, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.93, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+<br>1C X 1 N°1/0AWG+<br>1C X 1T12AWG THHN/THWN-2 TC 600V', 24, 20, '2018-10-12 22:00:52', '2018-10-12 22:00:52'),
(98, 'h', 'h', 'h', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.69, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T12AWG THHN/THWN-2 TC 600V', 21, 19, '2018-10-12 22:15:12', '2018-10-12 22:15:12'),
(99, 'a', 'a', 'a', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.69, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T12AWG THHN/THWN-2 TC 600V', 21, 19, '2018-10-12 22:20:54', '2018-10-12 22:20:54'),
(100, 'm', 'm', 'm', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.69, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T12AWG THHN/THWN-2 TC 600V', 21, 19, '2018-10-12 22:22:07', '2018-10-12 22:22:07'),
(101, 's', 's', 's', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 16, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.69, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T12AWG THHN/THWN-2 TC 600V', 21, 19, '2018-10-12 22:29:39', '2018-10-12 22:29:39'),
(102, 'n', 'n', 'n', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 18, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.69, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T12AWG THHN/THWN-2 TC 600V', 21, 19, '2018-10-12 23:56:47', '2018-10-12 23:56:47'),
(103, 'q', 'q', 'q', 0.045, 45, 25, 18.65, 23.31, 3, 5, 'Si', 'Monopolar', 120, 112.16, 140.2, 18, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.93, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T12AWG THHN/THWN-2 TC 600V', 21, 19, '2018-10-12 23:57:10', '2018-10-12 23:57:10'),
(104, 'as', 'as', 'as', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 18, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.69, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T12AWG THHN/THWN-2 TC 600V', 21, 19, '2018-10-12 23:58:43', '2018-10-12 23:58:43'),
(105, 's', 's', 's', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 18, '11-16', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.69, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T12AWG THHN/THWN-2 TC 600V', 21, 19, '2018-10-13 00:00:17', '2018-10-13 00:00:17'),
(106, 'a', 'a', 'a', 0.045, 45, 24, 17.9, 22.38, 3, 5, 'Si', 'Monopolar', 120, 107.68, 134.59, 230, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.81, '1', '1/0', '1', '4', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T4AWG THHN/THWN-2 TC 600V', 21, 19, '2018-10-13 00:10:49', '2018-10-13 00:10:49'),
(107, 's', 's', 's', 0.045, 45, 24, 17.9, 22.38, 3, 5, 'Si', 'Multiconductor', 120, 107.68, 134.59, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.81, '1', '1/0', '1', '', '5X1/05X AWG  THHN/THWN-2 TC 600V', 21, 19, '2018-10-13 00:13:19', '2018-10-13 00:15:48'),
(108, 'e', 'e', 'e', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 16, '11-16', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.69, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T12AWG THHN/THWN-2 TC 600V', 21, 19, '2018-10-13 00:20:14', '2018-10-13 00:20:14'),
(109, 'd', 'd', 'd', 0.045, 45, 24, 17.9, 22.38, 3, 5, 'Si', 'Multiconductor', 120, 107.68, 134.59, 55, '44-63', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.81, '1', '1/0', '1', '10', '5X1/0+5X10 AWG  THHN/THWN-2 TC 600V', 21, 19, '2018-10-13 00:23:12', '2018-10-13 00:23:12'),
(110, 'd', 'd', 'd', 0.045, 45, 24, 17.9, 22.38, 3, 5, 'Si', 'Monopolar', 120, 107.68, 134.59, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.81, '1', '1/0', '1', '', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1 T  N°AWG+ THHN/THWN-2 TC 600V', 17, 19, '2018-10-13 00:43:29', '2018-10-13 00:44:15'),
(111, 'a', 's', 's', 0.045, 45, 24, 17.9, 22.38, 3, 5, 'Si', 'Vfd', 120, 107.68, 134.59, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 3, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.92, '1', '1/0', '3', '', '(3X1/0 + 3X10) AWG VFD 600 V TC', 21, 19, '2018-10-13 00:44:48', '2018-10-13 00:44:58'),
(112, 'a', 'a', 'a', 0.045, 45, 24, 17.9, 22.38, 3, 5, 'Si', 'Monopolar', 120, 107.68, 134.59, 16, '11-16', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.81, '1', '1/0', '1', '', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1TAWG THHN/THWN-2 TC 600V', 17, 19, '2018-10-13 00:48:23', '2018-10-13 00:48:23'),
(113, 'a', 's', 'e', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 55, '44-63', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.69, '1', '1/0', '1', '10', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T10AWG THHN/THWN-2 TC 600V', 21, 19, '2018-10-13 00:50:54', '2018-10-13 00:50:54'),
(114, 'a', 's', 'd', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Multiconductor', 120, 103.19, 128.99, 55, '44-63', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.69, '1', '1/0', '1', '10', '5X1/0+5X10 AWG  THHN/THWN-2 TC 600V', 21, 19, '2018-10-13 00:51:40', '2018-10-13 00:51:40'),
(115, 'd', 'd', 'd', 0.045, 45, 34, 25.36, 31.71, 3, 5, 'Si', 'Monopolar', 480, 38.14, 47.67, 16, '11-16', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.9, 0.4358898943540673, 1.33, '1', '8', '1', '', '1C X 3F N°8AWG+1C X 1 N°8AWG+1C X 1TAWG THHN/THWN-2 TC 600V', 18, 19, '2018-10-13 00:56:22', '2018-10-13 00:56:22'),
(116, 'w', 'w', 'w', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 127, 97.5, 121.88, 16, '11-16', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.4, '1', '1/0', '1', '', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1TAWG THHN/THWN-2 TC 600V', 19, 19, '2018-10-13 01:03:41', '2018-10-13 01:03:41'),
(117, 's', 's', 's', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Multiconductor', 127, 97.5, 121.88, 16, '11-16', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.4, '1', '1/0', '1', 'JAJAJAJA', '5X1/0 AWG  THHN/THWN-2 TC 600V', 19, 19, '2018-10-13 01:04:14', '2018-10-13 01:04:14'),
(118, 's', 's', 's', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Multiconductor', 120, 103.19, 128.99, 16, '11-16', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.69, '1', '1/0', '1', '1/0', '5X1/0 AWG  THHN/THWN-2 TC 600V', 24, 20, '2018-10-13 01:10:54', '2018-10-13 01:10:54'),
(119, 'sa', 's', 's', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 26, '22-32', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.69, '1', '1/0', '1', '10', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1T10AWG THHN/THWN-2 TC 600V', 24, 20, '2018-10-13 01:17:50', '2018-10-13 01:17:50'),
(120, 'sad', 'd', 'd', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Vfd', 120, 103.19, 128.99, 1250, '900-1400', '1/0', 'Tuberia/coraza', '310-16', 150, 3, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.8, '1', '1/0', '3', '10', '(3X1/0 + 3X10) AWG VFD 600 V TC', 25, 21, '2018-10-13 01:22:41', '2018-10-17 01:36:18'),
(121, 's', 's', 's', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '', '250', 'Tuberia/coraza', '310-16', 255, 1, 'No mas de 3', 1, '26-30', 1, 255, 0.135, 0.171, 0.9, 0.4358898943540673, 1.43, '1', '250', '1', '', '1C X 3F N°250AWG+            \n1C X 1 N°250AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 25, 21, '2018-10-13 01:32:22', '2018-10-17 01:14:41'),
(122, 's', 's', 's', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1 T  N°AWG+ THHN/THWN-2 TC 600V', 25, 21, '2018-10-13 01:37:42', '2018-10-16 23:59:07'),
(123, 'd', 'd', 'd', 0.045, 45, 24, 17.9, 22.38, 3, 5, 'Si', 'Multiconductor', 120, 107.68, 134.59, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.7, 0.714142842854285, 2.65, '1', '1/0', '1', '1/0', '5X1/05X AWG  THHN/THWN-2 TC 600V', 25, 21, '2018-10-13 01:48:48', '2018-10-16 23:53:27'),
(124, 's', 's', 's', 0.045, 45, 24, 17.9, 22.38, 3, 5, 'Si', 'Multiconductor', 120, 107.68, 134.59, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.81, '1', '1/0', '1', '1/0', '5X1/05X AWG  THHN/THWN-2 TC 600V', 25, 21, '2018-10-13 02:01:42', '2018-10-13 02:01:49'),
(125, 'e', 'e', 'e', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Multiconductor', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '1/0', '5X1/05X AWG  THHN/THWN-2 TC 600V', 25, 21, '2018-10-13 02:04:07', '2018-10-13 02:04:15'),
(126, 'a', 'a', 'a', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Multiconductor', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '1/0', '5X1/05X AWG  THHN/THWN-2 TC 600V', 25, 21, '2018-10-13 02:05:54', '2018-10-13 02:07:02'),
(127, 'e', 'e', 'e', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Multiconductor', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.8, '1', '1/0', '1', '1/0', '5X1/05X AWG  THHN/THWN-2 TC 600V', 25, 21, '2018-10-13 02:12:34', '2018-10-13 02:14:09'),
(128, 's', 's', 's', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Multiconductor', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '1/0', '5X1/05X AWG  THHN/THWN-2 TC 600V', 25, 21, '2018-10-13 02:15:02', '2018-10-13 02:40:28'),
(129, 'e', 'e', 'e', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Multiconductor', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '1/0', '5X1/05X AWG  THHN/THWN-2 TC 600V', 25, 21, '2018-10-13 02:18:19', '2018-10-13 02:36:16'),
(130, 'd', 'd', 'd', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Multiconductor', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '1/0', '5X1/05X AWG  THHN/THWN-2 TC 600V', 25, 21, '2018-10-13 02:22:57', '2018-10-13 02:23:28'),
(131, 'f', 'f', 'f', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 34, '28-40', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '10', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1TAWG THHN/THWN-2 TC 600V', 25, 21, '2018-10-13 02:24:23', '2018-10-13 02:24:23'),
(132, 's', 'd', 'd', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Multiconductor', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.8, '1', '1/0', '1', '1/0', '5X1/05X AWG  THHN/THWN-2 TC 600V', 25, 21, '2018-10-13 02:25:41', '2018-10-16 23:56:00'),
(133, 'D', 'D', 'D', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Vfd', 120, 103.19, 128.99, NULL, '12-16', '1/0', 'Tuberia/coraza', '310-16', 150, 3, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.7, 0.714142842854285, 2.54, '1', '1/0', '3', '', '(3X1/0 + 3X10) AWG VFD 600 V TC', 25, 21, '2018-10-13 02:27:59', '2018-10-13 02:40:35'),
(134, 'sd', 'sd', 'sd', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Vfd', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 3, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.7, 0.714142842854285, 2.54, '1', '1/0', '3', '', '(3X1/0 + 3X10) AWG VFD 600 V TC', 25, 21, '2018-10-13 02:31:01', '2018-10-13 02:34:06'),
(135, 'e', 'e', 'e', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Vfd', 120, 103.19, 128.99, NULL, '28-40', '1/0', 'Tuberia/coraza', '310-16', 150, 3, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '3', '', '(3X1/0 + 3X10) AWG VFD 600 V TC', 25, 21, '2018-10-13 02:41:02', '2018-10-13 02:51:08'),
(136, 's', 's', 's', 0.045, 45, 34, 25.36, 31.71, 3, 5, 'Si', 'Multiconductor', 120, 152.54, 190.68, NULL, '', '750', 'Tuberia/coraza', '310-16', 475, 1, 'No mas de 3', 1, '26-30', 1, 475, 0.1247, 0.0623, 0.9, 0.4358898943540673, 1.09, '1', '750', '1', '750', '5X7505X AWG  THHN/THWN-2 TC 600V', 25, 21, '2018-10-13 02:51:33', '2018-10-16 23:48:40'),
(137, 'w', 'w', 'w', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 15, '11-16', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.69, '1', '1/0', '1', '14', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1TAWG THHN/THWN-2 TC 600V', 25, 21, '2018-10-16 19:40:03', '2018-10-16 19:40:03'),
(138, 'm', 'm', 'm', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 17, '11-16', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.69, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1TAWG THHN/THWN-2 TC 600V', 25, 21, '2018-10-16 19:45:11', '2018-10-16 19:45:11'),
(139, 'e', 'e', 'e', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Multiconductor', 120, 103.19, 128.99, 15, '11-16', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.8, '1', '1/0', '1', '1/0', '5X1/0 AWG  THHN/THWN-2 TC 600V', 25, 21, '2018-10-16 19:46:07', '2018-10-16 20:18:52'),
(140, 'w', 'w', 'w', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Multiconductor', 120, 103.19, 128.99, 18, '11-16', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.8, '1', '1/0', '1', '1/0', '5X1/0 AWG  THHN/THWN-2 TC 600V', 25, 21, '2018-10-16 20:05:42', '2018-10-16 20:18:32'),
(141, 'q', 'q', 'q', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Multiconductor', 120, 103.19, 128.99, 18, '11-16', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.8, '1', '1/0', '1', '1/0', '5X1/0 AWG  THHN/THWN-2 TC 600V', 25, 21, '2018-10-16 20:09:17', '2018-10-16 20:17:55'),
(142, 'q', 'q', 'q', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Multiconductor', 120, 103.19, 128.99, 18, '11-16', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.8, '1', '1/0', '1', '1/0', '5X1/0 AWG  THHN/THWN-2 TC 600V', 25, 21, '2018-10-16 20:32:05', '2018-10-16 20:32:21'),
(143, 'w', 'w', 'w', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Vfd', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 3, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.8, '1', '1/0', '3', '', '(3X1/0 + 3X10) AWG VFD 600 V TC', 25, 21, '2018-10-16 20:43:46', '2018-10-16 23:56:17'),
(144, 'a', 'a', 'a', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Multiconductor', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '1/0', '5X1/05X AWG  THHN/THWN-2 TC 600V', 25, 21, '2018-10-16 21:04:28', '2018-10-16 23:56:06'),
(145, 's', 's', 's', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Vfd', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 3, 'No mas de 3', 1, '26-30', 1, 450, 0.144, 0.394, 0.9, 0.4358898943540673, 0.93, '3', '1/0', '3', '', '(3X1/0 + 3X10) AWG VFD 600 V TC', 25, 21, '2018-10-16 21:05:40', '2018-10-16 23:56:12'),
(146, 'e', 'e', 'e', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Vfd', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 3, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.8, '1', '1/0', '3', '', '(3X1/0 + 3X10) AWG VFD 600 V TC', 25, 21, '2018-10-16 21:23:39', '2018-10-16 23:48:37'),
(147, 'a', 's', 's', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Multiconductor', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '1/0', '5X1/05X AWG  THHN/THWN-2 TC 600V', 25, 21, '2018-10-16 21:45:46', '2018-10-16 23:48:34'),
(148, 'q', 'q', 'q', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.69, '1', '1/0', '1', '', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1TAWG THHN/THWN-2 TC 600V', 21, 19, '2018-10-16 22:28:31', '2018-10-16 22:28:31'),
(149, 's', 's', 's', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 55, '44-63', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.69, '1', '1/0', '1', '10', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1TAWG THHN/THWN-2 TC 600V', 21, 19, '2018-10-16 22:32:38', '2018-10-16 22:32:38'),
(150, 'y', 'y', 'y', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 150, '112-160', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.8, '1', '1/0', '1', '6', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°6AWG+\n THHN/THWN-2 TC 600V', 25, 21, '2018-10-17 01:23:58', '2018-10-17 01:25:09'),
(151, 'a', 'a', 'a', 0.083, 83, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No mas de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.87, 'No Aplica', 'No Aplica', '1', '6', '4X6 AWG  THHN/THWN-2 TC 600V', 27, 23, '2018-10-17 02:26:33', '2018-10-17 02:29:19'),
(152, 'f', 'f', 'f', 0.049, 49, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '6', 'Tuberia/coraza', '310-16', 65, 3, 'No mas de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.1, 'No Aplica', 'No Aplica', '3', '12', '(3X6 + 3X12) AWG VFD 600 V TC', 27, 23, '2018-10-17 02:31:57', '2018-10-17 02:33:53'),
(153, 't', 't', 't', 0.07, 70, 214.48, 160, 200, 3, 5, 'Si', 'Monopolar', 480, 240.56, 300.7, 250, '160-320', '350', 'Tuberia/coraza', '310-16', 310, 1, 'No mas de 3', 1, '26-30', 1, 310, 0.1312, 0.1247, 0.8, 0.5999999999999999, 1.08, '1', '350', '1', '4', '1C X 3F N°350AWG+1C X 1 N°350AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 27, 23, '2018-10-17 02:35:56', '2018-10-17 02:37:52'),
(154, 'a', 'a', 'a', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 50, '44-63', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '10', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°10AWG+\n THHN/THWN-2 TC 600V', 26, 22, '2018-10-18 00:30:52', '2018-10-18 00:30:56'),
(155, 'p', 'p', 'p', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.69, '1', '1/0', '1', '', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1TAWG THHN/THWN-2 TC 600V', 24, 20, '2018-10-18 00:57:20', '2018-10-18 00:57:20'),
(156, 'q', 'q', 'q', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.69, '1', '1/0', '1', '', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+1C X 1TAWG THHN/THWN-2 TC 600V', 24, 20, '2018-10-18 02:17:31', '2018-10-18 02:17:31'),
(157, 'w', 'w', 'w', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 480, 25.8, 32.25, 30, '22-32', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No mas de 3', 1, '26-30', 1, 35, 0.164, 3.94, 0.8, 0.5999999999999999, 1.36, '1', '10', '1', '10', '1C X 3F N°10AWG+1C X 1 N°10AWG+\n1C X 1 T  N°10AWG+\n THHN/THWN-2 TC 600V', 31, 44, '2018-10-19 02:11:19', '2018-10-19 02:11:30'),
(158, 'g', 'y', 'y', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 23, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.8, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°12AWG+\n THHN/THWN-2 TC 600V', 33, 51, '2018-10-19 18:21:38', '2018-10-20 02:18:31'),
(159, 'w', 'w', 'w', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 20, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.8, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°12AWG+\n THHN/THWN-2 TC 600V', 33, 51, '2018-10-19 18:35:08', '2018-10-19 20:35:47'),
(160, 'a', 'a', 'a', 0.034, 34, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 20, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.11, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°12AWG+\n THHN/THWN-2 TC 600V', 33, 51, '2018-10-19 18:49:36', '2018-10-19 20:13:03'),
(161, 'TRANSFORMADOR', 'TRANSFORMADOR', 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN', 0.03, 30, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, 225, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No mas de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.56, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 34, 53, '2018-10-19 21:53:25', '2018-10-19 22:04:17'),
(162, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN', 'TGD', 'TABLERO VARIADOR P346', 0.006, 6, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.09, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 35, 53, '2018-10-19 21:55:47', '2018-10-19 21:58:18'),
(163, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN', 'TGD', 'TABLERO VARIADOR P349', 0.01, 10, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.15, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 35, 53, '2018-10-19 21:57:12', '2018-10-19 21:58:20'),
(164, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN', 'TGD', 'TABLERO VARIADOR P350', 0.009, 9, 40, 29.84, 37.3, 3, 5, 'Si', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, '1', '4', '1', '4', '5X4 AWG  THHN/THWN-2 TC 600V', 35, 53, '2018-10-19 21:59:53', '2018-10-19 22:13:12');
INSERT INTO `memoria_bajas` (`id`, `conductor`, `carga`, `descripcion_carga`, `longitud_km`, `longitud_metros`, `potencia_hp`, `potencia_kw`, `potencia_kva`, `nro_fases`, `nro_hilos`, `neutro`, `tipo_cab`, `tension_nominal`, `corriente_nominal`, `corriente_asignada`, `proteccion_selec`, `ajustable`, `calibre_conductor`, `medio_de_instal`, `tabla_2050`, `capacidad_de_un_conductor`, `nro_de_conductores_x_fase`, `cantidad`, `factor_de_ajuste_con`, `rango_temperatura`, `factor_de_ajuste_tem`, `cap_tot_conduc`, `reactancia`, `resistencia`, `factor_de_potencia`, `sen`, `regulacion`, `conductores_neutro`, `calibre_conduc_neu`, `conductor_tierra`, `calibre_tierra`, `conductor_selecc`, `tablero_id`, `project_id`, `created_at`, `updated_at`) VALUES
(165, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN', 'TGD', 'TOMACORRIENTE WORKOVER', 0.005, 5, 30, 22.38, 27.98, 3, 5, 'Si', 'Multiconductor', 480, 33.65, 42.06, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.13, '1', '8', '1', '8', '5X8 AWG  THHN/THWN-2 TC 600V', 35, 53, '2018-10-19 22:01:41', '2018-10-19 22:13:10'),
(166, 'TRANSFORMADOR', 'TRANSFORMADOR', 'TABLERO VARIADOR P049', 0.275, 275, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '2', 'Tuberia/coraza', '310-16', 115, 1, 'No mas de 3', 1, '26-30', 1, 115, 0.148, 0.623, 0.8, 0.5999999999999999, 2.61, 'No Aplica', 'No Aplica', '1', '2', '4X2 AWG  THHN/THWN-2 TC 600V', 34, 53, '2018-10-19 22:03:22', '2018-10-19 22:04:03'),
(167, 'TABLERO VARIADOR P346  480V', 'TABLERO VARIADOR P346  480V', 'MOTOR P346', 0.025, 25, 40, 29.84, 37.3, 3, 5, 'Si', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 3, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.37, '1', '4', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 36, 53, '2018-10-19 22:06:28', '2018-10-19 22:13:06'),
(168, 'TABLERO VARIADOR P349 480V 480', 'TABLERO VARIADOR P349 480V 480', 'MOTOR P349', 0.048, 48, 40, 29.84, 37.3, 3, 5, 'Si', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 3, 'No mas de 3', 1, '26-30', 1, 255, 0.157, 1.02, 0.8, 0.5999999999999999, 0.24, '3', '4', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 37, 53, '2018-10-19 22:13:29', '2018-10-19 22:17:56'),
(169, 'TABLERO VARIADOR P350 480V', 'ABLERO VARIADOR P350', 'MOTOR P350', 0.045, 45, 40, 29.84, 37.3, 3, 5, 'Si', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 3, 'No mas de 3', 1, '26-30', 1, 255, 0.157, 1.02, 0.8, 0.5999999999999999, 0.22, '3', '4', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 38, 53, '2018-10-19 22:15:03', '2018-10-19 22:17:52'),
(170, 'TABLERO VARIADOR P049', 'TABLERO VARIADOR P049', 'MOTOR P049', 0.019, 19, 40, 29.84, 37.3, 3, 5, 'Si', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 3, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.28, '1', '4', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 39, 53, '2018-10-19 22:17:36', '2018-10-19 22:17:50'),
(171, 'q', 'q', 'q', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 15, '11-16', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', NULL, '26-30', 1, 0, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '14', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°14AWG+\n THHN/THWN-2 TC 600V', 40, 54, '2018-10-22 18:09:24', '2018-10-23 22:00:31'),
(172, 'TRANSFORMADOR', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 0.032299999999999995, 32.3, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, 225, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No mas de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.6, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 41, 55, '2018-10-22 19:13:10', '2018-10-22 19:13:38'),
(173, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD', 'T-VARIADOR C-015', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 42, 55, '2018-10-22 19:20:02', '2018-10-22 19:25:33'),
(174, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD', 'T-VARIADOR C-024', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 42, 55, '2018-10-22 19:26:33', '2018-10-22 19:32:31'),
(175, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD', 'T-VARIADOR C-035', 0.003, 3, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.04, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 42, 55, '2018-10-22 19:27:27', '2018-10-22 19:32:33'),
(176, 'T-VARIADOR C-024', 'TGD', 'TOMACORRIENTE WORKOVER', 0.008, 8, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.21, 'No Aplica', 'No Aplica', '1', '8', '4X8 AWG  THHN/THWN-2 TC 600V', 42, 55, '2018-10-22 19:28:21', '2018-10-22 19:32:36'),
(177, 'T-VARIADOR C-015', 'MOTOR C-015', 'MOTOR C-015', 0.05, 50, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 3, 'No mas de 3', 1, '26-30', 1, 255, 0.157, 1.02, 0.8, 0.5999999999999999, 0.25, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 43, 55, '2018-10-22 19:29:38', '2018-10-22 19:32:40'),
(178, 'T-VARIADOR C-024', 'MOTOR C-024', 'MOTOR C-024', 0.052, 52, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '6', 'Tuberia/coraza', '310-16', 65, 3, 'No mas de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.17, 'No Aplica', 'No Aplica', '3', '12', '(3X6 + 3X12) AWG VFD 600 V TC', 44, 55, '2018-10-22 19:31:16', '2018-10-22 19:32:42'),
(179, 'T-VARIADOR C-035', 'MOTOR C-035', 'MOTOR C-035', 0.058, 58, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '6', 'Tuberia/coraza', '310-16', 65, 3, 'No mas de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.3, 'No Aplica', 'No Aplica', '3', '12', '(3X6 + 3X12) AWG VFD 600 V TC', 45, 55, '2018-10-22 19:32:10', '2018-10-22 19:32:45'),
(180, 'pru', 'pru', 'pru', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Vfd', 480, 25.8, 32.25, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, 3, 'No mas de 3', 1, '26-30', 1, 105, 0.164, 3.94, 0.8, 0.5999999999999999, 0.45, '3', '10', '3', '14', '(3X10 + 3X14) AWG VFD 600 V TC', 46, 56, '2018-10-22 20:14:10', '2018-10-22 20:20:43'),
(181, 'TRANSFORMADOR', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 0.004, 4, 337.8, 252, 315, 3, 4, 'No', 'Monopolar', 480, 378.89, 473.61, 480, '250-500', '1000', 'Tuberia/coraza', '310-16', 545, 1, 'No mas de 3', 1, '26-30', 1, 545, 0.1214, 0.0492, 0.8, 0.5999999999999999, 0.06, 'No Aplica', 'No Aplica', '1', '3', '1C X 3F N°1000AWG+1C X 1 N°1000AWG+\n1C X 1 T  N°3AWG+\n THHN/THWN-2 TC 600V', 47, 57, '2018-10-22 21:24:38', '2018-10-22 21:26:12'),
(182, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- 3A', 'TGD- 3A', 0.058, 58, 125, 93.25, 116.56, 3, 4, 'No', 'Monopolar', 120, 560.81, 701.01, NULL, '', '1000', 'Tuberia/coraza', '310-16', 545, 1, 'No mas de 3', 1, '26-30', 1, 545, 0.1214, 0.0492, 0.8, 0.5999999999999999, 5.27, 'No Aplica', 'No Aplica', '1', '', '1C X 3F N°1000AWG+/n1C X 1 N°1000AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 48, 57, '2018-10-22 21:31:28', '2018-10-22 21:31:28'),
(183, 'TRANSFORMADOR', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 0.058, 58, 125, 93.25, 116.56, 3, 4, 'No', 'Monopolar', 480, 140.2, 175.25, 225, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No mas de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.84, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 49, 57, '2018-10-22 21:33:16', '2018-10-22 21:33:40'),
(184, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- 3B', 'TGD- 3B', 0.078, 78, 123, 91.76, 114.7, 3, 4, 'No', 'Monopolar', 480, 137.96, 172.45, 225, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No mas de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 1.11, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 49, 57, '2018-10-22 21:36:14', '2018-10-22 21:36:34'),
(185, 'TGD- 3A 480', 'TGD- 3A 480', 'T-VARIADOR P-234', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 50, 57, '2018-10-22 21:38:28', '2018-10-22 21:40:21'),
(186, 'TGD- 3A 480', 'TGD- 3A 480', 'T-VARIADOR P-257', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 50, 57, '2018-10-22 21:39:38', '2018-10-22 21:40:23'),
(187, 'TGD- 3A 480', 'TGD- 3A 480', 'T-VARIADOR P-353', 0.011, 11, 60, 44.76, 55.95, 3, 4, 'No', 'Multiconductor', 480, 67.3, 84.12, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.24, 'No Aplica', 'No Aplica', '1', NULL, '4X4+ AWG  THHN/THWN-2 TC 600V', 50, 57, '2018-10-22 21:41:05', '2018-10-22 21:41:05'),
(188, 'TGD- 3A 480', 'TGD- 3A 480', 'T-VARIADOR P-010', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 50, 57, '2018-10-22 21:42:03', '2018-10-22 21:42:48'),
(189, 'TGD- 3A 480', 'TGD- 3A 480', 'T-VARIADOR P-007', 0.003, 3, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No mas de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 50, 57, '2018-10-22 21:42:55', '2018-10-22 21:42:55'),
(190, 'TGD- 3A 480', 'TGD- 3A 480', 'TOMACORRIENTE WORKOVER', 0.008, 8, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.21, 'No Aplica', 'No Aplica', '1', '8', '4X8 AWG  THHN/THWN-2 TC 600V', 50, 57, '2018-10-22 21:43:48', '2018-10-22 21:46:45'),
(191, 'TGD- 3B 480V', 'TGD- 3B 480V', 'T-VARIADOR P-259', 0.013, 13, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.19, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 51, 57, '2018-10-22 21:47:04', '2018-10-22 21:49:30'),
(192, 'TGD- 3B 480V', 'TGD- 3B 480V', 'T-VARIADOR P-260', 0.011, 11, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.16, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 51, 57, '2018-10-22 21:48:36', '2018-10-22 21:49:31'),
(193, 'TGD- 3B 480V', 'TGD- 3B 480V', 'T-VARIADOR P-307', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 51, 57, '2018-10-22 21:49:42', '2018-10-22 21:55:08'),
(194, 'TGD- 3B 480V', 'TGD- 3B 480V', 'T-VARIADOR P-313', 0.007, 7, 60, 44.76, 55.95, 3, 4, 'No', 'Multiconductor', 480, 67.3, 84.12, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.15, 'No Aplica', 'No Aplica', '1', NULL, '4X4+ AWG  THHN/THWN-2 TC 600V', 51, 57, '2018-10-22 21:50:49', '2018-10-22 21:50:49'),
(195, 'TGD- 3B 480V', 'TGD- 3B 480V', 'T-VARIADOR P-352', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 51, 57, '2018-10-22 21:51:38', '2018-10-22 21:55:06'),
(196, 'T-VARIADOR P-234', 'T-VARIADOR P-234', 'MOTOR P-234', 0.036, 36, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 3, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.53, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 52, 57, '2018-10-22 21:53:03', '2018-10-22 21:55:10'),
(197, 'T-VARIADOR P-257', 'T-VARIADOR P-257', 'MOTOR P-257', 0.047, 47, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 3, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.69, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 53, 57, '2018-10-22 21:58:06', '2018-10-22 21:59:19'),
(198, 'T-VARIADOR P-353', 'T-VARIADOR P-353', 'MOTOR P-257', 0.039, 39, 39, 29.09, 36.37, 3, 4, 'No', 'Vfd', 480, 43.74, 54.68, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 3, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.56, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 54, 57, '2018-10-22 21:59:47', '2018-10-22 22:04:03'),
(199, 'T-VARIADOR P-010 480', 'T-VARIADOR P-010', 'T-VARIADOR P-010', 0.06, 60, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 3, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.88, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 55, 57, '2018-10-22 22:02:23', '2018-10-22 22:04:04'),
(200, 'T-VARIADOR P-007', 'T-VARIADOR P-007', 'T-VARIADOR P-007', 0.044, 44, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 3, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.65, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 56, 57, '2018-10-22 22:04:18', '2018-10-22 22:07:05'),
(201, 'T-VARIADOR P-259', 'T-VARIADOR P-259', 'MOTOR P-259', 0.039, 39, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 3, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.57, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 57, 57, '2018-10-22 22:07:30', '2018-10-22 22:10:13'),
(202, 'T-VARIADOR P-260', 'T-VARIADOR P-260', 'MOTOR P-260', 0.062, 62, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 3, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.91, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 58, 57, '2018-10-22 22:08:44', '2018-10-22 22:10:14'),
(203, 'T-VARIADOR P-307', 'T-VARIADOR P-307', 'MOTOR P-307', 0.054, 54, 60, 44.76, 55.95, 3, 4, 'No', 'Vfd', 480, 67.3, 84.12, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 1.19, 'No Aplica', 'No Aplica', '3', '', '(3X4 + 3X12) AWG VFD 600 V TC', 59, 57, '2018-10-22 22:10:25', '2018-10-22 22:10:25'),
(204, 'T-VARIADOR P-313', 'T-VARIADOR P-313', 'MOTOR P-313', 0.047, 47, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 3, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.69, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 60, 57, '2018-10-22 22:12:13', '2018-10-22 22:13:11'),
(205, 'T-VARIADOR P-352', 'T-VARIADOR P-352', 'MOTOR P-352', 0.07, 70, 40, 29.84, 37.3, 3, 5, 'Si', 'Vfd', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No mas de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.57, '1', '6', '3', '', '(3X6 + 3X12) AWG VFD 600 V TC', 61, 57, '2018-10-22 22:13:45', '2018-10-22 22:13:45'),
(206, 'GENERADOR', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 0.01, 10, 107.24, 80, 100, 3, 4, 'No', 'Monopolar', 480, 120.28, 150.35, 150, '112-160', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 0.17, 'No Aplica', 'No Aplica', '1', '6', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°6AWG+\n THHN/THWN-2 TC 600V', 62, 58, '2018-10-23 02:51:02', '2018-10-23 02:52:23'),
(207, 'TGD TABLERO GENERAL', 'TGD', 'T-VARIADOR PWT-01', 0.01, 10, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.15, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 63, 58, '2018-10-23 02:56:29', '2018-10-23 03:03:23'),
(208, 'TGD TABLERO GENERAL', 'TGD', 'T-VARIADOR PWT-03', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 63, 58, '2018-10-23 02:57:33', '2018-10-23 03:03:24'),
(209, 'TGD TABLERO GENERAL', 'TGD', 'T-VARIADOR PWT-09', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 63, 58, '2018-10-23 02:58:28', '2018-10-23 03:03:26'),
(210, 'TGD TABLERO GENERAL', 'TGD', 'T-VARIADOR PWT-10', 0.003, 3, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.04, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 63, 58, '2018-10-23 03:00:16', '2018-10-23 03:03:30'),
(211, 'TGD TABLERO GENERAL', 'GENERAL	TGD', 'TOMACORRIENTE WORKOVER', 0.01, 10, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No mas de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.26, 'No Aplica', 'No Aplica', '1', '8', '4X8 AWG  THHN/THWN-2 TC 600V', 63, 58, '2018-10-23 03:01:28', '2018-10-23 03:03:32'),
(212, 'TGD TABLERO GENERAL', 'TGD', 'TRAFO BAJA-BAJA ILUM', 0.012, 12, 13, 9.7, 12.12, 3, 4, 'No', 'Multiconductor', 480, 14.58, 18.23, 25, '22-32', '12', 'Tuberia/coraza', '310-16', 25, 1, 'No mas de 3', 1, '26-30', 1, 25, 0.177, 6.56, 0.8, 0.5999999999999999, 0.34, 'No Aplica', 'No Aplica', '1', '12', '4X12 AWG  THHN/THWN-2 TC 600V', 63, 58, '2018-10-23 03:02:46', '2018-10-23 03:03:58'),
(213, 'XXX', 'T-VAR-P-349', 'MOTOR P-349', 0.048, 48, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 3, 'No mas de 3', NULL, '26-30', 1, 0, 0.157, 1.02, 0.8, 0.5999999999999999, 0.24, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 65, 59, '2018-10-23 19:52:21', '2018-10-26 19:41:42'),
(214, 'XXX', 'T-VAR-P-350', 'MOTOR P-350', 0.045, 45, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 3, 'No mas de 3', NULL, '26-30', 1, 0, 0.157, 1.02, 0.8, 0.5999999999999999, 0.22, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 65, 59, '2018-10-23 19:54:08', '2018-10-26 19:41:39'),
(215, 'XXX', 'T-VAR-P-346', 'MOTOR P-346', 0.025, 25, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 3, 'No mas de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.37, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 65, 59, '2018-10-23 20:20:27', '2018-10-23 20:21:14'),
(216, 'q', 'q', 'q', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 15, '11-16', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '14', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°14AWG+\n THHN/THWN-2 TC 600V', 40, 54, '2018-10-23 22:01:45', '2018-10-23 22:01:55'),
(217, 'w', 'w', 'w', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 15, '11-16', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '14', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°14AWG+\n THHN/THWN-2 TC 600V', 40, 54, '2018-10-23 22:02:21', '2018-10-23 22:02:29'),
(218, 'w', 'w', 'w', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 51, '44-63', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No mas de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.9, 0.4358898943540673, 2.8, '1', '1/0', '1', '10', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°10AWG+\n THHN/THWN-2 TC 600V', 40, 54, '2018-10-23 22:06:52', '2018-10-23 22:12:23'),
(219, 'p', 'p', 'p', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 22, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', NULL, '26-30', 1, 0, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°12AWG+\n THHN/THWN-2 TC 600V', 40, 54, '2018-10-23 22:09:29', '2018-10-23 22:09:50'),
(220, 's', 's', 's', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 17, '11-16', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', NULL, '26-30', 1, 0, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°12AWG+\n THHN/THWN-2 TC 600V', 40, 54, '2018-10-23 22:10:28', '2018-10-24 00:05:55'),
(221, 'T-VARIADOR PWT-01', 'T-VARIADOR PWT-01', 'MOTOR PWT-01', 0.052, 52, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '6', 'Tuberia/coraza', '310-16', 65, 3, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.17, 'No Aplica', 'No Aplica', '3', '12', '(3X6 + 3X12) AWG VFD 600 V TC', 64, 58, '2018-10-24 01:20:46', '2018-10-24 01:26:18'),
(222, 'T-VARIADOR PWT-03', 'T-VARIADOR PWT-03', 'MOTOR PWT-03', 0.033, 33, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '6', 'Tuberia/coraza', '310-16', 65, 3, 'No más de 3', 1, '26-30', 1, 195, 0.167, 1.61, 0.8, 0.5999999999999999, 0.25, 'No Aplica', 'No Aplica', '3', '12', '(3X6 + 3X12) AWG VFD 600 V TC', 66, 58, '2018-10-24 01:22:30', '2018-10-24 01:26:26'),
(223, 'T-VARIADOR PWT-09', 'T-VARIADOR PWT-09', 'MOTOR PWT-09', 0.031, 31, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '6', 'Tuberia/coraza', '310-16', 65, 3, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.7, 'No Aplica', 'No Aplica', '3', '12', '(3X6 + 3X12) AWG VFD 600 V TC', 67, 58, '2018-10-24 01:23:52', '2018-10-24 01:26:30'),
(224, 'T-VARIADOR PWT-10', 'T-VARIADOR PWT-10', 'MOTOR PWT-10', 0.034, 34, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '6', 'Tuberia/coraza', '310-16', 65, 3, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.76, 'No Aplica', 'No Aplica', '3', '12', '(3X6 + 3X12) AWG VFD 600 V TC', 68, 58, '2018-10-24 01:25:49', '2018-10-24 01:26:34'),
(225, 'q', 'q', 'q', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Vfd', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 3, 'No más de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '3', '10', '(3X1/0 + 3X10) AWG VFD 600 V TC', 69, 62, '2018-10-24 01:31:18', '2018-10-24 19:33:46'),
(226, 'GENERADOR', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 0.01, 10, 134.05, 100, 125, 3, 4, 'No', 'Monopolar', 480, 150.35, 187.94, 200, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.15, 'No Aplica', 'No Aplica', '1', '6', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°6AWG+\n THHN/THWN-2 TC 600V', 70, 63, '2018-10-24 01:38:07', '2018-10-24 01:39:20'),
(227, 'TGD TABLERO GENERAL', 'TGD', 'T-VARIADOR PWT-04', 0.013, 13, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.19, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 71, 63, '2018-10-24 01:41:35', '2018-10-24 01:55:30'),
(228, 'TGD TABLERO GENERAL', 'TGD', 'T-VARIADOR PWT-12', 0.011, 11, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.16, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 71, 63, '2018-10-24 01:42:07', '2018-10-24 01:55:32'),
(229, 'TGD TABLERO GENERAL', 'TGD', 'T-VARIADOR PWT-13', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 71, 63, '2018-10-24 01:42:42', '2018-10-24 01:55:37'),
(230, 'TGD TABLERO GENERAL', 'TGD', 'T-VARIADOR PWT-14', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 71, 63, '2018-10-24 01:43:14', '2018-10-24 01:55:39'),
(231, 'TGD TABLERO GENERAL', 'TGD', 'T-VARIADOR PWT-15', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.11, 'No Aplica', 'No Aplica', '1', '6', '4X6 AWG  THHN/THWN-2 TC 600V', 71, 63, '2018-10-24 01:44:51', '2018-10-24 01:55:44'),
(232, 'TGD TABLERO GENERAL', 'TGD', 'TOMACORRIENTE WORKOVER', 0.01, 10, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.26, 'No Aplica', 'No Aplica', '1', '8', '4X8 AWG  THHN/THWN-2 TC 600V', 71, 63, '2018-10-24 01:45:42', '2018-10-24 01:55:45'),
(233, 'T-VARIADOR PWT-04', 'T-VARIADOR PWT-04', 'MOTOR PWT-04', 0.052, 52, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '6', 'Tuberia/coraza', '310-16', 65, 3, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.17, 'No Aplica', 'No Aplica', '3', '12', '(3X6 + 3X12) AWG VFD 600 V TC', 72, 63, '2018-10-24 01:46:58', '2018-10-24 01:55:51'),
(234, 'T-VARIADOR PWT-12', 'T-VARIADOR PWT-12', 'MOTOR PWT-12', 0.033, 33, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '6', 'Tuberia/coraza', '310-16', 65, 3, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.74, 'No Aplica', 'No Aplica', '3', '12', '(3X6 + 3X12) AWG VFD 600 V TC', 73, 63, '2018-10-24 01:48:26', '2018-10-24 01:56:00'),
(235, 'T-VARIADOR PWT-13', 'T-VARIADOR PWT-13', 'MOTOR PWT-13', 0.031, 31, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '6', 'Tuberia/coraza', '310-16', 65, 3, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.7, 'No Aplica', 'No Aplica', '3', '12', '(3X6 + 3X12) AWG VFD 600 V TC', 74, 63, '2018-10-24 01:49:30', '2018-10-24 01:56:05'),
(236, 'T-VARIADOR PWT-14', 'T-VARIADOR PWT-14', 'MOTOR PWT-14', 0.062, 62, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '6', 'Tuberia/coraza', '310-16', 65, 3, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.39, 'No Aplica', 'No Aplica', '3', '12', '(3X6 + 3X12) AWG VFD 600 V TC', 75, 63, '2018-10-24 01:52:24', '2018-10-24 01:56:07'),
(237, 'T-VARIADOR PWT-15', 'T-VARIADOR PWT-14', 'MOTOR PWT-15', 0.075, 75, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '6', 'Tuberia/coraza', '310-16', 65, 3, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.69, 'No Aplica', 'No Aplica', '3', '12', '(3X6 + 3X12) AWG VFD 600 V TC', 76, 63, '2018-10-24 01:55:18', '2018-10-24 01:56:11'),
(238, 'a', 'a', 'a', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Vfd', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 3, 'No más de 3', 1, '26-30', 1, 600, 0.144, 0.394, 0.8, 0.5999999999999999, 0.67, '4', '1/0', '3', '10', '(3X1/0 + 3X10) AWG VFD 600 V TC', 69, 62, '2018-10-24 18:33:48', '2018-10-24 19:38:47'),
(239, 'a', 'a', 'a', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 300, 0.144, 0.394, 0.8, 0.5999999999999999, 1.35, '2', '1/0', '1', '', '2C X 3F N°1/0AWG+2C X 1 N°1/0AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 69, 62, '2018-10-24 18:55:46', '2018-10-24 20:19:30'),
(240, 'A', 'A', 'A', 0.03, 30, 1.07, 0.8, 1, 3, 5, 'Si', 'Monopolar', 480, 1.2, 1.5, 1.5, '', '12', 'Tuberia/coraza', '310-16', 25, 1, 'No más de 3', 1, '26-30', 1, 25, 0.177, 6.56, 1, 0, 0.09, '1', '12', '1', '', '1C X 3F N°12AWG+1C X 1 N°12AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 77, 64, '2018-10-24 19:17:22', '2018-10-24 19:22:11'),
(241, 'b', 'b', 'b', 0.03, 30, 1.07, 0.8, 1, 1, 3, 'Si', 'Monopolar', 480, 2.08, 2.6, NULL, '', '12', 'Tuberia/coraza', '310-16', 25, 1, 'No más de 3', 1, '26-30', 1, 25, 0.177, 6.56, 0.95, 0.31224989991992, 0.14, '1', '12', '1', '', '1C X 1F N°12AWG+/n1C X 1 N°12AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 77, 64, '2018-10-24 19:22:19', '2018-10-24 19:22:19'),
(242, 'e', 'e', 'e', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 300, 0.144, 0.394, 0.8, 0.5999999999999999, 1.35, '2', '1/0', '1', '', '2C X 3F N°1/0AWG+2C X 1 N°1/0AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 69, 62, '2018-10-24 19:38:01', '2018-10-24 19:39:13'),
(243, 'q', 'q', 'q', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 750, 0.144, 0.394, 0.8, 0.5999999999999999, 0.54, '5', '1/0', '1', '', '5C X 3F N°1/0AWG+5C X 1 N°1/0AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 69, 62, '2018-10-24 20:20:07', '2018-10-24 20:29:09'),
(244, 'a', 'a', 'a', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 300, 0.144, 0.394, 0.8, 0.5999999999999999, 1.35, '2', '1/0', '1', '', '2C X 3F N°1/0AWG+2C X 1 N°1/0AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 69, 62, '2018-10-24 20:21:46', '2018-10-24 20:22:02'),
(245, 'q', 'q', 'q', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 750, 0.144, 0.394, 0.8, 0.5999999999999999, 0.54, '5', '1/0', '1', '', '5C X 3F N°1/0AWG+5C X 1 N°1/0AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 69, 62, '2018-10-24 20:27:28', '2018-10-24 20:28:08'),
(246, 'p', 'p', 'p', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '', '1C X 3F N°1/0AWG+/n1C X 1 N°1/0AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 69, 62, '2018-10-24 20:28:32', '2018-10-24 20:28:32'),
(247, 'a', 'a', 'a', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '', '1C X 3F N°1/0AWG+/n1C X 1 N°1/0AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 69, 62, '2018-10-24 20:29:43', '2018-10-24 20:29:43'),
(248, 'q', 'q', 'q', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 440, 28.14, 35.18, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 1.07, '1', '8', '1', '', '1C X 3F N°8AWG+/n1C X 1 N°8AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 78, 65, '2018-10-24 20:36:07', '2018-10-24 20:36:07'),
(249, 'A', 'A', 'A', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 440, 28.14, 35.18, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 100, 0.171, 2.56, 0.8, 0.5999999999999999, 0.54, '2', '8', '1', '', '2C X 3F N°8AWG+2C X 1 N°8AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 78, 65, '2018-10-24 21:54:09', '2018-10-25 01:16:38'),
(250, 'a', 'a', 'a', 0.045, 45, 1.07, 0.8, 1, 3, 5, 'Si', 'Monopolar', 480, 1.2, 1.5, NULL, '', '12', 'Tuberia/coraza', '310-16', 25, 1, 'No más de 3', 1, '26-30', 1, 25, 0.177, 6.56, 1, 0, 0.1, '1', '12', '1', '', '1C X 3F N°12AWG+/n1C X 1 N°12AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 46, 56, '2018-10-25 01:29:22', '2018-10-25 01:29:22'),
(251, 'a', 'a', 'a', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 480, 25.8, 32.25, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 35, 0.164, 3.94, 1, 0, 1.36, '1', '10', '1', '', '1C X 3F N°10AWG+/n1C X 1 N°10AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 46, 56, '2018-10-25 01:42:40', '2018-10-25 01:42:40'),
(252, 'q', 'q', 'q', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 480, 25.8, 32.25, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 35, 0.164, 3.94, 1, 0, 1.36, '1', '10', '1', '', '1C X 3F N°10AWG+/n1C X 1 N°10AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 46, 56, '2018-10-25 01:45:34', '2018-10-25 01:45:34'),
(253, 'q', 'q', 'q', 0.045, 45, 24.66, 18.4, 23, 3, 5, 'Si', 'Monopolar', 440, 30.18, 37.72, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 1, 0, 1.15, '1', '8', '1', '', '1C X 3F N°8AWG+/n1C X 1 N°8AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 78, 65, '2018-10-25 01:48:08', '2018-10-25 01:48:08'),
(254, 'q', 'q', 'q', 0.003, 3, 0.27, 0.2, 1, 3, 5, 'Si', 'Monopolar', 440, 1.31, 1.64, NULL, '', '12', 'Tuberia/coraza', '310-16', 25, 1, 'No más de 3', 1, '26-30', 1, 25, 0.177, 6.56, 0.2, 0.9797958971132713, 0.01, '1', '12', '1', '', '1C X 3F N°12AWG+/n1C X 1 N°12AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 78, 65, '2018-10-25 02:11:17', '2018-10-25 02:11:17'),
(255, 'q', 'q', 'q', 0.045, 45, 1.07, 0.8, 1, 3, 5, 'Si', 'Monopolar', 440, 1.31, 1.64, NULL, '', '12', 'Tuberia/coraza', '310-16', 25, 1, 'No más de 3', 1, '26-30', 1, 25, 0.177, 6.56, 0.8, 0.5999999999999999, 0.12, '1', '12', '1', '', '1C X 3F N°12AWG+/n1C X 1 N°12AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 78, 65, '2018-10-25 02:20:45', '2018-10-25 02:20:45'),
(256, 't', 't', 't', 0.045, 45, 1, 0.75, 0.93, 3, 5, 'Si', 'Monopolar', 440, 1.22, 1.53, NULL, '', '12', 'Tuberia/coraza', '310-16', 25, 1, 'No más de 3', 1, '26-30', 1, 25, 0.177, 6.56, 0.8, 0.5999999999999999, 0.12, '1', '12', '1', '', '1C X 3F N°12AWG+/n1C X 1 N°12AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 78, 65, '2018-10-25 02:27:33', '2018-10-25 02:27:33'),
(257, 'q', 'q', 'q', 0.045, 45, 1.07, 0.8, 1, 3, 5, 'Si', 'Monopolar', 440, 1.31, 1.64, NULL, '', '12', 'Tuberia/coraza', '310-16', 25, 1, 'No más de 3', 1, '26-30', 1, 25, 0.177, 6.56, 0.8, 0.5999999999999999, 0.12, '1', '12', '1', '', '1C X 3F N°12AWG+/n1C X 1 N°12AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 78, 65, '2018-10-25 02:28:54', '2018-10-25 02:28:54'),
(258, 'f', 'f', 'f', 0.045, 45, 30.83, 23, 23, 3, 5, 'Si', 'Monopolar', 480, 27.66, 34.58, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 35, 0.164, 3.94, 1, 0, 1.46, '1', '10', '1', '', '1C X 3F N°10AWG+/n1C X 1 N°10AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 46, 56, '2018-10-25 02:37:40', '2018-10-25 02:37:40'),
(259, 's', 's', 's', 0.045, 45, 30.83, 23, 23, 3, 5, 'Si', 'Monopolar', 440, 30.18, 37.72, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 1, 0, 1.15, '1', '8', '1', '', '1C X 3F N°8AWG+/n1C X 1 N°8AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 78, 65, '2018-10-25 02:41:25', '2018-10-25 02:41:25'),
(260, 'a', 'a', 'a', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 480, 25.8, 32.25, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 35, 0.164, 3.94, 0.8, 0.5999999999999999, 1.36, '1', '10', '1', '', '1C X 3F N°10AWG+1C X 1 N°10AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 77, 64, '2018-10-25 18:09:48', '2018-10-25 18:09:59'),
(261, 'w', 'w', 'w', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 480, 25.8, 32.25, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 35, 0.164, 3.94, 0.8, 0.5999999999999999, 1.36, '1', '10', '1', '', '1C X 3F N°10AWG+/n1C X 1 N°10AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 77, 64, '2018-10-25 18:12:04', '2018-10-25 18:12:04'),
(262, 'a', 'a', 'a', 0.045, 45, 23, 17.16, 21.45, 1, 3, 'Si', 'Monopolar', 480, 44.68, 55.85, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 130, 0.167, 1.61, 0.8, 0.5999999999999999, 0.58, '2', '6', '1', '', '2C X 1F N°6AWG+2C X 1 N°6AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 77, 64, '2018-10-25 18:13:53', '2018-10-25 18:14:04'),
(263, 'r', 'r', 'r', 0.045, 45, 23, 17.16, 21.45, 2, 4, 'Si', 'Monopolar', 480, 44.68, 55.85, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.16, '1', '6', '1', '', '1C X 2F N°6AWG+/n1C X 1 N°6AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 77, 64, '2018-10-25 18:15:40', '2018-10-25 18:15:40'),
(264, 'q', 'q', 'q', 0.045, 45, 23, 17.16, 21.45, 2, 4, 'Si', 'Monopolar', 480, 44.68, 55.85, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.16, '1', '6', '1', '', '1C X 2F N°6AWG+/n1C X 1 N°6AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 77, 64, '2018-10-25 18:16:53', '2018-10-25 18:16:53'),
(265, 'e', 'e', 'e', 0.045, 45, 23, 17.16, 21.45, 2, 4, 'Si', 'Monopolar', 480, 44.68, 55.85, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.16, '1', '6', '1', '', '1C X 2F N°6AWG+/n1C X 1 N°6AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 77, 64, '2018-10-25 18:19:40', '2018-10-25 18:19:40'),
(266, 'a', 'a', 'a', 0.045, 45, 23, 17.16, 21.45, 2, 4, 'Si', 'Monopolar', 480, 44.68, 55.85, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.16, '1', '6', '1', '', '1C X 2F N°6AWG+/n1C X 1 N°6AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 77, 64, '2018-10-25 18:21:11', '2018-10-25 18:21:11'),
(267, 'ñ', 'ñ', 'ñ', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 480, 25.8, 32.25, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 35, 0.164, 3.94, 0.8, 0.5999999999999999, 1.36, '1', '10', '1', '', '1C X 3F N°10AWG+/n1C X 1 N°10AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 77, 64, '2018-10-25 20:26:12', '2018-10-25 20:26:12'),
(268, 'a', 'a', 'a', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 480, 25.8, 32.25, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 35, 0.164, 3.94, 0.8, 0.5999999999999999, 1.36, '1', '10', '1', '', '1C X 3F N°10AWG+/n1C X 1 N°10AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 77, 64, '2018-10-25 20:29:22', '2018-10-25 20:29:22'),
(269, 's', 's', 's', 0.045, 45, 23, 17.16, 21.45, 2, 4, 'Si', 'Monopolar', 480, 44.68, 55.85, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.16, '1', '6', '1', '', '1C X 2F N°6AWG+/n1C X 1 N°6AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 77, 64, '2018-10-25 20:30:55', '2018-10-25 20:30:55'),
(270, 'a', 'a', 'a', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 440, 28.14, 35.18, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 1.07, '1', '8', '1', '', '1C X 3F N°8AWG+/n1C X 1 N°8AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 78, 65, '2018-10-25 20:39:57', '2018-10-25 20:39:57'),
(271, 'w', 'w', 'w', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 440, 28.14, 35.18, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 1.07, '1', '8', '1', '', '1C X 3F N°8AWG+/n1C X 1 N°8AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 78, 65, '2018-10-25 20:45:25', '2018-10-25 20:45:25'),
(272, 'a', 'a', 'a', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 440, 28.14, 35.18, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 1.07, '1', '8', '1', '', '1C X 3F N°8AWG+/n1C X 1 N°8AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 78, 65, '2018-10-25 20:46:35', '2018-10-25 20:46:35'),
(273, 'x', 'x', 'x', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 440, 28.14, 35.18, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 1.07, '1', '8', '1', '', '1C X 3F N°8AWG+/n1C X 1 N°8AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 78, 65, '2018-10-25 21:01:57', '2018-10-25 21:01:57'),
(274, 's', 's', 's', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 440, 28.14, 35.18, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 1.07, '1', '8', '1', '', '1C X 3F N°8AWG+/n1C X 1 N°8AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 78, 65, '2018-10-25 21:05:04', '2018-10-25 21:05:04'),
(275, 'u', 'u', 'u', 0.044, 44, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 440, 28.14, 35.18, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, NULL, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 1.05, '1', '8', '1', '', '1C X 3F N°8AWG+/n1C X 1 N°8AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 78, 65, '2018-10-25 21:18:52', '2018-10-25 21:18:52'),
(276, 'C', 'C', 'C', 0.045, 45, 23, 17.16, 19.06, 3, 5, 'Si', 'Monopolar', 440, 25.02, 31.27, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, NULL, 'No más de 3', 1, '26-30', 1, 35, 0.164, 3.94, 0.9, 0.4358898943540673, 1.44, '1', '10', '1', '', '1C X 3F N°10AWG+/n1C X 1 N°10AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 78, 65, '2018-10-25 21:20:41', '2018-10-25 21:20:41'),
(277, 'S', 'S', 'S', 0.045, 45, 1, 0.75, 0.93, 3, 5, 'Si', 'Monopolar', 460, 1.17, 1.46, NULL, '', '12', 'Tuberia/coraza', '310-16', 25, 1, 'No más de 3', 1, '26-30', 1, 25, 0.177, 6.56, 0.8, 0.5999999999999999, 0.11, '1', '12', '1', '', '1C X 3F N°12AWG+/n1C X 1 N°12AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 79, 66, '2018-10-25 21:44:58', '2018-10-25 21:44:58'),
(278, 'A', 'A', 'A', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 460, 26.92, 33.65, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 0, 0.164, 3.94, 0.8, 0.5999999999999999, 0, NULL, '10', '1', '', '1C X 3F N°10AWG+1C X 1 N°10AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 79, 66, '2018-10-25 21:50:56', '2018-10-25 21:51:47'),
(279, 'L', 'L', 'L', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 460, 26.92, 33.65, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, NULL, 'No más de 3', 1, '26-30', 1, 35, 0.164, 3.94, 0.8, 0.5999999999999999, 1.48, '1', '10', '1', '', '1C X 3F N°10AWG+/n1C X 1 N°10AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 79, 66, '2018-10-25 21:52:53', '2018-10-25 21:52:53'),
(280, 'A', 'A', 'A', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 460, 26.92, 33.65, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 35, 0.164, 3.94, 0.8, 0.5999999999999999, 1.48, '1', '10', '1', '', '1C X 3F N°10AWG+/n1C X 1 N°10AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 79, 66, '2018-10-25 22:00:29', '2018-10-25 22:00:29'),
(281, 'W', 'W', 'W', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 460, 26.92, 33.65, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 35, 0.164, 3.94, 0.8, 0.5999999999999999, 1.48, '1', '10', '1', '', '1C X 3F N°10AWG+/n1C X 1 N°10AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 79, 66, '2018-10-25 22:05:11', '2018-10-25 22:05:11'),
(282, 'R', 'R', 'R', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 460, 26.92, 33.65, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, 2, 'No más de 3', 1, '26-30', 1, 0, 0.164, 3.94, 0.8, 0.5999999999999999, 0, NULL, '10', '1', '', '2C X 3F N°10AWG+2C X 1 N°10AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 79, 66, '2018-10-25 22:06:12', '2018-10-25 22:06:20'),
(283, 'T', 'T', 'T', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 460, 26.92, 33.65, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 35, 0.164, 3.94, 0.8, 0.5999999999999999, 1.48, '1', '10', '1', '', '1C X 3F N°10AWG+/n1C X 1 N°10AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 79, 66, '2018-10-25 22:10:55', '2018-10-25 22:10:55'),
(284, 'E', 'E', 'E', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Vfd', 460, 26.92, 33.65, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 0, 0.164, 3.94, 0.8, 0.5999999999999999, 0, NULL, '10', '3', '14', '(3X10 + 3X14) AWG VFD 600 V TC', 79, 66, '2018-10-25 22:12:48', '2018-10-25 23:27:06'),
(285, 'Q', 'Q', 'Q', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 460, 26.92, 33.65, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, 3, 'No más de 3', 1, '26-30', 1, 0, 0.164, 3.94, 0.8, 0.5999999999999999, 0, NULL, '10', '1', '', '3C X 3F N°10AWG+3C X 1 N°10AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 79, 66, '2018-10-25 22:14:39', '2018-10-25 22:14:51'),
(286, 'S', 'S', 'S', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 460, 26.92, 33.65, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 35, 0.164, 3.94, 0.8, 0.5999999999999999, 1.48, '1', '10', '1', '', '1C X 3F N°10AWG+/n1C X 1 N°10AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 79, 66, '2018-10-25 22:21:48', '2018-10-25 22:21:48'),
(287, 'E', 'E', 'E', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 460, 26.92, 33.65, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 70, 0.164, 3.94, 0.8, 0.5999999999999999, 0.74, '2', '10', '1', '', '2C X 3F N°10AWG+2C X 1 N°10AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 79, 66, '2018-10-25 22:23:16', '2018-10-25 22:23:24'),
(288, 'H', 'H', 'H', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 460, 26.92, 33.65, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 70, 0.164, 3.94, 0.8, 0.5999999999999999, 0.74, '2', '10', '1', '', '2C X 3F N°10AWG+2C X 1 N°10AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 79, 66, '2018-10-25 22:28:20', '2018-10-25 22:28:35'),
(289, 'A', 'A', 'A', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 460, 26.92, 33.65, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, 2, 'No más de 3', 1, '26-30', 1, 0, 0.164, 3.94, 0.8, 0.5999999999999999, 0, NULL, '10', '1', '', '2C X 3F N°10AWG+2C X 1 N°10AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 79, 66, '2018-10-25 22:30:43', '2018-10-25 22:30:55'),
(290, 'e', 'e', 'e', 0, NULL, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 480, 25.8, 32.25, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 0, 0.164, 3.94, 0.8, 0.5999999999999999, 0, NULL, '10', '1', '', '1C X 3F N°10AWG+1C X 1 N°10AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 46, 56, '2018-10-26 00:09:00', '2018-10-26 00:09:15'),
(291, 'a', 'a', 'a', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 480, 25.8, 32.25, 15, '11-16', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 0, 0.164, 3.94, 0.8, 0.5999999999999999, 0, NULL, '10', '1', '14', '1C X 3F N°10AWG+1C X 1 N°10AWG+\n1C X 1 T  N°14AWG+\n THHN/THWN-2 TC 600V', 46, 56, '2018-10-26 00:11:21', '2018-10-26 00:12:44'),
(292, 'o', 'o', 'o', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 480, 25.8, 32.25, 20, '18-25', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 70, 0.164, 3.94, 0.8, 0.5999999999999999, 0.68, '2', '10', '1', '12', '1C X 3F N°10AWG+1C X 1 N°10AWG+\n1C X 1 T  N°12AWG+\n THHN/THWN-2 TC 600V', 46, 56, '2018-10-26 00:15:56', '2018-10-26 00:16:21'),
(293, 'm', 'm', 'm', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 480, 25.8, 32.25, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 35, 0.164, 3.94, 0.8, 0.5999999999999999, 1.36, '1', '10', '1', '', '1C X 3F N°10AWG+/n1C X 1 N°10AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 46, 56, '2018-10-26 00:20:38', '2018-10-26 00:20:38'),
(294, 'm', 'm', 'm', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 440, 28.14, 35.18, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, NULL, 'No más de 3', 1, '26-30', 1, 0, 0.171, 2.56, 0.8, 0.5999999999999999, 0, NULL, '8', '1', '', 'C X 3F N°8AWG+C X 1 N°8AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 78, 65, '2018-10-26 00:21:35', '2018-10-26 00:21:44');
INSERT INTO `memoria_bajas` (`id`, `conductor`, `carga`, `descripcion_carga`, `longitud_km`, `longitud_metros`, `potencia_hp`, `potencia_kw`, `potencia_kva`, `nro_fases`, `nro_hilos`, `neutro`, `tipo_cab`, `tension_nominal`, `corriente_nominal`, `corriente_asignada`, `proteccion_selec`, `ajustable`, `calibre_conductor`, `medio_de_instal`, `tabla_2050`, `capacidad_de_un_conductor`, `nro_de_conductores_x_fase`, `cantidad`, `factor_de_ajuste_con`, `rango_temperatura`, `factor_de_ajuste_tem`, `cap_tot_conduc`, `reactancia`, `resistencia`, `factor_de_potencia`, `sen`, `regulacion`, `conductores_neutro`, `calibre_conduc_neu`, `conductor_tierra`, `calibre_tierra`, `conductor_selecc`, `tablero_id`, `project_id`, `created_at`, `updated_at`) VALUES
(295, 'e', 'e', 'e', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 440, 28.14, 35.18, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 2, 'No más de 3', 1, '26-30', 1, 0, 0.171, 2.56, 0.8, 0.5999999999999999, 0, NULL, '8', '1', '', '2C X 3F N°8AWG+2C X 1 N°8AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 78, 65, '2018-10-26 00:24:49', '2018-10-26 00:25:08'),
(296, 'T', 'T', 'T', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 480, 25.8, 32.25, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, 2, 'No más de 3', 1, '26-30', 1, 0, 0.164, 3.94, 0.8, 0.5999999999999999, 0, NULL, '10', '1', '', '2C X 3F N°10AWG+2C X 1 N°10AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 46, 56, '2018-10-26 00:43:21', '2018-10-26 00:43:53'),
(297, 'A', 'A', 'A', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 480, 25.8, 32.25, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 35, 0.164, 3.94, 0.8, 0.5999999999999999, 1.36, '1', '10', '1', '', '1C X 3F N°10AWG+/n1C X 1 N°10AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 46, 56, '2018-10-26 00:47:04', '2018-10-26 00:47:04'),
(298, 'Q', 'Q', 'Q', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 15, '11-16', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 0, 0.144, 0.394, 0.8, 0.5999999999999999, 0, NULL, '1/0', '1', '14', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°14AWG+\n THHN/THWN-2 TC 600V', 80, 67, '2018-10-26 00:49:17', '2018-10-26 00:49:29'),
(299, 'A', 'A', 'A', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '', '1C X 3F N°1/0AWG+/n1C X 1 N°1/0AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 80, 67, '2018-10-26 01:15:17', '2018-10-26 01:15:17'),
(300, 'E', 'E', 'E', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 22, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, NULL, 'No más de 3', 1, '26-30', 1, 0, 0.144, 0.394, 0.8, 0.5999999999999999, 0, NULL, '1/0', '1', '12', 'C X 3F N°1/0AWG+C X 1 N°1/0AWG+\n1C X 1 T  N°12AWG+\n THHN/THWN-2 TC 600V', 80, 67, '2018-10-26 01:16:15', '2018-10-26 01:54:07'),
(301, 'k', 'k', 'k', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 22, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°12AWG+\n THHN/THWN-2 TC 600V', 80, 67, '2018-10-26 01:44:50', '2018-10-26 01:45:06'),
(302, 'KE', 'KE', 'KE', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '', '1C X 3F N°1/0AWG+/n1C X 1 N°1/0AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 80, 67, '2018-10-26 01:51:27', '2018-10-26 01:51:27'),
(303, 'P', 'P', 'P', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 23, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 0, 0.144, 0.394, 0.8, 0.5999999999999999, 0, NULL, '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°12AWG+\n THHN/THWN-2 TC 600V', 80, 67, '2018-10-26 01:54:34', '2018-10-26 01:55:33'),
(304, 'o', 'o', 'o', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 0, 0.144, 0.394, 0.8, 0.5999999999999999, 0, NULL, '1/0', '1', '', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 80, 67, '2018-10-26 02:07:22', '2018-10-26 02:07:49'),
(305, 'i', 'i', 'i', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 0, 0.144, 0.394, 0.8, 0.5999999999999999, 0, NULL, '1/0', '1', '', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 80, 67, '2018-10-26 02:08:12', '2018-10-26 02:11:07'),
(306, 'e', 'e', 'e', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 23, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 2, 'No más de 3', 1, '26-30', 1, 0, 0.144, 0.394, 0.8, 0.5999999999999999, 0, NULL, '1/0', '1', '12', '2C X 3F N°1/0AWG+2C X 1 N°1/0AWG+\n1C X 1 T  N°12AWG+\n THHN/THWN-2 TC 600V', 80, 67, '2018-10-26 02:11:31', '2018-10-26 02:11:48'),
(307, 'p', 'p', 'p', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 0, 0.144, 0.394, 0.8, 0.5999999999999999, 0, NULL, '1/0', '1', '', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 80, 67, '2018-10-26 02:13:59', '2018-10-26 02:14:12'),
(308, 'L', 'L', 'L', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '', '1C X 3F N°1/0AWG+/n1C X 1 N°1/0AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 80, 67, '2018-10-26 02:26:21', '2018-10-26 02:26:21'),
(309, 'R', 'R', 'R', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 23, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 0, 0.144, 0.394, 0.8, 0.5999999999999999, 0, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°12AWG+\n THHN/THWN-2 TC 600V', 80, 67, '2018-10-26 02:27:17', '2018-10-26 02:28:16'),
(310, 't', 't', 't', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 22, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 0, 0.144, 0.394, 0.8, 0.5999999999999999, 0, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°12AWG+\n THHN/THWN-2 TC 600V', 81, 68, '2018-10-26 02:30:06', '2018-10-26 02:30:14'),
(311, 'm', 'm', 'm', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 15, '11-16', '1/0', 'Tuberia/coraza', '310-16', 150, 2, 'No más de 3', 1, '26-30', 1, 0, 0.144, 0.394, 0.8, 0.5999999999999999, 0, '2', '1/0', '1', '14', '2C X 3F N°1/0AWG+2C X 1 N°1/0AWG+\n1C X 1 T  N°14AWG+\n THHN/THWN-2 TC 600V', 81, 68, '2018-10-26 02:30:38', '2018-10-26 02:30:55'),
(312, 'U', 'U', 'U', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 23, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°12AWG+\n THHN/THWN-2 TC 600V', 81, 68, '2018-10-26 02:33:20', '2018-10-26 02:33:29'),
(313, 'E', 'E', 'E', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 24, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 0, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°12AWG+\n THHN/THWN-2 TC 600V', 81, 68, '2018-10-26 02:36:29', '2018-10-26 02:36:45'),
(314, 'K', 'K', 'K', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 23, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 0, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°12AWG+\n THHN/THWN-2 TC 600V', 81, 68, '2018-10-26 02:39:14', '2018-10-26 02:39:20'),
(315, 'K', 'K', 'K', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 23, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°12AWG+\n THHN/THWN-2 TC 600V', 81, 68, '2018-10-26 02:40:10', '2018-10-26 02:40:15'),
(316, 'K', 'K', 'K', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 23, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '12', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°12AWG+\n THHN/THWN-2 TC 600V', 81, 68, '2018-10-26 02:41:20', '2018-10-26 02:41:26'),
(317, 'M', 'M', 'M', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 23, '18-25', '1/0', 'Tuberia/coraza', '310-16', 150, 2, 'No más de 3', 1, '26-30', 1, 300, 0.144, 0.394, 0.8, 0.5999999999999999, 1.35, '2', '1/0', '1', '12', '2C X 3F N°1/0AWG+2C X 1 N°1/0AWG+\n1C X 1 T  N°12AWG+\n THHN/THWN-2 TC 600V', 81, 68, '2018-10-26 02:43:54', '2018-10-26 02:44:14'),
(321, 'XXX', 'T-VAR-P-351', 'MOTOR P-351', 0, NULL, 60, 44.76, 55.95, 3, 4, 'No', 'Multiconductor', 480, 67.3, 84.12, 85, '70-100', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 65, 59, '2018-10-26 19:39:54', '2018-10-26 19:41:10'),
(326, 'XXX', 'T-VAR-P-35X', 'MOTOR P-35X', 3, 3, 171.58, 128, 160, 3, 5, 'Si', 'Monopolar', 480, 192.45, 240.56, NULL, '', '4/0', 'Tuberia/coraza', '310-16', 230, 1, 'No más de 3', 1, '26-30', 1, 230, 0.135, 0.203, 0.8, 0.5999999999999999, 50.71, '1', '4/0', '1', '', '1C X 3F N°4/0AWG+1C X 1 N°4/0AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 84, 72, '2018-10-30 00:23:52', '2019-02-19 02:43:23'),
(328, 'r', 'r', 'r', 45, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 480, 25.8, 32.25, NULL, '', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 35, 0.164, 3.94, 0.8, 0.5999999999999999, 1361.58, '1', '10', '1', '', '1C X 3F N°10AWG+/n1C X 1 N°10AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 82, 69, '2018-10-30 02:43:55', '2018-10-30 02:43:55'),
(329, 'a', 'a', 'a', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Vfd', 480, 25.8, 32.25, 15, '11-16', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 35, 0.164, 3.94, 0.8, 0.5999999999999999, 1.36, '1', '10', '3', '14', '(3X10 + 3X14) AWG VFD 600 V TC', 82, 69, '2018-10-30 18:13:20', '2018-10-30 18:14:01'),
(330, 'a', 'a', 'a', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, 15, '11-16', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 2.69, '1', '1/0', '1', '14', '1C X 3F N°1/0AWG+1C X 1 N°1/0AWG+\n1C X 1 T  N°14AWG+\n THHN/THWN-2 TC 600V', 87, 77, '2018-10-30 19:31:14', '2018-10-30 19:31:33'),
(331, 'i', 'i', 'i', 0.045, 45, 23, 17.16, 21.45, 3, 5, 'Si', 'Monopolar', 120, 103.19, 128.99, NULL, '', '500', 'Tuberia/coraza', '310-16', 380, 1, 'No más de 3', 1, '26-30', 1, 380, 0.128, 0.089, 0.8, 0.5999999999999999, 0.99, '1', '500', '1', '', '1C X 3F N°500AWG+1C X 1 N°500AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 88, 78, '2018-10-30 19:34:28', '2018-12-18 21:48:33'),
(332, 'TRANSFORMADOR', 'TGD', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 0.033, 33, 171.58, 128, 160, 3, 4, 'No', 'Monopolar', 480, 192.45, 240.56, NULL, '', '250', 'Tuberia/coraza', '310-16', 255, 1, 'No más de 3', 1, '26-30', 1, 255, 0.135, 0.171, 0.8, 0.5999999999999999, 0.5, 'No Aplica', 'No Aplica', '1', '', '1C X 3F N°250AWG+1C X 1 N°250AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 83, 71, '2018-10-31 20:13:07', '2018-10-31 22:07:17'),
(333, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-001', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 89, 71, '2018-10-31 20:24:23', '2018-10-31 20:24:43'),
(334, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-235', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 89, 71, '2018-10-31 20:27:31', '2018-10-31 20:37:33'),
(335, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-249', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 89, 71, '2018-10-31 20:29:40', '2018-10-31 20:37:35'),
(336, 'T-VARIADOR P-001', 'MOTOR P-001', 'MOTOR P-001', 0.058, 58, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.85, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 90, 71, '2018-10-31 20:33:15', '2018-10-31 20:37:40'),
(337, 'T-VARIADOR P-235', 'MOTOR P-235', 'MOTOR P-235', 0.032, 32, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.47, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 91, 71, '2018-10-31 20:34:46', '2018-10-31 20:37:44'),
(338, 'T-VARIADOR P-249', 'MOTOR P-249', 'MOTOR P-249', 0.04, 40, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.59, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 92, 71, '2018-10-31 20:37:04', '2018-10-31 20:37:47'),
(339, 'TRANSFORMADOR SE-30', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 0.012, 12, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, 225, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.22, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 93, 79, '2018-11-01 01:58:23', '2018-11-01 02:00:11'),
(340, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-251', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 94, 79, '2018-11-01 02:15:11', '2018-11-01 02:15:28'),
(341, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-046', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 94, 79, '2018-11-01 02:20:42', '2018-11-01 02:23:57'),
(342, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-246', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 94, 79, '2018-11-01 02:21:39', '2018-11-01 02:24:00'),
(343, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-230', 0.011, 11, 37.53, 28, 35, 3, 4, 'No', 'Multiconductor', 480, 42.1, 52.62, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.15, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 94, 79, '2018-11-01 02:23:01', '2018-11-01 02:24:02'),
(344, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TOMACORRIENTE WORKOVER', 0.01, 10, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.26, 'No Aplica', 'No Aplica', '1', '8', '4X8 AWG  THHN/THWN-2 TC 600V', 94, 79, '2018-11-01 02:23:43', '2018-11-01 02:25:36'),
(345, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-230', 0.011, 11, 26.81, 20, 25, 3, 4, 'No', 'Multiconductor', 480, 30.07, 37.59, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.26, 'No Aplica', 'No Aplica', '1', '8', '4X8 AWG  THHN/THWN-2 TC 600V', 94, 79, '2018-11-01 02:26:28', '2018-11-01 02:26:44'),
(346, 'T-VARIADOR P-251', 'MOTOR P-251', 'MOTOR P-251', 0.056, 56, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.83, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 95, 79, '2018-11-01 02:31:31', '2018-11-01 02:33:26'),
(347, 'T-VARIADOR P-046', 'MOTOR P-046', 'MOTOR P-046', 0.044, 44, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.65, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 95, 79, '2018-11-01 02:33:00', '2018-11-01 02:33:27'),
(348, 'T-VARIADOR P-246', 'MOTOR P-246', 'MOTOR P-246', 0.026, 26, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.38, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 95, 79, '2018-11-01 02:34:59', '2018-11-01 02:36:04'),
(349, 'T-VARIADOR P-230', 'MOTOR P-230', 'MOTOR P-230', 0.038, 38, 26.81, 20, 25, 3, 4, 'No', 'Vfd', 480, 30.07, 37.59, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.89, 'No Aplica', 'No Aplica', '3', '14', '(3X8 + 3X14) AWG VFD 600 V TC', 95, 79, '2018-11-01 02:36:21', '2018-11-01 02:36:45'),
(350, 'TRANSFORMADOR SE-42', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 0.028, 28, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, 225, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.52, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 96, 80, '2018-11-03 02:10:18', '2018-11-03 02:11:04'),
(351, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-269', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 97, 80, '2018-11-03 02:57:10', '2018-11-03 02:57:57'),
(352, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-274', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 97, 80, '2018-11-03 02:58:06', '2018-11-03 03:03:23'),
(353, 'TRANSFORMADOR', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 0.028, 28, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, 225, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.52, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 98, 81, '2018-11-07 19:05:26', '2018-11-07 19:12:39'),
(354, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-269', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 99, 81, '2018-11-07 19:16:00', '2018-11-07 19:18:06'),
(355, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-274', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 99, 81, '2018-11-07 19:16:49', '2018-11-07 19:18:08'),
(356, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-263', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 99, 81, '2018-11-07 19:17:50', '2018-11-07 19:18:10'),
(357, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-275', 0.011, 11, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.16, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 99, 81, '2018-11-07 19:19:31', '2018-11-07 19:21:38'),
(358, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TOMACORRIENTE WORKOVER', 0.005, 5, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '8', '4X8 AWG  THHN/THWN-2 TC 600V', 99, 81, '2018-11-07 19:21:20', '2018-11-07 19:21:40'),
(359, '-VARIADOR P-269', 'MOTOR P-269', 'MOTOR P-269', 0.034, 34, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.5, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 100, 81, '2018-11-07 19:23:35', '2018-11-07 19:36:49'),
(360, 'T-VARIADOR P-274', 'MOTOR P-274', 'MOTOR P-274', 0.042, 42, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.62, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 101, 81, '2018-11-07 19:25:24', '2018-11-07 19:36:51'),
(361, 'T-VARIADOR P-263', 'MOTOR P-263', 'MOTOR P-263', 0.036, 36, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.53, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 102, 81, '2018-11-07 19:33:51', '2018-11-07 19:36:53'),
(362, 'T-VARIADOR P-275', 'MOTOR P-275', 'MOTOR P-275', 0.044, 44, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.65, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 103, 81, '2018-11-07 19:35:19', '2018-11-07 19:36:58'),
(363, 'TRANSFORMADOR', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 0.022, 22, 120.64, 90, 112.5, 3, 4, 'No', 'Monopolar', 480, 135.32, 169.15, 170, '140-200', '2/0', 'Tuberia/coraza', '310-16', 175, 1, 'No más de 3', 1, '26-30', 1, 175, 0.141, 0.328, 0.8, 0.5999999999999999, 0.37, 'No Aplica', 'No Aplica', '1', '6', '1C X 3F N°2/0AWG+1C X 1 N°2/0AWG+\n1C X 1 T  N°6AWG+\n THHN/THWN-2 TC 600V', 104, 82, '2018-11-07 21:09:03', '2018-11-07 21:09:35'),
(364, 'TGD- TABLERO GENERAL DE DISTRIBUCION  480', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-242', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 105, 82, '2018-11-07 21:14:53', '2018-11-07 21:30:15'),
(365, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-227', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 105, 82, '2018-11-07 21:23:15', '2018-11-07 21:30:17'),
(366, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-242', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 105, 82, '2018-11-07 21:23:57', '2018-11-07 21:30:19'),
(367, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-226', 0.042, 42, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.62, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 105, 82, '2018-11-07 21:26:56', '2018-11-07 21:30:20'),
(368, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TOMACORRIENTE WORKOVER', 0.008, 8, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.21, 'No Aplica', 'No Aplica', '1', '8', '4X8 AWG  THHN/THWN-2 TC 600V', 105, 82, '2018-11-07 21:29:50', '2018-11-07 21:30:22'),
(369, 'T-VARIADOR P-242', 'T-VARIADOR P-242', 'MOTOR P-242', 0.022, 22, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.32, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 106, 82, '2018-11-07 21:31:45', '2018-11-07 21:39:18'),
(370, 'T-VARIADOR P-227', 'T-VARIADOR P-227', 'MOTOR P-227', 0.044, 44, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.65, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 107, 82, '2018-11-07 21:33:31', '2018-11-07 21:39:22'),
(371, 'T-VARIADOR P-242', 'T-VARIADOR P-242', 'MOTOR P-242', 0.06, 60, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.88, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 108, 82, '2018-11-07 21:36:10', '2018-11-07 21:39:26'),
(372, 'T-VARIADOR P-226', 'T-VARIADOR P-226', 'MOTOR P-226', 0.006, 6, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.09, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 109, 82, '2018-11-07 21:38:25', '2018-11-07 21:39:28'),
(373, 'TRANSFORMADOR', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 0.05, 50, 80.43, 60, 75, 3, 4, 'No', 'Monopolar', 480, 90.21, 112.76, 115, '87-125', '2', 'Tuberia/coraza', '310-16', 115, 1, 'No más de 3', 1, '26-30', 1, 115, 0.148, 0.623, 0.8, 0.5999999999999999, 0.96, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°2AWG+1C X 1 N°2AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 110, 83, '2018-11-08 00:53:43', '2018-11-08 00:57:46'),
(374, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR C-029', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 111, 83, '2018-11-08 01:00:50', '2018-11-08 01:50:56'),
(375, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR C-032', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 111, 83, '2018-11-08 01:04:10', '2018-11-08 01:51:01'),
(376, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR C-039', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 111, 83, '2018-11-08 01:09:51', '2018-11-08 01:53:17'),
(377, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TOMACORRIENTE WORKOVER', 0.005, 5, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '8', '4X8 AWG  THHN/THWN-2 TC 600V', 111, 83, '2018-11-08 01:10:59', '2018-11-08 01:53:23'),
(378, 'T-VARIADOR C-029', 'T-VARIADOR C-029', 'MOTOR C-029', 0.04, 40, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.59, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 112, 83, '2018-11-08 01:13:46', '2018-11-08 01:53:30'),
(379, 'T-VARIADOR C-032', 'T-VARIADOR C-032', 'MOTOR C-032', 0.03, 30, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.44, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 112, 83, '2018-11-08 01:39:27', '2018-11-08 01:53:32'),
(380, 'T-VARIADOR C-039', 'T-VARIADOR C-039', 'MOTOR C-039', 0.042, 42, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.62, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 112, 83, '2018-11-08 01:50:45', '2018-11-08 01:53:45'),
(381, 'TRANSFORMADOR', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 0.005, 5, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, 225, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.09, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 113, 84, '2018-11-09 19:58:50', '2018-11-09 21:45:43'),
(382, 'TD-35 480', 'TD-35 480', 'TGD-35-1', 0.02, 20, 120, 89.52, 111.9, 3, 4, 'No', 'Multiconductor', 480, 134.59, 168.24, 170, '140-200', '2/0', 'Tuberia/coraza', '310-16', 175, 1, 'No más de 3', 1, '26-30', 1, 175, 0.141, 0.328, 0.8, 0.5999999999999999, 0.34, 'No Aplica', 'No Aplica', '1', '2/0', '4X2/0 AWG  THHN/THWN-2 TC 600V', 114, 84, '2018-11-09 20:11:36', '2018-11-09 21:46:09'),
(384, 'TD-35 480', 'TD-35 480', 'TGD-35-2', 0.28, 280, 80, 59.68, 74.6, 3, 4, 'No', 'Multiconductor', 480, 89.73, 112.16, 120, '87-125', '2/0', 'Tuberia/coraza', '310-16', 175, 1, 'No más de 3', 1, '26-30', 1, 175, 0.141, 0.328, 0.8, 0.5999999999999999, 3.15, 'No Aplica', 'No Aplica', '1', '2/0', '4X2/0 AWG  THHN/THWN-2 TC 600V', 114, 84, '2018-11-09 20:46:46', '2018-11-09 21:46:21'),
(390, 'T-VARIADOR C-016', 'T-VARIADOR C-016', 'MOTOR C-016', 0.04, 40, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.59, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 117, 84, '2018-11-09 21:25:54', '2018-11-09 21:51:01'),
(392, 'T-VARIADOR C-025', 'T-VARIADOR C-025', 'MOTOR C-025', 0.016, 16, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.24, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 117, 84, '2018-11-09 21:28:41', '2018-11-09 21:51:39'),
(393, 'T-VARIADOR C-014', 'T-VARIADOR C-014', 'MOTOR C-014', 0.034, 34, 60, 44.76, 55.95, 3, 4, 'No', 'Vfd', 480, 67.3, 84.12, 85, '70-100', '2', 'Tuberia/coraza', '310-16', 115, 1, 'No más de 3', 1, '26-30', 1, 115, 0.148, 0.623, 0.8, 0.5999999999999999, 0.48, 'No Aplica', 'No Aplica', '3', '10', '(3X2 + 3X10) AWG VFD 600 V TC', 117, 84, '2018-11-09 21:30:00', '2018-11-09 21:51:47'),
(394, 'T-VARIADOR C-026', 'T-VARIADOR C-026', 'MOTOR C-026', 0.037, 37, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.55, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 117, 84, '2018-11-09 21:30:49', '2018-11-09 21:51:50'),
(397, 'TGD-35-1', 'TABLERO GENERAL DE DISTRIBUCION', 'TOMACORRIENTE WORKOVER', 0.005, 5, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '8', '4X8 AWG  THHN/THWN-2 TC 600V', 115, 84, '2018-11-09 21:34:42', '2018-11-09 21:47:04'),
(398, 'TGD-35-2', 'TABLERO GENERAL DE DISTRIBUCION', 'TOMACORRIENTE WORKOVER', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.11, 'No Aplica', 'No Aplica', '1', '6', '4X6 AWG  THHN/THWN-2 TC 600V', 116, 84, '2018-11-09 21:36:42', '2018-11-09 21:49:15'),
(399, 'TGD-35-1', 'TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR C-016', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 115, 84, '2018-11-09 21:38:32', '2018-11-09 21:47:20'),
(400, 'TGD-35-1', 'TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR C-017', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 115, 84, '2018-11-09 21:39:24', '2018-11-09 21:47:38'),
(401, 'TGD-35-1', 'TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR C-025', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 115, 84, '2018-11-09 21:40:13', '2018-11-09 21:47:40'),
(402, 'TGD-35-2', 'TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR C-014', 0.005, 5, 60, 44.76, 55.95, 3, 4, 'No', 'Multiconductor', 480, 67.3, 84.12, 85, '70-100', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.11, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 116, 84, '2018-11-09 21:41:43', '2018-11-09 21:50:17'),
(403, 'TGD-35-2', 'TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR C-026', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 116, 84, '2018-11-09 21:42:28', '2018-11-09 21:50:21'),
(404, 'T-VARIADOR C-017', 'T-VARIADOR C-017', 'MOTOR C-017', 0.042, 42, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.62, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 117, 84, '2018-11-09 21:45:05', '2018-11-09 21:51:54'),
(405, 'TRANSFORMADOR', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 0.029, 29, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, 225, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.54, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 119, 87, '2018-11-09 22:38:35', '2018-11-10 00:08:27'),
(406, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-088', 0.152, 152, 40, 29.84, 37.3, 3, 4, 'No', 'Monopolar', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 2.24, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°4AWG+1C X 1 N°4AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 120, 87, '2018-11-09 22:59:02', '2018-11-10 00:08:31'),
(407, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-354', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Monopolar', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°4AWG+1C X 1 N°4AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 120, 87, '2018-11-09 23:02:26', '2018-11-10 00:08:35'),
(408, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-355', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Monopolar', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°4AWG+1C X 1 N°4AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 120, 87, '2018-11-09 23:06:35', '2018-11-10 00:08:37'),
(409, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-344', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Monopolar', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°4AWG+1C X 1 N°4AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 120, 87, '2018-11-09 23:07:26', '2018-11-10 00:08:41'),
(410, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-299', 0.011, 11, 40, 29.84, 37.3, 3, 4, 'No', 'Monopolar', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.16, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°4AWG+1C X 1 N°4AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 120, 87, '2018-11-09 23:08:05', '2018-11-10 00:08:45'),
(411, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-277', 0.013, 13, 40, 29.84, 37.3, 3, 4, 'No', 'Monopolar', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.19, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°4AWG+1C X 1 N°4AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 120, 87, '2018-11-09 23:08:53', '2018-11-10 00:08:49'),
(412, 'TGD- TABLERO GENERAL DE DISTRIBUCION  480', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TOMACORRIENTE WORKOVER', 0.008, 8, 30, 22.38, 27.98, 3, 4, 'No', 'Monopolar', 480, 33.65, 42.06, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.21, 'No Aplica', 'No Aplica', '1', '10', '1C X 3F N°8AWG+1C X 1 N°8AWG+\n1C X 1 T  N°10AWG+\n THHN/THWN-2 TC 600V', 120, 87, '2018-11-09 23:22:53', '2018-11-10 00:08:51'),
(413, 'T-VARIADOR P-088', 'T-VARIADOR P-088', 'MOTOR P-088', 0.01, 10, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.15, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 121, 87, '2018-11-10 00:00:48', '2018-11-10 00:08:55'),
(414, 'T-VARIADOR P-354', 'T-VARIADOR P-354', 'MOTOR P-354', 0.033, 33, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.49, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 121, 87, '2018-11-10 00:02:10', '2018-11-10 00:08:56'),
(415, 'T-VARIADOR P-355', 'T-VARIADOR P-355', 'MOTOR P-355', 0.062, 62, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.91, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 121, 87, '2018-11-10 00:04:37', '2018-11-10 00:08:59'),
(416, 'T-VARIADOR P-344', 'T-VARIADOR P-344', 'MOTOR P-344', 0.032, 32, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.47, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 121, 87, '2018-11-10 00:05:54', '2018-11-10 00:09:00'),
(417, 'T-VARIADOR P-299', 'T-VARIADOR P-299', 'MOTOR P-299', 0.035, 35, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.52, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 121, 87, '2018-11-10 00:07:09', '2018-11-10 00:09:04'),
(418, 'T-VARIADOR P-277', 'T-VARIADOR P-277', 'MOTOR P-277', 0.045, 45, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.66, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 121, 87, '2018-11-10 00:08:02', '2018-11-10 00:09:07'),
(419, 'TRANSFORMADOR SE-47', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 0.047, 47, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, 225, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.87, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 122, 88, '2018-11-10 00:27:59', '2018-11-10 00:43:39'),
(421, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-335', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 123, 88, '2018-11-10 00:32:39', '2018-11-10 00:43:44'),
(422, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-334', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 123, 88, '2018-11-10 00:33:30', '2018-11-10 00:43:50'),
(423, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-333', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 123, 88, '2018-11-10 00:34:10', '2018-11-10 00:43:52'),
(424, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-332', 0.011, 11, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.16, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 123, 88, '2018-11-10 00:36:04', '2018-11-10 00:43:56'),
(425, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TOMACORRIENTE WORKOVER', 0.01, 10, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.26, 'No Aplica', 'No Aplica', '1', '8', '4X8 AWG  THHN/THWN-2 TC 600V', 123, 88, '2018-11-10 00:38:11', '2018-11-10 00:43:58'),
(426, 'T-VARIADOR P-335', 'T-VARIADOR P-335', 'MOTOR P-335', 0.017, 17, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.25, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 124, 88, '2018-11-10 00:39:06', '2018-11-10 00:44:03'),
(427, '-VARIADOR P-334', '-VARIADOR P-334', 'MOTOR P-334', 0.02, 20, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.29, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 124, 88, '2018-11-10 00:39:44', '2018-11-10 00:44:05'),
(428, 'T-VARIADOR P-333', 'T-VARIADOR P-333', 'MOTOR P-333', 0.027, 27, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.4, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 124, 88, '2018-11-10 00:42:28', '2018-11-10 00:44:07'),
(429, 'T-VARIADOR P-332', 'T-VARIADOR P-332', 'MOTOR P-332', 0.036, 36, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.53, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 124, 88, '2018-11-10 00:43:12', '2018-11-10 00:44:12'),
(430, 'TRANSFORMADOR SE-31', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 0.036, 36, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, 225, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.67, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 125, 89, '2018-11-10 01:06:30', '2018-11-10 01:26:54'),
(432, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'MOTOR P-296', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 126, 89, '2018-11-10 01:17:42', '2018-11-10 01:27:01'),
(433, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'MOTOR P-244', 0.007, 7, 26.81, 20, 25, 3, 4, 'No', 'Multiconductor', 480, 30.07, 37.59, 50, '44-63', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.11, 'No Aplica', 'No Aplica', '1', '6', '4X6 AWG  THHN/THWN-2 TC 600V', 126, 89, '2018-11-10 01:18:25', '2018-11-10 01:27:03');
INSERT INTO `memoria_bajas` (`id`, `conductor`, `carga`, `descripcion_carga`, `longitud_km`, `longitud_metros`, `potencia_hp`, `potencia_kw`, `potencia_kva`, `nro_fases`, `nro_hilos`, `neutro`, `tipo_cab`, `tension_nominal`, `corriente_nominal`, `corriente_asignada`, `proteccion_selec`, `ajustable`, `calibre_conductor`, `medio_de_instal`, `tabla_2050`, `capacidad_de_un_conductor`, `nro_de_conductores_x_fase`, `cantidad`, `factor_de_ajuste_con`, `rango_temperatura`, `factor_de_ajuste_tem`, `cap_tot_conduc`, `reactancia`, `resistencia`, `factor_de_potencia`, `sen`, `regulacion`, `conductores_neutro`, `calibre_conduc_neu`, `conductor_tierra`, `calibre_tierra`, `conductor_selecc`, `tablero_id`, `project_id`, `created_at`, `updated_at`) VALUES
(434, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'MOTOR P-276', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 126, 89, '2018-11-10 01:20:06', '2018-11-10 01:27:07'),
(435, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'MOTOR P-232', 0.011, 11, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.16, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 126, 89, '2018-11-10 01:20:50', '2018-11-10 01:27:09'),
(436, 'T-VARIADOR P-296', 'T-VARIADOR P-296', 'MOTOR P-296', 0.048, 48, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.71, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 127, 89, '2018-11-10 01:22:06', '2018-11-10 01:27:17'),
(437, 'T-VARIADOR P-244', 'T-VARIADOR P-244', 'MOTOR P-244', 0.034, 34, 26.81, 20, 25, 3, 4, 'No', 'Vfd', 480, 30.07, 37.59, 50, '44-63', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.51, 'No Aplica', 'No Aplica', '3', '12', '(3X6 + 3X12) AWG VFD 600 V TC', 127, 89, '2018-11-10 01:24:09', '2018-11-10 01:27:19'),
(438, 'T-VARIADOR P-276', 'T-VARIADOR P-276', 'MOTOR P-276', 0.048, 48, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.71, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 127, 89, '2018-11-10 01:25:20', '2018-11-10 01:27:21'),
(439, 'T-VARIADOR P-232', 'T-VARIADOR P-232', 'MOTOR P-232', 0.058, 58, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.85, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 127, 89, '2018-11-10 01:26:14', '2018-11-10 01:27:23'),
(440, 'TRANSFORMADOR SE-27', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 0.16, 160, 80.43, 60, 75, 3, 4, 'No', 'Monopolar', 480, 90.21, 112.76, 115, '87-125', '2', 'Tuberia/coraza', '310-16', 115, 1, 'No más de 3', 1, '26-30', 1, 115, 0.148, 0.623, 0.8, 0.5999999999999999, 3.06, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°2AWG+1C X 1 N°2AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 128, 90, '2018-11-10 01:35:03', '2018-11-10 01:41:53'),
(441, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-201', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 129, 90, '2018-11-10 01:36:06', '2018-11-10 01:41:57'),
(442, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-202', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 129, 90, '2018-11-10 01:36:42', '2018-11-10 01:41:59'),
(443, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-196', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 129, 90, '2018-11-10 01:37:18', '2018-11-10 01:42:02'),
(444, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TOMACORRIENTE WORKOVER', 0.01, 10, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.26, 'No Aplica', 'No Aplica', '1', '8', '4X8 AWG  THHN/THWN-2 TC 600V', 129, 90, '2018-11-10 01:38:05', '2018-11-10 01:42:03'),
(445, 'T-VARIADOR P-201', 'T-VARIADOR P-201', 'MOTOR P-201', 0.024, 24, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.35, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 130, 90, '2018-11-10 01:39:28', '2018-11-10 01:42:06'),
(446, 'T-VARIADOR P-202', 'T-VARIADOR P-202', 'MOTOR P-202', 0.022, 22, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.32, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 130, 90, '2018-11-10 01:40:01', '2018-11-10 01:42:08'),
(447, 'T-VARIADOR P-196', 'T-VARIADOR P-196', 'MOTOR P-196', 0.025, 25, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.56, 'No Aplica', 'No Aplica', '3', '12', '(3X6 + 3X12) AWG VFD 600 V TC', 130, 90, '2018-11-10 01:41:27', '2018-11-10 01:42:09'),
(448, 'TRANSFORMADOR', 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN', 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN', 0.05928, 59.28, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, 225, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 1.1, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 131, 94, '2018-12-07 01:42:29', '2019-01-16 22:00:16'),
(449, 'trafo', 'trafo', 'trafo', 0.01, 10, 80.43, 60, 75, 3, 5, 'Si', 'Monopolar', 208, 208.18, 260.22, NULL, '', '350', 'Tuberia/coraza', '310-16', 310, 1, 'No más de 3', 1, '26-30', 1, 310, 0.1312, 0.1247, 0.8, 0.5999999999999999, 0.31, '1', '350', '1', '', '1C X 3F N°350AWG+/n1C X 1 N°350AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 133, 96, '2018-12-11 21:53:13', '2018-12-11 21:53:13'),
(450, 'rev', 'w', 'w', 0.123, 123, 24, 17.9, 22.38, 3, 4, 'No', 'Multiconductor', 120, 107.68, 134.59, 15, '11-16', '1/0', 'Tuberia/coraza', '310-16', 150, 1, 'No más de 3', 1, '26-30', 1, 150, 0.144, 0.394, 0.8, 0.5999999999999999, 7.68, 'No Aplica', 'No Aplica', '1', '1/0', '4X1/0 AWG  THHN/THWN-2 TC 600V', 132, 95, '2018-12-18 21:47:50', '2018-12-19 21:12:31'),
(451, 'o', 'o', 'o', 0.003, 3, 24, 17.9, 22.38, 3, 4, 'No', 'Multiconductor', 480, 26.92, 33.65, 4, '', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 35, 0.164, 3.94, 0.8, 0.5999999999999999, 0.09, 'No Aplica', 'No Aplica', '1', '10', '4X10 AWG  THHN/THWN-2 TC 600V', 84, 72, '2018-12-18 22:06:30', '2019-01-17 23:58:20'),
(452, 'o', 'o', 'o', 0.003, 3, 24, 17.9, 22.38, 3, 4, 'No', 'Vfd', 480, 26.92, 33.65, 5, '', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 35, 0.164, 3.94, 0.8, 0.5999999999999999, 0.09, 'No Aplica', 'No Aplica', '3', '14', '(3X10 + 3X14) AWG VFD 600 V TC', 84, 72, '2018-12-18 22:20:05', '2019-01-17 23:58:27'),
(453, 'TRANSFORMADOR SE-14', 'TABLERO GENERAL DE DISTRIBUCION', 'TGD- TABLERO GENERAL DE DISTRIBUCION', 0.008, 8, 321.72, 240, 300, 3, 5, 'Si', 'Monopolar', 480, 360.84, 451.05, NULL, '', '750', 'Tuberia/coraza', '310-16', 475, 1, 'No más de 3', 1, '26-30', 1, 475, 0.1247, 0.0623, 0.8, 0.5999999999999999, 0.13, '1', '750', '1', '', '1C X 3F N°750AWG+1C X 1 N°750AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 134, 98, '2018-12-19 02:08:33', '2019-01-18 17:35:56'),
(454, 'XCP-TDG-SE1-1', 'TDG-SE1-1', 'TABLERO GENERAL 480 V ÁREA INDUSTRIAL', 0.005, 5, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, 230, '175-250', '4/0', 'Tuberia/coraza', '310-16', 230, 1, 'No más de 3', 1, '26-30', 1, 230, 0.135, 0.203, 0.8, 0.5999999999999999, 0.08, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°4/0AWG+1C X 1 N°4/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 135, 99, '2018-12-21 00:32:10', '2018-12-21 00:35:20'),
(455, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-015', 'T-VARIADOR P-015', 0.005, 5, 18, 13.43, 16.79, 3, 4, 'No', 'Monopolar', 480, 20.19, 25.24, 30, '22-32', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.08, 'No Aplica', 'No Aplica', '1', '10', '1C X 3F N°8AWG+1C X 1 N°8AWG+\n1C X 1 T  N°10AWG+\n THHN/THWN-2 TC 600V', 136, 94, '2019-01-16 21:26:54', '2019-01-16 22:05:17'),
(456, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-018', 'T-VARIADOR P-018', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Monopolar', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°4AWG+1C X 1 N°4AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 136, 94, '2019-01-16 21:30:10', '2019-01-16 22:05:19'),
(457, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-021', 'T-VARIADOR P-021', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Monopolar', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°4AWG+1C X 1 N°4AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 136, 94, '2019-01-16 21:30:58', '2019-01-16 22:05:22'),
(458, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-111', 'T-VARIADOR P-111', 0.011, 11, 40, 29.84, 37.3, 3, 4, 'No', 'Monopolar', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.16, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°4AWG+1C X 1 N°4AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 136, 94, '2019-01-16 21:31:49', '2019-01-16 22:05:24'),
(460, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-117', 'T-VARIADOR P-117', 0.015, 15, 40, 29.84, 37.3, 3, 4, 'No', 'Monopolar', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.22, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°4AWG+1C X 1 N°4AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 136, 94, '2019-01-16 21:35:47', '2019-01-16 22:05:27'),
(461, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-177', 'T-VARIADOR P-177', 0.017, 17, 40, 29.84, 37.3, 3, 4, 'No', 'Monopolar', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.25, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°4AWG+1C X 1 N°4AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 136, 94, '2019-01-16 21:36:52', '2019-01-16 22:05:29'),
(462, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-203', 'T-VARIADOR P-203', 0.013, 13, 40, 29.84, 37.3, 3, 4, 'No', 'Monopolar', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.19, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°4AWG+1C X 1 N°4AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 136, 94, '2019-01-16 21:37:47', '2019-01-16 22:05:33'),
(463, 'T-VARIADOR P-015', 'MOTOR P-015', 'MOTOR P-015', 0.04, 40, 40, 29.84, 37.3, 3, 4, 'No', 'Monopolar', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.59, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°4AWG+1C X 1 N°4AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 137, 94, '2019-01-16 21:47:27', '2019-01-16 22:05:49'),
(464, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 'TOMACORRIENTE WORKOVER', 'TOMACORRIENTE WORKOVER', 0.01, 10, 30, 22.38, 27.98, 3, 4, 'No', 'Monopolar', 480, 33.65, 42.06, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.26, 'No Aplica', 'No Aplica', '1', '10', '1C X 3F N°8AWG+1C X 1 N°8AWG+\n1C X 1 T  N°10AWG+\n THHN/THWN-2 TC 600V', 136, 94, '2019-01-16 21:49:11', '2019-01-16 22:03:02'),
(465, 'T-VARIADOR P-018', 'MOTOR P-018', 'MOTOR P-018', 0.042, 42, 40, 29.84, 37.3, 3, 4, 'No', 'Monopolar', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.62, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°4AWG+1C X 1 N°4AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 137, 94, '2019-01-16 21:50:17', '2019-01-16 22:05:52'),
(466, 'T-VARIADOR P-021', 'MOTOR P-021', 'MOTOR P-021', 0.045, 45, 40, 29.84, 37.3, 3, 4, 'No', 'Monopolar', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.66, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°4AWG+1C X 1 N°4AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 137, 94, '2019-01-16 21:51:23', '2019-01-16 22:05:55'),
(467, 'T-VARIADOR P-111', 'MOTOR P-111', 'MOTOR P-111', 0.022, 22, 40, 29.84, 37.3, 3, 4, 'No', 'Monopolar', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.32, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°4AWG+1C X 1 N°4AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 137, 94, '2019-01-16 21:53:33', '2019-01-16 22:05:57'),
(468, 'T-VARIADOR P-117', 'MOTOR P-117', 'MOTOR P-117', 0.054, 54, 40, 29.84, 37.3, 3, 4, 'No', 'Monopolar', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.8, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°4AWG+1C X 1 N°4AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 137, 94, '2019-01-16 21:56:09', '2019-01-16 22:06:01'),
(469, 'T-VARIADOR P-177', 'MOTOR P-177', 'MOTOR P-177', 0.078, 78, 40, 29.84, 37.3, 3, 4, 'No', 'Monopolar', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 1.15, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°4AWG+1C X 1 N°4AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 137, 94, '2019-01-16 21:57:06', '2019-01-16 22:06:03'),
(470, 'T-VARIADOR P-203', 'MOTOR P-203', 'MOTOR P-203', 0.035, 35, 40, 29.84, 37.3, 3, 4, 'No', 'Monopolar', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.52, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°4AWG+1C X 1 N°4AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 137, 94, '2019-01-16 21:59:39', '2019-01-16 22:06:05'),
(471, 'TRANSFORMADOR SE-6', 'TD- TABLERO DE DISTRIBUCION', 'TD-6', 0.008, 8, 321.72, 240, 300, 3, 4, 'No', 'Monopolar', 480, 360.84, 451.05, 460, '250-500', '750', 'Tuberia/coraza', '310-16', 475, 1, 'No más de 3', 1, '26-30', 1, 475, 0.1247, 0.0623, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '3', '1C X 3F N°750AWG+1C X 1 N°750AWG+\n1C X 1 T  N°3AWG+\n THHN/THWN-2 TC 600V', 138, 100, '2019-01-17 00:54:35', '2019-01-17 00:55:07'),
(472, 'TD- TABLERO DE DISTRIBUCION', 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN-1', 'TGD-1', 0.06, 60, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, 225, '175-250', '4/0', 'Tuberia/coraza', '310-16', 230, 1, 'No más de 3', 1, '26-30', 1, 230, 0.135, 0.203, 0.8, 0.5999999999999999, 0.95, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°4/0AWG+1C X 1 N°4/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 138, 100, '2019-01-17 00:58:33', '2019-01-17 02:39:59'),
(473, 'TD- TABLERO DE DISTRIBUCION', 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN-2', 'TGD-2', 0.056, 56, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, 225, '175-250', '4/0', 'Tuberia/coraza', '310-16', 230, 1, 'No más de 3', 1, '26-30', 1, 230, 0.135, 0.203, 0.8, 0.5999999999999999, 0.89, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°4/0AWG+1C X 1 N°4/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 138, 100, '2019-01-17 01:19:45', '2019-01-17 02:40:01'),
(474, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN-1', 'T-VARIADOR P-198', 'T-VARIADOR P-198', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 139, 100, '2019-01-17 01:21:28', '2019-01-17 02:42:13'),
(475, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN-2', 'T-VARIADOR P-140', 'T-VARIADOR P-140', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 139, 100, '2019-01-17 01:22:22', '2019-01-17 02:42:15'),
(476, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN-1', 'T-VARIADOR P-019', 'T-VARIADOR P-019', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 139, 100, '2019-01-17 01:23:24', '2019-01-17 02:42:20'),
(477, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN-1', 'T-VARIADOR P-022', 'T-VARIADOR P-022', 0.011, 11, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.16, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 139, 100, '2019-01-17 01:25:58', '2019-01-17 02:42:22'),
(478, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN-1', 'TOMACORRIENTE WORKOVER', 'TOMACORRIENTE WORKOVER', 0.01, 10, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.26, 'No Aplica', 'No Aplica', '1', '8', '4X8 AWG  THHN/THWN-2 TC 600V', 139, 100, '2019-01-17 01:26:56', '2019-01-17 02:40:25'),
(479, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN-2', 'T-VARIADOR P-169', 'T-VARIADOR P-169', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 140, 100, '2019-01-17 01:43:32', '2019-01-17 02:42:26'),
(480, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN-2', 'T-VARIADOR P-264', 'T-VARIADOR P-264', 0.011, 11, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.16, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 140, 100, '2019-01-17 01:49:58', '2019-01-17 02:42:28'),
(481, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN-2', 'T-VARIADOR P-265', 'T-VARIADOR P-265', 0.013, 13, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.19, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 140, 100, '2019-01-17 02:01:19', '2019-01-17 02:42:33'),
(482, 'T-VARIADOR P-198 480', 'MOTOR P-198', 'MOTOR P-198', 0.025, 25, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.37, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 141, 100, '2019-01-17 02:21:16', '2019-01-17 02:42:37'),
(483, 'T-VARIADOR P-140', 'MOTOR P-140', 'MOTOR P-140', 0.034, 34, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.5, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 141, 100, '2019-01-17 02:22:11', '2019-01-17 02:42:39'),
(484, 'T-VARIADOR P-019', 'MOTOR P-019', 'MOTOR P-019', 0.064, 64, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.94, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 141, 100, '2019-01-17 02:34:41', '2019-01-17 02:42:41'),
(485, 'T-VARIADOR P-022', 'MOTOR P-022', 'MOTOR P-022', 0.092, 92, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 1.36, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 141, 100, '2019-01-17 02:37:01', '2019-01-17 02:42:45'),
(486, 'T-VARIADOR P-169', 'MOTOR P-169', 'MOTOR P-169', 0.08, 80, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 1.18, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 141, 100, '2019-01-17 02:37:58', '2019-01-17 02:42:48'),
(487, 'T-VARIADOR P-264', 'MOTOR P-264', 'MOTOR P-264', 0.035, 35, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.52, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 141, 100, '2019-01-17 02:38:40', '2019-01-17 02:42:51'),
(488, 'T-VARIADOR P-265', 'MOTOR P-265', 'MOTOR P-265', 0.03, 30, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.44, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 141, 100, '2019-01-17 02:39:32', '2019-01-17 02:42:53'),
(489, 'TRANSFORMADOR SE-6A', 'TABLERO GENERAL DE DISTRIBUCION', 'TGD', 0.095, 95, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, 225, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 1.76, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 142, 101, '2019-01-17 02:47:40', '2019-01-17 02:47:56'),
(490, 'TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-173', 'T-VARIADOR P-173', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 143, 101, '2019-01-17 02:54:39', '2019-01-17 03:07:40'),
(491, 'TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-284', 'T-VARIADOR P-284', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 143, 101, '2019-01-17 02:58:16', '2019-01-17 03:07:44'),
(492, 'TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-319', 'T-VARIADOR P-319', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 143, 101, '2019-01-17 02:58:59', '2019-01-17 03:07:48'),
(493, 'TABLERO GENERAL DE DISTRIBUCION', 'T-VARIADOR P-320', 'T-VARIADOR P-320', 0.011, 11, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.16, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 143, 101, '2019-01-17 02:59:56', '2019-01-17 03:07:51'),
(494, 'TABLERO GENERAL DE DISTRIBUCION', 'TOMACORRIENTE WORKOVER', 'TOMACORRIENTE WORKOVER', 0.005, 5, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '8', '4X8 AWG  THHN/THWN-2 TC 600V', 143, 101, '2019-01-17 03:00:30', '2019-01-17 03:06:41'),
(495, 'T-VARIADOR P-173', 'MOTOR P-173', 'MOTOR P-173', 0.06, 60, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.88, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 144, 101, '2019-01-17 03:02:20', '2019-01-17 03:07:56'),
(496, 'T-VARIADOR P-284', 'MOTOR P-284', 'MOTOR P-284', 0.072, 72, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 1.06, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 144, 101, '2019-01-17 03:03:11', '2019-01-17 03:07:59'),
(497, 'T-VARIADOR P-319', 'MOTOR P-319', 'MOTOR P-319', 0.12, 120, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '2', 'Tuberia/coraza', '310-16', 115, 1, 'No más de 3', 1, '26-30', 1, 115, 0.148, 0.623, 0.8, 0.5999999999999999, 1.14, 'No Aplica', 'No Aplica', '3', '10', '(3X2 + 3X10) AWG VFD 600 V TC', 144, 101, '2019-01-17 03:04:54', '2019-01-17 03:08:03'),
(498, 'T-VARIADOR P-320', 'MOTOR P-320', 'MOTOR P-320', 0.109, 109, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 1.61, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 144, 101, '2019-01-17 03:06:02', '2019-01-17 03:08:04'),
(500, 'TRANSFORMADOR SE-8', 'TD- TABLERO DE DISTRIBUCION', 'TD-8', 0.008, 8, 171.58, 128, 160, 3, 4, 'No', 'Monopolar', 480, 192.45, 240.56, 240, '175-250', '4/0', 'Tuberia/coraza', '310-16', 230, 1, 'No más de 3', 1, '26-30', 1, 230, 0.135, 0.203, 0.8, 0.5999999999999999, 0.14, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°4/0AWG+1C X 1 N°4/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 146, 104, '2019-01-23 21:16:12', '2019-01-23 21:44:35'),
(501, 'TD- TABLERO DE DISTRIBUCION', 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN', 'TGD-8', 0.024, 24, 171.58, 128, 160, 3, 4, 'No', 'Monopolar', 480, 192.45, 240.56, 240, '175-250', '4/0', 'Tuberia/coraza', '310-16', 230, 1, 'No más de 3', 1, '26-30', 1, 230, 0.135, 0.203, 0.8, 0.5999999999999999, 0.41, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°4/0AWG+1C X 1 N°4/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 146, 104, '2019-01-23 21:19:57', '2019-01-23 21:44:44'),
(502, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN', 'T-VARIADOR P-204', 'T-VARIADOR P-204', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 147, 104, '2019-01-23 21:24:45', '2019-01-23 21:45:20'),
(503, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN', 'T-VARIADOR P-261', 'T-VARIADOR P-261', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 147, 104, '2019-01-23 21:26:09', '2019-01-23 21:45:23'),
(504, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN', 'T-VARIADOR P-122', 'T-VARIADOR P-122', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 147, 104, '2019-01-23 21:27:02', '2019-01-23 21:45:25'),
(505, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN', 'T-VARIADOR P-175', 'T-VARIADOR P-175', 0.011, 11, 60, 44.76, 55.95, 3, 4, 'No', 'Multiconductor', 480, 67.3, 84.12, 85, '70-100', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.24, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 147, 104, '2019-01-23 21:28:14', '2019-01-23 21:46:07'),
(506, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN', 'T-VARIADOR P-223', 'T-VARIADOR P-223', 0.013, 13, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.19, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 147, 104, '2019-01-23 21:29:21', '2019-01-23 21:46:12'),
(507, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN', 'TOMACORRIENTE WORKOVER', 'TOMACORRIENTE WORKOVER', 0.01, 10, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.26, 'No Aplica', 'No Aplica', '1', '8', '4X8 AWG  THHN/THWN-2 TC 600V', 147, 104, '2019-01-23 21:30:09', '2019-01-23 21:46:15'),
(508, 'T-VARIADOR P-204', 'MOTOR P-204', 'MOTOR P-204', 0.048, 48, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.71, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 148, 104, '2019-01-23 21:33:21', '2019-01-23 21:46:39'),
(509, 'T-VARIADOR P-261', 'MOTOR P-261', 'MOTOR P-261', 0.049, 49, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.72, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 148, 104, '2019-01-23 21:37:34', '2019-01-23 21:46:41'),
(510, 'T-VARIADOR P-122', 'MOTOR P-122', 'MOTOR P-122', 0.041, 41, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.6, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 148, 104, '2019-01-23 21:38:22', '2019-01-23 21:46:43'),
(511, 'T-VARIADOR P-175', 'MOTOR P-175', 'MOTOR P-175', 0.17, 170, 60, 44.76, 55.95, 3, 4, 'No', 'Vfd', 480, 67.3, 84.12, 85, '70-100', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 3.76, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 148, 104, '2019-01-23 21:40:50', '2019-01-23 21:46:52'),
(512, 'T-VARIADOR P-223', 'MOTOR P-223', 'MOTOR P-223', 0.055, 55, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.81, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 148, 104, '2019-01-23 21:42:06', '2019-01-23 21:46:49'),
(514, 'TD-8A', 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN', 'TGD-8A', 0.025, 25, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, 225, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.46, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 149, 105, '2019-01-23 22:01:03', '2019-01-24 00:37:18'),
(515, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN', 'T-VARIADOR P-176', 'T-VARIADOR P-176', 0.005, 5, 50, 37.3, 46.63, 3, 4, 'No', 'Multiconductor', 480, 56.08, 70.1, 75, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.09, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 150, 105, '2019-01-23 22:05:44', '2019-01-24 00:37:43'),
(516, 'TGD-8A', 'T-VARIADOR P-205', 'T-VARIADOR P-205', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.16, 'No Aplica', 'No Aplica', '1', '6', '4X6 AWG  THHN/THWN-2 TC 600V', 150, 105, '2019-01-23 22:06:57', '2019-01-24 00:38:29'),
(517, 'TGD-8A', 'T-VARIADOR P-211', 'T-VARIADOR P-211', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.2, 'No Aplica', 'No Aplica', '1', '6', '4X6 AWG  THHN/THWN-2 TC 600V', 150, 105, '2019-01-23 22:07:49', '2019-01-24 00:38:32'),
(518, 'TGD-8A', 'T-VARIADOR P-215', 'T-VARIADOR P-215', 0.011, 11, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.25, 'No Aplica', 'No Aplica', '1', '6', '4X6 AWG  THHN/THWN-2 TC 600V', 150, 105, '2019-01-23 22:08:42', '2019-01-24 00:38:34'),
(519, 'TGD-8A', 'T-VARIADOR P-216', 'T-VARIADOR P-216', 0.013, 13, 60, 44.76, 55.95, 3, 4, 'No', 'Multiconductor', 480, 67.3, 84.12, 85, '70-100', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.29, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 150, 105, '2019-01-23 22:10:20', '2019-01-24 00:39:04'),
(520, 'TGD-8A', 'TOMACORRIENTE WORKOVER', 'TOMACORRIENTE WORKOVER', 0.005, 5, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '8', '4X8 AWG  THHN/THWN-2 TC 600V', 150, 105, '2019-01-23 22:11:13', '2019-01-24 00:39:07'),
(521, 'T-VARIADOR P-176', 'MOTOR P-176', 'MOTOR P-176', 0.084, 84, 50, 37.3, 46.63, 3, 4, 'No', 'Vfd', 480, 56.08, 70.1, 75, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 1.55, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 151, 105, '2019-01-23 22:12:14', '2019-01-24 00:39:13'),
(522, 'T-VARIADOR P-205', 'MOTOR P-205', 'MOTOR P-205', 0.071, 71, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 1.05, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 151, 105, '2019-01-24 00:02:55', '2019-01-24 00:39:39'),
(523, 'T-VARIADOR P-211', 'MOTOR P-211', 'MOTOR P-211', 0.07, 70, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 1.03, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 151, 105, '2019-01-24 00:04:56', '2019-01-24 00:39:41'),
(524, 'T-VARIADOR P-215', 'MOTOR P-215', 'MOTOR P-215', 0.084, 84, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 1.24, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 151, 105, '2019-01-24 00:27:38', '2019-01-24 00:39:42'),
(525, 'T-VARIADOR P-216', 'MOTOR P-216', 'MOTOR P-216', 0.099, 99, 60, 44.76, 55.95, 3, 4, 'No', 'Vfd', 480, 67.3, 84.12, 85, '70-100', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 2.19, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 151, 105, '2019-01-24 00:36:38', '2019-01-24 00:39:27'),
(526, 'TRANSFORMADOR SE-13', 'TD- TABLERO DE DISTRIBUCION', 'TD-13', 0.008, 8, 171.58, 128, 160, 3, 4, 'No', 'Monopolar', 480, 192.45, 240.56, 240, '175-250', '4/0', 'Tuberia/coraza', '310-16', 230, 1, 'No más de 3', 1, '26-30', 1, 230, 0.135, 0.203, 0.8, 0.5999999999999999, 0.14, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°4/0AWG+1C X 1 N°4/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 152, 106, '2019-01-24 00:49:38', '2019-01-24 01:49:35'),
(527, 'TD-13', 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN', 'TGD-13', 0.01, 10, 171.58, 128, 160, 3, 4, 'No', 'Monopolar', 480, 192.45, 240.56, 240, '175-250', '4/0', 'Tuberia/coraza', '310-16', 230, 1, 'No más de 3', 1, '26-30', 1, 230, 0.135, 0.203, 0.8, 0.5999999999999999, 0.17, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°4/0AWG+1C X 1 N°4/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 152, 106, '2019-01-24 00:50:26', '2019-01-24 01:49:40'),
(528, 'TGD-13', 'T-VARIADOR P-218', 'T-VARIADOR P-218', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 153, 106, '2019-01-24 01:03:57', '2019-01-24 01:49:12'),
(529, 'TGD-13', 'T-VARIADOR P-286', 'T-VARIADOR P-286', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 153, 106, '2019-01-24 01:05:33', '2019-01-24 01:49:14'),
(530, 'TGD-13', 'T-VARIADOR P-315', 'T-VARIADOR P-315', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 153, 106, '2019-01-24 01:12:35', '2019-01-24 01:49:16'),
(531, 'TGD-13', 'T-VARIADOR P-119', 'T-VARIADOR P-119', 0.174, 174, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 2.56, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 153, 106, '2019-01-24 01:13:28', '2019-01-24 01:49:18'),
(532, 'TGD-13', 'TOMACORRIENTE WORKOVER', 'TOMACORRIENTE WORKOVER', 0.005, 5, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '8', '4X8 AWG  THHN/THWN-2 TC 600V', 153, 106, '2019-01-24 01:14:38', '2019-01-24 01:49:20'),
(533, 'T-VARIADOR P-218', 'MOTOR P-218', 'MOTOR P-218', 0.027, 27, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.61, 'No Aplica', 'No Aplica', '3', '12', '(3X6 + 3X12) AWG VFD 600 V TC', 154, 106, '2019-01-24 01:15:54', '2019-01-24 01:51:14'),
(534, 'T-VARIADOR P-286', 'MOTOR P-286', 'MOTOR P-286', 0.029, 29, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.65, 'No Aplica', 'No Aplica', '3', '12', '(3X6 + 3X12) AWG VFD 600 V TC', 154, 106, '2019-01-24 01:16:44', '2019-01-24 01:51:16'),
(535, 'T-VARIADOR P-315', 'MOTOR P-315', 'MOTOR P-315', 0.036, 36, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.81, 'No Aplica', 'No Aplica', '3', '12', '(3X6 + 3X12) AWG VFD 600 V TC', 154, 106, '2019-01-24 01:17:29', '2019-01-24 01:51:18'),
(536, 'T-VARIADOR P-119', 'MOTOR P-119', 'MOTOR P-119', 0.022, 22, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.49, 'No Aplica', 'No Aplica', '3', '12', '(3X6 + 3X12) AWG VFD 600 V TC', 154, 106, '2019-01-24 01:29:18', '2019-01-24 01:51:21'),
(537, 'TRANSFORMADOR SE-13A', 'TD- TABLERO DE DISTRIBUCION', 'TD-13A', 0.008, 8, 171.58, 128, 160, 3, 4, 'No', 'Monopolar', 480, 192.45, 240.56, 225, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.16, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 155, 108, '2019-01-24 02:41:13', '2019-01-24 03:00:23'),
(538, 'TD-13A', 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN', 'TGD-13A', 0.028, 28, 171.58, 128, 160, 3, 4, 'No', 'Monopolar', 480, 192.45, 240.56, 225, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.55, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 155, 108, '2019-01-24 02:42:09', '2019-01-24 03:00:25'),
(539, 'TD-13A', 'T-VARIADOR P-125', 'T-VARIADOR P-125', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 156, 108, '2019-01-24 02:44:25', '2019-01-24 03:00:27'),
(540, 'TD-13A', 'T-VARIADOR P-174', 'T-VARIADOR P-174', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 156, 108, '2019-01-24 02:45:19', '2019-01-24 03:00:33'),
(542, 'TD-13A', 'T-VARIADOR P-184', 'T-VARIADOR P-184', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 156, 108, '2019-01-24 02:50:11', '2019-01-24 03:01:05'),
(543, 'TD-13A', 'T-VARIADOR P-208', 'T-VARIADOR P-208', 0.011, 11, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.16, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 156, 108, '2019-01-24 02:50:56', '2019-01-24 03:01:09'),
(544, 'TD-13A', 'T-VARIADOR P-209', 'T-VARIADOR P-209', 0.013, 13, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.19, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 156, 108, '2019-01-24 02:51:42', '2019-01-24 03:01:11'),
(545, 'TD-13A', 'TOMACORRIENTE WORKOVER', 'TOMACORRIENTE WORKOVER', 0.005, 5, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '8', '4X8 AWG  THHN/THWN-2 TC 600V', 156, 108, '2019-01-24 02:52:32', '2019-01-24 03:01:13'),
(546, 'T-VARIADOR P-125', 'MOTOR P-125', 'MOTOR P-125', 0.087, 87, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 1.28, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 157, 108, '2019-01-24 02:53:55', '2019-01-24 03:01:19'),
(547, 'T-VARIADOR P-174', 'MOTOR P-174', 'MOTOR P-174', 0.072, 72, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 1.06, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 157, 108, '2019-01-24 02:55:14', '2019-01-24 03:01:22'),
(548, 'T-VARIADOR P-184', 'MOTOR P-184', 'MOTOR P-184', 0.019, 19, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.28, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 157, 108, '2019-01-24 02:55:57', '2019-01-24 03:01:24'),
(549, 'T-VARIADOR P-208', 'MOTOR P-208', 'MOTOR P-208', 0.062, 62, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.91, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 157, 108, '2019-01-24 02:59:00', '2019-01-24 03:01:25'),
(550, 'T-VARIADOR P-209', 'MOTOR P-209', 'MOTOR P-209', 0.052, 52, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.77, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 157, 108, '2019-01-24 02:59:38', '2019-01-24 03:01:29'),
(551, 'TRANSFORMADOR SE-14', 'TD- TABLERO DE DISTRIBUCION', 'TD-14', 0.008, 8, 321.72, 240, 300, 3, 4, 'No', 'Monopolar', 480, 360.84, 451.05, NULL, '', '750', 'Tuberia/coraza', '310-16', 475, 1, 'No más de 3', 1, '26-30', 1, 475, 0.1247, 0.0623, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '', '1C X 3F N°750AWG+/n1C X 1 N°750AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 159, 109, '2019-01-29 21:54:19', '2019-01-29 21:54:19'),
(552, 'TD-14', 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN', 'TGD-14-1', 0.022, 22, 160.86, 120, 150, 3, 4, 'No', 'Multiconductor', 480, 180.42, 225.53, NULL, '', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.41, 'No Aplica', 'No Aplica', '1', '3/0', '4X3/0 AWG  THHN/THWN-2 TC 600V', 159, 109, '2019-01-29 22:01:30', '2019-01-29 22:01:46'),
(553, 'TD-14', 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN', 'TGD-14-2', 0.029, 29, 160.86, 120, 150, 3, 4, 'No', 'Multiconductor', 480, 180.42, 225.53, NULL, '', '4/0', 'Tuberia/coraza', '310-16', 230, 1, 'No más de 3', 1, '26-30', 1, 230, 0.135, 0.203, 0.8, 0.5999999999999999, 0.46, 'No Aplica', 'No Aplica', '1', NULL, '4X4/0+ AWG  THHN/THWN-2 TC 600V', 159, 109, '2019-01-29 22:03:27', '2019-01-29 22:03:27'),
(554, 'TGD-14-1', 'T-VARIADOR P-266', 'T-VARIADOR P-266', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.11, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 160, 109, '2019-01-29 22:10:06', '2019-01-29 22:10:06'),
(555, 'TGD-14-1', 'T-VARIADOR P-267', 'T-VARIADOR P-267', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.16, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 160, 109, '2019-01-29 22:11:22', '2019-01-29 22:11:22'),
(556, 'TGD-14-1', 'T-VARIADOR P-268', 'T-VARIADOR P-268', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.2, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 160, 109, '2019-01-29 22:12:15', '2019-01-29 22:12:15'),
(557, 'plataforma', 'plataforma', 'plataforma', 2, 2000, 335.12, 250, 312.5, 3, 4, 'No', 'Monopolar', 480, 375.88, 469.85, NULL, '', '1000', 'Tuberia/coraza', '310-16', 545, 1, 'No más de 3', 1, '26-30', 1, 545, 0.1214, 0.0492, 0.8, 0.5999999999999999, 30.44, 'No Aplica', 'No Aplica', '1', '', '1C X 3F N°1000AWG+1C X 1 N°1000AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 161, 111, '2019-01-29 22:49:57', '2019-01-29 22:50:52');
INSERT INTO `memoria_bajas` (`id`, `conductor`, `carga`, `descripcion_carga`, `longitud_km`, `longitud_metros`, `potencia_hp`, `potencia_kw`, `potencia_kva`, `nro_fases`, `nro_hilos`, `neutro`, `tipo_cab`, `tension_nominal`, `corriente_nominal`, `corriente_asignada`, `proteccion_selec`, `ajustable`, `calibre_conductor`, `medio_de_instal`, `tabla_2050`, `capacidad_de_un_conductor`, `nro_de_conductores_x_fase`, `cantidad`, `factor_de_ajuste_con`, `rango_temperatura`, `factor_de_ajuste_tem`, `cap_tot_conduc`, `reactancia`, `resistencia`, `factor_de_potencia`, `sen`, `regulacion`, `conductores_neutro`, `calibre_conduc_neu`, `conductor_tierra`, `calibre_tierra`, `conductor_selecc`, `tablero_id`, `project_id`, `created_at`, `updated_at`) VALUES
(558, 'TGD-14-1', 'T-VARIADOR P-301', 'T-VARIADOR P-301', 0.011, 11, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.25, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 160, 109, '2019-01-30 01:19:41', '2019-01-30 01:19:41'),
(559, 'TGD-14-1', 'T-VARIADOR P-302', 'T-VARIADOR P-302', 0.013, 13, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.29, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 160, 109, '2019-01-30 01:20:34', '2019-01-30 01:20:34'),
(560, 'TGD-14-1', 'TOMACORRIENTE WORKOVER', 'TOMACORRIENTE WORKOVER', 0.01, 10, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.26, 'No Aplica', 'No Aplica', '1', NULL, '4X8+ AWG  THHN/THWN-2 TC 600V', 160, 109, '2019-01-30 01:21:35', '2019-01-30 01:21:35'),
(561, 'TGD-14-2', 'T-VARIADOR P-165', 'T-VARIADOR P-165', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.11, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 162, 109, '2019-01-30 01:32:17', '2019-01-30 01:32:17'),
(562, 'TGD-14-2', 'T-VARIADOR P-185', 'T-VARIADOR P-185', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.16, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 162, 109, '2019-01-30 01:40:26', '2019-01-30 01:40:26'),
(563, 'TGD-14-2', 'T-VARIADOR P-222', 'T-VARIADOR P-222', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.2, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 162, 109, '2019-01-30 01:46:16', '2019-01-30 01:46:16'),
(564, 'TGD-14-2', 'T-VARIADOR P-231', 'T-VARIADOR P-231', 0.011, 11, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.25, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 162, 109, '2019-01-30 01:47:56', '2019-01-30 01:47:56'),
(565, 'T-VARIADOR P-266', 'MOTOR P-266', 'MOTOR P-266', 0.052, 52, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.17, 'No Aplica', 'No Aplica', '3', '', '(3X6 + 3X12) AWG VFD 600 V TC', 163, 109, '2019-01-31 20:31:22', '2019-01-31 20:31:22'),
(566, 'T-VARIADOR P-267', 'MOTOR P-267', 'MOTOR P-267', 0.058, 58, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.3, 'No Aplica', 'No Aplica', '3', '', '(3X6 + 3X12) AWG VFD 600 V TC', 163, 109, '2019-01-31 20:33:35', '2019-01-31 20:33:35'),
(567, 'T-VARIADOR P-268', 'MOTOR P-268', 'MOTOR P-268', 0.064, 64, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.44, 'No Aplica', 'No Aplica', '3', '', '(3X6 + 3X12) AWG VFD 600 V TC', 163, 109, '2019-01-31 20:34:39', '2019-01-31 20:34:39'),
(568, 'T-VARIADOR P-301', 'MOTOR P-301', 'MOTOR P-301', 0.049, 49, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.1, 'No Aplica', 'No Aplica', '3', '', '(3X6 + 3X12) AWG VFD 600 V TC', 163, 109, '2019-01-31 20:37:41', '2019-01-31 20:37:41'),
(569, 'T-VARIADOR P-302', 'MOTOR P-302', 'MOTOR P-302', 0.044, 44, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.99, 'No Aplica', 'No Aplica', '3', '', '(3X6 + 3X12) AWG VFD 600 V TC', 163, 109, '2019-01-31 20:38:26', '2019-01-31 20:38:26'),
(570, 'T-VARIADOR P-165', 'MOTOR P-165', 'MOTOR P-165', 0.038, 38, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.85, 'No Aplica', 'No Aplica', '3', '', '(3X6 + 3X12) AWG VFD 600 V TC', 163, 109, '2019-01-31 20:39:24', '2019-01-31 20:39:24'),
(571, 'T-VARIADOR P-185', 'MOTOR P-185', 'MOTOR P-185', 0.062, 62, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.39, 'No Aplica', 'No Aplica', '3', '', '(3X6 + 3X12) AWG VFD 600 V TC', 163, 109, '2019-01-31 20:41:00', '2019-01-31 20:41:00'),
(572, 'T-VARIADOR P-222', 'MOTOR P-222', 'MOTOR P-222', 0.034, 34, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.76, 'No Aplica', 'No Aplica', '3', '', '(3X6 + 3X12) AWG VFD 600 V TC', 163, 109, '2019-01-31 20:42:09', '2019-01-31 20:42:09'),
(573, 'T-VARIADOR P-231', 'MOTOR P-231', 'MOTOR P-231', 0.044, 44, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.99, 'No Aplica', 'No Aplica', '3', '', '(3X6 + 3X12) AWG VFD 600 V TC', 163, 109, '2019-01-31 20:45:15', '2019-01-31 20:45:15'),
(574, 'TRANSFORMADOR SE-28', 'TD- TABLERO DE DISTRIBUCION', 'TD-28', 0.008, 8, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, NULL, '', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.15, 'No Aplica', 'No Aplica', '1', '', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 164, 113, '2019-01-31 20:58:36', '2019-01-31 20:58:44'),
(575, 'TD-28', 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN', 'TGD-28', 0.028, 28, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, NULL, '', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.52, 'No Aplica', 'No Aplica', '1', '', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 164, 113, '2019-01-31 20:59:46', '2019-01-31 21:00:00'),
(576, 'TGD-28', 'T-VARIADOR P-255', 'T-VARIADOR P-255', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.11, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 165, 113, '2019-01-31 21:01:24', '2019-01-31 21:01:24'),
(577, 'TGD-28', 'T-VARIADOR P-291', 'T-VARIADOR P-291', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.16, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 165, 113, '2019-01-31 21:03:48', '2019-01-31 21:03:48'),
(578, 'TGD-28', 'T-VARIADOR P-300', 'T-VARIADOR P-300', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.2, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 165, 113, '2019-01-31 21:06:32', '2019-01-31 21:06:32'),
(579, 'TGD-28', 'T-VARIADOR P-324', 'T-VARIADOR P-324', 0.011, 11, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.25, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 165, 113, '2019-01-31 21:08:15', '2019-01-31 21:08:15'),
(580, 'TGD-28', 'TRANSFORMADOR BAJA-BAJA PARA ILUMINACION', 'TRANSFORMADOR BAJA-BAJA PARA ILUMINACION', 0.01, 10, 32, 23.87, 29.84, 3, 4, 'No', 'Multiconductor', 480, 35.89, 44.86, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.28, 'No Aplica', 'No Aplica', '1', NULL, '4X8+ AWG  THHN/THWN-2 TC 600V', 165, 113, '2019-01-31 21:14:24', '2019-01-31 21:14:24'),
(581, 'TGD-28', 'TOMACORRIENTE WORKOVER', 'TOMACORRIENTE WORKOVER', 0.005, 5, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', NULL, '4X8+ AWG  THHN/THWN-2 TC 600V', 165, 113, '2019-01-31 21:17:42', '2019-01-31 21:17:42'),
(582, 'T-VARIADOR P-255', 'MOTOR P-255', 'MOTOR P-255', 0.087, 87, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.96, 'No Aplica', 'No Aplica', '3', '', '(3X6 + 3X12) AWG VFD 600 V TC', 166, 113, '2019-01-31 21:19:36', '2019-01-31 21:19:36'),
(583, 'T-VARIADOR P-291', 'MOTOR P-291', 'MOTOR P-291', 0.06, 60, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.35, 'No Aplica', 'No Aplica', '3', '', '(3X6 + 3X12) AWG VFD 600 V TC', 166, 113, '2019-01-31 21:20:27', '2019-01-31 21:20:27'),
(584, 'T-VARIADOR P-300', 'MOTOR P-300', 'MOTOR P-300', 0.088, 88, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.98, 'No Aplica', 'No Aplica', '3', '', '(3X6 + 3X12) AWG VFD 600 V TC', 166, 113, '2019-01-31 21:22:14', '2019-01-31 21:22:14'),
(585, 'T-VARIADOR P-324', 'MOTOR P-324', 'MOTOR P-324', 0.052, 52, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.17, 'No Aplica', 'No Aplica', '3', '', '(3X6 + 3X12) AWG VFD 600 V TC', 166, 113, '2019-01-31 21:23:05', '2019-01-31 21:23:05'),
(586, 'TRANSFORMADOR SE-28A', 'TD- TABLERO DE DISTRIBUCION', 'TD-28A', 0.008, 8, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, NULL, '', '4/0', 'Tuberia/coraza', '310-16', 230, 1, 'No más de 3', 1, '26-30', 1, 230, 0.135, 0.203, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '', '1C X 3F N°4/0AWG+/n1C X 1 N°4/0AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 167, 114, '2019-01-31 21:30:02', '2019-01-31 21:30:02'),
(587, 'TD-28A', 'TABLERO GENERAL DE DISTRIBUCION', 'TGD-28A', 0.028, 28, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, NULL, '', '4/0', 'Tuberia/coraza', '310-16', 230, 1, 'No más de 3', 1, '26-30', 1, 230, 0.135, 0.203, 0.8, 0.5999999999999999, 0.44, 'No Aplica', 'No Aplica', '1', '', '1C X 3F N°4/0AWG+/n1C X 1 N°4/0AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 167, 114, '2019-01-31 21:30:57', '2019-01-31 21:30:57'),
(590, 'TGD-28A', 'T-VARIADOR P-290', 'T-VARIADOR P-290', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.11, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 168, 114, '2019-01-31 21:43:07', '2019-01-31 21:43:07'),
(591, 'TGD-28A', 'T-VARIADOR P-238', 'T-VARIADOR P-238', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.16, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 168, 114, '2019-01-31 21:44:00', '2019-01-31 21:44:00'),
(592, 'TGD-28A', 'T-VARIADOR P-240', 'T-VARIADOR P-240', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.2, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 168, 114, '2019-01-31 21:44:51', '2019-01-31 21:44:51'),
(593, 'TGD-28A', 'T-VARIADOR P-233', 'T-VARIADOR P-233', 0.011, 11, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.25, 'No Aplica', 'No Aplica', '1', '6', '4X6 AWG  THHN/THWN-2 TC 600V', 168, 114, '2019-01-31 21:45:43', '2019-01-31 21:46:22'),
(594, 'TGD-28A', 'T-VARIADOR P-323', 'T-VARIADOR P-323', 0.013, 13, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.29, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 168, 114, '2019-01-31 21:46:48', '2019-01-31 21:46:48'),
(595, 'TGD-28A', 'TOMACORRIENTE WORKOVER', 'TOMACORRIENTE WORKOVER', 0.005, 5, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', NULL, '4X8+ AWG  THHN/THWN-2 TC 600V', 168, 114, '2019-01-31 21:47:47', '2019-01-31 21:47:47'),
(596, 'T-VARIADOR P-290', 'MOTOR P-290', 'MOTOR P-290', 0.07, 70, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.57, 'No Aplica', 'No Aplica', '3', '', '(3X6 + 3X12) AWG VFD 600 V TC', 169, 114, '2019-01-31 21:49:57', '2019-01-31 21:49:57'),
(597, 'T-VARIADOR P-238', 'MOTOR P-238', 'MOTOR P-238', 0.067, 67, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.51, 'No Aplica', 'No Aplica', '3', '', '(3X6 + 3X12) AWG VFD 600 V TC', 169, 114, '2019-01-31 21:52:20', '2019-01-31 21:52:20'),
(598, 'T-VARIADOR P-240', 'MOTOR P-240', 'MOTOR P-240', 0.05, 50, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.12, 'No Aplica', 'No Aplica', '3', '', '(3X6 + 3X12) AWG VFD 600 V TC', 169, 114, '2019-01-31 21:53:06', '2019-01-31 21:53:06'),
(599, 'T-VARIADOR P-233', 'MOTOR P-233', 'MOTOR P-233', 0.045, 45, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.01, 'No Aplica', 'No Aplica', '3', '', '(3X6 + 3X12) AWG VFD 600 V TC', 169, 114, '2019-01-31 21:54:37', '2019-01-31 21:54:37'),
(600, 'T-VARIADOR P-323', 'MOTOR P-323', 'MOTOR P-323', 0.07, 70, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.57, 'No Aplica', 'No Aplica', '3', '', '(3X6 + 3X12) AWG VFD 600 V TC', 169, 114, '2019-01-31 21:56:07', '2019-01-31 21:56:07'),
(601, 'TRANSFORMADOR SE-41', 'TRANSFORMADOR SE-41', 'TRANSFORMADOR SE-41', 0.006, 6, 80.43, 60, 75, 3, 4, 'No', 'Monopolar', 480, 90.21, 112.76, 115, '87-125', '2', 'Tuberia/coraza', '310-16', 115, 1, 'No más de 3', 1, '26-30', 1, 115, 0.148, 0.623, 0.8, 0.5999999999999999, 0.11, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°2AWG+1C X 1 N°2AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 170, 115, '2019-02-01 02:25:20', '2019-02-01 02:26:06'),
(602, 'TRANSFORMADOR SE-38', 'GPT-38', 'GABINETE DE PROTECCION DE TRANSFORMADOR', 0.005, 5, 107.24, 80, 100, 3, 4, 'No', 'Monopolar', 480, 120.28, 150.35, 155, '112-160', '2/0', 'Tuberia/coraza', '310-16', 175, 1, 'No más de 3', 1, '26-30', 1, 175, 0.141, 0.328, 0.8, 0.5999999999999999, 0.08, 'No Aplica', 'No Aplica', '1', '6', '1C X 3F N°2/0AWG+1C X 1 N°2/0AWG+\n1C X 1 T  N°6AWG+\n THHN/THWN-2 TC 600V', 172, 116, '2019-02-05 02:44:10', '2019-02-05 02:44:55'),
(603, 'xcp-1-3-p1', '1-3-p1', 'tramo 1', 0.022, 22, 0.86, 0.64, 0.71, 2, 3, 'No', 'Monopolar', 208, 3.42, 4.27, 15, '11-16', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 35, 0.164, 3.94, 0.9, 0.4358898943540673, 0.26, 'No Aplica', 'No Aplica', '1', '14', '1C X 2F N°10AWG+1C X 1 N°10AWG+\n1C X 1 T  N°14AWG+\n THHN/THWN-2 TC 600V', 173, 117, '2019-02-05 21:56:59', '2019-02-05 21:59:39'),
(605, 'xcp-1-3-p8', '1-3-p8', 'tramo 8', 0.147, 147, 0.13, 0.1, 0.11, 2, 3, 'No', 'Monopolar', 208, 0.53, 0.67, 15, '11-16', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 35, 0.164, 3.94, 0.9, 0.4358898943540673, 0.27, 'No Aplica', 'No Aplica', '1', '14', '1C X 2F N°10AWG+1C X 1 N°10AWG+\n1C X 1 T  N°14AWG+\n THHN/THWN-2 TC 600V', 173, 117, '2019-02-05 22:03:49', '2019-02-05 22:04:54'),
(606, 'xcp-1-3-p5', '1-3-p5', 'tramo 5', 0.097, 97, 0.25, 0.19, 0.21, 2, 3, 'No', 'Monopolar', 208, 1.01, 1.27, 15, '11-16', '10', 'Tuberia/coraza', '310-16', 35, 1, 'No más de 3', 1, '26-30', 1, 35, 0.164, 3.94, 0.9, 0.4358898943540673, 0.34, 'No Aplica', 'No Aplica', '1', '14', '1C X 2F N°10AWG+1C X 1 N°10AWG+\n1C X 1 T  N°14AWG+\n THHN/THWN-2 TC 600V', 173, 117, '2019-02-05 22:08:00', '2019-02-05 22:08:35'),
(607, 'TRANSFORMADOR SE-36', 'GPT-36', 'GABINETE DE PROTECCION DE TRANSFORMADOR', 0.005, 5, 241.29, 180, 225, 3, 4, 'No', 'Monopolar', 480, 270.63, 338.29, 340, '160-400', '350', 'Tuberia/coraza', '310-16', 310, 1, 'No más de 3', 1, '26-30', 1, 310, 0.1312, 0.1247, 0.8, 0.5999999999999999, 0.09, 'No Aplica', 'No Aplica', '1', '3', '1C X 3F N°350AWG+1C X 1 N°350AWG+\n1C X 1 T  N°3AWG+\n THHN/THWN-2 TC 600V', 174, 118, '2019-02-06 20:08:29', '2019-02-06 20:15:11'),
(608, 'GPT-36', 'TGD-36', 'TABLERO GENERAL DE DISTRIBUCIÓN 36', 0.03, 30, 241.29, 180, 225, 3, 4, 'No', 'Monopolar', 480, 270.63, 338.29, 340, '160-400', '350', 'Tuberia/coraza', '310-16', 310, 1, 'No más de 3', 1, '26-30', 1, 310, 0.1312, 0.1247, 0.8, 0.5999999999999999, 0.52, 'No Aplica', 'No Aplica', '1', '3', '1C X 3F N°350AWG+1C X 1 N°350AWG+\n1C X 1 T  N°3AWG+\n THHN/THWN-2 TC 600V', 174, 118, '2019-02-06 20:14:42', '2019-02-06 20:15:15'),
(609, 'TRANSFORMADOR SE-04', 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN -04', 'TGD-04', 0.004, 4, 150, 111.9, 139.88, 3, 4, 'No', 'Monopolar', 480, 168.24, 210.3, 225, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 176, 121, '2019-03-20 21:13:41', '2019-03-20 21:13:54'),
(611, 'TGD-04', 'T-VARIADOR P-011', 'T-VARIADOR P-011', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 177, 121, '2019-03-20 21:16:48', '2019-03-20 21:22:37'),
(612, 'TGD-04', 'T-VARIADOR P-061', 'T-VARIADOR P-061', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 177, 121, '2019-03-20 21:17:39', '2019-03-20 21:22:40'),
(613, 'TGD-04', 'T-VARIADOR P-331', 'T-VARIADOR P-331', 0.009, 9, 50, 37.3, 46.63, 3, 4, 'No', 'Multiconductor', 480, 56.08, 70.1, 80, '70-100', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.17, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 177, 121, '2019-03-20 21:18:33', '2019-03-20 21:22:45'),
(614, 'TGD-04', 'T-VARIADOR P-339', 'T-VARIADOR P-339', 0.011, 11, 50, 37.3, 46.63, 3, 4, 'No', 'Multiconductor', 480, 56.08, 70.1, 80, '70-100', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.2, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 177, 121, '2019-03-20 21:19:24', '2019-03-20 21:22:47'),
(615, 'TGD-04', 'T-VARIADOR P-183', 'T-VARIADOR P-183', 0.063, 63, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.93, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 177, 121, '2019-03-20 21:20:20', '2019-03-20 21:22:51'),
(616, 'TGD-04', 'T-VARIADOR P-151', 'T-VARIADOR P-151', 0.169, 169, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 2.49, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 177, 121, '2019-03-20 21:21:44', '2019-03-20 21:22:54'),
(617, 'T-VARIADOR P-011', 'MOTOR P-011', 'MOTOR P-011', 0.065, 65, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.96, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 178, 121, '2019-03-20 21:37:39', '2019-03-20 21:44:38'),
(619, 'T-VARIADOR P-061', 'MOTOR P-061', 'MOTOR P-061', 0.051, 51, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.75, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 178, 121, '2019-03-20 21:39:37', '2019-03-20 21:44:43'),
(620, 'T-VARIADOR P-331', 'MOTOR P-331', 'MOTOR P-331', 0.09, 90, 50, 37.3, 46.63, 3, 4, 'No', 'Vfd', 480, 56.08, 70.1, 80, '70-100', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 1.66, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 178, 121, '2019-03-20 21:40:31', '2019-03-20 21:44:49'),
(621, 'T-VARIADOR P-339', 'MOTOR P-339', 'MOTOR P-339', 0.068, 68, 50, 37.3, 46.63, 3, 4, 'No', 'Vfd', 480, 56.08, 70.1, 80, '70-100', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 1.25, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 178, 121, '2019-03-20 21:41:30', '2019-03-20 21:44:51'),
(622, 'T-VARIADOR P-183', 'MOTOR P-183', 'MOTOR P-183', 0.061, 61, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.9, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 178, 121, '2019-03-20 21:42:37', '2019-03-20 21:44:55'),
(623, 'T-VARIADOR P-151', 'MOTOR P-151', 'MOTOR P-151', 0.015, 15, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.22, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 178, 121, '2019-03-20 21:43:17', '2019-03-20 21:44:57'),
(624, 'TRANSFORMADOR SE-18', 'GPT-18', 'GPT-18', 0.004, 4, 150, 111.9, 139.88, 3, 4, 'No', 'Monopolar', 480, 168.24, 210.3, 225, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 179, 122, '2019-03-21 00:21:08', '2019-03-21 01:07:09'),
(625, 'GPT-18', 'TGD-18', 'TGD-18', 0.03, 30, 150, 111.9, 139.88, 3, 4, 'No', 'Monopolar', 480, 168.24, 210.3, 225, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.52, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 179, 122, '2019-03-21 00:22:05', '2019-03-21 01:07:10'),
(626, 'TGD-18', 'T-VARIADOR P-096', 'T-VARIADOR P-096', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 180, 122, '2019-03-21 00:24:00', '2019-03-21 01:07:17'),
(627, 'TGD-18', 'T-VARIADOR P-327', 'T-VARIADOR P-327', 0.007, 7, 50, 37.3, 46.63, 3, 4, 'No', 'Multiconductor', 480, 56.08, 70.1, 80, '70-100', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 180, 122, '2019-03-21 00:25:36', '2019-03-21 01:07:25'),
(628, 'T-VARIADOR P-096', 'MOTOR P-096', 'MOTOR P-096', 0.037, 37, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.55, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 181, 122, '2019-03-21 00:50:06', '2019-03-21 01:07:32'),
(629, 'T-VARIADOR P-327', 'MOTOR P-327', 'MOTOR P-327', 0.038, 38, 50, 37.3, 46.63, 3, 4, 'No', 'Vfd', 480, 56.08, 70.1, 80, '70-100', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.7, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 181, 122, '2019-03-21 00:50:55', '2019-03-21 01:07:34'),
(630, 'TRANSFORMADOR SE-46 480', 'GPT-46', 'GPT-46', 0.005, 5, 150, 111.9, 139.88, 3, 4, 'No', 'Monopolar', 480, 168.24, 210.3, 225, '175-250', '4/0', 'Tuberia/coraza', '310-16', 230, 1, 'No más de 3', 1, '26-30', 1, 230, 0.135, 0.203, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°4/0AWG+1C X 1 N°4/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 182, 123, '2019-03-21 21:22:11', '2019-03-21 21:24:59'),
(631, 'GPT-46', 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN-1', 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN-1', 0.085, 85, 75, 55.95, 69.94, 3, 4, 'No', 'Monopolar', 480, 84.12, 105.15, 115, '87-125', '2', 'Tuberia/coraza', '310-16', 115, 1, 'No más de 3', 1, '26-30', 1, 115, 0.148, 0.623, 0.8, 0.5999999999999999, 1.52, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°2AWG+1C X 1 N°2AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 182, 123, '2019-03-21 21:24:04', '2019-03-21 21:25:10'),
(632, 'GPT-46', 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN-2', 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN-2', 0.14, 140, 75, 55.95, 69.94, 3, 4, 'No', 'Monopolar', 480, 84.12, 105.15, 115, '87-125', '2', 'Tuberia/coraza', '310-16', 115, 1, 'No más de 3', 1, '26-30', 1, 115, 0.148, 0.623, 0.8, 0.5999999999999999, 2.5, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°2AWG+1C X 1 N°2AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 182, 123, '2019-03-21 21:25:32', '2019-03-21 21:25:54'),
(633, 'TGD-46/1', 'T-VARIADOR P-104', 'T-VARIADOR P-104', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 183, 123, '2019-03-21 21:27:35', '2019-03-21 21:32:00'),
(634, 'TGD-46/1', 'T-VARIADOR P-224', 'T-VARIADOR P-224', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 183, 123, '2019-03-21 21:28:42', '2019-03-21 21:32:02'),
(635, 'TGD-46/1', 'T-VARIADOR P-228', 'T-VARIADOR P-228', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 183, 123, '2019-03-21 21:31:21', '2019-03-21 21:32:04'),
(636, 'TGD-46/1', 'TOMACORRIENTE WORKOVER', 'TOMACORRIENTE WORKOVER', 0.01, 10, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.26, 'No Aplica', 'No Aplica', '1', NULL, '4X8+ AWG  THHN/THWN-2 TC 600V', 183, 123, '2019-03-21 21:32:15', '2019-03-21 21:32:15'),
(637, 'TGD-46/2', 'T-VARIADOR P-281', 'T-VARIADOR P-281', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 184, 123, '2019-03-21 21:40:40', '2019-03-21 21:46:20'),
(638, 'TGD-46/2', 'T-VARIADOR P-338', 'T-VARIADOR P-338', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 184, 123, '2019-03-21 21:46:14', '2019-03-21 21:46:22'),
(639, 'T-VARIADOR P-104', 'MOTOR P-104', 'MOTOR P-104', 0.037, 37, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.83, 'No Aplica', 'No Aplica', '3', '', '(3X6 + 3X12) AWG VFD 600 V TC', 185, 123, '2019-03-21 22:18:24', '2019-03-21 22:18:24'),
(640, 'T-VARIADOR P-224', 'MOTOR P-224', 'MOTOR P-224', 0.048, 48, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.08, 'No Aplica', 'No Aplica', '3', '', '(3X6 + 3X12) AWG VFD 600 V TC', 185, 123, '2019-03-21 22:19:15', '2019-03-21 22:19:15'),
(641, 'T-VARIADOR P-228', 'MOTOR P-228', 'MOTOR P-228', 0.03, 30, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.67, 'No Aplica', 'No Aplica', '3', '', '(3X6 + 3X12) AWG VFD 600 V TC', 185, 123, '2019-03-21 22:20:02', '2019-03-21 22:20:02'),
(642, 'TRANSFORMADOR SE-46', 'GPT-46', 'GABINETE DE PROTECCION DE TRANSFORMADOR', 0.005, 5, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, 225, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.09, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 186, 124, '2019-03-22 00:43:49', '2019-03-22 00:47:48'),
(643, 'GPT-46', 'TGD-46/1', 'TABLERO GENERAL DE DISTRIBUCIÓN 46/1', 0.065, 65, 80.43, 60, 75, 3, 4, 'No', 'Monopolar', 480, 90.21, 112.76, 115, '87-125', '2', 'Tuberia/coraza', '310-16', 115, 1, 'No más de 3', 1, '26-30', 1, 115, 0.148, 0.623, 0.8, 0.5999999999999999, 1.24, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°2AWG+1C X 1 N°2AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 186, 124, '2019-03-22 00:47:26', '2019-03-22 00:47:44'),
(644, 'GPT-46', 'TGD-46/2', 'TABLERO GENERAL DE DISTRIBUCIÓN 46/2', 0.145, 145, 80.43, 60, 75, 3, 4, 'No', 'Monopolar', 480, 90.21, 112.76, 115, '87-125', '2', 'Tuberia/coraza', '310-16', 115, 1, 'No más de 3', 1, '26-30', 1, 115, 0.148, 0.623, 0.8, 0.5999999999999999, 2.77, 'No Aplica', 'No Aplica', '1', '8', '1C X 3F N°2AWG+1C X 1 N°2AWG+\n1C X 1 T  N°8AWG+\n THHN/THWN-2 TC 600V', 186, 124, '2019-03-22 00:48:44', '2019-03-22 01:08:48'),
(645, 'TGD-46/1', 'T-VARIADOR P-104', 'T-VARIADOR P-104', 0.037, 37, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.55, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 187, 124, '2019-03-22 00:51:23', '2019-03-22 01:08:54'),
(646, 'TGD-46/1', 'T-VARIADOR P-224', 'T-VARIADOR P-104', 0.048, 48, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.71, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 187, 124, '2019-03-22 00:52:13', '2019-03-22 01:08:58'),
(647, 'TGD-46/1', 'T-VARIADOR P-228', 'T-VARIADOR P-228', 0.03, 30, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.44, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 187, 124, '2019-03-22 00:53:01', '2019-03-22 01:09:00'),
(648, 'TGD-46/1', 'TOMACORRIENTE WORKOVER', 'TOMACORRIENTE WORKOVER', 0.01, 10, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.26, 'No Aplica', 'No Aplica', '1', '8', '4X8 AWG  THHN/THWN-2 TC 600V', 187, 124, '2019-03-22 00:55:13', '2019-03-22 01:09:04'),
(649, 'TGD-46/2', 'T-VARIADOR P-281', 'T-VARIADOR P-281', 0.043, 43, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.63, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 188, 124, '2019-03-22 00:57:39', '2019-03-22 01:09:10'),
(650, 'TGD-46/2', 'T-VARIADOR P-338', 'T-VARIADOR P-338', 0.046, 46, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.68, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 188, 124, '2019-03-22 00:58:41', '2019-03-22 01:09:12'),
(651, 'TGD-46/2', 'TOMACORRIENTE WORKOVER', 'TOMACORRIENTE WORKOVER', 0.01, 10, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.26, 'No Aplica', 'No Aplica', '1', '8', '4X8 AWG  THHN/THWN-2 TC 600V', 188, 124, '2019-03-22 01:00:21', '2019-03-22 01:09:20'),
(652, 'T-VARIADOR P-104', 'MOTOR P-104', 'MOTOR P-104', 0.037, 37, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.55, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 189, 124, '2019-03-22 01:02:55', '2019-03-22 01:09:24'),
(653, 'T-VARIADOR P-224', 'MOTOR P-224', 'MOTOR P-224', 0.048, 48, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.71, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 189, 124, '2019-03-22 01:04:06', '2019-03-22 01:09:26'),
(654, 'T-VARIADOR P-228', 'MOTOR P-228', 'MOTOR P-228', 0.03, 30, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.44, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 189, 124, '2019-03-22 01:05:07', '2019-03-22 01:09:28'),
(655, 'T-VARIADOR P-281', 'MOTOR P-281', 'MOTOR P-281', 0.043, 43, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.63, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 189, 124, '2019-03-22 01:06:31', '2019-03-22 01:09:30'),
(656, 'T-VARIADOR P-338', 'MOTOR P-338', 'MOTOR P-338', 0.046, 46, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.68, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 189, 124, '2019-03-22 01:08:15', '2019-03-22 01:09:34'),
(657, 'TRANSFORMADOR SE-22', 'GPT-22', 'GABINETE DE PROTECCIÓN DE TRANSFORMADOR', 0.004, 4, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, 225, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 190, 125, '2019-03-22 01:15:30', '2019-03-22 01:22:40'),
(658, 'GPT-22', 'TGD-22', 'TABLERO GENERAL DE DISTRIBUCIÓN 22', 0.027, 27, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, 225, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.5, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 190, 125, '2019-03-22 01:17:04', '2019-03-22 01:22:42'),
(659, 'TGD-22', 'T-VARIADOR P-306', 'T-VARIADOR P-306', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 191, 125, '2019-03-22 01:18:58', '2019-03-22 01:22:49'),
(660, 'TGD-22', 'T-VARIADOR P-322', 'T-VARIADOR P-322', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 191, 125, '2019-03-22 01:19:50', '2019-03-22 01:22:55'),
(661, 'T-VARIADOR P-306', 'MOTOR P-306', 'MOTOR P-306', 0.029, 29, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.43, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 192, 125, '2019-03-22 01:21:34', '2019-03-22 01:22:28'),
(662, 'T-VARIADOR P-322', 'MOTOR P-322', 'MOTOR P-322', 0.041, 41, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.6, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 192, 125, '2019-03-22 01:22:20', '2019-03-22 01:22:30'),
(663, 'TGD-22', 'TOMACORRIENTE WORKOVER', 'TOMACORRIENTE WORKOVER', 0.01, 10, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.26, 'No Aplica', 'No Aplica', '1', NULL, '4X8+ AWG  THHN/THWN-2 TC 600V', 191, 125, '2019-03-22 01:23:24', '2019-03-22 01:23:24'),
(664, 'TRANSFORMADOR SE-21', 'GPT-21', 'GABINETE DE PROTECCIÓN DE TRANSFORMADOR', 0.004, 4, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, NULL, '', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 193, 126, '2019-03-22 01:27:34', '2019-03-22 01:30:20'),
(665, 'GPT-21', 'TGD-21', 'TABLERO GENERAL DE DISTRIBUCIÓN 21', 0.045, 45, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, NULL, '', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.84, 'No Aplica', 'No Aplica', '1', '', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 193, 126, '2019-03-22 01:28:34', '2019-03-22 01:30:18'),
(666, 'TGD-21', 'T-VARIADOR P-162', 'T-VARIADOR P-162', 0.012, 12, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.18, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 194, 126, '2019-03-22 01:29:39', '2019-03-22 01:30:16'),
(667, 'TGD-21', 'T-VARIADOR P-304', 'T-VARIADOR P-304', 0.041, 41, 50, 37.3, 46.63, 3, 4, 'No', 'Multiconductor', 480, 56.08, 70.1, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.76, 'No Aplica', 'No Aplica', '1', NULL, '4X4+ AWG  THHN/THWN-2 TC 600V', 194, 126, '2019-03-22 01:30:42', '2019-03-22 01:30:42'),
(668, 'TGD-21', 'TOMACORRIENTE WORKOVER', 'TOMACORRIENTE WORKOVER', 0.01, 10, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.26, 'No Aplica', 'No Aplica', '1', NULL, '4X8+ AWG  THHN/THWN-2 TC 600V', 194, 126, '2019-03-22 01:31:14', '2019-03-22 01:31:14'),
(669, 'T-VARIADOR P-162', 'MOTOR P-162', 'MOTOR P-162', 0.012, 12, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.18, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 195, 126, '2019-03-22 01:37:45', '2019-03-22 01:38:27'),
(670, 'T-VARIADOR P-304', 'MOTOR P-304', 'MOTOR P-304', 0.041, 41, 50, 37.3, 46.63, 3, 4, 'No', 'Vfd', 480, 56.08, 70.1, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.76, 'No Aplica', 'No Aplica', '3', '', '(3X4 + 3X12) AWG VFD 600 V TC', 195, 126, '2019-03-22 01:38:34', '2019-03-22 01:38:34'),
(671, 'TRANSFORMADOR SE-20', 'GPT-20', 'GABINETE DE PROTECCION DE TRANSFORMADOR', 0.004, 4, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, 225, '175-250', '4/0', 'Tuberia/coraza', '310-16', 230, 1, 'No más de 3', 1, '26-30', 1, 230, 0.135, 0.203, 0.8, 0.5999999999999999, 0.06, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°4/0AWG+1C X 1 N°4/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 196, 127, '2019-03-22 01:44:22', '2019-03-22 01:59:23'),
(672, 'GPT-20', 'TGD-20', 'TABLERO GENERAL DE DISTRIBUCIÓN 20', 0.068, 68, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, 225, '175-250', '4/0', 'Tuberia/coraza', '310-16', 230, 1, 'No más de 3', 1, '26-30', 1, 230, 0.135, 0.203, 0.8, 0.5999999999999999, 1.08, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°4/0AWG+1C X 1 N°4/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 196, 127, '2019-03-22 01:45:36', '2019-03-22 01:59:26'),
(673, 'TGD-20', 'T-VARIADOR P-042', 'T-VARIADOR P-042', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 197, 127, '2019-03-22 01:47:07', '2019-03-22 01:59:30'),
(674, 'TGD-20', 'T-VARIADOR P-270', 'T-VARIADOR P-270', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 197, 127, '2019-03-22 01:47:59', '2019-03-22 01:59:32'),
(675, 'TGD-20', 'T-VARIADOR P-271', 'T-VARIADOR P-271', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 197, 127, '2019-03-22 01:48:38', '2019-03-22 01:59:34'),
(676, 'TGD-20', 'T-VARIADOR P-287', 'T-VARIADOR P-287', 0.011, 11, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.16, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 197, 127, '2019-03-22 01:49:26', '2019-03-22 01:59:38'),
(677, 'TGD-20', 'T-VARIADOR P-288', 'T-VARIADOR P-288', 0.013, 13, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.19, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 197, 127, '2019-03-22 01:50:09', '2019-03-22 01:59:41'),
(678, 'TGD-20', 'T-VARIADOR P-289', 'T-VARIADOR P-289', 0.015, 15, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.22, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 197, 127, '2019-03-22 01:50:46', '2019-03-22 01:59:45'),
(679, 'TGD-20', 'TOMACORRIENTE WORKOVER', 'TOMACORRIENTE WORKOVER', 0.01, 10, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.26, 'No Aplica', 'No Aplica', '1', '8', '4X8 AWG  THHN/THWN-2 TC 600V', 197, 127, '2019-03-22 01:51:28', '2019-03-22 01:59:49'),
(680, 'T-VARIADOR P-042', 'MOTOR P-042', 'MOTOR P-042', 0.072, 72, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 1.06, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 198, 127, '2019-03-22 01:52:52', '2019-03-22 01:59:54'),
(681, 'T-VARIADOR P-270', 'MOTOR P-270', 'MOTOR P-270', 0.057, 57, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.84, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 198, 127, '2019-03-22 01:53:38', '2019-03-22 01:59:57'),
(682, 'T-VARIADOR P-271', 'MOTOR P-271', 'MOTOR P-271', 0.052, 52, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.77, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 198, 127, '2019-03-22 01:55:32', '2019-03-22 02:00:02'),
(683, 'T-VARIADOR P-287', 'MOTOR P-287', 'MOTOR P-287', 0.059, 59, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.87, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 198, 127, '2019-03-22 01:56:23', '2019-03-22 02:00:06'),
(684, 'T-VARIADOR P-288', 'MOTOR P-288', 'MOTOR P-288', 0.062, 62, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.91, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 198, 127, '2019-03-22 01:57:17', '2019-03-22 02:00:10'),
(685, 'T-VARIADOR P-289', 'MOTOR P-289', 'MOTOR P-289', 0.058, 58, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.85, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 198, 127, '2019-03-22 01:58:58', '2019-03-22 02:00:12'),
(686, 'TRANSFORMADOR SE-07', 'GPT-07', 'GABINETE DE PROTECCIÓN DE TRANSFORMADOR', 0.005, 5, 171.58, 128, 160, 3, 4, 'No', 'Monopolar', 480, 192.45, 240.56, 240, '175-250', '4/0', 'Tuberia/coraza', '310-16', 230, 1, 'No más de 3', 1, '26-30', 1, 230, 0.135, 0.203, 0.8, 0.5999999999999999, 0.08, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°4/0AWG+1C X 1 N°4/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 199, 128, '2019-03-22 02:29:28', '2019-03-22 20:01:04');
INSERT INTO `memoria_bajas` (`id`, `conductor`, `carga`, `descripcion_carga`, `longitud_km`, `longitud_metros`, `potencia_hp`, `potencia_kw`, `potencia_kva`, `nro_fases`, `nro_hilos`, `neutro`, `tipo_cab`, `tension_nominal`, `corriente_nominal`, `corriente_asignada`, `proteccion_selec`, `ajustable`, `calibre_conductor`, `medio_de_instal`, `tabla_2050`, `capacidad_de_un_conductor`, `nro_de_conductores_x_fase`, `cantidad`, `factor_de_ajuste_con`, `rango_temperatura`, `factor_de_ajuste_tem`, `cap_tot_conduc`, `reactancia`, `resistencia`, `factor_de_potencia`, `sen`, `regulacion`, `conductores_neutro`, `calibre_conduc_neu`, `conductor_tierra`, `calibre_tierra`, `conductor_selecc`, `tablero_id`, `project_id`, `created_at`, `updated_at`) VALUES
(687, 'GPT-07', 'TGD-07', 'TABLERO GENERAL DE DISTRIBUCIÓN 07', 0.051, 51, 171.58, 128, 160, 3, 4, 'No', 'Monopolar', 480, 192.45, 240.56, 240, '175-250', '4/0', 'Tuberia/coraza', '310-16', 230, 1, 'No más de 3', 1, '26-30', 1, 230, 0.135, 0.203, 0.8, 0.5999999999999999, 0.86, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°4/0AWG+1C X 1 N°4/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 199, 128, '2019-03-22 02:30:59', '2019-03-22 20:01:07'),
(688, 'TGD-07', 'T-VARIADOR P-107', 'T-VARIADOR P-107', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 200, 128, '2019-03-22 02:32:56', '2019-03-22 20:01:11'),
(689, 'TGD-07', 'T-VARIADOR P-186', 'T-VARIADOR P-186', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 200, 128, '2019-03-22 02:35:09', '2019-03-22 20:01:13'),
(690, 'TGD-07', 'T-VARIADOR P-217', 'T-VARIADOR P-217', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 200, 128, '2019-03-22 02:36:11', '2019-03-22 20:01:17'),
(692, 'TGD-07', 'T-VARIADOR P-221', 'T-VARIADOR P-221', 0.011, 11, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.16, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 200, 128, '2019-03-22 02:43:48', '2019-03-22 20:01:22'),
(693, 'TGD-07', 'T-VARIADOR P-153', 'T-VARIADOR P-153', 0.013, 13, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.19, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 200, 128, '2019-03-22 02:45:13', '2019-03-22 20:01:24'),
(694, 'TGD-07', 'TOMACORRIENTE WORKOVER', 'TOMACORRIENTE WORKOVER', 0.015, 15, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.39, 'No Aplica', 'No Aplica', '1', '8', '4X8 AWG  THHN/THWN-2 TC 600V', 200, 128, '2019-03-22 02:46:21', '2019-03-22 20:01:29'),
(695, 'T-VARIADOR P-107', 'MOTOR P-107', 'MOTOR P-107', 0.048, 48, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.71, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 201, 128, '2019-03-22 02:49:32', '2019-03-22 20:01:32'),
(696, 'T-VARIADOR P-186', 'MOTOR P-186', 'MOTOR P-186', 0.051, 51, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.75, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 201, 128, '2019-03-22 02:50:55', '2019-03-22 20:01:34'),
(697, 'T-VARIADOR P-217', 'MOTOR P-217', 'MOTOR P-217', 0.032, 32, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.47, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 201, 128, '2019-03-22 02:51:45', '2019-03-22 20:01:37'),
(698, 'T-VARIADOR P-221', 'MOTOR P-221', 'MOTOR P-221', 0.048, 48, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.71, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 201, 128, '2019-03-22 19:58:56', '2019-03-22 20:01:40'),
(699, 'T-VARIADOR P-153', 'MOTOR P-153', 'MOTOR P-153', 0.11, 110, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 1.62, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 201, 128, '2019-03-22 20:00:40', '2019-03-22 20:01:43'),
(700, 'TRANSFORMADOR SE-10', 'GPT-20', 'GABINETE DE PROTECCIÓN DE TRANSFORMADOR', 0.005, 5, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, 225, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 0.09, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 202, 129, '2019-03-22 20:19:14', '2019-03-22 20:21:34'),
(701, 'GPT-10', 'TGD-10', 'TABLERO GENERAL DE DISTRIBUCIÓN  10', 0.075, 75, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, 225, '175-250', '3/0', 'Tuberia/coraza', '310-16', 200, 1, 'No más de 3', 1, '26-30', 1, 200, 0.138, 0.253, 0.8, 0.5999999999999999, 1.39, 'No Aplica', 'No Aplica', '1', '4', '1C X 3F N°3/0AWG+1C X 1 N°3/0AWG+\n1C X 1 T  N°4AWG+\n THHN/THWN-2 TC 600V', 202, 129, '2019-03-22 20:20:20', '2019-03-22 20:21:35'),
(702, 'TGD-10', 'T-VARIADOR P-023', 'T-VARIADOR P-023', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 203, 129, '2019-03-22 20:23:40', '2019-03-22 20:36:53'),
(703, 'TGD-10', 'T-VARIADOR P-197', 'T-VARIADOR P-197', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 203, 129, '2019-03-22 20:24:25', '2019-03-22 20:36:55'),
(704, 'TGD-10', 'T-VARIADOR P-236', 'T-VARIADOR P-236', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.13, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 203, 129, '2019-03-22 20:25:12', '2019-03-22 20:36:59'),
(705, 'TGD-10', 'T-VARIADOR P-262', 'T-VARIADOR P-262', 0.011, 11, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.16, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 203, 129, '2019-03-22 20:26:00', '2019-03-22 20:37:03'),
(706, 'TGD-10', 'T-VARIADOR P-303', 'T-VARIADOR P-303', 0.013, 13, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.19, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 203, 129, '2019-03-22 20:28:07', '2019-03-22 20:37:06'),
(707, 'TGD-10', 'T-VARIADOR P-321', 'T-VARIADOR P-321', 0.015, 15, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.22, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 203, 129, '2019-03-22 20:29:00', '2019-03-22 20:37:08'),
(708, 'TGD-10', 'TOMACORRIENTE WORKOVER', 'TOMACORRIENTE WORKOVER', 0.01, 10, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, 50, '44-63', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.26, 'No Aplica', 'No Aplica', '1', '8', '4X8 AWG  THHN/THWN-2 TC 600V', 203, 129, '2019-03-22 20:29:40', '2019-03-22 20:37:13'),
(709, 'T-VARIADOR P-023', 'MOTOR P-023', 'MOTOR P-023', 0.034, 34, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.5, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 204, 129, '2019-03-22 20:30:52', '2019-03-22 20:37:17'),
(710, 'T-VARIADOR P-197', 'MOTOR P-197', 'MOTOR P-197', 0.045, 45, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.66, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 204, 129, '2019-03-22 20:31:46', '2019-03-22 20:37:19'),
(711, 'T-VARIADOR P-236', 'MOTOR P-236', 'MOTOR P-236', 0.059, 59, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.87, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 204, 129, '2019-03-22 20:33:48', '2019-03-22 20:37:22'),
(712, 'T-VARIADOR P-262', 'MOTOR P-262', 'MOTOR P-262', 0.06, 60, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.88, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 204, 129, '2019-03-22 20:34:41', '2019-03-22 20:37:24'),
(713, 'T-VARIADOR P-303', 'MOTOR P-303', 'MOTOR P-303', 0.079, 79, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 1.16, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 204, 129, '2019-03-22 20:35:23', '2019-03-22 20:37:28'),
(714, 'T-VARIADOR P-321', 'MOTOR P-321', 'MOTOR P-321', 0.088, 88, 40, 29.84, 37.3, 3, 4, 'No', 'Vfd', 480, 44.86, 56.08, 63, '56-80', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 1.3, 'No Aplica', 'No Aplica', '3', '12', '(3X4 + 3X12) AWG VFD 600 V TC', 204, 129, '2019-03-22 20:36:25', '2019-03-22 20:37:31'),
(715, 'TRANSFORMADOR SE-15', 'GPT-15', 'GABINETE DE PROTECCION DE TRANSFORMADOR', 0.005, 5, 321.72, 240, 300, 3, 4, 'No', 'Monopolar', 480, 360.84, 451.05, 480, '250-500', '750', 'Tuberia/coraza', '310-16', 475, 1, 'No más de 3', 1, '26-30', 1, 475, 0.1247, 0.0623, 0.8, 0.5999999999999999, 0.08, 'No Aplica', 'No Aplica', '1', '3', '1C X 3F N°750AWG+1C X 1 N°750AWG+\n1C X 1 T  N°3AWG+\n THHN/THWN-2 TC 600V', 205, 130, '2019-03-22 20:44:44', '2019-03-22 20:49:55'),
(718, 'GPT-15', 'TGD-15/1', 'TABLERO GENERAL DE DISTRIBUCIÓN 15', 0.04, 40, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, NULL, '', '4/0', 'Tuberia/coraza', '310-16', 230, 1, 'No más de 3', 1, '26-30', 1, 230, 0.135, 0.203, 0.8, 0.5999999999999999, 0.63, 'No Aplica', 'No Aplica', '1', '', '1C X 3F N°4/0AWG+/n1C X 1 N°4/0AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 205, 130, '2019-03-22 20:52:55', '2019-03-22 20:52:55'),
(719, 'GPT-15', 'TGD-15/2', 'TABLERO GENERAL DE DISTRIBUCIÓN 15', 0.091, 91, 160.86, 120, 150, 3, 4, 'No', 'Monopolar', 480, 180.42, 225.53, NULL, '', '4/0', 'Tuberia/coraza', '310-16', 230, 1, 'No más de 3', 1, '26-30', 1, 230, 0.135, 0.203, 0.8, 0.5999999999999999, 1.44, 'No Aplica', 'No Aplica', '1', '', '1C X 3F N°4/0AWG+/n1C X 1 N°4/0AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 205, 130, '2019-03-22 20:58:39', '2019-03-22 20:58:39'),
(720, 'TGD-15/1', 'T-VARIADOR P-220', 'T-VARIADOR P-220', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.07, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 206, 130, '2019-03-22 21:08:24', '2019-03-22 21:09:07'),
(721, 'TGD-15/1', 'T-VARIADOR P-239', 'T-VARIADOR P-239', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.1, 'No Aplica', 'No Aplica', '1', '4', '4X4 AWG  THHN/THWN-2 TC 600V', 206, 130, '2019-03-22 21:09:14', '2019-03-22 21:12:05'),
(722, 'TGD-15/1', 'T-VARIADOR P-247', 'T-VARIADOR P-247', 0.009, 9, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.15, 'No Aplica', 'No Aplica', '1', '6', '4X6 AWG  THHN/THWN-2 TC 600V', 206, 130, '2019-03-22 21:11:21', '2019-03-22 21:12:08'),
(723, 'TGD-15/1', 'T-VARIADOR P-248', 'T-VARIADOR P-248', 0.011, 11, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.25, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 206, 130, '2019-03-22 21:12:17', '2019-03-22 21:12:17'),
(724, 'TGD-15/1', 'T-VARIADOR P-019', 'T-VARIADOR P-019', 0.013, 13, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.29, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 206, 130, '2019-03-22 21:13:14', '2019-03-22 21:13:14'),
(725, 'TGD-15/1', 'T-VARIADOR P-250', 'T-VARIADOR P-250', 0.015, 15, 60, 44.76, 55.95, 3, 4, 'No', 'Multiconductor', 480, 67.3, 84.12, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 0.33, 'No Aplica', 'No Aplica', '1', NULL, '4X4+ AWG  THHN/THWN-2 TC 600V', 206, 130, '2019-03-22 21:19:17', '2019-03-22 21:19:17'),
(726, 'TGD-15/1', 'T-VARIADOR P-029', 'T-VARIADOR P-029', 0.017, 17, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.38, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 206, 130, '2019-03-22 21:21:34', '2019-03-22 21:21:34'),
(727, 'TGD-15/1', 'T-VARIADOR P-030', 'T-VARIADOR P-030', 0.019, 19, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.43, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 206, 130, '2019-03-22 21:28:19', '2019-03-22 21:28:19'),
(728, 'TGD-15/1', 'TOMACORRIENTE WORKOVER', 'TOMACORRIENTE WORKOVER', 0.01, 10, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.26, 'No Aplica', 'No Aplica', '1', NULL, '4X8+ AWG  THHN/THWN-2 TC 600V', 206, 130, '2019-03-22 21:29:07', '2019-03-22 21:29:07'),
(729, 'TGD-15/2', 'T-VARIADOR P-283', 'T-VARIADOR P-283', 0.005, 5, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.11, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 207, 130, '2019-03-22 21:33:02', '2019-03-22 21:33:02'),
(730, 'TGD-15/2', 'T-VARIADOR P-310', 'T-VARIADOR P-310', 0.007, 7, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.16, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 207, 130, '2019-03-22 21:37:19', '2019-03-22 21:37:19'),
(731, 'TGD-15/2', 'T-VARIADOR P-311', 'T-VARIADOR P-311', 0.009, 9, 40, 29.84, 37.3, 3, 4, 'No', 'Monopolar', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.2, 'No Aplica', 'No Aplica', '1', '', '1C X 3F N°6AWG+1C X 1 N°6AWG+\n1C X 1 T  N°AWG+\n THHN/THWN-2 TC 600V', 207, 130, '2019-03-22 21:58:28', '2019-03-22 21:59:53'),
(732, 'TGD-15/2', 'T-VARIADOR P-326', 'T-VARIADOR P-326', 0.011, 11, 40, 29.84, 37.3, 3, 4, 'No', 'Monopolar', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.25, 'No Aplica', 'No Aplica', '1', '', '1C X 3F N°6AWG+/n1C X 1 N°6AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 207, 130, '2019-03-22 22:00:07', '2019-03-22 22:00:07'),
(733, 'TGD-15/2', 'T-VARIADOR P-028', 'T-VARIADOR P-028', 0.013, 13, 30, 22.38, 27.98, 3, 4, 'No', 'Monopolar', 480, 33.65, 42.06, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.34, 'No Aplica', 'No Aplica', '1', '', '1C X 3F N°8AWG+/n1C X 1 N°8AWG+/n1C X 1TAWG THHN/THWN-2 TC 600V', 207, 130, '2019-03-22 22:00:58', '2019-03-22 22:00:58'),
(734, 'T-VARIADOR P-220', 'MOTOR P-220', 'MOTOR P-220', 0.036, 36, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.81, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 208, 130, '2019-03-23 01:02:41', '2019-03-23 01:02:41'),
(735, 'T-VARIADOR P-239', 'MOTOR P-239', 'MOTOR P-239', 0.044, 44, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.99, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 208, 130, '2019-03-23 01:04:19', '2019-03-23 01:04:19'),
(736, 'T-VARIADOR P-247', 'MOTOR P-247', 'MOTOR P-247', 0.032, 32, 30, 22.38, 27.98, 3, 4, 'No', 'Multiconductor', 480, 33.65, 42.06, NULL, '', '8', 'Tuberia/coraza', '310-16', 50, 1, 'No más de 3', 1, '26-30', 1, 50, 0.171, 2.56, 0.8, 0.5999999999999999, 0.84, 'No Aplica', 'No Aplica', '1', NULL, '4X8+ AWG  THHN/THWN-2 TC 600V', 208, 130, '2019-03-23 01:05:39', '2019-03-23 01:05:39'),
(737, 'T-VARIADOR P-248', 'MOTOR P-248', 'MOTOR P-248', 0.026, 26, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.58, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 208, 130, '2019-03-23 01:13:45', '2019-03-23 01:13:45'),
(739, 'T-VARIADOR P-019', 'MOTOR P-019', 'MOTOR P-019', 0.035, 35, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.79, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 208, 130, '2019-03-23 01:43:29', '2019-03-23 01:43:29'),
(740, 'T-VARIADOR P-250', 'MOTOR P-250', 'MOTOR P-250', 0.06, 60, 60, 44.76, 55.95, 3, 4, 'No', 'Multiconductor', 480, 67.3, 84.12, NULL, '', '4', 'Tuberia/coraza', '310-16', 85, 1, 'No más de 3', 1, '26-30', 1, 85, 0.157, 1.02, 0.8, 0.5999999999999999, 1.33, 'No Aplica', 'No Aplica', '1', NULL, '4X4+ AWG  THHN/THWN-2 TC 600V', 208, 130, '2019-03-23 01:50:48', '2019-03-23 01:50:48'),
(741, 'T-VARIADOR P-029', 'MOTOR P-029', 'MOTOR P-029', 0.048, 48, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.08, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 208, 130, '2019-03-23 03:58:17', '2019-03-23 03:58:17'),
(742, 'T-VARIADOR P-030', 'MOTOR P-030', 'MOTOR P-030', 0.053, 53, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.19, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 208, 130, '2019-03-23 03:59:22', '2019-03-23 03:59:22'),
(743, 'T-VARIADOR P-283', 'MOTOR P-283', 'MOTOR P-283', 0.025, 25, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.56, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 208, 130, '2019-03-23 04:00:59', '2019-03-23 04:00:59'),
(744, 'T-VARIADOR P-310', 'MOTOR P-310', 'MOTOR P-310', 0.056, 56, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 1.26, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 208, 130, '2019-03-23 04:02:17', '2019-03-23 04:02:17'),
(745, 'T-VARIADOR P-311', 'MOTOR P-311', 'MOTOR P-311', 0.036, 36, 40, 29.84, 37.3, 3, 4, 'No', 'Multiconductor', 480, 44.86, 56.08, NULL, '', '6', 'Tuberia/coraza', '310-16', 65, 1, 'No más de 3', 1, '26-30', 1, 65, 0.167, 1.61, 0.8, 0.5999999999999999, 0.81, 'No Aplica', 'No Aplica', '1', NULL, '4X6+ AWG  THHN/THWN-2 TC 600V', 208, 130, '2019-03-23 04:03:13', '2019-03-23 04:03:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `memoria_media`
--

CREATE TABLE `memoria_media` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_conductor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tablero` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitud` double NOT NULL,
  `potencia` double NOT NULL,
  `fases` double NOT NULL,
  `tension` double NOT NULL,
  `calibre_min` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `corriente_nominal` double NOT NULL,
  `corriente_asignada` double NOT NULL,
  `calibre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_instal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabla` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cap_uno` double DEFAULT NULL,
  `nro_con_fase` double DEFAULT NULL,
  `cap_tot_con` double DEFAULT NULL,
  `aislamiento` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reactancia` double DEFAULT NULL,
  `resistencia` double DEFAULT NULL,
  `cos` double DEFAULT NULL,
  `sen` double DEFAULT NULL,
  `regulacion` double DEFAULT NULL,
  `cond_selec` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tablero_id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `memoria_media`
--

INSERT INTO `memoria_media` (`id`, `tag_conductor`, `tag`, `tablero`, `longitud`, `potencia`, `fases`, `tension`, `calibre_min`, `corriente_nominal`, `corriente_asignada`, `calibre`, `m_instal`, `tabla`, `cap_uno`, `nro_con_fase`, `cap_tot_con`, `aislamiento`, `reactancia`, `resistencia`, `cos`, `sen`, `regulacion`, `cond_selec`, `tablero_id`, `project_id`, `created_at`, `updated_at`) VALUES
(1, 'saf', 'asf', 'asf', 45, 34, 1, 4160, '8', 4.719, 5.898, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.8, 0.5999999999999999, NULL, NULL, 1, 61, '2018-10-24 01:24:45', '2018-10-24 01:24:45'),
(2, 'plataforma', 'plataforma', 'plataforma', 2, 300, 3, 4160, '8', 41.636, 52.045, '4/0', 'bandeja con tapa', '310-69 al 70%', 280, 3, 231, 'Si', 0.135, 0.203, 0.8, 0.5999999999999999, 1.6043, '3C X 3F N°4/0AWG THHN/THWN-2 TC 600V', 4, 112, '2019-01-29 22:52:26', '2019-01-29 22:58:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(41, '2014_10_12_000000_create_users_table', 1),
(42, '2014_10_12_100000_create_password_resets_table', 1),
(43, '2018_06_08_142601_create_permission_tables', 1),
(44, '2018_06_13_213811_create_projects_table', 1),
(45, '2018_07_04_124849_create_tablero_bajas_table', 1),
(46, '2018_07_04_125238_create_memoria_bajas_table', 1),
(47, '2018_07_05_154409_create_tablero_media_table', 1),
(48, '2018_07_13_131312_create_memoria_media_table', 1),
(49, '2018_07_13_135228_create_tablero_altas_table', 1),
(50, '2018_07_13_140517_create_memoria_altas_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(1, 'App\\User', 2),
(2, 'App\\User', 5),
(2, 'App\\User', 6),
(2, 'App\\User', 10),
(2, 'App\\User', 11),
(2, 'App\\User', 12),
(2, 'App\\User', 13),
(2, 'App\\User', 14),
(2, 'App\\User', 15),
(2, 'App\\User', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `projects`
--

INSERT INTO `projects` (`id`, `name`, `url`, `estado`, `created_at`, `updated_at`) VALUES
(18, 'hollj', 'local/1CKqc6L0TOpRMlmLh1Ts0YD77bKG2vUnez67hvVI.jpeg', 1, '2018-09-07 22:23:16', '2018-09-07 22:23:16'),
(19, 'uj', 'local/9Id8syp4OlUlpsVpWpMx8yKDNX4kspRiaQz5BmBE.jpeg', 2, '2018-10-03 21:51:55', '2018-10-03 21:51:55'),
(20, 'edgg', 'local/ayIjSWTBUmNJ4DcLbXZgpIM5dhHkkPppiwPk9brM.jpeg', 2, '2018-10-05 22:31:16', '2018-10-05 22:31:16'),
(21, 'desa', 'local/p7pPMm5a8dvzaJrt3vID3JQCfJhJs7HB2LuKns4J.jpeg', 2, '2018-10-13 01:20:38', '2018-10-13 01:20:38'),
(22, 'asaadadafasvag', 'local/ZQcMYMkcpmizatEh1kbqUBZTPnVaIg2k06tsoCJv.jpeg', 2, '2018-10-17 01:50:55', '2018-10-17 01:50:55'),
(23, 'prueba', 'local/gRTuwr6SHBPHZUc7z2vpg4bs4IlAWKUzoKAXvQst.jpeg', 2, '2018-10-17 02:25:19', '2018-10-17 02:25:19'),
(24, 'dgss', 'local/5IpXTCUMRi882DT9kHKcBrxvJRSPyqDaK37eB5cJ.jpeg', 2, '2018-10-18 21:54:17', '2018-10-18 21:54:17'),
(25, 'Test', 'local/VesqinqvTLijRjLqimSUj5SQos4TUWZF5DM7sG1u.png', 2, '2018-10-18 22:14:29', '2018-10-18 22:14:29'),
(26, 'CAMPO PALAGUA', 'local/5TYW9lHzGzvVioFBQ2Oi67a4y75Ag113aqsQKHmR.jpeg', 2, '2018-10-18 22:17:25', '2018-10-18 22:17:25'),
(27, 'hj', 'local/Xcs3MXN7YPnkfkASBmaEjChWbr9Ozvy1hgUk8t55.jpeg', 2, '2018-10-18 22:31:01', '2018-10-18 22:31:01'),
(28, 'q', 'local/ZQQKWACKIgD6CtTOFWwMm60xA1n2alPWPXiMYA6x.jpeg', 2, '2018-10-19 00:57:53', '2018-10-19 00:57:53'),
(29, 'q', 'local/Qc19mnPCcAsJXORsoUFcH2nXQanFTSVh6Qyqfu9g.jpeg', 2, '2018-10-19 00:58:51', '2018-10-19 00:58:51'),
(30, 'a', 'local/kI5zItZASSUi8MUQ0xnSIFUmCxCNUJEvHPUIekO8.jpeg', 2, '2018-10-19 01:01:30', '2018-10-19 01:01:30'),
(31, 'a', 'local/vpqs9PlnOP3ckk9N5uFfpXHPSo41ptxVii6FRvFM.jpeg', 2, '2018-10-19 01:02:03', '2018-10-19 01:02:03'),
(32, 'a', 'local/q6mHW4XweIQuvfPdpS1DBsYjLKVcbL8GBlbOG1cv.png', 2, '2018-10-19 01:03:21', '2018-10-19 01:03:21'),
(33, 'p', 'local/8bfSO9Ab5HuUWnaXW8iW63ybkIdG75GAa4RpTBp7.jpeg', 2, '2018-10-19 01:05:57', '2018-10-19 01:05:57'),
(34, 'p', 'local/ik6SMPF1MvHYa6V3irsYkuOMFtKrYE05oBWkV3iR.jpeg', 2, '2018-10-19 01:08:25', '2018-10-19 01:08:25'),
(35, 'A', 'local/tcxvhiZ5trHDpIop0ofQSEC65DJxaiU9E5w79R7o.jpeg', 2, '2018-10-19 01:09:14', '2018-10-19 01:09:14'),
(36, 'A', 'local/rHcOjG6HxuLkPdlELxkmJtb7R69zS3x4VSnmKT6c.jpeg', 2, '2018-10-19 01:09:47', '2018-10-19 01:09:47'),
(37, 'q', 'local/LtsvcKiYGTTtyxty3IQ7jBG3AYDHYmcgonTryWRg.png', 2, '2018-10-19 01:13:37', '2018-10-19 01:13:37'),
(38, 'A', 'local/cCiRLy2E8spfowGqHPulZ4DRYQVnhWFVukNdQiff.jpeg', 2, '2018-10-19 01:16:49', '2018-10-19 01:16:49'),
(39, 'q', 'local/CkCM4bXeI8lPx7Kkxa70jMhFPzXTkYxzvUsUy7JP.jpeg', 2, '2018-10-19 01:20:40', '2018-10-19 01:20:40'),
(40, 'test', 'local/xkEifFePuNDEcW9rAEcHtRxaSgxc8PvNLUKF9pe3.png', 2, '2018-10-19 01:26:16', '2018-10-19 01:26:16'),
(41, 'test', 'local/o1AbdxSfLhJ6NMcPibwzNGciRb7nFfdjxl5Uyua7.png', 2, '2018-10-19 01:27:22', '2018-10-19 01:27:22'),
(42, 'TEST AME', 'local/14EpwfZCr63nqiReKFGnDaSID5lG5RhuGpsQ11L9.png', 2, '2018-10-19 01:40:09', '2018-10-19 01:40:09'),
(43, 'sdw', 'local/QnQXnxDQBbtiXJ3Ycw3HYkBCoU9khuB2btidFWRz.jpeg', 2, '2018-10-19 01:50:33', '2018-10-19 01:50:33'),
(44, 'q', 'local/V7vsBg5EpJ5U9tbBk5MFzwWBKpA2CgqsVDx60gKD.jpeg', 2, '2018-10-19 02:10:46', '2018-10-19 02:10:46'),
(45, 'a', 'local/ac058YcUHQiChA4F5toaIESAHQihhUV9Mtk1fDmC.jpeg', 2, '2018-10-19 02:42:27', '2018-10-19 02:42:27'),
(46, 'p', 'local/v4oWWRSf0yBZVxXOLd8BEYhARNect0MNkpn8BmvM.jpeg', 2, '2018-10-19 02:43:02', '2018-10-19 02:43:02'),
(47, 'm', 'local/Z5polDgV3pRbQdYFtCdTCX2fx3JBoPgjoK1tmSVU.jpeg', 2, '2018-10-19 02:43:34', '2018-10-19 02:43:34'),
(48, 'm', 'local/r1IklolMKQIG2lEGKWcLI3rxlSyWjiPmRed8LvLI.jpeg', 2, '2018-10-19 02:44:01', '2018-10-19 02:44:01'),
(49, 'k', 'local/hNo02tzWwLOJaA74j99G8bw72Bo3HYVU9HtOvAJ7.jpeg', 2, '2018-10-19 02:45:58', '2018-10-19 02:45:58'),
(50, 'r', 'local/5vxj95MMN1rsZhxXYJYqg097fU3lei6yCmpEaGin.jpeg', 2, '2018-10-19 02:48:14', '2018-10-19 02:48:14'),
(51, 'r', 'local/eH62sCj5xbpc8X2PgrfuXjqtWDs5wr5S2oYtQ3Aw.jpeg', 2, '2018-10-19 18:20:55', '2018-10-19 18:20:55'),
(52, 'test', 'local/aeeg2n9mjYxXRbeJpcy3dgwkdcqYA2eS0KXr9kGW.png', 2, '2018-10-19 21:10:33', '2018-10-19 21:10:33'),
(53, 'E4-375-Diseño SE 48', 'local/XvA8C3Lpik78Dq4jCdrxVAIWhdSQquGHQF92HMkG.png', 1, '2018-10-19 21:51:26', '2018-10-19 21:51:26'),
(54, 'ek', 'local/U5OyvlAk2ehaBalAUGGjFUNItkuPkVWA4oLH9zZ5.jpeg', 2, '2018-10-22 18:08:47', '2018-10-22 18:08:47'),
(55, 'E4-375-Diseño SE 37', 'local/2VVkh1X54Oa0gsCcxS7MWJVp4tCaGik8vaqNrOVI.png', 1, '2018-10-22 19:10:52', '2018-10-22 19:10:52'),
(56, 'prueba', 'local/DHXEE0jQD1ZzazkZn8BwiFtKXfr4eYdSD4BcjikY.jpeg', 2, '2018-10-22 20:12:12', '2018-10-22 20:12:12'),
(57, 'E4-375-Diseño SE 03', 'local/dOsk6OpzEPDYeUI4lJK3Nv8umNN0Chgx2C30YxA3.png', 1, '2018-10-22 21:17:12', '2018-10-22 21:17:12'),
(58, 'SE-PWT1', 'local/JpzYBH7zgeXipEwLzLT1E5pTme7ABu51VMfStp1V.png', 1, '2018-10-23 02:45:05', '2018-10-23 02:45:05'),
(59, 'DISEÑOS RETIE SUBESTACIONES CAMPO PALAGUA', 'local/P3SHsFPjl2oHO752yMGL9xHRrjiK89H0oAmRyEVK.jpeg', 2, '2018-10-23 19:50:26', '2018-10-23 19:50:26'),
(60, 'htdthdh', 'local/0fbnihQrSXzfJWtyIcQtaO69uI0TqE1PVSLsNE9f.jpeg', 2, '2018-10-23 20:18:57', '2018-10-23 20:18:57'),
(61, 'gsdgsd', 'local/F6Ct6TqTDFoeHp6jwTtHZoCWEJYhlqnahas1E4fS.jpeg', 2, '2018-10-24 01:20:44', '2018-10-24 01:20:44'),
(62, 'qr', 'local/uNSQSimlGn069mT7k1dq8pM9Joukr1X1VHW1fUHQ.jpeg', 2, '2018-10-24 01:30:48', '2018-10-24 01:30:48'),
(63, 'PWT-4', 'local/BrBfvnd9voGo21EpEWfD7zVYKfElS5wCV8YK5fxX.png', 1, '2018-10-24 01:35:57', '2018-10-24 01:35:57'),
(64, 'Prueba20', 'local/JC0XD2VYlmD4hHFpuMxhRdh0HyAWuU6xP9Ko1Cp9.jpeg', 2, '2018-10-24 19:16:06', '2018-10-24 19:16:06'),
(65, 'qe', 'local/VQqdxlc26LOFezsMFLnOslcO3lK2vhj3tpMdpxFq.jpeg', 2, '2018-10-24 20:35:29', '2018-10-24 20:35:29'),
(66, 'AS', 'local/a6iAuV88sEZMgRoZtrSoQNdn6CTc899Mt2RyDIkv.jpeg', 2, '2018-10-25 21:44:27', '2018-10-25 21:44:27'),
(67, 'QS', 'local/hK0PreYzWHGPn0YvdUmvfv5ByNxao6sTTlf5aQKO.jpeg', 2, '2018-10-26 00:48:47', '2018-10-26 00:48:47'),
(68, 'OU', 'local/h9rXkySEmjIzj3xfjvoSs2xDgSoVJ3syDbbsGwIS.jpeg', 2, '2018-10-26 02:29:41', '2018-10-26 02:29:41'),
(69, 'OU', 'local/kJZqX3hp73IqwFgzGdr3i5ZsepXpXp1UM7fYMjR6.jpeg', 2, '2018-10-26 02:47:44', '2018-10-26 02:47:44'),
(70, 'ws', 'local/fmleTtC70K98jFaE3Mwqq5ouSD6WwJEYUN5ayRBS.jpeg', 2, '2018-10-29 21:16:24', '2018-10-29 21:16:24'),
(71, 'SE-32', 'local/CFZuW7pX5Nk9Z0T1Om97refjksLMjmNxy8k5OrtZ.png', 1, '2018-10-29 22:15:29', '2018-10-29 22:15:29'),
(72, 'CAMPO PALAGUA', 'local/JLkgMqTnMYXlbe2qDkgQFUQ84gnJCKZo1bljT3dk.jpeg', 2, '2018-10-30 00:21:54', '2018-10-30 00:21:54'),
(73, 'CAMPO PALAGUA', 'local/2bOCt5XtnI3MNEYzbIYNDPLnbYLTNj0LEwlNK2vA.jpeg', 2, '2018-10-30 02:55:42', '2018-10-30 02:55:42'),
(74, 'ed', 'local/DDhM2R5lut5ylgkjlCm7chaklX7cAHO1zrgIE2t0.jpeg', 2, '2018-10-30 17:51:23', '2018-10-30 17:51:23'),
(75, 'hola', 'local/Dl4Y8KCv35LPinhPcC1vGZMPieCS30HNK9Rg1Boq.png', 2, '2018-10-30 18:02:32', '2018-10-30 18:02:32'),
(76, 'f', 'local/Njt0VMhHHaHqF3evORRRHpL2YoirWY82byush7dB.png', 2, '2018-10-30 19:29:03', '2018-10-30 19:29:03'),
(77, 'aa', 'local/FNTpAfrmdEQKrkIYUcdR6Iaji2z2FWxurIk0LGOX.jpeg', 2, '2018-10-30 19:30:43', '2018-10-30 19:30:43'),
(78, 'KV', 'local/2ySWrGgmcVLg3Jqi3jZMpj9p1MKLTWC9ieGj6vG2.jpeg', 2, '2018-10-30 19:33:46', '2018-10-30 19:33:46'),
(79, 'SE-30', 'local/hq8Gt52aYo1Ks5yCz9sUsBlOhyDw7Qj81sAWlJ01.png', 1, '2018-11-01 01:34:39', '2018-11-01 01:34:39'),
(80, 'SE-42', 'local/aFryKnG9ywrRN6Bsgj3JHjzINGkKi8keynbKBWrH.png', 1, '2018-11-03 02:00:12', '2018-11-03 02:00:12'),
(81, 'SE-30', 'local/TFPIMDY1F5pPBaOAOYYipjTiqugUSmvVP38JX2IW.png', 1, '2018-11-07 18:52:02', '2018-11-07 18:52:02'),
(82, 'SE-34', 'local/xvauVa7bTI3SVAIHeeOobr1ADolUrr7KZrjbuirI.png', 1, '2018-11-07 21:03:25', '2018-11-07 21:03:25'),
(83, 'SE-45', 'local/tXP0ukRQBzdoC7HjPGfrcy4GhIjuJYmedpnIAQh4.png', 2, '2018-11-08 00:21:44', '2018-11-08 00:21:44'),
(84, 'SE-35', 'local/TeubzOrCw0LLozdPEstL2yQhCjziuxeZTYolxpGT.png', 2, '2018-11-08 02:28:18', '2018-11-08 02:28:18'),
(85, 'j', 'local/3AuPmxWtQt6eRk2qSTzejLjeeT25wNN4AL8786Y4.jpeg', 2, '2018-11-08 21:03:07', '2018-11-08 21:03:07'),
(86, 'j', 'local/pWJzWvGmtQjwi67M755Qdi5P6MctooEaLDYPNUzh.jpeg', 2, '2018-11-08 21:11:50', '2018-11-08 21:11:50'),
(87, 'SE-43', 'local/3zuEpBHSYPEvT4b96jLHhMPsuYtdB4h6jle5vmDx.png', 1, '2018-11-09 22:22:20', '2018-11-09 22:22:20'),
(88, 'SE-47', 'local/1tNj8rrhhbasIyW6xkRZ9tJNZNXymvd1AOGU0ED6.png', 1, '2018-11-10 00:25:03', '2018-11-10 00:25:03'),
(89, 'SE-31', 'local/okboaI9pegZ9iv4nJ9pP4OxPXrGm0045o7NL5E8t.png', 1, '2018-11-10 00:59:52', '2018-11-10 00:59:52'),
(90, 'SE-27', 'local/X1S7rulQ5uH829rOXsI9xMvbA5NTXv99GECmpNpQ.png', 1, '2018-11-10 01:32:56', '2018-11-10 01:32:56'),
(91, 'a', 'local/bmvZlBjBqvQfnNdlBk89waSXtJMM99167J7zBNNA.jpeg', 2, '2018-11-13 17:57:46', '2018-11-13 17:57:46'),
(92, 'q', 'local/Y1bS4nkZ6G0rG7Q94ZAVlrypbzxRXqA1Q6BCsQSX.png', 2, '2018-11-13 19:34:53', '2018-11-13 19:34:53'),
(93, 'as', 'local/1tiqT2IBP8dMgAbtCMhKl75SnDAskasaJmlfllWU.png', 2, '2018-11-15 18:28:59', '2018-11-15 18:28:59'),
(94, 'SE-5', 'local/bfKvQ1S166UaiYJWMy4YqUW3OSprpgraayVeCBqm.png', 1, '2018-12-07 01:24:16', '2018-12-07 01:24:16'),
(95, 'karol', 'local/HgsicyPytrHcrWd8O88MyqzQqZSprkF0ofgaJo4r.jpeg', 2, '2018-12-11 02:43:32', '2018-12-11 02:43:32'),
(96, 'Juliana', 'local/B1oj8vFQj1NnykQvAcqk0btEKa6lXCs9az07MCTq.png', 2, '2018-12-11 21:52:02', '2018-12-11 21:52:02'),
(97, 'karol', 'local/IIHurpRBHfMLVbg7P5oHAKbYnneyzuVoPiMTyG7O.png', 2, '2018-12-18 21:53:19', '2018-12-18 21:53:19'),
(98, 'SE-14', 'local/tXv1JCabyxVS7oQSKWXMwMv3otNeBiZlsMjWlFqX.png', 1, '2018-12-19 02:07:14', '2018-12-19 02:07:14'),
(99, 'TALLERES ÁREA INDUSTRIAL PALAGUA', 'local/njpLOxtUKQn4ZkTjuPiP75ksY3jSV7BHAkdwfeV8.jpeg', 2, '2018-12-21 00:27:43', '2018-12-21 00:27:43'),
(100, 'SE-6', 'local/rUm2mviCc3Rn2c3f7hi8c3QcOvWYt25qoLPHbvwK.png', 1, '2019-01-17 00:52:11', '2019-01-17 00:52:11'),
(101, 'SE-6A', 'local/k18sGbeGYOFSKSJzdlFSxy2o098JibLmfmxWYNDU.png', 1, '2019-01-17 02:43:49', '2019-01-17 02:43:49'),
(102, 'rubiales', 'local/OUZa9d09tzQvDjs022QH2IseBl2SitQeUdk9o7Bs.', 2, '2019-01-18 01:37:22', '2019-01-18 01:37:22'),
(103, 'zzz', 'local/FzdXTHbp2Qk79As0Av3h1ADjKrsdrrVwSkwgXxjz.jpeg', 2, '2019-01-18 20:37:23', '2019-01-18 20:37:23'),
(104, 'SE-8', 'local/XgfGdxlqlCrMLIQUZXEmPDyyT2NUWjYLANwOQFiN.png', 1, '2019-01-23 21:12:05', '2019-01-23 21:12:05'),
(105, 'SE-8A', 'local/TX73G6tki6xiNIkn8gxiI91DgNS9QZOunT5PWrk9.png', 1, '2019-01-23 21:56:26', '2019-01-23 21:56:26'),
(106, 'SE-13', 'local/D9E5hJ678yXc1KmmVgl2urR0ZPdNwk8WcbqORyyE.png', 1, '2019-01-24 00:47:52', '2019-01-24 00:47:52'),
(107, 'SE-8A', 'local/8qzNjtU6QCPGHUxMGKPJCwe2ZAp24ROB7BgcXtA3.png', 1, '2019-01-24 01:56:41', '2019-01-24 01:56:41'),
(108, 'SE-13A', 'local/Mfp94x2Ua906NsrBPKmoASbcCa5N9r068mq0v5v4.png', 1, '2019-01-24 01:57:17', '2019-01-24 01:57:17'),
(109, 'SE-14', 'local/eQ0pP6ougWMB9ELyLJ1YCYTepSfAnIhPpOA6ciT9.png', 1, '2019-01-29 21:42:55', '2019-01-29 21:42:55'),
(110, 'juli', 'local/NuCALDFLnzxzALLaYIA7grx221L8K5lNnGmDKj5z.png', 2, '2019-01-29 22:38:26', '2019-01-29 22:38:26'),
(111, 'Juliana', 'local/MAjgnexkpVGLbSsLUp4JkVzVHJfTZeSn269VqrbX.png', 2, '2019-01-29 22:48:56', '2019-01-29 22:48:56'),
(112, 'Juliana1', 'local/ttsztRmW85KvYInUwnFYWXGJaguLPKrRLxTh4kct.png', 2, '2019-01-29 22:51:28', '2019-01-29 22:51:28'),
(113, 'SE-28', 'local/m2RauTeWOA9XcvXajHNapXiasSXhRLgSc3cagyfw.png', 1, '2019-01-31 20:49:29', '2019-01-31 20:49:29'),
(114, 'SE-28A', 'local/PrpT4LTGLkh9CeAFJVpU5qRe7tAQjh9GCrUe2j8f.png', 1, '2019-01-31 21:27:33', '2019-01-31 21:27:33'),
(115, 'SE-41', 'local/SZYHf5xs98n2fxQWXIKQHq1X1eu2djGndSgUA9ri.png', 1, '2019-02-01 02:24:38', '2019-02-01 02:24:38'),
(116, 'SE-38', 'local/0C14dyGW1m7HIkxJuKNZf79rknLoCX8lcbicrkEC.png', 1, '2019-02-05 02:42:57', '2019-02-05 02:42:57'),
(117, 'FOSO 100', 'local/8P46ciJkC0GdYXQkyU6BpEhy0v6LsiiHTrsMkCOk.jpeg', 1, '2019-02-05 21:20:16', '2019-02-05 21:20:16'),
(118, 'SE-36', 'local/tHUfOSF9AhppNjLazoj7UYA9T5hVaCYpg9ad7tNW.png', 1, '2019-02-06 20:06:42', '2019-02-06 20:06:42'),
(119, 'tr', 'local/qUvVbsHk07eFssw6ZPcQUi4vJkIdaQdYiVRSfaI1.txt', 2, '2019-03-01 22:22:51', '2019-03-01 22:22:51'),
(120, 'tr', 'local/SwwbFbNpWDVITJOWeJi2LN3tpKpiYJrX3zHMP4Sd.txt', 2, '2019-03-01 23:27:43', '2019-03-01 23:27:43'),
(121, 'SE-04', 'local/AvHLqxWf670OncEqud2s5k9HxcJoWNayZgJ2FR4b.png', 1, '2019-03-20 21:10:20', '2019-03-20 21:10:20'),
(122, 'SE-18', 'local/Ykdy2t9TomUVSargo61MSZsNJ0agzZ8m7W99ii6g.png', 1, '2019-03-21 00:17:12', '2019-03-21 00:17:12'),
(123, 'SE-22', 'local/edzNxhoiq2TG8ecx17KP9AFlJCniSe2tsxeGqEGj.png', 1, '2019-03-21 02:13:27', '2019-03-21 02:13:27'),
(124, 'SE-46', 'local/hilgm7m6lqWtKrY7lL1u9F4pGTxtEqQB19ZIkKu3.png', 1, '2019-03-22 00:41:22', '2019-03-22 00:41:22'),
(125, 'SE-22', 'local/c8BAu3xUPIk3SuqPIQ4q2RZsJhUTAPEkOWRb2dvY.png', 1, '2019-03-22 01:14:14', '2019-03-22 01:14:14'),
(126, 'SE-21', 'local/831LJeAFokVPTS23krfXIYsYa8KOiLWjEZnM6RGc.png', 1, '2019-03-22 01:25:04', '2019-03-22 01:25:04'),
(127, 'SE-20', 'local/SXs0WuYJELnhF5E0XZmt7PxJGfgh6NMfqZsjNixQ.png', 1, '2019-03-22 01:42:11', '2019-03-22 01:42:11'),
(128, 'SE-07', 'local/HLSxxh2xYIV56X1cJeRR75Oz5OGWxNr1sRmoc33g.png', 1, '2019-03-22 02:04:10', '2019-03-22 02:04:10'),
(129, 'SE-10', 'local/H1EOh8Sw0oU22oUEJo1QgygyyLgTXnTBYkwpWc60.png', 1, '2019-03-22 20:16:54', '2019-03-22 20:16:54'),
(130, 'SE-15', 'local/Si7nDkabMeiLzFPO4YkRMmAviYkFISCkbnO7OZuF.png', 1, '2019-03-22 20:43:07', '2019-03-22 20:43:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proteccion_selec`
--

CREATE TABLE `proteccion_selec` (
  `fija` int(11) NOT NULL,
  `ajustable` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proteccion_selec`
--

INSERT INTO `proteccion_selec` (`fija`, `ajustable`) VALUES
(15, '11-16'),
(16, '11-16'),
(20, '18-25'),
(25, '22-32'),
(30, '22-32'),
(32, '28-40'),
(40, '35-50'),
(50, '44-63'),
(60, '44-63'),
(63, '56-80'),
(80, '70-100'),
(100, '87-125'),
(125, '112-160'),
(150, '112-160'),
(160, '140-200'),
(175, '140-200'),
(200, '175-250'),
(225, '175-250'),
(250, '160-320'),
(320, '160-400'),
(400, '250-500'),
(500, '250-630'),
(630, '300-700'),
(800, '400-1000'),
(1250, '900-1400'),
(1500, '1350-2100'),
(1600, '1350-2100'),
(1750, '1350-2100'),
(2000, '1350-2100'),
(2500, '1980-3080');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `revisiones`
--

CREATE TABLE `revisiones` (
  `id` int(11) NOT NULL,
  `idproject` int(11) NOT NULL,
  `fecha` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `memoria` int(11) NOT NULL,
  `descripcion` varchar(200) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcado de datos para la tabla `revisiones`
--

INSERT INTO `revisiones` (`id`, `idproject`, `fecha`, `memoria`, `descripcion`) VALUES
(1, 18, '2018-09-11', 1, 'hfghfgh'),
(2, 18, '2018-09-05', 1, 'ewfdd'),
(3, 18, '2018-09-05', 1, 'rthrt'),
(4, 18, '2018-09-06', 1, 'rtyry'),
(5, 18, '2018-09-14', 2, 'hjfgh'),
(6, 18, '2018-09-19', 2, 'gfjghfj'),
(7, 18, '2018-09-12', 1, 'dsf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2018-08-01 22:22:19', '2018-08-01 22:22:19'),
(2, 'User', 'web', '2018-08-01 22:22:19', '2018-08-01 22:22:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_250_95_ntc`
--

CREATE TABLE `tabla_250_95_ntc` (
  `intensidad` int(11) NOT NULL,
  `calibre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tabla_250_95_ntc`
--

INSERT INTO `tabla_250_95_ntc` (`intensidad`, `calibre`) VALUES
(15, '14'),
(20, '12'),
(30, '10'),
(40, '10'),
(60, '10'),
(100, '8'),
(200, '6'),
(300, '4'),
(400, '3'),
(500, '2'),
(600, '1'),
(800, '1/0'),
(1000, '2/0'),
(1200, '3/0'),
(1600, '4/0'),
(2000, '250'),
(2500, '350'),
(3000, '400'),
(4000, '500'),
(5000, '700'),
(6000, '800');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablero_altas`
--

CREATE TABLE `tablero_altas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tension` double NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tablero_altas`
--

INSERT INTO `tablero_altas` (`id`, `name`, `tension`, `project_id`, `created_at`, `updated_at`) VALUES
(1, 'aesfs', 24, 61, '2018-10-24 01:20:50', '2018-10-24 01:20:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablero_bajas`
--

CREATE TABLE `tablero_bajas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tension` double NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tablero_bajas`
--

INSERT INTO `tablero_bajas` (`id`, `name`, `tension`, `project_id`, `created_at`, `updated_at`) VALUES
(17, 'sdsds', 120, 19, '2018-10-03 22:11:39', '2018-10-03 22:11:39'),
(18, 'A', 480, 19, '2018-10-04 00:32:37', '2018-10-04 00:32:37'),
(19, 'as', 127, 19, '2018-10-04 18:20:59', '2018-10-04 18:20:59'),
(20, 's', 120, 19, '2018-10-05 00:05:38', '2018-10-05 00:05:38'),
(21, 'f', 120, 19, '2018-10-05 20:21:23', '2018-10-05 20:21:23'),
(22, 'sda', 120, 20, '2018-10-05 22:31:28', '2018-10-05 22:31:28'),
(23, 'prueba', 480, 20, '2018-10-11 01:37:16', '2018-10-11 01:37:16'),
(24, 'K', 120, 20, '2018-10-12 02:05:45', '2018-10-12 02:05:45'),
(25, 'ase', 120, 21, '2018-10-13 01:20:46', '2018-10-13 01:20:46'),
(26, 'sdw', 120, 22, '2018-10-17 01:51:01', '2018-10-17 01:51:01'),
(27, 'prueba', 480, 23, '2018-10-17 02:25:39', '2018-10-17 02:25:39'),
(28, 'vb', 120, 24, '2018-10-18 21:54:23', '2018-10-18 21:54:23'),
(29, 'q', 120, 26, '2018-10-19 00:57:22', '2018-10-19 00:57:22'),
(30, 'q', 120, 39, '2018-10-19 01:20:49', '2018-10-19 01:20:49'),
(31, 'q', 480, 44, '2018-10-19 02:10:55', '2018-10-19 02:10:55'),
(32, 'q', 120, 49, '2018-10-19 02:46:07', '2018-10-19 02:46:07'),
(33, 'ggf', 120, 51, '2018-10-19 18:21:10', '2018-10-19 18:21:10'),
(34, 'TRANSFORMADOR', 480, 53, '2018-10-19 21:51:52', '2018-10-19 21:51:52'),
(35, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN', 480, 53, '2018-10-19 21:54:21', '2018-10-19 21:54:21'),
(36, 'TABLERO VARIADOR P346  480V', 480, 53, '2018-10-19 22:05:37', '2018-10-19 22:05:37'),
(37, 'TABLERO VARIADOR P349  480V', 480, 53, '2018-10-19 22:11:17', '2018-10-19 22:11:17'),
(38, 'TABLERO VARIADOR P350  480V', 480, 53, '2018-10-19 22:14:14', '2018-10-19 22:14:14'),
(39, 'ABLERO VARIADOR P049  480V', 480, 53, '2018-10-19 22:16:39', '2018-10-19 22:16:39'),
(40, 'a', 120, 54, '2018-10-22 18:08:58', '2018-10-22 18:08:58'),
(41, 'TRANSFORMADOR SE-37  480 V', 480, 55, '2018-10-22 19:11:27', '2018-10-22 19:11:27'),
(42, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 480, 55, '2018-10-22 19:14:04', '2018-10-22 19:14:04'),
(43, 'T-VARIADOR C-015', 480, 55, '2018-10-22 19:28:49', '2018-10-22 19:28:49'),
(44, 'T-VARIADOR C-024', 480, 55, '2018-10-22 19:30:24', '2018-10-22 19:30:24'),
(45, 'T-VARIADOR C-035', 480, 55, '2018-10-22 19:31:29', '2018-10-22 19:31:29'),
(46, 'prueba', 480, 56, '2018-10-22 20:13:16', '2018-10-22 20:13:16'),
(47, 'TRANSFORMADOR SE-03 480 V', 480, 57, '2018-10-22 21:18:28', '2018-10-22 21:18:28'),
(48, 'TGD TABLERO GENERAL', 120, 57, '2018-10-22 21:29:45', '2018-10-22 21:29:45'),
(49, 'TGD TABLERO GENERAL', 480, 57, '2018-10-22 21:32:42', '2018-10-22 21:32:42'),
(50, 'TGD- 3A', 480, 57, '2018-10-22 21:37:03', '2018-10-22 21:37:03'),
(51, 'TGD- 3B 480', 480, 57, '2018-10-22 21:44:17', '2018-10-22 21:44:17'),
(52, 'T-VARIADOR P-234', 480, 57, '2018-10-22 21:52:15', '2018-10-22 21:52:15'),
(53, 'T-VARIADOR P-257', 480, 57, '2018-10-22 21:55:48', '2018-10-22 21:55:48'),
(54, 'T-VARIADOR P-353', 480, 57, '2018-10-22 21:58:36', '2018-10-22 21:58:36'),
(55, 'T-VARIADOR P-010', 480, 57, '2018-10-22 22:00:06', '2018-10-22 22:00:06'),
(56, 'T-VARIADOR P-007 480', 480, 57, '2018-10-22 22:03:17', '2018-10-22 22:03:17'),
(57, 'T-VARIADOR P-259', 480, 57, '2018-10-22 22:06:31', '2018-10-22 22:06:31'),
(58, 'T-VARIADOR P-260', 480, 57, '2018-10-22 22:07:47', '2018-10-22 22:07:47'),
(59, 'T-VARIADOR P-307', 480, 57, '2018-10-22 22:09:31', '2018-10-22 22:09:31'),
(60, 'T-VARIADOR P-313', 480, 57, '2018-10-22 22:10:49', '2018-10-22 22:10:49'),
(61, 'T-VARIADOR P-352', 480, 57, '2018-10-22 22:12:29', '2018-10-22 22:12:29'),
(62, 'GENERADOR', 480, 58, '2018-10-23 02:46:55', '2018-10-23 02:46:55'),
(63, 'TGD TABLERO GENERAL', 480, 58, '2018-10-23 02:54:28', '2018-10-23 02:54:28'),
(64, 'T-VARIADOR PWT-01', 480, 58, '2018-10-23 03:04:30', '2018-10-23 03:04:30'),
(65, 'TGD', 480, 59, '2018-10-23 19:50:42', '2018-10-23 19:50:42'),
(66, 'T-VARIADOR PWT-03', 480, 58, '2018-10-24 01:21:53', '2018-10-24 01:21:53'),
(67, 'T-VARIADOR PWT-09', 480, 58, '2018-10-24 01:23:04', '2018-10-24 01:23:04'),
(68, 'T-VARIADOR PWT-10', 480, 58, '2018-10-24 01:24:26', '2018-10-24 01:24:26'),
(69, 'w', 120, 62, '2018-10-24 01:30:58', '2018-10-24 01:30:58'),
(70, 'GENERADOR 480', 480, 63, '2018-10-24 01:36:11', '2018-10-24 01:36:11'),
(71, 'TGD TABLERO GENERAL 480', 480, 63, '2018-10-24 01:39:46', '2018-10-24 01:39:46'),
(72, 'T-VARIADOR PWT-04', 480, 63, '2018-10-24 01:46:12', '2018-10-24 01:46:12'),
(73, 'T-VARIADOR PWT-12', 480, 63, '2018-10-24 01:47:27', '2018-10-24 01:47:27'),
(74, 'T-VARIADOR PWT-13', 480, 63, '2018-10-24 01:48:49', '2018-10-24 01:48:49'),
(75, 'T-VARIADOR PWT-14', 480, 63, '2018-10-24 01:49:47', '2018-10-24 01:49:47'),
(76, 'T-VARIADOR PWT-15', 480, 63, '2018-10-24 01:53:03', '2018-10-24 01:53:03'),
(77, 'Prueba20', 480, 64, '2018-10-24 19:16:21', '2018-10-24 19:16:21'),
(78, 'w', 440, 65, '2018-10-24 20:35:41', '2018-10-24 20:35:41'),
(79, 'QA', 460, 66, '2018-10-25 21:44:35', '2018-10-25 21:44:35'),
(80, 'QS', 120, 67, '2018-10-26 00:48:57', '2018-10-26 00:48:57'),
(81, 'ws', 120, 68, '2018-10-26 02:29:49', '2018-10-26 02:29:49'),
(82, 'Y', 480, 69, '2018-10-26 02:47:53', '2018-10-26 02:47:53'),
(83, 'TRANSFORMADOR SE-32', 480, 71, '2018-10-29 22:19:49', '2018-10-29 22:19:49'),
(84, 'TGD', 480, 72, '2018-10-30 00:22:15', '2018-10-30 00:22:15'),
(85, 'TRANSFORMADOR', 480, 71, '2018-10-30 00:25:18', '2018-10-30 00:25:18'),
(86, 'CAMPO PALAGUA', 480, 73, '2018-10-30 02:56:15', '2018-10-30 02:56:15'),
(87, 'a', 120, 77, '2018-10-30 19:30:54', '2018-10-30 19:30:54'),
(88, 'hu', 120, 78, '2018-10-30 19:33:56', '2018-10-30 19:33:56'),
(89, 'TGD- TABLERO GENERAL DE DISTRIBUCION  480', 480, 71, '2018-10-31 20:16:19', '2018-10-31 20:16:19'),
(90, 'T-VARIADOR P-001', 480, 71, '2018-10-31 20:31:54', '2018-10-31 20:31:54'),
(91, 'T-VARIADOR P-235', 480, 71, '2018-10-31 20:33:36', '2018-10-31 20:33:36'),
(92, 'T-VARIADOR P-249', 480, 71, '2018-10-31 20:36:16', '2018-10-31 20:36:16'),
(93, 'TRANSFORMADOR SE-30  480 V', 480, 79, '2018-11-01 01:35:25', '2018-11-01 01:35:25'),
(94, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 480, 79, '2018-11-01 02:04:07', '2018-11-01 02:04:07'),
(95, 'T-VARIADOR P-251', 480, 79, '2018-11-01 02:29:51', '2018-11-01 02:29:51'),
(96, 'TRANSFORMADOR SE-42', 480, 80, '2018-11-03 02:01:27', '2018-11-03 02:01:27'),
(97, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 480, 80, '2018-11-03 02:12:41', '2018-11-03 02:12:41'),
(98, 'TRANSFORMADOR SE-42', 480, 81, '2018-11-07 18:57:14', '2018-11-07 18:57:14'),
(99, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 480, 81, '2018-11-07 19:13:08', '2018-11-07 19:13:08'),
(100, 'T-VARIADOR P-269', 480, 81, '2018-11-07 19:22:02', '2018-11-07 19:22:02'),
(101, 'T-VARIADOR P-274', 480, 81, '2018-11-07 19:24:14', '2018-11-07 19:24:14'),
(102, 'T-VARIADOR P-263', 480, 81, '2018-11-07 19:25:41', '2018-11-07 19:25:41'),
(103, 'T-VARIADOR P-275', 480, 81, '2018-11-07 19:34:33', '2018-11-07 19:34:33'),
(104, 'TRANSFORMADOR SE-34', 480, 82, '2018-11-07 21:05:05', '2018-11-07 21:05:05'),
(105, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 480, 82, '2018-11-07 21:13:39', '2018-11-07 21:13:39'),
(106, 'T-VARIADOR P-242', 480, 82, '2018-11-07 21:30:39', '2018-11-07 21:30:39'),
(107, 'T-VARIADOR P-227', 480, 82, '2018-11-07 21:32:52', '2018-11-07 21:32:52'),
(108, 'T-VARIADOR P-242', 480, 82, '2018-11-07 21:35:12', '2018-11-07 21:35:12'),
(109, 'T-VARIADOR P-226', 480, 82, '2018-11-07 21:36:33', '2018-11-07 21:36:33'),
(110, 'TRANSFORMADOR SE-45', 480, 83, '2018-11-08 00:31:20', '2018-11-08 00:31:20'),
(111, 'TGD- TABLERO GENERAL DE DISTRIBUCION  480', 480, 83, '2018-11-08 00:59:32', '2018-11-08 00:59:32'),
(112, 'T-VARIADOR C-029', 480, 83, '2018-11-08 01:12:46', '2018-11-08 01:12:46'),
(113, 'TRANSFORMADOR SE-35', 480, 84, '2018-11-09 19:34:36', '2018-11-09 19:34:36'),
(114, 'TD-35', 480, 84, '2018-11-09 20:02:00', '2018-11-09 20:02:00'),
(115, 'TGD-35-1', 480, 84, '2018-11-09 21:01:08', '2018-11-09 21:01:08'),
(116, 'TGD-35-2 480', 480, 84, '2018-11-09 21:09:41', '2018-11-09 21:09:41'),
(117, 'T-VARIADOR C-016', 480, 84, '2018-11-09 21:24:22', '2018-11-09 21:24:22'),
(118, 'TRANSFORMADOR SE-43', 120, 87, '2018-11-09 22:23:00', '2018-11-09 22:23:00'),
(119, 'TRANSFORMADOR SE-43', 480, 87, '2018-11-09 22:23:14', '2018-11-09 22:23:14'),
(120, 'TGD- TABLERO GENERAL DE DISTRIBUCION  480', 480, 87, '2018-11-09 22:54:20', '2018-11-09 22:54:20'),
(121, 'T-VARIADOR P-088', 480, 87, '2018-11-09 23:26:14', '2018-11-09 23:26:14'),
(122, 'TRANSFORMADOR SE-47', 480, 88, '2018-11-10 00:25:40', '2018-11-10 00:25:40'),
(123, 'TGD- TABLERO GENERAL DE DISTRIBUCION  480', 480, 88, '2018-11-10 00:28:58', '2018-11-10 00:28:58'),
(124, 'T-VARIADOR P-335', 480, 88, '2018-11-10 00:38:29', '2018-11-10 00:38:29'),
(125, 'TRANSFORMADOR SE-31', 480, 89, '2018-11-10 01:00:20', '2018-11-10 01:00:20'),
(126, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 480, 89, '2018-11-10 01:07:00', '2018-11-10 01:07:00'),
(127, 'T-VARIADOR P-296', 480, 89, '2018-11-10 01:21:27', '2018-11-10 01:21:27'),
(128, 'TRANSFORMADOR SE-27', 480, 90, '2018-11-10 01:33:14', '2018-11-10 01:33:14'),
(129, 'TGD- TABLERO GENERAL DE DISTRIBUCION', 480, 90, '2018-11-10 01:35:17', '2018-11-10 01:35:17'),
(130, 'T-VARIADOR P-201', 480, 90, '2018-11-10 01:38:13', '2018-11-10 01:38:13'),
(131, 'TRANSFORMADOR  480V', 480, 94, '2018-12-07 01:26:43', '2018-12-07 01:26:43'),
(132, 'k', 120, 95, '2018-12-11 02:43:52', '2018-12-11 02:43:52'),
(133, 'TGD- TABLERO GENERAL DE DISTRIBUCION  480', 208, 96, '2018-12-11 21:52:17', '2018-12-11 21:52:17'),
(134, 'TRANSFORMADOR SE-14', 480, 98, '2018-12-19 02:07:36', '2018-12-19 02:07:36'),
(135, 'SALIDA SUBESTACIÓN #1', 480, 99, '2018-12-21 00:28:58', '2018-12-21 00:28:58'),
(136, 'TGD- TABLERO GENERAL DE DISTRIBUCION  480', 480, 94, '2019-01-16 21:25:24', '2019-01-16 21:25:24'),
(137, 'T-VARIADOR P-015', 480, 94, '2019-01-16 21:38:33', '2019-01-16 21:38:33'),
(138, 'TRANSFORMADOR SE-6', 480, 100, '2019-01-17 00:52:34', '2019-01-17 00:52:34'),
(139, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN-1', 480, 100, '2019-01-17 01:20:02', '2019-01-17 01:20:02'),
(140, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN-2', 480, 100, '2019-01-17 01:27:28', '2019-01-17 01:27:28'),
(141, 'T-VARIADOR P-198', 480, 100, '2019-01-17 02:14:37', '2019-01-17 02:14:37'),
(142, 'TRANSFORMADOR SE-6A', 480, 101, '2019-01-17 02:44:24', '2019-01-17 02:44:24'),
(143, 'TABLERO GENERAL DE DISTRIBUCION', 480, 101, '2019-01-17 02:48:10', '2019-01-17 02:48:10'),
(144, 'T-VARIADOR P-173', 480, 101, '2019-01-17 03:00:56', '2019-01-17 03:00:56'),
(145, 'tyhgh', 220, 103, '2019-01-18 20:45:23', '2019-01-18 20:45:23'),
(146, 'TRANSFORMADOR SE-8', 480, 104, '2019-01-23 21:12:58', '2019-01-23 21:12:58'),
(147, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN', 480, 104, '2019-01-23 21:20:30', '2019-01-23 21:20:30'),
(148, 'T-VARIADOR P-204', 480, 104, '2019-01-23 21:32:26', '2019-01-23 21:32:26'),
(149, 'TRANSFORMADOR SE-8A', 480, 105, '2019-01-23 21:57:03', '2019-01-23 21:57:03'),
(150, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN', 480, 105, '2019-01-23 22:01:25', '2019-01-23 22:01:25'),
(151, 'T-VARIADOR P-176', 480, 105, '2019-01-23 22:11:29', '2019-01-23 22:11:29'),
(152, 'TRANSFORMADOR SE-13', 480, 106, '2019-01-24 00:48:50', '2019-01-24 00:48:50'),
(153, 'TGD-13', 480, 106, '2019-01-24 00:50:39', '2019-01-24 00:50:39'),
(154, 'T-VARIADOR P-218', 480, 106, '2019-01-24 01:15:08', '2019-01-24 01:15:08'),
(155, 'TRANSFORMADOR SE-13A', 480, 108, '2019-01-24 02:00:41', '2019-01-24 02:00:41'),
(156, 'TD-13A', 480, 108, '2019-01-24 02:43:05', '2019-01-24 02:43:05'),
(157, '-VARIADOR P-125', 480, 108, '2019-01-24 02:52:59', '2019-01-24 02:52:59'),
(158, 'TRANSFORMADOR SE-13', 480, 109, '2019-01-29 21:44:41', '2019-01-29 21:44:41'),
(159, 'TRANSFORMADOR SE-14', 480, 109, '2019-01-29 21:46:52', '2019-01-29 21:46:52'),
(160, 'TGD-14-1', 480, 109, '2019-01-29 22:05:10', '2019-01-29 22:05:10'),
(161, 'TRANSFORMADOR SE-14', 480, 111, '2019-01-29 22:49:07', '2019-01-29 22:49:07'),
(162, 'TGD-14-2', 480, 109, '2019-01-30 01:24:41', '2019-01-30 01:24:41'),
(163, 'T-VARIADOR P-266', 480, 109, '2019-01-30 02:25:09', '2019-01-30 02:25:09'),
(164, 'TRANSFORMADOR SE-28', 480, 113, '2019-01-31 20:56:18', '2019-01-31 20:56:18'),
(165, 'TGD-28', 480, 113, '2019-01-31 21:00:13', '2019-01-31 21:00:13'),
(166, 'T-VARIADOR P-255', 480, 113, '2019-01-31 21:18:37', '2019-01-31 21:18:37'),
(167, 'TRANSFORMADOR SE-28A', 480, 114, '2019-01-31 21:27:46', '2019-01-31 21:27:46'),
(168, 'TGD-28A', 480, 114, '2019-01-31 21:31:22', '2019-01-31 21:31:22'),
(169, 'T-VARIADOR P-290', 480, 114, '2019-01-31 21:48:09', '2019-01-31 21:48:09'),
(170, 'TRANSFORMADOR SE-41', 480, 115, '2019-02-01 02:24:53', '2019-02-01 02:24:53'),
(171, 'TGD-41', 480, 115, '2019-02-01 02:40:15', '2019-02-01 02:40:15'),
(172, 'TRANSFORMADOR SE-38', 480, 116, '2019-02-05 02:43:11', '2019-02-05 02:43:11'),
(173, 'TAE-F100', 208, 117, '2019-02-05 21:21:05', '2019-02-05 21:21:05'),
(174, 'TRANSFORMADOR SE-36', 480, 118, '2019-02-06 20:07:01', '2019-02-06 20:07:01'),
(175, 'TGD-36', 480, 118, '2019-02-06 20:15:49', '2019-02-06 20:15:49'),
(176, 'TRANSFORMADOR SE-04', 480, 121, '2019-03-20 21:10:54', '2019-03-20 21:10:54'),
(177, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN -04', 480, 121, '2019-03-20 21:15:25', '2019-03-20 21:15:25'),
(178, 'T-VARIADOR P-011', 480, 121, '2019-03-20 21:25:37', '2019-03-20 21:25:37'),
(179, 'TRANSFORMADOR SE-18', 480, 122, '2019-03-21 00:18:58', '2019-03-21 00:18:58'),
(180, 'TGD-18', 480, 122, '2019-03-21 00:23:08', '2019-03-21 00:23:08'),
(181, 'T-VARIADOR P-327', 480, 122, '2019-03-21 00:25:46', '2019-03-21 00:25:46'),
(182, 'TRANSFORMADOR SE-46', 480, 123, '2019-03-21 21:20:35', '2019-03-21 21:20:35'),
(183, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN-1', 480, 123, '2019-03-21 21:26:32', '2019-03-21 21:26:32'),
(184, 'TGD -TABLERO GENERAL DE DISTRIBUCIÓN-12', 480, 123, '2019-03-21 21:32:39', '2019-03-21 21:32:39'),
(185, 'T-VARIADOR P-104', 480, 123, '2019-03-21 21:46:40', '2019-03-21 21:46:40'),
(186, 'TRANSFORMADOR SE-46', 480, 124, '2019-03-22 00:41:40', '2019-03-22 00:41:40'),
(187, 'TGD-46/1', 480, 124, '2019-03-22 00:49:30', '2019-03-22 00:49:30'),
(188, 'TGD-46/2', 480, 124, '2019-03-22 00:55:46', '2019-03-22 00:55:46'),
(189, 'T-VARIADOR P-104', 480, 124, '2019-03-22 01:00:38', '2019-03-22 01:00:38'),
(190, 'TRANSFORMADOR SE-22', 480, 125, '2019-03-22 01:14:27', '2019-03-22 01:14:27'),
(191, 'TGD-22', 480, 125, '2019-03-22 01:17:54', '2019-03-22 01:17:54'),
(192, 'T-VARIADOR P-306', 480, 125, '2019-03-22 01:20:10', '2019-03-22 01:20:10'),
(193, 'TRANSFORMADOR SE-21', 480, 126, '2019-03-22 01:25:16', '2019-03-22 01:25:16'),
(194, 'TGD-21', 480, 126, '2019-03-22 01:28:45', '2019-03-22 01:28:45'),
(195, 'T-VARIADOR P-162', 480, 126, '2019-03-22 01:31:31', '2019-03-22 01:31:31'),
(196, 'TRANSFORMADOR SE-20', 480, 127, '2019-03-22 01:42:36', '2019-03-22 01:42:36'),
(197, 'TGD-20', 480, 127, '2019-03-22 01:45:51', '2019-03-22 01:45:51'),
(198, 'T-VARIADOR P-042', 480, 127, '2019-03-22 01:51:42', '2019-03-22 01:51:42'),
(199, 'TRANSFORMADOR SE-07', 480, 128, '2019-03-22 02:04:40', '2019-03-22 02:04:40'),
(200, 'TGD-07', 480, 128, '2019-03-22 02:31:09', '2019-03-22 02:31:09'),
(201, 'T-VARIADOR P-107', 480, 128, '2019-03-22 02:47:41', '2019-03-22 02:47:41'),
(202, 'TRANSFORMADOR SE-10', 480, 129, '2019-03-22 20:17:06', '2019-03-22 20:17:06'),
(203, 'TGD-10', 480, 129, '2019-03-22 20:22:15', '2019-03-22 20:22:15'),
(204, 'T-VARIADOR P-023', 480, 129, '2019-03-22 20:29:56', '2019-03-22 20:29:56'),
(205, 'TRANSFORMADOR SE-15', 480, 130, '2019-03-22 20:43:42', '2019-03-22 20:43:42'),
(206, 'TGD-15/1', 480, 130, '2019-03-22 21:07:04', '2019-03-22 21:07:04'),
(207, 'TGD-15/2', 480, 130, '2019-03-22 21:29:52', '2019-03-22 21:29:52'),
(208, 'T-VARIADOR P-220', 480, 130, '2019-03-23 01:01:42', '2019-03-23 01:01:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablero_media`
--

CREATE TABLE `tablero_media` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tension` double NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tablero_media`
--

INSERT INTO `tablero_media` (`id`, `name`, `tension`, `project_id`, `created_at`, `updated_at`) VALUES
(1, 'afasfasf', 4160, 61, '2018-10-24 01:24:26', '2018-10-24 01:24:26'),
(2, 'prueba', 13200, 78, '2018-12-22 03:21:16', '2018-12-22 03:21:16'),
(3, 'a', 13800, 72, '2019-01-18 01:22:21', '2019-01-18 01:22:21'),
(4, 'plataforma', 4160, 112, '2019-01-29 22:51:40', '2019-01-29 22:51:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matricula` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `matricula`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dougla lopez', 'douglas.lopez@gers.com.co', '$2y$10$ksBqZ4LyMIVaAY0wtXsT3.Vb9p6RQLYKpMlvrKdw/OgzjFGtLwF42', NULL, 'T2Sl21hRe1SGMzCTLwSXmQnEeSgBuomaK1vFd2zGViHou5Me3MEclYDXVwdw', '2018-08-01 22:22:19', '2018-08-01 22:22:19'),
(2, 'Andres espinosa', 'andres.espinosa@gers.com.co', '$2y$10$AMQeWV3V9DD.DFdKtcsaE.REDstOWLCUXO5yolfnzItSkTPaziEqK', NULL, NULL, '2018-08-01 22:22:19', '2018-08-01 22:22:19'),
(5, 'Harold Realpe', 'harold.realpe@gers.com.co', '$2y$10$8qVML0Gz7/5DXBPRov9bd.iOmZ8ma1HdcOXvMVY5zcHgdtLp2bD6K', 'pedir', 'x7PTmpGCjVxEHEpv9HjFoDV6iEWDdOxo93s5F1uvRLZ5BoxmpJNy7ITB1pmJ', '2018-08-02 01:39:32', '2019-04-06 00:30:07'),
(6, 'prueba', 'noreply@gerscali.com', '$2y$10$tMmw8p3qS4ThAoo8n0xSteQN7C6x5F/wDMZ2HyMh652TYYAz19K9y', 'sdfghj', '0CaVq13BlUQTxq1qSO5AfIHyvmtpjp2tUQSltMLfLn8hLWFNJ2iwYKOInOes', '2018-09-04 18:59:28', '2018-09-04 18:59:28'),
(10, 'sebastian Campos', 'sebastian.campos@gerscali.com', '$2y$10$dq0d/uA9MCqzTtwO2aS0NOBRMbEAiQi3S5N4sPStbuINunYAFcKZu', '00000', 'P8HOJcEf1ry6woaIADsHgbVwr31CaagK0uqppKMWU5giTDUf9uqRlpmGDGeI', '2018-10-17 01:53:48', '2018-10-17 01:53:48'),
(11, 'Nhora Alicia Galvez', 'nhora.galvez@gers.com.co', '$2y$10$gOGLBsAIR2cbALB/wUAtvunENjQoY/u6Rlr7YAVWCyslOI6xrng1a', 'VL205-06984', 'xfqieZOSlju6Ehu6kiLFCpfZYdwABKs4Rw2RE6rmlY2KAIAU0JnESMawYB1w', '2018-10-18 22:06:06', '2018-10-18 22:06:06'),
(12, 'Juliana Gutiérrez', 'juliana.gutierrez@gers.com.co', '$2y$10$pvNqivCweR2EpSGuuDaaYOxdpjVLLFIo000hmOUgEOl6oPkk7oaOq', 'CL205-76188', '9bqlTEBKTlQsfi2OdBcNyXYyopoiiX4ic4UW7ZGrb0K1T38qxPN5uPYUpPSp', '2018-10-18 22:11:00', '2018-10-18 22:11:00'),
(13, 'Jonathan Zuluaga', 'jonathan.zuluaga@gers.com.co', '$2y$10$jGGjtVe54Rshevzmh65Q8elcZqwi0XaywCxOrfgIRkNnQfIzrqlfG', 'VL205-46023', 'QdW9V2dLNkW8oIyvzwkTF7uxdMXcL7WpW4OHhsOR0WOWLdPT3CPZArFDAVZg', '2018-12-21 00:05:21', '2018-12-21 00:05:21'),
(14, 'Luis Martinez', 'luis.martinez@gerscali.com', '$2y$10$FdkR48GtxoyUPyGAALfE1.aOkaoH/iEJOqP3Q2Cs6xgfdeJ1o6A7W', '121919', 'XSqBcwOCEw4GDsbdSgEI5GaRLG2h2hJHsiPQGy3jqtFT1MnsNu9RlqPcJfQv', '2019-01-17 21:41:00', '2019-01-17 21:41:00'),
(15, 'Ronald Botero', 'ronald.botero@gerscali.com', '$2y$10$Qfj8Q/nz.u2qJGBV2Tx88uFDisuQZfPgF1EfNvx0GbmCjFm4158Ja', '000', 'QNh9wuChqRtCezdmOGxVbkHot1luDVTK44nlJPo4tR5n4kRlXE2cjUUnLQBo', '2019-01-18 00:42:34', '2019-01-18 00:42:34'),
(16, 'TI', 'ti@gers.com.co', '$2y$10$zlDWVjL2SC3I95F4RBZt9ut1Oec0pPljldTbYQAu7VcUg91AWPN8y', '123456', NULL, '2019-04-10 21:37:01', '2019-04-10 21:37:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ajustable`
--
ALTER TABLE `ajustable`
  ADD PRIMARY KEY (`fija`);

--
-- Indices de la tabla `cables_vfd`
--
ALTER TABLE `cables_vfd`
  ADD PRIMARY KEY (`calibre`);

--
-- Indices de la tabla `int_baja_tension`
--
ALTER TABLE `int_baja_tension`
  ADD PRIMARY KEY (`calibre`);

--
-- Indices de la tabla `memoria_altas`
--
ALTER TABLE `memoria_altas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `memoria_altas_tablero_id_foreign` (`tablero_id`),
  ADD KEY `memoria_altas_project_id_foreign` (`project_id`);

--
-- Indices de la tabla `memoria_bajas`
--
ALTER TABLE `memoria_bajas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `longitud_metros` (`id`),
  ADD KEY `memoria_bajas_tablero_id_foreign` (`tablero_id`),
  ADD KEY `memoria_bajas_project_id_foreign` (`project_id`);

--
-- Indices de la tabla `memoria_media`
--
ALTER TABLE `memoria_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `memoria_media_tablero_id_foreign` (`tablero_id`),
  ADD KEY `memoria_media_project_id_foreign` (`project_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proteccion_selec`
--
ALTER TABLE `proteccion_selec`
  ADD PRIMARY KEY (`fija`);

--
-- Indices de la tabla `revisiones`
--
ALTER TABLE `revisiones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `tablero_altas`
--
ALTER TABLE `tablero_altas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tablero_altas_project_id_foreign` (`project_id`);

--
-- Indices de la tabla `tablero_bajas`
--
ALTER TABLE `tablero_bajas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tablero_bajas_project_id_foreign` (`project_id`);

--
-- Indices de la tabla `tablero_media`
--
ALTER TABLE `tablero_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tablero_media_project_id_foreign` (`project_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `memoria_altas`
--
ALTER TABLE `memoria_altas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `memoria_bajas`
--
ALTER TABLE `memoria_bajas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=746;
--
-- AUTO_INCREMENT de la tabla `memoria_media`
--
ALTER TABLE `memoria_media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT de la tabla `revisiones`
--
ALTER TABLE `revisiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tablero_altas`
--
ALTER TABLE `tablero_altas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tablero_bajas`
--
ALTER TABLE `tablero_bajas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;
--
-- AUTO_INCREMENT de la tabla `tablero_media`
--
ALTER TABLE `tablero_media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `memoria_altas`
--
ALTER TABLE `memoria_altas`
  ADD CONSTRAINT `memoria_altas_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `memoria_altas_tablero_id_foreign` FOREIGN KEY (`tablero_id`) REFERENCES `tablero_altas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `memoria_bajas`
--
ALTER TABLE `memoria_bajas`
  ADD CONSTRAINT `memoria_bajas_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `memoria_bajas_tablero_id_foreign` FOREIGN KEY (`tablero_id`) REFERENCES `tablero_bajas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `memoria_media`
--
ALTER TABLE `memoria_media`
  ADD CONSTRAINT `memoria_media_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `memoria_media_tablero_id_foreign` FOREIGN KEY (`tablero_id`) REFERENCES `tablero_media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tablero_altas`
--
ALTER TABLE `tablero_altas`
  ADD CONSTRAINT `tablero_altas_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tablero_bajas`
--
ALTER TABLE `tablero_bajas`
  ADD CONSTRAINT `tablero_bajas_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tablero_media`
--
ALTER TABLE `tablero_media`
  ADD CONSTRAINT `tablero_media_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
