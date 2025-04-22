-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-04-2025 a las 05:05:34
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `afiliado`
--

CREATE TABLE `afiliado` (
  `cod_afiliado` int(4) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `apellido1` varchar(150) NOT NULL,
  `apellido2` varchar(150) NOT NULL,
  `documento` varchar(200) NOT NULL,
  `fechaNacimiento` varchar(10) NOT NULL,
  `telefono` varchar(25) NOT NULL,
  `Direccion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `afiliado`
--

INSERT INTO `afiliado` (`cod_afiliado`, `nombre`, `apellido1`, `apellido2`, `documento`, `fechaNacimiento`, `telefono`, `Direccion`) VALUES
(1, 'María', 'González', 'Pérez', 'V-12345678', '1990-04-12', '04141234567', 'Av. Bolívar, Caracas'),
(2, 'Luis', 'Rodríguez', 'Díaz', 'V-87654321', '1985-10-30', '04161234567', 'Calle 8, Miraflorez'),
(3, 'Ana', 'Martínez', 'López', 'V-10293847', '1993-07-05', '04241234567', 'El Paraíso, calle 2'),
(4, 'Carlos', 'Fernández', 'Morales', 'V-56473829', '1997-01-19', '04263214567', 'Isabela, Catolica'),
(5, 'Elena', 'Ruiz', 'Torres', 'V-91827364', '1992-12-08', '04123456789', 'Av. Libertador, Mendoza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `cod_area` int(4) NOT NULL,
  `area` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`cod_area`, `area`) VALUES
(1, 'Ciencias Sociales'),
(2, 'Fisica'),
(3, 'Ciencias Computacionales'),
(4, 'Tecnología'),
(5, 'Arte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `cod_autor` int(4) NOT NULL,
  `autor` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`cod_autor`, `autor`) VALUES
(1, 'Gabriel García Márquez'),
(2, 'Isabel Allende'),
(3, 'Stephen Hawking'),
(4, 'J.K. Rowling'),
(5, 'Dante aleghieri');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE `editorial` (
  `cod_editorial` int(4) NOT NULL,
  `editorial` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `editorial`
--

INSERT INTO `editorial` (`cod_editorial`, `editorial`) VALUES
(1, 'Planeta'),
(2, 'Santillana'),
(3, 'Alfaguara'),
(4, 'Penguin Random House'),
(5, 'Ediciones B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `cod_estado` int(1) NOT NULL,
  `estado` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`cod_estado`, `estado`) VALUES
(1, 'Disponible'),
(2, 'Prestado'),
(3, 'Dañado'),
(4, 'Extraviado'),
(5, 'En reparación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadoporexistencia`
--

CREATE TABLE `estadoporexistencia` (
  `cod_existencia` int(7) NOT NULL,
  `cod_estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estadoporexistencia`
--

INSERT INTO `estadoporexistencia` (`cod_existencia`, `cod_estado`) VALUES
(1001, 1),
(1002, 2),
(1003, 1),
(1004, 3),
(1005, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `cod_libro` int(4) NOT NULL,
  `ISBN` varchar(50) NOT NULL,
  `Titulo` varchar(100) NOT NULL,
  `cod_editorial` int(4) NOT NULL,
  `cod_pais` int(4) NOT NULL,
  `cod_tipolibro` int(4) NOT NULL,
  `fechaLanzamiento` int(4) NOT NULL,
  `edicion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`cod_libro`, `ISBN`, `Titulo`, `cod_editorial`, `cod_pais`, `cod_tipolibro`, `fechaLanzamiento`, `edicion`) VALUES
(1, '978-84-376-0494-7', 'Cien Años de Soledad', 1, 1, 1, 1967, 'Primera'),
(2, '978-607-07-4430-3', 'La Casa de los Espíritus', 2, 2, 2, 1982, 'Segunda'),
(3, '978-0-553-17698-8', 'Breve Historia del Tiempo', 3, 3, 3, 1988, 'Revisada'),
(4, '978-0-7475-3269-9', 'Harry Potter y la Piedra Filosofal', 4, 4, 1, 1997, 'Edición 20 aniversario'),
(5, '978-84-322-3452-4', 'Veinte Poemas de Amor', 5, 1, 2, 1924, 'Edición de bolsillo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `librosporarea`
--

CREATE TABLE `librosporarea` (
  `cod_libro` int(4) NOT NULL,
  `cod_area` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `librosporarea`
--

INSERT INTO `librosporarea` (`cod_libro`, `cod_area`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `librosporautor`
--

CREATE TABLE `librosporautor` (
  `cod_libro` int(4) NOT NULL,
  `cod_autor` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `librosporautor`
--

INSERT INTO `librosporautor` (`cod_libro`, `cod_autor`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `librosporexistencia`
--

CREATE TABLE `librosporexistencia` (
  `cod_existencia` int(7) NOT NULL,
  `cod_libro` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `librosporexistencia`
--

INSERT INTO `librosporexistencia` (`cod_existencia`, `cod_libro`) VALUES
(1001, 1),
(1002, 2),
(1003, 3),
(1004, 4),
(1005, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `cod_pais` int(4) NOT NULL,
  `pais` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`cod_pais`, `pais`) VALUES
(1, 'Colombia'),
(2, 'Chile'),
(3, 'Bolivia'),
(4, 'Estados Unidos'),
(5, 'Argentina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE `prestamo` (
  `cod_prestamo` int(4) NOT NULL,
  `cod_existenicia` int(7) NOT NULL,
  `cod_afiliado` int(4) NOT NULL,
  `fechaPrestamo` varchar(10) NOT NULL,
  `horaPrestamo` varchar(10) NOT NULL,
  `cod_tipoPrestado` char(1) NOT NULL,
  `fechaEntrega` varchar(10) NOT NULL,
  `horaEntrega` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `prestamo`
--

INSERT INTO `prestamo` (`cod_prestamo`, `cod_existenicia`, `cod_afiliado`, `fechaPrestamo`, `horaPrestamo`, `cod_tipoPrestado`, `fechaEntrega`, `horaEntrega`) VALUES
(1, 1002, 1, '2025-04-01', '09:00', 'T', '2025-04-08', '09:00'),
(2, 1003, 2, '2025-04-02', '10:15', 'L', '2025-04-09', '10:30'),
(3, 1004, 3, '2025-04-03', '08:45', 'T', '2025-04-10', '09:00'),
(4, 1001, 4, '2025-04-04', '11:00', 'L', '2025-04-11', '11:15'),
(5, 1005, 5, '2025-04-05', '13:00', 'T', '2025-04-12', '13:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipolibro`
--

CREATE TABLE `tipolibro` (
  `cod_tipolibro` int(4) NOT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipolibro`
--

INSERT INTO `tipolibro` (`cod_tipolibro`, `tipo`) VALUES
(1, 'Novela'),
(2, 'Poesía'),
(3, 'Divulgación científica'),
(4, 'Historia'),
(5, 'Fantasia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoprestamo`
--

CREATE TABLE `tipoprestamo` (
  `cod_tipoPrestamo` char(1) NOT NULL,
  `tipoPrestamo` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipoprestamo`
--

INSERT INTO `tipoprestamo` (`cod_tipoPrestamo`, `tipoPrestamo`) VALUES
('D', 'Digital'),
('E', 'Especial'),
('I', 'Interno'),
('L', 'Largo Plazo'),
('T', 'Temporal');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `afiliado`
--
ALTER TABLE `afiliado`
  ADD PRIMARY KEY (`cod_afiliado`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`cod_area`);

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`cod_autor`);

--
-- Indices de la tabla `editorial`
--
ALTER TABLE `editorial`
  ADD PRIMARY KEY (`cod_editorial`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`cod_estado`);

--
-- Indices de la tabla `estadoporexistencia`
--
ALTER TABLE `estadoporexistencia`
  ADD PRIMARY KEY (`cod_existencia`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`cod_libro`);

--
-- Indices de la tabla `librosporarea`
--
ALTER TABLE `librosporarea`
  ADD PRIMARY KEY (`cod_libro`);

--
-- Indices de la tabla `librosporautor`
--
ALTER TABLE `librosporautor`
  ADD PRIMARY KEY (`cod_libro`);

--
-- Indices de la tabla `librosporexistencia`
--
ALTER TABLE `librosporexistencia`
  ADD PRIMARY KEY (`cod_existencia`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`cod_pais`);

--
-- Indices de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD PRIMARY KEY (`cod_prestamo`);

--
-- Indices de la tabla `tipolibro`
--
ALTER TABLE `tipolibro`
  ADD PRIMARY KEY (`cod_tipolibro`);

--
-- Indices de la tabla `tipoprestamo`
--
ALTER TABLE `tipoprestamo`
  ADD PRIMARY KEY (`cod_tipoPrestamo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `afiliado`
--
ALTER TABLE `afiliado`
  MODIFY `cod_afiliado` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `cod_area` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `cod_autor` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `editorial`
--
ALTER TABLE `editorial`
  MODIFY `cod_editorial` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `cod_estado` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estadoporexistencia`
--
ALTER TABLE `estadoporexistencia`
  MODIFY `cod_existencia` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `cod_libro` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `librosporarea`
--
ALTER TABLE `librosporarea`
  MODIFY `cod_libro` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `librosporautor`
--
ALTER TABLE `librosporautor`
  MODIFY `cod_libro` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `librosporexistencia`
--
ALTER TABLE `librosporexistencia`
  MODIFY `cod_existencia` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `cod_pais` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  MODIFY `cod_prestamo` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipolibro`
--
ALTER TABLE `tipolibro`
  MODIFY `cod_tipolibro` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
