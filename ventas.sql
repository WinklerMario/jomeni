-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2018 a las 18:31:43
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacen`
--

CREATE TABLE `almacen` (
  `idproducto` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  `Costo` varchar(45) DEFAULT NULL,
  `Codigo_Barras` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `almacen`
--

INSERT INTO `almacen` (`idproducto`, `Descripcion`, `Costo`, `Codigo_Barras`) VALUES
(16630306, 'mesas de color Rojo vino ', '5600', '1234567'),
(16630307, 'comoda redonda barnizada', '2336', '1234566'),
(16630308, 'silla de rudeas', '1343', '1234564'),
(16630309, 'escritorio profesional ', '2344', '1234563'),
(16630310, 'base de cama matrimonial ', '3456', '1234561'),
(16630311, 'base de cama individual', '1244', '1234562'),
(16630312, 'mesas de color normal ', '1232', '1234568'),
(16630313, 'comoda cuadrada barnizada', '900', '1234569'),
(16630314, 'percheros ', '843', '1234560'),
(16630315, 'mueble de ropa', '800', '1123456'),
(16630316, 'Repisa', '455', '1234222');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `Codigo_Barras` varchar(45) NOT NULL,
  `Precio` varchar(45) DEFAULT NULL,
  `Costo` varchar(45) DEFAULT NULL,
  `Existencia` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`Codigo_Barras`, `Precio`, `Costo`, `Existencia`) VALUES
('1123456', '1000', '800', 'no'),
('1234222', '1455', '455', 'no'),
('1234560', '1200', '843', 'si'),
('1234561', '4655', '3456', 'si'),
('1234562', '2343', '1244', 'si'),
('1234563', '3534', '2344', 'si'),
('1234564', '4354', '1343', 'si'),
('1234566', '2921', '2336', 'no'),
('1234567', '5800', '5600', 'si'),
('1234568', '2342', '1232', 'no'),
('1234569', '1500', '900', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `RFC` varchar(45) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellidos` varchar(45) DEFAULT NULL,
  `Correo_electronico` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`RFC`, `Nombre`, `Apellidos`, `Correo_electronico`) VALUES
('', NULL, '', NULL),
('bqwe987654321', 'Bernardo', 'Dominguez Ross', 'bernado@gmail.com'),
('cdew132465879', 'Cintia', 'Avila Cetina', 'cintiaavilacetina@gmial.com'),
('cgsq123213232', 'Carlos', 'Gomez Sanchez', 'Gomez@gmail.com'),
('cupu123456789', 'Luis', 'Lopez Perez ', 'luislopzperez@gmial.com'),
('dqaz123456701', 'Diego', 'Lopez Sanchez', 'diegolopezsanchez@gmail.com'),
('kwsx123456789', 'Karina', 'Martinez Sanchez', 'Kari@gmial.com'),
('mfvd123456789', 'Mario', 'Mendoza Villalobos', 'Amor@gmial.com'),
('mqas192837456', 'Monica', 'Chan Tun', 'monicachantun@gmail.com'),
('mqaz123456432', 'Miguel', 'Canto Gomez', 'Gomez@gmail.com'),
('myhn123456789', 'Maria', 'Che Koh', 'chekog@gmial.com'),
('qasw987654321', 'Gabriela', 'Torres Aguilar', 'gabrielatorresaguilar@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `Folio` int(11) NOT NULL,
  `Cantidad` varchar(45) DEFAULT NULL,
  `Precio_Total` varchar(45) DEFAULT NULL,
  `Costo_Total` varchar(45) DEFAULT NULL,
  `Venta_Folio` int(11) NOT NULL,
  `Codigo_Barras` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`Folio`, `Cantidad`, `Precio_Total`, `Costo_Total`, `Venta_Folio`, `Codigo_Barras`) VALUES
(111, '3', '5800', '5600', 1, '1234567'),
(112, '3', '2921', '2336', 2, '1234566'),
(113, '5', '4354', '1343', 3, '1234564'),
(114, '3', '3534', '2344', 4, '1234563'),
(115, '2', '4655', '3456', 5, '1234561'),
(116, '2', '2343', '1244', 6, '1234562'),
(117, '6', '2342', '1232', 7, '1234568'),
(118, '3', '1500', '900', 8, '1234569'),
(119, '1', '1200', '843', 9, '1234560'),
(120, '3', '1000', '800', 10, '1123456'),
(121, '1', '1455', '455', 11, '1234222');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `idProveedores` int(11) NOT NULL,
  `Empresa` varchar(45) DEFAULT NULL,
  `Nombre_contacto` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Codigo_Barras` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`idProveedores`, `Empresa`, `Nombre_contacto`, `Telefono`, `Direccion`, `Codigo_Barras`) VALUES
(15530406, 'Distrubuidora de Mex', 'Oliver Agosto Dias', '9981234576', 'M18 L2 C3 Reg417', '1234567'),
(15530407, 'Mex tan', 'Damian Holil Chable', '9982341287', 'M65 L42 C4 Reg57', '1234566'),
(15530408, 'Troncoso ', 'Edgar pool Ceballos ', '9984325976', 'M12 L2 C4 Reg517', '1234564'),
(15530409, 'Ashley Furniture', 'Carlos Villa Garcia', '9981926928', 'M12 L2 C5 Reg233', '1234563'),
(15530410, 'Steelcase', 'Maneul Tovar ', '9984005452', 'M12 L2 C4 Reg517', '1234561'),
(15530411, 'Masco', 'Alejandra Gutierres', '9988435433', 'M12 L2 C23 Reg543', '1234562'),
(15530412, 'Herman Mille', 'Gonzalo Gutierres', '9981443595', 'M12 L2 C4 Reg516', '1234568'),
(15530413, 'Pier 1 Imports', 'Kevin Moreno Vello', '9945554455', 'M212 L2 C2 Reg510', '1234569'),
(15530414, '‘Haworth', 'Ailin Lopen Gas', '9986454445', 'M125 L2 C4 Reg534', '1234560'),
(15530415, 'Restoration Hardware', 'Maria Aguilar', '9981232333', 'M123 L2 C1 Reg103', '1123456'),
(15530416, '‘La-Z-Boy Incorporated', 'Jorger Torres ', '9981232424', 'M1 L2 C5 Reg123', '1234222');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `Folio` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Cliente_RFC` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`Folio`, `Fecha`, `Cliente_RFC`) VALUES
(1, '0000-00-00', 'cupu123456789'),
(2, '0000-00-00', 'qasw987654321'),
(3, '0000-00-00', 'dqaz123456701'),
(4, '0000-00-00', 'cdew132465879'),
(5, '0000-00-00', 'mqas192837456'),
(6, '0000-00-00', 'bqwe987654321'),
(7, '0000-00-00', 'mqaz123456432'),
(8, '0000-00-00', 'myhn123456789'),
(9, '0000-00-00', 'kwsx123456789'),
(10, '0000-00-00', 'mfvd123456789'),
(11, '0000-00-00', 'cgsq123213232');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `fk_Almacen_Articulo1_idx` (`Codigo_Barras`);

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`Codigo_Barras`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`RFC`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`Folio`),
  ADD KEY `fk_Detalle_Articulo1_idx` (`Codigo_Barras`),
  ADD KEY `fk_Detalle_Venta1_idx` (`Venta_Folio`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idProveedores`),
  ADD KEY `fk_Proveedores_Articulo1_idx` (`Codigo_Barras`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`Folio`),
  ADD KEY `fk_Venta_Cliente1_idx` (`Cliente_RFC`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD CONSTRAINT `fk_Almacen_Articulo1` FOREIGN KEY (`Codigo_Barras`) REFERENCES `articulo` (`Codigo_Barras`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `fk_Detalle_Articulo1` FOREIGN KEY (`Codigo_Barras`) REFERENCES `articulo` (`Codigo_Barras`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Detalle_Venta1` FOREIGN KEY (`Venta_Folio`) REFERENCES `venta` (`Folio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD CONSTRAINT `fk_Proveedores_Articulo1` FOREIGN KEY (`Codigo_Barras`) REFERENCES `articulo` (`Codigo_Barras`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_Venta_Cliente1` FOREIGN KEY (`Cliente_RFC`) REFERENCES `cliente` (`RFC`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
