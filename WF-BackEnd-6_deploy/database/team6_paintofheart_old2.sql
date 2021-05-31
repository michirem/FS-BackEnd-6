-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2021 at 05:21 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `team6_paintofheart`
--
CREATE DATABASE IF NOT EXISTS `team6_paintofheart` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `team6_paintofheart`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `fk_item_id` int(11) NOT NULL,
  `quantity` int(20) NOT NULL,
  `tot_price` decimal(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(4, 'Concrete'),
(5, 'Granite'),
(1, 'Plastic'),
(10, 'Plexiglass'),
(6, 'Rubber'),
(3, 'Steel'),
(2, 'Stone'),
(7, 'Wood');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `fk_item_id` int(11) NOT NULL,
  `fk_order_register_id` int(11) NOT NULL,
  `quantity` int(20) NOT NULL,
  `tot_price` decimal(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `fk_user_id`, `fk_item_id`, `fk_order_register_id`, `quantity`, `tot_price`) VALUES
(1, 3, 5, 1, 5, '175.00'),
(2, 3, 3, 1, 1, '34.50'),
(3, 4, 12, 2, 3, '115.50'),
(4, 4, 18, 2, 2, '78.00'),
(5, 4, 10, 2, 5, '162.50'),
(6, 5, 9, 3, 3, '121.50'),
(7, 5, 3, 3, 4, '138.00'),
(8, 5, 7, 3, 2, '65.00'),
(9, 6, 20, 4, 3, '102.00'),
(10, 6, 9, 4, 2, '81.00'),
(11, 7, 20, 5, 5, '170.00'),
(12, 7, 13, 5, 1, '39.00'),
(13, 7, 12, 5, 5, '192.50'),
(14, 3, 9, 6, 3, '121.50'),
(15, 3, 3, 6, 4, '138.00'),
(16, 3, 7, 6, 2, '65.00'),
(17, 5, 20, 7, 5, '170.00'),
(18, 5, 13, 7, 1, '39.00'),
(19, 5, 12, 7, 5, '192.50');

-- --------------------------------------------------------

--
-- Table structure for table `order_register`
--

CREATE TABLE `order_register` (
  `id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `tot_price` decimal(20,2) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_register`
--

INSERT INTO `order_register` (`id`, `fk_user_id`, `tot_price`, `date`) VALUES
(1, 3, '209.50', '2020-04-14 12:45:00'),
(2, 4, '356.00', '2020-05-14 13:56:00'),
(3, 5, '324.50', '2020-06-14 21:57:00'),
(4, 6, '183.00', '2020-07-14 15:05:00'),
(5, 7, '401.50', '2020-08-14 10:06:00'),
(6, 3, '324.50', '2020-09-14 09:20:00'),
(7, 5, '401.50', '2020-10-14 20:47:00');

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
  `image` text NOT NULL DEFAULT '../pictures/product.png',
  `discount` int(3) NOT NULL DEFAULT 0,
  `visibility` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `fk_category`, `price`, `description`, `image`, `discount`, `visibility`) VALUES
(1, 'Aqua', 1, '31.00', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', '../pictures/b797b8b06f.png', 0, 1),
(2, 'Pink', 2, '32.50', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '../pictures/86511f09a2.png', 0, 1),
(3, 'Crimson', 4, '34.50', 'In congue. Etiam justo. Etiam pretium iaculis justo.', '../pictures/d1581ae59e.png', 0, 1),
(4, 'Pink', 3, '33.00', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', '../pictures/86511f09a2.png', 0, 1),
(5, 'Blue', 5, '35.00', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '../pictures/2da49c1e23.png', 0, 1),
(6, 'Cream', 1, '31.50', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', '../pictures/b421521a6a.png', 0, 1),
(7, 'Aqua', 2, '32.50', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '../pictures/b797b8b06f.png', 0, 1),
(8, 'Crimson', 3, '33.50', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', '../pictures/d1581ae59e.png', 0, 1),
(9, 'Blue', 10, '40.50', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '../pictures/2da49c1e23.png', 0, 1),
(10, 'Ivory', 2, '32.50', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '../pictures/80d6b32dfd.png', 0, 1),
(11, 'Crimson', 7, '37.00', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '../pictures/d1581ae59e.png', 0, 1),
(12, 'Teal', 8, '38.50', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '../pictures/ceb344ee46.png', 0, 1),
(13, 'Yellow', 9, '39.00', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '../pictures/0d3d80138b.png', 0, 1),
(14, 'Cream', 8, '38.50', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '../pictures/00deb67a9b.png', 0, 1),
(15, 'Orange', 7, '37.50', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '../pictures/690864da24.png', 0, 1),
(16, 'Cream', 5, '35.50', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '../pictures/00deb67a9b.png', 0, 1),
(17, 'Violet', 8, '38.50', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '../pictures/8c7c6eb4b2.png', 0, 1),
(18, 'Crimson', 9, '39.00', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '../pictures/d1581ae59e.png', 0, 1),
(19, 'Cream', 10, '40.50', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', '../pictures/00deb67a9b.png', 0, 1),
(20, 'Pink', 4, '34.00', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.                                                ', '../pictures/86511f09a2.png', 0, 1);

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
(2, 'anna', 'alex', '1 Hermina Place', 'admin@admin.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 1, 1),
(3, 'anna', 'alex', '1 Astrasse', 'usera@mail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 1, 0),
(4, 'bella', 'brian', '2 Bstrasse', 'userb@mail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 1, 0),
(5, 'carol', 'charlie', '3 Cstrasse', 'userc@mail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 1, 0),
(6, 'daisy', 'dean', '4 Dstrasse', 'userd@mail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 1, 0),
(7, 'emma', 'elias', '5 Estrasse', 'usere@mail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 1, 0),
(8, 'fanny', 'ferdinand', '1 Dstrasse', 'userf@mail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`fk_user_id`),
  ADD KEY `fk_item_id` (`fk_item_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`catName`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`fk_user_id`),
  ADD KEY `fk_item_id` (`fk_item_id`),
  ADD KEY `fk_order_register_id` (`fk_order_register_id`);

--
-- Indexes for table `order_register`
--
ALTER TABLE `order_register`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`fk_user_id`);

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
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `order_register`
--
ALTER TABLE `order_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

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
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`fk_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`fk_item_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`fk_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`fk_item_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`fk_order_register_id`) REFERENCES `order_register` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_register`
--
ALTER TABLE `order_register`
  ADD CONSTRAINT `order_register_ibfk_1` FOREIGN KEY (`fk_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
