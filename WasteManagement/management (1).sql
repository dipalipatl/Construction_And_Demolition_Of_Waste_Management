-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2022 at 12:57 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `management`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`) VALUES
('dipalivrpatil@gmail.com', '123'),
('yuk@gmail.com', '12345'),
('yuk@gmail.com', '12345'),
('sunil@gmail.com', '123456'),
('tanu@gmail.com', '749815');

-- --------------------------------------------------------

--
-- Table structure for table `requestcnd`
--

CREATE TABLE IF NOT EXISTS `requestcnd` (
  `address` varchar(60) NOT NULL,
`number` int(20) NOT NULL,
  `title` varchar(70) NOT NULL,
  `description` varchar(70) NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=124 ;

--
-- Dumping data for table `requestcnd`
--

INSERT INTO `requestcnd` (`address`, `number`, `title`, `description`, `status`) VALUES
('pqr', 123, 'raise request', 'cnd requirement', 'approve');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE IF NOT EXISTS `signup` (
  `name` varchar(40) NOT NULL,
  `mobile` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `profession` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`name`, `mobile`, `email`, `password`, `profession`, `address`) VALUES
('yukta', '8888781558', 'yukta@gmail.com', '12345', 'student', 'deshmukh nagar'),
('antara', '8888781558', 'antara@gmail.com', '12345', 'student', 'shivaji nagar'),
('neha', '8888781558', 'neha@gmail.com', '12345', 'student', 'shivaji nagar'),
('tanya', '1234567890', 'tanya@gmail.com', '123456', 'student', '55,deshmukh nagar, chopda.'),
('yukta', '8888781558', 'yukta@gmail.com', '12345', 'student', 'deshmukh nagar'),
('antara', '8888781558', 'antara@gmail.com', '12345', 'student', 'shivaji nagar'),
('neha', '8888781558', 'neha@gmail.com', '12345', 'student', 'shivaji nagar'),
('chetana', '7558557217', 'chetanaborse335@gmail.com', '4567', 'student', 'takli,Chalisgaon'),
('jhxg', '1234567890', 'tanu@gmail.com', '7498', 'student', 'takli,Chalisgaon'),
('edc@ghj', '7410', 'tanu@gmail.com', '7498', 'student', 'takli,Chalisgaon'),
('csa', '1234567890', 'tanu@gmail.com', '12345', 'student', 'takli,Chalisgaon'),
('yukta', '1234567890', 'tanu@gmail.com', '12345', 'student', 'takli,Chalisgaon'),
('yukta', '7558557217', 'chetanaborse335@gmail.com', '12345', 'student', 'takli,Chalisgaon'),
('sunil', '7558557217', 'yuk@gmail.com', '12345', 'student', 'takli,Chalisgaon'),
('yukta', '7558557217', 'yuk@gmail.com', '12345', 'student', 'takli,Chalisgaon'),
('user', '456', 'user@gmail.com', '123', 'worker', 'pqr'),
('yukta', '8888781558', 'yukta@gmail.com', '12345', 'student', 'deshmukh nagar'),
('antara', '8888781558', 'antara@gmail.com', '12345', 'student', 'shivaji nagar'),
('neha', '8888781558', 'neha@gmail.com', '12345', 'student', 'shivaji nagar'),
('tanya', '1234567890', 'tanya@gmail.com', '123456', 'student', '55,deshmukh nagar, chopda.'),
('yukta', '8888781558', 'yukta@gmail.com', '12345', 'student', 'deshmukh nagar'),
('antara', '8888781558', 'antara@gmail.com', '12345', 'student', 'shivaji nagar'),
('neha', '8888781558', 'neha@gmail.com', '12345', 'student', 'shivaji nagar'),
('chetana', '7558557217', 'chetanaborse335@gmail.com', '4567', 'student', 'takli,Chalisgaon'),
('jhxg', '1234567890', 'tanu@gmail.com', '7498', 'student', 'takli,Chalisgaon'),
('edc@ghj', '7410', 'tanu@gmail.com', '7498', 'student', 'takli,Chalisgaon'),
('csa', '1234567890', 'tanu@gmail.com', '12345', 'student', 'takli,Chalisgaon'),
('yukta', '1234567890', 'tanu@gmail.com', '12345', 'student', 'takli,Chalisgaon'),
('yukta', '7558557217', 'chetanaborse335@gmail.com', '12345', 'student', 'takli,Chalisgaon'),
('sunil', '7558557217', 'yuk@gmail.com', '12345', 'student', 'takli,Chalisgaon'),
('yukta', '7558557217', 'yuk@gmail.com', '12345', 'student', 'takli,Chalisgaon');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE IF NOT EXISTS `userlogin` (
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`email`, `password`) VALUES
('yukta@gmail.com', '12345'),
('yukta@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE IF NOT EXISTS `vehicle` (
  `number` int(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `mobile` varchar(40) NOT NULL,
  `latitude` varchar(40) NOT NULL,
  `longitude` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`number`, `name`, `mobile`, `latitude`, `longitude`) VALUES
(777, 'driver1', '789', '1', '2'),
(890, 'Ankita', '7558557217', '3456', '870'),
(2001, 'Tanu', '7498153249', '0.0', '0.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `requestcnd`
--
ALTER TABLE `requestcnd`
 ADD PRIMARY KEY (`number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `requestcnd`
--
ALTER TABLE `requestcnd`
MODIFY `number` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=124;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
