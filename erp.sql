-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2019 at 07:36 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `hsn_code` int(11) NOT NULL,
  `deleted` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `hsn_code`, `deleted`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(2, 'floppy disk', 4563839, 0, '2018-08-21 15:51:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(7, 'ram', 987654, 0, '2018-08-24 15:04:47', '2018-08-28 20:11:51', '0000-00-00 00:00:00', 1, 1, 0),
(8, 'RAM', 5627919, 1, '2018-08-24 15:06:35', '0000-00-00 00:00:00', '2018-08-24 17:11:07', 1, 0, 1),
(9, 'keyboard', 632521347, 0, '2018-09-18 20:01:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_contact` varchar(10) NOT NULL,
  `gst_no` varchar(255) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_address`, `customer_email`, `customer_contact`, `gst_no`, `deleted`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'puja', 'ulhasnagar', 'puja@gmail.com', '8038299579', '12', 1, '2018-09-04 18:55:49', '0000-00-00 00:00:00', '2018-09-04 20:03:43', 1, 0, 1),
(2, 'latika', 'mulund', 'latika123@gmail.com', '1234567890', '15', 1, '2018-09-04 18:57:19', '0000-00-00 00:00:00', '2018-09-04 20:08:56', 1, 0, 1),
(3, 'daksh', 'canada', 'daksh12@gmail.com', '654895202', '16', 0, '2018-09-04 20:05:43', '2018-09-04 20:25:34', '0000-00-00 00:00:00', 1, 1, 0),
(4, 'puja', 'ulhas5', 'juhi@gmail.com', '9876543210', '20', 0, '2018-09-04 20:06:04', '2018-09-04 20:34:16', '0000-00-00 00:00:00', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `employee_address` varchar(255) NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `employee_contact` varchar(10) NOT NULL,
  `employee_email` varchar(255) NOT NULL,
  `employee_password` varchar(255) NOT NULL,
  `employee_type` int(11) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_address`, `employee_name`, `employee_contact`, `employee_email`, `employee_password`, `employee_type`, `deleted`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'some huge villa,\r\nsome private road,\r\ncity abc', 'puja mahtani', '9172706633', 'pujamahtani@gmail.com', '$2y$10$Xu.2P4.5qCVmCvDxlFotiO9VaD4LzA4yvhoX5aBKRzq6D1tXZQ4xm', 1, 0, '2018-08-15 20:38:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gst`
--

CREATE TABLE `gst` (
  `hsn_code` int(11) NOT NULL,
  `gst_rate` float NOT NULL,
  `wef` date NOT NULL,
  `deleted` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gst`
--

INSERT INTO `gst` (`hsn_code`, `gst_rate`, `wef`, `deleted`, `created_at`, `deleted_at`, `updated_at`, `created_by`, `deleted_by`, `updated_by`) VALUES
(98765, 18, '2018-08-21', 0, '2018-08-21 15:58:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(345678, 15, '2018-08-02', 0, '2018-08-21 16:10:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0),
(987654, 14, '2018-08-24', 0, '2018-08-24 15:04:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(5627919, 20, '2018-08-24', 0, '2018-08-24 15:06:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(632521347, 12, '2018-09-18', 0, '2018-09-18 20:01:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `eoq` int(5) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sale_quantity` int(11) NOT NULL,
  `discount` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_mode`
--

CREATE TABLE `payment_mode` (
  `paymode` int(11) NOT NULL,
  `paymode_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `eoq` int(11) NOT NULL DEFAULT '0',
  `additional_specification` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `image_extension` varchar(255) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `eoq`, `additional_specification`, `category_id`, `image_extension`, `deleted`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'disc', 0, '5TB storage', 2, '', 0, '2018-09-11 21:32:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(2, 'disc', 0, '5TB storage', 2, '', 0, '2018-09-11 21:35:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(3, 'disc', 0, '5TB storage', 2, '', 0, '2018-09-11 21:35:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(4, 'disc', 0, '5TB storage', 2, '', 0, '2018-09-11 21:37:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(5, 'disc', 0, '5TB storage', 2, '', 1, '2018-09-11 21:39:28', '0000-00-00 00:00:00', '2018-09-18 19:35:28', 1, 0, 1),
(6, '32 gb ram', 2, 'ddfl', 7, 'jpg', 0, '2018-09-17 12:25:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(7, 'hard disk', 3, '2Tb ', 2, 'jpg', 1, '2018-09-18 19:58:38', '0000-00-00 00:00:00', '2018-09-18 19:59:00', 1, 0, 1),
(8, 'keyboard', 1, 'wireless', 9, 'jpg', 0, '2018-09-18 20:03:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(9, 'LG desktop', 2, '', 0, '', 0, '2019-01-21 13:39:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0),
(10, 'LG desktop', 2, '', 0, '', 0, '2019-01-22 17:19:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0),
(11, 'LG desktop', 2, '', 0, '', 0, '2019-01-29 21:25:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0),
(12, 'LG desktop', 2, '', 0, '', 0, '2019-01-29 21:25:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0),
(13, 'LG desktop', 2, '', 0, '', 0, '2019-01-29 21:25:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0),
(14, 'LG desktop', 2, '', 0, '', 0, '2019-02-05 18:47:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0),
(15, 'LG desktop', 2, '', 0, '', 0, '2019-02-05 18:48:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_sale_rate`
--

CREATE TABLE `product_sale_rate` (
  `product_id` int(11) NOT NULL,
  `rate_of_sale` float NOT NULL,
  `wef` date NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_sale_rate`
--

INSERT INTO `product_sale_rate` (`product_id`, `rate_of_sale`, `wef`, `deleted`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(5, 14, '2018-09-11', 1, '2018-09-11 21:39:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(6, 43, '2018-09-17', 0, '2018-09-17 12:25:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(7, 200, '2018-09-18', 1, '2018-09-18 19:58:38', '0000-00-00 00:00:00', '2018-09-18 19:59:00', 1, 0, 1),
(8, 150, '2018-09-18', 0, '2018-09-18 20:03:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_supplier`
--

CREATE TABLE `product_supplier` (
  `product_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_supplier`
--

INSERT INTO `product_supplier` (`product_id`, `supplier_id`) VALUES
(5, 2),
(6, 2),
(7, 3),
(8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchase_id` int(11) NOT NULL,
  `date_of_purchase` date NOT NULL,
  `gst_type` int(1) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_product`
--

CREATE TABLE `purchase_product` (
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rate_of_purchase` int(11) NOT NULL,
  `quantity_purchased` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_supplier`
--

CREATE TABLE `purchase_supplier` (
  `purchase_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `employee_type` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `access_rights` text NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date_of_sale` date NOT NULL,
  `invoice_details` text NOT NULL,
  `employee_id` int(11) NOT NULL,
  `paymode` int(11) NOT NULL,
  `cheque_number` int(11) NOT NULL,
  `cheque_date` date NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `gst_type` int(11) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `currency_append_mode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `supplier_address` text NOT NULL,
  `supplier_contact` varchar(10) NOT NULL,
  `supplier_email` varchar(255) NOT NULL,
  `gst_no` varchar(255) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_name`, `supplier_address`, `supplier_contact`, `supplier_email`, `gst_no`, `deleted`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'microsoft', 'dadar', '876534809', 'microsoft@gmail.com', '534', 1, '2018-09-04 20:47:50', '0000-00-00 00:00:00', '2018-09-04 21:04:55', 1, 0, 1),
(2, 'intel', 'kharghar', '1234567876', 'intel34@gmail.com', '345', 0, '2018-09-04 21:05:54', '2018-09-04 21:07:00', '0000-00-00 00:00:00', 1, 1, 0),
(3, 'microsoft', 'dadar', '9874635263', 'microsoft@gmail.com', '675', 0, '2018-09-04 21:06:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(4, 'google', 'thane', '7652129876', 'google12@gmail.com', '456', 0, '2018-09-17 10:19:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `gst`
--
ALTER TABLE `gst`
  ADD PRIMARY KEY (`hsn_code`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`sale_id`,`product_id`);

--
-- Indexes for table `payment_mode`
--
ALTER TABLE `payment_mode`
  ADD PRIMARY KEY (`paymode`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_sale_rate`
--
ALTER TABLE `product_sale_rate`
  ADD PRIMARY KEY (`product_id`,`wef`);

--
-- Indexes for table `product_supplier`
--
ALTER TABLE `product_supplier`
  ADD PRIMARY KEY (`product_id`,`supplier_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `purchase_product`
--
ALTER TABLE `purchase_product`
  ADD PRIMARY KEY (`purchase_id`,`product_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`employee_type`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_mode`
--
ALTER TABLE `payment_mode`
  MODIFY `paymode` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `employee_type` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
