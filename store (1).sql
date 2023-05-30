-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-server
-- Generation Time: May 06, 2023 at 12:54 PM
-- Server version: 8.0.19
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE orders
(
  id INT PRIMARY KEY AUTO_INCREMENT,
  order_date DATETIME,
  product_id INT,
  quantity INT,
  customer_id INT
);
--
-- Dumping data for table `order`
--
INSERT INTO orders (order_date, product_id, quality, customer_id)
  VALUES
  ('2009-08-15 12:20:20', '1', '2', '123'),
  ('2009-08-15 12:20:20', '2', '2', '123'),
  ('2009-08-17 16:43:09', '1', '1', '456'),
  ('2009-08-18 09:21:43', '1', '5', '789'),
  ('2009-08-18 14:23:11', '3', '7', '123'),
  ('2009-08-21 08:34:21', '1', '1', '456');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `price` int NOT NULL,
  `stock` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `price`, `stock`) VALUES
(1, 23, 1),
(2, 23, 2),
(3, 23, 30);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--


--
-- Indexes for table `order`
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order`
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
