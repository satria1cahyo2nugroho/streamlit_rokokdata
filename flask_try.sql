-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2023 at 11:58 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flask_try`
--

-- --------------------------------------------------------

--
-- Table structure for table `rokok`
--

CREATE TABLE `rokok` (
  `id` int(2) NOT NULL,
  `time` varchar(8) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `count` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rokok`
--

INSERT INTO `rokok` (`id`, `time`, `date`, `count`) VALUES
(1, '11:10:10', '20/01/2023', 1),
(2, '12:13:13', '21/01/2023', 14),
(3, '12:26:21', '21/01/2023', 12),
(4, '11:23:12', '10/02/2023', 10),
(5, '12:23:21', '12/02/2023', 20),
(6, '12:23:22', '12/02/2023', 5),
(7, '12:26:23', '12/02/2023', 15),
(8, '12:28:23', '12/02/2023', 14),
(9, '12:29:23', '12/02/2023', 20),
(10, '12:31:23', '12/02/2023', 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `password`) VALUES
(3, 'string', 'string123', 'pbkdf2:sha256:600000$l7YQb6OB6ypBwvHd$8e34dc69070ca8f9c7473585a46acc8001f99e1908ab5e6fa2faad95822f90cb'),
(4, 'string12', 'string12', 'pbkdf2:sha256:600000$AjVMCOgPLIZDjnB0$32c2e2da4bbc889d505d65ca0f2b540afbcee36e9818a082667d187592d43736'),
(5, 'test@gmail.com', 'test1', 'pbkdf2:sha256:600000$rCpzyOBuNqSftFYt$938fb8361c0168a2764659bed1f2fa5fa05836bab716f39e0428719086d3c456'),
(6, 'satria@gmail.com', 'aliza', 'pbkdf2:sha256:600000$MqdYf5f6kXdEEDCX$bd4ae16a9744c2bf56500905d613312912368d49d8b58420aa471219aec3c4d9'),
(7, 'aliza2@gnail.com', 'satria', 'pbkdf2:sha256:600000$cx5JHZlp9L4t2Zun$8d685964762561da743c9c59292847c6c7d60a79394b17dbf4b094cf21b0b8d0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rokok`
--
ALTER TABLE `rokok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rokok`
--
ALTER TABLE `rokok`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
