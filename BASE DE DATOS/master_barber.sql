-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-07-2024 a las 20:41:28
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
-- Base de datos: `master_barber`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--
-- Creación: 17-07-2024 a las 18:38:29
--

CREATE TABLE `producto` (
  `id_producto` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion_P` varchar(255) NOT NULL,
  `cantidad` int(255) NOT NULL,
  `id_categoria_producto` varchar(255) NOT NULL,
  `PrecioUnitario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion_P`, `cantidad`, `id_categoria_producto`, `PrecioUnitario`) VALUES
('P1', 'Camisetas Oversize', 'Camisetas con estampado y horma grande', 20, 'CP1', '78.000'),
('P2', 'Gorras', 'Gorras con diferentes estilos y variados colores', 10, 'CP2', '50.000'),
('P3', 'Aretes', 'Aretes, expaciones, simulaciones, etc.', 50, 'CP2', '20.000'),
('P4', 'Mascarillas', 'Mascarillas para puntos negros e hidratantes', 20, 'CP3', '15.000'),
('P5', 'Talcos para texturas', 'Para un texturizado de cabello mas visible', 10, 'CP3', '30.000'),
('P6', 'Pierncings', 'Piercings para la ceja, nariz, lengua, labio y de mas partes del cuerpo', 60, 'CP2', '20.000');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria_producto` (`id_categoria_producto`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_categoria_producto`) REFERENCES `categoria_producto` (`id_categoria_producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
