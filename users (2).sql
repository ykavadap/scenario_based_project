-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 08:47 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `conflict`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(20) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(70) NOT NULL,
  `view` varchar(20) NOT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `approval` varchar(10) DEFAULT NULL,
  `reason` varchar(40) DEFAULT NULL,
  `position` varchar(20) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `password`, `view`, `user_type`, `approval`, `reason`, `position`, `company`) VALUES
('testuser', 'test@gmail.com', 'test123', '', 'admin', '1', 'testing purpose', NULL, NULL),
('test2', 'ykavadap@emich.edu', 'test123', 'conflict2', 'user', '1', NULL, NULL, NULL),
('test3', 'test3@gmail.com', 'test123', 'conflict3', 'user', '1', NULL, NULL, NULL),
('test4', 'test4@gmail.com', 'test123', 'conflict2', NULL, '0', NULL, NULL, NULL),
('test1', 'test1@gmail.com', 'test123', 'conflict1', 'user', '0', 'test', 'K12', 'emu');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
