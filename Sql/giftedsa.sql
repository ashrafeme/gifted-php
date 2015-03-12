-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2015 at 08:27 PM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `giftedsa`
--

-- --------------------------------------------------------

--
-- Table structure for table `UserData`
--

CREATE TABLE IF NOT EXISTS `UserData` (
  `UserId` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(150) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `password_hash` text NOT NULL,
  `MobileNumber` varchar(16) NOT NULL,
  `ReceiveSMS` tinyint(1) NOT NULL,
  `UserRole` varchar(25) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdatedDate` datetime NOT NULL,
  `api_key` varchar(32) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `EmailUnique` (`Email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `UserData`
--

INSERT INTO `UserData` (`UserId`, `FullName`, `Email`, `password_hash`, `MobileNumber`, `ReceiveSMS`, `UserRole`, `CreateDate`, `UpdatedDate`, `api_key`, `status`) VALUES
(1, 'Ashraf Ezzat', 'ashrafe@hasaedu.info', '$2a$10$53db0d00cd6a8830eef39uPKSpR.fO53NUlAwFFkcU.dC8HNS1l3a', '0554014371', 1, 'admin', '2015-02-28 15:32:31', '2015-02-28 15:32:31', '6353a7ea159222dee0d9c9224d052be4', 1),
(2, 'dsfsdf', 'sdfsfd@sdfsd.com', '$2a$10$beae3fe43e2b9e369a0b9OpoVMXfnTtb/WWJwzmFUKZZM6s1U4Vyu', '0554014371', 1, 'user', '2015-03-11 16:55:23', '2015-03-11 16:55:23', 'bc05533df4986e19355b2593c1841e01', 1),
(3, 'fsdfsfdsfsdf', 'ashrafeeee@hotmail.com', '$2a$10$3a95019ac9814c2298bceuTczE1nVFzNs1BRAYKjPA.nHuHKk5P3a', '0554014371', 0, 'user', '2015-03-11 17:51:55', '2015-03-11 17:51:55', 'aac9653979bf683f59051c91bac24922', 1),
(4, 'ashraf', 'ashrafemm@hasaedu.info', '$2a$10$d2909bf576870a52531eau8MaHjmNSAe8k8NLgmgFWRWTOKZc6XJ2', '554014371', 0, 'user', '2015-03-11 18:31:40', '2015-03-11 18:31:40', '8bb56452bacc4639b856af027dfc17f2', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
