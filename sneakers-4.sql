-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2022 at 05:42 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sneakers`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `tid` int(11) NOT NULL,
  `ord_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`tid`, `ord_id`, `pid`, `quantity`) VALUES
(1, 1, 5, 1),
(2, 2, 5, 1),
(3, 2, 1, 1),
(4, 2, 3, 1),
(5, 3, 2, 2),
(6, 4, 3, 2),
(7, 4, 4, 3),
(8, 5, 1, 1),
(9, 5, 2, 1),
(10, 5, 3, 1),
(11, 5, 4, 1),
(12, 5, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `username` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`username`, `password`, `fname`, `lname`, `address`, `mobile`, `email`, `status`) VALUES
('admin', 'admin', 'test', 'test', 'test', '0123456789', 'admin@sneakers.com', 'admin'),
('best', '55555', 'ธวัชชัย', 'เกิดสมบูรณ์', '22/3 ถ.ราชพฤกษ์ จ.นนทบุรี', '0827030522', 'best@gmail.com', NULL),
('julano', 'ju111', 'จุลนพภ์', 'ขําเสถียร', '98/9 ถ.ศรีจันทร์ จ.ขอนแก่น', '0814438910', '่julano@gmail.com', NULL),
('kasi', 'kla15', 'กสิ', 'ศรีพงษ์พันธุ์กุล', '30 งามวงศ์วานซอย9 จ.นนทบุรี', '0654725725', 'kla@gmail.com', NULL),
('kitsada', 'ksd22', 'กฤษดากร', 'ศรีบรรจง', '123 ถ.วิภาวดีรังสิต จ.กรุงเทพฯ', '0951436789', 'Kitsada@gmail.com', NULL),
('kittin', 'ktn44', 'กฤติน', 'พรหมสิรินิมิต', '174 ถ.มิตรภาพ จ.ขอนแก่น', '0871235488', 'kittin@gmail.com', NULL),
('parame', 'prm33', 'ปรมี', 'ศรีสมทรัพย์', '45 ถ.สุขุมวิท110 กรุงเทพฯ', '0899445613', 'parame@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ord_id` int(11) NOT NULL,
  `username` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ord_id`, `username`, `total`) VALUES
(1, 'kittin', 5400),
(2, 'parame', 14900),
(3, 'julano', 7000),
(4, 'kitsada', 21900),
(5, 'best', 21700);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(15) NOT NULL,
  `pname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ptype` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `pcolour` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `pdetail` text COLLATE utf8_unicode_ci NOT NULL,
  `psize` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `pname`, `ptype`, `price`, `pcolour`, `pdetail`, `psize`) VALUES
(1, 'Nike Air Force 1', 'basketball', 3500, 'white', 'ตัวรองเท้าจะมาพร้อมกับวัสดุหนังสีขาวสุดพรีเมียม', 9),
(2, 'Nike Air Force 1', 'basketball', 3500, 'black', 'ตัวรองเท้าจะมาพร้อมกับวัสดุหนังสีดำสุดพรีเมียม', 10.5),
(3, 'Nike ZoomX Streakfly', 'running', 6000, 'orange', 'เพิ่มความสบายและการตอบสนองในทุกก้าว', 8.5),
(4, 'Nike Air Zoom Rival Fly 3', 'running', 3300, 'green', 'วัสดุโพลีเอสเตอร์น้ำหนักเบาไร้รอยต่อช่วยให้ระบายอากาศ ยืดหยุ่นและนุ่มสบายเท้า', 10),
(5, 'Nike Court Zoom NXT', 'tennis', 5400, 'blue', 'ช่วยเพิ่มแรงในการดีดตัวและสปริงตัวเมื่อคุณเสริมแรงในตอนเสิร์ฟ', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ord_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ord_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
