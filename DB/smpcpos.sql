-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2021 at 07:26 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smpcpos`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `REC_NO` int(11) NOT NULL,
  `ID_NUMBER` int(20) NOT NULL,
  `FULL_NAME` varchar(100) NOT NULL,
  `A_DATE` varchar(10) NOT NULL,
  `TIME_IN` varchar(20) NOT NULL,
  `IN_REMARKS` varchar(50) NOT NULL,
  `TIME_OUT` varchar(20) NOT NULL,
  `OUT_REMARKS` varchar(50) NOT NULL,
  `D_MONTH` varchar(5) NOT NULL,
  `D_YEAR` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CATEGORY_ID` int(11) NOT NULL,
  `CNAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORY_ID`, `CNAME`) VALUES
(1, 'Delivery'),
(2, 'Softdrinks(Coca-cola Product)'),
(5, 'San Miguel Products'),
(10, 'Liquor'),
(13, 'Alcohol'),
(14, 'P. O.'),
(15, 'Grains'),
(16, 'Butane');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUST_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `PHONE_NUMBER` varchar(15) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `PO_MEMBER` varchar(50) NOT NULL,
  `PO_CARD_NO` int(50) NOT NULL,
  `PO_DATE_ISSUED` varchar(50) NOT NULL,
  `PO_DATE_DUE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_ID`, `FIRST_NAME`, `LAST_NAME`, `PHONE_NUMBER`, `ADDRESS`, `PO_MEMBER`, `PO_CARD_NO`, `PO_DATE_ISSUED`, `PO_DATE_DUE`) VALUES
(1, ' Walk-In', 'Customer', 'N/A', '', '', 0, '', ''),
(7, 'EDUARDO', 'GUARIN', '09123456789', 'N/A', 'NO', 0, 'none', 'none'),
(19, 'JENEFER ', 'CARILLO', 'N/A', 'SIBONGA', 'NO', 0, 'none', 'none'),
(20, 'MARY ANN', 'ANTIPUESTO', 'N/A', 'SIBONGA', 'NO', 0, 'none', 'none'),
(21, 'CARLOS', 'REDILLO', 'N/A', 'SIBONGA', 'NO', 0, 'none', 'none'),
(22, 'ANLOH', 'CABAL', 'N/A', 'SIBONGA', 'NO', 0, 'none', 'none'),
(23, 'BANLASAN', 'N/A', 'N/A', 'SIBONGA', 'NO', 0, 'none', 'none'),
(24, 'ARLYN', 'CABAL', 'N/A', 'SIBONGA', 'NO', 0, 'none', 'none'),
(25, 'GENRO', 'CLARION', 'NA', 'SIBONGA', 'NO', 0, 'none', 'none'),
(26, 'MYRLA', 'CERVANTES', 'NA', 'SIBONGA', 'NO', 0, 'none', 'none'),
(27, 'ELLA', 'GAKO', 'NA', 'SIBONGA, CEBU', 'NO', 0, 'none', 'none'),
(28, 'BEATRIZ', 'YARANON', '', '', '', 0, '', ''),
(29, 'FRAS', 'SANTA RITA', '', '', '', 0, '', ''),
(30, 'LUGO', 'MANATAD', '', '', '', 0, '', ''),
(31, 'CARTIE', 'PERESORES', '', '', '', 0, '', ''),
(32, 'NONAT', 'MANATAD', '', '', '', 0, '', ''),
(33, 'VIOLING', 'BACOMO', '', '', '', 0, '', ''),
(34, 'ROY', 'SUICO', '', '', '', 0, '', ''),
(35, 'REBECA', 'PERESORES', '', '', '', 0, '', ''),
(36, 'JOAN', 'ESCUADRO', '', '', '', 0, '', ''),
(37, 'MARISA', 'AVILA', '', '', '', 0, '', ''),
(38, 'FERMINA', 'ESPINA', '', '', '', 0, '', ''),
(39, 'MARGIE', 'ALIGADO', '', '', '', 0, '', ''),
(40, 'GLENN', 'TORRES', '', '', '', 0, '', ''),
(41, 'CECILE ', 'RECOPILACION', '', '', '', 0, '', ''),
(42, 'NORCEL', 'REGIDOR', '', '', '', 0, '', ''),
(43, 'CHARING', '', '', '', '', 0, '', ''),
(44, 'PING2x', 'AMAY', '', '', '', 0, '', ''),
(45, 'HERMANA', 'PERDIGUEZ', '', '', '', 0, '', ''),
(46, 'FRANCIO', 'IMPIS', '', '', '', 0, '', ''),
(47, 'ELVIRA', 'DELA CRUZ', '', '', '', 0, '', ''),
(48, 'ANECAR', 'SILVA', '', '', '', 0, '', ''),
(49, 'MARY ANN', 'DAKAY', '', '', '', 0, '', ''),
(50, 'ZOSIMA', 'ABETRIA', '', '', '', 0, '', ''),
(51, 'JEMMA ', 'SOLATORIO', '', '', '', 0, '', ''),
(52, 'LINDA', 'FERNANDEZ', '', '', '', 0, '', ''),
(53, 'RIZA', 'PADIGOS', '', '', '', 0, '', ''),
(54, 'MELCHOR', 'LAZAGA', '', '', '', 0, '', ''),
(55, 'GLORIA', 'ORDENIZA', '', '', '', 0, '', ''),
(56, 'CRIS', 'CUBAR', '', '', '', 0, '', ''),
(57, 'JEFREY', 'LABRADOR', '', '', '', 0, '', ''),
(58, 'ALARA', 'DIMCO', '', '', '', 0, '', ''),
(59, 'JEYMAIN', 'BALANSAG', '', '', '', 0, '', ''),
(60, 'FATIMA', 'LLANOS', '', '', '', 0, '', ''),
(61, 'MARK', 'DIAPANA', '', '', '', 0, '', ''),
(62, 'SABANAL', '', '', '', '', 0, '', ''),
(63, 'ANDREA CABAL', '', '', '', '', 0, '', ''),
(64, 'CHERRY', 'CASAYAS', '', '', '', 0, '', ''),
(65, 'JENNY', 'CABARDO', '', '', '', 0, '', ''),
(66, 'DIAPELO', '', '', '', '', 0, '', ''),
(67, 'CHEVRY', 'MANGIRAN', '', '', '', 0, '', ''),
(68, 'ARLYN', 'BALINGKIT', '', '', '', 0, '', ''),
(69, 'TANIA', 'SARSONA', '', '', '', 0, '', ''),
(70, 'ESMAEL', '', '', '', '', 0, '', ''),
(71, 'LIZBETH', '', '', '', '', 0, '', ''),
(72, 'JET', 'HILAMO', '', '', '', 0, '', ''),
(73, 'SAN MIGUEL INC', '', '', '', '', 0, '', ''),
(74, 'ALYONA', '', '', '', '', 0, '', ''),
(75, 'ERWIN', '', '', '', '', 0, '', ''),
(76, 'EDWIN', 'ORDENIZA', '', '', '', 0, '', ''),
(77, 'SMPC', '', '', '', '', 0, '', ''),
(78, 'HENNY', 'SULTAN', '', '', '', 0, '', ''),
(79, 'SARIO', 'AMARADO', '', '', '', 0, '', ''),
(80, 'VIOLITA', 'BACOMO', '', '', '', 0, '', ''),
(81, 'ANGIE', 'CABAL', '', '', '', 0, '', ''),
(82, 'MELY', 'BANLASAN', '', '', '', 0, '', ''),
(83, 'LITO', 'CABARDO', '', '', '', 0, '', ''),
(84, 'SHIELA', '', '', '', '', 0, '', ''),
(85, 'BARUEL', '', '', '', '', 0, '', ''),
(86, 'LOTA', 'CABRERA', '', '', '', 0, '', ''),
(87, 'SMPC', 'LENDING', '', '', '', 0, '', ''),
(88, 'FELIPE', 'BANLASAN', '', '', '', 0, '', ''),
(89, 'RAMIL', 'ZAMORA', '', '', '', 0, '', ''),
(90, 'NINA', 'SEDIMO', '', '', '', 0, '', ''),
(91, 'JOSEFINA', 'ENGANO', '', '', '', 0, '', ''),
(92, 'ROSEMARY', 'ORDENIZA', '', '', '', 0, '', ''),
(93, 'LILIA', '', '', '', '', 0, '', ''),
(94, 'LONIE', '', '', '', '', 0, '', ''),
(95, 'DIDANG', '', '', '', '', 0, '', ''),
(96, 'RAFAEL', 'VILLAVER', '', '', '', 0, '', ''),
(98, 'CELSA', 'PAEZ', '', '', '', 0, '', ''),
(99, 'LILY', 'BAROGAN', '', '', '', 0, '', ''),
(100, 'N/A', 'ORDENIZA', '', '', '', 0, '', ''),
(101, 'ESTER', 'ALEONAR', '', '', '', 0, '', ''),
(102, 'TINIE', 'PERESORES', '', '', '', 0, '', ''),
(103, 'PIDIO', 'CABAL', '', '', '', 0, '', ''),
(104, 'RAUL', 'LOGDONIO', '', '', '', 0, '', ''),
(105, 'EUFRONIO', 'RICABORDA', '', '', '', 0, '', ''),
(106, 'BERTO', '', '', '', '', 0, '', ''),
(107, 'MARIBEL', 'BELLAVITA', '', '', '', 0, '', ''),
(108, 'ELIEZER', 'IROMA', '', '', '', 0, '', ''),
(109, 'WILLIAM', 'FERNANDEZ', '', '', '', 0, '', ''),
(110, 'SALLY', 'MAHUSAY', '', '', '', 0, '', ''),
(111, 'REY', 'CUESTAS', '', '', '', 0, '', ''),
(112, 'MARZAN', 'SULTAN', '', '', '', 0, '', ''),
(113, 'MA SALOME', 'DAKAY', '', '', '', 0, '', ''),
(114, 'JEN JEN', '', '', '', '', 0, '', ''),
(116, 'ANNA', 'SARIO', '', '', '', 0, '', ''),
(117, 'ANIE', 'SOLATORIO', '', '', '', 0, '', ''),
(118, 'JUNJUN', 'ABELLA', '', '', '', 0, '', ''),
(119, 'RENE', 'PELARES', '', '', '', 0, '', ''),
(120, 'LEO', 'ABORDO', '', '', '', 0, '', ''),
(121, 'ELIEN', 'CABAL', '', '', '', 0, '', ''),
(122, 'J R', 'SARSONA', '', '', '', 0, '', ''),
(123, 'ANTONIA', 'SARSONA', '', '', '', 0, '', ''),
(124, 'HARRY', 'PADILLO', '', '', '', 0, '', ''),
(125, 'AMANCIO', '', '', '', '', 0, '', ''),
(126, 'MONICO', 'INIGO', '', '', '', 0, '', ''),
(127, 'RALPH', '', '', '', '', 0, '', ''),
(128, 'MASA', '', '', '', '', 0, '', ''),
(129, 'EVANGELINE', 'PADIGOS', '', '', '', 0, '', ''),
(130, 'GENELYN', '', '', '', '', 0, '', ''),
(131, 'ROEL', 'MAGALLANO', '', '', '', 0, '', ''),
(132, 'ANECITA', 'CAMPOREDONDO', '', '', '', 0, '', ''),
(133, 'CORAY', 'LOGOLONIO', '', '', '', 0, '', ''),
(134, 'ALMORADAS', '', '', '', '', 0, '', ''),
(135, 'RENREN', '', '', '', '', 0, '', ''),
(136, 'REVERA', '', '', '', '', 0, '', ''),
(137, 'REYMART', 'PORTA', '', '', '', 0, '', ''),
(138, 'ALEGARBES', '', '', '', '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `database_download`
--

CREATE TABLE `database_download` (
  `REC_NO` int(11) NOT NULL,
  `DOWNLOAD_DATE` varchar(20) NOT NULL,
  `DOWNLOAD_NAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `database_download`
--

INSERT INTO `database_download` (`REC_NO`, `DOWNLOAD_DATE`, `DOWNLOAD_NAME`) VALUES
(38, '2021-05-22 | 11:01', 'smpcpos_backup_2021-05-22.sql'),
(39, '2021-05-24 | 10:17', 'smpcpos_backup_2021-05-24.sql'),
(40, '2021-05-24 | 11:30', 'smpcpos_backup_2021-05-24.sql'),
(41, '2021-05-24 | 17:03', 'smpcpos_backup_2021-05-24.sql'),
(42, '2021-05-27 | 10:27', 'smpcpos_backup_2021-05-27.sql'),
(43, '2021-05-27 | 16:03', 'smpcpos_backup_2021-05-27.sql'),
(44, '2021-05-27 | 16:13', 'smpcpos_backup_2021-05-27.sql');

-- --------------------------------------------------------

--
-- Table structure for table `day`
--

CREATE TABLE `day` (
  `NAME` varchar(10) NOT NULL,
  `CHECKED` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `day`
--

INSERT INTO `day` (`NAME`, `CHECKED`) VALUES
('IN', 1),
('OUT', 0);

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `rec_no` int(11) NOT NULL,
  `DELIVERY_DATE` date NOT NULL,
  `PRODUCT_CODE` varchar(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `QTY` double NOT NULL,
  `PRICE` varchar(15) NOT NULL,
  `STATUS` varchar(50) NOT NULL,
  `SALES` double NOT NULL,
  `RETURNED` double NOT NULL,
  `STAT` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`rec_no`, `DELIVERY_DATE`, `PRODUCT_CODE`, `NAME`, `QTY`, `PRICE`, `STATUS`, `SALES`, `RETURNED`, `STAT`) VALUES
(101, '2021-05-03', '09400307', 'Red Horse 1000ml', 36, '525', 'OUT FOR DELIVERY', 36, 0, 1),
(102, '2021-05-03', '09371007', 'Pilsen Litro 1000ml', 15, '535', 'COMPLETED', 1, 14, 1),
(103, '2021-05-03', '09410307', 'Red Horse 500ml', 4, '520', 'COMPLETED', 1, 3, 1),
(104, '2021-05-03', '09281407', 'All Litro 1 Liter', 20, '334', 'COMPLETED', 18, 2, 1),
(105, '2021-05-03', '09292407', 'All 1.5  1.5 Liter', 3, '655', 'COMPLETED', 1, 2, 1),
(106, '2021-05-03', '09235107', 'All 8oz 8oz', 50, '154', 'COMPLETED', 46, 4, 1),
(107, '2021-05-03', '09342507', 'All Swakto swakto', 15, '106', 'COMPLETED', 3, 12, 1),
(108, '2021-05-03', '09330307', 'All Cobra yellow', 4, '280', 'OUT FOR DELIVERY', 4, 0, 1),
(109, '2021-05-03', '09435807', 'Vino Kulafu 700ML', 2, '840', 'OUT FOR DELIVERY', 2, 0, 1),
(110, '2021-05-03', '09454307', 'Vino Kulafu 350ML', 2, '840', 'OUT FOR DELIVERY', 2, 0, 1),
(111, '2021-05-03', '09483707', 'Emperador Brandy 700ML', 1, '1315', 'COMPLETED', 0, 1, 1),
(112, '2021-05-03', '09462707', 'Primera Light 750ML', 1, '1100', 'COMPLETED', 0, 1, 1),
(113, '2021-05-05', '09400307', 'Red Horse 1000ml', 3, '525', 'OUT FOR DELIVERY', 3, 0, 1),
(114, '2021-05-05', '09371007', 'Pilsen Litro 1000ml', 24, '535', 'COMPLETED', 6, 18, 1),
(115, '2021-05-05', '09410307', 'Red Horse 500ml', 12, '520', 'COMPLETED', 10, 2, 1),
(116, '2021-05-05', '09281407', 'All Litro 1 Liter', 42, '334', 'COMPLETED', 38.5, 3.5, 1),
(117, '2021-05-05', '09292407', 'All 1.5  1.5 Liter', 2, '655', 'COMPLETED', 0, 2, 1),
(118, '2021-05-05', '09235107', 'All 8oz 8oz', 41, '154', 'COMPLETED', 33.5, 7.5, 1),
(119, '2021-05-05', '09342507', 'All Swakto swakto', 15, '106', 'COMPLETED', 6, 9, 1),
(120, '2021-05-05', '09330307', 'All Cobra yellow', 7, '280', 'COMPLETED', 4, 3, 1),
(121, '2021-05-05', '09435807', 'Vino Kulafu 700ML', 6, '840', 'OUT FOR DELIVERY', 6, 0, 1),
(122, '2021-05-05', '09454307', 'Vino Kulafu 350ML', 3, '840', 'OUT FOR DELIVERY', 3, 0, 1),
(123, '2021-05-05', '09350607', 'All Minute Maid Apple', 4, '85', 'COMPLETED', 1, 3, 1),
(124, '2021-05-05', '09483707', 'Emperador Brandy 700ML', 1, '1315', 'OUT FOR DELIVERY', 1, 0, 1),
(125, '2021-05-07', '09462707', 'Primera Light 750ML', 1, '1100', 'COMPLETED', 0, 1, 1),
(126, '2021-05-07', '09400307', 'Red Horse 1000ml', 39, '525', 'COMPLETED', 37, 2, 1),
(127, '2021-05-07', '09371007', 'Pilsen Litro 1000ml', 3, '535', 'COMPLETED', 0, 3, 1),
(128, '2021-05-07', '09410307', 'Red Horse 500ml', 6, '520', 'OUT FOR DELIVERY', 6, 0, 1),
(129, '2021-05-07', '09281407', 'All Litro 1 Liter', 24, '334', 'COMPLETED', 12, 12, 1),
(130, '2021-05-07', '09292407', 'All 1.5  1.5 Liter', 1, '655', 'OUT FOR DELIVERY', 1, 0, 1),
(131, '2021-05-07', '09235107', 'All 8oz 8oz', 30, '154', 'COMPLETED', 18, 12, 1),
(132, '2021-05-07', '09342507', 'All Swakto swakto', 15, '106', 'COMPLETED', 4, 11, 1),
(133, '2021-05-07', '09330307', 'All Cobra yellow', 15, '280', 'COMPLETED', 8, 7, 1),
(134, '2021-05-07', '09483707', 'Emperador Brandy 700ML', 1, '1315', 'COMPLETED', 0, 1, 1),
(135, '2021-05-07', '09415107', 'Red Horse Stallion', 2, '780', 'COMPLETED', 0, 2, 1),
(136, '2021-05-08', '09400307', 'Red Horse 1000ml', 31, '525', 'COMPLETED', 27, 4, 1),
(137, '2021-05-08', '09371007', 'Pilsen Litro 1000ml', 17, '535', 'COMPLETED', 10, 7, 1),
(138, '2021-05-08', '09281407', 'All Litro 1 Liter', 24, '334', 'COMPLETED', 23.5, 0.5, 1),
(139, '2021-05-08', '09235107', 'All 8oz 8oz', 36, '154', 'COMPLETED', 28, 8, 1),
(140, '2021-05-08', '09342507', 'All Swakto swakto', 15, '106', 'COMPLETED', 0, 15, 1),
(141, '2021-05-08', '09330307', 'All Cobra yellow', 6, '280', 'OUT FOR DELIVERY', 6, 0, 1),
(142, '2021-05-08', '09435807', 'Vino Kulafu 700ML', 4, '840', 'OUT FOR DELIVERY', 4, 0, 1),
(143, '2021-05-08', '09454307', 'Vino Kulafu 350ML', 3, '840', 'COMPLETED', 2, 1, 1),
(144, '2021-05-08', '09350607', 'All Minute Maid Apple', 5, '85', 'OUT FOR DELIVERY', 5, 0, 1),
(145, '2021-05-08', '09415107', 'Red Horse Stallion', 6, '780', 'COMPLETED', 2, 4, 1),
(147, '2021-05-13', '09400307', 'Red Horse 1000ml', 36, '525', 'COMPLETED', 28, 8, 1),
(148, '2021-05-13', '09410307', 'Red Horse 500ml', 8, '525', 'COMPLETED', 5, 3, 1),
(149, '2021-05-13', '09281407', 'All Litro 1 Liter', 28, '334', 'COMPLETED', 25, 3, 1),
(150, '2021-05-13', '09235107', 'All 8oz 8oz', 36, '154', 'COMPLETED', 35.5, 0.5, 1),
(151, '2021-05-13', '09342507', 'All Swakto swakto', 15, '106', 'COMPLETED', 4, 11, 1),
(152, '2021-05-13', '09330307', 'All Cobra yellow', 9, '280', 'COMPLETED', 6.5, 2.5, 1),
(153, '2021-05-13', '09435807', 'Vino Kulafu 700ML', 4, '840', 'OUT FOR DELIVERY', 4, 0, 1),
(154, '2021-05-13', '09454307', 'Vino Kulafu 350ML', 2, '840', 'OUT FOR DELIVERY', 2, 0, 1),
(155, '2021-05-14', '09400307', 'Red Horse 1000ml', 29, '535', 'COMPLETED', 28, 1, 1),
(156, '2021-05-14', '09371007', 'Pilsen Litro 1000ml', 9, '535', 'COMPLETED', 5, 4, 1),
(157, '2021-05-14', '09410307', 'Red Horse 500ml', 3, '525', 'OUT FOR DELIVERY', 3, 0, 1),
(158, '2021-05-14', '09281407', 'All Litro 1 Liter', 28, '334', 'COMPLETED', 17, 11, 1),
(159, '2021-05-14', '09292407', 'All 1.5  1.5 Liter', 2, '655', 'COMPLETED', 1, 1, 1),
(160, '2021-05-14', '09235107', 'All 8oz 8oz', 39, '154', 'COMPLETED', 34, 5, 1),
(161, '2021-05-14', '09342507', 'All Swakto swakto', 15, '106', 'COMPLETED', 2, 13, 1),
(162, '2021-05-14', '09330307', 'All Cobra yellow', 6, '280', 'COMPLETED', 4, 2, 1),
(163, '2021-05-14', '09435807', 'Vino Kulafu 700ML', 2, '840', 'COMPLETED', 1, 1, 1),
(164, '2021-05-14', '09454307', 'Vino Kulafu 350ML', 2, '840', 'OUT FOR DELIVERY', 2, 0, 1),
(165, '2021-05-14', '09483707', 'Emperador Brandy 700ML', 1, '1315', 'OUT FOR DELIVERY', 1, 0, 1),
(166, '2021-05-15', '09400307', 'Red Horse 1000ml', 40, '535', 'COMPLETED', 18, 22, 1),
(167, '2021-05-15', '09371007', 'Pilsen Litro 1000ml', 11, '535', 'COMPLETED', 3, 8, 1),
(168, '2021-05-15', '09410307', 'Red Horse 500ml', 5, '525', 'OUT FOR DELIVERY', 5, 0, 1),
(169, '2021-05-15', '09281407', 'All Litro 1 Liter', 28, '334', 'COMPLETED', 8.5, 19.5, 1),
(170, '2021-05-15', '09235107', 'All 8oz 8oz', 33, '154', 'COMPLETED', 12, 21, 1),
(171, '2021-05-15', '09342507', 'All Swakto swakto', 10, '106', 'COMPLETED', 7, 3, 1),
(172, '2021-05-15', '09330307', 'All Cobra yellow', 3, '280', 'OUT FOR DELIVERY', 3, 0, 1),
(173, '2021-05-15', '09435807', 'Vino Kulafu 700ML', 2, '840', 'OUT FOR DELIVERY', 2, 0, 1),
(174, '2021-05-15', '09454307', 'Vino Kulafu 350ML', 2, '840', 'COMPLETED', 1, 1, 1),
(176, '2021-05-15', '09234308', 'Primera Light 750ML', 6, '92', 'COMPLETED', 4, 2, 1),
(177, '2021-05-18', '09400307', 'Red Horse 1000ml', 39, '535', 'COMPLETED', 28, 11, 1),
(178, '2021-05-18', '09371007', 'Pilsen Litro 1000ml', 6, '535', 'COMPLETED', 1, 5, 1),
(179, '2021-05-18', '09410307', 'Red Horse 500ml', 6, '525', 'COMPLETED', 3, 3, 1),
(180, '2021-05-18', '09281407', 'All Litro 1 Liter', 24, '334', 'COMPLETED', 19, 5, 1),
(181, '2021-05-18', '09292407', 'All 1.5  1.5 Liter', 2, '655', 'COMPLETED', 0, 2, 1),
(182, '2021-05-18', '09235107', 'All 8oz 8oz', 39, '154', 'OUT FOR DELIVERY', 39, 0, 1),
(183, '2021-05-18', '09342507', 'All Swakto swakto', 10, '106', 'OUT FOR DELIVERY', 10, 0, 1),
(184, '2021-05-18', '09330307', 'All Cobra yellow', 6, '280', 'COMPLETED', 1, 5, 1),
(185, '2021-05-18', '09435807', 'Vino Kulafu 700ML', 4, '840', 'OUT FOR DELIVERY', 4, 0, 1),
(186, '2021-05-18', '09454307', 'Vino Kulafu 350ML', 4, '840', 'COMPLETED', 0, 4, 1),
(187, '2021-05-18', '09350607', 'All Minute Maid Apple', 3, '85', 'COMPLETED', 2, 1, 1),
(188, '2021-05-18', '09415107', 'Red Horse Stallion', 3, '780', 'COMPLETED', 1, 2, 1),
(189, '2021-05-21', '09400307', 'Red Horse 1000ml', 32, '535', 'COMPLETED', 22, 10, 1),
(190, '2021-05-21', '09371007', 'Pilsen Litro 1000ml', 9, '535', 'COMPLETED', 8, 1, 1),
(191, '2021-05-21', '09410307', 'Red Horse 500ml', 4, '525', 'OUT FOR DELIVERY', 4, 0, 1),
(192, '2021-05-21', '09281407', 'All Litro 1 Liter', 28, '334', 'OUT FOR DELIVERY', 28, 0, 1),
(193, '2021-05-21', '09235107', 'All 8oz 8oz', 33, '154', 'OUT FOR DELIVERY', 33, 0, 1),
(194, '2021-05-21', '09342507', 'All Swakto swakto', 10, '106', 'OUT FOR DELIVERY', 10, 0, 1),
(195, '2021-05-21', '09330307', 'All Cobra yellow', 9, '280', 'COMPLETED', 7, 2, 1),
(196, '2021-05-21', '09435807', 'Vino Kulafu 700ML', 2, '840', 'OUT FOR DELIVERY', 2, 0, 1),
(197, '2021-05-21', '09454307', 'Vino Kulafu 350ML', 3, '840', 'OUT FOR DELIVERY', 3, 0, 1),
(198, '2021-05-21', '09483707', 'Emperador Brandy 700ML', 1, '1315', 'OUT FOR DELIVERY', 1, 0, 1),
(199, '2021-05-22', '09400307', 'Red Horse 1000ml', 29, '535', 'OUT FOR DELIVERY', 29, 0, 1),
(200, '2021-05-22', '09371007', 'Pilsen Litro 1000ml', 9, '535', 'COMPLETED', 4, 5, 1),
(201, '2021-05-22', '09281407', 'All Litro 1 Liter', 24, '334', 'COMPLETED', 14, 10, 1),
(202, '2021-05-22', '09235107', 'All 8oz 8oz', 28, '154', 'COMPLETED', 16, 12, 1),
(203, '2021-05-22', '09342507', 'All Swakto swakto', 12, '106', 'OUT FOR DELIVERY', 12, 0, 1),
(204, '2021-05-22', '09330307', 'All Cobra yellow', 6, '280', 'OUT FOR DELIVERY', 6, 0, 1),
(205, '2021-05-22', '09435807', 'Vino Kulafu 700ML', 2, '840', 'COMPLETED', 0, 2, 1),
(206, '2021-05-22', '09454307', 'Vino Kulafu 350ML', 2, '840', 'COMPLETED', 1, 1, 1),
(207, '2021-05-24', '09400307', 'Red Horse 1000ml', 44, '535', 'COMPLETED', 33, 11, 1),
(208, '2021-05-24', '09371007', 'Pilsen Litro 1000ml', 7, '535', 'COMPLETED', 0, 7, 1),
(209, '2021-05-24', '09281407', 'All Litro 1 Liter', 20, '334', 'COMPLETED', 15, 5, 1),
(210, '2021-05-24', '09235107', 'All 8oz 8oz', 34, '154', 'COMPLETED', 18, 16, 1),
(211, '2021-05-24', '09342507', 'All Swakto swakto', 6, '106', 'COMPLETED', 2, 4, 1),
(212, '2021-05-24', '09435807', 'Vino Kulafu 700ML', 2, '840', 'OUT FOR DELIVERY', 2, 0, 1),
(213, '2021-05-24', '09454307', 'Vino Kulafu 350ML', 2, '840', 'COMPLETED', 0, 2, 1),
(214, '2021-05-24', '09292407', 'All 1.5  1.5 Liter', 1, '655', 'OUT FOR DELIVERY', 1, 0, 1),
(215, '2021-05-26', '09400307', 'Red Horse 1000ml', 42, '535', 'COMPLETED', 21, 21, 1),
(216, '2021-05-26', '09410307', 'Red Horse 500ml', 9, '525', 'COMPLETED', 5, 4, 1),
(217, '2021-05-26', '09281407', 'All Litro 1 Liter', 30, '334', 'COMPLETED', 28.5, 1.5, 1),
(218, '2021-05-26', '09292407', 'All 1.5  1.5 Liter', 2, '655', 'OUT FOR DELIVERY', 2, 0, 1),
(219, '2021-05-26', '09235107', 'All 8oz 8oz', 48, '154', 'COMPLETED', 18.5, 29.5, 1),
(220, '2021-05-26', '09342507', 'All Swakto swakto', 5, '106', 'OUT FOR DELIVERY', 5, 0, 1),
(221, '2021-05-26', '09330307', 'All Cobra yellow', 6, '280', 'COMPLETED', 5, 1, 1),
(222, '2021-05-26', '09454307', 'Vino Kulafu 350ML', 4, '840', 'COMPLETED', 1, 3, 1),
(223, '2021-05-26', '09234308', 'Primera Light 750ML', 6, '92', 'COMPLETED', 4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMPLOYEE_ID` int(11) NOT NULL,
  `ID_NUMBER` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `MIDDLE_NAME` varchar(50) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `GENDER` varchar(20) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PHONE_NUMBER` varchar(15) NOT NULL,
  `JOB_ID` int(20) NOT NULL,
  `JOB_TITLE` varchar(100) NOT NULL,
  `HIRED_DATE` varchar(50) NOT NULL,
  `LOCATION_ID` int(20) NOT NULL,
  `ATTENDANCE` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPLOYEE_ID`, `ID_NUMBER`, `FIRST_NAME`, `LAST_NAME`, `MIDDLE_NAME`, `ADDRESS`, `GENDER`, `EMAIL`, `PHONE_NUMBER`, `JOB_ID`, `JOB_TITLE`, `HIRED_DATE`, `LOCATION_ID`, `ATTENDANCE`) VALUES
(1, 1234567890, 'Aljohn', 'Llanos', 'Amora', 'Candaguit, Sibonga, Cebu', 'Male', 'llanos.aj96@gmail.com', '09616212544', 3, '', '2020-11-09', 113, ''),
(5, 2147483647, 'Maria Salome', 'Dakay', '', 'Guimbangco-an, Sibonga, Cebu', 'Female', 'n/a', '09205517952', 4, '', '2021-04-24', 168, ''),
(6, 0, 'ALMA', 'SANGILA', '', '', 'Female', 'N/A', 'N/A', 2, '', '2021-05-17', 172, '');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_update`
--

CREATE TABLE `inventory_update` (
  `rec_no` int(11) NOT NULL,
  `PRODUCT_CODE` varchar(100) NOT NULL,
  `UPDATED_DATE` varchar(50) NOT NULL,
  `IN_STOCK` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_update`
--

INSERT INTO `inventory_update` (`rec_no`, `PRODUCT_CODE`, `UPDATED_DATE`, `IN_STOCK`) VALUES
(435, '09235107', '2021-05-03', 0),
(436, '09281407', '2021-05-03', 0),
(437, '09292407', '2021-05-03', 0),
(438, '09330307', '2021-05-03', 0),
(439, '09342507', '2021-05-03', 0),
(440, '09350607', '2021-05-03', 0),
(441, '09371007', '2021-05-03', 0),
(442, '09391607', '2021-05-03', 0),
(443, '09400307', '2021-05-03', 0),
(444, '09410307', '2021-05-03', 0),
(445, '09415107', '2021-05-03', 0),
(446, '09435807', '2021-05-03', 0),
(447, '09454307', '2021-05-03', 0),
(448, '09462707', '2021-05-03', 0),
(449, '09483707', '2021-05-03', 0),
(450, '09540907', '2021-05-03', 0),
(451, '09592107', '2021-05-03', 0),
(452, '10073607', '2021-05-03', 0),
(453, '10083007', '2021-05-03', 0),
(454, '10100607', '2021-05-03', 0),
(455, '10452307', '2021-05-05', 0),
(456, '10465007', '2021-05-05', 0),
(457, '10524807', '2021-05-07', 0),
(458, '10542207', '2021-05-07', 0),
(459, '10582607', '2021-05-07', 0),
(460, '09400307', '2021-05-05', 0),
(461, '09371007', '2021-05-05', 27),
(462, '09400307', '2021-05-06', 44),
(463, '09410307', '2021-05-06', 10),
(464, '13160707', '2021-05-06', 0),
(465, '13175207', '2021-05-06', 0),
(466, '09281407', '2021-05-06', 60),
(467, '09235107', '2021-05-06', 65),
(468, '09330307', '2021-05-06', 15),
(469, '09234308', '2021-05-03', 0),
(470, '09454307', '2021-05-07', 30),
(471, '09435807', '2021-05-07', 20),
(472, '08151910', '2021-05-10', 0),
(473, '09235107', '2021-05-12', 100),
(474, '09330307', '2021-05-12', 16),
(475, '09281407', '2021-05-12', 60),
(476, '09400307', '2021-05-12', 130),
(477, '09410307', '2021-05-12', 15),
(478, '13425514', '2021-05-03', 0),
(479, '09281407', '2021-05-15', 42),
(480, '09235107', '2021-05-15', 70),
(481, '09330307', '2021-05-15', 12),
(482, '09400307', '2021-05-15', 30),
(483, '09400307', '2021-05-17', 62),
(484, '09400307', '2021-05-20', 29),
(485, '09281407', '2021-05-22', 58),
(486, '09235107', '2021-05-22', 100),
(487, '09330307', '2021-05-22', 9),
(488, '09400307', '2021-05-22', 42),
(489, '09234308', '2021-05-03', 12),
(490, '09400307', '2021-05-26', 140),
(491, '09410307', '2021-05-26', 9),
(492, '10100607', '2021-05-14', 300);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `JOB_ID` int(11) NOT NULL,
  `JOB_TITLE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`JOB_ID`, `JOB_TITLE`) VALUES
(1, 'Manager'),
(2, 'Cashier'),
(3, 'IT Technician'),
(4, 'Posting Clerk');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LOCATION_ID` int(11) NOT NULL,
  `PROVINCE` varchar(100) DEFAULT NULL,
  `CITY` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LOCATION_ID`, `PROVINCE`, `CITY`) VALUES
(111, 'Negros Occidental', 'Bacolod City'),
(112, 'Negros Occidental', 'Bacolod City'),
(113, 'Cebu', 'Sibonga'),
(114, 'Negros Occidental', 'Himamaylan'),
(115, 'Negros Oriental', 'Dumaguette City'),
(116, 'Negros Occidental', 'Isabella'),
(126, 'Negros Occidental', 'Binalbagan'),
(130, 'Cebu', 'Bogo City'),
(131, 'Negros Occidental', 'Himamaylan'),
(132, 'Negros', 'Jupiter'),
(133, 'Aincrad', 'Floor 91'),
(134, 'negros', 'binalbagan'),
(135, 'hehe', 'tehee'),
(136, 'PLANET YEKOK', 'KOKEY'),
(137, 'Camiguin', 'Catarman'),
(138, 'Camiguin', 'Catarman'),
(139, 'Negros Occidental', 'Binalbagan'),
(140, 'Batangas', 'Lemery'),
(141, 'Capiz', 'Panay'),
(142, 'Camarines Norte', 'Labo'),
(143, 'Camarines Norte', 'Labo'),
(144, 'Camarines Norte', 'Labo'),
(145, 'Camarines Norte', 'Labo'),
(146, 'Capiz', 'Pilar'),
(147, 'Negros Occidental', 'Moises Padilla'),
(148, 'a', 'a'),
(149, '1', '1'),
(150, 'Negros Occidental', 'Himamaylan'),
(151, 'Masbate', 'Mandaon'),
(152, 'Aklanas', 'Madalagsasa'),
(153, 'Batangas', 'Mabini'),
(154, 'Bataan', 'Morong'),
(155, 'Capiz', 'Pillar'),
(156, 'Negros Occidental', 'Bacolod'),
(157, 'Camarines Norte', 'Labo'),
(158, 'Negros Occidental', 'Binalbagan'),
(159, 'Cebu', 'Carcar'),
(160, 'Cebu', 'Sibonga'),
(161, 'Cebu', 'Carcar'),
(162, 'Cebu', 'Carcar'),
(163, 'Cebu', 'Argao'),
(164, 'Cebu', 'Carcar'),
(165, 'Cebu', 'Carcar'),
(166, 'Cebu', 'Cebu City'),
(167, 'Cebu', 'Argao'),
(168, 'Cebu', 'Sibonga'),
(169, 'Cebu', 'Carcar'),
(170, 'Cebu', 'Sibonga'),
(171, 'Cebu', 'Minglanilla'),
(172, 'Cebu', 'Sibonga');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `LOCATION_ID` int(15) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PHONE_NUMBER` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `stat` int(5) NOT NULL,
  `NOTES` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`stat`, `NOTES`) VALUES
(1, 'ANG 1.5 LITER SOFTDRINKS NGA GI BAYRAN SA SAN MIGUEL IS NAA SA MAY 3, 2021 NA SULOD NGA TRANSACTION INSTEAD OF APRIL.....\n\nMAM JELIAN ANGKAT MAY 25, 2021');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PRODUCT_ID` int(11) NOT NULL,
  `PRODUCT_CODE` varchar(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(200) NOT NULL,
  `CASEORBOTTLE` varchar(100) NOT NULL,
  `QTY_STOCK` double NOT NULL,
  `ON_HAND` double NOT NULL,
  `BALANCE` double NOT NULL,
  `OLD_PRICE` double NOT NULL,
  `OLD_TOTAL` double NOT NULL,
  `SOLD` double NOT NULL,
  `PRICE` double NOT NULL,
  `REGULAR_PRICE` int(50) NOT NULL,
  `CATEGORY_ID` int(15) NOT NULL,
  `VARIANT_ID` int(20) NOT NULL,
  `SUPPLIER_ID` int(15) NOT NULL,
  `DATE_STOCK_IN` varchar(50) NOT NULL,
  `ENDED` varchar(10) NOT NULL,
  `DATE_STOCK_IN_MONTH` varchar(5) NOT NULL,
  `DATE_STOCK_IN_YEAR` varchar(5) NOT NULL,
  `DATE_STOCK_IN_DAY` int(10) NOT NULL,
  `CASH` double NOT NULL,
  `CREDIT` double NOT NULL,
  `ADDED_STOCKS` double NOT NULL,
  `DELIVERY_QTY` double NOT NULL,
  `DELIVERY_ID` int(10) NOT NULL,
  `REF_ID` int(20) NOT NULL,
  `DELIVERY_ENDED` varchar(20) NOT NULL,
  `DELIVERY_RETURNED` double NOT NULL,
  `CHECK_IT` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_ID`, `PRODUCT_CODE`, `NAME`, `DESCRIPTION`, `CASEORBOTTLE`, `QTY_STOCK`, `ON_HAND`, `BALANCE`, `OLD_PRICE`, `OLD_TOTAL`, `SOLD`, `PRICE`, `REGULAR_PRICE`, `CATEGORY_ID`, `VARIANT_ID`, `SUPPLIER_ID`, `DATE_STOCK_IN`, `ENDED`, `DATE_STOCK_IN_MONTH`, `DATE_STOCK_IN_YEAR`, `DATE_STOCK_IN_DAY`, `CASH`, `CREDIT`, `ADDED_STOCKS`, `DELIVERY_QTY`, `DELIVERY_ID`, `REF_ID`, `DELIVERY_ENDED`, `DELIVERY_RETURNED`, `CHECK_IT`) VALUES
(411, '09235107', 'All 8oz', 'All 8oz soft drinks', 'per case', 512, 95.5, 177, 154, 9009, 416.5, 154, 141, 2, 3, 9, '2021-05-03', 'NO', '05', '2021', 3, 416.5, 0, 0, 0, 219, 1, 'NO', 29.5, 1),
(412, '09281407', 'All Litro', 'All litro soft drinks', 'per case', 309, 35, 89, 334, 14028, 274, 334, 321, 2, 2, 9, '2021-05-03', 'NO', '05', '2021', 3, 272, 2, 0, 0, 217, 1, 'NO', 1.5, 1),
(413, '09292407', 'All 1.5 ', 'All 1.5 liter soft drinks', 'per case', 16, 6, 16, 0, 0, 10, 655, 645, 2, 1, 9, '2021-05-03', 'NO', '05', '2021', 3, 10, 0, 0, 0, 218, 1, 'NO', 2, 2),
(414, '09330307', 'All Cobra', 'All cobra drinks as yellow', 'per case', 68, 9.5, 16, 280, 3500, 58.5, 280, 267, 2, 23, 9, '2021-05-03', 'NO', '05', '2021', 3, 58.5, 0, 0, 0, 221, 1, 'NO', 1, 1),
(415, '09342507', 'All Swakto', 'All swakto soft drinks', 'per case', 111, 24, 111, 0, 0, 87, 106, 96, 2, 16, 9, '2021-05-03', 'NO', '05', '2021', 3, 87, 0, 0, 0, 220, 1, 'NO', 0, 2),
(416, '09350607', 'All Minute Maid', 'All minute maid drinks as apple flavor', 'per bottle', 30, 15, 30, 0, 0, 20, 85, 72, 2, 19, 9, '2021-05-03', 'NO', '05', '2021', 3, 20, 0, 0, 0, 187, 1, 'NO', 1, 1),
(417, '09371007', 'Pilsen Litro', 'Pilsen litro', 'per case', 58, 19, 31, 535, 16050, 39, 535, 504, 5, 13, 9, '2021-05-03', 'NO', '05', '2021', 3, 39, 0, 0, 0, 208, 1, 'NO', 7, 1),
(418, '09391607', 'Pale Pilsen', 'Pale pilsen small', 'per case', 11, 7, 11, 0, 0, 4, 755, 732, 5, 29, 9, '2021-05-03', 'NO', '05', '2021', 3, 4, 0, 0, 0, 0, 0, '', 0, 1),
(419, '09400307', 'Red Horse', 'Red horse litro', 'per case', 545, 221, 39, 535, 54570, 324, 535, 508, 5, 13, 9, '2021-05-03', 'NO', '05', '2021', 3, 324, 0, 0, 0, 215, 1, 'NO', 21, 2),
(420, '09410307', 'Red Horse', 'Red horse 500ml', 'per case', 53, 5, 19, 525, 525, 48, 525, 497, 5, 14, 9, '2021-05-03', 'NO', '05', '2021', 3, 48, 0, 0, 0, 216, 1, 'NO', 4, 2),
(421, '09415107', 'Red Horse', 'Red horse stallion', 'per case', 7, 4, 7, 0, 0, 3, 780, 751, 5, 35, 4, '2021-05-03', 'NO', '05', '2021', 3, 3, 0, 0, 0, 188, 1, 'NO', 2, 2),
(422, '09435807', 'Vino Kulafu', 'Vino kulafu 700ml', 'per box', 28, 0, 8, 840, 0, 28, 840, 740, 10, 33, 8, '2021-05-03', 'NO', '05', '2021', 3, 28, 0, 0, 0, 212, 1, 'NO', 2, 2),
(423, '09454307', 'Vino Kulafu', 'Vino kulafu 350ml', 'per box', 35, 18, 5, 840, 0, 17, 840, 764, 10, 32, 8, '2021-05-03', 'NO', '05', '2021', 3, 17, 0, 0, 0, 222, 1, 'NO', 3, 2),
(424, '09462707', 'Primera Light', 'Primera light 750ml', 'per box', 2, 2, 2, 0, 0, 0, 1100, 1034, 10, 34, 8, '2021-05-03', 'NO', '05', '2021', 3, 0, 0, 0, 0, 125, 1, 'NO', 1, 0),
(425, '09483707', 'Emperador Brandy', 'Empredor brandy 700ml', 'per box', 3, 0, 0, 0, 0, 3, 1315, 1272, 10, 33, 8, '2021-05-03', 'NO', '05', '2021', 3, 3, 0, 0, 0, 198, 1, 'NO', 1, 2),
(426, '09540907', 'Excellent', 'Excellent rice', 'per sack', 51, 34, 51, 0, 0, 17, 2120, 2020, 15, 42, 10, '2021-05-03', 'NO', '05', '2021', 3, 4, 13, 0, 0, 0, 0, '', 0, 1),
(427, '09592107', 'Lion Ivory', 'Lion ivory 50kg', 'per sack', 15, 13, 15, 0, 0, 2, 2200, 2100, 15, 42, 10, '2021-05-03', 'NO', '05', '2021', 3, 0, 2, 0, 0, 0, 0, '', 0, 1),
(428, '10073607', 'Lion Ivory', 'Lion ivory', 'per case', 50, 44, 50, 0, 0, 6, 1130, 1070, 15, 41, 10, '2021-05-03', 'NO', '05', '2021', 3, 3, 3, 0, 0, 0, 0, '', 0, 1),
(429, '10083007', 'PEPC Gas', 'Pepc gas green', 'per bottle', 103, 69, 103, 0, 0, 34, 25, 15, 16, 43, 12, '2021-05-03', 'NO', '05', '2021', 3, 34, 0, 0, 0, 0, 0, '', 0, 1),
(430, '10100607', 'PEPC Gas', 'Pepc gas blue', 'per bottle', 346, 289, 46, 20, 180, 57, 20, 15, 16, 44, 12, '2021-05-03', 'NO', '05', '2021', 3, 57, 0, 0, 0, 0, 0, '', 0, 1),
(436, '13160707', 'San Mig', 'San mig light beer', 'per case', 1, 0.5, 0, 0, 0, 0.5, 880, 855, 5, 30, 4, '2021-05-06', 'NO', '05', '2021', 6, 0.5, 0, 0, 0, 0, 0, '', 0, 1),
(437, '13175207', 'San Mig', 'San mig flavored beer', 'per case', 1, 0.5, 0, 0, 0, 0.5, 707, 682, 5, 31, 4, '2021-05-06', 'NO', '05', '2021', 6, 0.5, 0, 0, 0, 0, 0, '', 0, 1),
(438, '09234308', 'Primera Light', 'Primera light per bottle', 'per bottle', 36, 8, 36, 92, 0, 28, 92, 90, 10, 34, 8, '2021-05-03', 'NO', '05', '2021', 3, 26, 2, 0, 0, 223, 1, 'NO', 2, 2),
(440, '13425514', 'Pilapil', 'PILAPIL 50KG', 'per sack', 1, 0, 1, 0, 0, 1, 2020, 1820, 15, 42, 10, '2021-05-03', 'NO', '05', '2021', 3, 0, 1, 0, 0, 0, 0, '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SUPPLIER_ID` int(11) NOT NULL,
  `COMPANY_NAME` varchar(50) NOT NULL,
  `LOCATION_ID` int(15) NOT NULL,
  `PHONE_NUMBER` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SUPPLIER_ID`, `COMPANY_NAME`, `LOCATION_ID`, `PHONE_NUMBER`) VALUES
(4, 'EFN Logistics', 162, '487-7248'),
(5, 'Cabillon Merchandise', 163, '485-5129'),
(8, 'Grantix Corporation', 166, '416-8375'),
(9, 'Sayago General Merchandise', 167, '09225905240/09173186378'),
(10, 'Clemence Store', 169, '09184534540'),
(11, 'Dandan Store', 170, '09283227351'),
(12, 'PEPC GAS', 171, 'na');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TRANS_ID` int(11) NOT NULL,
  `CUST_ID` int(15) NOT NULL,
  `NUMOFITEMS` varchar(250) NOT NULL,
  `SUBTOTAL` varchar(50) NOT NULL,
  `LESSVAT` varchar(50) NOT NULL,
  `NETVAT` varchar(50) NOT NULL,
  `ADDVAT` varchar(50) NOT NULL,
  `GRANDTOTAL` varchar(250) NOT NULL,
  `CASH` float NOT NULL,
  `C_CHANGE` float NOT NULL,
  `DATE` varchar(50) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL,
  `OR_NUMBER` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TRANS_ID`, `CUST_ID`, `NUMOFITEMS`, `SUBTOTAL`, `LESSVAT`, `NETVAT`, `ADDVAT`, `GRANDTOTAL`, `CASH`, `C_CHANGE`, `DATE`, `TRANS_D_ID`, `OR_NUMBER`) VALUES
(242, 19, '5', '29,946.00', '3,208.50', '26,737.50', '3,208.50', '29,946.00', 29946, 0, '2021-05-03', '0507102458', 6521),
(243, 19, '1', '334.00', '35.79', '298.21', '35.79', '334.00', 334, 0, '2021-05-03', '0507102525', 6522),
(244, 20, '2', '869.00', '93.11', '775.89', '93.11', '869.00', 869, 0, '2021-05-03', '0507102553', 6523),
(245, 21, '2', '859.00', '92.04', '766.96', '92.04', '859.00', 859, 0, '2021-05-03', '0507102636', 6524),
(246, 22, '2', '1,228.00', '131.57', '1,096.43', '131.57', '1,228.00', 1228, 0, '2021-05-03', '0507102714', 6525),
(247, 23, '4', '1,208.00', '129.43', '1,078.57', '129.43', '1,208.00', 1208, 0, '2021-05-03', '0507102746', 6526),
(248, 24, '2', '880.00', '94.29', '785.71', '94.29', '880.00', 880, 0, '2021-05-03', '0507102814', 6527),
(249, 25, '2', '614.00', '65.79', '548.21', '65.79', '614.00', 614, 0, '2021-05-03', '0507102835', 6528),
(250, 26, '2', '1,772.00', '189.86', '1,582.14', '189.86', '1,772.00', 1772, 0, '2021-05-03', '0507102935', 6529),
(251, 19, '1', '665.00', '71.25', '593.75', '71.25', '665.00', 665, 0, '2021-05-03', '0507103021', 6530),
(252, 47, '1', '144.00', '15.43', '128.57', '15.43', '144.00', 144, 0, '2021-05-03', '0507103243', 6469),
(253, 48, '1', '40.00', '4.29', '35.71', '4.29', '40.00', 40, 0, '2021-05-03', '0507103319', 6475),
(254, 47, '1', '100.00', '10.71', '89.29', '10.71', '100.00', 100, 0, '2021-05-03', '0507103347', 6476),
(255, 49, '1', '200.00', '21.43', '178.57', '21.43', '200.00', 200, 0, '2021-05-03', '0507103411', 6477),
(256, 1, '2', '634.50', '67.98', '566.52', '67.98', '634.50', 635, 0, '2021-05-03', '0507103614', 6479),
(257, 1, '1', '72.00', '7.71', '64.29', '7.71', '72.00', 72, 0, '2021-05-04', '0507103723', 6481),
(258, 27, '1', '1,545.00', '165.54', '1,379.46', '165.54', '1,545.00', 1545, 0, '2021-05-04', '0507103810', 6483),
(259, 1, '1', '144.00', '15.43', '128.57', '15.43', '144.00', 144, 0, '2021-05-04', '0507103842', 6485),
(260, 28, '5', '3,190.00', '341.79', '2,848.21', '341.79', '3,190.00', 3190, 0, '2021-05-05', '0507113003', 6531),
(261, 28, '1', '535.00', '57.32', '477.68', '57.32', '535.00', 535, 0, '2021-05-05', '0507113038', 6532),
(262, 29, '1', '668.00', '71.57', '596.43', '71.57', '668.00', 668, 0, '2021-05-05', '0507113119', 6533),
(263, 30, '1', '334.00', '35.79', '298.21', '35.79', '334.00', 334, 0, '2021-05-05', '0507113151', 6534),
(264, 31, '3', '2,063.00', '221.04', '1,841.96', '221.04', '2,063.00', 2063, 0, '2021-05-05', '0507113228', 6535),
(265, 32, '1', '2,672.00', '286.29', '2,385.71', '286.29', '2,672.00', 2675, 3, '2021-05-05', '0507113252', 6536),
(266, 33, '3', '1,524.00', '163.29', '1,360.71', '163.29', '1,524.00', 1524, 0, '2021-05-05', '0507114114', 6537),
(267, 34, '6', '5,449.00', '583.82', '4,865.18', '583.82', '5,449.00', 5449, 0, '2021-05-05', '0507114255', 6538),
(268, 35, '3', '1,816.00', '194.57', '1,621.43', '194.57', '1,816.00', 1816, 0, '2021-05-05', '0507114455', 6539),
(269, 33, '1', '535.00', '57.32', '477.68', '57.32', '535.00', 535, 0, '2021-05-05', '0507114520', 6540),
(270, 20, '2', '488.00', '52.29', '435.71', '52.29', '488.00', 488, 0, '2021-05-05', '0507114557', 6541),
(271, 21, '3', '1,013.00', '108.54', '904.46', '108.54', '1,013.00', 1013, 0, '2021-05-05', '0507114659', 6542),
(272, 36, '5', '1,566.00', '167.79', '1,398.21', '167.79', '1,566.00', 1566, 0, '2021-05-05', '0507114751', 6543),
(273, 37, '2', '679.00', '72.75', '606.25', '72.75', '679.00', 679, 0, '2021-05-05', '0507114842', 6544),
(274, 38, '3', '3,144.00', '336.86', '2,807.14', '336.86', '3,144.00', 3144, 0, '2021-05-05', '0507114920', 6545),
(275, 39, '2', '815.00', '87.32', '727.68', '87.32', '815.00', 815, 0, '2021-05-05', '0507114949', 6546),
(276, 40, '2', '1,772.00', '189.86', '1,582.14', '189.86', '1,772.00', 1772, 0, '2021-05-05', '0507115027', 6547),
(277, 41, '2', '2,176.00', '233.14', '1,942.86', '233.14', '2,176.00', 2176, 0, '2021-05-05', '0507115103', 6548),
(278, 42, '3', '2,991.00', '320.46', '2,670.54', '320.46', '2,991.00', 2991, 0, '2021-05-05', '0507115150', 6549),
(279, 43, '6', '3,482.00', '373.07', '3,108.93', '373.07', '3,482.00', 3482, 0, '2021-05-05', '0507115243', 6550),
(280, 44, '3', '1,522.00', '163.07', '1,358.93', '163.07', '1,522.00', 1522, 0, '2021-05-05', '0507115416', 6390),
(281, 45, '2', '365.00', '39.11', '325.89', '39.11', '365.00', 365, 0, '2021-05-05', '0507115442', 6391),
(282, 1, '1', '144.00', '15.43', '128.57', '15.43', '144.00', 144, 0, '2021-05-05', '0507115821', 6487),
(283, 1, '1', '20.00', '2.14', '17.86', '2.14', '20.00', 20, 0, '2021-05-05', '0507115840', 6488),
(284, 46, '1', '288.00', '30.86', '257.14', '30.86', '288.00', 288, 0, '2021-05-05', '0507115928', 6491),
(285, 50, '1', '2,200.00', '235.71', '1,964.29', '235.71', '2,200.00', 2200, 0, '2021-05-05', '0507120137', 6492),
(286, 1, '1', '144.00', '15.43', '128.57', '15.43', '144.00', 144, 0, '2021-05-05', '0507140020', 6495),
(287, 51, '1', '770.00', '82.50', '687.50', '82.50', '770.00', 770, 0, '2021-05-07', '0507161613', 6392),
(288, 52, '3', '1,202.00', '128.79', '1,073.21', '128.79', '1,202.00', 1202, 0, '2021-05-07', '0507161728', 6393),
(289, 53, '5', '5,383.00', '576.75', '4,806.25', '576.75', '5,383.00', 5383, 0, '2021-05-07', '0507161907', 6394),
(290, 54, '4', '3,359.00', '359.89', '2,999.11', '359.89', '3,359.00', 3359, 0, '2021-05-07', '0507162034', 6395),
(291, 55, '2', '810.00', '86.79', '723.21', '86.79', '810.00', 810, 0, '2021-05-07', '0507162214', 6396),
(292, 21, '2', '1,055.00', '113.04', '941.96', '113.04', '1,055.00', 1055, 0, '2021-05-07', '0507162305', 6397),
(293, 23, '3', '1,347.00', '144.32', '1,202.68', '144.32', '1,347.00', 1347, 0, '2021-05-07', '0507162419', 6398),
(294, 36, '2', '2,993.00', '320.68', '2,672.32', '320.68', '2,993.00', 2993, 0, '2021-05-07', '0507162515', 6399),
(295, 38, '1', '3,210.00', '343.93', '2,866.07', '343.93', '3,210.00', 3210, 0, '2021-05-07', '0507162601', 6400),
(296, 56, '2', '822.00', '88.07', '733.93', '88.07', '822.00', 822, 0, '2021-05-07', '0507162659', 6651),
(297, 40, '2', '1,228.00', '131.57', '1,096.43', '131.57', '1,228.00', 1228, 0, '2021-05-07', '0507162738', 6652),
(298, 41, '1', '2,675.00', '286.61', '2,388.39', '286.61', '2,675.00', 2675, 0, '2021-05-07', '0507162840', 6653),
(299, 42, '2', '2,731.00', '292.61', '2,438.39', '292.61', '2,731.00', 2731, 0, '2021-05-07', '0507162959', 6654),
(300, 43, '2', '2,273.00', '243.54', '2,029.46', '243.54', '2,273.00', 2273, 0, '2021-05-07', '0507163041', 6655),
(301, 43, '1', '334.00', '35.79', '298.21', '35.79', '334.00', 334, 0, '2021-05-07', '0507163116', 6656),
(302, 44, '2', '689.00', '73.82', '615.18', '73.82', '689.00', 689, 0, '2021-05-07', '0507163209', 6657),
(303, 57, '4', '2,073.00', '222.11', '1,850.89', '222.11', '2,073.00', 2073, 0, '2021-05-07', '0507163532', 6658),
(304, 1, '1', '20.00', '2.14', '17.86', '2.14', '20.00', 20, 0, '2021-05-07', '050890334', 6602),
(305, 58, '1', '184.00', '19.71', '164.29', '19.71', '184.00', 184, 0, '2021-05-07', '050892625', 6601),
(306, 1, '1', '20.00', '2.14', '17.86', '2.14', '20.00', 20, 0, '2021-05-06', '0508113946', 6496),
(307, 59, '2', '962.00', '103.07', '858.93', '103.07', '962.00', 962, 0, '2021-05-06', '0508114156', 6497),
(308, 60, '1', '432.00', '46.29', '385.71', '46.29', '432.00', 432, 0, '2021-05-06', '0508114329', 6498),
(309, 46, '1', '515.00', '55.18', '459.82', '55.18', '515.00', 515, 0, '2021-05-06', '0508114455', 6499),
(310, 61, '1', '184.00', '19.71', '164.29', '19.71', '184.00', 184, 0, '2021-05-06', '0508114537', 6500),
(311, 62, '1', '425.00', '45.54', '379.46', '45.54', '425.00', 425, 0, '2021-05-08', '0508162238', 6659),
(312, 63, '1', '770.00', '82.50', '687.50', '82.50', '770.00', 770, 0, '2021-05-08', '0508162332', 6660),
(313, 19, '5', '9,783.00', '1,048.18', '8,734.82', '1,048.18', '9,783.00', 9783, 0, '2021-05-08', '0508162648', 6661),
(314, 64, '2', '976.00', '104.57', '871.43', '104.57', '976.00', 976, 0, '2021-05-08', '0508162743', 6662),
(315, 65, '3', '2,782.00', '298.07', '2,483.93', '298.07', '2,782.00', 2782, 0, '2021-05-08', '0508162905', 6663),
(316, 55, '5', '9,780.00', '1,047.86', '8,732.14', '1,047.86', '9,780.00', 9780, 0, '2021-05-08', '0508163033', 6664),
(317, 66, '3', '2,566.00', '274.93', '2,291.07', '274.93', '2,566.00', 2566, 0, '2021-05-08', '0508163157', 6665),
(318, 67, '3', '1,558.00', '166.93', '1,391.07', '166.93', '1,558.00', 1558, 0, '2021-05-08', '0508163321', 6666),
(319, 68, '3', '1,536.00', '164.57', '1,371.43', '164.57', '1,536.00', 1536, 0, '2021-05-08', '0508163422', 6667),
(320, 50, '1', '280.00', '30.00', '250.00', '30.00', '280.00', 280, 0, '2021-05-08', '0508163455', 6668),
(321, 69, '4', '3,321.00', '355.82', '2,965.18', '355.82', '3,321.00', 3321, 0, '2021-05-08', '0508163620', 6669),
(322, 20, '2', '869.00', '93.11', '775.89', '93.11', '869.00', 869, 0, '2021-05-08', '0508163823', 6670),
(323, 21, '2', '488.00', '52.29', '435.71', '52.29', '488.00', 488, 0, '2021-05-08', '0508163850', 6671),
(324, 22, '1', '840.00', '90.00', '750.00', '90.00', '840.00', 840, 0, '2021-05-08', '0508163913', 6672),
(325, 24, '3', '3,142.00', '336.64', '2,805.36', '336.64', '3,142.00', 3142, 0, '2021-05-08', '0508164038', 6673),
(326, 25, '3', '1,344.00', '144.00', '1,200.00', '144.00', '1,344.00', 1344, 0, '2021-05-08', '0508164139', 6674),
(327, 1, '1', '144.00', '15.43', '128.57', '15.43', '144.00', 144, 0, '2021-05-08', '051094525', 6606),
(328, 1, '1', '144.00', '15.43', '128.57', '15.43', '144.00', 144, 0, '2021-05-08', '051094607', 6607),
(329, 70, '2', '451.50', '48.38', '403.13', '48.38', '451.50', 452, 0, '2021-05-08', '051094733', 6608),
(330, 71, '4', '3,052.00', '327.00', '2,725.00', '327.00', '3,052.00', 3052, 0, '2021-05-08', '051095141', 6609),
(331, 46, '1', '515.00', '55.18', '459.82', '55.18', '515.00', 515, 0, '2021-05-08', '051095332', 6610),
(332, 72, '1', '184.00', '19.71', '164.29', '19.71', '184.00', 184, 0, '2021-05-08', '051095529', 6611),
(333, 1, '1', '864.00', '92.57', '771.43', '92.57', '864.00', 864, 0, '2021-05-08', '051095620', 6612),
(334, 73, '1', '1,944.00', '208.29', '1,735.71', '208.29', '1,944.00', 1944, 0, '2021-05-03', '0510100153', 6463),
(335, 74, '2', '2,230.00', '238.93', '1,991.07', '238.93', '2,230.00', 2230, 0, '2021-05-10', '051280716', 6613),
(336, 75, '2', '942.00', '100.93', '841.07', '100.93', '942.00', 942, 0, '2021-05-10', '051280849', 6614),
(337, 1, '1', '20.00', '2.14', '17.86', '2.14', '20.00', 20, 0, '2021-05-10', '051280924', 6615),
(338, 1, '1', '144.00', '15.43', '128.57', '15.43', '144.00', 144, 0, '2021-05-10', '051281008', 6616),
(339, 1, '1', '576.00', '61.71', '514.29', '61.71', '576.00', 576, 0, '2021-05-10', '051281102', 6618),
(340, 1, '2', '634.50', '67.98', '566.52', '67.98', '634.50', 635, 0, '2021-05-10', '051281212', 6619),
(341, 27, '5', '2,213.00', '237.11', '1,975.89', '237.11', '2,213.00', 2213, 0, '2021-05-10', '051293605', 6621),
(342, 1, '1', '144.00', '15.43', '128.57', '15.43', '144.00', 144, 0, '2021-05-10', '051293639', 6623),
(343, 49, '1', '200.00', '21.43', '178.57', '21.43', '200.00', 200, 0, '2021-05-11', '051294346', 6627),
(344, 76, '1', '972.00', '104.14', '867.86', '104.14', '972.00', 972, 0, '2021-05-11', '051294610', 6628),
(345, 76, '1', '2,070.00', '221.79', '1,848.21', '221.79', '2,070.00', 2070, 0, '2021-05-11', '051294750', 6629),
(346, 47, '1', '25.00', '2.68', '22.32', '2.68', '25.00', 25, 0, '2021-05-11', '051294824', 6630),
(347, 47, '1', '200.00', '21.43', '178.57', '21.43', '200.00', 200, 0, '2021-05-11', '051294928', 6631),
(348, 1, '1', '216.00', '23.14', '192.86', '23.14', '216.00', 216, 0, '2021-05-11', '051295426', 6632),
(349, 1, '1', '20.00', '2.14', '17.86', '2.14', '20.00', 20, 0, '2021-05-11', '051295459', 6633),
(350, 1, '1', '75.00', '8.04', '66.96', '8.04', '75.00', 75, 0, '2021-05-11', '051295535', 6634),
(351, 1, '1', '75.00', '8.04', '66.96', '8.04', '75.00', 75, 0, '2021-05-11', '051295610', 6635),
(352, 77, '1', '150.00', '16.07', '133.93', '16.07', '150.00', 150, 0, '2021-05-12', '051482112', 6638),
(353, 77, '2', '414.00', '44.36', '369.64', '44.36', '414.00', 414, 0, '2021-05-12', '051482229', 6639),
(354, 1, '1', '20.00', '2.14', '17.86', '2.14', '20.00', 20, 0, '2021-05-12', '051482304', 6640),
(355, 48, '1', '120.00', '12.86', '107.14', '12.86', '120.00', 120, 0, '2021-05-12', '051482337', 6641),
(356, 78, '1', '1,540.00', '165.00', '1,375.00', '165.00', '1,540.00', 1540, 0, '2021-05-13', '051494552', 6675),
(357, 25, '5', '1,723.00', '184.61', '1,538.39', '184.61', '1,723.00', 1723, 0, '2021-05-13', '051494655', 6676),
(358, 24, '5', '2,612.00', '279.86', '2,332.14', '279.86', '2,612.00', 2612, 0, '2021-05-13', '051494754', 6677),
(359, 31, '5', '2,517.00', '269.68', '2,247.32', '269.68', '2,517.00', 2517, 0, '2021-05-13', '051494856', 6678),
(360, 79, '1', '668.00', '71.57', '596.43', '71.57', '668.00', 668, 0, '2021-05-13', '051494946', 6679),
(361, 34, '3', '1,691.00', '181.18', '1,509.82', '181.18', '1,691.00', 1691, 0, '2021-05-13', '051495027', 6680),
(362, 80, '2', '869.00', '93.11', '775.89', '93.11', '869.00', 869, 0, '2021-05-13', '051495135', 6681),
(363, 33, '2', '869.00', '93.11', '775.89', '93.11', '869.00', 869, 0, '2021-05-13', '051495204', 6682),
(364, 35, '2', '1,130.00', '121.07', '1,008.93', '121.07', '1,130.00', 1130, 0, '2021-05-13', '051495237', 6683),
(365, 81, '1', '1,070.00', '114.64', '955.36', '114.64', '1,070.00', 1070, 0, '2021-05-13', '051495604', 6684),
(366, 21, '1', '525.00', '56.25', '468.75', '56.25', '525.00', 525, 0, '2021-05-13', '051495630', 6685),
(367, 82, '4', '2,488.00', '266.57', '2,221.43', '266.57', '2,488.00', 2488, 0, '2021-05-13', '051495742', 6686),
(368, 62, '2', '1,130.00', '121.07', '1,008.93', '121.07', '1,130.00', 1130, 0, '2021-05-13', '0514100011', 6687),
(369, 36, '6', '2,568.00', '275.14', '2,292.86', '275.14', '2,568.00', 2568, 0, '2021-05-13', '0514100132', 6688),
(370, 83, '2', '488.00', '52.29', '435.71', '52.29', '488.00', 488, 0, '2021-05-13', '0514100258', 6689),
(371, 38, '7', '10,348.00', '1,108.71', '9,239.29', '1,108.71', '10,348.00', 10348, 0, '2021-05-13', '0514100442', 6690),
(372, 39, '3', '1,529.00', '163.82', '1,365.18', '163.82', '1,529.00', 1529, 0, '2021-05-13', '0514100544', 6691),
(373, 84, '3', '1,558.00', '166.93', '1,391.07', '166.93', '1,558.00', 1558, 0, '2021-05-13', '0514100641', 6692),
(374, 56, '3', '768.00', '82.29', '685.71', '82.29', '768.00', 768, 0, '2021-05-13', '0514100719', 6693),
(375, 85, '3', '2,093.00', '224.25', '1,868.75', '224.25', '2,093.00', 2093, 0, '2021-05-13', '0514100830', 6694),
(376, 86, '1', '462.00', '49.50', '412.50', '49.50', '462.00', 462, 0, '2021-05-13', '0514100921', 6695),
(377, 87, '1', '2,020.00', '216.43', '1,803.57', '216.43', '2,020.00', 2020, 0, '2021-05-03', '0514134858', 8969),
(378, 88, '1', '1,180.00', '126.43', '1,053.57', '126.43', '1,180.00', 1180, 0, '2021-05-03', '0514135604', 8970),
(379, 49, '1', '2,300.00', '246.43', '2,053.57', '246.43', '2,300.00', 2300, 0, '2021-05-04', '0514135919', 8971),
(380, 87, '1', '1,180.00', '126.43', '1,053.57', '126.43', '1,180.00', 1180, 0, '2021-05-04', '0514140010', 8972),
(381, 89, '1', '1,180.00', '126.43', '1,053.57', '126.43', '1,180.00', 1180, 0, '2021-05-05', '0514140108', 8973),
(382, 87, '1', '2,220.00', '237.86', '1,982.14', '237.86', '2,220.00', 2220, 0, '2021-05-05', '0514140157', 8974),
(383, 87, '1', '2,220.00', '237.86', '1,982.14', '237.86', '2,220.00', 2220, 0, '2021-05-05', '0514140252', 8975),
(384, 87, '1', '2,220.00', '237.86', '1,982.14', '237.86', '2,220.00', 2220, 0, '2021-05-05', '0514140343', 8976),
(385, 90, '1', '2,220.00', '237.86', '1,982.14', '237.86', '2,220.00', 2220, 0, '2021-05-05', '0514140453', 8977),
(386, 91, '1', '4,440.00', '475.71', '3,964.29', '475.71', '4,440.00', 4440, 0, '2021-05-06', '0514140642', 8978),
(387, 87, '1', '2,300.00', '246.43', '2,053.57', '246.43', '2,300.00', 2300, 0, '2021-05-07', '0514140727', 8979),
(388, 87, '1', '2,220.00', '237.86', '1,982.14', '237.86', '2,220.00', 2220, 0, '2021-05-08', '0514140810', 8980),
(389, 87, '1', '2,220.00', '237.86', '1,982.14', '237.86', '2,220.00', 2220, 0, '2021-05-10', '0514140851', 8981),
(390, 87, '1', '2,220.00', '237.86', '1,982.14', '237.86', '2,220.00', 2220, 0, '2021-05-10', '0514140941', 8982),
(391, 92, '1', '2,250.00', '241.07', '2,008.93', '241.07', '2,250.00', 2250, 0, '2021-05-12', '0514141302', 8983),
(392, 87, '1', '2,220.00', '237.86', '1,982.14', '237.86', '2,220.00', 2220, 0, '2021-05-12', '0514141338', 8984),
(393, 87, '1', '2,220.00', '237.86', '1,982.14', '237.86', '2,220.00', 2220, 0, '2021-05-14', '0514141432', 8985),
(394, 93, '4', '3,596.00', '385.29', '3,210.71', '385.29', '3,596.00', 3596, 0, '2021-05-14', '0517101533', 6696),
(395, 52, '1', '280.00', '30.00', '250.00', '30.00', '280.00', 280, 0, '2021-05-14', '0517101609', 6697),
(396, 53, '2', '3,514.00', '376.50', '3,137.50', '376.50', '3,514.00', 3514, 0, '2021-05-14', '0517101703', 6698),
(397, 21, '2', '1,874.00', '200.79', '1,673.21', '200.79', '1,874.00', 1874, 0, '2021-05-14', '0517101743', 6699),
(398, 85, '3', '2,093.00', '224.25', '1,868.75', '224.25', '2,093.00', 2093, 0, '2021-05-14', '0517102549', 6700),
(399, 84, '2', '488.00', '52.29', '435.71', '52.29', '488.00', 488, 0, '2021-05-14', '0517102654', 6751),
(400, 94, '1', '334.00', '35.79', '298.21', '35.79', '334.00', 334, 0, '2021-05-14', '0517102746', 6752),
(401, 95, '1', '462.00', '49.50', '412.50', '49.50', '462.00', 462, 0, '2021-05-14', '0517102859', 6753),
(402, 41, '2', '1,282.00', '137.36', '1,144.64', '137.36', '1,282.00', 1282, 0, '2021-05-14', '0517102943', 6754),
(403, 43, '5', '6,713.00', '719.25', '5,993.75', '719.25', '6,713.00', 6713, 0, '2021-05-14', '0517103522', 6755),
(404, 96, '2', '1,404.00', '150.43', '1,253.57', '150.43', '1,404.00', 1404, 0, '2021-05-14', '0517103622', 6756),
(405, 44, '5', '9,845.00', '1,054.82', '8,790.18', '1,054.82', '9,845.00', 9845, 0, '2021-05-14', '0517103842', 6757),
(406, 57, '5', '2,477.00', '265.39', '2,211.61', '265.39', '2,477.00', 2477, 0, '2021-05-14', '0517104034', 6758),
(407, 98, '3', '1,219.00', '130.61', '1,088.39', '130.61', '1,219.00', 1219, 0, '2021-05-14', '0517104207', 6759),
(408, 98, '1', '280.00', '30.00', '250.00', '30.00', '280.00', 280, 0, '2021-05-14', '0517104236', 6760),
(409, 77, '1', '144.00', '15.43', '128.57', '15.43', '144.00', 144, 0, '2021-05-14', '0517104827', 6650),
(410, 27, '4', '2,348.50', '251.63', '2,096.88', '251.63', '2,348.50', 2349, 0, '2021-05-14', '0517105024', 6702),
(411, 27, '2', '1,331.00', '142.61', '1,188.39', '142.61', '1,331.00', 1331, 0, '2021-05-14', '0517105108', 6703),
(412, 99, '3', '1,132.00', '121.29', '1,010.71', '121.29', '1,132.00', 1132, 0, '2021-05-14', '0517105258', 6704),
(413, 1, '1', '288.00', '30.86', '257.14', '30.86', '288.00', 288, 0, '2021-05-14', '0517105335', 6705),
(414, 1, '1', '400.00', '42.86', '357.14', '42.86', '400.00', 400, 0, '2021-05-14', '0517105413', 6706),
(415, 1, '1', '327.00', '35.04', '291.96', '35.04', '327.00', 327, 0, '2021-05-14', '0517105450', 6707),
(416, 1, '1', '75.00', '8.04', '66.96', '8.04', '75.00', 75, 0, '2021-05-14', '0517105522', 6708),
(417, 54, '4', '1,780.00', '190.71', '1,589.29', '190.71', '1,780.00', 1780, 0, '2021-05-15', '0517110836', 6761),
(418, 23, '2', '1,680.00', '180.00', '1,500.00', '180.00', '1,680.00', 1680, 0, '2021-05-15', '0517110925', 6762),
(419, 100, '2', '2,968.00', '318.00', '2,650.00', '318.00', '2,968.00', 2968, 0, '2021-05-15', '0517111149', 6764),
(420, 66, '4', '3,263.00', '349.61', '2,913.39', '349.61', '3,263.00', 3263, 0, '2021-05-15', '0517111254', 6765),
(421, 101, '2', '488.00', '52.29', '435.71', '52.29', '488.00', 488, 0, '2021-05-15', '0517111404', 6766),
(422, 102, '3', '856.00', '91.71', '764.29', '91.71', '856.00', 856, 0, '2021-05-15', '0517111550', 6767),
(423, 102, '1', '184.00', '19.71', '164.29', '19.71', '184.00', 184, 0, '2021-05-15', '0517112138', 6768),
(424, 68, '1', '334.00', '35.79', '298.21', '35.79', '334.00', 334, 0, '2021-05-15', '0517112206', 6769),
(425, 65, '3', '1,023.00', '109.61', '913.39', '109.61', '1,023.00', 1023, 0, '2021-05-15', '0517112302', 6770),
(426, 64, '2', '642.00', '68.79', '573.21', '68.79', '642.00', 642, 0, '2021-05-15', '0517112333', 6771),
(427, 22, '1', '1,575.00', '168.75', '1,406.25', '168.75', '1,575.00', 1575, 0, '2021-05-15', '0517112413', 6772),
(428, 22, '2', '709.00', '75.96', '633.04', '75.96', '709.00', 709, 0, '2021-05-15', '0517112454', 6773),
(429, 103, '1', '1,060.00', '113.57', '946.43', '113.57', '1,060.00', 1060, 0, '2021-05-15', '0517112603', 6774),
(430, 25, '3', '969.00', '103.82', '865.18', '103.82', '969.00', 969, 0, '2021-05-15', '0517112641', 6775),
(431, 104, '4', '5,396.00', '578.14', '4,817.86', '578.14', '5,396.00', 5396, 0, '2021-05-15', '0517112911', 6776),
(432, 1, '2', '543.00', '58.18', '484.82', '58.18', '543.00', 543, 0, '2021-05-15', '0517114427', 6709),
(433, 1, '1', '144.00', '15.43', '128.57', '15.43', '144.00', 144, 0, '2021-05-15', '0517114502', 6710),
(434, 48, '1', '184.00', '19.71', '164.29', '19.71', '184.00', 184, 0, '2021-05-15', '0517114605', 6715),
(435, 1, '1', '525.00', '56.25', '468.75', '56.25', '525.00', 525, 0, '2021-05-15', '0517114649', 6720),
(436, 87, '1', '2,220.00', '237.86', '1,982.14', '237.86', '2,220.00', 2220, 0, '2021-05-15', '0517132426', 8986),
(437, 105, '1', '1,180.00', '126.43', '1,053.57', '126.43', '1,180.00', 1180, 0, '2021-05-15', '0517132546', 8987),
(438, 75, '2', '942.00', '100.93', '841.07', '100.93', '942.00', 942, 0, '2021-05-17', '0518103942', 6723),
(439, 106, '3', '1,955.00', '209.46', '1,745.54', '209.46', '1,955.00', 1955, 0, '2021-05-17', '0518104322', 6724),
(440, 107, '1', '720.00', '77.14', '642.86', '77.14', '720.00', 720, 0, '2021-05-17', '0518104427', 6725),
(441, 77, '1', '144.00', '15.43', '128.57', '15.43', '144.00', 144, 0, '2021-05-17', '0518104501', 6726),
(442, 108, '1', '2,120.00', '227.14', '1,892.86', '227.14', '2,120.00', 2120, 0, '2021-05-17', '0518104658', 6729),
(443, 63, '1', '334.00', '35.79', '298.21', '35.79', '334.00', 334, 0, '2021-05-18', '0518152908', 6777),
(444, 109, '1', '308.00', '33.00', '275.00', '33.00', '308.00', 308, 0, '2021-05-18', '0518153012', 6778),
(445, 19, '6', '21,624.00', '2,316.86', '19,307.14', '2,316.86', '21,624.00', 21624, 0, '2021-05-18', '0518153152', 6779),
(446, 110, '1', '154.00', '16.50', '137.50', '16.50', '154.00', 154, 0, '2021-05-18', '0518153257', 6780),
(447, 111, '2', '864.00', '92.57', '771.43', '92.57', '864.00', 864, 0, '2021-05-18', '0518153420', 6781),
(448, 111, '1', '154.00', '16.50', '137.50', '16.50', '154.00', 154, 0, '2021-05-18', '0518153504', 6782),
(449, 20, '1', '334.00', '35.79', '298.21', '35.79', '334.00', 334, 0, '2021-05-18', '0518153538', 6783),
(450, 21, '4', '1,543.00', '165.32', '1,377.68', '165.32', '1,543.00', 1543, 0, '2021-05-18', '0518153639', 6784),
(451, 22, '4', '4,389.00', '470.25', '3,918.75', '470.25', '4,389.00', 4389, 0, '2021-05-18', '0518162317', 6785),
(452, 82, '4', '1,919.00', '205.61', '1,713.39', '205.61', '1,919.00', 1919, 0, '2021-05-18', '0518162443', 6786),
(453, 24, '1', '668.00', '71.57', '596.43', '71.57', '668.00', 668, 0, '2021-05-18', '0518162532', 6787),
(454, 62, '1', '308.00', '33.00', '275.00', '33.00', '308.00', 308, 0, '2021-05-18', '0518162557', 6788),
(455, 112, '5', '2,133.00', '228.54', '1,904.46', '228.54', '2,133.00', 2133, 0, '2021-05-18', '0518162726', 6789),
(456, 1, '1', '288.00', '30.86', '257.14', '30.86', '288.00', 288, 0, '2021-05-18', '052295453', 6733),
(457, 1, '1', '20.00', '2.14', '17.86', '2.14', '20.00', 20, 0, '2021-05-18', '052295523', 6735),
(458, 46, '2', '414.00', '44.36', '369.64', '44.36', '414.00', 414, 0, '2021-05-18', '052295709', 6736),
(459, 47, '1', '1,130.00', '121.07', '1,008.93', '121.07', '1,130.00', 1130, 0, '2021-05-18', '052295825', 6738),
(460, 113, '1', '75.00', '8.04', '66.96', '8.04', '75.00', 75, 0, '2021-05-18', '052295910', 6739),
(461, 1, '2', '1,155.00', '123.75', '1,031.25', '123.75', '1,155.00', 1155, 0, '2021-05-19', '0522100110', 6740),
(462, 114, '1', '144.00', '15.43', '128.57', '15.43', '144.00', 144, 0, '2021-05-19', '0522100217', 6741),
(463, 70, '1', '216.00', '23.14', '192.86', '23.14', '216.00', 216, 0, '2021-05-19', '0522100354', 6742),
(464, 1, '2', '615.00', '65.89', '549.11', '65.89', '615.00', 615, 0, '2021-05-20', '0522100628', 6744),
(465, 1, '1', '288.00', '30.86', '257.14', '30.86', '288.00', 288, 0, '2021-05-20', '0522100700', 6745),
(466, 1, '1', '20.00', '2.14', '17.86', '2.14', '20.00', 20, 0, '2021-05-20', '0522100721', 6746),
(467, 47, '1', '25.00', '2.68', '22.32', '2.68', '25.00', 25, 0, '2021-05-20', '0522100748', 6748),
(468, 47, '1', '150.00', '16.07', '133.93', '16.07', '150.00', 150, 0, '2021-05-20', '0522100955', 6749),
(469, 116, '3', '1,023.00', '109.61', '913.39', '109.61', '1,023.00', 1023, 0, '2021-05-21', '0522102016', 6791),
(470, 63, '2', '488.00', '52.29', '435.71', '52.29', '488.00', 488, 0, '2021-05-21', '0522102103', 6790),
(471, 34, '4', '3,220.00', '345.00', '2,875.00', '345.00', '3,220.00', 3220, 0, '2021-05-21', '0522102200', 6792),
(472, 33, '2', '488.00', '52.29', '435.71', '52.29', '488.00', 488, 0, '2021-05-21', '0522102235', 6793),
(473, 104, '6', '3,543.00', '379.61', '3,163.39', '379.61', '3,543.00', 3543, 0, '2021-05-21', '0522102348', 6794),
(474, 104, '1', '840.00', '90.00', '750.00', '90.00', '840.00', 840, 0, '2021-05-21', '0522102417', 6795),
(475, 117, '2', '822.00', '88.07', '733.93', '88.07', '822.00', 822, 0, '2021-05-21', '0522102513', 6796),
(476, 20, '2', '642.00', '68.79', '573.21', '68.79', '642.00', 642, 0, '2021-05-21', '0522102553', 6797),
(477, 21, '2', '414.00', '44.36', '369.64', '44.36', '414.00', 414, 0, '2021-05-21', '0522102626', 6798),
(478, 22, '3', '1,582.00', '169.50', '1,412.50', '169.50', '1,582.00', 1582, 0, '2021-05-21', '0522102711', 6799),
(479, 82, '1', '1,315.00', '140.89', '1,174.11', '140.89', '1,315.00', 1315, 0, '2021-05-21', '0522102736', 6800),
(480, 118, '1', '2,310.00', '247.50', '2,062.50', '247.50', '2,310.00', 2310, 0, '2021-05-21', '0522102822', 6801),
(481, 25, '3', '1,009.00', '108.11', '900.89', '108.11', '1,009.00', 1009, 0, '2021-05-21', '0522102932', 6802),
(482, 36, '5', '3,275.00', '350.89', '2,924.11', '350.89', '3,275.00', 3275, 0, '2021-05-21', '0522103110', 6803),
(483, 37, '4', '1,548.00', '165.86', '1,382.14', '165.86', '1,548.00', 1548, 0, '2021-05-21', '0522103201', 6804),
(484, 38, '4', '2,715.00', '290.89', '2,424.11', '290.89', '2,715.00', 2715, 0, '2021-05-21', '0522103321', 6805),
(485, 39, '5', '1,654.00', '177.21', '1,476.79', '177.21', '1,654.00', 1654, 0, '2021-05-21', '0522103430', 6806),
(486, 39, '1', '280.00', '30.00', '250.00', '30.00', '280.00', 280, 0, '2021-05-21', '0522103456', 6807),
(487, 119, '5', '2,554.00', '273.64', '2,280.36', '273.64', '2,554.00', 2554, 0, '2021-05-21', '0522103846', 6808),
(488, 40, '2', '1,282.00', '137.36', '1,144.64', '137.36', '1,282.00', 1282, 0, '2021-05-21', '0522103935', 6809),
(489, 40, '2', '1,060.00', '113.57', '946.43', '113.57', '1,060.00', 1060, 0, '2021-05-21', '0522104024', 6810),
(490, 40, '1', '424.00', '45.43', '378.57', '45.43', '424.00', 424, 0, '2021-05-21', '0522104050', 6811),
(491, 41, '1', '2,650.00', '283.93', '2,366.07', '283.93', '2,650.00', 2650, 0, '2021-05-21', '0522104129', 6812),
(492, 42, '2', '2,406.00', '257.79', '2,148.21', '257.79', '2,406.00', 2406, 0, '2021-05-21', '0522104215', 6813),
(493, 43, '3', '3,460.00', '370.71', '3,089.29', '370.71', '3,460.00', 3460, 0, '2021-05-21', '0522104320', 6814),
(494, 77, '1', '1,130.00', '121.07', '1,008.93', '121.07', '1,130.00', 1130, 0, '2021-05-21', '0522105609', 6851),
(495, 46, '2', '468.00', '50.14', '417.86', '50.14', '468.00', 468, 0, '2021-05-21', '0522105743', 6858),
(496, 70, '1', '216.00', '23.14', '192.86', '23.14', '216.00', 216, 0, '2021-05-21', '0522105836', 6859),
(497, 1, '1', '2,120.00', '227.14', '1,892.86', '227.14', '2,120.00', 2120, 0, '2021-05-21', '0522110001', 6860),
(498, 77, '1', '150.00', '16.07', '133.93', '16.07', '150.00', 150, 0, '2021-05-21', '0522110055', 6868),
(499, 53, '4', '2,592.00', '277.71', '2,314.29', '277.71', '2,592.00', 2592, 0, '2021-05-22', '0524105421', 6815),
(500, 120, '1', '560.00', '60.00', '500.00', '60.00', '560.00', 560, 0, '2021-05-22', '0524105542', 6816),
(501, 121, '1', '462.00', '49.50', '412.50', '49.50', '462.00', 462, 0, '2021-05-22', '0524105650', 6817),
(502, 122, '3', '1,712.00', '183.43', '1,528.57', '183.43', '1,712.00', 1712, 0, '2021-05-22', '0524105817', 6818),
(503, 123, '2', '1,696.00', '181.71', '1,514.29', '181.71', '1,696.00', 1696, 0, '2021-05-22', '0524105919', 6819),
(504, 124, '1', '5,300.00', '567.86', '4,732.14', '567.86', '5,300.00', 5300, 0, '2021-05-22', '0524110026', 6820),
(505, 125, '2', '488.00', '52.29', '435.71', '52.29', '488.00', 488, 0, '2021-05-22', '0524110102', 6821),
(506, 92, '2', '3,210.00', '343.93', '2,866.07', '343.93', '3,210.00', 3210, 0, '2021-05-22', '0524110213', 6822),
(507, 66, '4', '2,902.00', '310.93', '2,591.07', '310.93', '2,902.00', 2902, 0, '2021-05-22', '0524110310', 6823),
(508, 102, '2', '1,394.00', '149.36', '1,244.64', '149.36', '1,394.00', 1394, 0, '2021-05-22', '0524110354', 6824),
(509, 21, '3', '1,524.00', '163.29', '1,360.71', '163.29', '1,524.00', 1524, 0, '2021-05-22', '0524110434', 6825),
(510, 44, '4', '2,900.00', '310.71', '2,589.29', '310.71', '2,900.00', 2900, 0, '2021-05-22', '0524110534', 6826),
(511, 43, '2', '976.00', '104.57', '871.43', '104.57', '976.00', 976, 0, '2021-05-22', '0524110608', 6827),
(512, 122, '3', '768.00', '82.29', '685.71', '82.29', '768.00', 768, 0, '2021-05-22', '0524110653', 6828),
(513, 57, '2', '976.00', '104.57', '871.43', '104.57', '976.00', 976, 0, '2021-05-22', '0524110722', 6829),
(514, 126, '2', '488.00', '52.29', '435.71', '52.29', '488.00', 488, 0, '2021-05-22', '0524110803', 6830),
(515, 98, '2', '474.00', '50.79', '423.21', '50.79', '474.00', 474, 0, '2021-05-22', '0524110835', 6831),
(516, 1, '2', '942.00', '100.93', '841.07', '100.93', '942.00', 942, 0, '2021-05-22', '0524111918', 6869),
(517, 99, '5', '3,108.00', '333.00', '2,775.00', '333.00', '3,108.00', 3108, 0, '2021-05-22', '0524112629', 6870),
(518, 127, '1', '184.00', '19.71', '164.29', '19.71', '184.00', 184, 0, '2021-05-22', '0524112729', 6870),
(519, 49, '1', '75.00', '8.04', '66.96', '8.04', '75.00', 75, 0, '2021-05-22', '0524112902', 6874),
(520, 19, '5', '23,625.00', '2,531.25', '21,093.75', '2,531.25', '23,625.00', 23625, 0, '2021-05-24', '0524153009', 6832),
(521, 22, '2', '1,787.00', '191.46', '1,595.54', '191.46', '1,787.00', 1787, 0, '2021-05-24', '0524153214', 6833),
(522, 82, '2', '796.00', '85.29', '710.71', '85.29', '796.00', 796, 0, '2021-05-24', '0524153456', 6834),
(523, 106, '1', '668.00', '71.57', '596.43', '71.57', '668.00', 668, 0, '2021-05-24', '0524153603', 6835),
(524, 128, '1', '668.00', '71.57', '596.43', '71.57', '668.00', 668, 0, '2021-05-24', '0526114841', 0),
(525, 129, '1', '50.00', '5.36', '44.64', '5.36', '50.00', 50, 0, '2021-05-24', '0526115224', 6875),
(526, 130, '1', '500.00', '53.57', '446.43', '53.57', '500.00', 500, 0, '2021-05-24', '0526115310', 6876),
(527, 70, '1', '144.00', '15.43', '128.57', '15.43', '144.00', 144, 0, '2021-05-24', '0526115349', 6877),
(528, 46, '2', '468.00', '50.14', '417.86', '50.14', '468.00', 468, 0, '2021-05-24', '0526115455', 6878),
(529, 131, '1', '184.00', '19.71', '164.29', '19.71', '184.00', 184, 0, '2021-05-24', '0526115538', 6883),
(530, 1, '1', '144.00', '15.43', '128.57', '15.43', '144.00', 144, 0, '2021-05-25', '0526115658', 6884),
(531, 46, '1', '144.00', '15.43', '128.57', '15.43', '144.00', 144, 0, '2021-05-25', '0526115723', 6885),
(532, 132, '2', '120.00', '12.86', '107.14', '12.86', '120.00', 120, 0, '2021-05-25', '0526115801', 6889),
(533, 58, '1', '184.00', '19.71', '164.29', '19.71', '184.00', 184, 0, '2021-05-25', '0526115821', 6890),
(534, 25, '3', '768.00', '82.29', '685.71', '82.29', '768.00', 768, 0, '2021-05-26', '0527103307', 6836),
(535, 24, '5', '2,183.00', '233.89', '1,949.11', '233.89', '2,183.00', 2183, 0, '2021-05-26', '0527103638', 6837),
(536, 133, '2', '371.00', '39.75', '331.25', '39.75', '371.00', 371, 0, '2021-05-26', '0527103917', 6838),
(537, 21, '2', '833.00', '89.25', '743.75', '89.25', '833.00', 833, 0, '2021-05-26', '0527104309', 6839),
(538, 21, '2', '742.00', '79.50', '662.50', '79.50', '742.00', 742, 0, '2021-05-26', '0527104419', 6840),
(539, 20, '2', '488.00', '52.29', '435.71', '52.29', '488.00', 488, 0, '2021-05-26', '0527104450', 6841),
(540, 68, '1', '154.00', '16.50', '137.50', '16.50', '154.00', 154, 0, '2021-05-26', '0527104818', 6842),
(541, 134, '1', '3,006.00', '322.07', '2,683.93', '322.07', '3,006.00', 3006, 0, '2021-05-26', '0527104905', 6843),
(542, 34, '1', '668.00', '71.57', '596.43', '71.57', '668.00', 668, 0, '2021-05-26', '0527111613', 6844),
(543, 33, '2', '2,062.00', '220.93', '1,841.07', '220.93', '2,062.00', 2062, 0, '2021-05-26', '0527111727', 6845),
(544, 104, '4', '2,218.00', '237.64', '1,980.36', '237.64', '2,218.00', 2218, 0, '2021-05-26', '0527112436', 6846),
(545, 35, '4', '2,367.00', '253.61', '2,113.39', '253.61', '2,367.00', 2367, 0, '2021-05-26', '0527112645', 6847),
(546, 31, '4', '2,603.00', '278.89', '2,324.11', '278.89', '2,603.00', 2603, 0, '2021-05-26', '0527112844', 6848),
(547, 55, '4', '2,303.00', '246.75', '2,056.25', '246.75', '2,303.00', 2303, 0, '2021-05-26', '0527113100', 6849),
(548, 116, '3', '551.00', '59.04', '491.96', '59.04', '551.00', 551, 0, '2021-05-26', '0527113228', 6850),
(549, 37, '2', '869.00', '93.11', '775.89', '93.11', '869.00', 869, 0, '2021-05-26', '0527113258', 6901),
(550, 36, '6', '1,962.00', '210.21', '1,751.79', '210.21', '1,962.00', 1962, 0, '2021-05-26', '0527113420', 6902),
(551, 135, '1', '167.00', '17.89', '149.11', '17.89', '167.00', 167, 0, '2021-05-26', '0527113455', 6903),
(552, 38, '4', '4,188.00', '448.71', '3,739.29', '448.71', '4,188.00', 4188, 0, '2021-05-26', '0527113603', 6904),
(553, 39, '1', '840.00', '90.00', '750.00', '90.00', '840.00', 840, 0, '2021-05-26', '0527113630', 6905),
(554, 86, '2', '973.00', '104.25', '868.75', '104.25', '973.00', 973, 0, '2021-05-26', '0527113726', 6906),
(555, 24, '1', '106.00', '11.36', '94.64', '11.36', '106.00', 106, 0, '2021-05-26', '0527145721', 6837),
(556, 136, '1', '340.00', '36.43', '303.57', '36.43', '340.00', 340, 0, '2021-05-26', '0527151301', 6891),
(557, 1, '2', '634.50', '67.98', '566.52', '67.98', '634.50', 635, 0, '2021-05-26', '0527151356', 6894),
(558, 1, '1', '654.00', '70.07', '583.93', '70.07', '654.00', 654, 0, '2021-05-26', '0527151434', 6896),
(559, 1, '1', '270.00', '28.93', '241.07', '28.93', '270.00', 270, 0, '2021-05-26', '0527151535', 6897),
(560, 89, '1', '368.00', '39.43', '328.57', '39.43', '368.00', 368, 0, '2021-05-26', '0527151605', 6898),
(561, 49, '1', '288.00', '30.86', '257.14', '30.86', '288.00', 288, 0, '2021-05-26', '0527151643', 6899),
(562, 137, '1', '184.00', '19.71', '164.29', '19.71', '184.00', 184, 0, '2021-05-26', '052995747', 0),
(563, 70, '1', '216.00', '23.14', '192.86', '23.14', '216.00', 216, 0, '2021-05-27', '0529100828', 6958),
(564, 138, '1', '225.00', '24.11', '200.89', '24.11', '225.00', 225, 0, '2021-05-27', '0529100921', 6959);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `ID` int(11) NOT NULL,
  `PRODUCT_ID` varchar(20) NOT NULL,
  `TRANS_D_ID` varchar(250) NOT NULL,
  `PRODUCTS` varchar(250) NOT NULL,
  `QTY` double NOT NULL,
  `PRICE` varchar(250) NOT NULL,
  `EMPLOYEE` varchar(250) NOT NULL,
  `ROLE` varchar(250) NOT NULL,
  `CASH` double NOT NULL,
  `CREDIT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`ID`, `PRODUCT_ID`, `TRANS_D_ID`, `PRODUCTS`, `QTY`, `PRICE`, `EMPLOYEE`, `ROLE`, `CASH`, `CREDIT`) VALUES
(333, '411', '0507102458', 'All 8oz 8oz', 40, '154', 'Aljohn', 'IT Technician', 40, 0),
(334, '419', '0507102458', 'Red Horse 1000ml', 36, '521', 'Aljohn', 'IT Technician', 36, 0),
(335, '422', '0507102458', 'Vino Kulafu 700ML', 2, '840', 'Aljohn', 'IT Technician', 2, 0),
(336, '423', '0507102458', 'Vino Kulafu 350ML', 2, '840', 'Aljohn', 'IT Technician', 2, 0),
(337, '412', '0507102458', 'All Litro 1 Liter', 5, '334', 'Aljohn', 'IT Technician', 5, 0),
(338, '412', '0507102525', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(339, '412', '0507102553', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(340, '417', '0507102553', 'Pilsen Litro 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(341, '420', '0507102636', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(342, '412', '0507102636', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(343, '412', '0507102714', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(344, '414', '0507102714', 'All Cobra yellow', 2, '280', 'Aljohn', 'IT Technician', 2, 0),
(345, '412', '0507102746', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(346, '414', '0507102746', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(347, '411', '0507102746', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(348, '415', '0507102746', 'All Swakto swakto', 1, '106', 'Aljohn', 'IT Technician', 1, 0),
(349, '415', '0507102814', 'All Swakto swakto', 2, '106', 'Aljohn', 'IT Technician', 2, 0),
(350, '412', '0507102814', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(351, '412', '0507102835', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(352, '414', '0507102835', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(353, '412', '0507102935', 'All Litro 1 Liter', 3, '334', 'Aljohn', 'IT Technician', 3, 0),
(354, '411', '0507102935', 'All 8oz 8oz', 5, '154', 'Aljohn', 'IT Technician', 5, 0),
(355, '413', '0507103021', 'All 1.5  1.5 Liter', 1, '665', 'Aljohn', 'IT Technician', 1, 0),
(356, '411', '0507103243', 'All 8oz 8oz', 1, '144', 'Aljohn', 'IT Technician', 1, 0),
(357, '430', '0507103319', 'PEPC Gas blue', 2, '20', 'Aljohn', 'IT Technician', 2, 0),
(358, '415', '0507103347', 'All Swakto swakto', 1, '100', 'Aljohn', 'IT Technician', 1, 0),
(359, '430', '0507103411', 'PEPC Gas blue', 10, '20', 'Aljohn', 'IT Technician', 10, 0),
(360, '411', '0507103614', 'All 8oz 8oz', 1, '144', 'Aljohn', 'IT Technician', 1, 0),
(361, '412', '0507103614', 'All Litro 1 Liter', 1.5, '327', 'Aljohn', 'IT Technician', 1.5, 0),
(362, '411', '0507103723', 'All 8oz 8oz', 0.5, '144', 'Aljohn', 'IT Technician', 0.5, 0),
(363, '419', '0507103810', 'Red Horse ', 3, '515', 'Aljohn', 'IT Technician', 3, 0),
(364, '411', '0507103842', 'All 8oz 8oz', 1, '144', 'Aljohn', 'IT Technician', 1, 0),
(365, '422', '0507113003', 'Vino Kulafu 700ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(366, '423', '0507113003', 'Vino Kulafu 350ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(367, '412', '0507113003', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(368, '419', '0507113003', 'Red Horse 1000ml', 2, '535', 'Aljohn', 'IT Technician', 2, 0),
(369, '415', '0507113003', 'All Swakto swakto', 1, '106', 'Aljohn', 'IT Technician', 1, 0),
(370, '419', '0507113038', 'Red Horse 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(371, '412', '0507113119', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(372, '412', '0507113151', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(373, '420', '0507113228', 'Red Horse 500ml', 3, '525', 'Aljohn', 'IT Technician', 3, 0),
(374, '411', '0507113228', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(375, '412', '0507113228', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(376, '412', '0507113252', 'All Litro 1 Liter', 8, '334', 'Aljohn', 'IT Technician', 8, 0),
(377, '417', '0507114114', 'Pilsen Litro 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(378, '412', '0507114114', 'All Litro 1 Liter', 2.5, '334', 'Aljohn', 'IT Technician', 2.5, 0),
(379, '411', '0507114114', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(380, '412', '0507114255', 'All Litro 1 Liter', 3, '334', 'Aljohn', 'IT Technician', 3, 0),
(381, '422', '0507114255', 'Vino Kulafu 700ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(382, '411', '0507114255', 'All 8oz 8oz', 8, '154', 'Aljohn', 'IT Technician', 8, 0),
(383, '425', '0507114255', 'Emperador Brandy 700ML', 1, '1315', 'Aljohn', 'IT Technician', 1, 0),
(384, '417', '0507114255', 'Pilsen Litro 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(385, '420', '0507114255', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(386, '411', '0507114455', 'All 8oz 8oz', 2, '154', 'Aljohn', 'IT Technician', 2, 0),
(387, '412', '0507114455', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(388, '423', '0507114455', 'Vino Kulafu 350ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(389, '417', '0507114520', 'Pilsen Litro 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(390, '412', '0507114557', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(391, '411', '0507114557', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(392, '412', '0507114659', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(393, '411', '0507114659', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(394, '420', '0507114659', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(395, '420', '0507114751', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(396, '417', '0507114751', 'Pilsen Litro 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(397, '411', '0507114751', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(398, '414', '0507114751', 'All Cobra yellow', 0.5, '280', 'Aljohn', 'IT Technician', 0.5, 0),
(399, '415', '0507114751', 'All Swakto swakto', 2, '106', 'Aljohn', 'IT Technician', 2, 0),
(400, '420', '0507114842', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(401, '411', '0507114842', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(402, '412', '0507114920', 'All Litro 1 Liter', 3, '334', 'Aljohn', 'IT Technician', 3, 0),
(403, '411', '0507114920', 'All 8oz 8oz', 3, '154', 'Aljohn', 'IT Technician', 3, 0),
(404, '422', '0507114920', 'Vino Kulafu 700ML', 2, '840', 'Aljohn', 'IT Technician', 2, 0),
(405, '417', '0507114949', 'Pilsen Litro 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(406, '414', '0507114949', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(407, '412', '0507115027', 'All Litro 1 Liter', 3, '334', 'Aljohn', 'IT Technician', 3, 0),
(408, '411', '0507115027', 'All 8oz 8oz', 5, '154', 'Aljohn', 'IT Technician', 5, 0),
(409, '412', '0507115103', 'All Litro 1 Liter', 4, '334', 'Aljohn', 'IT Technician', 4, 0),
(410, '422', '0507115103', 'Vino Kulafu 700ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(411, '412', '0507115150', 'All Litro 1 Liter', 6, '334', 'Aljohn', 'IT Technician', 6, 0),
(412, '420', '0507115150', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(413, '411', '0507115150', 'All 8oz 8oz', 3, '154', 'Aljohn', 'IT Technician', 3, 0),
(414, '422', '0507115243', 'Vino Kulafu 700ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(415, '423', '0507115243', 'Vino Kulafu 350ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(416, '420', '0507115243', 'Red Horse 500ml', 2, '525', 'Aljohn', 'IT Technician', 2, 0),
(417, '414', '0507115243', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(418, '411', '0507115243', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(419, '415', '0507115243', 'All Swakto swakto', 3, '106', 'Aljohn', 'IT Technician', 3, 0),
(420, '411', '0507115416', 'All 8oz 8oz', 5.5, '154', 'Aljohn', 'IT Technician', 5.5, 0),
(421, '417', '0507115416', 'Pilsen Litro 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(422, '414', '0507115416', 'All Cobra yellow', 0.5, '280', 'Aljohn', 'IT Technician', 0.5, 0),
(423, '414', '0507115442', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(424, '416', '0507115442', 'All Minute Maid Apple', 1, '85', 'Aljohn', 'IT Technician', 1, 0),
(425, '411', '0507115821', 'All 8oz 8oz', 1, '144', 'Aljohn', 'IT Technician', 1, 0),
(426, '430', '0507115840', 'PEPC Gas blue', 1, '20', 'Aljohn', 'IT Technician', 1, 0),
(427, '411', '0507115928', 'All 8oz 8oz', 2, '144', 'Aljohn', 'IT Technician', 2, 0),
(428, '426', '0507120137', 'Excellent 50KG', 1, '2200', 'Aljohn', 'IT Technician', 1, 0),
(429, '411', '0507140020', 'All 8oz 8oz', 1, '144', 'Aljohn', 'IT Technician', 1, 0),
(430, '411', '0507161613', 'All 8oz 8oz', 5, '154', 'Aljohn', 'IT Technician', 5, 0),
(431, '414', '0507161728', 'All Cobra yellow', 2, '280', 'Aljohn', 'IT Technician', 2, 0),
(432, '411', '0507161728', 'All 8oz 8oz', 2, '154', 'Aljohn', 'IT Technician', 2, 0),
(433, '412', '0507161728', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(434, '419', '0507161907', 'Red Horse 1000ml', 6, '530', 'Aljohn', 'IT Technician', 6, 0),
(435, '411', '0507161907', 'All 8oz 8oz', 6, '154', 'Aljohn', 'IT Technician', 6, 0),
(436, '412', '0507161907', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(437, '414', '0507161907', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(438, '413', '0507161907', 'All 1.5  1.5 Liter', 1, '665', 'Aljohn', 'IT Technician', 1, 0),
(439, '414', '0507162034', 'All Cobra yellow', 2, '280', 'Aljohn', 'IT Technician', 2, 0),
(440, '411', '0507162034', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(441, '420', '0507162034', 'Red Horse 500ml', 3, '525', 'Aljohn', 'IT Technician', 3, 0),
(442, '419', '0507162034', 'Red Horse 1000ml', 2, '535', 'Aljohn', 'IT Technician', 2, 0),
(443, '414', '0507162214', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(444, '419', '0507162214', 'Red Horse 1000ml', 1, '530', 'Aljohn', 'IT Technician', 1, 0),
(445, '419', '0507162305', 'Red Horse 1000ml', 1, '530', 'Aljohn', 'IT Technician', 1, 0),
(446, '420', '0507162305', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(447, '420', '0507162419', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(448, '412', '0507162419', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(449, '411', '0507162419', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(450, '419', '0507162515', 'Red Horse 1000ml', 5, '535', 'Aljohn', 'IT Technician', 5, 0),
(451, '415', '0507162515', 'All Swakto swakto', 3, '106', 'Aljohn', 'IT Technician', 3, 0),
(452, '419', '0507162601', 'Red Horse 1000ml', 6, '535', 'Aljohn', 'IT Technician', 6, 0),
(453, '412', '0507162659', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(454, '411', '0507162659', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(455, '414', '0507162738', 'All Cobra yellow', 2, '280', 'Aljohn', 'IT Technician', 2, 0),
(456, '412', '0507162738', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(457, '419', '0507162840', 'Red Horse 1000ml', 5, '535', 'Aljohn', 'IT Technician', 5, 0),
(458, '419', '0507162959', 'Red Horse 1000ml', 5, '525', 'Aljohn', 'IT Technician', 5, 0),
(459, '415', '0507162959', 'All Swakto swakto', 1, '106', 'Aljohn', 'IT Technician', 1, 0),
(460, '419', '0507163041', 'Red Horse 1000ml', 3, '535', 'Aljohn', 'IT Technician', 3, 0),
(461, '412', '0507163041', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(462, '412', '0507163116', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(463, '419', '0507163209', 'Red Horse 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(464, '411', '0507163209', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(465, '412', '0507163532', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(466, '411', '0507163532', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(467, '420', '0507163532', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(468, '419', '0507163532', 'Red Horse 1000ml', 2, '530', 'Aljohn', 'IT Technician', 2, 0),
(469, '430', '050890334', 'PEPC Gas blue', 1, '20', 'Aljohn', 'IT Technician', 1, 0),
(470, '438', '050892625', 'Primera Light 750ML', 2, '92', 'Aljohn', 'IT Technician', 2, 0),
(471, '430', '0508113946', 'PEPC Gas blue', 1, '20', 'Aljohn', 'IT Technician', 1, 0),
(472, '411', '0508114156', 'All 8oz 8oz', 3, '144', 'Aljohn', 'IT Technician', 3, 0),
(473, '420', '0508114156', 'Red Horse 500ml', 1, '530', 'Aljohn', 'IT Technician', 1, 0),
(474, '411', '0508114329', 'All 8oz 8oz', 3, '144', 'Aljohn', 'IT Technician', 3, 0),
(475, '419', '0508114455', 'Red Horse 1000ml', 1, '515', 'Aljohn', 'IT Technician', 1, 0),
(476, '438', '0508114537', 'Primera Light 750ML', 2, '92', 'Aljohn', 'IT Technician', 2, 0),
(477, '416', '0508162238', 'All Minute Maid Apple', 5, '85', 'Aljohn', 'IT Technician', 5, 0),
(478, '411', '0508162332', 'All 8oz 8oz', 5, '154', 'Aljohn', 'IT Technician', 5, 0),
(479, '411', '0508162648', 'All 8oz 8oz', 10, '154', 'Aljohn', 'IT Technician', 10, 0),
(480, '419', '0508162648', 'Red Horse 1000ml', 8, '521', 'Aljohn', 'IT Technician', 8, 0),
(481, '417', '0508162648', 'Pilsen Litro 1000ml', 1, '521', 'Aljohn', 'IT Technician', 1, 0),
(482, '421', '0508162648', 'Red Horse Stallion', 2, '775', 'Aljohn', 'IT Technician', 2, 0),
(483, '412', '0508162648', 'All Litro 1 Liter', 6, '334', 'Aljohn', 'IT Technician', 6, 0),
(484, '412', '0508162743', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(485, '411', '0508162743', 'All 8oz 8oz', 2, '154', 'Aljohn', 'IT Technician', 2, 0),
(486, '419', '0508162905', 'Red Horse 1000ml', 4, '535', 'Aljohn', 'IT Technician', 4, 0),
(487, '411', '0508162905', 'All 8oz 8oz', 2, '154', 'Aljohn', 'IT Technician', 2, 0),
(488, '412', '0508162905', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(489, '417', '0508163033', 'Pilsen Litro 1000ml', 5, '530', 'Aljohn', 'IT Technician', 5, 0),
(490, '419', '0508163033', 'Red Horse 1000ml', 5, '530', 'Aljohn', 'IT Technician', 5, 0),
(491, '414', '0508163033', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(492, '422', '0508163033', 'Vino Kulafu 700ML', 4, '840', 'Aljohn', 'IT Technician', 4, 0),
(493, '423', '0508163033', 'Vino Kulafu 350ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(494, '412', '0508163157', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(495, '419', '0508163157', 'Red Horse 1000ml', 3, '530', 'Aljohn', 'IT Technician', 3, 0),
(496, '411', '0508163157', 'All 8oz 8oz', 2, '154', 'Aljohn', 'IT Technician', 2, 0),
(497, '417', '0508163321', 'Pilsen Litro 1000ml', 2, '535', 'Aljohn', 'IT Technician', 2, 0),
(498, '412', '0508163321', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(499, '411', '0508163321', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(500, '412', '0508163422', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(501, '411', '0508163422', 'All 8oz 8oz', 2, '154', 'Aljohn', 'IT Technician', 2, 0),
(502, '414', '0508163422', 'All Cobra yellow', 2, '280', 'Aljohn', 'IT Technician', 2, 0),
(503, '414', '0508163455', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(504, '419', '0508163620', 'Red Horse 1000ml', 3, '535', 'Aljohn', 'IT Technician', 3, 0),
(505, '411', '0508163620', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(506, '412', '0508163620', 'All Litro 1 Liter', 3, '334', 'Aljohn', 'IT Technician', 3, 0),
(507, '414', '0508163620', 'All Cobra yellow', 2, '280', 'Aljohn', 'IT Technician', 2, 0),
(508, '419', '0508163823', 'Red Horse 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(509, '412', '0508163823', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(510, '412', '0508163850', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(511, '411', '0508163850', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(512, '423', '0508163913', 'Vino Kulafu 350ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(513, '417', '0508164038', 'Pilsen Litro 1000ml', 2, '535', 'Aljohn', 'IT Technician', 2, 0),
(514, '419', '0508164038', 'Red Horse 1000ml', 2, '535', 'Aljohn', 'IT Technician', 2, 0),
(515, '412', '0508164038', 'All Litro 1 Liter', 3, '334', 'Aljohn', 'IT Technician', 3, 0),
(516, '419', '0508164139', 'Red Horse 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(517, '412', '0508164139', 'All Litro 1 Liter', 1.5, '334', 'Aljohn', 'IT Technician', 1.5, 0),
(518, '411', '0508164139', 'All 8oz 8oz', 2, '154', 'Aljohn', 'IT Technician', 2, 0),
(519, '411', '051094525', 'All 8oz 8oz', 1, '144', 'Aljohn', 'IT Technician', 1, 0),
(520, '411', '051094607', 'All 8oz 8oz', 1, '144', 'Aljohn', 'IT Technician', 1, 0),
(521, '411', '051094733', 'All 8oz 8oz', 2, '144', 'Aljohn', 'IT Technician', 2, 0),
(522, '412', '051094733', 'All Litro 1 Liter', 0.5, '327', 'Aljohn', 'IT Technician', 0.5, 0),
(523, '412', '051095141', 'All Litro 1 Liter', 2, '327', 'Aljohn', 'IT Technician', 2, 0),
(524, '411', '051095141', 'All 8oz 8oz', 2, '144', 'Aljohn', 'IT Technician', 2, 0),
(525, '419', '051095141', 'Red Horse 1000ml', 3, '530', 'Aljohn', 'IT Technician', 3, 0),
(526, '420', '051095141', 'Red Horse 500ml', 1, '520', 'Aljohn', 'IT Technician', 1, 0),
(527, '419', '051095332', 'Red Horse 1000ml', 1, '515', 'Aljohn', 'IT Technician', 1, 0),
(528, '438', '051095529', 'Primera Light 750ML', 2, '92', 'Aljohn', 'IT Technician', 2, 0),
(529, '411', '051095620', 'All 8oz 8oz', 6, '144', 'Aljohn', 'IT Technician', 6, 0),
(530, '413', '0510100153', 'All 1.5  1.5 Liter', 3, '648', 'Aljohn', 'IT Technician', 3, 0),
(531, '418', '051280716', 'Pale Pilsen Small', 2, '755', 'Aljohn', 'IT Technician', 2, 0),
(532, '411', '051280716', 'All 8oz 8oz', 5, '144', 'Aljohn', 'IT Technician', 5, 0),
(533, '411', '051280849', 'All 8oz 8oz', 2, '144', 'Aljohn', 'IT Technician', 2, 0),
(534, '412', '051280849', 'All Litro 1 Liter', 2, '327', 'Aljohn', 'IT Technician', 2, 0),
(535, '430', '051280924', 'PEPC Gas blue', 1, '20', 'Aljohn', 'IT Technician', 1, 0),
(536, '411', '051281008', 'All 8oz 8oz', 1, '144', 'Aljohn', 'IT Technician', 1, 0),
(537, '411', '051281102', 'All 8oz 8oz', 4, '144', 'Aljohn', 'IT Technician', 4, 0),
(538, '412', '051281212', 'All Litro 1 Liter', 1.5, '327', 'Aljohn', 'IT Technician', 1.5, 0),
(539, '411', '051281212', 'All 8oz 8oz', 1, '144', 'Aljohn', 'IT Technician', 1, 0),
(540, '415', '051293605', 'All Swakto swakto', 1, '100', 'Aljohn', 'IT Technician', 1, 0),
(541, '411', '051293605', 'All 8oz 8oz', 1, '144', 'Aljohn', 'IT Technician', 1, 0),
(542, '419', '051293605', 'Red Horse 1000ml', 2, '520', 'Aljohn', 'IT Technician', 2, 0),
(543, '414', '051293605', 'All Cobra yellow', 1, '275', 'Aljohn', 'IT Technician', 1, 0),
(544, '412', '051293605', 'All Litro 1 Liter', 2, '327', 'Aljohn', 'IT Technician', 2, 0),
(545, '411', '051293639', 'All 8oz 8oz', 1, '144', 'Aljohn', 'IT Technician', 1, 0),
(546, '430', '051294346', 'PEPC Gas blue', 10, '20', 'Aljohn', 'IT Technician', 10, 0),
(547, '412', '051294610', 'All Litro 1 Liter', 3, '324', 'Aljohn', 'IT Technician', 3, 0),
(548, '426', '051294750', 'Excellent 50KG', 1, '2070', 'Aljohn', 'IT Technician', 1, 0),
(549, '429', '051294824', 'PEPC Gas green', 1, '25', 'Aljohn', 'IT Technician', 1, 0),
(550, '415', '051294928', 'All Swakto swakto', 2, '100', 'Aljohn', 'IT Technician', 2, 0),
(551, '411', '051295426', 'All 8oz 8oz', 1.5, '144', 'Aljohn', 'IT Technician', 1.5, 0),
(552, '430', '051295459', 'PEPC Gas blue', 1, '20', 'Aljohn', 'IT Technician', 1, 0),
(553, '416', '051295535', 'All Minute Maid Apple', 1, '75', 'Aljohn', 'IT Technician', 1, 0),
(554, '416', '051295610', 'All Minute Maid Apple', 1, '75', 'Aljohn', 'IT Technician', 1, 0),
(555, '416', '051482112', 'All Minute Maid Apple', 2, '75', 'Aljohn', 'IT Technician', 2, 0),
(556, '411', '051482229', 'All 8oz 8oz', 1, '144', 'Aljohn', 'IT Technician', 1, 0),
(557, '414', '051482229', 'All Cobra yellow', 1, '270', 'Aljohn', 'IT Technician', 1, 0),
(558, '430', '051482304', 'PEPC Gas blue', 1, '20', 'Aljohn', 'IT Technician', 1, 0),
(559, '430', '051482337', 'PEPC Gas blue', 6, '20', 'Aljohn', 'IT Technician', 6, 0),
(560, '411', '051494552', 'All 8oz 8oz', 10, '154', 'Aljohn', 'IT Technician', 10, 0),
(561, '412', '051494655', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(562, '419', '051494655', 'Red Horse 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(563, '423', '051494655', 'Vino Kulafu 350ML', 0.5, '840', 'Aljohn', 'IT Technician', 0.5, 0),
(564, '411', '051494655', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(565, '414', '051494655', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(566, '419', '051494754', 'Red Horse 1000ml', 2, '535', 'Aljohn', 'IT Technician', 2, 0),
(567, '411', '051494754', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(568, '412', '051494754', 'All Litro 1 Liter', 3, '334', 'Aljohn', 'IT Technician', 3, 0),
(569, '414', '051494754', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(570, '415', '051494754', 'All Swakto swakto', 1, '106', 'Aljohn', 'IT Technician', 1, 0),
(571, '419', '051494856', 'Red Horse 1000ml', 2, '535', 'Aljohn', 'IT Technician', 2, 0),
(572, '420', '051494856', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(573, '412', '051494856', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(574, '411', '051494856', 'All 8oz 8oz', 2, '154', 'Aljohn', 'IT Technician', 2, 0),
(575, '414', '051494856', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(576, '412', '051494946', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(577, '412', '051495027', 'All Litro 1 Liter', 3, '334', 'Aljohn', 'IT Technician', 3, 0),
(578, '419', '051495027', 'Red Horse 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(579, '411', '051495027', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(580, '419', '051495135', 'Red Horse 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(581, '412', '051495135', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(582, '419', '051495204', 'Red Horse 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(583, '412', '051495204', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(584, '411', '051495237', 'All 8oz 8oz', 3, '154', 'Aljohn', 'IT Technician', 3, 0),
(585, '412', '051495237', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(586, '419', '051495604', 'Red Horse 1000ml', 2, '535', 'Aljohn', 'IT Technician', 2, 0),
(587, '420', '051495630', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(588, '419', '051495742', 'Red Horse 1000ml', 2, '530', 'Aljohn', 'IT Technician', 2, 0),
(589, '414', '051495742', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(590, '411', '051495742', 'All 8oz 8oz', 2, '154', 'Aljohn', 'IT Technician', 2, 0),
(591, '423', '051495742', 'Vino Kulafu 350ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(592, '412', '0514100011', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(593, '411', '0514100011', 'All 8oz 8oz', 3, '154', 'Aljohn', 'IT Technician', 3, 0),
(594, '412', '0514100132', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(595, '411', '0514100132', 'All 8oz 8oz', 0.5, '154', 'Aljohn', 'IT Technician', 0.5, 0),
(596, '420', '0514100132', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(597, '415', '0514100132', 'All Swakto swakto', 3, '106', 'Aljohn', 'IT Technician', 3, 0),
(598, '422', '0514100132', 'Vino Kulafu 700ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(599, '414', '0514100132', 'All Cobra yellow', 0.5, '280', 'Aljohn', 'IT Technician', 0.5, 0),
(600, '412', '0514100258', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(601, '411', '0514100258', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(602, '422', '0514100442', 'Vino Kulafu 700ML', 2, '840', 'Aljohn', 'IT Technician', 2, 0),
(603, '423', '0514100442', 'Vino Kulafu 350ML', 0.5, '840', 'Aljohn', 'IT Technician', 0.5, 0),
(604, '419', '0514100442', 'Red Horse 1000ml', 10, '530', 'Aljohn', 'IT Technician', 10, 0),
(605, '420', '0514100442', 'Red Horse 500ml', 2, '525', 'Aljohn', 'IT Technician', 2, 0),
(606, '412', '0514100442', 'All Litro 1 Liter', 3, '334', 'Aljohn', 'IT Technician', 3, 0),
(607, '411', '0514100442', 'All 8oz 8oz', 4, '154', 'Aljohn', 'IT Technician', 4, 0),
(608, '414', '0514100442', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(609, '419', '0514100544', 'Red Horse 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(610, '411', '0514100544', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(611, '422', '0514100544', 'Vino Kulafu 700ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(612, '419', '0514100641', 'Red Horse 1000ml', 2, '535', 'Aljohn', 'IT Technician', 2, 0),
(613, '412', '0514100641', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(614, '411', '0514100641', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(615, '412', '0514100719', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(616, '414', '0514100719', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(617, '411', '0514100719', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(618, '419', '0514100830', 'Red Horse 1000ml', 3, '535', 'Aljohn', 'IT Technician', 3, 0),
(619, '412', '0514100830', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(620, '411', '0514100830', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(621, '411', '0514100921', 'All 8oz 8oz', 3, '154', 'Aljohn', 'IT Technician', 3, 0),
(622, '440', '0514134858', 'Pilapil 50KG', 1, '2020', 'Aljohn', 'IT Technician', 0, 1),
(623, '428', '0514135604', 'Lion Ivory 25KG', 1, '1180', 'Aljohn', 'IT Technician', 0, 1),
(624, '427', '0514135919', 'Lion Ivory 50KG', 1, '2300', 'Aljohn', 'IT Technician', 0, 1),
(625, '428', '0514140010', 'Lion Ivory 25KG', 1, '1180', 'Aljohn', 'IT Technician', 0, 1),
(626, '428', '0514140108', 'Lion Ivory 25KG', 1, '1180', 'Aljohn', 'IT Technician', 0, 1),
(627, '426', '0514140157', 'Excellent 50KG', 1, '2220', 'Aljohn', 'IT Technician', 0, 1),
(628, '426', '0514140252', 'Excellent 50KG', 1, '2220', 'Aljohn', 'IT Technician', 0, 1),
(629, '426', '0514140343', 'Excellent 50KG', 1, '2220', 'Aljohn', 'IT Technician', 0, 1),
(630, '426', '0514140453', 'Excellent 50KG', 1, '2220', 'Aljohn', 'IT Technician', 0, 1),
(631, '426', '0514140642', 'Excellent 50KG', 2, '2220', 'Aljohn', 'IT Technician', 0, 2),
(632, '427', '0514140727', 'Lion Ivory 50KG', 1, '2300', 'Aljohn', 'IT Technician', 0, 1),
(633, '426', '0514140810', 'Excellent 50KG', 1, '2220', 'Aljohn', 'IT Technician', 0, 1),
(634, '426', '0514140851', 'Excellent 50KG', 1, '2220', 'Aljohn', 'IT Technician', 0, 1),
(635, '426', '0514140941', 'Excellent 50KG', 1, '2220', 'Aljohn', 'IT Technician', 0, 1),
(636, '426', '0514141302', 'Excellent 50KG', 1, '2250', 'Aljohn', 'IT Technician', 0, 1),
(637, '426', '0514141338', 'Excellent 50KG', 1, '2220', 'Aljohn', 'IT Technician', 0, 1),
(638, '426', '0514141432', 'Excellent 50KG', 1, '2220', 'Aljohn', 'IT Technician', 0, 1),
(639, '412', '0517101533', 'All Litro 1 Liter', 1.5, '334', 'Aljohn', 'IT Technician', 1.5, 0),
(640, '419', '0517101533', 'Red Horse 1000ml', 3, '530', 'Aljohn', 'IT Technician', 3, 0),
(641, '422', '0517101533', 'Vino Kulafu 700ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(642, '413', '0517101533', 'All 1.5  1.5 Liter', 1, '665', 'Aljohn', 'IT Technician', 1, 0),
(643, '414', '0517101609', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(644, '419', '0517101703', 'Red Horse 1000ml', 6, '530', 'Aljohn', 'IT Technician', 6, 0),
(645, '412', '0517101703', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(646, '411', '0517101743', 'All 8oz 8oz', 10, '154', 'Aljohn', 'IT Technician', 10, 0),
(647, '412', '0517101743', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(648, '417', '0517102549', 'Pilsen Litro 1000ml', 3, '535', 'Aljohn', 'IT Technician', 3, 0),
(649, '412', '0517102549', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(650, '411', '0517102549', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(651, '412', '0517102654', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(652, '411', '0517102654', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(653, '412', '0517102746', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(654, '411', '0517102859', 'All 8oz 8oz', 3, '154', 'Aljohn', 'IT Technician', 3, 0),
(655, '412', '0517102943', 'All Litro 1 Liter', 3, '334', 'Aljohn', 'IT Technician', 3, 0),
(656, '414', '0517102943', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(657, '412', '0517103522', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(658, '411', '0517103522', 'All 8oz 8oz', 10, '154', 'Aljohn', 'IT Technician', 10, 0),
(659, '419', '0517103522', 'Red Horse 1000ml', 4, '535', 'Aljohn', 'IT Technician', 4, 0),
(660, '420', '0517103522', 'Red Horse 500ml', 2, '525', 'Aljohn', 'IT Technician', 2, 0),
(661, '425', '0517103522', 'Emperador Brandy 700ML', 1, '1315', 'Aljohn', 'IT Technician', 1, 0),
(662, '419', '0517103622', 'Red Horse 1000ml', 2, '535', 'Aljohn', 'IT Technician', 2, 0),
(663, '412', '0517103622', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(664, '419', '0517103842', 'Red Horse 1000ml', 12, '530', 'Aljohn', 'IT Technician', 12, 0),
(665, '420', '0517103842', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(666, '417', '0517103842', 'Pilsen Litro 1000ml', 2, '530', 'Aljohn', 'IT Technician', 2, 0),
(667, '411', '0517103842', 'All 8oz 8oz', 8, '154', 'Aljohn', 'IT Technician', 8, 0),
(668, '412', '0517103842', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(669, '412', '0517104034', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(670, '419', '0517104034', 'Red Horse 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(671, '411', '0517104034', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(672, '414', '0517104034', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(673, '423', '0517104034', 'Vino Kulafu 350ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(674, '412', '0517104207', 'All Litro 1 Liter', 0.5, '334', 'Aljohn', 'IT Technician', 0.5, 0),
(675, '423', '0517104207', 'Vino Kulafu 350ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(676, '415', '0517104207', 'All Swakto swakto', 2, '106', 'Aljohn', 'IT Technician', 2, 0),
(677, '414', '0517104236', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(678, '411', '0517104827', 'All 8oz 8oz', 1, '144', 'Aljohn', 'IT Technician', 1, 0),
(679, '419', '0517105024', 'Red Horse 1000ml', 2, '520', 'Aljohn', 'IT Technician', 2, 0),
(680, '420', '0517105024', 'Red Horse 500ml', 1, '515', 'Aljohn', 'IT Technician', 1, 0),
(681, '436', '0517105024', 'San Mig Light', 0.5, '880', 'Aljohn', 'IT Technician', 0.5, 0),
(682, '437', '0517105024', 'San Mig Flavored Beer', 0.5, '707', 'Aljohn', 'IT Technician', 0.5, 0),
(683, '418', '0517105108', 'Pale Pilsen Small', 1, '755', 'Aljohn', 'IT Technician', 1, 0),
(684, '411', '0517105108', 'All 8oz 8oz', 4, '144', 'Aljohn', 'IT Technician', 4, 0),
(685, '412', '0517105258', 'All Litro 1 Liter', 1, '324', 'Aljohn', 'IT Technician', 1, 0),
(686, '411', '0517105258', 'All 8oz 8oz', 2, '144', 'Aljohn', 'IT Technician', 2, 0),
(687, '419', '0517105258', 'Red Horse 1000ml', 1, '520', 'Aljohn', 'IT Technician', 1, 0),
(688, '411', '0517105335', 'All 8oz 8oz', 2, '144', 'Aljohn', 'IT Technician', 2, 0),
(689, '415', '0517105413', 'All Swakto swakto', 4, '100', 'Aljohn', 'IT Technician', 4, 0),
(690, '412', '0517105450', 'All Litro 1 Liter', 1, '327', 'Aljohn', 'IT Technician', 1, 0),
(691, '416', '0517105522', 'All Minute Maid Apple', 1, '75', 'Aljohn', 'IT Technician', 1, 0),
(692, '415', '0517110836', 'All Swakto swakto', 4, '106', 'Aljohn', 'IT Technician', 4, 0),
(693, '412', '0517110836', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(694, '414', '0517110836', 'All Cobra yellow', 2, '280', 'Aljohn', 'IT Technician', 2, 0),
(695, '411', '0517110836', 'All 8oz 8oz', 3, '154', 'Aljohn', 'IT Technician', 3, 0),
(696, '422', '0517110925', 'Vino Kulafu 700ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(697, '423', '0517110925', 'Vino Kulafu 350ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(698, '419', '0517111149', 'Red Horse 1000ml', 5, '530', 'Aljohn', 'IT Technician', 5, 0),
(699, '415', '0517111149', 'All Swakto swakto', 3, '106', 'Aljohn', 'IT Technician', 3, 0),
(700, '422', '0517111254', 'Vino Kulafu 700ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(701, '419', '0517111254', 'Red Horse 1000ml', 3, '530', 'Aljohn', 'IT Technician', 3, 0),
(702, '420', '0517111254', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(703, '411', '0517111254', 'All 8oz 8oz', 2, '154', 'Aljohn', 'IT Technician', 2, 0),
(704, '412', '0517111404', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(705, '411', '0517111404', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(706, '412', '0517111550', 'All Litro 1 Liter', 0.5, '334', 'Aljohn', 'IT Technician', 0.5, 0),
(707, '411', '0517111550', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(708, '419', '0517111550', 'Red Horse 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(709, '438', '0517112138', 'Primera Light 750ML', 2, '92', 'Aljohn', 'IT Technician', 2, 0),
(710, '412', '0517112206', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(711, '419', '0517112302', 'Red Horse 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(712, '412', '0517112302', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(713, '411', '0517112302', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(714, '412', '0517112333', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(715, '411', '0517112333', 'All 8oz 8oz', 2, '154', 'Aljohn', 'IT Technician', 2, 0),
(716, '420', '0517112413', 'Red Horse 500ml', 3, '525', 'Aljohn', 'IT Technician', 3, 0),
(717, '420', '0517112454', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(718, '438', '0517112454', 'Primera Light 750ML', 2, '92', 'Aljohn', 'IT Technician', 2, 0),
(719, '417', '0517112603', 'Pilsen Litro 1000ml', 2, '530', 'Aljohn', 'IT Technician', 2, 0),
(720, '414', '0517112641', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(721, '419', '0517112641', 'Red Horse 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(722, '411', '0517112641', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(723, '417', '0517112911', 'Pilsen Litro 1000ml', 1, '530', 'Aljohn', 'IT Technician', 1, 0),
(724, '419', '0517112911', 'Red Horse 1000ml', 7, '530', 'Aljohn', 'IT Technician', 7, 0),
(725, '412', '0517112911', 'All Litro 1 Liter', 3, '334', 'Aljohn', 'IT Technician', 3, 0),
(726, '411', '0517112911', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(727, '411', '0517114427', 'All 8oz 8oz', 1.5, '144', 'Aljohn', 'IT Technician', 1.5, 0),
(728, '412', '0517114427', 'All Litro 1 Liter', 1, '327', 'Aljohn', 'IT Technician', 1, 0),
(729, '411', '0517114502', 'All 8oz 8oz', 1, '144', 'Aljohn', 'IT Technician', 1, 0),
(730, '438', '0517114605', 'Primera Light 750ML', 2, '92', 'Aljohn', 'IT Technician', 2, 0),
(731, '419', '0517114649', 'Red Horse 1000ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(732, '426', '0517132426', 'Excellent 50KG', 1, '2220', 'Aljohn', 'IT Technician', 0, 1),
(733, '428', '0517132546', 'Lion Ivory 25KG', 1, '1180', 'Aljohn', 'IT Technician', 1, 0),
(734, '412', '0518103942', 'All Litro 1 Liter', 2, '327', 'Aljohn', 'IT Technician', 2, 0),
(735, '411', '0518103942', 'All 8oz 8oz', 2, '144', 'Aljohn', 'IT Technician', 2, 0),
(736, '415', '0518104322', 'All Swakto swakto', 5, '100', 'Aljohn', 'IT Technician', 5, 0),
(737, '413', '0518104322', 'All 1.5  1.5 Liter', 1, '655', 'Aljohn', 'IT Technician', 1, 0),
(738, '422', '0518104322', 'Vino Kulafu 700ML', 1, '800', 'Aljohn', 'IT Technician', 1, 0),
(739, '411', '0518104427', 'All 8oz 8oz', 5, '144', 'Aljohn', 'IT Technician', 5, 0),
(740, '411', '0518104501', 'All 8oz 8oz', 1, '144', 'Aljohn', 'IT Technician', 1, 0),
(741, '426', '0518104658', 'Excellent 50KG', 1, '2120', 'Aljohn', 'IT Technician', 1, 0),
(742, '412', '0518152908', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(743, '411', '0518153012', 'All 8oz 8oz', 2, '154', 'Aljohn', 'IT Technician', 2, 0),
(744, '419', '0518153152', 'Red Horse 1000ml', 20, '521', 'Aljohn', 'IT Technician', 20, 0),
(745, '411', '0518153152', 'All 8oz 8oz', 30, '154', 'Aljohn', 'IT Technician', 30, 0),
(746, '412', '0518153152', 'All Litro 1 Liter', 11, '334', 'Aljohn', 'IT Technician', 11, 0),
(747, '422', '0518153152', 'Vino Kulafu 700ML', 2, '840', 'Aljohn', 'IT Technician', 2, 0),
(748, '415', '0518153152', 'All Swakto swakto', 10, '106', 'Aljohn', 'IT Technician', 10, 0),
(749, '416', '0518153152', 'All Minute Maid Apple', 2, '85', 'Aljohn', 'IT Technician', 2, 0),
(750, '411', '0518153257', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(751, '419', '0518153420', 'Red Horse 1000ml', 1, '530', 'Aljohn', 'IT Technician', 1, 0),
(752, '412', '0518153420', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(753, '411', '0518153504', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(754, '412', '0518153538', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(755, '420', '0518153639', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(756, '419', '0518153639', 'Red Horse 1000ml', 1, '530', 'Aljohn', 'IT Technician', 1, 0),
(757, '412', '0518153639', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(758, '411', '0518153639', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(759, '419', '0518162317', 'Red Horse 1000ml', 5, '525', 'Aljohn', 'IT Technician', 5, 0),
(760, '411', '0518162317', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(761, '421', '0518162317', 'Red Horse Stallion', 1, '770', 'Aljohn', 'IT Technician', 1, 0),
(762, '422', '0518162317', 'Vino Kulafu 700ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(763, '417', '0518162443', 'Pilsen Litro 1000ml', 1, '530', 'Aljohn', 'IT Technician', 1, 0),
(764, '420', '0518162443', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(765, '419', '0518162443', 'Red Horse 1000ml', 1, '530', 'Aljohn', 'IT Technician', 1, 0),
(766, '412', '0518162443', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(767, '412', '0518162532', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(768, '411', '0518162557', 'All 8oz 8oz', 2, '154', 'Aljohn', 'IT Technician', 2, 0),
(769, '414', '0518162726', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(770, '412', '0518162726', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(771, '420', '0518162726', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(772, '422', '0518162726', 'Vino Kulafu 700ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(773, '411', '0518162726', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(774, '411', '052295453', 'All 8oz 8oz', 2, '144', 'Aljohn', 'IT Technician', 2, 0),
(775, '430', '052295523', 'PEPC Gas blue', 1, '20', 'Aljohn', 'IT Technician', 1, 0),
(776, '411', '052295709', 'All 8oz 8oz', 1, '144', 'Aljohn', 'IT Technician', 1, 0),
(777, '414', '052295709', 'All Cobra yellow', 1, '270', 'Aljohn', 'IT Technician', 1, 0),
(778, '428', '052295825', 'Lion Ivory 25KG', 1, '1130', 'Aljohn', 'IT Technician', 1, 0),
(779, '429', '052295910', 'PEPC Gas green', 3, '25', 'Aljohn', 'IT Technician', 3, 0),
(780, '418', '0522100110', 'Pale Pilsen Small', 1, '755', 'Aljohn', 'IT Technician', 1, 0),
(781, '415', '0522100110', 'All Swakto swakto', 4, '100', 'Aljohn', 'IT Technician', 4, 0),
(782, '411', '0522100217', 'All 8oz 8oz', 1, '144', 'Aljohn', 'IT Technician', 1, 0),
(783, '411', '0522100354', 'All 8oz 8oz', 1.5, '144', 'Aljohn', 'IT Technician', 1.5, 0),
(784, '411', '0522100628', 'All 8oz 8oz', 2, '144', 'Aljohn', 'IT Technician', 2, 0),
(785, '412', '0522100628', 'All Litro 1 Liter', 1, '327', 'Aljohn', 'IT Technician', 1, 0),
(786, '411', '0522100700', 'All 8oz 8oz', 2, '144', 'Aljohn', 'IT Technician', 2, 0),
(787, '430', '0522100721', 'PEPC Gas blue', 1, '20', 'Aljohn', 'IT Technician', 1, 0),
(788, '429', '0522100748', 'PEPC Gas green', 1, '25', 'Aljohn', 'IT Technician', 1, 0),
(789, '416', '0522100955', 'All Minute Maid Apple', 2, '75', 'Aljohn', 'IT Technician', 2, 0),
(790, '412', '0522102016', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(791, '417', '0522102016', 'Pilsen Litro 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(792, '411', '0522102016', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(793, '412', '0522102103', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(794, '411', '0522102103', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(795, '419', '0522102200', 'Red Horse 1000ml', 2, '535', 'Aljohn', 'IT Technician', 2, 0),
(796, '412', '0522102200', 'All Litro 1 Liter', 3, '334', 'Aljohn', 'IT Technician', 3, 0),
(797, '411', '0522102200', 'All 8oz 8oz', 2, '154', 'Aljohn', 'IT Technician', 2, 0),
(798, '422', '0522102200', 'Vino Kulafu 700ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(799, '412', '0522102235', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(800, '411', '0522102235', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(801, '423', '0522102348', 'Vino Kulafu 350ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(802, '422', '0522102348', 'Vino Kulafu 700ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(803, '420', '0522102348', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(804, '419', '0522102348', 'Red Horse 1000ml', 1, '530', 'Aljohn', 'IT Technician', 1, 0),
(805, '412', '0522102348', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(806, '414', '0522102348', 'All Cobra yellow', 0.5, '280', 'Aljohn', 'IT Technician', 0.5, 0),
(807, '423', '0522102417', 'Vino Kulafu 350ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(808, '412', '0522102513', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(809, '411', '0522102513', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(810, '411', '0522102553', 'All 8oz 8oz', 2, '154', 'Aljohn', 'IT Technician', 2, 0),
(811, '412', '0522102553', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(812, '411', '0522102626', 'All 8oz 8oz', 2, '154', 'Aljohn', 'IT Technician', 2, 0),
(813, '415', '0522102626', 'All Swakto swakto', 1, '106', 'Aljohn', 'IT Technician', 1, 0),
(814, '423', '0522102711', 'Vino Kulafu 350ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(815, '411', '0522102711', 'All 8oz 8oz', 3, '154', 'Aljohn', 'IT Technician', 3, 0),
(816, '414', '0522102711', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(817, '425', '0522102736', 'Emperador Brandy 700ML', 1, '1315', 'Aljohn', 'IT Technician', 1, 0),
(818, '411', '0522102822', 'All 8oz 8oz', 15, '154', 'Aljohn', 'IT Technician', 15, 0),
(819, '412', '0522102932', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(820, '419', '0522102932', 'Red Horse 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(821, '414', '0522102932', 'All Cobra yellow', 0.5, '280', 'Aljohn', 'IT Technician', 0.5, 0),
(822, '419', '0522103110', 'Red Horse 1000ml', 3, '530', 'Aljohn', 'IT Technician', 3, 0),
(823, '420', '0522103110', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(824, '414', '0522103110', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(825, '412', '0522103110', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(826, '415', '0522103110', 'All Swakto swakto', 2, '106', 'Aljohn', 'IT Technician', 2, 0),
(827, '412', '0522103201', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(828, '411', '0522103201', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(829, '420', '0522103201', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(830, '419', '0522103201', 'Red Horse 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(831, '417', '0522103321', 'Pilsen Litro 1000ml', 2, '530', 'Aljohn', 'IT Technician', 2, 0),
(832, '412', '0522103321', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(833, '411', '0522103321', 'All 8oz 8oz', 3, '154', 'Aljohn', 'IT Technician', 3, 0),
(834, '420', '0522103321', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(835, '417', '0522103430', 'Pilsen Litro 1000ml', 1, '530', 'Aljohn', 'IT Technician', 1, 0),
(836, '419', '0522103430', 'Red Horse 1000ml', 1, '530', 'Aljohn', 'IT Technician', 1, 0),
(837, '412', '0522103430', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(838, '411', '0522103430', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(839, '415', '0522103430', 'All Swakto swakto', 1, '106', 'Aljohn', 'IT Technician', 1, 0),
(840, '414', '0522103456', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(841, '417', '0522103846', 'Pilsen Litro 1000ml', 1, '530', 'Aljohn', 'IT Technician', 1, 0),
(842, '419', '0522103846', 'Red Horse 1000ml', 1, '530', 'Aljohn', 'IT Technician', 1, 0),
(843, '412', '0522103846', 'All Litro 1 Liter', 3, '334', 'Aljohn', 'IT Technician', 3, 0),
(844, '414', '0522103846', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(845, '415', '0522103846', 'All Swakto swakto', 2, '106', 'Aljohn', 'IT Technician', 2, 0),
(846, '414', '0522103935', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(847, '412', '0522103935', 'All Litro 1 Liter', 3, '334', 'Aljohn', 'IT Technician', 3, 0),
(848, '417', '0522104024', 'Pilsen Litro 1000ml', 1, '530', 'Aljohn', 'IT Technician', 1, 0),
(849, '419', '0522104024', 'Red Horse 1000ml', 1, '530', 'Aljohn', 'IT Technician', 1, 0),
(850, '415', '0522104050', 'All Swakto swakto', 4, '106', 'Aljohn', 'IT Technician', 4, 0),
(851, '419', '0522104129', 'Red Horse 1000ml', 5, '530', 'Aljohn', 'IT Technician', 5, 0),
(852, '412', '0522104215', 'All Litro 1 Liter', 4, '334', 'Aljohn', 'IT Technician', 4, 0),
(853, '419', '0522104215', 'Red Horse 1000ml', 2, '535', 'Aljohn', 'IT Technician', 2, 0),
(854, '417', '0522104320', 'Pilsen Litro 1000ml', 2, '530', 'Aljohn', 'IT Technician', 2, 0),
(855, '419', '0522104320', 'Red Horse 1000ml', 4, '530', 'Aljohn', 'IT Technician', 4, 0),
(856, '414', '0522104320', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(857, '428', '0522105609', 'Lion Ivory 25KG', 1, '1130', 'Aljohn', 'IT Technician', 1, 0),
(858, '412', '0522105743', 'All Litro 1 Liter', 1, '324', 'Aljohn', 'IT Technician', 1, 0),
(859, '411', '0522105743', 'All 8oz 8oz', 1, '144', 'Aljohn', 'IT Technician', 1, 0),
(860, '411', '0522105836', 'All 8oz 8oz', 1.5, '144', 'Aljohn', 'IT Technician', 1.5, 0),
(861, '426', '0522110001', 'Excellent 50KG', 1, '2120', 'Aljohn', 'IT Technician', 1, 0),
(862, '416', '0522110055', 'All Minute Maid Apple', 2, '75', 'Aljohn', 'IT Technician', 2, 0),
(863, '419', '0524105421', 'Red Horse 1000ml', 2, '530', 'Aljohn', 'IT Technician', 2, 0),
(864, '417', '0524105421', 'Pilsen Litro 1000ml', 2, '530', 'Aljohn', 'IT Technician', 2, 0),
(865, '411', '0524105421', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(866, '415', '0524105421', 'All Swakto swakto', 3, '106', 'Aljohn', 'IT Technician', 3, 0),
(867, '414', '0524105542', 'All Cobra yellow', 2, '280', 'Aljohn', 'IT Technician', 2, 0),
(868, '411', '0524105650', 'All 8oz 8oz', 3, '154', 'Aljohn', 'IT Technician', 3, 0),
(869, '419', '0524105817', 'Red Horse 1000ml', 2, '530', 'Aljohn', 'IT Technician', 2, 0),
(870, '412', '0524105817', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(871, '415', '0524105817', 'All Swakto swakto', 3, '106', 'Aljohn', 'IT Technician', 3, 0),
(872, '419', '0524105919', 'Red Horse 1000ml', 2, '530', 'Aljohn', 'IT Technician', 2, 0),
(873, '415', '0524105919', 'All Swakto swakto', 6, '106', 'Aljohn', 'IT Technician', 6, 0),
(874, '419', '0524110026', 'Red Horse 1000ml', 10, '530', 'Aljohn', 'IT Technician', 10, 0),
(875, '411', '0524110102', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(876, '412', '0524110102', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(877, '419', '0524110213', 'Red Horse 1000ml', 5, '530', 'Aljohn', 'IT Technician', 5, 0),
(878, '414', '0524110213', 'All Cobra yellow', 2, '280', 'Aljohn', 'IT Technician', 2, 0),
(879, '419', '0524110310', 'Red Horse 1000ml', 4, '530', 'Aljohn', 'IT Technician', 4, 0),
(880, '412', '0524110310', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(881, '411', '0524110310', 'All 8oz 8oz', 2, '154', 'Aljohn', 'IT Technician', 2, 0),
(882, '414', '0524110310', 'All Cobra yellow', 0.5, '280', 'Aljohn', 'IT Technician', 0.5, 0),
(883, '419', '0524110354', 'Red Horse 1000ml', 2, '530', 'Aljohn', 'IT Technician', 2, 0),
(884, '412', '0524110354', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(885, '417', '0524110434', 'Pilsen Litro 1000ml', 1, '530', 'Aljohn', 'IT Technician', 1, 0),
(886, '411', '0524110434', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(887, '423', '0524110434', 'Vino Kulafu 350ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(888, '419', '0524110534', 'Red Horse 1000ml', 2, '530', 'Aljohn', 'IT Technician', 2, 0),
(889, '417', '0524110534', 'Pilsen Litro 1000ml', 1, '530', 'Aljohn', 'IT Technician', 1, 0),
(890, '411', '0524110534', 'All 8oz 8oz', 2, '154', 'Aljohn', 'IT Technician', 2, 0),
(891, '412', '0524110534', 'All Litro 1 Liter', 3, '334', 'Aljohn', 'IT Technician', 3, 0),
(892, '412', '0524110608', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(893, '411', '0524110608', 'All 8oz 8oz', 2, '154', 'Aljohn', 'IT Technician', 2, 0),
(894, '412', '0524110653', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(895, '414', '0524110653', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(896, '411', '0524110653', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0);
INSERT INTO `transaction_details` (`ID`, `PRODUCT_ID`, `TRANS_D_ID`, `PRODUCTS`, `QTY`, `PRICE`, `EMPLOYEE`, `ROLE`, `CASH`, `CREDIT`) VALUES
(897, '412', '0524110722', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(898, '411', '0524110722', 'All 8oz 8oz', 2, '154', 'Aljohn', 'IT Technician', 2, 0),
(899, '412', '0524110803', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(900, '411', '0524110803', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(901, '412', '0524110835', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(902, '414', '0524110835', 'All Cobra yellow', 0.5, '280', 'Aljohn', 'IT Technician', 0.5, 0),
(903, '412', '0524111918', 'All Litro 1 Liter', 2, '327', 'Aljohn', 'IT Technician', 2, 0),
(904, '411', '0524111918', 'All 8oz 8oz', 2, '144', 'Aljohn', 'IT Technician', 2, 0),
(905, '419', '0524112629', 'Red Horse 1000ml', 3, '525', 'Aljohn', 'IT Technician', 3, 0),
(906, '417', '0524112629', 'Pilsen Litro 1000ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(907, '412', '0524112629', 'All Litro 1 Liter', 1, '324', 'Aljohn', 'IT Technician', 1, 0),
(908, '415', '0524112629', 'All Swakto swakto', 5, '100', 'Aljohn', 'IT Technician', 5, 0),
(909, '438', '0524112629', 'Primera Light 750ML', 2, '92', 'Aljohn', 'IT Technician', 2, 0),
(910, '438', '0524112729', 'Primera Light 750ML', 2, '92', 'Aljohn', 'IT Technician', 2, 0),
(911, '429', '0524112902', 'PEPC Gas green', 3, '25', 'Aljohn', 'IT Technician', 3, 0),
(912, '419', '0524153009', 'Red Horse 1000ml', 30, '521', 'Aljohn', 'IT Technician', 30, 0),
(913, '411', '0524153009', 'All 8oz 8oz', 15, '154', 'Aljohn', 'IT Technician', 15, 0),
(914, '422', '0524153009', 'Vino Kulafu 700ML', 2, '840', 'Aljohn', 'IT Technician', 2, 0),
(915, '412', '0524153009', 'All Litro 1 Liter', 10, '334', 'Aljohn', 'IT Technician', 10, 0),
(916, '413', '0524153009', 'All 1.5  1.5 Liter', 1, '665', 'Aljohn', 'IT Technician', 1, 0),
(917, '419', '0524153214', 'Red Horse 1000ml', 3, '525', 'Aljohn', 'IT Technician', 3, 0),
(918, '415', '0524153214', 'All Swakto swakto', 2, '106', 'Aljohn', 'IT Technician', 2, 0),
(919, '412', '0524153456', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(920, '411', '0524153456', 'All 8oz 8oz', 3, '154', 'Aljohn', 'IT Technician', 3, 0),
(921, '412', '0524153603', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(922, '412', '0526114841', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 0, 2),
(923, '429', '0526115224', 'PEPC Gas green', 2, '25', 'Aljohn', 'IT Technician', 2, 0),
(924, '429', '0526115310', 'PEPC Gas green', 20, '25', 'Aljohn', 'IT Technician', 20, 0),
(925, '411', '0526115349', 'All 8oz 8oz', 1, '144', 'Aljohn', 'IT Technician', 1, 0),
(926, '412', '0526115455', 'All Litro 1 Liter', 1, '324', 'Aljohn', 'IT Technician', 1, 0),
(927, '411', '0526115455', 'All 8oz 8oz', 1, '144', 'Aljohn', 'IT Technician', 1, 0),
(928, '438', '0526115538', 'Primera Light 750ML', 2, '92', 'Aljohn', 'IT Technician', 2, 0),
(929, '411', '0526115658', 'All 8oz 8oz', 1, '144', 'Aljohn', 'IT Technician', 1, 0),
(930, '411', '0526115723', 'All 8oz 8oz', 1, '144', 'Aljohn', 'IT Technician', 1, 0),
(931, '429', '0526115801', 'PEPC Gas green', 4, '25', 'Aljohn', 'IT Technician', 4, 0),
(932, '430', '0526115801', 'PEPC Gas blue', 1, '20', 'Aljohn', 'IT Technician', 1, 0),
(933, '438', '0526115821', 'Primera Light 750ML', 2, '92', 'Aljohn', 'IT Technician', 2, 0),
(934, '412', '0527103307', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(935, '411', '0527103307', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(936, '414', '0527103307', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(937, '412', '0527103638', 'All Litro 1 Liter', 3, '334', 'Aljohn', 'IT Technician', 3, 0),
(938, '411', '0527103638', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(939, '419', '0527103638', 'Red Horse 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(940, '415', '0527103638', 'All Swakto swakto', 2, '106', 'Aljohn', 'IT Technician', 2, 0),
(941, '414', '0527103638', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(942, '411', '0527103917', 'All 8oz 8oz', 1.5, '154', 'Aljohn', 'IT Technician', 1.5, 0),
(943, '414', '0527103917', 'All Cobra yellow', 0.5, '280', 'Aljohn', 'IT Technician', 0.5, 0),
(944, '420', '0527104309', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(945, '411', '0527104309', 'All 8oz 8oz', 2, '154', 'Aljohn', 'IT Technician', 2, 0),
(946, '419', '0527104419', 'Red Horse 1000ml', 1, '530', 'Aljohn', 'IT Technician', 1, 0),
(947, '415', '0527104419', 'All Swakto swakto', 2, '106', 'Aljohn', 'IT Technician', 2, 0),
(948, '412', '0527104450', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(949, '411', '0527104450', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(950, '411', '0527104818', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(951, '412', '0527104905', 'All Litro 1 Liter', 9, '334', 'Aljohn', 'IT Technician', 9, 0),
(952, '412', '0527111613', 'All Litro 1 Liter', 2, '334', 'Aljohn', 'IT Technician', 2, 0),
(953, '419', '0527111727', 'Red Horse 1000ml', 2, '530', 'Aljohn', 'IT Technician', 2, 0),
(954, '412', '0527111727', 'All Litro 1 Liter', 3, '334', 'Aljohn', 'IT Technician', 3, 0),
(955, '419', '0527112436', 'Red Horse 1000ml', 3, '530', 'Aljohn', 'IT Technician', 3, 0),
(956, '412', '0527112436', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(957, '414', '0527112436', 'All Cobra yellow', 0.5, '280', 'Aljohn', 'IT Technician', 0.5, 0),
(958, '411', '0527112436', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(959, '413', '0527112645', 'All 1.5  1.5 Liter', 1, '665', 'Aljohn', 'IT Technician', 1, 0),
(960, '419', '0527112645', 'Red Horse 1000ml', 2, '530', 'Aljohn', 'IT Technician', 2, 0),
(961, '411', '0527112645', 'All 8oz 8oz', 2, '154', 'Aljohn', 'IT Technician', 2, 0),
(962, '412', '0527112645', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(963, '419', '0527112844', 'Red Horse 1000ml', 3, '530', 'Aljohn', 'IT Technician', 3, 0),
(964, '420', '0527112844', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(965, '412', '0527112844', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(966, '411', '0527112844', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(967, '412', '0527113100', 'All Litro 1 Liter', 1.5, '334', 'Aljohn', 'IT Technician', 1.5, 0),
(968, '411', '0527113100', 'All 8oz 8oz', 3, '154', 'Aljohn', 'IT Technician', 3, 0),
(969, '414', '0527113100', 'All Cobra yellow', 1, '280', 'Aljohn', 'IT Technician', 1, 0),
(970, '419', '0527113100', 'Red Horse 1000ml', 2, '530', 'Aljohn', 'IT Technician', 2, 0),
(971, '412', '0527113228', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(972, '411', '0527113228', 'All 8oz 8oz', 0.5, '154', 'Aljohn', 'IT Technician', 0.5, 0),
(973, '414', '0527113228', 'All Cobra yellow', 0.5, '280', 'Aljohn', 'IT Technician', 0.5, 0),
(974, '412', '0527113258', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(975, '419', '0527113258', 'Red Horse 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(976, '412', '0527113420', 'All Litro 1 Liter', 1.5, '334', 'Aljohn', 'IT Technician', 1.5, 0),
(977, '414', '0527113420', 'All Cobra yellow', 0.5, '280', 'Aljohn', 'IT Technician', 0.5, 0),
(978, '411', '0527113420', 'All 8oz 8oz', 0.5, '154', 'Aljohn', 'IT Technician', 0.5, 0),
(979, '420', '0527113420', 'Red Horse 500ml', 1, '525', 'Aljohn', 'IT Technician', 1, 0),
(980, '438', '0527113420', 'Primera Light 750ML', 2, '92', 'Aljohn', 'IT Technician', 2, 0),
(981, '419', '0527113420', 'Red Horse 1000ml', 1, '535', 'Aljohn', 'IT Technician', 1, 0),
(982, '412', '0527113455', 'All Litro 1 Liter', 0.5, '334', 'Aljohn', 'IT Technician', 0.5, 0),
(983, '419', '0527113603', 'Red Horse 1000ml', 5, '530', 'Aljohn', 'IT Technician', 5, 0),
(984, '411', '0527113603', 'All 8oz 8oz', 1, '154', 'Aljohn', 'IT Technician', 1, 0),
(985, '412', '0527113603', 'All Litro 1 Liter', 1, '334', 'Aljohn', 'IT Technician', 1, 0),
(986, '420', '0527113603', 'Red Horse 500ml', 2, '525', 'Aljohn', 'IT Technician', 2, 0),
(987, '423', '0527113630', 'Vino Kulafu 350ML', 1, '840', 'Aljohn', 'IT Technician', 1, 0),
(988, '413', '0527113726', 'All 1.5  1.5 Liter', 1, '665', 'Aljohn', 'IT Technician', 1, 0),
(989, '411', '0527113726', 'All 8oz 8oz', 2, '154', 'Aljohn', 'IT Technician', 2, 0),
(990, '415', '0527145721', 'All Swakto swakto', 1, '106', 'Aljohn', 'IT Technician', 1, 0),
(991, '430', '0527151301', 'PEPC Gas blue', 20, '17', 'Aljohn', 'IT Technician', 20, 0),
(992, '411', '0527151356', 'All 8oz 8oz', 1, '144', 'Aljohn', 'IT Technician', 1, 0),
(993, '412', '0527151356', 'All Litro 1 Liter', 1.5, '327', 'Aljohn', 'IT Technician', 1.5, 0),
(994, '412', '0527151434', 'All Litro 1 Liter', 2, '327', 'Aljohn', 'IT Technician', 2, 0),
(995, '414', '0527151535', 'All Cobra yellow', 1, '270', 'Aljohn', 'IT Technician', 1, 0),
(996, '438', '0527151605', 'Primera Light 750ML', 4, '92', 'Aljohn', 'IT Technician', 4, 0),
(997, '411', '0527151643', 'All 8oz 8oz', 2, '144', 'Aljohn', 'IT Technician', 2, 0),
(998, '438', '052995747', 'Primera Light 750ML', 2, '92', 'Aljohn', 'IT Technician', 0, 2),
(999, '411', '0529100828', 'All 8oz 8oz', 1.5, '144', 'Aljohn', 'IT Technician', 1.5, 0),
(1000, '416', '0529100921', 'All Minute Maid Apple', 3, '75', 'Aljohn', 'IT Technician', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `TYPE_ID` int(20) NOT NULL,
  `TYPE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`TYPE_ID`, `TYPE`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `EMPLOYEE_ID` int(15) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `TYPE_ID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `EMPLOYEE_ID`, `USERNAME`, `PASSWORD`, `TYPE_ID`) VALUES
(1, 1, 'admin1996', '6c9e460844ed9ee9b96b1b15ce738ac79ddd4fce', 1),
(3, 5, 'msdakay', '9fd3decf7b09560d547e405ea8b34720fef49c28', 1),
(4, 6, 'ALMAA', '5b0bc839e93b21c0de1bede933d4cac079c06c57', 2);

-- --------------------------------------------------------

--
-- Table structure for table `variation`
--

CREATE TABLE `variation` (
  `rec_no` int(11) NOT NULL,
  `variant` varchar(100) NOT NULL,
  `category_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `variation`
--

INSERT INTO `variation` (`rec_no`, `variant`, `category_id`) VALUES
(1, '1.5 Liter', 2),
(2, '1 Liter', 2),
(3, '8oz', 2),
(4, 'blue', 2),
(5, 'green', 2),
(13, '1000ml', 5),
(14, '500ml', 5),
(16, 'swakto', 2),
(17, 'mismo', 2),
(19, 'Apple', 2),
(20, 'Orange', 2),
(21, 'Pineapple', 2),
(22, 'Mango', 2),
(23, 'yellow', 2),
(24, 'green', 2),
(26, 'choco', 2),
(28, 'Grande', 5),
(29, 'Small', 5),
(30, 'Light', 5),
(31, 'Flavored Beer', 5),
(32, '350ML', 10),
(33, '700ML', 10),
(34, '750ML', 10),
(35, 'Stallion', 5),
(36, 'per pack', 2),
(37, '500ML', 13),
(38, '250ML', 13),
(39, 'Metro', 14),
(40, 'Grand', 14),
(41, '25KG', 15),
(42, '50KG', 15),
(43, 'green', 16),
(44, 'blue', 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`REC_NO`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CATEGORY_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `database_download`
--
ALTER TABLE `database_download`
  ADD PRIMARY KEY (`REC_NO`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`rec_no`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMPLOYEE_ID`);

--
-- Indexes for table `inventory_update`
--
ALTER TABLE `inventory_update`
  ADD PRIMARY KEY (`rec_no`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`JOB_ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LOCATION_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PRODUCT_ID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SUPPLIER_ID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TRANS_ID`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `variation`
--
ALTER TABLE `variation`
  ADD PRIMARY KEY (`rec_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `REC_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `database_download`
--
ALTER TABLE `database_download`
  MODIFY `REC_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `rec_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EMPLOYEE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `inventory_update`
--
ALTER TABLE `inventory_update`
  MODIFY `rec_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=493;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LOCATION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SUPPLIER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TRANS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=565;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `variation`
--
ALTER TABLE `variation`
  MODIFY `rec_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
