-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2023 at 12:08 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventaris_aset`
--

-- --------------------------------------------------------

--
-- Table structure for table `asset_transaction`
--

CREATE TABLE `asset_transaction` (
  `transaction_id` int(11) NOT NULL,
  `asset_id` int(11) DEFAULT NULL,
  `transaction_type` varchar(50) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `transaction_amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_asset`
--

CREATE TABLE `master_asset` (
  `asset_id` int(11) NOT NULL,
  `asset_name` varchar(255) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(10,2) DEFAULT NULL,
  `current_value` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_asset_category`
--

CREATE TABLE `master_asset_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asset_transaction`
--
ALTER TABLE `asset_transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `asset_id` (`asset_id`);

--
-- Indexes for table `master_asset`
--
ALTER TABLE `master_asset`
  ADD PRIMARY KEY (`asset_id`);

--
-- Indexes for table `master_asset_category`
--
ALTER TABLE `master_asset_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `asset_transaction`
--
ALTER TABLE `asset_transaction`
  ADD CONSTRAINT `asset_transaction_ibfk_1` FOREIGN KEY (`asset_id`) REFERENCES `master_asset` (`asset_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
