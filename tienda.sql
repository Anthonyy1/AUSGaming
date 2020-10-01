-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-09-2020 a las 23:30:33
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(20,2) NOT NULL,
  `Descripcion` text NOT NULL,
  `Imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID`, `Nombre`, `Precio`, `Descripcion`, `Imagen`) VALUES
(1, 'Memoria RAM', '605.00', 'Memoria Ram HyperX Predator 8GB DDR4, 3200MHz, RGB', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/nuevo1.png'),
(2, 'Memoria RAM', '827.00', 'Memoria Kingston 16GB, DDR4, 2666MHz', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/nuevo2.png'),
(3, 'Memoria RAM', '430.00', 'Memoria Kingston 8GB, DDR4, 2666MHz', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/nuevo3.png'),
(4, 'Accesorios', '194.00', 'Funda para Laptop Dell Sleeve Essential 15.6 Pulgadas', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/nuevo4.png'),
(5, 'Fuente de poder', '694.00', 'Fuente de Poder 600W EVGA 80-PLUS White', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/nuevo5.png'),
(6, 'Laptops', '15000.00', 'Laptop HP Elite Dragonfly, i7-8665U- 13.3', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/nuevo6.png'),
(7, 'Laptops', '10133.00', 'Laptop HP Pavilion, Ryzen 5 3550H, 15.6', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/nuevo7.png'),
(8, 'Mouse', '130.00', 'Mouse Pad Primus Gaming Arena Design-PMP-11L', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/nuevo8.png'),
(9, 'Mouse', '128.00', 'Mouse Pad Primus Gaming Arena Design-PMP-10L', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/nuevo9.png'),
(10, 'Mouse', '175.00', 'Mouse Pad Primus Gaming Arena Blk-PMP-01XL', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/nuevo10.png'),
(11, 'Tarjeta de video', '2561.00', 'Tarjeta de Video EVGA GTX 1660 XC Black Gaming', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/nuevo11.png'),
(12, 'Tarajeta de video', '6015.00', 'Tarjeta de Video EVGA RTX 2070 Super Black Gaming', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/nuevo12.png'),
(13, 'Headset Xtech Plug', '22.00', 'Headset Xtech Plug 3.5mm XTS-220', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/headset1.png'),
(14, 'Headset arcus', '616.00', 'Headset arcus 250sPrimus Gaming', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/headset2.png'),
(15, 'Audifono Asus Rog', '956.00', 'Audifono Asus Rog Strix Fusion Wireless', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/headset3.png'),
(16, 'Audifonos JBL', '2279.00', 'Audifonos JBL Quantum One', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/headset4.png'),
(17, 'Laptop HP Pavilion, Ryzen', '10133.00', 'Laptop HP Pavilion, Ryzen 5 3550H, 15.6', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/laptop1.png'),
(18, 'Laptop HP Envy x360', '11331.00', 'Laptop HP Envy x360 13-ar0003Ia, Ryzen 7 3700U, 13', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/laptop2.png'),
(19, 'Laptop Lenovo ThinkPad', '11879.00', 'Laptop Lenovo ThinkPad E15, i7-10510U, 15.6', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/laptop3.png'),
(20, 'Laptop Dell Latitude 7400', '12543.00', 'Laptop Dell Latitude 7400, i5-8365U, 14', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/laptop4.png'),
(21, 'Memoria Ram HyperX Predator', '605.00', 'Memoria Ram HyperX Predator 8GB DDR4, 3200MHz, RGB', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/ram1.png'),
(22, 'Memoria Ram HyperX', '789.00', 'Memoria Ram HyperX SDRAM', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/ram2.png'),
(23, 'Memoria Kingston 16GB', '827.00', 'Memoria Kingston 16GB, DDR4, 2666MHz', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/ram3.png'),
(24, 'Memoria RAM Kingston', '834.00', 'Memoria RAM Kingston para laptop DDR4 16GB 2400MHz', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/ram4.png'),
(25, 'Mouse Gaming', '79.00', 'Mouse Gaming Valkyria', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/mouse1.png'),
(26, 'Mouse Gaming', '79.00', 'Mouse Gaming Apex', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/mouse2.png'),
(27, 'Mouse Razer Viper', '627.00', 'Mouse Razer Viper UltraLight 8 Botones', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/mouse3.png'),
(28, 'Mouse Razer Mamba Elite', '730.00', 'Mouse Razer Mamba Elite - Ratón - diestro', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/mouse4.png'),
(29, 'Procesador Intel', '2236.00', 'Procesador Intel i5-7500, 3.4GHz', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/procesador1.png'),
(30, 'Procesador Intel', '3674.00', 'Procesador Intel i7-10700, 2.9Ghz', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/procesador2.png'),
(31, 'Procesador Intel Core i7', '3718.00', 'Procesador Intel Core i7 9700K 3.6GHZ', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/procesador3.png'),
(32, 'Procesador Intel Core i7', '4187.00', 'Procesador Intel Core i7-10700K, 3.8Ghz', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/procesador4.png'),
(33, 'Teclado Primus Gaming', '629.00', 'Teclado Primus Gaming Ball100TBrw PKS-102S', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/teclado1.png'),
(34, 'Teclado Primus Gaming', '751.00', 'Teclado Primus Gaming Ball200S Rd PKS-201S', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/teclado2.png'),
(35, 'Teclado Razer', '819.00', 'Teclado Razer Ornata V2', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/teclado3.png'),
(36, 'Primus Gaming', '896.00', 'Primus Gaming Ball300P Rd PKS-301S', 'http://localhost/4ta%20Unidad/Proyecto/Archivos/teclado4.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbldetalleventa`
--

CREATE TABLE `tbldetalleventa` (
  `ID` int(11) NOT NULL,
  `IDVENTA` int(11) NOT NULL,
  `IDPRODUCTO` int(11) NOT NULL,
  `PRECIOUNITARIO` decimal(20,2) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `DESCARGADO` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbldetalleventa`
--

INSERT INTO `tbldetalleventa` (`ID`, `IDVENTA`, `IDPRODUCTO`, `PRECIOUNITARIO`, `CANTIDAD`, `DESCARGADO`) VALUES
(2, 48, 2, '827.00', 1, 0),
(3, 48, 3, '430.00', 1, 0),
(4, 48, 4, '194.00', 1, 0),
(6, 49, 2, '827.00', 1, 0),
(7, 49, 3, '430.00', 1, 0),
(8, 49, 4, '194.00', 1, 0),
(10, 50, 2, '827.00', 1, 0),
(11, 50, 3, '430.00', 1, 0),
(12, 50, 4, '194.00', 1, 0),
(14, 51, 2, '827.00', 1, 0),
(15, 51, 3, '430.00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblventas`
--

CREATE TABLE `tblventas` (
  `ID` int(11) NOT NULL,
  `Clave` varchar(250) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Correo` varchar(5000) NOT NULL,
  `Total` decimal(60,2) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblventas`
--

INSERT INTO `tblventas` (`ID`, `Clave`, `Fecha`, `Correo`, `Total`, `status`) VALUES
(2, '123456789', '2020-09-20 00:00:00', 'anthonychiquival@gmail.com', '700.00', 'pendiente'),
(3, '123456789', '2020-09-20 00:00:00', 'anthonychiquival@gmail.com', '700.00', 'pendiente'),
(4, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 17:46:46', 'AnthonyChiquival@gmail.com', '827.00', 'pendiente'),
(5, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 18:09:39', 'chi@gmail.com', '1002.00', 'pendiente'),
(6, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 18:31:23', 'Anthonychiquival@gmail.com', '560.00', 'pendiente'),
(7, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 18:33:25', 'chi2019094@itc.edu.gt', '1594.00', 'pendiente'),
(8, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 18:33:57', 'anderson17.barrientos@gmail.com', '1594.00', 'pendiente'),
(9, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 18:34:47', 'anderson17.barrientos@gmail.com', '1594.00', 'pendiente'),
(10, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 18:35:12', 'anthonychiquival@gmail.com', '605.00', 'pendiente'),
(11, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 18:36:21', 'Anthonychiquival@gmail.com', '1432.00', 'pendiente'),
(12, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 18:37:01', 'anthonychiquival@gmail.com', '605.00', 'pendiente'),
(13, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 18:37:24', 'Anthonychiquival@gmail.com', '1432.00', 'pendiente'),
(14, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 18:38:18', 'alp@gmail.com', '28013.00', 'pendiente'),
(15, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 18:52:29', 'anderson17.barrientos@gmail.com', '93457.00', 'pendiente'),
(16, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 18:55:26', 'Anthonychiquival@gmail.com', '54971.00', 'pendiente'),
(17, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 18:56:06', 'anderson17.barrientos@gmail.com', '52692.00', 'pendiente'),
(18, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:09:42', 'urias@gmail.com', '10563.00', 'pendiente'),
(19, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:09:56', 'urias@gmail.com', '10563.00', 'pendiente'),
(20, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:11:10', 'urias@gmail.com', '10563.00', 'pendiente'),
(21, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:12:20', 'urias@gmail.com', '10563.00', 'pendiente'),
(22, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:12:28', 'urias@gmail.com', '10563.00', 'pendiente'),
(23, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:12:54', 'urias@gmail.com', '10563.00', 'pendiente'),
(24, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:13:10', 'urias@gmail.com', '10563.00', 'pendiente'),
(25, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:14:53', 'urias@gmail.com', '10563.00', 'pendiente'),
(26, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:20:21', 'urias@gmail.com', '10563.00', 'pendiente'),
(27, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:28:05', 'anderson17.barrientos@gmail.com', '10563.00', 'pendiente'),
(28, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:28:37', 'anderson17.barrientos@gmail.com', '10563.00', 'pendiente'),
(29, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:29:55', 'Anthonychiquival@gmail.com', '10563.00', 'pendiente'),
(30, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:30:30', 'Anthonychiquival@gmail.com', '10563.00', 'pendiente'),
(31, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:32:05', 'Anthonychiquival@gmail.com', '10563.00', 'pendiente'),
(32, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:32:20', 'Anthonychiquival@gmail.com', '10563.00', 'pendiente'),
(33, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:32:34', 'Anthonychiquival@gmail.com', '10563.00', 'pendiente'),
(34, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:32:51', 'Anthonychiquival@gmail.com', '10563.00', 'pendiente'),
(35, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:33:39', 'Anthonychiquival@gmail.com', '10563.00', 'pendiente'),
(36, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:33:45', 'Anthonychiquival@gmail.com', '10563.00', 'pendiente'),
(37, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:34:49', 'Anthonychiquival@gmail.com', '10563.00', 'pendiente'),
(38, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:35:12', 'Anthonychiquival@gmail.com', '10563.00', 'pendiente'),
(39, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:35:25', 'Anthonychiquival@gmail.com', '10563.00', 'pendiente'),
(40, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:35:40', 'Anthonychiquival@gmail.com', '10563.00', 'pendiente'),
(41, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:36:40', 'Anthonychiquival@gmail.com', '10563.00', 'pendiente'),
(42, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:39:50', 'Anthonychiquival@gmail.com', '10563.00', 'pendiente'),
(43, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:44:09', 'anthonychiquival@gmail.com', '10563.00', 'pendiente'),
(44, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:44:30', 'anthonychiquival@gmail.com', '10563.00', 'pendiente'),
(45, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:49:41', 'Anthonychiquival@gmail.com', '10263.00', 'pendiente'),
(46, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:54:53', 'Anthonychiquival@gmail.com', '15827.00', 'pendiente'),
(47, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 19:54:59', 'Anthonychiquival@gmail.com', '15827.00', 'pendiente'),
(48, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 20:08:02', 'Anthonychiquival@gmail.com', '2056.00', 'pendiente'),
(49, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 20:11:02', 'Anthonychiquival@gmail.com', '2056.00', 'pendiente'),
(50, 'e15gvsd9vlf4a3lg0ha2qrouhq', '2020-09-20 20:11:41', 'Anthonychiquival@gmail.com', '2056.00', 'pendiente'),
(51, 'u3034dlcb20tqarcgt6nqf58ib', '2020-09-27 17:33:54', 'Anthonychiquival@gmail.com', '1862.00', 'pendiente'),
(52, '4sp0j89g2mj3v39b2peeimmgjr', '2020-09-28 10:37:13', 'anderson17.barrientos@gmail.com', '605.00', 'pendiente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDVENTA` (`IDVENTA`),
  ADD KEY `IDPRODUCTO` (`IDPRODUCTO`);

--
-- Indices de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  ADD CONSTRAINT `tbldetalleventa_ibfk_1` FOREIGN KEY (`IDVENTA`) REFERENCES `tblventas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbldetalleventa_ibfk_2` FOREIGN KEY (`IDPRODUCTO`) REFERENCES `tblventas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
