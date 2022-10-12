-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2021 at 07:05 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `s.no` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`s.no`, `username`, `password`) VALUES
(2, 'ssri', 'd8578edf8458ce06fbc5bb76a58c5ca4');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s.no` int(11) NOT NULL,
  `name` text NOT NULL,
  `rollno` int(11) NOT NULL,
  `standard` int(1) NOT NULL,
  `branch` text NOT NULL,
  `pcon` bigint(12) NOT NULL,
  `city` text NOT NULL,
  `password` varchar(32) NOT NULL,
  `image` varbinary(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s.no`, `name`, `rollno`, `standard`, `branch`, `pcon`, `city`, `password`, `image`) VALUES
(1, 'sanskar srivastava', 126, 3, 'cse', 1111111111, 'Lucknow', '5da45d623d7b9116a547ee7ced4b204e', 0x494d475f32303139303631375f3232333032325f3737392e6a7067),
(3, 'sanskar srivastava', 2019021126, 3, 'computer science and engineering', 9140862568, 'Lucknow', '302c5ef7c3dbef20dbddb9961b08fc15', 0x73616e736b61725f737269766173746176612e6a7067),
(4, 'ss', 21126, 2, 'cs', 1234, 'lko', '8d2eee28cb5170c58b8e7c9a9a648a25', 0x32303230303631355f3030353930302e706e67),
(5, 'ssri', 11, 1, 'ccccc', 11111111, 'lko', '7bfc85c0d74ff05806e0b5a0fa0c1df1', 0x494d475f32303230313230315f3138353033372e6a7067);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`s.no`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s.no`),
  ADD UNIQUE KEY `rollno` (`rollno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `s.no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `s.no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
