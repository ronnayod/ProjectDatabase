-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2021 at 12:33 PM
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
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `datesave` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`sale_id`, `c_id`, `e_id`, `datesave`) VALUES
(169963609, 17, 1, '2020-11-03 10:55:29'),
(274485955, 16, 1, '2020-11-03 10:54:09'),
(516280754, 11, 1, '2020-11-03 10:49:25'),
(546297621, 14, 1, '2020-11-03 10:52:02'),
(576727311, 13, 1, '2020-11-03 10:50:23'),
(790390532, 23, 1, '2020-11-06 02:22:25'),
(1179527756, 19, 1, '2020-11-03 10:58:12'),
(1224209254, 23, 1, '2020-11-06 01:29:00'),
(1389359043, 7, 1, '2020-11-03 15:26:55'),
(1829332581, 8, 1, '2020-11-03 10:46:41'),
(1832545552, 8, 1, '2020-11-05 05:42:03'),
(1933788703, 15, 1, '2020-11-03 10:52:55'),
(1988200151, 18, 1, '2020-11-03 10:56:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
