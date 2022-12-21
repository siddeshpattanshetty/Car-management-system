-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2022 at 12:01 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car management`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(1, 'Ramachandra', 'ramu', '4124bc0a9335c27f086f24ba207a4912'),
(5, 'Omkar', 'omz', '4124bc0a9335c27f086f24ba207a4912');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_book`
--

CREATE TABLE `tbl_book` (
  `id` int(10) UNSIGNED NOT NULL,
  `car` varchar(100) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` int(100) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_book`
--

INSERT INTO `tbl_book` (`id`, `car`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(58, 'Sonet', 'Rama Chandra', 702234549, 'ramac3586@gmail.com', 'Bunder Road Gangolli'),
(59, 'Carnival', 'Omkar', 726378965, 'omkar@gmail.com', 'banglore'),
(61, 'Soul', 'Siddesh', 890289654, 'sid@gmail.com', 'Raichur'),
(86, 'Soul', 'Rama Chandra', 111111, 'ramac3586@gmail.com', 'Bunder Road Gangolli'),
(87, 'Carnival', 'Rama Chandra', 111111, 'ramac3586@gmail.com', 'Bunder Road Gangolli');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_car`
--

CREATE TABLE `tbl_car` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(100) NOT NULL,
  `active` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_car`
--

INSERT INTO `tbl_car` (`id`, `title`, `image_name`, `description`, `price`, `category_id`, `featured`, `active`) VALUES
(13, 'sonet', 'car_405.jfif', '  The Kia Sonet is a subcompact crossover SUV manufactured by Kia since 2020. The Sonet slots below the Seltos and is closely related to the similarly sized sibling Hyundai Venue.', '24490.00', 19, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_car2`
--

CREATE TABLE `tbl_car2` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `imagename` varchar(255) NOT NULL,
  `category_id` int(100) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_car2`
--

INSERT INTO `tbl_car2` (`id`, `title`, `description`, `price`, `imagename`, `category_id`, `featured`, `active`) VALUES
(2, 'Soul', 'Designed to Increase Horsepower & Protect Your Engine. Factory Prices. Fast Free Shipping.. Explore the Benefits of a K&N® Air Intake System. Easy to Install, Custom to Your Vehicle.\r\n\r\n', '17499', 'car_610.jfif', 25, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_car3`
--

CREATE TABLE `tbl_car3` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `imagename` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_car3`
--

INSERT INTO `tbl_car3` (`id`, `title`, `description`, `price`, `imagename`, `category_id`, `featured`, `active`) VALUES
(1, 'Carnival', 'The makeover of Kia\'s minivan is such a dramatic one that it even includes an all-new name: Carnival. The 2022 Carnival replaces the aging Sedona in Kia\'s lineup and its boxy SUV-like styling is no accident, as the Korean automaker aims to capitalize on t', 32000, 'car_864.jfif', 20, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(19, 'SUV', 'car_category_539.jpg', 'Yes', 'Yes'),
(20, 'Minivan', 'car_category_411.jfif', 'Yes', 'Yes'),
(25, 'Hatchback ', 'car_category_572.jfif', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `contact` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `feedback` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`id`, `full_name`, `contact`, `email`, `feedback`) VALUES
(3, 'Rama Chandra', 2147483647, 'ramac3586@gmail.com ', 'goood');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_book`
--
ALTER TABLE `tbl_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_car`
--
ALTER TABLE `tbl_car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_car2`
--
ALTER TABLE `tbl_car2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_car3`
--
ALTER TABLE `tbl_car3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_book`
--
ALTER TABLE `tbl_book`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `tbl_car`
--
ALTER TABLE `tbl_car`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_car2`
--
ALTER TABLE `tbl_car2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_car3`
--
ALTER TABLE `tbl_car3`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
