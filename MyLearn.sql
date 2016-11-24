-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 16-11-2016 a las 15:10:52
-- Versión del servidor: 5.6.30-0ubuntu0.15.10.1
-- Versión de PHP: 5.6.11-1ubuntu3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `MyLearn`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Comentario`
--

CREATE TABLE IF NOT EXISTS `Comentario` (
  `idComentario` int(11) NOT NULL,
  `Comentario` varchar(500) NOT NULL,
  `idAutor` int(11) NOT NULL,
  `idProyecto` int(11) NOT NULL,
  `Adjunto` varchar(100) NOT NULL,
  `Fecha` varchar(10) NOT NULL,
  `Hora` varchar(5) NOT NULL,
  `NombreArchivo` varchar(30) NOT NULL,
  `Respuesta` int(11) NOT NULL COMMENT 'idComentario Anterior'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Curso`
--

CREATE TABLE IF NOT EXISTS `Curso` (
  `idCurso` int(11) NOT NULL,
  `Nombre` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `Descripcion` varchar(500) NOT NULL,
  `NumeroGrupo` int(11) NOT NULL,
  `NotaMinima` float NOT NULL,
  `Estado` int(11) NOT NULL COMMENT '0 = En curso, 1 = Terminado',
  `FechaInicio` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CursoEstudiante`
--

CREATE TABLE IF NOT EXISTS `CursoEstudiante` (
  `idCurso` int(11) NOT NULL,
  `idEstudiante` int(11) NOT NULL,
  `Estado` int(11) NOT NULL COMMENT '0 = En curso, 1 = Aprobado, 2 = Reprobado',
  `Nota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CursoProfesor`
--

CREATE TABLE IF NOT EXISTS `CursoProfesor` (
  `idCurso` int(11) NOT NULL,
  `idProfesor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Empresa`
--

CREATE TABLE IF NOT EXISTS `Empresa` (
  `idEmpresa` int(11) NOT NULL,
  `NombreEmpresarial` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `Contrasenia` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `NombreContacto` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `ApellidoContacto` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `CorreoContaco` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `Usuario` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `Pais` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `Telefono` int(15) NOT NULL,
  `Repositorio` int(11) NOT NULL,
  `SitioWeb` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `Logo` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Empresa`
--

INSERT INTO `Empresa` (`idEmpresa`, `NombreEmpresarial`, `Contrasenia`, `NombreContacto`, `ApellidoContacto`, `CorreoContaco`, `Usuario`, `Pais`, `Telefono`, `Repositorio`, `SitioWeb`, `Logo`) VALUES
(0, '', '', '', '', '0', '', '', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Estudiante`
--

CREATE TABLE IF NOT EXISTS `Estudiante` (
  `idEstudiante` int(11) NOT NULL,
  `Nombre` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `Apellido` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `Contrasenia` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `Usuario` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `Pais` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `Universidad` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `Carne` int(11) NOT NULL,
  `Telefono` int(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Repositorio` int(11) NOT NULL,
  `LinkHojaVida` varchar(100) NOT NULL,
  `Foto` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ListaTecnologia`
--

CREATE TABLE IF NOT EXISTS `ListaTecnologia` (
  `idTecnologia` int(11) NOT NULL,
  `idProyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Logro`
--

CREATE TABLE IF NOT EXISTS `Logro` (
  `idLogro` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Valor` float NOT NULL,
  `idCurso` int(11) NOT NULL,
  `idEstudiaante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `LogroOptenido`
--

CREATE TABLE IF NOT EXISTS `LogroOptenido` (
  `idCurso` int(11) NOT NULL,
  `idEstudiante` int(11) NOT NULL,
  `idLogro` int(11) NOT NULL,
  `Estado` tinyint(1) NOT NULL COMMENT '0 = Incompleto, 1 = Completo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Oferta`
--

CREATE TABLE IF NOT EXISTS `Oferta` (
  `idOferta` int(11) NOT NULL,
  `idEstudiante` int(11) NOT NULL,
  `Precio` int(11) NOT NULL,
  `Tiempo` varchar(30) NOT NULL,
  `Comentario` varchar(500) NOT NULL,
  `Hora` varchar(5) NOT NULL,
  `Fecha` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pais`
--

CREATE TABLE IF NOT EXISTS `Pais` (
  `idPais` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Profesor`
--

CREATE TABLE IF NOT EXISTS `Profesor` (
  `idProfesor` int(11) NOT NULL,
  `Nombre` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `Apellido` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `Contrasenia` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `Email` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `HoraAtencion` varchar(500) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `Universidad` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Repositorio` int(11) NOT NULL,
  `Foto` longblob NOT NULL,
  `Usuario` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Proyecto`
--

CREATE TABLE IF NOT EXISTS `Proyecto` (
  `idProyecto` int(11) NOT NULL,
  `idEstudiante` int(11) NOT NULL,
  `idProfesor` int(11) NOT NULL,
  `idEmpresa` int(11) NOT NULL,
  `Decripcion` varchar(500) NOT NULL,
  `Estado` int(11) NOT NULL COMMENT '0 = En OFerta, 1 = Activo, 2 = Terminado',
  `Tipo` int(11) NOT NULL COMMENT '0 = Curso, 1 = Empresa',
  `FechaInicio` varchar(10) NOT NULL,
  `FechaFinal` varchar(10) NOT NULL,
  `Presupuesto` int(11) NOT NULL COMMENT 'Es lo que va a invertir la empresa',
  `Calificacion` float NOT NULL,
  `Problematica` varchar(500) NOT NULL COMMENT 'Solo para proyectos de curso',
  `Adjunto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tecnologia`
--

CREATE TABLE IF NOT EXISTS `Tecnologia` (
  `idTecnologia` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TecnologiaEstudiante`
--

CREATE TABLE IF NOT EXISTS `TecnologiaEstudiante` (
  `idEstudiante` int(11) NOT NULL,
  `idTecnologia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tecnologias dominadas por un estudiante';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Universidad`
--

CREATE TABLE IF NOT EXISTS `Universidad` (
  `idUniversidad` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Comentario`
--
ALTER TABLE `Comentario`
  ADD PRIMARY KEY (`idComentario`),
  ADD UNIQUE KEY `idComentario` (`idComentario`);

--
-- Indices de la tabla `Curso`
--
ALTER TABLE `Curso`
  ADD PRIMARY KEY (`idCurso`),
  ADD UNIQUE KEY `idCurso` (`idCurso`);

--
-- Indices de la tabla `CursoEstudiante`
--
ALTER TABLE `CursoEstudiante`
  ADD PRIMARY KEY (`idCurso`,`idEstudiante`),
  ADD UNIQUE KEY `idCurso` (`idCurso`);

--
-- Indices de la tabla `CursoProfesor`
--
ALTER TABLE `CursoProfesor`
  ADD PRIMARY KEY (`idCurso`,`idProfesor`);

--
-- Indices de la tabla `Empresa`
--
ALTER TABLE `Empresa`
  ADD PRIMARY KEY (`idEmpresa`),
  ADD UNIQUE KEY `idEmpresa` (`idEmpresa`);

--
-- Indices de la tabla `Estudiante`
--
ALTER TABLE `Estudiante`
  ADD PRIMARY KEY (`idEstudiante`),
  ADD UNIQUE KEY `idEstudiante` (`idEstudiante`);

--
-- Indices de la tabla `ListaTecnologia`
--
ALTER TABLE `ListaTecnologia`
  ADD PRIMARY KEY (`idTecnologia`,`idProyecto`);

--
-- Indices de la tabla `Logro`
--
ALTER TABLE `Logro`
  ADD PRIMARY KEY (`idLogro`),
  ADD UNIQUE KEY `idLogro` (`idLogro`);

--
-- Indices de la tabla `LogroOptenido`
--
ALTER TABLE `LogroOptenido`
  ADD PRIMARY KEY (`idCurso`,`idEstudiante`,`idLogro`);

--
-- Indices de la tabla `Oferta`
--
ALTER TABLE `Oferta`
  ADD PRIMARY KEY (`idOferta`);

--
-- Indices de la tabla `Pais`
--
ALTER TABLE `Pais`
  ADD PRIMARY KEY (`idPais`),
  ADD UNIQUE KEY `idPais` (`idPais`);

--
-- Indices de la tabla `Profesor`
--
ALTER TABLE `Profesor`
  ADD PRIMARY KEY (`idProfesor`),
  ADD UNIQUE KEY `idProfesor` (`idProfesor`);

--
-- Indices de la tabla `Proyecto`
--
ALTER TABLE `Proyecto`
  ADD PRIMARY KEY (`idProyecto`),
  ADD UNIQUE KEY `idProyecto` (`idProyecto`);

--
-- Indices de la tabla `Tecnologia`
--
ALTER TABLE `Tecnologia`
  ADD PRIMARY KEY (`idTecnologia`),
  ADD UNIQUE KEY `idTecnologia` (`idTecnologia`);

--
-- Indices de la tabla `TecnologiaEstudiante`
--
ALTER TABLE `TecnologiaEstudiante`
  ADD PRIMARY KEY (`idEstudiante`,`idTecnologia`);

--
-- Indices de la tabla `Universidad`
--
ALTER TABLE `Universidad`
  ADD PRIMARY KEY (`idUniversidad`),
  ADD UNIQUE KEY `idUniversidad` (`idUniversidad`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
