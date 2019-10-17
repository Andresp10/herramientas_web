-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-10-2019 a las 22:49:47
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `adsitweetspro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `idAdministrador` int(11) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Apellido` varchar(60) NOT NULL,
  `Documento` varchar(15) NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Password` varchar(160) NOT NULL,
  `idUsuarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`idAdministrador`, `Nombre`, `Apellido`, `Documento`, `FechaNacimiento`, `Email`, `Password`, `idUsuarios`) VALUES
(1, 'Andres', 'hhgfhg', 'fhgfhg', '2017-03-03', 'Andres@gmail.com', '123', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `idPersona` int(11) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Apellido` varchar(60) NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Password` varchar(160) NOT NULL,
  `idUsuarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`idPersona`, `Nombre`, `Apellido`, `FechaNacimiento`, `Email`, `Password`, `idUsuarios`) VALUES
(1, 'pepe', 'pera', '2017-03-03', 'pepe', 'pepito', 1),
(2, 'pepe', 'pera', '2017-04-05', 'pepesdadasd', 'pepe', 2),
(3, 'camiloo', 'jgjhg', '2017-03-03', 'hgjhgj', 'gjhgjg', 3),
(4, 'hg', 'jhgjh', '2017-03-03', 'gjhgjh', 'gjhgjhg', 6),
(5, 'Andres', 'ponguta', '2017-03-03', 'Andres@gmail.com', 'popodeperra', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tema`
--

CREATE TABLE `tema` (
  `idTema` int(11) NOT NULL,
  `Tema` varchar(45) NOT NULL,
  `Rt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tema`
--

INSERT INTO `tema` (`idTema`, `Tema`, `Rt`) VALUES
(1, 'EnTodo', 1),
(2, 'EnNada', 14),
(3, 'en nada', 1),
(4, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tweets`
--

CREATE TABLE `tweets` (
  `idTweets` int(11) NOT NULL,
  `Contenido` text NOT NULL,
  `Fecha` date NOT NULL,
  `Ubicacion` varchar(45) NOT NULL,
  `Tipo` varchar(45) NOT NULL,
  `idPersona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tweets`
--

INSERT INTO `tweets` (`idTweets`, `Contenido`, `Fecha`, `Ubicacion`, `Tipo`, `idPersona`) VALUES
(1, 'En pepita :3', '2017-03-02', 'Colombia', 'Spam', 1),
(2, 'No pienso en ni mrda', '2017-03-02', 'Colombia', 'Spam', 1),
(3, 'No pienso en ni mrda', '2017-03-02', 'Colombia', 'Spam', 1),
(4, 'sdasdasdasd', '2017-03-02', 'Colombia', 'Spam', 1),
(5, 'sdasdasd', '2017-03-02', 'Colombia', 'Spam', 1),
(6, 'asdasdsad', '2017-03-02', 'Colombia', 'Spam', 1),
(7, 'no pueso pensar en nada que no sea RAP', '2017-03-02', 'Colombia', 'Spam', 1),
(8, 'blabla', '2017-03-02', 'Colombia', 'Spam', 1),
(9, 'blelelele', '2017-03-02', 'Colombia', 'Spam', 1),
(10, 'sdasdasd', '2017-03-02', 'Colombia', 'Spam', 1),
(11, 'sdasdasd', '2017-03-02', 'Colombia', 'Spam', 1),
(12, 'sdasdasd', '2017-03-02', 'Colombia', 'Spam', 1),
(13, 'sdasdasd', '2017-03-02', 'Colombia', 'Spam', 1),
(14, 'sdasdasd', '2017-03-02', 'Colombia', 'Spam', 1),
(15, 'sdasdasd', '2017-03-02', 'Colombia', 'Spam', 1),
(16, 'sdasdasd', '2017-03-02', 'Colombia', 'Spam', 1),
(17, 'sdasdasd', '2017-03-02', 'Colombia', 'Spam', 1),
(18, 'hola :)', '2017-03-02', 'Colombia', 'Spam', 1),
(19, 'En ndadsadsdasdsd', '2017-03-02', 'Colombia', 'Spam', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuarios` int(11) NOT NULL,
  `NickName` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL,
  `Genero` enum('Masculino','Femenino','Indefinido') NOT NULL,
  `Estado` enum('Activo','Inactivo') NOT NULL,
  `Archivo` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `NickName`, `Telefono`, `Genero`, `Estado`, `Archivo`) VALUES
(1, 'pepe99', '23223', 'Masculino', 'Activo', NULL),
(2, 'pepe', '23223', 'Masculino', 'Activo', NULL),
(3, 'camilo99', '32323', 'Masculino', 'Activo', NULL),
(4, 'ADMIN Andres', '213123123', 'Masculino', 'Activo', NULL),
(5, 'Andres', '32123', 'Femenino', 'Activo', NULL),
(6, 'jhgjhgj', 'hgjhgjh', 'Masculino', 'Activo', NULL),
(7, 'Andres99', '3015564516', 'Masculino', 'Activo', NULL),
(8, 'dddddddd', '3333', 'Masculino', 'Activo', NULL),
(33, 'popodeperrqqqweqwe', '3015564516', 'Masculino', 'Activo', 'J201808200001.txt'),
(34, 'asdzzzzzzzzzzzzzz', '2222222222', 'Masculino', 'Inactivo', 'J201808200001.txt'),
(35, 'Sofia01', '3214509236', 'Femenino', 'Activo', 'J201808200001.txt'),
(36, 'leonardocaro008', '3453453323', 'Masculino', 'Activo', 'J201808200001.txt');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`idAdministrador`),
  ADD KEY `fk_administradores_usuarios_idx` (`idUsuarios`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`idPersona`),
  ADD KEY `fk_personas_usuarios1_idx` (`idUsuarios`);

--
-- Indices de la tabla `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`idTema`);

--
-- Indices de la tabla `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`idTweets`),
  ADD KEY `fk_tweets_personas1_idx` (`idPersona`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuarios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `idAdministrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `idPersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tema`
--
ALTER TABLE `tema`
  MODIFY `idTema` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tweets`
--
ALTER TABLE `tweets`
  MODIFY `idTweets` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD CONSTRAINT `fk_administradores_usuarios` FOREIGN KEY (`idUsuarios`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `fk_personas_usuarios1` FOREIGN KEY (`idUsuarios`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tweets`
--
ALTER TABLE `tweets`
  ADD CONSTRAINT `fk_tweets_personas1` FOREIGN KEY (`idPersona`) REFERENCES `personas` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
