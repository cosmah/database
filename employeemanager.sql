-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2023 at 11:11 AM
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
-- Database: `employeemanager`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `employee_code` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `email`, `employee_code`, `image_url`, `job_title`, `name`, `phone`) VALUES
(1, 'jacfrost06@gmail.com', 'b8772706-5f9a-40d0-849f-9cc26ef2c940', 'https://bootday.com/img/Content/avatar1.png', 'Software Engineer', 'Ssekirya Cosmah', '708153467'),
(2, 'alice.smith@example.com', '1cfab9a1-66b2-45ca-847a-04272c9621c9', 'https://example.com/alicesmith.jpg', 'Product Manager', 'Alice Smith', '555-234-5678'),
(52, 'emily.davis@example.com', '4a2da33a-6cd1-47a3-bb72-c4a06162709d', 'https://example.com/emilydavis.jpg', 'Marketing Specialist', 'Emily Davis', '555-456-7890'),
(53, 'michael.wilson@example.com', 'fff2f665-9199-4902-8af2-ea9da0b32782', 'https://example.com/michaelwilson.jpg', 'Financial Analyst', 'Michael Wilson', '555-567-8901'),
(54, 'bob.johnson@example.com', '8bf764ae-4471-4f7b-87f6-d3e2a0245f02', 'https://example.com/bobjohnson.jpg', 'Data Scientist', 'Bob Johnson', '555-345-6789');

-- --------------------------------------------------------

--
-- Table structure for table `employee_seq`
--

CREATE TABLE `employee_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_seq`
--

INSERT INTO `employee_seq` (`next_val`) VALUES
(151);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `birth_day` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `birth_day`) VALUES
(1, 'test1@test.com', '2000-01-02'),
(2, 'test2@test.com', '2000-01-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
