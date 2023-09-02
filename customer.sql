-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2021 at 12:32 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kingcafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL,
  `fname` varchar(99) NOT NULL,
  `lname` varchar(88) NOT NULL,
  `username` varchar(99) NOT NULL,
  `password` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `fname`, `lname`, `username`, `password`) VALUES
(7, 'a', 'a', 'a', '0cc175b9c0f1b6a831c399e269772661'),
(8, 'b', 'b', 'b', '92eb5ffee6ae2fec3ad71c777531578f'),
(11, 'c', 'c', 'c', '4a8a08f09d37b73795649038408b5f33'),
(13, 'd', 'd', 'd', '8277e0910d750195b448797616e091ad'),
(14, 'e', 'e', 'e', 'e1671797c52e15f763380b45e841ec32'),
(15, 'f', 'f', 'f', '8fa14cdd754f91cc6554c9e71929cce7'),
(16, 'g', 'g', 'g', 'b2f5ff47436671b6e533d8dc3614845d'),
(17, 'h', 'h', 'h', '2510c39011c5be704182423e3a695e91'),
(18, 'i', 'i', 'i', '865c0c0b4ab0e063e5caa3387c1a8741'),
(19, 'j', 'j', 'j', '363b122c528f54df4a0446b6bab05515'),
(23, 'abcd', 'abcd', 'abcd', 'e2fc714c4727ee9395f324cd2e7f331f');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
