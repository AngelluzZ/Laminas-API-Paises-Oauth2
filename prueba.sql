-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 14-05-2022 a las 05:25:34
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `access_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expires` timestamp NOT NULL,
  `scope` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`access_token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`access_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
('78b27bfb0feb355094429466231db72dd355647c', 'testclient', 'testuser', '2022-05-01 07:26:15', NULL),
('ff6f773b5d85225b874c393c72011287f478b71b', 'testclient', 'testuser', '2022-05-14 10:29:15', NULL),
('85419936170e22379bdc3a76d503b0eccaf4db2f', 'testclient', 'testuser', '2022-05-14 11:00:00', NULL),
('a2ad0b3f41aa19222f1b5485534cfdd45a24c8ef', 'testclient', 'testuser', '2022-05-14 11:05:03', NULL),
('eb1b679d0376bc61b764e69b1b1878650510bcd7', 'testclient', 'testuser', '2022-05-14 11:05:09', NULL),
('3a4a236bc6f3ed785fe64bc8310b005802c0e204', 'testclient', 'testuser', '2022-05-14 11:19:08', NULL),
('17ffce907556c485ed263c53791cac4dbdbcdd1a', 'testclient', 'testuser', '2022-05-14 11:19:14', NULL),
('a14783b3024f2bc9fc51b7b761153a5b8ac90424', 'testclient', 'testuser', '2022-05-14 11:22:27', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_authorization_codes`
--

DROP TABLE IF EXISTS `oauth_authorization_codes`;
CREATE TABLE IF NOT EXISTS `oauth_authorization_codes` (
  `authorization_code` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `expires` timestamp NOT NULL,
  `scope` varchar(2000) DEFAULT NULL,
  `id_token` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`authorization_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `oauth_authorization_codes`
--

INSERT INTO `oauth_authorization_codes` (`authorization_code`, `client_id`, `user_id`, `redirect_uri`, `expires`, `scope`, `id_token`) VALUES
('54aedd5f9abcabb2c20e940f973766a8c99c5bf9', 'testclient', NULL, '/oauth/receivecode', '2022-05-01 05:47:40', NULL, NULL),
('5f8d68161445a73090794fad2e92ad472da282ce', 'testclient', NULL, '/oauth/receivecode', '2022-05-01 06:13:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `client_id` varchar(80) NOT NULL,
  `client_secret` varchar(80) NOT NULL,
  `redirect_uri` varchar(2000) NOT NULL,
  `grant_types` varchar(80) DEFAULT NULL,
  `scope` varchar(2000) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`client_id`, `client_secret`, `redirect_uri`, `grant_types`, `scope`, `user_id`) VALUES
('testclient', '$2y$10$5ICo6mbnWLsptjCZVfMu1e7p04FYpgiZydEG1KD4MI8Q2fcwuCu8e', '/oauth/receivecode', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_jwt`
--

DROP TABLE IF EXISTS `oauth_jwt`;
CREATE TABLE IF NOT EXISTS `oauth_jwt` (
  `client_id` varchar(80) NOT NULL,
  `subject` varchar(80) DEFAULT NULL,
  `public_key` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expires` timestamp NOT NULL,
  `scope` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`refresh_token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`refresh_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
('ff214e00eb27135fea243ddfd51b5ddf9171066e', 'testclient', 'testuser', '2022-05-15 06:26:15', NULL),
('164a35c63f07247fe3ee7b7e71b2d00f82326bb1', 'testclient', 'testuser', '2022-05-28 09:29:15', NULL),
('5add574bc9189998ce9156acd85092541a533b8a', 'testclient', 'testuser', '2022-05-28 10:00:00', NULL),
('30630dbcb28064b36d9077936aef2869bc4d36fd', 'testclient', 'testuser', '2022-05-28 10:05:03', NULL),
('42beab9352396b075d4e938c472159b79c2ada28', 'testclient', 'testuser', '2022-05-28 10:05:09', NULL),
('769d01297ca77a02f7806e3dbecbf830c3b1f517', 'testclient', 'testuser', '2022-05-28 10:19:08', NULL),
('de39d15ee6ed755cda676f1cfeb3841899a3784c', 'testclient', 'testuser', '2022-05-28 10:19:14', NULL),
('79cf09aebff990a43c4a1e5387c1e19244e35500', 'testclient', 'testuser', '2022-05-28 10:22:27', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_scopes`
--

DROP TABLE IF EXISTS `oauth_scopes`;
CREATE TABLE IF NOT EXISTS `oauth_scopes` (
  `type` varchar(255) NOT NULL DEFAULT 'supported',
  `scope` varchar(2000) DEFAULT NULL,
  `client_id` varchar(80) DEFAULT NULL,
  `is_default` smallint(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_users`
--

DROP TABLE IF EXISTS `oauth_users`;
CREATE TABLE IF NOT EXISTS `oauth_users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(2000) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `oauth_users`
--

INSERT INTO `oauth_users` (`username`, `password`, `first_name`, `last_name`) VALUES
('testuser', '$2y$10$5ICo6mbnWLsptjCZVfMu1e7p04FYpgiZydEG1KD4MI8Q2fcwuCu8e', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
