-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 22, 2021 at 03:12 PM
-- Server version: 8.0.18
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `main_page`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(10) NOT NULL,
  `menulist` varchar(30) NOT NULL,
  `price` int(10) NOT NULL,
  `count` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `menulist`, `price`, `count`) VALUES
(2, 'ผัดพริกแกง', 40, 1),
(4, 'หมูการเทียม', 40, 2),
(5, 'ข้าวไข่เจียว', 30, 1),
(6, 'ผัดมาม่า', 35, 0),
(10, 'ข้าวหน้าปลาทู', 40, 2),
(11, 'ข้าวผัดหมู', 40, 5),
(12, 'ข้าวขาหมู', 45, 0),
(13, 'ข้าวมันไก่', 35, 1),
(14, 'ข้าวหมูแดง', 40, 0),
(15, 'ข้าวกระเพราหมูกรอบ', 45, 1),
(16, 'มัสมั่นไก่', 50, 0);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `count_menu` int(5) NOT NULL,
  `price` int(5) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`count_menu`, `price`, `date`) VALUES
(5, 205, '2021-03-22T22:08:12.649447400'),
(13, 510, '2021-03-22T22:11:14.075001500');

-- --------------------------------------------------------

--
-- Table structure for table `totalprice`
--

CREATE TABLE `totalprice` (
  `price` int(5) NOT NULL,
  `paid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `totalprice`
--

INSERT INTO `totalprice` (`price`, `paid`) VALUES
(510, 1000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
