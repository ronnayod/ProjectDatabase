-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 26, 2020 at 10:23 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mtminimart`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`) VALUES
(1, 'น้ำดื่ม'),
(2, 'ขนมเลย์'),
(3, 'ของหวาน'),
(4, 'ไอศครีม');

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
(1, 'กิตติศักดิ์', 'ปานเหลือ', '123', '202cb962ac59075b964b07152d234b70'),
(2, 'ทดสอบระบบ', 'รอบที่ 1', 'test', 'fb469d7ef430b0baf0cab6c436e70375');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`e_id`, `fname`, `lname`, `username`, `password`) VALUES
(1, 'admin', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` varchar(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `p_name` text NOT NULL,
  `p_price` int(11) NOT NULL,
  `p_amount` int(11) NOT NULL,
  `p_detail` text NOT NULL,
  `p_pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `cat_id`, `p_name`, `p_price`, `p_amount`, `p_detail`, `p_pic`) VALUES
('L8123', 2, 'เลย์ แผ่นเรียบและแผ่นหยัก ขนาด 30 บาท 6 ซอง', 162, 821, '<p>&nbsp;</p>\r\n\r\n<p>Lay s มันฝรั่งเลย์ ขนมขบเคี้ยวผลิตจากมันฝรั่งแท้ ทอดจนมีสีเหลืองกรอบ หอม พอดีคำ ได้รสชาติมันฝรั่ง ที่สุดความอร่อยที่ มีหลากหลายรสชาติ เช่น รสออริจินอล รสเกลือ รสโนริสาหร่าย รสเมี่ยงคำ รสบาบีคิว ซาวครีมและหัวหอม รสหมึกย่างฮอตชิลลี่ และรสชาติอื่นๆอีกมากมาย ให้ทุกคนได้ลิ้มลองตามความชอบ นอกจากความหลากหลายในรสชาติ เลย์ยังมีให้คุณเลือกสรรค์ได้ในรูปแบบอื่นๆ เลย์คลาสสิค มันฝรั่งแท้แผ่นเรียบ บาง กรอบ เลย์ ร็อค มันฝรั่งแผ่นหยัก รสชาติเข้มข้น เลย์ แม็กซ์ มันฝรั่งแผ่นหยักลึก รสชาติเข้มข้นกว่าเดิม เลย์ สแตคส์ มันฝรั่งคุณภาพดี อร่อยเท่ากันทุกแผ่น เลย์เพลย์ ความสนุกที่ไม่รู้จบ</p>\r\n', '840bf389aee501b82ba693a1b381ed1a.jpeg'),
('L9122', 2, 'เลย์ รสไก่วิงซ์แซ่บ ขนาด 30 บาท 6 ซอง', 162, 18, '<p><strong>Lays</strong></p>\r\n\r\n<p>มันฝรั่งเลย์ ขนมขบเคี้ยวผลิตจากมันฝรั่งแท้ ทอดจนมีสีเหลืองกรอบ หอม พอดีคำ ได้รสชาติมันฝรั่ง ที่สุดความอร่อยที่ มีหลากหลายรสชาติ เช่น รสออริจินอล รสเกลือ รสโนริสาหร่าย รสเมี่ยงคำ รสบาบีคิว ซาวครีมและหัวหอม รสหมึกย่างฮอตชิลลี่ และรสชาติอื่นๆอีกมากมาย ให้ทุกคนได้ลิ้มลองตามความชอบ นอกจากความหลากหลายในรสชาติ เลย์ยังมีให้คุณเลือกสรรค์ได้ในรูปแบบอื่นๆ เลย์คลาสสิค มันฝรั่งแท้แผ่นเรียบ บาง กรอบ เลย์ ร็อค มันฝรั่งแผ่นหยัก รสชาติเข้มข้น เลย์ แม็กซ์ มันฝรั่งแผ่นหยักลึก รสชาติเข้มข้นกว่าเดิม เลย์ สแตคส์ มันฝรั่งคุณภาพดี อร่อยเท่ากันทุกแผ่น เลย์เพลย์ ความสนุกที่ไม่รู้จบ</p>\r\n\r\n<p>LaysThailand เพราะชีวิตต้องมีรสชาติ<br />\r\n&ldquo;Life needs flavor&rdquo;</p>\r\n\r\n<p>ขนมรสชาติที่มีตราฮาลาล</p>\r\n\r\n<p>* เลย์ รสมันฝรั่งแท้ แผ่นเรียบ<br />\r\n* เลย์ รสมันฝรั่งแท้ แผ่นหยัก<br />\r\n* เลย์ รสโนริสาหร่าย<br />\r\n* เลย์ รสบาร์บีคิว แผ่นหยัก<br />\r\n* เลย์ รสหมึกย่างฮอตชิลลี่<br />\r\n* เลย์ รสกุ้งมังกรสไปซี่<br />\r\n* เลย์ รสซาวครีมและหัวหอม</p>\r\n', '7eae1173ea0a5b0272a618598cb9b8e8.jpeg'),
('W0123', 1, 'มินิทเมด พัลพี น้ำส้ม ผสมเนื้อส้ม 335 มล. 24 ขวด', 432, 361, '<p>น้ำส้มผสมเนื้อส้ม ตรามินิทเมด พัลพิ สดชื่น เต็มน้ำเต็มเนื้อ วันหมดอายุ 2021-03-23 Delicious Orange juice with orange pulp, giving you mouthful deliciousness from goodness of fruits</p>\r\n', '865e79de78e47ffeb05ea973adf718e9.jpeg'),
('W031', 1, 'มิรินด้า เครื่องดื่มน้ำอัดลม กลิ่นส้ม ขนาด 345 มิลลิลิตร แพ็ค x 12 ขวด Mirinda Carbonated Soft Drink Orange Flavor Size', 169, 85, '<p>ยี่ห้อ : มิรินด้ารายละเอียดสินค้า :มิรินด้า น้ำหวานอัดลม กลิ่นส้ม เติมความหวานกับน้ำอัดลมรสอร่อยกลิ่นหอมหวานและรสชาติที่ลงตัวขนาด 345 มิลลิลิตรแพ็ค 12 ขวด</p>\r\n', '3d4ddc6c0fb1584d72c63bfda67dc6fb.jpeg'),
('W0312', 1, 'เป๊ปซี่ สลิมแคน เครื่องดื่มน้ำอัดลม ขนาด 245 มิลลิลิตร แพ็ค x 6 กระป๋อง Pepsi Slim Can Carbonated Soft Drink Size 245 ml', 119, 98, '<p>เป๊ปซี่ สลิมแคน เครื่องดื่มน้ำอัดลม ขนาด 245 มิลลิลิตร แพ็ค x 6 กระป๋อง</p>\r\n', '390f50cb60af48bd66d39f2c4e851e35.jpeg'),
('W1242', 1, 'ลิปตัน พีช กระป๋อง ขนาด 245 มล. (แพ็ค 6)', 78, 17, '<p>ลิปตันเป็นผลิตภัณฑ์เครื่องดื่มที่ยิ่งใหญ่ยี่ห้อหนึ่งในโลก จากความเป็นผู้เชี่ยวชาญด้านชาคุณภาพชั้นดี อันได้แก่ ชาประเภทชาใบ ชาฝรั่งประเภทถุง ชาพร้อมดื่ม และเครื่องดื่มประเภทอื่นๆ ที่เป็นทางเลือกที่มีคุณภาพให้กับผู้บริโภค เมื่อพูดถึงชาคุณภาพชั้นดีที่ให้ความสดชื่น กระปรี้กระเปร่า คุณจะนึกถึงชาลิปตัน หัวใจ ของ ลิปตัน คือ พลังธรรมชาติแห่งชีวิตที่มอบให้แก่ผู้บริโภค ซึ่งเป็นผลเนื่องมาจาก 3 องค์ประกอบหลัก &bull; ผลิตภัณฑ์ชาลิปตัน ซึ่งเป็นชาธรรมชาติแท้ที่ผ่านการคัดสรรมาอย่างดีจากแหล่งต้นกำเนิดชา เพื่อประสบการณ์การดื่มอันสมบูรณ์แบบของผู้บริโภค &bull; คุณประโยชน์ของชาลิปตัน คุณภาพที่ให้ความสดชื่น และส่งเสริมสุขภาพอันดี กล่าวได้ว่า ไม่มีอะไรเทียบได้กับชาสักถ้วยที่ให้ทั้งรสชาติกลมกล่อมกำลังดี และคุณสมบัติสารต่อต้านอนุมูลอิสระของชาที่ส่งผลดีต่อการทำงานของหัวใจ และชลอความแก่ &bull; ทัศนคติในแง่บวกที่ลิปตันต้องการสื่อสารให้ผู้บริโภคมองโลกในแง่ดีผ่านการดื่มด่ำชาลิปตัน เพื่อให้สามารถดำเนินชีวิตไปอย่างมีความสุข ขอความกรุณาคุณลูกค้าสั่งสินค้าทุกรายการในร้าน ไม่เกิน 3 รายการ ต่อ 1 คำสั่งซื้อ หากท่านต้องการสั่งสินค้าเพิ่มเติม แนะนำให้ทำรายการคำสั่งซื้อเข้ามาใหม่ ถ้าสินค้าที่สั่งเกิน 3 รายการ ต่อ 1 คำสั่งซื้อ ทางร้านต้องขออนุญาติยกเลิกรายการคำสั่งซื้อนั้นโดยไม่ต้องแจ้งให้ทราบล่วงหน้าค่ะ ขอบพระคุณค่ะ #น้ำ #อร่อย #น้ำซ่า #น้ำหวาน #เครื่องดื่ม #ดื่ม #สดชื่น #ใหม่ #น้ำตาล #drink #softdrink #Pepsi #Beverage</p>', '2537a9f274a52ae40d0da00f3f616db7.jpeg'),
('W311', 1, 'มิรินด้า น้ำแดง เครื่องดื่มน้ำอัดลม 345 มล. แพ็คละ. 12 ขวด. Mirinda Red Soda Soft Drink 345 ml. Pack of 12 bottles.', 169, 30, '<p>น้ำแดง เครื่องดื่มน้ำอัดลม</p>\r\n', '58f071ca2618f814e2b9a1a9aeef15b5.jpeg'),
('W4102', 1, 'ดอยคำ น้ำมะเขือเทศ ผสมน้ำผลไม้รวม 98% ม็อกเทล 200 มล. แพ็ค 4 กล่อง', 109, 17, '<p>ยี่ห้อ : ดอยคำรายละเอียดสินค้า :ดอยคำ น้ำมะเขือเทศ ผสมน้ำผลไม้รวม 98% ม็อกเทล มีส่วนผสมของ วิตามิน A,C สูงใยอาหารสูงคอลลาเจนไลโคปินขนาด 200 มล.แพ็ค 4 กล่อง</p>\r\n', 'e087eff8a606930c2cb95b823da68bfe.jpeg'),
('W4123', 1, 'เลย์ แผ่นเรียบและแผ่นหยัก ขนาด 10 บาท 12 ซอง', 80, 355, '<p>Lays มันฝรั่งเลย์ ขนมขบเคี้ยวผลิตจากมันฝรั่งแท้ ทอดจนมีสีเหลืองกรอบ หอม พอดีคำ ได้รสชาติมันฝรั่ง ที่สุดความอร่อยที่ มีหลากหลายรสชาติ เช่น รสออริจินอล รสเกลือ รสโนริสาหร่าย รสเมี่ยงคำ รสบาบีคิว ซาวครีมและหัวหอม รสหมึกย่างฮอตชิลลี่ และรสชาติอื่นๆอีกมากมาย ให้ทุกคนได้ลิ้มลองตามความชอบ นอกจากความหลากหลายในรสชาติ เลย์ยังมีให้คุณเลือกสรรค์ได้ในรูปแบบอื่นๆ เลย์คลาสสิค มันฝรั่งแท้แผ่นเรียบ บาง กรอบ เลย์ ร็อค มันฝรั่งแผ่นหยัก รสชาติเข้มข้น เลย์ แม็กซ์ มันฝรั่งแผ่นหยักลึก รสชาติเข้มข้นกว่าเดิม เลย์ สแตคส์ มันฝรั่งคุณภาพดี อร่อยเท่ากันทุกแผ่น เลย์เพลย์ ความสนุกที่ไม่รู้จบ</p>\r\n', 'de1958a4bf4623e9990c3e13f2e36acb.jpeg');

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
(12827862, 1, 1, '2020-10-26 08:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `sale_detail`
--

CREATE TABLE `sale_detail` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `p_id` varchar(99) NOT NULL,
  `p_amount` int(11) NOT NULL,
  `p_sell` int(11) NOT NULL,
  `datesave` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sale_detail`
--

INSERT INTO `sale_detail` (`id`, `sale_id`, `p_id`, `p_amount`, `p_sell`, `datesave`) VALUES
(3, 12827862, 'W4102', 1, 109, '2020-10-26 09:11:42'),
(4, 12827862, 'W311', 1, 169, '2020-10-26 09:11:42');

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
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sale_detail`
--
ALTER TABLE `sale_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
