-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2023 at 09:12 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`) VALUES
(6, 'กาแฟ'),
(7, 'ชา'),
(8, 'นม'),
(9, 'เค้ก'),
(10, 'ขนมปัง');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(23, 'abcd', 'abcd', 'abcd', 'e2fc714c4727ee9395f324cd2e7f331f'),
(26, 'member', 'member', 'member', 'a510166163833c79aa703646f59c04bb');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `e_id` int(11) NOT NULL,
  `fname` varchar(99) NOT NULL,
  `lname` varchar(99) NOT NULL,
  `username` varchar(99) NOT NULL,
  `password` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`e_id`, `fname`, `lname`, `username`, `password`) VALUES
(1, 'admin', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'admin2', 'admin2', 'admin2', 'admin2123');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` varchar(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `p_name` text NOT NULL,
  `p_price` int(11) NOT NULL,
  `p_detail` text NOT NULL,
  `p_pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `cat_id`, `p_name`, `p_price`, `p_detail`, `p_pic`) VALUES
('111', 6, '111', 111, '<p>111</p>\r\n', 'Fruitcake-Loaf-Cake-close-up-of-cut-cake-and-slice-on-white-plate.jpg'),
('asd', 6, 'test123', 90, '', 'espessoW.png'),
('BK_BRE', 10, 'ขนมปังกรอบ', 15, '<p>ขนมปังกรอบๆ กินคู่กับอะไรก็อร่อย</p>\r\n', '68-768x768.png'),
('BK_CHE', 10, 'ขนมปังชีสยืด', 25, '<p>ชีสยืดดดดดดดดดด พร้อมให้ลอง</p>\r\n', 'pnghut_ham-and-cheese-sandwich-toast-breakfast-baked-potato-bread_vZhHy5TE9e (1).png'),
('BK_HNT', 10, 'ฮันนี่โทสต์', 50, '<p>ฮันนี่โทสต์หอมกรุ่น พร้อมน้ำพึ่งจากไร้สดๆ และไอศครีมกลิ่นวนิลา</p>\r\n', 'pngkit_toast-png_1537921.png'),
('BK_RSB', 10, 'ขนมปังลูกเกด', 15, '<p>ขนมปัง พร้อมลูกเกดชั้นพรีเมียม</p>\r\n', 'images.jpg'),
('BK_TOS', 10, 'ขนมปังปิ้ง', 15, '<p>ขนมปังปิ้งกรอบๆ หอมอร่อย</p>\r\n', 'kisspng-french-toast-breakfast-sliced-bread-5af43e12193df9.4450027315259561141034.png'),
('CK_BRN', 9, 'เค้กบราวนี่', 40, '<p>บราวนี้แสนอร่อยกินคู่กับกาแฟร้อนๆยิ่งเข้ากัน</p>\r\n', 'pxqrocxwsjcc_2FitEItStWqcY0YSu8K2GY_chocolate-brownie-cake_landscapeThumbnail_en.jpeg'),
('CK_CFC', 9, 'เค้กชิฟฟอน', 45, '<p>เค้กชิฟฟ่อนนุ่มๆ หอมกรุ่นสดใหม่ทุกวัน</p>', '0a677378-ba00-4c34-a659-1eb96fc79a5d.jpg'),
('CK_CHO', 9, 'เค้กช็อคโกแล็ต', 40, '<p>เค้กช็อคโกแลตเกรดพรีเมียม สดใหม่ทุกวัน</p>\r\n', 'smaller-IMG_6901-edited-copy.jpeg'),
('CK_FRU', 9, 'เค้กผลไม้', 40, '<p>เค้กผลไม้ 5 อย่าง แอปเปิล องุ่น สับปรด ส้ม และ กล้วย</p>\r\n', 'Fruitcake-Loaf-Cake-close-up-of-cut-cake-and-slice-on-white-plate.jpg'),
('CK_FUD', 9, 'เค้กหน้านิ่ม', 40, '<p>เค้กนุ่มๆ หอมๆ จากเตา</p>\r\n', 'fudge-cake-main.jpg'),
('DC_CAP_C', 6, 'คาปูชิโน (เย็น)', 40, '<p>คาปูชิโนเย็น<br />\r\nกาแฟเย็น รสชาติปานกลาง &nbsp;แต่งหน้าด้วยโฟมนม</p>\r\n', 'cappuchinoW.png'),
('DC_CAP_F', 6, 'คาปูชิโน (ปั่น)', 50, '<p>คาปูชิโนปั่น<br />\r\nกาแฟปั่น รสชาติกลมกล่อม หวานมัน แต่งหน้าด้วยโฟมนม</p>\r\n', 'cappuchinoW.png'),
('DC_CAP_H', 6, 'คาปูชิโน (ร้อน)', 35, '<p>คาปูชิโนร้อน&nbsp;&nbsp; &nbsp;<br />\r\nหัวกาแฟเข้มข้น ผสมนมสดร้อนครึ่งแก้ว ราดด้วยโฟมนมด้านบน รสชาติเข้มข้น</p>\r\n', 'cappuchinoW.png'),
('DC_EPS_C', 6, 'เอสเปรสโซ (เย็น)', 40, '<p>กาแฟเย็น ผสมนม รสชาติเข้มข้น</p>', 'espessoW.png'),
('DC_EPS_F', 6, 'เอสเปรสโซ (ปั่น)', 50, '<p>กาแฟปั่น รสชาติเข้มข้น ได้รสชาติกาแฟแท้</p>\r\n', 'espessoW.png'),
('DC_EPS_H', 6, 'เอสเปรสโซ (ร้อน)', 35, '<p>หัวกาแฟรสชาติเข้มข้น เสิร์ฟด้วยแก้วขนาดเล็ก 3.5 ออนซ์</p>\r\n', 'espessoW.png'),
('DC_LA_C', 6, 'ลาเต้ (เย็น)', 40, '<p>กาแฟเย็น รสชาติอ่อนนุ่ม ผสานความละมุนจากนมสด</p>\r\n', 'late.png'),
('DC_LA_F', 6, 'ลาเต้ (ปั่น)', 50, '<p>กาแฟเย็น รสชาติอ่อนนุ่ม ผสานความละมุนจากนมสด</p>\r\n', 'late.png'),
('DC_LA_H', 6, 'ลาเต้ (ร้อน)', 35, '<p>หัวกาแฟเข้มข้น ผสมนมสดร้อน ราดด้วยโฟมนมด้านบน รสชาติกลมกล่อม</p>\r\n', 'late.png'),
('DC_MOC_C', 6, 'มอคค่า (เย็น)', 40, '<p>กาแฟเย็น รสชาติปานกลาง ผสมช็อกโกแลต แต่งหน้าด้วยโฟมนม</p>\r\n', 'mocca.png'),
('DC_MOC_F', 6, 'มอคค่า (ปั่น)', 50, '<p>กาแฟปั่น รสชาติปานกลาง ผสมช็อกโกแลตเข้มข้น</p>\r\n', 'mocca.png'),
('DC_MOC_H', 6, 'มอคค่า (ร้อน)', 35, '<p>หัวกาแฟเข้มข้น ผสมช็อกโกแลตและนมสดร้อน ราดด้วยโฟมนมด้านบน รสชาติกลมกล่อม หอมกลิ่นช็อกโกแลต</p>\r\n', 'mocca.png'),
('DC_RKS_C', 6, 'รอยัลคิง ซิกเนเจอร์ (เย็น)', 50, '<p>กาแฟเย็น รสชาติเข้มข้น หวานมัน กลมกล่อม ในสไตล์ King Cafe</p>', 'Signeguer.png'),
('DC_RKS_H', 6, 'รอยัลคิง ซิกเนเจอร์ (ร้อน)', 40, '<p>กาแฟดำรสชาติเข้มข้น ที่คัดสรรพิเศษเพื่อคุณ</p>\r\n', 'Signeguer.png'),
('DM_CHO_C', 8, 'ช็อกโลแลต (เย็น)', 40, '<p>ช็อกโกแลตเย็นสูตรพิเศษ รสชาติหอมหวาน</p>\r\n', 'chocolate.png'),
('DM_CHO_F', 8, 'ช็อกโลแลต (ปั่น)', 50, '<p>ช็อกโกแลตปั่นสูตรพิเศษ รสชาติหวานมัน หอมกลิ่นช็อกโกแลต</p>\r\n', 'chocolate.png'),
('DM_CHO_H', 8, 'ช็อกโลแลต (ร้อน)', 35, '<p>ช็อกโกแลตร้อนสูตรพิเศษ รสชาติเข้มข้น ผสมนมสดร้อน ราดด้วยโฟมนม</p>\r\n', 'chocolate.png'),
('DM_COA_C', 8, 'โกโก้ (เย็น)', 40, '<p>โกโก้เย็นสูตรพิเศษ รสชาติเข้มข้น</p>\r\n', 'Cocoa.png'),
('DM_COA_F', 8, 'โกโก้ (ปั่น)', 50, '<p>โกโก้ปั่นสูตรพิเศษ รสชาติเข้มข้น หอมกลิ่นโกโก้</p>\r\n', 'Cocoa.png'),
('DM_COA_H', 8, 'โกโก้ (ร้อน)', 35, '<p>ดื่มด่ำกับโกโก้เกรดพรีเมี่ยม ผสานกับความนุ่มของนมสด อร่อยเข้มข้นโดนใจ</p>\r\n', 'Cocoa.png'),
('DM_FM_C', 8, 'นมสด (เย็น)', 40, '<p>นมสดเย็น รสชาติหวานมัน หอมกลิ่นนมสด</p>\r\n', 'milk.png'),
('DM_FM_F', 8, 'นมสด (ปั่น)', 50, '<p>นมสดปั่น สดชื่น หวานมัน หอมกลิ่นนมสด</p>\r\n', 'milk.png'),
('DM_FM_H', 8, 'นมสด (ร้อน)', 35, '<p>นมสดร้อน ได้รสชาติและความหอมของนมสดแท้</p>\r\n', 'milk.png'),
('DM_NY_C', 8, 'นมเย็น (เย็น)', 40, '<p>ความเข้มผสานความหอมของน้ำแดง สไตล์ คิง คาเฟ่ ตบท้ายด้วยนมสด อร่อยนุ่มโดนใจ</p>\r\n', 'Nomyen.png'),
('DM_NY_F', 8, 'นมเย็น (ปั่น)', 50, '<p>นมเย็นปั่น รสชาติหวานละมุน หอมนุ่มกลิ่นนม</p>\r\n', 'Nomyen.png'),
('DM__CM_C', 8, 'นมคาราเมล (เย็น)', 40, '<p>นมสดหอมหวานละมุน หอมกลิ่นคาราเมล แต่งหน้าด้วยคาราเมลซอส</p>\r\n', 'Caramelmilk.png'),
('DM__CM_F', 8, 'นมคาราเมล (ปั่น)', 50, '<p>นมสดรสชาติหวานละมุน หอมนุ่มกลิ่นคาราเมล แต่งหน้าด้วยคาราเมลซอส</p>\r\n', 'Caramelmilk.png'),
('DM__CM_H', 8, 'นมคาราเมล (ร้อน)', 35, '<p>หอมกลิ่นคาราเมล แต่งหน้าด้วยคาราเมลซอส</p>\r\n', 'Caramelmilk.png'),
('DT_HLT_C', 7, 'ชาเขียวน้ำผึ้งมะนาว (เย็น)', 40, '<p>ชาเขียวน้ำผึ้งมะนาว<br />ชาเขียวเย็น ผสมน้ำผึ้งธรรมชาติและน้ำมะนาวสด&nbsp;</p>', 'LemonTea.png'),
('DT_HLT_H', 7, 'ชาเขียวน้ำผึ้งมะนาว (ร้อน)', 35, '<p>ชาเขียวหอมกลุ่น พร้อมกับน้ำพึ่งที่คัดสรรมาเพื่อคุณ</p>\r\n', 'LemonTea.png'),
('DT_MCT_C', 7, 'มัทฉะ (เย็น)', 40, '<p>ชามัทฉะจากไร่ เกรดพรีเมียม</p>\r\n', 'Mucha-Recovered.png'),
('DT_MCT_F', 7, 'มัทฉะ (ปั่น)', 60, '<p>มัทฉะเกรดพรีเมี่ยม กลมกลมเต็มรสชาเขียวแท้ๆ</p>\r\n', 'Mucha-Recovered.png'),
('DT_MGT_C', 7, 'ชาเขียวนม (เย็น)', 40, '<p>ชาเขียวนมเย็น<br />\r\nชาเขียวนมสดเย็นสูตรพิเศษ ผสมความหอมของนม</p>\r\n', 'MilkGreenTea.png'),
('DT_MGT_F', 7, 'ชาเขียวนม (ปั่น)', 50, '<p>ชาเขียวนมปั่น<br />\r\nชาเขียวนมสดปั่นสูตรพิเศษ รสนุ่มนวลอย่างลงตัว</p>\r\n', 'MilkGreenTea.png'),
('DT_MGT_H', 7, 'ชาเขียวนม (ร้อน)', 35, '<p>ชาเขียวนมร้อน<br />\r\nชาเขียวนมสดร้อนสูตรพิเศษ ผสมความหอมของนม ได้รสชาตินุ่มอย่างลงตัว</p>\r\n', 'MilkGreenTea.png'),
('DT_MT_C', 7, 'ชานม (เย็น)', 40, '<p>ชานมเย็น<br />\r\nชานมเย็นสูตรพิเศษ หวานมัน กลมกล่อม</p>\r\n', 'milktea.png'),
('DT_MT_F', 7, 'ชานม (ปั่น)', 50, '<p>ชานมปั่น<br />\r\nชานมปั่นสูตรพิเศษ เข้มข้น หวานมัน</p>\r\n', 'milktea.png'),
('DT_MT_H', 7, 'ชานม (ร้อน)', 35, '<p>ชานมร้อน<br />\r\nชานมร้อนสูตรพิเศษ รสหวานมันสไตล์ไทย</p>\r\n', 'milktea.png'),
('DT_TEA_H', 7, 'ชา (ร้อน)', 40, '<p>ชาร้อนกลิ่นต่างๆ หอมกลิ่นเฉพาะตัว</p>\r\n', 'GTea.png');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `datesave` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`sale_id`, `c_id`, `e_id`, `datesave`) VALUES
(169963609, 17, 1, '2020-11-03 10:55:29'),
(274485955, 16, 1, '2020-11-03 10:54:09'),
(546297621, 14, 1, '2020-11-03 10:52:02'),
(576727311, 13, 1, '2020-11-03 10:50:23'),
(790390532, 23, 1, '2020-11-06 02:22:25'),
(1179527756, 19, 1, '2020-11-03 10:58:12'),
(1224209254, 23, 1, '2020-11-06 01:29:00'),
(1389359043, 7, 1, '2020-11-03 15:26:55'),
(1704168113, 24, 1, '2023-09-02 03:26:29'),
(1832545552, 8, 1, '2020-11-05 05:42:03'),
(1933788703, 15, 1, '2020-11-03 10:52:55'),
(1988200151, 18, 1, '2020-11-03 10:56:58');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale_detail`
--

INSERT INTO `sale_detail` (`id`, `sale_id`, `p_id`, `p_amount`, `p_sell`) VALUES
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
(45, 790390532, 'DT_MGT_C', 1, 40),
(46, 1704168113, 'BK_HNT', 1, 50),
(47, 1704168113, 'DM_NY_C', 1, 40),
(48, 1704168113, 'BK_BRE', 1, 15),
(49, 1704168113, 'CK_FUD', 1, 40);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `sale_detail`
--
ALTER TABLE `sale_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sale_detail`
--
ALTER TABLE `sale_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
