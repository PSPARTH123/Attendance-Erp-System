-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 19, 2023 at 08:32 PM
-- Server version: 8.0.33
-- PHP Version: 7.4.3-4ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_009`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `ctn` int NOT NULL,
  `outgoing_msg_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `msga` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`ctn`, `outgoing_msg_id`, `fname`, `msga`, `time`) VALUES
(1, '259070971', 'neha', 'hii', '2023-04-16 20:38:18'),
(2, '259070971', 'neha', 'hii', '2023-04-16 20:38:30'),
(3, '259070971', 'neha', 'hii', '2023-04-16 20:38:39'),
(4, '1350339017', 'Trupti', 'Ccnhtr', '2023-04-17 02:35:06'),
(5, '259070971', 'neha', 'GOOD MORNING STUDENTS TODAY  LEC IS CANCEL', '2023-04-17 10:43:15'),
(6, '259070971', 'neha', 'GOOD MORNING STUDENTS TODAY  LEC IS CANCEL', '2023-04-17 10:43:36'),
(7, '259070971', 'neha', 'GOOD MORNING STUDENTS TODAY  LEC IS CANCEL', '2023-04-17 10:43:45'),
(8, '259070971', 'neha', 'GOOD MORNING STUDENTS TODAY  LEC IS CANCEL', '2023-04-17 10:43:45'),
(9, '259070971', 'neha', 'GOOD MORNING STUDENTS TODAY  LEC IS CANCEL', '2023-04-17 10:43:51'),
(10, '259070971', 'neha', 'GOOD MORNING STUDENTS TODAY  LEC IS CANCEL', '2023-04-17 10:43:52'),
(11, '259070971', 'neha', 'GOOD MORNING STUDENTS TODAY  LEC IS CANCEL', '2023-04-17 10:43:59'),
(12, '259070971', 'neha', 'GOOD MORNING STUDENTS TODAY  LEC IS CANCEL', '2023-04-17 10:44:01');

-- --------------------------------------------------------

--
-- Table structure for table `bee`
--

CREATE TABLE `bee` (
  `Rollno` int NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `L1` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `L2` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent',
  `L3` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent',
  `L4` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent',
  `L5` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent',
  `L6` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bee`
--

INSERT INTO `bee` (`Rollno`, `Name`, `L1`, `L2`, `L3`, `L4`, `L5`, `L6`) VALUES
(0, 'Timestamp', '', '22Mar2023 16:04', '22Mar2023 16:04', '22Mar2023 16:04', '22Mar2023 16:04', '22Mar2023 16:59'),
(1, 'mayank', '', 'beemayank', 'present', 'present', 'absent', 'Present'),
(2, 'Chandan', '', 'beechandan', 'present', 'present', 'absent', 'Present'),
(3, 'Omkar', '', 'absent', 'present', 'present', 'absent', 'Present'),
(4, 'parth', '', 'absent', '1', 'absent', 'absent', 'absent');

-- --------------------------------------------------------

--
-- Table structure for table `chemistry`
--

CREATE TABLE `chemistry` (
  `Rollno` int NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `L1` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `L2` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent',
  `L3` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent',
  `L4` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent',
  `L5` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent',
  `L6` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chemistry`
--

INSERT INTO `chemistry` (`Rollno`, `Name`, `L1`, `L2`, `L3`, `L4`, `L5`, `L6`) VALUES
(0, 'Timestamp', '', '22Mar2023 16:04', '22Mar2023 16:04', '22Mar2023 16:04', '22Mar2023 16:04', '22Mar2023 16:59'),
(1, 'Mayank', '', 'absent', 'pdsgsgent', 'pdsgsgent', 'absent', 'Present'),
(2, 'Chandan', '', 'absent', 'present', 'present', 'absent', 'Present'),
(3, 'Omkar', '', 'absent', 'pdsgsgent', 'pdsgsgent', 'absent', 'Present'),
(4, 'Parth', '', 'absent', '1', 'absent', 'absent', 'absent');

-- --------------------------------------------------------

--
-- Table structure for table `ema`
--

CREATE TABLE `ema` (
  `Rollno` int NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `L1` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `L2` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent',
  `L3` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent',
  `L4` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent',
  `L5` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent',
  `L6` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ema`
--

INSERT INTO `ema` (`Rollno`, `Name`, `L1`, `L2`, `L3`, `L4`, `L5`, `L6`) VALUES
(0, 'Timestamp', '', '22Mar2023 16:04', '22Mar2023 16:04', '22Mar2023 16:04', '22Mar2023 16:04', '22Mar2023 16:59'),
(1, 'Mayank', '', 'present', 'present', 'present', 'absent', 'Present'),
(2, 'Chandan', '', 'absent', 'present', 'present', 'absent', 'Present'),
(3, 'Omkar', '', 'absent', 'present', 'present', 'absent', 'Present'),
(4, 'Parth', '', 'absent', '1', 'absent', 'absent', 'absent');

-- --------------------------------------------------------

--
-- Table structure for table `maths`
--

CREATE TABLE `maths` (
  `Rollno` int NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `L1` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `L2` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent',
  `L3` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent',
  `L4` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent',
  `L5` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent',
  `L6` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent',
  `L7` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent',
  `L8` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maths`
--

INSERT INTO `maths` (`Rollno`, `Name`, `L1`, `L2`, `L3`, `L4`, `L5`, `L6`, `L7`, `L8`) VALUES
(0, 'Timestamp', '', '22Mar2023 16:04', '22Mar2023 16:04', '22Mar2023 16:04', '22Mar2023 16:04', '22Mar2023 16:59', '17Apr2023 17:33', '17Apr2023 17:34'),
(1, 'Mayank', '', 'mathsmayank', 'present', 'present', 'absent', 'Present', 'absent', 'absent'),
(2, 'Chandan', '', 'mathschandan', 'present', 'present', 'absent', 'Present', 'Present', 'Present'),
(3, 'Omkar', '', 'absent', 'present', 'present', 'absent', 'Present', 'Present', 'Present'),
(4, 'Parth', '', 'absent', 'supergenius', 'absent', 'absent', 'LEGEND', 'absent', 'absent');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int NOT NULL,
  `incoming_msg_id` int NOT NULL,
  `outgoing_msg_id` int NOT NULL,
  `title` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `title`, `msg`) VALUES
(1, 1203712896, 259070971, '', 'hii maam'),
(2, 259070971, 1285546011, 'Hi neha', 'Nehaa uii'),
(3, 1186927015, 1285546011, 'leave application', 'i want leave for tommorrow lecture');

-- --------------------------------------------------------

--
-- Table structure for table `physics`
--

CREATE TABLE `physics` (
  `Rollno` int NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `L1` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `L2` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent',
  `L3` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent',
  `L4` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent',
  `L5` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent',
  `L6` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'absent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `physics`
--

INSERT INTO `physics` (`Rollno`, `Name`, `L1`, `L2`, `L3`, `L4`, `L5`, `L6`) VALUES
(0, 'Timestamp', '', '22Mar2023 16:04', '22Mar2023 16:04', '22Mar2023 16:04', '22Mar2023 16:04', '22Mar2023 16:59'),
(1, 'Mayank', '', 'absent', 'present', 'present', 'absent', 'Present'),
(2, 'Chandan', '', 'absent', 'present', 'present', 'absent', 'Present'),
(3, 'Omkar', '', 'absent', 'present', 'present', 'absent', 'Present'),
(4, 'Parth', '', 'absent', '1', 'absent', 'absent', 'absent');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `unique_id` int NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `role`, `status`) VALUES
(1, 1203712896, 'parth', 'mhatre', 'parth@gmail.com', '6db012f325716c8c81d88f23dc0d3302', '1681555273Screenshot (8).png', 'Student', 'Active now'),
(2, 1285546011, 'mayank', 'patil', 'mayank@gmail.com', '84c97fd7e6b98e7cedde337bece1328e', '1681555420Screenshot (9).png', 'Student', 'Active now'),
(3, 259070971, 'neha', 'gharat', 'neha@gmail.com', '3fede54cd3cf786471ca20e4d40d9b8c', '1681555965My Signature.jpg', 'Faculty', 'Offline now'),
(4, 1186927015, 'Mayur', 'Gohil', 'mayur@gmail.com', 'fedd5a126bd8f361b5a2e390e7f6ca8d', '1681571117Screenshot (19).png', 'Faculty', 'Offline now'),
(5, 1350339017, 'Trupti', 'Shah', 'trupti@gmail.com', '7cc84d54084c4261af7ca6db45e4e8b7', '1681571176Screenshot (21).png', 'Faculty', 'Active now'),
(6, 971442209, 'Sandhya', 'Supalkar', 'sandhya@gmail.com', 'cb282719af10c31e4333aca533886f91', '1681571236Screenshot (32).png', 'Faculty', 'Offline now'),
(7, 1165989134, 'Shraddha', 'Gosavi', 'shraddha@gmail.com', '47a572830a364c411f34f90ec3496677', '1681571295Screenshot (78).png', 'Faculty', 'Offline now'),
(8, 598307472, 'Chandan', 'Thakur', 'Chandan@gmail.com', '41c57a8dc328de9b57ff5ec61b3817a9', '1681575756IMG_20230415_123107.jpg', 'Student', 'Active now'),
(9, 851875558, 'thor', 'stark', 'thor@gmail.com', '3d5aec7ae189a9ba64624ac7e64a375a', '1681628697Screenshot (9).png', 'Student', 'Active now'),
(10, 123260539, 'levi', 'achreman', 'levi@gmail.com', '3d9541b51b8c6dd4e263c98dce9e7320', '1681673775Biology.png', 'Faculty', 'Active now');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`ctn`);

--
-- Indexes for table `bee`
--
ALTER TABLE `bee`
  ADD PRIMARY KEY (`Rollno`);

--
-- Indexes for table `maths`
--
ALTER TABLE `maths`
  ADD PRIMARY KEY (`Rollno`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `ctn` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
