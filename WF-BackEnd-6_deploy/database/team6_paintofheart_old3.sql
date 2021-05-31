-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 25, 2021 at 09:23 AM
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
-- Database: `backend`
--
CREATE DATABASE IF NOT EXISTS `team6_paintofheart` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `team6_paintofheart`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `catName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `catName`) VALUES
(8, 'Aluminum'),
(9, 'Brick'),
(12, 'computer'),
(4, 'Concrete'),
(5, 'Granite'),
(11, 'mobile'),
(1, 'Plastic'),
(10, 'Plexiglass'),
(6, 'Rubber'),
(3, 'Steel'),
(2, 'Stone'),
(7, 'Wood');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fk_category` int(11) NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `discount` int(3) NOT NULL DEFAULT 0,
  `visibility` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `fk_category`, `price`, `description`, `image`, `discount`, `visibility`) VALUES
(1, 'Green', 1, '48.41', '                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.                        ', '../pictures/0aaff4f959.jpg', 0, 1),
(2, 'Puce', 2, '72.09', '                            Sed ante. Vivamus tortor. Duis mattis egestas metus.                        ', '../pictures/e87aade07a.jpg', 0, 1),
(3, 'Crimson', 4, '58.95', '                            In congue. Etiam justo. Etiam pretium iaculis justo.                        ', '../pictures/a413c0e169.png', 0, 1),
(4, 'Green', 1, '53.67', '                            Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.                        ', '../pictures/ab2da6e4b2.jpg', 0, 1),
(5, 'Red', 5, '87.83', '                                                        In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.                                                ', '../pictures/3d542de3d1.png', 23, 1),
(6, 'Fuscia', 1, '11.81', '                            Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.                        ', '../pictures/c63d2e4730.png', 0, 1),
(7, 'Goldenrod', 2, '14.34', '                            Phasellus in felis. Donec semper sapien a libero. Nam dui.                        ', '../pictures/89cecb1ee1.png', 0, 1),
(8, 'Puce', 3, '91.05', '                            Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.                        ', '../pictures/4bb6951d47.jpg', 0, 1),
(9, 'Maroon', 10, '57.37', '                            Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.                        ', '../pictures/cea26d246c.png', 0, 1),
(10, 'Violet', 2, '20.51', '                            Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.                        ', '../pictures/91c9fb7b12.png', 54, 1),
(11, 'Green', 3, '61.52', '                            Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.                        ', '../pictures/97e81fa609.png', 0, 1),
(12, 'Goldenrod', 8, '14.35', '                            Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.                        ', '../pictures/d8c39990e8.jpg', 0, 1),
(13, 'Red', 9, '83.46', '                            Psshasellus in felis. Donec semper sapien a libero. Nam dui.                        ', '../pictures/48535095c0.jpg', 0, 1),
(15, 'Crimson', 7, '97.99', '                            Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.                        ', '../pictures/0f734f6c7d.jpg', 0, 1),
(16, 'Crimson', 5, '43.69', '                            Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.                        ', '../pictures/29e528c83a.jpg', 0, 1),
(17, 'Teal', 8, '57.93', '                                                        Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.                                                ', '../pictures/98ece10199.jpg', 78, 1),
(18, 'Green', 9, '22.81', '                            Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.                        ', '../pictures/5ae8f8b6f7.jpg', 0, 1),
(20, 'Yellow', 7, '95.88', '                                                                                    Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.                                                                        ', '../pictures/da80baf66e.jpg', 0, 1),
(77, 'samsung', 12, '221.00', '                            safdsfasdfasfasd                        ', '../pictures/65c76a48a1.jpg', 2, 1),
(108, 'rtrt', 12, '5454.00', 'sdfsdfsads', '../pictures/a2b6224c8d.jpg', 0, 1),
(109, 'terterter', 8, '343.00', 'sdfasdfasf', '../pictures/d1a0b7d034.jpg', 0, 1),
(111, 'HP Laptop', 12, '453.99', 'hello bangladesh ', '../pictures/839d16a5ee.jpg', 30, 1),
(112, 'test last', 11, '500.00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '../pictures/6233fe29b0.jpg', 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `fk_item_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `fk_item_id` int(11) NOT NULL,
  `review` text NOT NULL,
  `score` int(2) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `userId` int(250) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `userId`, `productId`, `productName`, `price`, `quantity`, `image`) VALUES
(147, 2, 109, 'terterter', '343.00', 1, '../pictures/d1a0b7d034.jpg'),
(148, 2, 112, 'test last', '400.00', 1, '../pictures/6233fe29b0.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `orderId` int(11) NOT NULL,
  `fk_userId` int(11) NOT NULL,
  `fk_productId` int(11) NOT NULL,
  `productName` varchar(250) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`orderId`, `fk_userId`, `fk_productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(32, 3, 111, 'HP Laptop', 1, '317.79', '../pictures/839d16a5ee.jpg', '2021-05-25 06:11:22', 2),
(33, 3, 77, 'samsung', 1, '216.58', '../pictures/65c76a48a1.jpg', '2021-05-25 06:18:09', 2),
(34, 3, 109, 'terterter', 3, '1029.00', '../pictures/d1a0b7d034.jpg', '2021-05-25 06:48:32', 1),
(35, 3, 111, 'HP Laptop', 1, '317.79', '../pictures/839d16a5ee.jpg', '2021-05-25 07:03:27', 1),
(36, 3, 111, 'HP Laptop', 2, '635.58', '../pictures/839d16a5ee.jpg', '2021-05-25 09:11:57', 2),
(37, 3, 17, 'Teal', 1, '12.74', '../pictures/98ece10199.jpg', '2021-05-25 09:11:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wish`
--

CREATE TABLE `tbl_wish` (
  `wishId` int(11) NOT NULL,
  `fk_userId` int(11) NOT NULL,
  `fk_productId` int(11) NOT NULL,
  `productName` varchar(250) NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_wish`
--

INSERT INTO `tbl_wish` (`wishId`, `fk_userId`, `fk_productId`, `productName`, `price`, `image`) VALUES
(43, 0, 10, 'Violet', '20.51', '../pictures/91c9fb7b12.png'),
(44, 0, 109, 'terterter', '343.00', '../pictures/d1a0b7d034.jpg'),
(45, 2, 109, 'terterter', '343.00', '../pictures/d1a0b7d034.jpg'),
(46, 2, 112, 'test last', '500.00', '../pictures/6233fe29b0.jpg'),
(47, 3, 112, 'test last', '500.00', '../pictures/6233fe29b0.jpg'),
(48, 3, 15, 'Crimson', '97.99', '../pictures/0f734f6c7d.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_state` int(1) NOT NULL DEFAULT 1,
  `user_level` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `f_name`, `l_name`, `address`, `email`, `password`, `user_state`, `user_level`) VALUES
(1, 'user', 'user', '35 Hanson Park', 'user0@user.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 1, 0),
(2, 'admin', 'admin', '140 Hermina Place', 'admin@admin.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 1, 1),
(3, 'abdulla', 'rakib', 'erlachn', 'rakib@gmail.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 1, 0),
(4, 'abi', 'abdulla', 'wien 1100 erlachgasse 12/14', 'abi@gmail.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`catName`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category` (`fk_category`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`fk_user_id`),
  ADD KEY `fk_item_id` (`fk_item_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`fk_user_id`),
  ADD KEY `fk_item_id` (`fk_item_id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `tbl_wish`
--
ALTER TABLE `tbl_wish`
  ADD PRIMARY KEY (`wishId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_wish`
--
ALTER TABLE `tbl_wish`
  MODIFY `wishId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`fk_category`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`fk_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `question_ibfk_2` FOREIGN KEY (`fk_item_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`fk_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`fk_item_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
