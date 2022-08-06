-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2021 at 04:50 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `accont`
--

CREATE TABLE`accont` (
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accont`
--

INSERT INTO `accont` (`fname`, `lname`, `username`, `password`) VALUES
('mebratu', 'brehan', 'A@admin.com', '123'),
('mebratu', 'brehan', 'A@admin.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Did` int(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `checkin` varchar(100) NOT NULL,
  `checkout` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`Did`, `firstname`, `lastname`, `country`, `city`, `phone`, `Email`, `checkin`, `checkout`) VALUES
(1, 'Mebratu', 'Brehan', 'GUF', 'Gebezemariam', '0943558696', 'Mebra.Brehan@gmail.com', '12', '13');

-- --------------------------------------------------------

--
-- Table structure for table `bookingfood`
--

CREATE TABLE `bookingfood` (
  `order_id` int(10) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone` int(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `paypal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookingfood`
--

INSERT INTO `bookingfood` (`order_id`, `firstname`, `lastname`, `country`, `phone`, `Email`, `paypal`) VALUES
(34, 'seew', 'wdawre', 'GUF', 932456723, 'gsdghsfah@fsdgs', 'cbe'),
(12, 'alemu', 'wyeywyrw', 'GUF', 92354672, 'awe3fe@tfdwe', 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `drink`
--

CREATE TABLE `drink` (
  `Did` int(50) NOT NULL,
  `Dtype` varchar(100) DEFAULT NULL,
  `Dname` varchar(50) DEFAULT NULL,
  `Dprice` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drink`
--

INSERT INTO `drink` (`Did`, `Dtype`, `Dname`, `Dprice`) VALUES
(1, 'Alcolic Drinks', 'Walliya', 27),
(2, 'Softdrink', 'pepsi', 15);

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `ID` int(50) NOT NULL,
  `foodtype` varchar(100) NOT NULL,
  `foodname` varchar(100) NOT NULL,
  `price` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`ID`, `foodtype`, `foodname`, `price`) VALUES
(13, 'Yetsom', 'Mekoreni', 75),
(14, 'Yefisik', 'Pasta', 64);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Rid` int(50) NOT NULL,
  `Rtype` varchar(100) NOT NULL,
  `Rprice` int(50) NOT NULL,
  `Free` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Rid`, `Rtype`, `Rprice`, `Free`) VALUES
(2, 'Triple', 750, 'Yes'),
(3, 'Duplex', 450, 'No');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`Did`);

--
-- Indexes for table `drink`
--
ALTER TABLE `drink`
  ADD PRIMARY KEY (`Did`),
  ADD KEY `Did` (`Did`,`Dtype`,`Dname`,`Dprice`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Rid`),
  ADD KEY `Rid` (`Rid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
