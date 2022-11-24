-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2022 a las 16:28:54
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `placonecta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id_admin` int(11) NOT NULL,
  `admin` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id_admin`, `admin`, `password`) VALUES
(1, 'Brayan Pastrana', '$2y$12$gG7IFps2HdJ8MBpGwAPgBeMBjJ.iGTUZDAh4j/FDisbo.OlQ4RUHa'),
(2, 'Jaqueline Moreno', '$2y$12$NMv8O11.ar80aGLpCQ7zhO8okmxP0Xtj/OhRC5bOeNAQJh5JedQP6'),
(3, 'Bridgett', '$2y$12$NmqWM5zfKAQX2sf/gQdnj.kRAgXMPN71Ob6KF/Iz60Sg./pfx.7lK');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multas`
--

CREATE TABLE `multas` (
  `id_insert_multa` int(11) NOT NULL,
  `id_multa` varchar(12) NOT NULL,
  `id_placa` varchar(12) NOT NULL,
  `id_oficial` varchar(12) NOT NULL,
  `nombre_oficial` varchar(50) NOT NULL,
  `motivo_multa` varchar(50) NOT NULL,
  `descripcion_multa` varchar(200) NOT NULL,
  `direccion_multa` varchar(200) NOT NULL,
  `url_imagen` varchar(150) NOT NULL,
  `fecha_multa` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `multas`
--

INSERT INTO `multas` (`id_insert_multa`, `id_multa`, `id_placa`, `id_oficial`, `nombre_oficial`, `motivo_multa`, `descripcion_multa`, `direccion_multa`, `url_imagen`, `fecha_multa`) VALUES
(14, 'w5jRzFE1pdCS', 'GFHDHGH8', '2000', 'Brayan Pastrana', 'Mal estacionado', 'Estacionado en línea amarilla', 'Zona centro, plaza de armas', 'img', '24/11/22'),
(15, 'BDNRPEcScS2B', 'DFGUJD98', '2000', 'Pedro Picapiedra', 'Exceso de velocidad', 'Manejaba a exceso de velocidad', 'Carretera Durango', 'img', '24/11/22'),
(16, '768Pyz8YwsOl', 'HJDGYTD8', '2000', 'SantaClaus', 'Circular en sentido contrario', 'Manejo en una calle en contra', 'Benito Juárez, Colonia El brillante ', 'img', '24/11/22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `no_placa` varchar(12) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `marca_auto` varchar(30) NOT NULL,
  `modelo_auto` varchar(30) NOT NULL,
  `telefono_usuario` varchar(15) NOT NULL,
  `correo_usuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `no_placa`, `nombre_usuario`, `marca_auto`, `modelo_auto`, `telefono_usuario`, `correo_usuario`) VALUES
(1, 'DFGUJD98', 'Brayan Daniel Pastrana Perez', 'Camaro', '2022', '6751067439', 'brayanpastranap@gmail.com'),
(2, 'HJGIDUHU', 'Bridgett Josefina Fraire ', 'Audi R8', '2021', '6184673840', '20041380@itdurango.edu.mx'),
(3, 'HJDGYTD8', 'Jaqueline Moreno Soto', 'Mustang', '2002', '6184597856', 'jaquelinemoreno@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `multas`
--
ALTER TABLE `multas`
  ADD PRIMARY KEY (`id_insert_multa`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `multas`
--
ALTER TABLE `multas`
  MODIFY `id_insert_multa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
