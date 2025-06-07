-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 07, 2025 at 02:48 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_chatai`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int DEFAULT NULL,
  `profile_image` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id`, `name`, `email`, `password`, `role_id`, `profile_image`, `created_at`, `updated_at`) VALUES
(1, 'brams', 'user@gmail.com', '$2y$10$nUk20pWnVEZ43ZWg6NFTxuyzYzDlZimI1JkG64.uDJ9Dj8L9md6qq', 1, '', '2025-03-11 03:01:35', '2025-03-14 01:48:20'),
(2, 'Baliku', 'bali@gmail.com', '$2y$10$jL3Ww/bGjFVZ5fn0pYEZceG3SlGRny/zrncdGycUZzYbpEeoU/PxG', 1, '', '2025-03-17 02:56:30', '2025-03-17 03:18:47'),
(4, 'abraham', 'abrahamtambac@gmail.com', '$2y$10$W8ttSU7clvs0zBt7/5rFye4e.Z.FD2k29dQlsWBWQWFY7FTDiq2g2', 1, '67d798baa13cb-images (3).jpeg', '2025-03-17 03:18:00', '2025-03-17 03:36:26'),
(5, 'Rafi Yoga', 'rafiyoga123@gmail.com', '$2y$10$qeDGlT/h7blrB9yLHhD9yu/HwGhjTY/48BNW1qmi6SkNOeO1Suc6y', 1, '67d79b62b2a8e-i.png', '2025-03-17 03:42:47', '2025-03-17 03:47:46'),
(6, 'Dodi Sinaga', 'dodi@dodi.com', '$2y$10$v4TKZJP5ZF4UgTYDF3ijgeMNJp598yImUY0Rc7tm./uROYlZIsFWy', 1, NULL, '2025-05-18 23:55:08', '2025-05-18 23:55:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
