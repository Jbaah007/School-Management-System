-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 02:02 PM
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
-- Database: `bilal`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date` varchar(25) NOT NULL,
  `action` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(1, 'FRED.KODOM', '2021-07-14 12:34:18', 'Updated Student buel bol');

-- --------------------------------------------------------

--
-- Table structure for table `aprjun`
--

CREATE TABLE `aprjun` (
  `aprjun_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class` varchar(25) NOT NULL,
  `class_fee` int(11) NOT NULL,
  `status` varchar(25) NOT NULL,
  `status_fee` int(11) NOT NULL,
  `fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aprjun`
--

INSERT INTO `aprjun` (`aprjun_id`, `student_id`, `class`, `class_fee`, `status`, `status_fee`, `fee`) VALUES
(1, 1, 'Form 6', 250000, 'half', 125, 0),
(2, 2, 'Form 6', 250000, 'paying', 300, 250000);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `fee` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`, `category`, `fee`) VALUES
(1, 'CLASS FIVE', 'Primary', 250),
(2, 'CLASS SIX', 'Primary', 300),
(4, 'CLASS FOUR', 'Primary', 200),
(5, 'CLASS THREE', 'Primary', 150),
(6, 'CLASS TWO', 'Primary', 100),
(7, 'CLASS ONE', 'Primary', 50),
(8, 'JHS one', 'Junoir High School', 350),
(9, 'JHS two', 'Junoir High School', 400),
(10, 'JHS three', 'Junoir High School', 450);

-- --------------------------------------------------------

--
-- Table structure for table `janmar`
--

CREATE TABLE `janmar` (
  `janmar_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class` varchar(25) NOT NULL,
  `class_fee` int(11) NOT NULL,
  `status` varchar(25) NOT NULL,
  `status_fee` int(11) NOT NULL,
  `fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `janmar`
--

INSERT INTO `janmar` (`janmar_id`, `student_id`, `class`, `class_fee`, `status`, `status_fee`, `fee`) VALUES
(1, 1, 'Form 6', 250000, 'half', 125, 0),
(2, 2, 'Form 6', 250000, 'paying', 300, 250000);

-- --------------------------------------------------------

--
-- Table structure for table `julsep`
--

CREATE TABLE `julsep` (
  `julsep_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class` varchar(25) NOT NULL,
  `class_fee` int(11) NOT NULL,
  `status` varchar(25) NOT NULL,
  `status_fee` int(11) NOT NULL,
  `fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `julsep`
--

INSERT INTO `julsep` (`julsep_id`, `student_id`, `class`, `class_fee`, `status`, `status_fee`, `fee`) VALUES
(1, 1, 'Form 6', 250000, 'half', 125, 0),
(2, 2, 'Form 6', 250000, 'paying', 300, 300);

-- --------------------------------------------------------

--
-- Table structure for table `octdec`
--

CREATE TABLE `octdec` (
  `octdec_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class` varchar(25) NOT NULL,
  `class_fee` int(11) NOT NULL,
  `status` varchar(25) NOT NULL,
  `status_fee` int(11) NOT NULL,
  `fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `octdec`
--

INSERT INTO `octdec` (`octdec_id`, `student_id`, `class`, `class_fee`, `status`, `status_fee`, `fee`) VALUES
(1, 1, 'Form 6', 250000, 'half', 125, 0),
(2, 2, 'Form 6', 250000, 'paying', 300, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_made`
--

CREATE TABLE `payment_made` (
  `pay_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `period` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `date_of_payment` date NOT NULL,
  `receipt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_made`
--

INSERT INTO `payment_made` (`pay_id`, `student_id`, `period`, `amount`, `date_of_payment`, `receipt`) VALUES
(1, 2, 'janmar', 250000, '2016-10-24', 23444),
(2, 2, 'aprjun', 250000, '2016-10-24', 90909887),
(3, 2, 'julsep', 300, '2021-06-15', 2233);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `middlename` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `class` varchar(30) NOT NULL,
  `gfirstname` varchar(25) NOT NULL,
  `gmiddlename` varchar(25) NOT NULL,
  `glastname` varchar(25) NOT NULL,
  `rship` varchar(30) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `status` varchar(50) NOT NULL,
  `transport` varchar(60) NOT NULL,
  `route` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `firstname`, `middlename`, `lastname`, `gender`, `dob`, `address`, `class`, `gfirstname`, `gmiddlename`, `glastname`, `rship`, `tel`, `status`, `transport`, `route`) VALUES
(1, 'Paul ', 'Appiah', 'Frimpong', 'Male', '2010-11-25', 'H/no. 32541 Tanosso', 'CLASS FIVE', 'Mr.  Maxwel', 'M', 'Frimpong', 'Father', '0245654353', 'half', 'yes', 'Estate'),
(2, 'buel', 'bol', 'buel', 'Female', '2016-10-26', 'stonetown', 'CLASS SIX', 'bun', 'bol', 'buel', 'mother', '0717884452', 'paying', 'yes', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`, `status`) VALUES
(1, 'dada', '123', 'Dada', 'Mama', 'administrator'),
(2, 'mama', '123', 'Mama', 'Dada', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `login_date` varchar(50) NOT NULL,
  `logout_date` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(1, 'dada', '2021-08-12 11:57:26', '', 1),
(2, 'mama', '2021-08-12 11:58:26', '2021-08-12 12:01:17', 2),
(3, 'mama', '2021-08-12 12:00:02', '2021-08-12 12:01:17', 2),
(4, 'mama', '2021-08-12 12:01:23', '', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `aprjun`
--
ALTER TABLE `aprjun`
  ADD PRIMARY KEY (`aprjun_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `janmar`
--
ALTER TABLE `janmar`
  ADD PRIMARY KEY (`janmar_id`);

--
-- Indexes for table `julsep`
--
ALTER TABLE `julsep`
  ADD PRIMARY KEY (`julsep_id`);

--
-- Indexes for table `octdec`
--
ALTER TABLE `octdec`
  ADD PRIMARY KEY (`octdec_id`);

--
-- Indexes for table `payment_made`
--
ALTER TABLE `payment_made`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `aprjun`
--
ALTER TABLE `aprjun`
  MODIFY `aprjun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `janmar`
--
ALTER TABLE `janmar`
  MODIFY `janmar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `julsep`
--
ALTER TABLE `julsep`
  MODIFY `julsep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `octdec`
--
ALTER TABLE `octdec`
  MODIFY `octdec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_made`
--
ALTER TABLE `payment_made`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
