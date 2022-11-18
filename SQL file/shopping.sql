-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-05-2022 a las 02:43:37
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shopping`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Libros', 'Test anuj', '2017-01-24 19:17:37', '30-01-2017 12:22:24 AM'),
(4, 'Electronicos', 'Electronic Products', '2017-01-24 19:19:32', ''),
(5, 'Mercancia', 'test', '2017-01-24 19:19:54', ''),
(6, 'Accesorios de bicicleta', 'Fashion', '2017-02-20 19:18:52', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 4, '15', 1, '2022-05-25 17:42:59', 'Debit / Credit card', NULL),
(8, 4, '2', 1, '2022-05-25 17:44:12', 'Internet Banking', NULL),
(9, 4, '15', 1, '2022-05-25 18:17:14', 'COD', NULL),
(10, 4, '15', 1, '2022-05-25 18:18:17', 'COD', NULL),
(11, 4, '5', 1, '2022-05-25 21:44:20', 'Debit / Credit card', NULL),
(12, 4, '1', 2, '2022-05-26 00:33:17', 'Internet Banking', NULL),
(13, 4, '4', 1, '2022-05-26 00:33:17', 'Internet Banking', NULL),
(14, 4, '15', 1, '2022-05-26 00:33:17', 'Internet Banking', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'La orden ha sido enviada.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'La orden ha sido entregada', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Producto entregado.', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Producto listo para envio', '2017-03-10 19:50:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19'),
(5, 15, 5, 5, 5, 'Isaac', 'Bueno', 'Muy bueno', '2022-05-25 19:36:43'),
(6, 15, 5, 5, 5, 'Isaac', 'Bueno', 'Muy bueno', '2022-05-25 19:37:16'),
(7, 15, 5, 5, 5, 'Isaac', 'Bueno', 'Muy bueno', '2022-05-25 19:38:07'),
(8, 15, 5, 5, 5, 'Isaac', 'Bueno', 'Muy bueno', '2022-05-25 19:38:28'),
(9, 15, 5, 5, 5, 'Isaac', 'Bueno', 'Muy bueno', '2022-05-25 19:38:53'),
(10, 15, 5, 5, 5, 'Isaac', 'Bueno', 'Muy bueno', '2022-05-25 19:39:03'),
(11, 15, 5, 5, 5, 'Isaac', 'Bueno', 'Muy bueno', '2022-05-25 19:39:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, 'Tracki (2022) Mini rastreador GPS en tiempo real, cobertura completa de Mexico, Estados Unidos y en todo el mundo,', 'Tracki', 300, 400, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Contenido</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 unidad de rastreador Tracki, manual de usuario y cargador</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Nombre del modelo</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Dimensiones</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">46 x 38 x 15 millimeters</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Tipo de dispositivo</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">Portátil, impermeable, magnético</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">GPS Technology &amp; Cobertura</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">Revolucionario 4G LTE + 3G + 2G.</li></ul></li></ul>', 'tracki.jpg', 'tracki2.jpg', 'tracki3.jpg', 50, 'In Stock', '2017-01-30 16:54:35', ''),
(2, 4, 4, 'Tracki GPS Tracker - 12-24 Volt to Micro USB Vehicle Car Marine Wiring Cable and Kit GPS Tracking Device', 'Tracki', 240, 288, '<br><div><ol><li>Cable OBD2, 16 pines OBD II macho a 90 grados Micro USB Estabilizador de energía inteligente cable de carga/adaptador. Para rastreador GPS Tracki | Úsalo para cualquier dispositivo que necesite alimentación micro USB: Dashcam, navegador, smartphone, tablet, etc. | Longitud del cable: 2 metros. Alta tasa de conversión de eficiencia de 95% a 98% cuando entrada de 12 V y de 88% a 90% cuando entrada de 24 V.<br></li><li>Protección contra sobrecorriente de 1,6 A con limitación de corriente precisa de 0 a 2 A.t<br></li><li>Protección contra sobretensión de 5,6 V contra dispositivos dañinos.<br></li><li>B081KVTST6<br></li></ol></div>', 'trackif.jpg', 'trackif2.jpg', 'trackif3.jpg', 50, 'In Stock', '2017-01-30 16:59:00', ''),
(3, 4, 4, 'Cable de cableado Tracki OBD a micro USB – utilizado para GPS Tracker gancho – entrada de 12 V', 'Tracki', 288, 0, '<br><div><ol><li>Cable OBD2, 16 pines OBD II macho a 90 grados Micro USB Estabilizador de energía inteligente cable de carga/adaptador. Para rastreador GPS Tracki | Úsalo para cualquier dispositivo que necesite alimentación micro USB: Dashcam, navegador, smartphone, tablet, etc. | Longitud del cable: 2 metros. Alta tasa de conversión de eficiencia de 95% a 98% cuando entrada de 12 V y de 88% a 90% cuando entrada de 24 V.<br></li><li>Protección contra sobrecorriente de 1,6 A con limitación de corriente precisa de 0 a 2 A.t<br></li><li>Protección contra sobretensión de 5,6 V contra dispositivos dañinos.<br></li><li>B081KVTST6<br></li></ol></div>', 'trackic.jpg', 'trackic.jpg', 'trackic.jpg', 50, 'In Stock', '2017-02-04 04:03:15', ''),
(4, 4, 4, 'Cable divisor universal Indash de 16 pines GPS OBD II de 1 macho a 2 hembras para herramienta de escaneo GPS Tracker\n', 'YPP', 336, 0, '<ul><li>Para rastreador GPS indash y lector de codificador | Los 16 pines están conectados uno por uno | Expandable Upto 128 GB<br></li><li>5 inch Full HD Display<br></li><li>El calibre de alambre es de 24 AWG, más grueso que el normal de 26 AW<br></li><li>cable obdii split y que permite 2 dispositivos correctamente<br></li><li>Cada cable fue probado dos veces estrictamente por nuestro control de calidad durante la producción<br></li></ul>', 'divisor.jpg', 'divisor2.jpg', 'divisor3.jpg', 50, 'In Stock', '2017-02-04 04:04:43', ''),
(5, 4, 4, 'Cable de Carga Mini USB Type A to Mini B 2 Unidades, Cable Data Charging para GoPro Hero 3+, Hero HD, PS3 Controller, Phone, MP3 Player, Dash Cam, Digital Camera, SatNav, GPS Receiver, 1M 2 Packs', 'NDOOL', 150, 0, '<ul><li>Conector: USB A Mini USB 2.0 Unidades Longitud: 1m <br></li><li>Irrompible y flexible  La transferencia de datos/ Conecta el dispositivo al PC / ordenador portátil Carga su dispositivo (mientras se pueda cargar a través de USB)<br></li><li>Supports high speed USB 2.0 devices, Data Transfer Speed at up to 480 Mbps, and the mini usb to usb cable is backwards compliant with full-speed USB 1.1 (12 Mbps) and low-speed USB 1.0 (1.5 Mbps)<br></li><li> Transmisión de documentos, fotos, música y videos Función de carga - carga su dispositivo (si se puede cargar a través de USB)<br></li><li>Disfruta la garantía dos años y la Paquete rápida de Mexico.<br></li></ul>', 'usb.jpg', 'usb2.jpg', 'usb3.jpg', 50, 'In Stock', '2017-02-04 04:06:17', ''),
(6, 4, 4, 'Rastreador GPS,OBD2 GPS Tracker  , Antirrobo Localizador GPS,Alarma Anti-Robo, Límite de Velocidad y Geo-Cerca para Android y iOS TK816', 'TKMARS', 899, 1299, '<ul><li>Método de posicionamiento dual GPS + LBS<br></li><li>APLICACIÓN GRATUITA<br></li><li>Reproducción de rutas históricas<br></li><li>Fácil de instalar<br></li><li>Compatible GSM850 / 900/1800 / 1900MH<br></li></ul>', 'tk.jpg', 'tk3.jpg', 'tk2.jpg', 0, 'In Stock', '2017-02-04 04:08:07', ''),
(7, 4, 4, 'Garmin - Cable de alimentación y datos para GPS Garmin y StreetPilot Series, Negro', 'Garmin', 476, 520, '<ul><li>Compatible con PC<br></li><li>Color negro<br></li><li>1 unidad<br></li><li>Paquete estandar<br></li><li>1 año de garantía<br></li></ul>', 'garmin.jpg', 'garmin2.jpg', 'garmin3.jpg', 30, 'In Stock', '2017-02-04 04:10:17', ''),
(8, 4, 4, 'Mini cable de carga USB compatible con Garmin Nuvi, APPHOME USB 2.0 A-macho a Mini-B cable de vehículo compatible con Garmin GPS Nuvi 200 57LM 67 C255 2539LMT 2597LMT Dashcam (6.6 pies)', 'Apphome', 454, 0, '<ul><li>Mini USB GB<br></li><li>Velocidad de transferencia de datos: 0.48 Gigabits Per Second<br></li><li>Dispositivos compatibles: Dashcams, Cameras<br></li><li>6.6 FT: cable USB 2.0 A a Mini B de alta velocidad. Ten en cuenta que este es solo un cable de alimentación estándar, no proporcionará tráfico en vivo.<br></li><li>Amplia compatibilidad: cable mini USB compatible con Garmin Nuvi Series, Garmin RV Series, Garmin zumo Series, Garmin zumo Series, Garmin eTrex Series, Garmin Drive Series, Garmin DriveSmart Series, Garmin VIRB Action Camera etc.<br></li></ul>', 'usbg.jpg', 'usbg2.jpg', 'usbg3.jpg', 30, 'In Stock', '2017-02-04 04:11:54', ''),
(9, 4, 5, 'Wsdcam Alarma de bloqueo de bicicleta con sistema de bloqueo de alarma de seguridad universal antirrobo, alarma de vibración para bicicleta', 'Wsdcam', 773, 0, '<ul><li>Puerta de 110 dB, longitud del cable de 31.49 pulgadas<br></li><li>bloqueo de cable de alarma impermeable IP55<br></li><li>Acero Inoxidable Acero inoxidable Cloruro de polivinilo<br></li><li>Tipo de acabado: Pintado<br></li><li>Color negro<br></li></ul>', 'alarm.jpg', 'alarm2.jpg', 'alarm3.jpg', 0, 'In Stock', '2017-02-04 04:17:03', ''),
(11, 4, 6, 'Licencia vitalicia para plataforma Tracksolid VTSCXVIDEO', 'CONCOX', 1792, 0, '<ul><li>Software controlador profesional de GPS<br></li></ul>', 'soft.png', 'soft.png', 'soft.png', 0, 'In Stock', '2017-02-04 04:26:17', ''),
(12, 4, 6, 'Primer año de licencia de video en plataforma TracksolidPro PTSCXVIDEO', 'CONCOX', 430, 0, '<ul><li>Software controlador profesional de GPS (primer año)<br></li></ul>', 'soft2.png', 'soft2.png', 'soft2.png', 0, 'In Stock', '2017-02-04 04:28:17', ''),
(13, 4, 6, 'GPS – Licencia Software Web PRO semestral', 'KUBUS', 999, 0, '<ul><li>Software controlador profesional de GPS para delivery<br></li></ul>', 'gpsflota.jpg', 'gpsflota.jpg', 'gpsflota.jpg', 0, 'In Stock', '2017-02-04 04:30:24', ''),
(14, 4, 6, 'Sana GPS Tracker with One Year Software and Sim Recharge for Bike, Car, Bus, Truck and More (Key On & Vibration Call Alarm, Vehicle Power Saver Mode, Inbuilt Battery & Water Resistance)', 'Sana GPS', 3599, 4000, '<ul><li>Package Includes - Sana GPS Tracker (Compatible with all types of vehicle but engine lock feature is compatible only with key start vehicles and not recommended for four wheelers); One Year SanaGPS Application subscription; One Year Airtel SIM Card Data and SMS; Wiring Diagram & Activation ID for Registration; Customer Support Number (Language Support is Tamil and English Only); Warranty Card (For warranty claim one year)<br></li></ul>', 'sana.jpg', 'sana2.jpg', 'sana3.jpg', 0, 'In Stock', '2017-02-04 04:32:15', ''),
(15, 3, 8, 'MANUAL PRÁCTICO DE ORIENTACIÓN CON MAPA Y GPS', 'David caballero', 329, 350, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">MANUAL PRÁCTICO DE ORIENTACIÓN CON MAPA Y GPS\nINCLUYE EJERCICIOS PRÁCTICOS</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(Español, Rústico, David Caballero)</span><br><div><ul><li>Lenguaje: Español<br></li><li>Encuadernación: rústica<br></li><li>Editorial: Ediciones Desnivel<br></li><li>ISBN: 9788498294354<br></li><li>Edición: 4<br></li></ul></div>', 'manual.jpg', 'manual.jpg', 'manual.jpg', 50, 'In Stock', '2017-02-04 04:35:13', ''),
(16, 3, 8, 'GPS for dummies', 'Joel McNamara', 299, 0, '<ul><li>Lenguaje: Inglés<br></li><li>Encuadernación: Pasta dura<br></li><li>Editorial: wiley<br></li><li>ISBN: 9780470156230<br></li><li>Edición: 2<br></li></ul>', 'gps.webp', 'gps.webp', 'gps2.webp', 50, 'In Stock', '2017-02-04 04:36:23', ''),
(17, 5, 9, 'Playera Tracker for bikes', 'TrackBikes', 159, 250, '\n<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Playera negra logo Tracker for Bikes</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;Color negro</span><br><div><ul><li>Flexible<br></li><li>Talla M<br></li><li>Logo impreso<br></li><li>Tela de calidad<br></li></ul></div>', 'playera.png', 'playera2.jfif', 'playera3.jfif', 50, 'In Stock', '2017-02-04 04:40:37', ''),
(18, 5, 10, 'Tirantes Tracker for bikes', 'TrackBikes', 119, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Tirantes logo Tracker for Bikes</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;Color negro</span><br><div><ul><li>Flexible<br></li><li>Talla M<br></li><li>Logo impreso<br></li><li>Tela de calidad<br></li></ul></div>', 'tirantes.png', 'tirantes2.jfif', 'tirantes.png', 50, 'In Stock', '2017-02-04 04:42:27', ''),
(19, 6, 12, 'Airtag - Rastreador de bicicleta antirrobo - Rastreador GPS de bicicleta antirrobo - Compatible con la etiqueta localizadora de etiquetas de aire de Apple, soporte impermeable, tornillos de seguridad, 2 juegos, a prueba de óxido', 'IN-COG-NEATO', 280, 0, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Compatible con AirTag / Dimensiones 25 x 25 x 25 millimeters</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Acabado de alta calidad y resistente al agua / Ajustable</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><br></div></li></ul>', 'robo.jpg', 'robo2.jpg', 'robo3.jpg', 30, 'In Stock', '2017-03-10 20:16:03', ''),
(20, 6, 12, 'TUSITA Soporte frontal compatible con la computadora GPS Garmin Bike, XOSS G/G+, iGPSPORT GPS – Manillar de ciclismo 25.4 mm 31.8 mm soporte de luz para cámara – Combo de bicicleta de montaje extendido accesorios MTB', 'TUSITA', 299, 379, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: Blue</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Closure: Laced</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Weight</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>200 g (per single Shoe) - Weight of the product may vary depending on size.</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Style</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Panel and Stitch Detail, Textured Detail</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Tip Shape</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Round</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Season</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>AW16</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Closure</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Laced</b></li></ul></li></ul>', 'tus1.jpg', 'tus2.jpg', 'tus3.jpg', 30, 'In Stock', '2017-03-10 20:19:22', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'No disponible', '2017-01-26 16:24:52', '26-01-2017 11:03:40 PM'),
(3, 4, 'Rastreador', '2017-01-26 16:29:09', ''),
(4, 4, 'Cables', '2017-01-30 16:55:48', ''),
(5, 4, 'Accesorios electrónicos', '2017-02-04 04:12:40', ''),
(6, 4, 'Software', '2017-02-04 04:13:00', ''),
(7, 4, 'No disponible', '2017-02-04 04:13:27', ''),
(8, 3, 'Manuales', '2017-02-04 04:13:54', ''),
(9, 5, 'Playeras', '2017-02-04 04:36:45', ''),
(10, 5, 'Tirantes', '2017-02-04 04:37:02', ''),
(11, 5, 'No disponnible', '2017-02-04 04:37:51', ''),
(12, 6, 'Accesorios para bicicleta', '2017-03-10 20:12:59', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'kugisaki2@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-25 17:41:26', '25-05-2022 11:13:39 PM', 1),
(25, 'kugisaki2@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-25 17:44:00', NULL, 0),
(26, 'kugisaki2@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-25 17:44:05', NULL, 1),
(27, 'kugisaki2@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-25 20:00:37', NULL, 0),
(28, 'kugisaki2@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-25 20:00:43', '26-05-2022 02:29:15 AM', 1),
(29, 'isaacgta12@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-25 21:10:45', '26-05-2022 02:40:58 AM', 1),
(30, 'kugisaki2@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-25 21:11:02', NULL, 0),
(31, 'kugisaki2@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-25 21:11:03', NULL, 0),
(32, 'kugisaki2@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-25 21:11:04', NULL, 0),
(33, 'kugisaki2@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-25 21:11:10', NULL, 0),
(34, 'kugisaki2@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-25 21:11:15', '26-05-2022 02:41:39 AM', 1),
(35, 'isaacgta12@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-25 21:11:52', '26-05-2022 02:42:41 AM', 1),
(36, 'Test@123', 0x3a3a3100000000000000000000000000, '2022-05-25 21:13:41', NULL, 0),
(37, 'kugisaki2@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-25 21:13:44', NULL, 0),
(38, 'kugisaki2@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-25 21:13:49', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', ''),
(4, 'Kugisaki Nobara', 'kugisaki2@gmail.com', 12235, 'd5e80bfbf446ab1fbb6910e26b2f5c80', 'Priv. Venecia', 'Baja California', 'Ensenada', 22785, 'Priv. Venecia', 'Baja California', 'Ensenada', 22785, '2022-05-25 17:41:16', NULL),
(5, 'Isaac Vargas Ramírez', 'isaacgta12@gmail.com', 6462412315, '2a6c02a253d605eeb8270e836559483a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-25 21:10:27', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(2, 4, 18, '2022-05-25 18:49:04'),
(3, 4, 15, '2022-05-25 23:09:52'),
(5, 4, 16, '2022-05-25 23:10:06');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indices de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Indices de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`id`) REFERENCES `products` (`category`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
