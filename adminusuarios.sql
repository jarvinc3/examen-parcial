-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-09-2023 a las 02:23:05
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `adminusuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_15_235020_create_usuarios_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `correo`, `fecha_registro`, `created_at`, `updated_at`) VALUES
(1, 'Nona', 'Willms', 'schowalter.christop@example.com', '2023-09-16 00:01:31', '2023-09-16 04:01:31', '2023-09-16 04:01:31'),
(2, 'Michale', 'Mohr', 'schumm.everette@example.org', '2023-09-16 00:01:31', '2023-09-16 04:01:31', '2023-09-16 04:01:31'),
(3, 'Glen', 'Dibbert', 'madaline64@example.com', '2023-09-16 00:01:31', '2023-09-16 04:01:31', '2023-09-16 04:01:31'),
(4, 'Concepcion', 'Cummerata', 'rossie.kassulke@example.org', '2023-09-16 00:01:31', '2023-09-16 04:01:31', '2023-09-16 04:01:31'),
(5, 'Graham', 'Ebert', 'brandi.kessler@example.com', '2023-09-16 00:01:31', '2023-09-16 04:01:31', '2023-09-16 04:01:31'),
(6, 'Bud', 'Stoltenberg', 'bhand@example.com', '2023-09-16 00:01:31', '2023-09-16 04:01:31', '2023-09-16 04:01:31'),
(7, 'Lois', 'Williamson', 'littel.jackeline@example.net', '2023-09-16 00:01:32', '2023-09-16 04:01:32', '2023-09-16 04:01:32'),
(8, 'Anita', 'Ortiz', 'spinka.brice@example.org', '2023-09-16 00:01:32', '2023-09-16 04:01:32', '2023-09-16 04:01:32'),
(9, 'Augustus', 'Terry', 'ernser.georgette@example.net', '2023-09-16 00:01:32', '2023-09-16 04:01:32', '2023-09-16 04:01:32'),
(10, 'Samir', 'Cronin', 'dbailey@example.org', '2023-09-16 00:01:32', '2023-09-16 04:01:32', '2023-09-16 04:01:32'),
(11, 'Keon', 'Koepp', 'feil.tabitha@example.org', '2023-09-16 00:01:32', '2023-09-16 04:01:32', '2023-09-16 04:01:32'),
(12, 'Roxanne', 'Bartoletti', 'wziemann@example.org', '2023-09-16 00:01:32', '2023-09-16 04:01:32', '2023-09-16 04:01:32'),
(13, 'Rory', 'Koelpin', 'shartmann@example.com', '2023-09-16 00:01:32', '2023-09-16 04:01:32', '2023-09-16 04:01:32'),
(14, 'Marlene', 'Brekke', 'adella.boehm@example.net', '2023-09-16 00:01:32', '2023-09-16 04:01:32', '2023-09-16 04:01:32'),
(15, 'Erick', 'Parker', 'brionna30@example.org', '2023-09-16 00:01:32', '2023-09-16 04:01:32', '2023-09-16 04:01:32'),
(16, 'Clark', 'Beer', 'renner.emmie@example.org', '2023-09-16 00:01:32', '2023-09-16 04:01:32', '2023-09-16 04:01:32'),
(17, 'Elias', 'Rice', 'nelle.dare@example.net', '2023-09-16 00:01:32', '2023-09-16 04:01:32', '2023-09-16 04:01:32'),
(18, 'Catherine', 'Schneider', 'grayce.mayert@example.net', '2023-09-16 00:01:32', '2023-09-16 04:01:32', '2023-09-16 04:01:32'),
(19, 'Juwan', 'Carroll', 'vanessa24@example.net', '2023-09-16 00:01:32', '2023-09-16 04:01:32', '2023-09-16 04:01:32'),
(20, 'Kay', 'Heller', 'harmon.armstrong@example.com', '2023-09-16 00:01:32', '2023-09-16 04:01:32', '2023-09-16 04:01:32'),
(21, 'Eden', 'Feest', 'funk.bernardo@example.net', '2023-09-16 00:01:32', '2023-09-16 04:01:32', '2023-09-16 04:01:32'),
(22, 'Aurelie', 'Yost', 'khoeger@example.org', '2023-09-16 00:01:32', '2023-09-16 04:01:32', '2023-09-16 04:01:32'),
(23, 'Antonina', 'Anderson', 'gzemlak@example.org', '2023-09-16 00:01:32', '2023-09-16 04:01:32', '2023-09-16 04:01:32'),
(24, 'Alexandria', 'Rosenbaum', 'april05@example.com', '2023-09-16 00:01:33', '2023-09-16 04:01:33', '2023-09-16 04:01:33'),
(25, 'Hannah', 'Halvorson', 'alicia91@example.net', '2023-09-16 00:01:33', '2023-09-16 04:01:33', '2023-09-16 04:01:33'),
(26, 'Delaney', 'Kling', 'dwaters@example.com', '2023-09-16 00:01:33', '2023-09-16 04:01:33', '2023-09-16 04:01:33'),
(27, 'Marilou', 'Hauck', 'raheem.bernier@example.net', '2023-09-16 00:01:33', '2023-09-16 04:01:33', '2023-09-16 04:01:33'),
(28, 'Clemmie', 'Bartell', 'parker.raymond@example.com', '2023-09-16 00:01:33', '2023-09-16 04:01:33', '2023-09-16 04:01:33'),
(29, 'Rocio', 'Moen', 'daniela.kub@example.net', '2023-09-16 00:01:33', '2023-09-16 04:01:33', '2023-09-16 04:01:33'),
(30, 'Germaine', 'Bailey', 'jannie27@example.org', '2023-09-16 00:01:33', '2023-09-16 04:01:33', '2023-09-16 04:01:33'),
(31, 'Therese', 'Ward', 'nichole76@example.org', '2023-09-16 00:01:33', '2023-09-16 04:01:33', '2023-09-16 04:01:33'),
(32, 'Bobby', 'Beatty', 'travis.wisoky@example.org', '2023-09-16 00:01:33', '2023-09-16 04:01:33', '2023-09-16 04:01:33'),
(33, 'Holden', 'Durgan', 'floyd62@example.com', '2023-09-16 00:01:33', '2023-09-16 04:01:33', '2023-09-16 04:01:33'),
(34, 'Betty', 'Boyle', 'vivienne85@example.org', '2023-09-16 00:01:33', '2023-09-16 04:01:33', '2023-09-16 04:01:33'),
(35, 'Antwon', 'Hill', 'fay.lenore@example.org', '2023-09-16 00:01:33', '2023-09-16 04:01:33', '2023-09-16 04:01:33'),
(36, 'Lois', 'Kub', 'vjast@example.net', '2023-09-16 00:01:33', '2023-09-16 04:01:33', '2023-09-16 04:01:33'),
(37, 'Sienna', 'Rice', 'hammes.martin@example.com', '2023-09-16 00:01:33', '2023-09-16 04:01:33', '2023-09-16 04:01:33'),
(38, 'Christa', 'Schneider', 'jerome.fisher@example.com', '2023-09-16 00:01:33', '2023-09-16 04:01:33', '2023-09-16 04:01:33'),
(39, 'Kelley', 'Grady', 'schumm.neva@example.net', '2023-09-16 00:01:33', '2023-09-16 04:01:33', '2023-09-16 04:01:33'),
(40, 'Kavon', 'Dare', 'tokuneva@example.net', '2023-09-16 00:01:33', '2023-09-16 04:01:33', '2023-09-16 04:01:33'),
(41, 'Shanna', 'Conn', 'jovani81@example.net', '2023-09-16 00:01:33', '2023-09-16 04:01:33', '2023-09-16 04:01:33'),
(42, 'Hassan', 'Ullrich', 'magali.sipes@example.org', '2023-09-16 00:01:33', '2023-09-16 04:01:33', '2023-09-16 04:01:33'),
(43, 'Pablo', 'Metz', 'epowlowski@example.org', '2023-09-16 00:01:33', '2023-09-16 04:01:33', '2023-09-16 04:01:33'),
(44, 'Bernita', 'Tillman', 'brain14@example.com', '2023-09-16 00:01:34', '2023-09-16 04:01:34', '2023-09-16 04:01:34'),
(45, 'Alejandra', 'Schiller', 'wisoky.onie@example.com', '2023-09-16 00:01:34', '2023-09-16 04:01:34', '2023-09-16 04:01:34'),
(46, 'Dereck', 'Sauer', 'eweissnat@example.org', '2023-09-16 00:01:34', '2023-09-16 04:01:34', '2023-09-16 04:01:34'),
(47, 'Bonnie', 'Haley', 'faustino.labadie@example.com', '2023-09-16 00:01:34', '2023-09-16 04:01:34', '2023-09-16 04:01:34'),
(48, 'Hope', 'Hauck', 'leannon.camila@example.com', '2023-09-16 00:01:34', '2023-09-16 04:01:34', '2023-09-16 04:01:34'),
(49, 'Edgar', 'Vandervort', 'april.heller@example.org', '2023-09-16 00:01:34', '2023-09-16 04:01:34', '2023-09-16 04:01:34'),
(50, 'Nola', 'Yundt', 'myrtie84@example.com', '2023-09-16 00:01:34', '2023-09-16 04:01:34', '2023-09-16 04:01:34'),
(51, 'Deion', 'Kutch', 'clemmie70@example.org', '2023-09-16 00:01:34', '2023-09-16 04:01:34', '2023-09-16 04:01:34'),
(52, 'Camron', 'Berge', 'reynolds.ava@example.org', '2023-09-16 00:01:34', '2023-09-16 04:01:34', '2023-09-16 04:01:34'),
(53, 'Emmy', 'Klein', 'beahan.winifred@example.net', '2023-09-16 00:01:34', '2023-09-16 04:01:34', '2023-09-16 04:01:34'),
(54, 'Austen', 'Jenkins', 'powlowski.esperanza@example.net', '2023-09-16 00:01:34', '2023-09-16 04:01:34', '2023-09-16 04:01:34'),
(55, 'Ryder', 'Torp', 'cbarton@example.com', '2023-09-16 00:01:34', '2023-09-16 04:01:34', '2023-09-16 04:01:34'),
(56, 'Bernadine', 'Mraz', 'shaley@example.com', '2023-09-16 00:01:34', '2023-09-16 04:01:34', '2023-09-16 04:01:34'),
(57, 'Bertha', 'Jakubowski', 'zulauf.lonnie@example.org', '2023-09-16 00:01:34', '2023-09-16 04:01:34', '2023-09-16 04:01:34'),
(58, 'Royal', 'Mante', 'anika57@example.com', '2023-09-16 00:01:34', '2023-09-16 04:01:34', '2023-09-16 04:01:34'),
(59, 'Veronica', 'Purdy', 'gbeahan@example.net', '2023-09-16 00:01:35', '2023-09-16 04:01:35', '2023-09-16 04:01:35'),
(60, 'Elnora', 'Kiehn', 'laverne12@example.com', '2023-09-16 00:01:35', '2023-09-16 04:01:35', '2023-09-16 04:01:35'),
(61, 'Muriel', 'Howe', 'vstanton@example.net', '2023-09-16 00:01:35', '2023-09-16 04:01:35', '2023-09-16 04:01:35'),
(62, 'Zachery', 'Mertz', 'isabelle53@example.org', '2023-09-16 00:01:35', '2023-09-16 04:01:35', '2023-09-16 04:01:35'),
(63, 'Desmond', 'Schaden', 'cchristiansen@example.org', '2023-09-16 00:01:35', '2023-09-16 04:01:35', '2023-09-16 04:01:35'),
(64, 'Robert', 'Tillman', 'lcarter@example.com', '2023-09-16 00:01:35', '2023-09-16 04:01:35', '2023-09-16 04:01:35'),
(65, 'Joelle', 'Kozey', 'oberbrunner.wilson@example.net', '2023-09-16 00:01:35', '2023-09-16 04:01:35', '2023-09-16 04:01:35'),
(66, 'Jackie', 'Predovic', 'cartwright.russ@example.com', '2023-09-16 00:01:35', '2023-09-16 04:01:35', '2023-09-16 04:01:35'),
(67, 'Orville', 'Kreiger', 'dmedhurst@example.org', '2023-09-16 00:01:35', '2023-09-16 04:01:35', '2023-09-16 04:01:35'),
(68, 'Lizeth', 'Bogisich', 'saufderhar@example.net', '2023-09-16 00:01:35', '2023-09-16 04:01:35', '2023-09-16 04:01:35'),
(69, 'Anjali', 'Pagac', 'karl54@example.org', '2023-09-16 00:01:35', '2023-09-16 04:01:35', '2023-09-16 04:01:35'),
(70, 'Liam', 'Hettinger', 'zieme.oswaldo@example.com', '2023-09-16 00:01:35', '2023-09-16 04:01:35', '2023-09-16 04:01:35'),
(71, 'Skye', 'Pollich', 'wvon@example.net', '2023-09-16 00:01:35', '2023-09-16 04:01:35', '2023-09-16 04:01:35'),
(72, 'Roselyn', 'Hermiston', 'kory75@example.net', '2023-09-16 00:01:35', '2023-09-16 04:01:35', '2023-09-16 04:01:35'),
(73, 'Brooke', 'Walter', 'floyd.hettinger@example.org', '2023-09-16 00:01:35', '2023-09-16 04:01:35', '2023-09-16 04:01:35'),
(74, 'Jamal', 'Pollich', 'eliane.rippin@example.org', '2023-09-16 00:01:35', '2023-09-16 04:01:35', '2023-09-16 04:01:35'),
(75, 'Jaime', 'Jast', 'horacio.cronin@example.net', '2023-09-16 00:01:35', '2023-09-16 04:01:35', '2023-09-16 04:01:35'),
(76, 'Elliott', 'Hansen', 'effie21@example.net', '2023-09-16 00:01:35', '2023-09-16 04:01:35', '2023-09-16 04:01:35'),
(77, 'Austin', 'Ruecker', 'jenkins.samara@example.com', '2023-09-16 00:01:35', '2023-09-16 04:01:35', '2023-09-16 04:01:35'),
(78, 'Abbey', 'O\'Conner', 'runolfsson.laurianne@example.org', '2023-09-16 00:01:35', '2023-09-16 04:01:35', '2023-09-16 04:01:35'),
(79, 'Kamryn', 'Corkery', 'paris16@example.net', '2023-09-16 00:01:36', '2023-09-16 04:01:36', '2023-09-16 04:01:36'),
(80, 'Alva', 'Balistreri', 'lilyan17@example.com', '2023-09-16 00:01:36', '2023-09-16 04:01:36', '2023-09-16 04:01:36'),
(81, 'Efrain', 'Schroeder', 'blanca31@example.org', '2023-09-16 00:01:36', '2023-09-16 04:01:36', '2023-09-16 04:01:36'),
(82, 'Leann', 'Goldner', 'torrance73@example.net', '2023-09-16 00:01:36', '2023-09-16 04:01:36', '2023-09-16 04:01:36'),
(83, 'Kaylah', 'Ferry', 'twiegand@example.org', '2023-09-16 00:01:36', '2023-09-16 04:01:36', '2023-09-16 04:01:36'),
(84, 'Imelda', 'Christiansen', 'qblick@example.org', '2023-09-16 00:01:36', '2023-09-16 04:01:36', '2023-09-16 04:01:36'),
(85, 'Ariane', 'Hills', 'yfritsch@example.com', '2023-09-16 00:01:36', '2023-09-16 04:01:36', '2023-09-16 04:01:36'),
(86, 'Kieran', 'Kunde', 'melvin13@example.com', '2023-09-16 00:01:36', '2023-09-16 04:01:36', '2023-09-16 04:01:36'),
(87, 'Emery', 'Paucek', 'rogahn.ida@example.net', '2023-09-16 00:01:36', '2023-09-16 04:01:36', '2023-09-16 04:01:36'),
(88, 'Marie', 'Kiehn', 'vanessa.beatty@example.org', '2023-09-16 00:01:36', '2023-09-16 04:01:36', '2023-09-16 04:01:36'),
(89, 'Dedric', 'Dach', 'marcelle59@example.com', '2023-09-16 00:01:36', '2023-09-16 04:01:36', '2023-09-16 04:01:36'),
(90, 'Marcus', 'Ferry', 'alvis66@example.org', '2023-09-16 00:01:36', '2023-09-16 04:01:36', '2023-09-16 04:01:36'),
(91, 'Stephen', 'Goyette', 'wohara@example.org', '2023-09-16 00:01:36', '2023-09-16 04:01:36', '2023-09-16 04:01:36'),
(92, 'Reanna', 'Schneider', 'mkoch@example.org', '2023-09-16 00:01:36', '2023-09-16 04:01:36', '2023-09-16 04:01:36'),
(93, 'Kaya', 'Barton', 'trisha14@example.com', '2023-09-16 00:01:36', '2023-09-16 04:01:36', '2023-09-16 04:01:36'),
(94, 'Destinee', 'Auer', 'kirlin.flossie@example.net', '2023-09-16 00:01:36', '2023-09-16 04:01:36', '2023-09-16 04:01:36'),
(95, 'Assunta', 'Wiegand', 'abecker@example.com', '2023-09-16 00:01:36', '2023-09-16 04:01:36', '2023-09-16 04:01:36'),
(96, 'Annamae', 'Kassulke', 'howe.lavada@example.org', '2023-09-16 00:01:36', '2023-09-16 04:01:36', '2023-09-16 04:01:36'),
(97, 'Foster', 'Hirthe', 'hlesch@example.org', '2023-09-16 00:01:37', '2023-09-16 04:01:37', '2023-09-16 04:01:37'),
(98, 'Garry', 'Leuschke', 'atillman@example.net', '2023-09-16 00:01:37', '2023-09-16 04:01:37', '2023-09-16 04:01:37'),
(99, 'Jeramy', 'Flatley', 'ctrantow@example.net', '2023-09-16 00:01:37', '2023-09-16 04:01:37', '2023-09-16 04:01:37'),
(100, 'Maud', 'Metz', 'cgreenholt@example.net', '2023-09-16 00:01:37', '2023-09-16 04:01:37', '2023-09-16 04:01:37');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
