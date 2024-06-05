-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-06-2024 a las 02:54:20
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
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
--

CREATE TABLE `artista` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `descripcion` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `artista`
--

INSERT INTO `artista` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Bizarrap', 'Es un productor argentino, uno de los máximos referentes de la música urbana en español actual y de la escena de trap latinoamericana.'),
(2, 'Milo J', 'Es un cantante y compositor argentino de rhythm and blues latino, trap latino y easy listening.'),
(3, 'BadBunny', 'Es un intérprete y compositor de música urbana puertorriqueño. Se le considera uno de los principales nombres del panorama actual del rap, trap y reguetón en español.'),
(4, 'Danny Lux', 'Comenzó su carrera compartiendo videos cómicos en TikTok, pero un día decidió entonar una canción regional mexicana mientras tocaba la guitarra, lo que lo catapultó a la fama en línea.'),
(5, 'Natanael Cano', 'es el pionero de los corridos tumbados. Natanael Cano habla por un género, una generación y un país que, como su música, ha sido ampliamente influenciado por elementos externos.'),
(6, 'StrayKids', 'La agrupación actualmente se compone de 8 miembros: Lee Know, Han, I.N, Felix, Bangchan, Hyunjin, Seungmin, y Changbin.'),
(7, 'Enanitos Verdes', 'Es la banda que nacio en la ciudad de Mendoza , Argentina, en noviembre de 1979. Integrada por Marciano Cantero en voz y bajo Felipe Staiti en guitarra y Daniel Piccolo en batería.'),
(8, 'Romeo Santos', 'Es un cantante de bachata que nació el 21 de julio de 1981 en el barrio Bronx de Nueva York.'),
(9, 'Sebastian Yatra', 'Es un galardonado artista multi platino que ha liderado las listas globales con sus sencillos que le han dado un giro al género alcanzando 16 billones de reproducciones y más de 21 millones de oyentes mensuales en Spotify,'),
(10, 'Kendrick Lamar', 'La Trayectoria Brillante de un Icono del Hip-Hop. Nacido el 17 de junio de 1987 en Compton, California, Kendrick Lamar ha emergido como un titán en la escena del hip-hop, llevando sus rolas a nuevas ligas con una mezcla única de lírica aguda y conciencia social.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista_canciones`
--

CREATE TABLE `artista_canciones` (
  `id` int(11) NOT NULL,
  `artistas_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'S-Class', 2, '00:03:30', '2023-06-01', 1, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fopen.spotify.com%2Fintl-es%2Ftrack%2F3gTQwwDNJ42CCLo3Sf4JDd&psig=AOvVaw2ObEQQcQyIjxVIeWpEjtG_&ust=1717633111603000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCIjL0Y6Yw4YDFQAAAAAdAAAAABAE'),
(2, 'Red Lights', 2, '00:03:17', '2021-09-13', 1, 'https://www.shazam.com/es-es/song/1608256175/red-lights-bang-chan-hyunjin'),
(3, 'MEGAVERSE', 2, '00:04:05', '2023-11-19', 1, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3D7-X_7Tk0wXI&psig=AOvVaw3TBNY2_IjOfRlJq7BJqpz3&ust=1717633603178000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCKjjp_uZw4YDFQAAAAAdAAAAABAE'),
(4, 'LALALALA', 2, '00:03:19', '2023-11-09', 1, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DdBDkYofMUs4&psig=AOvVaw3KlqTqMYRU8B5flLZa_2YI&ust=1717634226306000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCLiYzaOcw4YDFQAAAAAdAAAAABAE'),
(5, 'Lose My Breath', 2, '00:02:52', '2024-05-09', 1, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fopen.spotify.com%2Fintl-es%2Ftrack%2F2DXavoWAmIHlrECHPM1Vca&psig=AOvVaw1xoAnhbxeBRs4BVXD0tOqk&ust=1717634348435000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCKCY-Nucw4YDFQAAAAAdAAAAABAE'),
(6, 'CASE 143', 2, '00:03:40', '2022-10-06', 1, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fgenius.com%2FGenius-traducciones-al-espanol-stray-kids-case-143-traduccion-al-espanol-lyrics&psig=AOvVaw3lRpRjEn0HCXrKctOdafDw&ust=1717634445492000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCJCv542dw4YDFQAAAAAdAAAAABAE'),
(7, '', 2, '00:03:22', '2022-03-17', 1, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fopen.spotify.com%2Fintl-es%2Ftrack%2F63irPUP3xB74fHdw1Aw9zR&psig=AOvVaw1HEm3jAmb2h2WfYGo_9lNR&ust=1717634557285000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCLDB-cCdw4YDFQAAAAAdAAAAABAJ'),
(8, 'GEL LIT', 2, '00:02:56', '2023-06-18', 1, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fgenius.com%2FGenius-traducciones-al-espanol-stray-kids-get-lit-traduccion-al-espanol-lyrics&psig=AOvVaw2Xp5A8ubSDvDg-XQlhvbZ1&ust=1717634648525000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCPjzieudw4YDFQAAAAAdAAAAABAE'),
(9, 'CHILL', 2, '00:03:25', '2022-10-20', 1, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fgenius.com%2FGenius-traducciones-al-espanol-stray-kids-chill-traduccion-al-espanol-lyrics&psig=AOvVaw2qI-pkWV1_P8aOZLCxIdL9&ust=1717634694265000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCKj9sqCew4YDFQAAAAAdAAAAABAE'),
(10, 'Double Knot', 2, '00:03:19', '2019-10-19', 1, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fopen.spotify.com%2Fintl-es%2Ftrack%2F3rkAxnbYSZ9Ilfp3EeZZxW&psig=AOvVaw2nS4F_BEvQtvvCVBHxQvr9&ust=1717634788919000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCPDq5caew4YDFQAAAAAdAAAAABAE'),
(11, 'VENOM', 2, '00:03:21', '2022-03-22', 1, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fgenius.com%2FGenius-traducciones-al-espanol-stray-kids-venom-traduccion-al-espanol-lyrics&psig=AOvVaw1IdsrHBQidLq9gsMT2WWV-&ust=1717634954998000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCKiN5P2ew4YDFQAAAAAdAAAAABAE'),
(12, 'God\'s Menu', 2, '00:03:06', '2020-06-17', 1, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fopen.spotify.com%2Fintl-es%2Ftrack%2F0RzT9tBLcQhofW2TNiHP9B&psig=AOvVaw3faJCK_1WggyGNu1fOVIj1&ust=1717635002269000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCPCu06afw4YDFQAAAAAdAAAAABAE'),
(13, 'Thunderous', 2, '00:03:18', '2021-08-23', 1, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt15292540%2F&psig=AOvVaw3PdAyuh6BOWoCE6gwOShOG&ust=1717635086916000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCICUtLyfw4YDFQAAAAAdAAAAABAE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(1, 'Regional Mexicano'),
(2, 'Kpop'),
(3, 'Bachata'),
(4, 'Reggaetón'),
(5, 'Trap Latino'),
(6, 'Pop Latino'),
(7, 'Hip Hop'),
(8, 'Rock Latino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `descripcion`, `precio`) VALUES
(1, 'Spotify Premium Individual\r\n\r\n-1 cuenta Premium\r\n-Cancela en cualquier momento\r\n-Suscripción o un pago único', 129),
(2, 'Spotify Premium Dúo\r\n\r\n-2 cuentas Premium\r\n-Cancela en cualquier momento\r\n-Suscripción o un pago único', 169),
(3, 'Spotify Premium Familiar\r\n\r\n-Hasta 6 cuentas Kids o Premium\r\n-Controla el contenido marcado como explícito.\r\n-Acceso a Spotify Kids\r\n-Cancela en cualquier momento\r\n-Suscripción o un pago único', 199),
(4, 'Spotify Free\r\n\r\n', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `total_canciones` int(11) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `memb_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `memb_id`) VALUES
(1, 'Weriche', 'weriche@gmail.com', 1),
(2, 'Greñas', 'greñitas@gmail.com', 4),
(3, 'reidy', 'jijija123@gmail.com', 3),
(4, 'vixy', 'carlsjr@gmail.com', 3),
(5, 'Merry', 'merry@gmail.com', 1),
(6, 'Logitech', 'android@gmail.com', 2),
(7, 'Shoyo', 'uncorreoxd@gmail.com', 4),
(8, 'Achel', 'acheluwukawai@gmail.com', 3),
(9, 'macos', 'maquinos123@gmail.com', 3),
(10, 'omal', 'omaroki@gmail.com', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artista_canciones`
--
ALTER TABLE `artista_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `artistas_id` (`artistas_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuarios_id` (`usuarios_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_id` (`usuarios_id`);

--
-- Indices de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `cancion_id` (`cancion_id`),
  ADD KEY `playlist_id` (`playlist_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `memb_id` (`memb_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artista`
--
ALTER TABLE `artista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `artista_canciones`
--
ALTER TABLE `artista_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artista_canciones`
--
ALTER TABLE `artista_canciones`
  ADD CONSTRAINT `artista_canciones_ibfk_1` FOREIGN KEY (`artistas_id`) REFERENCES `artista` (`id`),
  ADD CONSTRAINT `artista_canciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD CONSTRAINT `playlist_canciones_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`memb_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
