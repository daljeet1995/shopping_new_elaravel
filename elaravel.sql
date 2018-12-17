-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 17, 2018 at 09:06 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_12_05_094328_create_tbl_admin_table', 1),
(2, '2018_12_06_055753_create_tbl_category_table', 2),
(3, '2018_12_07_132100_create_manufacture_table', 3),
(4, '2018_12_10_110540_create_tbl_products_table', 4),
(5, '2018_12_12_081715_create_tbl_slider_table', 5),
(6, '2018_12_14_061754_create_tbl_customer_table', 6),
(7, '2018_12_14_080620_create_tbl_shipping_table', 7),
(8, '2018_12_15_081437_create_tbl_payment_table', 8),
(9, '2018_12_15_081506_create_tbl_order_table', 8),
(10, '2018_12_15_081530_create_tbl_order_details_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'admin', 'admin', '123456', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(2) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Televisions', 'Tv<br>', 1, NULL, NULL),
(2, 'Camera', 'camera', 1, NULL, NULL),
(3, 'Mobile', 'Mobile', 1, NULL, NULL),
(4, 'women', 'women', 1, NULL, NULL),
(5, 'Men\'s', 'Men', 1, NULL, NULL),
(6, 'speaker', 'speaker', 1, NULL, NULL),
(7, 'Furniture', 'furniture', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `password`, `mobile_number`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9871407469', NULL, NULL),
(2, 'daljeet', 'daljeet@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9876543212', NULL, NULL),
(3, 'test', 'test@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9999999999', NULL, NULL),
(4, 'gan', 'gan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '123456', NULL, NULL),
(5, 'gan', 'admin@gmail.com', 'd28c0757869cfd936e43d03e10d09567', 'xcvcxv', NULL, NULL),
(6, 'lalit', 'lalit@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9876543212', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacture`
--

CREATE TABLE `tbl_manufacture` (
  `manufacture_id` int(10) UNSIGNED NOT NULL,
  `manufacture_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacture_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(2) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_manufacture`
--

INSERT INTO `tbl_manufacture` (`manufacture_id`, `manufacture_name`, `manufacture_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 'electronic<br>', 1, NULL, NULL),
(2, 'Suits', 'suits', 1, NULL, NULL),
(3, 'T-shirts', 'shirts', 1, NULL, NULL),
(4, 'Shoes', 'shoes', 1, NULL, NULL),
(5, 'Home, Kitchen', 'home', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `shipping_id` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, '25', '1', '25,000.00', 'pending', '2018-12-15 13:02:03', NULL),
(2, '25', '2', '25,000.00', 'pending', '2018-12-15 13:10:27', NULL),
(3, '26', '3', '10,000.00', 'pending', '2018-12-15 13:16:53', NULL),
(4, '28', '4', '2,000.00', 'pending', '2018-12-17 05:31:53', NULL),
(5, '29', '5', '10,000.00', 'pending', '2018-12-17 07:18:25', NULL),
(6, '29', '6', '0.00', 'pending', '2018-12-17 07:19:13', NULL),
(7, '29', '7', '0.00', 'pending', '2018-12-17 07:19:19', NULL),
(8, '29', '8', '0.00', 'pending', '2018-12-17 07:19:40', NULL),
(9, '29', '9', '0.00', 'pending', '2018-12-17 07:19:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 'Table', '5000', '5', NULL, NULL),
(2, 2, 8, 'Table', '5000', '5', NULL, NULL),
(3, 3, 8, 'Table', '5000', '2', NULL, NULL),
(4, 4, 5, 'Ladies', '1000', '2', NULL, NULL),
(5, 5, 8, 'Table', '5000', '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 'handcash', 'pending', '2018-12-15 13:02:03', NULL),
(2, 'handcash', 'pending', '2018-12-15 13:10:27', NULL),
(3, 'handcash', 'pending', '2018-12-15 13:16:53', NULL),
(4, 'handcash', 'pending', '2018-12-17 05:31:53', NULL),
(5, 'handcash', 'pending', '2018-12-17 07:18:25', NULL),
(6, 'handcash', 'pending', '2018-12-17 07:19:13', NULL),
(7, 'handcash', 'pending', '2018-12-17 07:19:19', NULL),
(8, 'handcash', 'pending', '2018-12-17 07:19:40', NULL),
(9, 'handcash', 'pending', '2018-12-17 07:19:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `manufacture_id` int(11) NOT NULL,
  `product_short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `category_id`, `manufacture_id`, `product_short_description`, `product_long_description`, `product_price`, `product_image`, `product_size`, `product_color`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Iphone 8', 4, 5, 'This is Apple Phone', 'This is Another Apple phone', '60,000', 'image/VEtfxR0gILvmIGScc2Lr.jpg', '4.8\' inc', 'red,blue,black', 1, NULL, NULL),
(2, 'Shirts', 1, 11, 'This is Shirts Product', 'This is another Product', '450', 'image/ZC7x0ybDX415uKDLJHWB.jpg', 'XXL', 'Brown', 1, NULL, NULL),
(3, 'Mens', 1, 11, 'This is Shirts', 'Anothe Shirts', '550', 'image/dBEIMRPrFCfmeX5XLIOA.jpg', 'XL', 'Green', 1, NULL, NULL),
(5, 'Ladies', 2, 12, 'This is Ladies Suits', 'This is Another Ladies Suits', '1000', 'image/XD7WQefVsyLFLSZJAMXL.jpg', 'Medium', 'Red', 1, NULL, NULL),
(6, 'shirts', 1, 11, 'Mens Shirts', 'Mens Shirts', '850', 'image/e6PUstMH1iH7UwCAi6W6.jpg', 'Double XXL', 'Grey', 1, NULL, NULL),
(7, 'Polo', 1, 11, 'Polo shirts', 'Polo shirts', '760', 'image/KsfDkCbGX4D6oIa2i3fp.jpg', 'XXL', 'Orange', 1, NULL, NULL),
(8, 'Table', 9, 13, 'Beautifull Wooden Table', 'Beautifull Wooden Table', '5000', 'image/QmGdPLuQVfFGmCHQ64Zt.jpg', '400\'inc', 'Brown, red', 1, NULL, NULL),
(9, 'Sony 80 cm', 1, 1, 'Resolution: HD Ready (1366x768p) | Refresh Rate: 50 hertz\r\nDisplay: Clear Resolution Enhancer\r\nConnectivity: 2 HDMI ports to connect set top box, Blu Ray players, gaming console | 1 USB port to connect hard drives and other USB devices\r\nSound: 20 Watts Output', 'Resolution: HD Ready (1366x768p) | Refresh Rate: 50 hertz\r\nDisplay: Clear Resolution Enhancer\r\nConnectivity: 2 HDMI ports to connect set top box, Blu Ray players, gaming console | 1 USB port to connect hard drives and other USB devices\r\nSound: 20 Watts Output', '20,990.00', 'image/UAiReHuxQfK7OzAMKz8b.jpg', '32 Inches', 'Black', 1, NULL, NULL),
(10, 'Canon EOS', 2, 1, '9-point AF with 1 centre cross-type AF point\r\nStandard ISO 100 - 6400 (expandable to 12800)\r\nWi-Fi / NFC supported\r\n24.1MP APS-C CMOS sensor', '9-point AF with 1 centre cross-type AF point\r\nStandard ISO 100 - 6400 (expandable to 12800)\r\nWi-Fi / NFC supported\r\n24.1MP APS-C CMOS sensor', '18,990.00', 'image/8JIPgSecbJPmENtq7LJO.jpg', '400\'inc', 'Black', 1, NULL, NULL),
(11, 'Redmi 6A (Black, 2GBRAM, 16GB Storage)', 3, 1, 'Camera: 13 MP Rear camera | 5 MP front camera\r\nDisplay: 13.84 centimetres (5.45-inch) HD+ display with 1440x720 pixels, 295 pixel density and 18:9 aspect ratio\r\nMemory, Storage & SIM: 2GB RAM | 16GB storage expandable up to 256GB with dedicated slot | Dual nano SIM with dual-standby (4G+4G)', 'Camera: 13 MP Rear camera | 5 MP front camera\r\nDisplay: 13.84 centimetres (5.45-inch) HD+ display with 1440x720 pixels, 295 pixel density and 18:9 aspect ratio\r\nMemory, Storage & SIM: 2GB RAM | 16GB storage expandable up to 256GB with dedicated slot | Dual nano SIM with dual-standby (4G+4G)', '5,999.00', 'image/Hfh33lSzl8qFiDeJCjGC.jpg', '5.45-inch', 'Black', 1, NULL, NULL),
(12, 'Salwar Suit', 4, 2, 'Care Instructions: Hand wash\r\nMaterial: Cotton\r\nhand wash\r\nEvening wear\r\nNumber of items: 3', 'Care Instructions: Hand wash\r\nMaterial: Cotton\r\nhand wash\r\nEvening wear\r\nNumber of items: 3', '749.00', 'image/MTYEoC10r4NIa1t15WSB.jpg', '5.45-inch', 'Brown, red', 1, NULL, NULL),
(13, 'Shits', 5, 3, 'Shirts', 'Shirts', '500', 'image/t4pG1fGm5Frr9wWQRWvq.jpg', 'Double XL', 'Brown, red,Green', 1, NULL, NULL),
(14, 'Maddy Premium', 5, 4, 'Closure Type: Lace-Up; Toe Style: Closed Toe\r\nMaterial: Synthetic Leather', 'Closure Type: Lace-Up; Toe Style: Closed Toe\r\nMaterial: Synthetic Leather', '599.00', 'image/OJKifVGvI5KeyYrxTK7l.jpg', '6,7,8,9', 'Multicolored', 1, NULL, NULL),
(15, 'Echo', 6, 1, 'Amazon Echo is a hands-free smart speaker that you control using your voice. It connects to Alexa – a cloud based voice service to play music, make calls, check weather and news, set alarms, control smart home devices, and much more.', 'Amazon Echo is a hands-free smart speaker that you control using your voice. It connects to Alexa – a cloud based voice service to play music, make calls, check weather and news, set alarms, control smart home devices, and much more.', '9,999.00', 'image/wgO4LW2Rfjv7fdpGIOjn.jpg', '400\'inc', 'Black', 1, NULL, NULL),
(16, 'Office Chair', 7, 5, 'Primary Material: Wood | Upholstery Material: Leatherette | Size: High Back | Color: Black & Tan\r\nThe dual color chair enables the chair to fit in easily with your office or home decor & looks very elegant.\r\nThe chair has extra padding on the seat, back and armrests for extra comfort', 'Primary Material: Wood | Upholstery Material: Leatherette | Size: High Back | Color: Black & Tan\r\nThe dual color chair enables the chair to fit in easily with your office or home decor & looks very elegant.\r\nThe chair has extra padding on the seat, back and armrests for extra comfort', '7,990.00', 'image/m6qRn0CvY7FRvdzKv2wE.jpg', '44.5 - 48 In', 'Brown, red', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_mobile_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_email`, `shipping_first_name`, `shipping_last_name`, `shipping_address`, `shipping_mobile_number`, `shipping_city`, `created_at`, `updated_at`) VALUES
(1, 'sdsff@gmail.com', 'sfsfsd', 'sdd', 'sdsf', '99888778', 'dgfdfdf', NULL, NULL),
(2, 'daljeet@gmail.com', 'daljeet', 'singh', 'delhi', '9871407469', 'delhi', NULL, NULL),
(3, 'technical@gmail.com', 'sfsd', 'dsfdsf', 'ssdf', '123133123', 'asdasdad', NULL, NULL),
(4, 'technical@gmail.com', 'sdsd', 'sdfs', 'sdfd', '1111122223333', 'dsfsdfsf', NULL, NULL),
(5, 'nanak@gmail.com', 'saff', 'ssa', 'dfadd', '9998887776', 'delhi', NULL, NULL),
(6, 'nanak@gmail.com', 'saff', 'ssa', 'dfadd', '9998887776', 'delhi', NULL, NULL),
(7, 'nanak@gmail.com', 'saff', 'ssa', 'dfadd', '9998887776', 'delhi', NULL, NULL),
(8, 'nanak@gmail.com', 'saff', 'ssa', 'dfadd', '9998887776', 'delhi', NULL, NULL),
(9, 'technical@gmail.com', 'dfdas', 'fsdfsds', 'dsfsd', 'dssdfs', 'dsfsdfs', NULL, NULL),
(10, 'technical@gmail.com', 'dssdfs', 'dsfdsf', 'sdfsd', 'dfsdfs', 'sdfsdfs', NULL, NULL),
(11, 'technical@gmail.com', 'dfs', 'sdfsd', 'fsd', 'sdfsd', 'sddsfsdf', NULL, NULL),
(12, 'technical@gmail.com', 'dssdfds', 'sdfdfdss', 'sfsfsd', 'sdfsdfs', 'sdsdf', NULL, NULL),
(13, 'sfsd@gmail.com', 'sdds', 'sdds', 'sdfd', '13123132', 'sdsfsd', NULL, NULL),
(14, 'sfsd@gmail.com', 'dsfsd', 'dfsdf', 'dfsdf', 'fsdfsdf', 'sdfsf', NULL, NULL),
(15, 'assads@gmail.com', 'addas', 'asdda', 'asdasa', 'adaas', 'sadasd', NULL, NULL),
(16, 'sfsd@gmail.com', 'addass', 'sdsd', 'fsdfsd', 'dsdf', 'sadasd', NULL, NULL),
(17, 'adf@gmail.com', 'sdfsf', 'dsfs', 'sdfdfsd', 'sdffsfsdf', 'sdfsdf', NULL, NULL),
(18, 'sfsd@gmail.com', 'ertetee', 'ereter', 'terter', 'erte', 'eert', NULL, NULL),
(19, 'sfsd@gmail.com', 'fsdfs', 'dsf', 'fsdfs', 'sdfds', 'sdfsd', NULL, NULL),
(20, 'sfsd@gmail.com', 'sdfsd', 'sdfs', 'sdfsf', 'dfsdsa', 'sfsdfs', NULL, NULL),
(21, 'technical@gmail.com', 'dsfsd', 'dssd', 'dsfsd', 'sdfsd', 'dsdf', NULL, NULL),
(22, 'sfsd@gmail.com', 'sdfs', 'sdfsd', 'sdsd', 'sdsdf', 'sdfsd', NULL, NULL),
(23, 'sfsd@gmail.com', 'dssdf', 'sdfsdf', 'dfss', 'fsdfsd', '123456', NULL, NULL),
(24, 'assads@gmail.com', 'sdffs', 'dsfs', 'sdfdsf', 'sdfds', 'dfsd', NULL, NULL),
(25, 'sfsd@gmail.com', 'sdfsd', 'sdfs', 'sdfsds', 'dsfs', 'sdfdf', NULL, NULL),
(26, 'sfsd@gmail.com', 'dfsdsd', 'dsfds', 'sdfsdf', 'sdfd', 'dsfsd', NULL, NULL),
(27, 'assads@gmail.com', 'dfsdf', 'sfdsf', 'dfsfsdfsf', 'sfsfsdfsd', 'sdfdsfsdfsd', NULL, NULL),
(28, 'sfsd@gmail.com', 'dssdf', 'sdfsd', 'fsdsd', '13123132', 'fsdsdfsd', NULL, NULL),
(29, 'sfsd@gmail.com', 'addas', 'dfsdf', 'asdasa', '13123132', 'sadasd', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(10) UNSIGNED NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(8, 'slider/hfJUpUbt5bhaMejm9YP9.jpg', '1', NULL, NULL),
(11, 'slider/yirQXZM6VxHtsvLmeIhk.jpg', '1', NULL, NULL),
(12, 'slider/OTAJAJTxJqgSDmQEmxgt.jpg', '1', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  ADD PRIMARY KEY (`manufacture_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  MODIFY `manufacture_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
