-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2018 at 07:10 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khachsan`
--

-- --------------------------------------------------------

--
-- Table structure for table `datphong`
--

CREATE TABLE `datphong` (
  `email` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hoten` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sodienthoai` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `loaiphong` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `songuoi` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sogiuong` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ngaynhan` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ngaytra` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tienthue` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tongtien` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `motaphong` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thanhtoan` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinh` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thoihan` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sophong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `datphong`
--

INSERT INTO `datphong` (`email`, `hoten`, `sodienthoai`, `loaiphong`, `songuoi`, `sogiuong`, `ngaynhan`, `ngaytra`, `tienthue`, `tongtien`, `motaphong`, `thanhtoan`, `hinh`, `thoihan`, `sophong`) VALUES
('calmin21298@gmail.com', 'Cao Minh Đức', '01229537685', 'Blue Note', '2', '1 Giường đôi', '2018-06-29', '2018-06-30', '480000đ', '3680000đ', 'Vòi hoa sen,Truyền hình cáp,Dọn phòng thay khăn hằng ngày', 'Chưa thanh toán', 'https://i.imgur.com/YhYRrOW.jpg', '1530210774189', 2),
('calmin21298@gmail.com', 'Cao Minh Đức', '01229537685', 'Summer Woods', '4', '2 Giường đôi', '2018-07-01', '2018-07-03', '780000đ', '5980000đ', 'Vòi hoa sen,Truyền hình cáp,Dọn phòng thay khăn hằng ngày', 'Chưa thanh toán', 'https://i.imgur.com/DzdnjQB.jpg', '1530211153010', 1),
('calmin21298@gmail.com', 'Cao Minh Đức', '01229537685', 'Blue Planet', '2', '1 giường đôi', '2018-06-29', '2018-06-30', '225000đ', '1725000đ', 'Vòi hoa sen,Truyền hình cáp,Dọn phòng thay khăn hằng ngày', 'Chưa thanh toán', 'https://i.imgur.com/c4jFNxE.jpg', '1530258280736', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loaiphong`
--

CREATE TABLE `loaiphong` (
  `idloaiphong` int(11) NOT NULL,
  `tenloaiphong` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `songuoi` int(11) NOT NULL,
  `sogiuong` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `giatien` int(11) NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  `tinhtrang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaiphong`
--

INSERT INTO `loaiphong` (`idloaiphong`, `tenloaiphong`, `songuoi`, `sogiuong`, `giatien`, `mota`, `tinhtrang`, `hinh`) VALUES
(1, 'Bamboo', 4, '2 Giường đôi', 2400000, 'Vòi hoa sen,Truyền hình cáp,Dọn phòng thay khăn hằng ngày', 'Còn phòng', 'https://i.imgur.com/43ViXFz.jpg'),
(2, 'Blue Note', 2, '1 Giường đôi', 1600000, 'Vòi hoa sen,Truyền hình cáp,Dọn phòng thay khăn hằng ngày', 'Còn phòng', 'https://i.imgur.com/YhYRrOW.jpg'),
(3, 'Blue Planet', 2, '1 giường đôi', 1500000, 'Vòi hoa sen,Truyền hình cáp,Dọn phòng thay khăn hằng ngày', 'Còn phòng', 'https://i.imgur.com/c4jFNxE.jpg'),
(4, 'Summer Woods', 4, '2 Giường đôi', 2600000, 'Vòi hoa sen,Truyền hình cáp,Dọn phòng thay khăn hằng ngày', 'Còn phòng', 'https://i.imgur.com/DzdnjQB.jpg'),
(5, 'Lotus Green', 3, '1 Giường đơn, 1 Giường đôi', 2000000, 'Vòi hoa sen,Truyền hình cáp,Dọn phòng thay khăn hằng ngày,Ban công', 'Còn phòng', 'https://i.imgur.com/pQA95O1.jpg'),
(6, 'Pink Bird', 2, '1 Giường đôi', 1700000, 'Vòi hoa sen,Truyền hình cáp,Dọn phòng thay khăn hằng ngày,Ban công', 'Còn phòng', 'https://i.imgur.com/3DEpAIJ.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE `phong` (
  `idphong` int(11) NOT NULL,
  `idloaiphong` int(11) NOT NULL,
  `tenphong` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tinhtrangphong` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tinhthanh` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`email`, `matkhau`, `hoten`, `dienthoai`, `diachi`, `tinhthanh`) VALUES
('quoctruong2406@gmail.com', '$2y$10$go8W8naotuoM2iRjc47PMOUHIRHtoNfmj2aJncU5HmFtdoOnhQGkK', '', '', '', ''),
('manga2406@gmail.com', '$2y$10$vKC3ro5VPxkqJKzngcTFk.D0T9DdnV98y0X8/SxfozHdf3R5EtzI6', '', '', '', ''),
('calmin21298@gmail.com', '$2y$10$K3fqfBL46kBpbvbx95wIP.OOvuGaPNWW7.TVia70lIKy.XF0WjNkG', 'Cao Đức Minh', '01229537685', '413/22 Hàng Bành', 'Hà Nội'),
('minh21298@gmail.com', '$2y$10$odr37TviJQJqwUJuZszUSue.jkROGZxG.Y/uoq/Iv3mNay6r3MXAG', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `uudai`
--

CREATE TABLE `uudai` (
  `ID` int(11) NOT NULL,
  `noidung` varchar(200) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uudai`
--

INSERT INTO `uudai` (`ID`, `noidung`) VALUES
(1, 'Ưu đãi lớn giảm 10% khi đến checkin tại myHotel'),
(2, 'Ưu đãi lớn giảm 10% khi đến checkin tại myHotel'),
(3, 'Ưu đãi nhỏ cho khách hàng <1m60'),
(5, 'Ưu đãi nhỏ cho khách hàng <1m60');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loaiphong`
--
ALTER TABLE `loaiphong`
  ADD PRIMARY KEY (`idloaiphong`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`idphong`);

--
-- Indexes for table `uudai`
--
ALTER TABLE `uudai`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loaiphong`
--
ALTER TABLE `loaiphong`
  MODIFY `idloaiphong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `phong`
--
ALTER TABLE `phong`
  MODIFY `idphong` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uudai`
--
ALTER TABLE `uudai`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
