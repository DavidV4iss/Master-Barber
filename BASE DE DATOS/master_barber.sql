-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-07-2024 a las 21:35:56
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

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
-- Estructura de tabla para la tabla `carrito_compras`
--
-- Creación: 12-07-2024 a las 19:20:04
-- Última actualización: 12-07-2024 a las 19:20:24
--

CREATE TABLE `carrito_compras` (
  `id_carrito_compras` varchar(255) NOT NULL,
  `id_producto` varchar(255) NOT NULL,
  `id_usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carrito_compras`
--

INSERT INTO `carrito_compras` (`id_carrito_compras`, `id_producto`, `id_usuario`) VALUES
('CAR1', 'P1', 'U3'),
('CAR2', 'P2', 'U2'),
('CAR3', 'P3', 'U1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_producto`
--
-- Creación: 12-07-2024 a las 16:10:17
--

CREATE TABLE `categoria_producto` (
  `id_categoria_producto` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria_producto`
--

INSERT INTO `categoria_producto` (`id_categoria_producto`, `categoria`) VALUES
('CP1', 'Ropa'),
('CP2', 'Accesorios'),
('CP3', 'Productos de cuidado personal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--
-- Creación: 12-07-2024 a las 16:10:17
-- Última actualización: 12-07-2024 a las 19:07:43
--

CREATE TABLE `compra` (
  `id_compra` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio_total` varchar(255) NOT NULL,
  `id_tipo_pago` varchar(255) NOT NULL,
  `id_producto` varchar(255) NOT NULL,
  `id_usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`id_compra`, `descripcion`, `precio_total`, `id_tipo_pago`, `id_producto`, `id_usuario`) VALUES
('C1', 'Camiseta Oversize', '78.000', 'TP1', 'P1', 'U3'),
('C2', 'Gorra morada', '50.000', 'TP2', 'P2', 'U3'),
('C3', 'Expansion 8', '8.000', 'TP3', 'P3', 'U3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--
-- Creación: 12-07-2024 a las 16:10:17
-- Última actualización: 12-07-2024 a las 19:27:14
--

CREATE TABLE `factura` (
  `id_factura` varchar(255) NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `id_compra` varchar(255) NOT NULL,
  `id_usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id_factura`, `fecha`, `id_compra`, `id_usuario`) VALUES
('F1', '2025-04-03 20:50:10.000000', 'C1', 'U3'),
('F2', '2026-07-24 12:00:00.000000', 'C2', 'U3'),
('F3', '2027-08-24 22:20:00.000000', 'C3', 'U3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--
-- Creación: 12-07-2024 a las 16:10:17
--

CREATE TABLE `producto` (
  `id_producto` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `cantidad` int(255) NOT NULL,
  `id_categoria_producto` varchar(255) NOT NULL,
  `precio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `cantidad`, `id_categoria_producto`, `precio`) VALUES
('P1', 'Camisetas Oversize', 'Camisetas con estampado y horma grande', 20, 'CP1', '78.000'),
('P2', 'Gorras', 'Gorras con diferentes estilos y variados colores', 10, 'CP2', '50.000'),
('P3', 'Aretes', 'Aretes, expaciones, simulaciones, etc.', 50, 'CP2', '20.000'),
('P4', 'Mascarillas', 'Mascarillas para puntos negros e hidratantes', 20, 'CP3', '15.000'),
('P5', 'Talcos para texturas', 'Para un texturizado de cabello mas visible', 10, 'CP3', '30.000'),
('P6', 'Pierncings', 'Piercings para la ceja, nariz, lengua, labio y de mas partes del cuerpo', 60, 'CP2', '20.000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recordatorio`
--
-- Creación: 12-07-2024 a las 16:21:35
-- Última actualización: 12-07-2024 a las 19:01:42
--

CREATE TABLE `recordatorio` (
  `id_recordatorio` varchar(255) NOT NULL,
  `mensaje` varchar(255) NOT NULL,
  `id_ReservaTurno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `recordatorio`
--

INSERT INTO `recordatorio` (`id_recordatorio`, `mensaje`, `id_ReservaTurno`) VALUES
('RO1', 'Recuerda que tienes un turno reservado', 'RT1'),
('RO2', 'Recuerda que tienes un turno reservado.', 'RT2'),
('RO3', 'Recuerda que tienes un turno reservado..', 'RT3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva_turno`
--
-- Creación: 12-07-2024 a las 18:32:02
-- Última actualización: 12-07-2024 a las 18:41:07
--

CREATE TABLE `reserva_turno` (
  `id_ReservaTurno` varchar(255) NOT NULL,
  `id_TipoServicio` varchar(255) NOT NULL,
  `Fecha_Hora` datetime(6) NOT NULL,
  `Aceptar_Turno` varchar(2) NOT NULL,
  `Cancelar_Turno` varchar(2) NOT NULL,
  `id_usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reserva_turno`
--

INSERT INTO `reserva_turno` (`id_ReservaTurno`, `id_TipoServicio`, `Fecha_Hora`, `Aceptar_Turno`, `Cancelar_Turno`, `id_usuario`) VALUES
('RT1', 'TS1', '2025-04-07 20:20:20.000000', 'SI', 'NO', 'U3'),
('RT2', 'TS2', '2025-06-12 15:30:20.000000', 'NO', 'SI', 'U3'),
('RT3', 'TS1', '2025-06-12 15:30:20.000000', 'SI', 'NO', 'U3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--
-- Creación: 12-07-2024 a las 16:10:17
--

CREATE TABLE `rol` (
  `id_rol` varchar(255) NOT NULL,
  `nombre_rol` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre_rol`) VALUES
('R1', 'Administrador'),
('R2', 'Barbero'),
('R3', 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pago`
--
-- Creación: 12-07-2024 a las 16:10:17
--

CREATE TABLE `tipo_pago` (
  `id_tipo_pago` varchar(255) NOT NULL,
  `TipoPago` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_pago`
--

INSERT INTO `tipo_pago` (`id_tipo_pago`, `TipoPago`) VALUES
('TP1', 'Tarjeta de credito'),
('TP2', 'Bancolombia'),
('TP3', 'Daviplata'),
('TP4', 'Nequi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_servicio`
--
-- Creación: 12-07-2024 a las 16:10:17
--

CREATE TABLE `tipo_servicio` (
  `id_tipo_servicio` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` varchar(255) NOT NULL,
  `id_usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_servicio`
--

INSERT INTO `tipo_servicio` (`id_tipo_servicio`, `nombre`, `descripcion`, `precio`, `id_usuario`) VALUES
('TS1', 'Corte basico', 'Solo el corte de cabello sin ningun servico adicional', '18.000', 'U3'),
('TS2', 'Corte premium', 'Servicio completo con corte de cabello, figuras a su preferencia, mascarillas, perfilado de barba y cejas', '55.000', 'U3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--
-- Creación: 12-07-2024 a las 16:10:17
-- Última actualización: 12-07-2024 a las 19:08:36
--

CREATE TABLE `usuarios` (
  `id_usuario` varchar(255) NOT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `nit` int(55) NOT NULL,
  `telefono` int(55) NOT NULL,
  `contraseña` varchar(20) NOT NULL,
  `id_rol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre_usuario`, `email`, `nit`, `telefono`, `contraseña`, `id_rol`) VALUES
('U1', 'Cristian Rueda', 'cristianrueda0313@gmail.com', 1014481682, 2147483647, 'Cris7777.', 'R1'),
('U2', 'Fidel Espitia', 'fideljoseespi10@gmail.com', 1028662003, 2147483647, 'fidel7777.', 'R2'),
('U3', 'David Vaiss', 'cristianrueda0313@gmail.com', 1014481682, 2147483647, 'david7777.', 'R3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito_compras`
--
ALTER TABLE `carrito_compras`
  ADD PRIMARY KEY (`id_carrito_compras`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `categoria_producto`
--
ALTER TABLE `categoria_producto`
  ADD PRIMARY KEY (`id_categoria_producto`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `compra_ibfk_1` (`id_producto`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_tipo_pago` (`id_tipo_pago`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_factura`),
  ADD KEY `id_compra` (`id_compra`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria_producto` (`id_categoria_producto`);

--
-- Indices de la tabla `recordatorio`
--
ALTER TABLE `recordatorio`
  ADD PRIMARY KEY (`id_recordatorio`),
  ADD KEY `id_ReservaTurno` (`id_ReservaTurno`);

--
-- Indices de la tabla `reserva_turno`
--
ALTER TABLE `reserva_turno`
  ADD PRIMARY KEY (`id_ReservaTurno`),
  ADD KEY `id_TipoServicio` (`id_TipoServicio`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `tipo_pago`
--
ALTER TABLE `tipo_pago`
  ADD PRIMARY KEY (`id_tipo_pago`);

--
-- Indices de la tabla `tipo_servicio`
--
ALTER TABLE `tipo_servicio`
  ADD PRIMARY KEY (`id_tipo_servicio`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito_compras`
--
ALTER TABLE `carrito_compras`
  ADD CONSTRAINT `carrito_compras_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carrito_compras_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `compra_ibfk_3` FOREIGN KEY (`id_tipo_pago`) REFERENCES `tipo_pago` (`id_tipo_pago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`id_compra`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_categoria_producto`) REFERENCES `categoria_producto` (`id_categoria_producto`);

--
-- Filtros para la tabla `recordatorio`
--
ALTER TABLE `recordatorio`
  ADD CONSTRAINT `recordatorio_ibfk_1` FOREIGN KEY (`id_ReservaTurno`) REFERENCES `reserva_turno` (`id_ReservaTurno`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reserva_turno`
--
ALTER TABLE `reserva_turno`
  ADD CONSTRAINT `reserva_turno_ibfk_1` FOREIGN KEY (`id_TipoServicio`) REFERENCES `tipo_servicio` (`id_tipo_servicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reserva_turno_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tipo_servicio`
--
ALTER TABLE `tipo_servicio`
  ADD CONSTRAINT `tipo_servicio_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
