-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 14-05-2022 a las 05:25:52
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
-- Base de datos: `paisesdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `continents`
--

DROP TABLE IF EXISTS `continents`;
CREATE TABLE IF NOT EXISTS `continents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `continent_code` varchar(2) DEFAULT NULL,
  `continent_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `continents`
--

INSERT INTO `continents` (`id`, `continent_code`, `continent_name`) VALUES
(1, 'AF', 'Africa'),
(2, 'AN', 'Antarctica'),
(3, 'AS', 'Asia'),
(4, 'EU', 'Europe'),
(5, 'OC', 'Australia'),
(6, 'NA', 'North America'),
(7, 'SA', 'South America');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` int(5) NOT NULL,
  `code` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `capital` varchar(80) DEFAULT NULL,
  `continent` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `phone`, `code`, `name`, `capital`, `continent`) VALUES
(1, 93, 'AF', 'Afghanistan', 'Kabul', 'Asia'),
(2, 358, 'AX', 'Aland Islands', 'Mariehamn', 'Europe'),
(3, 355, 'AL', 'Albania', 'Tirana', 'Europe'),
(4, 213, 'DZ', 'Algeria', 'Algiers', 'Africa'),
(5, 1684, 'AS', 'American Samoa', 'Pago Pago', 'Oceania'),
(6, 376, 'AD', 'Andorra', 'Andorra la Vella', 'Europe'),
(7, 244, 'AO', 'Angola', 'Luanda', 'Africa'),
(8, 1264, 'AI', 'Anguilla', 'The Valley', 'North America'),
(9, 672, 'AQ', 'Antarctica', 'Antarctica', 'Antarctica'),
(10, 1268, 'AG', 'Antigua and Barbuda', 'St. John\'s', 'North America'),
(11, 54, 'AR', 'Argentina', 'Buenos Aires', 'South America'),
(12, 374, 'AM', 'Armenia', 'Yerevan', 'Asia'),
(13, 297, 'AW', 'Aruba', 'Oranjestad', 'North America'),
(14, 61, 'AU', 'Australia', 'Canberra', 'Oceania'),
(15, 43, 'AT', 'Austria', 'Vienna', 'Europe'),
(16, 994, 'AZ', 'Azerbaijan', 'Baku', 'Asia'),
(17, 1242, 'BS', 'Bahamas', 'Nassau', 'North America'),
(18, 973, 'BH', 'Bahrain', 'Manama', 'Asia'),
(19, 880, 'BD', 'Bangladesh', 'Dhaka', 'Asia'),
(20, 1246, 'BB', 'Barbados', 'Bridgetown', 'North America'),
(21, 375, 'BY', 'Belarus', 'Minsk', 'Europe'),
(22, 32, 'BE', 'Belgium', 'Brussels', 'Europe'),
(23, 501, 'BZ', 'Belize', 'Belmopan', 'North America'),
(24, 229, 'BJ', 'Benin', 'Porto-Novo', 'Africa'),
(25, 1441, 'BM', 'Bermuda', 'Hamilton', 'North America'),
(26, 975, 'BT', 'Bhutan', 'Thimphu', 'Asia'),
(27, 591, 'BO', 'Bolivia', 'Sucre', 'South America'),
(28, 599, 'BQ', 'Bonaire, Sint Eustatius and Saba', 'Kralendijk', 'North America'),
(29, 387, 'BA', 'Bosnia and Herzegovina', 'Sarajevo', 'Europe'),
(30, 267, 'BW', 'Botswana', 'Gaborone', 'Africa'),
(31, 55, 'BV', 'Bouvet Island', '', 'Antarctica'),
(32, 55, 'BR', 'Brazil', 'Brasilia', 'South America'),
(33, 246, 'IO', 'British Indian Ocean Territory', 'Diego Garcia', 'Asia'),
(34, 673, 'BN', 'Brunei Darussalam', 'Bandar Seri Begawan', 'Asia'),
(35, 359, 'BG', 'Bulgaria', 'Sofia', 'Europe'),
(36, 226, 'BF', 'Burkina Faso', 'Ouagadougou', 'Africa'),
(37, 257, 'BI', 'Burundi', 'Bujumbura', 'Africa'),
(38, 855, 'KH', 'Cambodia', 'Phnom Penh', 'Asia'),
(39, 237, 'CM', 'Cameroon', 'Yaounde', 'Africa'),
(40, 1, 'CA', 'Canada', 'Ottawa', 'North America'),
(41, 238, 'CV', 'Cape Verde', 'Praia', 'Africa'),
(42, 1345, 'KY', 'Cayman Islands', 'George Town', 'North America'),
(43, 236, 'CF', 'Central African Republic', 'Bangui', 'Africa'),
(44, 235, 'TD', 'Chad', 'N\'Djamena', 'Africa'),
(45, 56, 'CL', 'Chile', 'Santiago', 'South America'),
(46, 86, 'CN', 'China', 'Beijing', 'Asia'),
(47, 61, 'CX', 'Christmas Island', 'Flying Fish Cove', 'Asia'),
(48, 672, 'CC', 'Cocos (Keeling) Islands', 'West Island', 'Asia'),
(49, 57, 'CO', 'Colombia', 'Bogota', 'South America'),
(50, 269, 'KM', 'Comoros', 'Moroni', 'Africa'),
(51, 242, 'CG', 'Congo', 'Brazzaville', 'Africa'),
(52, 242, 'CD', 'Congo, Democratic Republic of the Congo', 'Kinshasa', 'Africa'),
(53, 682, 'CK', 'Cook Islands', 'Avarua', 'Oceania'),
(54, 506, 'CR', 'Costa Rica', 'San Jose', 'North America'),
(55, 225, 'CI', 'Cote D\'Ivoire', 'Yamoussoukro', 'Africa'),
(56, 385, 'HR', 'Croatia', 'Zagreb', 'Europe'),
(57, 53, 'CU', 'Cuba', 'Havana', 'North America'),
(58, 599, 'CW', 'Curacao', 'Willemstad', 'North America'),
(59, 357, 'CY', 'Cyprus', 'Nicosia', 'Asia'),
(60, 420, 'CZ', 'Czech Republic', 'Prague', 'Europe'),
(61, 45, 'DK', 'Denmark', 'Copenhagen', 'Europe'),
(62, 253, 'DJ', 'Djibouti', 'Djibouti', 'Africa'),
(63, 1767, 'DM', 'Dominica', 'Roseau', 'North America'),
(64, 1809, 'DO', 'Dominican Republic', 'Santo Domingo', 'North America'),
(65, 593, 'EC', 'Ecuador', 'Quito', 'South America'),
(66, 20, 'EG', 'Egypt', 'Cairo', 'Africa'),
(67, 503, 'SV', 'El Salvador', 'San Salvador', 'North America'),
(68, 240, 'GQ', 'Equatorial Guinea', 'Malabo', 'Africa'),
(69, 291, 'ER', 'Eritrea', 'Asmara', 'Africa'),
(70, 372, 'EE', 'Estonia', 'Tallinn', 'Europe'),
(71, 251, 'ET', 'Ethiopia', 'Addis Ababa', 'Africa'),
(72, 500, 'FK', 'Falkland Islands (Malvinas)', 'Stanley', 'South America'),
(73, 298, 'FO', 'Faroe Islands', 'Torshavn', 'Europe'),
(74, 679, 'FJ', 'Fiji', 'Suva', 'Oceania'),
(75, 358, 'FI', 'Finland', 'Helsinki', 'Europe'),
(76, 33, 'FR', 'France', 'Paris', 'Europe'),
(77, 594, 'GF', 'French Guiana', 'Cayenne', 'South America'),
(78, 689, 'PF', 'French Polynesia', 'Papeete', 'Oceania'),
(79, 262, 'TF', 'French Southern Territories', 'Port-aux-Francais', 'Antarctica'),
(80, 241, 'GA', 'Gabon', 'Libreville', 'Africa'),
(81, 220, 'GM', 'Gambia', 'Banjul', 'Africa'),
(82, 995, 'GE', 'Georgia', 'Tbilisi', 'Asia'),
(83, 49, 'DE', 'Germany', 'Berlin', 'Europe'),
(84, 233, 'GH', 'Ghana', 'Accra', 'Africa'),
(85, 350, 'GI', 'Gibraltar', 'Gibraltar', 'Europe'),
(86, 30, 'GR', 'Greece', 'Athens', 'Europe'),
(87, 299, 'GL', 'Greenland', 'Nuuk', 'North America'),
(88, 1473, 'GD', 'Grenada', 'St. George\'s', 'North America'),
(89, 590, 'GP', 'Guadeloupe', 'Basse-Terre', 'North America'),
(90, 1671, 'GU', 'Guam', 'Hagatna', 'Oceania'),
(91, 502, 'GT', 'Guatemala', 'Guatemala City', 'North America'),
(92, 44, 'GG', 'Guernsey', 'St Peter Port', 'Europe'),
(93, 224, 'GN', 'Guinea', 'Conakry', 'Africa'),
(94, 245, 'GW', 'Guinea-Bissau', 'Bissau', 'Africa'),
(95, 592, 'GY', 'Guyana', 'Georgetown', 'South America'),
(96, 509, 'HT', 'Haiti', 'Port-au-Prince', 'North America'),
(97, 0, 'HM', 'Heard Island and McDonald Islands', '', 'Antarctica'),
(98, 39, 'VA', 'Holy See (Vatican City State)', 'Vatican City', 'Europe'),
(99, 504, 'HN', 'Honduras', 'Tegucigalpa', 'North America'),
(100, 852, 'HK', 'Hong Kong', 'Hong Kong', 'Asia'),
(101, 36, 'HU', 'Hungary', 'Budapest', 'Europe'),
(102, 354, 'IS', 'Iceland', 'Reykjavik', 'Europe'),
(103, 91, 'IN', 'India', 'New Delhi', 'Asia'),
(104, 62, 'ID', 'Indonesia', 'Jakarta', 'Asia'),
(105, 98, 'IR', 'Iran, Islamic Republic of', 'Tehran', 'Asia'),
(106, 964, 'IQ', 'Iraq', 'Baghdad', 'Asia'),
(107, 353, 'IE', 'Ireland', 'Dublin', 'Europe'),
(108, 44, 'IM', 'Isle of Man', 'Douglas, Isle of Man', 'Europe'),
(109, 972, 'IL', 'Israel', 'Jerusalem', 'Asia'),
(110, 39, 'IT', 'Italy', 'Rome', 'Europe'),
(111, 1876, 'JM', 'Jamaica', 'Kingston', 'North America'),
(112, 81, 'JP', 'Japan', 'Tokyo', 'Asia'),
(113, 44, 'JE', 'Jersey', 'Saint Helier', 'Europe'),
(114, 962, 'JO', 'Jordan', 'Amman', 'Asia'),
(115, 7, 'KZ', 'Kazakhstan', 'Astana', 'Asia'),
(116, 254, 'KE', 'Kenya', 'Nairobi', 'Africa'),
(117, 686, 'KI', 'Kiribati', 'Tarawa', 'Oceania'),
(118, 850, 'KP', 'Korea, Democratic People\'s Republic of', 'Pyongyang', 'Asia'),
(119, 82, 'KR', 'Korea, Republic of', 'Seoul', 'Asia'),
(120, 381, 'XK', 'Kosovo', 'Pristina', 'Europe'),
(121, 965, 'KW', 'Kuwait', 'Kuwait City', 'Asia'),
(122, 996, 'KG', 'Kyrgyzstan', 'Bishkek', 'Asia'),
(123, 856, 'LA', 'Lao People\'s Democratic Republic', 'Vientiane', 'Asia'),
(124, 371, 'LV', 'Latvia', 'Riga', 'Europe'),
(125, 961, 'LB', 'Lebanon', 'Beirut', 'Asia'),
(126, 266, 'LS', 'Lesotho', 'Maseru', 'Africa'),
(127, 231, 'LR', 'Liberia', 'Monrovia', 'Africa'),
(128, 218, 'LY', 'Libyan Arab Jamahiriya', 'Tripolis', 'Africa'),
(129, 423, 'LI', 'Liechtenstein', 'Vaduz', 'Europe'),
(130, 370, 'LT', 'Lithuania', 'Vilnius', 'Europe'),
(131, 352, 'LU', 'Luxembourg', 'Luxembourg', 'Europe'),
(132, 853, 'MO', 'Macao', 'Macao', 'Asia'),
(133, 389, 'MK', 'Macedonia, the Former Yugoslav Republic of', 'Skopje', 'Europe'),
(134, 261, 'MG', 'Madagascar', 'Antananarivo', 'Africa'),
(135, 265, 'MW', 'Malawi', 'Lilongwe', 'Africa'),
(136, 60, 'MY', 'Malaysia', 'Kuala Lumpur', 'Asia'),
(137, 960, 'MV', 'Maldives', 'Male', 'Asia'),
(138, 223, 'ML', 'Mali', 'Bamako', 'Africa'),
(139, 356, 'MT', 'Malta', 'Valletta', 'Europe'),
(140, 692, 'MH', 'Marshall Islands', 'Majuro', 'Oceania'),
(141, 596, 'MQ', 'Martinique', 'Fort-de-France', 'North America'),
(142, 222, 'MR', 'Mauritania', 'Nouakchott', 'Africa'),
(143, 230, 'MU', 'Mauritius', 'Port Louis', 'Africa'),
(144, 269, 'YT', 'Mayotte', 'Mamoudzou', 'Africa'),
(145, 52, 'MX', 'Mexico', 'Mexico City', 'North America'),
(146, 691, 'FM', 'Micronesia, Federated States of', 'Palikir', 'Oceania'),
(147, 373, 'MD', 'Moldova, Republic of', 'Chisinau', 'Europe'),
(148, 377, 'MC', 'Monaco', 'Monaco', 'Europe'),
(149, 976, 'MN', 'Mongolia', 'Ulan Bator', 'Asia'),
(150, 382, 'ME', 'Montenegro', 'Podgorica', 'Europe'),
(151, 1664, 'MS', 'Montserrat', 'Plymouth', 'North America'),
(152, 212, 'MA', 'Morocco', 'Rabat', 'Africa'),
(153, 258, 'MZ', 'Mozambique', 'Maputo', 'Africa'),
(154, 95, 'MM', 'Myanmar', 'Nay Pyi Taw', 'Asia'),
(155, 264, 'NA', 'Namibia', 'Windhoek', 'Africa'),
(156, 674, 'NR', 'Nauru', 'Yaren', 'Oceania'),
(157, 977, 'NP', 'Nepal', 'Kathmandu', 'Asia'),
(158, 31, 'NL', 'Netherlands', 'Amsterdam', 'Europe'),
(159, 599, 'AN', 'Netherlands Antilles', 'Willemstad', 'North America'),
(160, 687, 'NC', 'New Caledonia', 'Noumea', 'Oceania'),
(161, 64, 'NZ', 'New Zealand', 'Wellington', 'Oceania'),
(162, 505, 'NI', 'Nicaragua', 'Managua', 'North America'),
(163, 227, 'NE', 'Niger', 'Niamey', 'Africa'),
(164, 234, 'NG', 'Nigeria', 'Abuja', 'Africa'),
(165, 683, 'NU', 'Niue', 'Alofi', 'Oceania'),
(166, 672, 'NF', 'Norfolk Island', 'Kingston', 'Oceania'),
(167, 1670, 'MP', 'Northern Mariana Islands', 'Saipan', 'Oceania'),
(168, 47, 'NO', 'Norway', 'Oslo', 'Europe'),
(169, 968, 'OM', 'Oman', 'Muscat', 'Asia'),
(170, 92, 'PK', 'Pakistan', 'Islamabad', 'Asia'),
(171, 680, 'PW', 'Palau', 'Melekeok', 'Oceania'),
(172, 970, 'PS', 'Palestinian Territory, Occupied', 'East Jerusalem', 'Asia'),
(173, 507, 'PA', 'Panama', 'Panama City', 'North America'),
(174, 675, 'PG', 'Papua New Guinea', 'Port Moresby', 'Oceania'),
(175, 595, 'PY', 'Paraguay', 'Asuncion', 'South America'),
(176, 51, 'PE', 'Peru', 'Lima', 'South America'),
(177, 63, 'PH', 'Philippines', 'Manila', 'Asia'),
(178, 64, 'PN', 'Pitcairn', 'Adamstown', 'Oceania'),
(179, 48, 'PL', 'Poland', 'Warsaw', 'Europe'),
(180, 351, 'PT', 'Portugal', 'Lisbon', 'Europe'),
(181, 1787, 'PR', 'Puerto Rico', 'San Juan', 'North America'),
(182, 974, 'QA', 'Qatar', 'Doha', 'Asia'),
(183, 262, 'RE', 'Reunion', 'Saint-Denis', 'Africa'),
(184, 40, 'RO', 'Romania', 'Bucharest', 'Europe'),
(185, 70, 'RU', 'Russian Federation', 'Moscow', 'Asia'),
(186, 250, 'RW', 'Rwanda', 'Kigali', 'Africa'),
(187, 590, 'BL', 'Saint Barthelemy', 'Gustavia', 'North America'),
(188, 290, 'SH', 'Saint Helena', 'Jamestown', 'Africa'),
(189, 1869, 'KN', 'Saint Kitts and Nevis', 'Basseterre', 'North America'),
(190, 1758, 'LC', 'Saint Lucia', 'Castries', 'North America'),
(191, 590, 'MF', 'Saint Martin', 'Marigot', 'North America'),
(192, 508, 'PM', 'Saint Pierre and Miquelon', 'Saint-Pierre', 'North America'),
(193, 1784, 'VC', 'Saint Vincent and the Grenadines', 'Kingstown', 'North America'),
(194, 684, 'WS', 'Samoa', 'Apia', 'Oceania'),
(195, 378, 'SM', 'San Marino', 'San Marino', 'Europe'),
(196, 239, 'ST', 'Sao Tome and Principe', 'Sao Tome', 'Africa'),
(197, 966, 'SA', 'Saudi Arabia', 'Riyadh', 'Asia'),
(198, 221, 'SN', 'Senegal', 'Dakar', 'Africa'),
(199, 381, 'RS', 'Serbia', 'Belgrade', 'Europe'),
(200, 381, 'CS', 'Serbia and Montenegro', 'Belgrade', 'Europe'),
(201, 248, 'SC', 'Seychelles', 'Victoria', 'Africa'),
(202, 232, 'SL', 'Sierra Leone', 'Freetown', 'Africa'),
(203, 65, 'SG', 'Singapore', 'Singapur', 'Asia'),
(204, 1, 'SX', 'St Martin', 'Philipsburg', 'North America'),
(205, 421, 'SK', 'Slovakia', 'Bratislava', 'Europe'),
(206, 386, 'SI', 'Slovenia', 'Ljubljana', 'Europe'),
(207, 677, 'SB', 'Solomon Islands', 'Honiara', 'Oceania'),
(208, 252, 'SO', 'Somalia', 'Mogadishu', 'Africa'),
(209, 27, 'ZA', 'South Africa', 'Pretoria', 'Africa'),
(210, 500, 'GS', 'South Georgia and the South Sandwich Islands', 'Grytviken', 'Antarctica'),
(211, 211, 'SS', 'South Sudan', 'Juba', 'Africa'),
(212, 34, 'ES', 'Spain', 'Madrid', 'Europe'),
(213, 94, 'LK', 'Sri Lanka', 'Colombo', 'Asia'),
(214, 249, 'SD', 'Sudan', 'Khartoum', 'Africa'),
(215, 597, 'SR', 'Suriname', 'Paramaribo', 'South America'),
(216, 47, 'SJ', 'Svalbard and Jan Mayen', 'Longyearbyen', 'Europe'),
(217, 268, 'SZ', 'Swaziland', 'Mbabane', 'Africa'),
(218, 46, 'SE', 'Sweden', 'Stockholm', 'Europe'),
(219, 41, 'CH', 'Switzerland', 'Berne', 'Europe'),
(220, 963, 'SY', 'Syrian Arab Republic', 'Damascus', 'Asia'),
(221, 886, 'TW', 'Taiwan, Province of China', 'Taipei', 'Asia'),
(222, 992, 'TJ', 'Tajikistan', 'Dushanbe', 'Asia'),
(223, 255, 'TZ', 'Tanzania, United Republic of', 'Dodoma', 'Africa'),
(224, 66, 'TH', 'Thailand', 'Bangkok', 'Asia'),
(225, 670, 'TL', 'Timor-Leste', 'Dili', 'Asia'),
(226, 228, 'TG', 'Togo', 'Lome', 'Africa'),
(227, 690, 'TK', 'Tokelau', '', 'Oceania'),
(228, 676, 'TO', 'Tonga', 'Nuku\'alofa', 'Oceania'),
(229, 1868, 'TT', 'Trinidad and Tobago', 'Port of Spain', 'North America'),
(230, 216, 'TN', 'Tunisia', 'Tunis', 'Africa'),
(231, 90, 'TR', 'Turkey', 'Ankara', 'Asia'),
(232, 7370, 'TM', 'Turkmenistan', 'Ashgabat', 'Asia'),
(233, 1649, 'TC', 'Turks and Caicos Islands', 'Cockburn Town', 'North America'),
(234, 688, 'TV', 'Tuvalu', 'Funafuti', 'Oceania'),
(235, 256, 'UG', 'Uganda', 'Kampala', 'Africa'),
(236, 380, 'UA', 'Ukraine', 'Kiev', 'Europe'),
(237, 971, 'AE', 'United Arab Emirates', 'Abu Dhabi', 'Asia'),
(238, 44, 'GB', 'United Kingdom', 'London', 'Europe'),
(239, 1, 'US', 'United States', 'Washington', 'North America'),
(240, 1, 'UM', 'United States Minor Outlying Islands', '', 'North America'),
(241, 598, 'UY', 'Uruguay', 'Montevideo', 'South America'),
(242, 998, 'UZ', 'Uzbekistan', 'Tashkent', 'Asia'),
(243, 678, 'VU', 'Vanuatu', 'Port Vila', 'Oceania'),
(244, 58, 'VE', 'Venezuela', 'Caracas', 'South America'),
(245, 84, 'VN', 'Viet Nam', 'Hanoi', 'Asia'),
(246, 1284, 'VG', 'Virgin Islands, British', 'Road Town', 'North America'),
(247, 1340, 'VI', 'Virgin Islands, U.s.', 'Charlotte Amalie', 'North America'),
(248, 681, 'WF', 'Wallis and Futuna', 'Mata Utu', 'Oceania'),
(249, 212, 'EH', 'Western Sahara', 'El-Aaiun', 'Africa'),
(250, 967, 'YE', 'Yemen', 'Sanaa', 'Asia'),
(251, 260, 'ZM', 'Zambia', 'Lusaka', 'Africa'),
(252, 263, 'ZW', 'Zimbabwe', 'Harare', 'Africa');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
