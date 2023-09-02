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
-- Table structure for table `sale_detail`
--

CREATE TABLE `sale_detail` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `p_id` varchar(99) NOT NULL,
  `p_amount` int(11) NOT NULL,
  `p_sell` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sale_detail`
--

INSERT INTO `sale_detail` (`id`, `sale_id`, `p_id`, `p_amount`, `p_sell`) VALUES
(16, 1829332581, 'DC_LA_C', 1, 40),
(17, 1829332581, 'DM_CHO_C', 1, 40),
(20, 516280754, 'BK_CHE', 1, 25),
(21, 516280754, 'CK_BRN', 1, 40),
(22, 576727311, 'DM__CM_H', 1, 35),
(23, 576727311, 'DT_MT_F', 1, 50),
(24, 546297621, 'DC_CAP_C', 1, 40),
(25, 546297621, 'CK_FRU', 1, 40),
(26, 1933788703, 'BK_CHE', 1, 25),
(27, 1933788703, 'DT_MCT_F', 1, 60),
(28, 274485955, 'DC_CAP_F', 1, 50),
(29, 274485955, 'CK_CHO', 1, 40),
(30, 169963609, 'DM_FM_F', 1, 50),
(31, 169963609, 'DM_NY_C', 1, 40),
(32, 1988200151, 'BK_CHE', 1, 25),
(33, 1988200151, 'CK_CFC', 1, 45),
(34, 1179527756, 'CK_CFC', 1, 45),
(35, 1179527756, 'BK_TOS', 1, 15),
(36, 1389359043, 'DT_MGT_C', 1, 40),
(37, 1389359043, 'BK_HNT', 1, 50),
(38, 1389359043, 'DT_MCT_C', 1, 40),
(41, 1832545552, 'BK_TOS', 1, 15),
(42, 1224209254, 'DM_COA_C', 1, 40),
(43, 1224209254, 'DC_LA_F', 1, 50),
(44, 790390532, 'asd', 1, 90),
(45, 790390532, 'DT_MGT_C', 1, 40);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sale_detail`
--
ALTER TABLE `sale_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sale_detail`
--
ALTER TABLE `sale_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
