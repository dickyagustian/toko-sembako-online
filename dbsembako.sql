-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2024 at 07:47 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsembako`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Dicky Agustian', 'admin123', 'c33367701511b4f6020ec61ded352059', '+628356870', 'Dicky01@gmail.com', 'Jl.polisi'),
(2, 'dicky', 'admin321', 'e10adc3949ba59abbe56e057f20f883e', '0852346235', 'dicky123@gmail.com', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(11, 'Telur'),
(12, 'Bawang Putih'),
(13, 'Bawang Merah'),
(14, 'Beras'),
(15, 'Cabe'),
(16, 'Bumbu Rayco'),
(17, 'Garam'),
(19, 'Sayur');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `date_created`) VALUES
(9, 17, 'Garam Cap Kapal', 18000, 'Harga Oke dan Berkualitas', 'produk1673208712.jpg', 1, '2023-01-08 20:11:52'),
(10, 16, 'Rayco Retengan', 20000, 'Harga murah dan Produk Berkualitas', 'produk1673215887.jpg', 1, '2023-01-08 20:13:15'),
(11, 15, 'Cabe Rawit', 12000, 'Bagus Dan Segar', 'produk1673208870.jpg', 1, '2023-01-08 20:14:30'),
(12, 14, 'Beras ', 90000, 'Di Jual kilo an dan produk bagus', 'produk1673216180.jpg', 1, '2023-01-08 20:15:24'),
(13, 13, 'Bawang Merah', 15000, 'Bagus dan Segar', 'produk1673208959.jpg', 1, '2023-01-08 20:15:59'),
(14, 12, 'Bawang Putih', 18000, 'Bagus dan Bersih', 'produk1673216046.jpg', 1, '2023-01-08 20:16:23'),
(15, 11, 'Telur ayam biasa', 60000, 'Bagus dan Segar', 'produk1673209022.jpg', 1, '2023-01-08 20:17:02'),
(16, 19, 'Sayur Kol', 12000, 'Segar dan Bersih', 'produk1673469522.jpg', 1, '2023-01-11 20:33:43'),
(17, 19, 'Kacang panjang', 3000, 'Bersih dan Segar', 'produk1673470745.jpg', 1, '2023-01-11 20:42:28'),
(18, 19, 'Kangkung', 5000, 'Segar dan Bersih', 'produk1673469918.jpg', 1, '2023-01-11 20:45:18'),
(19, 11, 'Telur Ayam kampung', 85000, 'Bagus dan Bersih', 'produk1673470396.jpg', 1, '2023-01-11 20:53:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
