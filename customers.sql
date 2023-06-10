-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2023 at 05:54 PM
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
-- Database: `pagination`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` int(255) NOT NULL,
  `address` varchar(60) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `mobile`, `address`, `created_at`) VALUES
(1, 'alia', 188765574, 'mirpur', '2023-06-09 14:29:21'),
(2, 'shorifa', 187655575, 'mirpur 1', '2023-06-09 14:30:40'),
(3, 'santo', 1767674656, 'dhanmondi', '2023-06-09 14:31:50'),
(4, 'Abul hasaan', 18565767, 'Dhaka', '2023-06-09 14:34:09'),
(5, 'Shahara sultana', 165364857, 'Bogura', '2023-06-09 14:34:55'),
(6, 'Afsana', 1787834546, 'dhanmondi', '2023-06-09 14:42:40'),
(7, 'Shohag hasan', 1676334632, 'Balupara', '2023-06-09 14:43:31'),
(8, 'Alom khan', 167464756, 'Feni', '2023-06-09 14:47:43'),
(9, 'Afroza Khan', 146733887, 'Dhaka', '2023-06-09 14:48:28'),
(10, 'Juli Akter', 197465565, 'Kazipara', '2023-06-09 14:51:26'),
(11, 'Sabnaz ', 16454747, 'Panthopath', '2023-06-09 14:56:18'),
(12, 'Allu Arjun', 156786737, 'gazipur', '2023-06-09 14:57:25'),
(13, 'Sritoma akter', 154676767, 'Bosundhara', '2023-06-09 15:05:59'),
(14, 'Bristy', 178475757, 'Azimpur', '2023-06-09 15:07:28'),
(15, 'Suvra Sultana', 1676763744, 'Gazipur', '2023-06-09 15:08:04'),
(16, 'Mou Akter', 178737543, 'Gamtoli', '2023-06-09 15:09:04'),
(17, 'Meherun Nahar', 1673778282, 'Coxbazar', '2023-06-09 15:09:47'),
(18, 'Afrina yeamin', 174873465, 'Mirzapur', '2023-06-09 15:11:14'),
(19, 'Kajol ', 1674775676, 'Mirpur 13', '2023-06-09 15:12:31'),
(20, 'Sakia', 178584843, 'Magura', '2023-06-09 15:12:31'),
(21, 'Tania ', 155654665, 'Magura', '2023-06-09 15:14:41'),
(22, 'Monira', 189989898, 'Magura', '2023-06-09 15:14:41'),
(23, 'Hasina', 136757678, 'shewrapara', '2023-06-09 15:15:47'),
(24, 'Mujahid', 1673578658, 'Bonani', '2023-06-09 15:15:47'),
(25, 'Rafi Hasan', 178785445, 'mymensign', '2023-06-09 15:21:19'),
(26, 'Mizanur Rahman', 178788474, 'sylhet', '2023-06-09 15:21:19'),
(27, 'Nasir', 175785445, 'mymensign', '2023-06-09 15:23:06'),
(28, ' Rahman', 170788474, 'sylhet', '2023-06-09 15:23:06'),
(29, 'Mimi', 178785415, 'mymensign', '2023-06-09 15:25:18'),
(30, 'Mizanur Rahman', 178788474, 'sylhet', '2023-06-09 15:25:18'),
(31, 'Rimi Hasan', 178785425, 'mymensign', '2023-06-09 15:25:18'),
(32, 'Mizanur Rahman', 178788474, 'sylhet', '2023-06-09 15:25:18'),
(33, 'Mimi', 178785415, 'mymensign', '2023-06-09 15:25:56'),
(34, 'Mizanur Rahman', 178788474, 'sylhet', '2023-06-09 15:25:56'),
(35, 'Rimi Hasan', 178785425, 'mymensign', '2023-06-09 15:25:56'),
(36, 'Mizanur Rahman', 178788474, 'sylhet', '2023-06-09 15:25:56'),
(37, 'Sanvee Hasan', 178785445, 'mymensign', '2023-06-09 15:25:56'),
(38, 'Minara Rahman', 1787884674, 'sylhet', '2023-06-09 15:25:56'),
(39, 'Aysha', 1787834545, 'Pabna', '2023-06-09 15:34:22'),
(40, 'Akira Rahman', 178788474, 'Bihar', '2023-06-09 15:34:22'),
(41, 'Rafiya Hasan', 178785445, 'Sathmatha', '2023-06-09 15:34:22'),
(42, 'Susmita Rahman', 178788474, 'Baghergat', '2023-06-09 15:34:22'),
(43, 'Rafsin Hasan', 178785445, 'Santahar', '2023-06-09 15:34:22'),
(44, 'Mita Rahman', 178788474, 'khulna', '2023-06-09 15:34:22'),
(45, 'Runa Hasan', 178785445, 'Nosimpur', '2023-06-09 15:34:22'),
(46, 'Mitu Rahman', 178788474, 'Rnagamati', '2023-06-09 15:34:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
