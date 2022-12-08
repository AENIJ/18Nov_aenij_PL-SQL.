-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 01:28 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `practices`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUSTOMERID` int(11) NOT NULL,
  `FIRSTNAME` varchar(10) DEFAULT NULL,
  `LASTNAME` varchar(10) DEFAULT NULL,
  `CITY` varchar(10) DEFAULT NULL,
  `STATE` varchar(10) DEFAULT NULL,
  `ZIP` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUSTOMERID`, `FIRSTNAME`, `LASTNAME`, `CITY`, `STATE`, `ZIP`) VALUES
(101, 'AENIJ', 'JINDANI', 'PORBANDAR', 'GUJARAT', '360550'),
(102, 'MOHNISH', 'JINDANI', 'PORBANDAR', 'GUJARAT', '360550'),
(103, 'ASHIK', 'PIRANI', 'HYDERABAD', 'TELANGANA', '500001'),
(104, 'ARIF', 'KHETANI', 'HYDERABAD', 'TELANGANA', '500016'),
(105, 'ROHIT', 'HAMDANI', 'KESHOD', 'GUJARAT', '360001');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PRD_ID` int(11) NOT NULL,
  `PRD_NAME` varchar(10) DEFAULT NULL,
  `RECOMMENDED_PRICE` int(11) DEFAULT NULL,
  `CATEGORY` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRD_ID`, `PRD_NAME`, `RECOMMENDED_PRICE`, `CATEGORY`) VALUES
(1, 'COLGATE', 75, 'TOOTHPASTE'),
(2, 'MAXFRESH', 65, 'TOOTHPASTE'),
(3, 'HIMALIYA', 55, 'FACEWASH'),
(4, 'GARNIER', 60, 'FACEWASH'),
(5, 'VLC', 70, 'FACEWASH');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `SALES_ID` int(11) NOT NULL,
  `PRD_ID` int(11) DEFAULT NULL,
  `CUST_ID` int(11) DEFAULT NULL,
  `SALESPRICE` int(11) DEFAULT NULL,
  `SALESDATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`SALES_ID`, `PRD_ID`, `CUST_ID`, `SALESPRICE`, `SALESDATE`) VALUES
(401, 2, 104, 100, '0000-00-00'),
(402, 5, 103, 120, '0000-00-00'),
(403, 1, 101, 90, '0000-00-00'),
(404, 5, 102, 100, '0000-00-00'),
(405, 2, 102, 120, '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUSTOMERID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PRD_ID`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`SALES_ID`),
  ADD KEY `PRD_ID` (`PRD_ID`),
  ADD KEY `CUST_ID` (`CUST_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`PRD_ID`) REFERENCES `product` (`PRD_ID`),
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUSTOMERID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
