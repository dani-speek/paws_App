-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 31, 2016 at 02:12 PM
-- Server version: 5.6.12
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `PAWS`
--
CREATE DATABASE IF NOT EXISTS `PAWS` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `PAWS`;

-- --------------------------------------------------------

--
-- Table structure for table `tbEvents`
--

CREATE TABLE IF NOT EXISTS `tbEvents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbEvents`
--

INSERT INTO `tbEvents` (`id`, `name`, `description`, `date`, `image`) VALUES
(1, '1', '1', '1', '/Events/mainLogo.png'),
(2, 'Doge Day', 'Such wow, much party, come check it out!', '2020-12-02', '../Events/doge.jpg'),
(3, 'Just another Day', 'Dubble much wow!', '2016-09-07', '/Events/doge.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbUsers`
--

CREATE TABLE IF NOT EXISTS `tbUsers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `surname` varchar(150) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(8) NOT NULL,
  `type` varchar(100) NOT NULL,
  `profilepic` varchar(100) NOT NULL,
  `event` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbUsers`
--

INSERT INTO `tbUsers` (`id`, `name`, `surname`, `dob`, `email`, `password`, `type`, `profilepic`, `event`) VALUES
(4, 'Adolf Weich', 'Malan', '1993-02-21', 'weich14.malan@gmail.com', 'e2d5cd0', 'Admin', 'Profile_Pics/4_adolfweich_malan.jpeg', 1),
(5, 'Bruce', 'Wayne', '0000-00-00', 'batman@yahoo.com', '019bfd9', 'User', '', 0),
(7, 'Emma', 'Watson', '1989-12-02', 'emma@hogwarts.com', '874cd13', 'User', '', 0),
(8, 'Harley', 'Quinzel', '0001-01-01', 'haha@hotmail.com', '1ac31aa', 'User', '', 0),
(9, 'Joker', 'Haha', '2001-10-16', 'haha@joke.com', '0ffe1ab', 'User', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbNews`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbnews`
--

CREATE TABLE IF NOT EXISTS `tbnews` (
  `ID` smallint(5) unsigned NOT NULL,
  `headline` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `story` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbnews`
--
ALTER TABLE `tbnews`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbnews`
--
ALTER TABLE `tbnews`
  MODIFY `ID` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


INSERT INTO `tbNews` (`id`, `headline`, `story`, `name`, `email`) VALUES
(1, 'Successful Doge Day', 'we had a very sucessful doge day. It was great loved it.', 'Dani', 'dani@paws.org'),
(2, 'Donations: New Kennels Incoming', 'Such wow, much party, come check it out!', 'Dani', 'dani@paws.org');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
