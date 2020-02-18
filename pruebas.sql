-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-02-2020 a las 06:11:01
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `codigo_curso` varchar(50) NOT NULL,
  `nombre_curso` varchar(50) NOT NULL,
  `matricula` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`codigo_curso`, `nombre_curso`, `matricula`) VALUES
('0001', 'web', 'virtual'),
('0010', 'POO', 'virtual');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datospersonales`
--

CREATE TABLE `datospersonales` (
  `documento` varchar(10) DEFAULT NULL,
  `Nombre` varchar(15) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `edad` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `datospersonales`
--

INSERT INTO `datospersonales` (`documento`, `Nombre`, `apellido`, `edad`) VALUES
('50960770', 'Ana', 'Gonzalez', 30),
('15320235', 'Pedro', 'Moreno', 25),
('13512213', 'Maria', 'Bueno', 20),
('10215525', 'Juan', 'Corredor', 30),
('54313216', 'Alexandra', 'Ospina', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_usuarios`
--

CREATE TABLE `datos_usuarios` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `Apellido` varchar(30) DEFAULT NULL,
  `Direccion` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_plataforma`
--

CREATE TABLE `usuarios_plataforma` (
  `Id` int(5) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(21) DEFAULT NULL,
  `institution` varchar(32) DEFAULT NULL,
  `department` varchar(12) DEFAULT NULL,
  `city` varchar(18) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `profile_field_Cargo` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios_plataforma`
--

INSERT INTO `usuarios_plataforma` (`Id`, `email`, `firstname`, `lastname`, `institution`, `department`, `city`, `country`, `profile_field_Cargo`) VALUES
(2, 'falso3@informe.com', 'juliana', 'perez benavides', 'CARCAFE', 'Cesar', 'Bogotá', 'CO', 'administrador'),
(3, 'falso4@informe.com', 'Katherine Yurley', 'Poveda Bernal', 'CARCAFE', 'Cesar', 'Bogotá', 'CO', 'Coordinadora de operaciones'),
(4, 'falso5@informe.com', 'monica', 'aristizabal', 'CARCAFE', 'Cesar', 'manizales', 'CO', 'Coordinadora Comercio exterior'),
(5, 'falso6@informe.com', 'Paolo', 'RAMIREZ', 'CARCAFE', 'Cesar', 'PISCO CHIQUITO', 'CO', 'jefe'),
(6, 'falso7@informe.com', 'A&B CONSULTORES E INGENIEROS', 'CONSULTORES', 'Cámara de comercio de Valledupar', 'Cesar', 'Valledupar', 'CO', 'jefe'),
(7, 'falso8@informe.com', 'AARON', 'GUAPACHA', 'Cámara de comercio de Valledupar', 'CUNDINAMARCA', 'Pereira', 'CO', 'jefe'),
(8, 'falso9@informe.com', 'ABDENAGO', 'MALDONADO', 'CARCAFE', 'CUNDINAMARCA', 'LAURELES', 'CO', 'jefe'),
(9, 'falso10@informe.com', 'ABDON', 'MATEUS', 'CARCAFE', 'CUNDINAMARCA', 'EL PEON', 'CO', 'jefe'),
(10, 'falso11@informe.com', 'ABDON', 'PACHON', 'CARCAFE', 'CUNDINAMARCA', 'LAS MERCEDES', 'CO', 'jefe'),
(11, 'falso12@informe.com', 'ABDUL', 'JARAMILLO', 'CARCAFE', 'QUINDIO', 'ARMENIA', 'CO', 'Gerente'),
(12, 'falso13@informe.com', 'ABECOR', 'SAS', 'ABECOR SAS', 'PALMIRA', 'VALLE', 'CO', 'Gerente'),
(13, 'falso14@informe.com', 'ABEL', 'AREVALO', 'ABECOR SAS', 'QUINDIO', 'ARMENIA', 'CO', 'Gerente'),
(14, 'falso15@informe.com', 'ABEL', 'AVILA', 'CARCAFE', 'CUNDINAMARCA', 'EL HATO', 'CO', 'Gerente'),
(15, 'falso16@informe.com', 'ABEL', 'BRACHO', 'Cámara de comercio de Valledupar', 'Cesar', 'Valledupar', 'CO', 'Gerente'),
(16, 'falso17@informe.com', 'ABEL', 'CRIOLLO', 'Cámara de comercio de Valledupar', 'QUINDIO', 'ARMENIA', 'CO', 'jefe'),
(17, 'falso18@informe.com', 'ABEL', 'DURAN', 'Cámara de comercio de Valledupar', 'QUINDIO', 'ARMENIA', 'CO', 'jefe'),
(18, 'falso19@informe.com', 'ABEL', 'GAITAN', 'Cámara de comercio de Valledupar', 'QUINDIO', 'ARMENIA', 'CO', 'jefe'),
(19, 'falso20@informe.com', 'ABEL', 'GIL', 'Cámara de comercio de Valledupar', 'CUNDINAMARCA', 'SANTA ANA', 'CO', 'jefe'),
(20, 'falso21@informe.com', 'ABEL', 'TRIANA', 'CARCAFE', 'CUNDINAMARCA', 'GUAMAL', 'CO', 'jefe'),
(21, 'falso22@informe.com', 'ABEL', 'TRIVIO', 'CARCAFE', 'CUNDINAMARCA', 'GUAYACUNDO ALTO', 'CO', 'jefe'),
(22, 'falso23@informe.com', 'ABELARDO', 'CAON', 'CARCAFE', 'CUNDINAMARCA', 'LA CARRERA', 'CO', 'Gerente'),
(23, 'falso24@informe.com', 'ABELARDO', 'CASAS', 'CARCAFE', 'CUNDINAMARCA', 'GAVILAN', 'CO', 'Gerente'),
(24, 'falso25@informe.com', 'ABELARDO', 'OCAMPO', 'CARCAFE', 'QUINDIO', 'ARMENIA', 'CO', 'jefe'),
(25, 'falso26@informe.com', 'ABELARDO', 'PEÃ‘A', 'CARCAFE', 'QUINDIO', 'ARMENIA', 'CO', 'jefe'),
(26, 'falso27@informe.com', 'ABELARDO', 'RIOS', 'CARCAFE', 'QUINDIO', 'ARMENIA', 'CO', 'Coordinadora de operaciones'),
(27, 'falso28@informe.com', 'ABELARDO', 'SANCHEZ', 'CARCAFE', 'CUNDINAMARCA', 'CERRO AZUL', 'CO', 'Coordinadora de operaciones'),
(28, 'falso29@informe.com', 'ABRAHAM', 'RIOS', 'CARCAFE', 'QUINDIO', 'ARMENIA', 'CO', 'Coordinadora de operaciones'),
(29, 'falso30@informe.com', 'ABRAHAM', 'ROMERO', 'Cámara de comercio de Valledupar', 'Cesar', 'Valledupar', 'CO', 'administrador'),
(30, 'falso31@informe.com', 'Abraham', 'Velez Vasquez', 'Cámara de comercio de Valledupar', 'Cesar', 'Cali', 'CO', 'Consultor'),
(31, 'falso32@informe.com', 'ABSALON', 'CASTAEDA', 'CARCAFE', 'CUNDINAMARCA', 'CERINZA', 'CO', 'Consultor'),
(32, 'falso33@informe.com', 'ABSALON', 'HERNANDEZ', 'CARCAFE', 'CUNDINAMARCA', 'NOVILLEROS', 'CO', 'Consultor'),
(33, 'falso34@informe.com', 'ABSALON', 'MAHECHA', 'CARCAFE', 'CUNDINAMARCA', 'EL ROBLE', 'CO', 'jefe'),
(34, 'falso35@informe.com', 'ABSALON', 'SEGURA', 'CARCAFE', 'QUINDIO', 'ARMENIA', 'CO', 'jefe'),
(35, 'falso36@informe.com', 'ACUANGELESS', 'ACUANGELESS', 'Cámara de comercio de Valledupar', 'Cesar', 'Valledupar', 'CO', 'Especialista Liquidaciones'),
(36, 'falso37@informe.com', 'Ada Luz', 'CataÃ±o Charris', 'Cámara de comercio de Valledupar', 'Cesar', 'Barranquilla', 'CO', 'Especialista Liquidaciones'),
(37, 'falso38@informe.com', 'ADA', 'QUIROGA', 'Cámara de comercio de Valledupar', 'QUINDIO', 'ARMENIA', 'CO', 'director tecnico'),
(38, 'falso39@informe.com', 'adalberto', 'garcia carmona', 'Cámara de comercio de Valledupar', 'QUINDIO', 'cali', 'CO', 'director tecnico'),
(39, 'falso40@informe.com', 'Adalberto', 'Garcia Carmona', 'Cámara de comercio de Valledupar', 'QUINDIO', 'Cartagena', 'CO', 'director tecnico'),
(40, 'falso41@informe.com', 'Adalberto', 'Mahecha MuÃ±oz', 'Cámara de comercio de Valledupar', 'QUINDIO', 'Mocoa', 'CO', 'Coordinador de mercadeo'),
(41, 'falso42@informe.com', 'ADALBERTO', 'MONTOYA', 'Cámara de comercio de Valledupar', 'QUINDIO', 'ARMENIA', 'CO', 'Coordinador de mercadeo'),
(42, 'falso43@informe.com', 'ADALBERTO', 'ZABALETA', 'Cámara de comercio de Valledupar', 'Cesar', 'Valledupar', 'CO', 'Coordinador de mercadeo'),
(43, 'falso44@informe.com', 'ADALGIZA', 'SANCHEZ', 'Cámara de comercio de Valledupar', 'QUINDIO', 'ARMENIA', 'CO', 'Coordinador de mercadeo'),
(44, 'falso45@informe.com', 'ADALI', 'RAIGOSO', 'Cámara de comercio de Valledupar', 'QUINDIO', 'ARMENIA', 'CO', 'Coordinador de mercadeo'),
(45, 'falso46@informe.com', 'ADAN', 'FARFAN', 'CARCAFE', 'CUNDINAMARCA', 'RIONEGRO', 'CO', 'Coordinador de mercadeo'),
(46, 'falso47@informe.com', 'ADAN', 'GARCES', 'CARCAFE', 'CUNDINAMARCA', 'GUANE', 'CO', 'Coordinador de mercadeo'),
(47, 'falso48@informe.com', 'ADAN', 'GRIJALBA', 'CARCAFE', 'QUINDIO', 'ARMENIA', 'CO', 'administrador'),
(48, 'falso49@informe.com', 'Adán', 'OrtÃ­z GÃ³mez', 'Bimbo El Salvador', 'QUINDIO', 'San Salvador', 'SV', 'administrador'),
(49, 'falso50@informe.com', 'ADAN', 'VANEGAS', 'Bimbo El Salvador', 'QUINDIO', 'ARMENIA', 'CO', 'administrador'),
(50, 'falso51@informe.com', 'ADELA', 'CEBALLOS', 'Bimbo El Salvador', 'QUINDIO', 'ARMENIA', 'CO', 'webmaster'),
(51, 'falso52@informe.com', 'ADELA', 'ECHEVERRY', 'Bimbo El Salvador', 'QUINDIO', 'ARMENIA', 'CO', 'webmaster'),
(52, 'falso53@informe.com', 'ADELA', 'ESTRADA', 'CARCAFE', 'CUNDINAMARCA', 'GUACAMAYAS', 'CO', 'JEFE DE PLANTA'),
(53, 'falso54@informe.com', 'Adela', 'Jaramillo', 'Alcaldia', 'Antioquia', 'GUACAMAYAS', 'CO', 'JEFE DE PLANTA'),
(54, 'falso55@informe.com', 'ADELA', 'RAMOS', 'CARCAFE', 'CUNDINAMARCA', 'LA MONTAA', 'CO', 'Auxilliar Sistemas'),
(55, 'falso56@informe.com', 'ADELAIDA', 'RAMIREZ', 'CARCAFE', 'CUNDINAMARCA', 'CERRO AZUL', 'CO', 'Auxilliar Sistemas'),
(56, 'falso57@informe.com', 'Adelina', 'Urrego Urrego', 'CARCAFE', 'CUNDINAMARCA', 'Bogotá', 'CO', 'Auxiliar Servicios Generales'),
(57, 'falso58@informe.com', 'ADELIO', 'BELTRAN', 'CARCAFE', 'CUNDINAMARCA', 'LA ENFADOSA', 'CO', 'Auxiliar Servicios Generales'),
(58, 'falso59@informe.com', 'ADELIO', 'BELTRAN', 'CARCAFE', 'CUNDINAMARCA', 'ENFADOSA', 'CO', 'Auxiliar Servicios Generales'),
(59, 'falso60@informe.com', 'Ademir', 'Polania Alvarez', 'CARCAFE', 'CUNDINAMARCA', 'Cali', 'CO', 'Auxiliar Servicios Generales'),
(60, 'falso61@informe.com', 'Aderson Dario', 'NiÃ±o Salazar', 'CARCAFE', 'CUNDINAMARCA', 'Tunja', 'CO', 'Auxiliar Servicios Generales'),
(61, 'falso62@informe.com', 'ADIEL', 'ROJAS', 'Cámara de comercio de Valledupar', 'Cesar', 'Valledupar', 'CO', 'Representante legal'),
(62, 'falso63@informe.com', 'ADIELA', 'ABELLO', 'Cámara de comercio de Valledupar', 'QUINDIO', 'ARMENIA', 'CO', 'Representante legal'),
(63, 'falso64@informe.com', 'Adiela Patricia', 'Arenas Chavarria', 'Cámara de comercio de Valledupar', 'QUINDIO', 'Medellin', 'CO', 'Representante legal'),
(64, 'falso65@informe.com', 'ADIELA', 'SANCHEZ', 'Cámara de comercio de Valledupar', 'QUINDIO', 'ARMENIA', 'CO', 'webmaster'),
(65, 'falso66@informe.com', 'Admin', 'FormaciÃ³n Virtual', 'Cámara de comercio de Valledupar', 'QUINDIO', 'Bogotá', 'CO', 'webmaster'),
(66, 'falso67@informe.com', 'Admin2', 'FormaciÃ³n Virtual', 'Cámara de comercio de Valledupar', 'QUINDIO', 'Bogotá', 'CO', 'webmaster'),
(67, 'falso68@informe.com', 'ADOLFO', 'GARZON', 'CARCAFE', 'CUNDINAMARCA', 'CHONTE GRANDE', 'CO', 'Profesional Cadena Abastecimiento'),
(68, 'falso69@informe.com', 'Adolfo', 'perez', 'CANAL TRADICIONAL', 'ANTIOQUIA', 'Santa Rosa de Osos', 'CO', 'Profesional Cadena Abastecimiento'),
(69, 'falso70@informe.com', 'adolfo', 'rodriguez cantero', 'CANAL TRADICIONAL', 'ANTIOQUIA', 'cali', 'CO', 'Profesional Cadena Abastecimiento'),
(70, 'falso71@informe.com', 'Adonai De Jesus', 'Meza GÃ³mez', 'CANAL TRADICIONAL', 'ANTIOQUIA', 'Barranquilla', 'CO', 'Profesional Cadena Abastecimiento'),
(71, 'falso72@informe.com', 'Adrian Camilo', 'Chequemarca Jaramillo', 'CANAL TRADICIONAL', 'ANTIOQUIA', 'CAUCASIA', 'CO', 'DIRECTORA NACIONAL AUTOSERVICIOS'),
(72, 'falso73@informe.com', 'Adrian', 'PatiÃ±o', 'CANAL TRADICIONAL', 'ANTIOQUIA', 'Santa Rosa de Osos', 'CO', 'DIRECTORA NACIONAL AUTOSERVICIOS'),
(73, 'falso74@informe.com', 'ADRIAN', 'QUINTERO', 'CARCAFE', 'CUNDINAMARCA', 'CAQUIAN', 'CO', 'DIRECTORA NACIONAL AUTOSERVICIOS'),
(74, 'falso75@informe.com', 'Adrian', 'Rincon', 'CANAL TRADICIONAL', 'ANTIOQUIA', 'Santa Rosa de Osos', 'CO', 'DIRECTORA NACIONAL AUTOSERVICIOS'),
(75, 'falso76@informe.com', 'Adriana', 'Bayona Celis', 'Multidimensionales SAS', 'ANTIOQUIA', 'Bucaramanga', 'CO', 'DIRECTORA NACIONAL AUTOSERVICIOS'),
(76, 'falso77@informe.com', 'adriana', 'cortes chaparro', 'Multidimensionales SAS', 'ANTIOQUIA', 'gachancipa', 'CO', 'aprendiz'),
(77, 'falso78@informe.com', 'Adriana', 'Forero', 'Multidimensionales SAS', 'ANTIOQUIA', 'Bogotá', 'CO', 'Lider CH'),
(78, 'falso79@informe.com', 'adriana', 'garcia tejada', 'Multidimensionales SAS', 'ANTIOQUIA', 'Bogotá', 'CO', 'ASISTENTE DE COMPRAS'),
(79, 'falso80@informe.com', 'Adriana', 'Gordillo', 'Multidimensionales SAS', 'ANTIOQUIA', 'Bogotá', 'CO', 'Ejecutiva de ventas'),
(80, 'falso81@informe.com', 'adriana', 'rivera calderon', 'Multidimensionales SAS', 'ANTIOQUIA', 'neiva', 'CO', 'JEFE DE PLANTA'),
(81, 'falso82@informe.com', 'adriana', 'sandoval', 'Multidimensionales SAS', 'ANTIOQUIA', 'neiva', 'CO', 'administradora'),
(82, 'falso83@informe.com', 'Adriana', 'Acosta Ruiz', 'Multidimensionales SAS', 'ANTIOQUIA', 'Bogotá', 'CO', 'Ejecutiva de Cuenta'),
(83, 'falso84@informe.com', 'ADRIANA ARIZAL', 'ARCIA', 'CANAL TRADICIONAL', 'ANTIOQUIA', 'CAUCASIA', 'CO', 'Ejecutiva de Cuenta'),
(84, 'falso85@informe.com', 'Adriana', 'Arroyave Marulanda', 'Mondelez', 'ANTIOQUIA', 'Medellin', 'CO', 'Auxilliar Sistemas'),
(85, 'falso86@informe.com', 'adriana', 'cadrazco', 'Mondelez', 'ANTIOQUIA', 'Medellin', 'CO', 'CEO'),
(86, 'falso87@informe.com', 'ADRIANA', 'CAICEDO', 'Mondelez', 'ANTIOQUIA', 'Bogotá', 'CO', 'ADMINISTRDOR'),
(87, 'falso88@informe.com', 'Adriana', 'Cardenas Giraldo', 'Mondelez', 'ANTIOQUIA', 'Tabio', 'CO', 'Asistente Comercial'),
(88, 'falso89@informe.com', 'ADRIANA CAROLINA', 'VELASQUEZ LOPEZ', 'Mondelez', 'ANTIOQUIA', 'Bogotá', 'CO', 'CEO'),
(89, 'falso90@informe.com', 'ADRIANA', 'CIFUENTES', 'CARCAFE', 'ANTIOQUIA', 'COMPERA', 'CO', 'CEO'),
(90, 'falso91@informe.com', 'ADRIANA', 'DAMELINES', 'Crecer y crear', 'QUINDIO', 'ARMENIA', 'CO', 'CEO'),
(91, 'falso92@informe.com', 'adriana del pilar', 'gomez romero', 'Crecer y crear', 'QUINDIO', 'Bogotá', 'CO', 'Asistente de Produccion'),
(92, 'falso93@informe.com', 'Adriana', 'Diaz Garcia', 'Crecer y crear', 'QUINDIO', 'Medellin', 'CO', 'Directora de Procesos'),
(93, 'falso94@informe.com', 'Adriana', 'Escobar', 'Crecer y crear', 'QUINDIO', 'Medellin', 'CO', 'Ejecutiva de Ventas'),
(94, 'falso95@informe.com', 'ADRIANA', 'ESTRADA', 'Crecer y crear', 'CUNDINAMARCA', 'PINZAIMA', 'CO', 'Ejecutiva de Ventas'),
(95, 'falso96@informe.com', 'Adriana', 'Fuentes', 'Crecer y crear', 'CUNDINAMARCA', 'Bogotá', 'CO', 'Analista Logistica'),
(96, 'falso97@informe.com', 'ADRIANA', 'GACHA', 'Crecer y crear', 'CUNDINAMARCA', 'LUCITANIA', 'CO', 'Analista Logistica'),
(97, 'falso98@informe.com', 'adriana', 'gaitan fonseca', 'Crecer y crear', 'CUNDINAMARCA', 'Bogotá', 'CD', 'gerente'),
(98, 'falso99@informe.com', 'Adriana', 'Garca', 'COLSUBSIDIO', 'Antioquia', 'Guatape', 'CO', 'CALIDAD'),
(99, 'falso100@informe.com', 'ADRIANA', 'GARCIA', 'COLSUBSIDIO', 'Antioquia', 'Bogotá', 'CO', 'CALIDAD'),
(100, 'falso101@informe.com', 'ADRIANA', 'GARCIA', 'COLSUBSIDIO', 'QUINDIO', 'ARMENIA', 'CO', 'Asistente de gerencia'),
(101, 'falso102@informe.com', 'Adriana', 'Garzon Marulnda', 'COLSUBSIDIO', 'QUINDIO', 'cota', 'CO', 'Asistente de gerencia'),
(102, 'falso103@informe.com', 'ADRIANA', 'GIRALDO', 'COLSUBSIDIO', 'QUINDIO', 'ARMENIA', 'CO', 'Gerente'),
(103, 'falso104@informe.com', 'Adriana', 'Gomez', 'COLSUBSIDIO', 'QUINDIO', 'Sabaneta', 'CO', 'Gerente'),
(104, 'falso105@informe.com', 'ADRIANA GONZALEZ', 'NUNEZ', 'COLSUBSIDIO', 'Cundinamarca', 'Bogotá', 'CO', 'auxiliar administrativo'),
(105, 'falso106@informe.com', 'ADRIANA ISABEL', 'CORONADO LASTRA', 'LOGYCA SERVICIOS SAS', 'Cundinamarca', 'barranquilla', 'CO', 'auxiliar administrativo'),
(106, 'falso107@informe.com', 'Adriana', 'Jaramillo Coll', 'LOGYCA SERVICIOS SAS', 'Cundinamarca', 'Buenos Aires', 'AR', 'Jefe de Inventarios'),
(107, 'falso108@informe.com', 'Adriana Jimena', 'Bohorquez Garcia', 'LOGYCA SERVICIOS SAS', 'Cundinamarca', 'Madrid', 'CO', 'Jefe informatica'),
(108, 'falso109@informe.com', 'Adriana Julieth', 'Ossa Fajardo', 'LOGYCA SERVICIOS SAS', 'Cundinamarca', 'Bogotá', 'CO', 'ANALISTA COMERCIAL Y CARTERA'),
(109, 'falso110@informe.com', 'ADRIANA MARCELA', 'CAÃ‘ON AZUERO', 'LOGYCA SERVICIOS SAS', 'Cundinamarca', 'Bogotá', 'CO', 'ANALISTA COMERCIAL Y CARTERA'),
(110, 'falso111@informe.com', 'ADRIANA MARCELA', 'PEREZ RAMOS', 'LOCATEL', 'ANTIOQUIA', 'CAUCASIA', 'CO', 'ANALISTA COMERCIAL Y CARTERA'),
(111, 'falso112@informe.com', 'ADRIANA MARIA', 'MAZUERA ORTIZááá', 'LOCATEL', 'ANTIOQUIA', 'Bogotá', 'CO', 'ANALISTA COMERCIAL Y CARTERA'),
(112, 'falso113@informe.com', 'Adriana Milena', 'Vanegas Pardo', 'LOCATEL', 'ANTIOQUIA', 'Bogotá', 'CO', 'Digitadora Canal Autoservicio'),
(113, 'falso114@informe.com', 'ADRIANA MILENA', 'VEGA VELEZ', 'LOCATEL', 'ANTIOQUIA', 'CAUCASIA', 'CO', 'Digitadora Canal Autoservicio'),
(114, 'falso115@informe.com', 'ADRIANA', 'MOYANO', 'LOCATEL', 'CUNDINAMARCA', 'MORIELES', 'CO', 'Digitadora Canal Autoservicio'),
(115, 'falso116@informe.com', 'ADRIANA', 'NOREÃ‘A', 'LOCATEL', 'QUINDIO', 'ARMENIA', 'CO', 'Digitadora Canal Autoservicio'),
(116, 'falso117@informe.com', 'ADRIANA', 'OSORIO', 'LOCATEL', 'QUINDIO', 'ARMENIA', 'CO', 'Digitadora Canal Autoservicio'),
(117, 'falso118@informe.com', 'ADRIANA PAOLA', 'ARRAZOLA AVILA', 'Cencosud Colombia', 'ANTIOQUIA', 'CAUCASIA', 'CO', 'Directora Gestion Humana'),
(118, 'falso119@informe.com', 'Adriana', 'patiÃ±o', 'Cencosud Colombia', 'ANTIOQUIA', 'Santa Rosa de Osos', 'CO', 'Directora Gestion Humana'),
(119, 'falso120@informe.com', 'Adriana Patricia', 'Correa Rojas', 'Cencosud Colombia', 'ANTIOQUIA', 'Bucaramanga', 'CO', 'Directora Gestion Humana'),
(120, 'falso121@informe.com', 'Adriana Patricia', 'Foronda Mira', 'Cencosud Colombia', 'ANTIOQUIA', 'Ibague', 'CO', 'Quimico Farmaceutico'),
(121, 'falso122@informe.com', 'ADRIANA PATRICIA', 'MUÃ‘OZ CALDERON', 'Cencosud Colombia', 'ANTIOQUIA', 'Sangil', 'CO', 'Auxiliar Administrativo'),
(122, 'falso123@informe.com', 'Adriana', 'Pinilla Bello', 'Multidimensionales SAS', 'ANTIOQUIA', 'Bogotá', 'CO', 'Auxiliar Administrativo'),
(123, 'falso124@informe.com', 'ADRIANA', 'RODRIGUEZ', 'Multidimensionales SAS', 'CUNDINAMARCA', 'SANTA ROSA', 'CO', 'A. ADMINISTRATIVA'),
(124, 'falso125@informe.com', 'ADRIANA', 'ROZO', 'Multidimensionales SAS', 'CUNDINAMARCA', 'SAN BERNARDO BAJO', 'CO', 'A. ADMINISTRATIVA'),
(125, 'falso126@informe.com', 'ADRIANA', 'SAENZ', 'Multidimensionales SAS', 'QUINDIO', 'ARMENIA', 'CO', 'A. ADMINISTRATIVA'),
(126, 'falso127@informe.com', 'ADRIANA', 'SEPULVEDA', 'Multidimensionales SAS', 'QUINDIO', 'Bogotá', 'CO', 'A. ADMINISTRATIVA'),
(127, 'falso128@informe.com', 'Adriana', 'Susa Escobar', 'Multidimensionales SAS', 'QUINDIO', 'Bogotá', 'CO', 'Mercaderista'),
(128, 'falso129@informe.com', 'adriana', 'villarreal', 'AGRONATURAL DEL VALLE SAS', 'QUINDIO', 'Bogotá', 'CO', 'gerente'),
(129, 'falso130@informe.com', 'ADRIANO', 'ACOSTA', 'AGRONATURAL DEL VALLE SAS', 'CUNDINAMARCA', 'PISCO CHIQUITO', 'CO', 'gerente'),
(130, 'falso131@informe.com', 'ADRIANO', 'INFANTE', 'AGRONATURAL DEL VALLE SAS', 'CUNDINAMARCA', 'CASTAO', 'CO', 'gerente'),
(131, 'falso132@informe.com', 'AGACOCESAR', 'AGACOCESAR', 'AGRONATURAL DEL VALLE SAS', 'Cesar', 'Valledupar', 'CO', 'gerente'),
(132, 'falso133@informe.com', 'AGAPITO', 'MURCIA', 'AGRONATURAL DEL VALLE SAS', 'CUNDINAMARCA', 'LUCITANIA', 'CO', 'gerente'),
(133, 'falso134@informe.com', 'AGBON INVERSIONESS', 'AGBON', 'AGRONATURAL DEL VALLE SAS', 'Cesar', 'Valledupar', 'CO', 'gerente'),
(134, 'falso135@informe.com', 'AGRICOLA ALTOS', 'DEL VALLE SAS', 'AGRONATURAL DEL VALLE SAS', 'PALMIRA', 'VALLE', 'CO', 'gerente'),
(135, 'falso136@informe.com', 'AGRICOLA EL PRADOS', 'AGRICOLA', 'AGRONATURAL DEL VALLE SAS', 'Cesar', 'Valledupar', 'CO', 'gerente'),
(136, 'falso137@informe.com', 'AGRICOLAS JOHANANS', 'AGRICOLAS', 'AGRONATURAL DEL VALLE SAS', 'Cesar', 'Valledupar', 'CO', 'gerente'),
(137, 'falso138@informe.com', 'AGRO', 'JR', 'AGRONATURAL DEL VALLE SAS', 'CANDELARIA', 'VALLE', 'CO', 'gerente'),
(138, 'falso139@informe.com', 'AGRO SAN CAYETANO', 'SAN', 'AGRONATURAL DEL VALLE SAS', 'Cesar', 'Valledupar', 'CO', 'Directora Gestion Humana'),
(139, 'falso140@informe.com', 'AGROALGARROBOS', 'AGROALGARROBO', 'AGRONATURAL DEL VALLE SAS', 'Cesar', 'Valledupar', 'CO', 'Quimico Farmaceutico'),
(140, 'falso141@informe.com', 'AGROALIMENTOS', 'NARINO S A S', 'AGRONATURAL DEL VALLE SAS', 'CANDELARIA', 'VALLE', 'CO', 'Auxiliar Administrativo'),
(141, 'falso142@informe.com', 'AGROAMBIENTAL COSTA VERDES', 'AGROAMBIENTAL', 'AGRONATURAL DEL VALLE SAS', 'Cesar', 'Valledupar', 'CO', 'Directora Gestion Humana'),
(142, 'falso143@informe.com', 'AGRO-AMBIENTALES DE LA PALMITA', 'COOPERATIVA', 'AGRONATURAL DEL VALLE SAS', 'Cesar', 'Valledupar', 'CO', 'Quimico Farmaceutico'),
(143, 'falso144@informe.com', 'AGROAMBIENTALES DEL CESARS', 'CESARS', 'AGRONATURAL DEL VALLE SAS', 'Cesar', 'Valledupar', 'CO', 'Auxiliar Administrativo'),
(144, 'falso145@informe.com', 'AGROCHAPARRALS', 'AGROCHAPARRAL', 'AGRONATURAL DEL VALLE SAS', 'Cesar', 'Valledupar', 'CO', 'Directora Gestion Humana'),
(145, 'falso146@informe.com', 'AGROCOMERCIALS.', 'AGRO', 'AGRONATURAL DEL VALLE SAS', 'Cesar', 'Valledupar', 'CO', 'Ejecutiva de Cuenta'),
(146, 'falso147@informe.com', 'AGROEMPRENDIMIENTOSS', 'AGROEMPRENDIMIENTOS', 'AGRONATURAL DEL VALLE SAS', 'Cesar', 'Valledupar', 'CO', 'Auxilliar Sistemas'),
(147, 'falso148@informe.com', 'AGROEMPRESARS', 'AGROEMPRESAR', 'AGRONATURAL DEL VALLE SAS', 'Cesar', 'Valledupar', 'CO', 'CEO'),
(148, 'falso149@informe.com', 'AGROFRUTAS', 'AGROFRUTAS', 'AGRONATURAL DEL VALLE SAS', 'Cesar', 'Valledupar', 'CO', 'ADMINISTRDOR'),
(149, 'falso150@informe.com', 'AGROGELS', 'S', 'AGRONATURAL DEL VALLE SAS', 'Cesar', 'Valledupar', 'CO', 'Asistente Comercial'),
(150, 'ewqufewof', 'wqerwqer', 'werwqer', 'qwerwqer', 'qwerweqr', 'qwerwqer', 'wq', 'wqerwqr'),
(151, '', '', '', '', '', '', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos_usuarios`
--
ALTER TABLE `datos_usuarios`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `usuarios_plataforma`
--
ALTER TABLE `usuarios_plataforma`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos_usuarios`
--
ALTER TABLE `datos_usuarios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios_plataforma`
--
ALTER TABLE `usuarios_plataforma`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
