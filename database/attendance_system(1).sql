-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 07, 2014 at 07:05 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `attendance_system`
--
CREATE DATABASE IF NOT EXISTS `attendance_system` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `attendance_system`;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `AttID` int(20) NOT NULL AUTO_INCREMENT,
  `EmpID` int(10) NOT NULL,
  `Prensent` int(1) NOT NULL,
  `AttDate` date NOT NULL,
  PRIMARY KEY (`AttID`),
  KEY `EmpID` (`EmpID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1590 ;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`AttID`, `EmpID`, `Prensent`, `AttDate`) VALUES
(1495, 23, 1, '2013-05-23'),
(1496, 23, 1, '2014-06-20'),
(1499, 23, 1, '2014-07-01'),
(1502, 23, 1, '2014-07-02'),
(1505, 23, 1, '2014-07-03'),
(1508, 23, 1, '2014-08-11'),
(1510, 23, 1, '2014-08-14'),
(1511, 26, 1, '2014-08-14'),
(1512, 23, 1, '2014-08-13'),
(1515, 26, 1, '2014-08-13'),
(1516, 23, 1, '2014-06-05'),
(1519, 26, 1, '2014-06-05'),
(1520, 23, 1, '2014-06-04'),
(1523, 26, 1, '2014-06-04'),
(1524, 23, 1, '2014-06-03'),
(1527, 26, 1, '2014-06-03'),
(1528, 23, 1, '2014-06-17'),
(1531, 26, 1, '2014-06-17'),
(1532, 23, 1, '2014-06-18'),
(1533, 26, 1, '2014-06-18'),
(1534, 23, 1, '2014-06-21'),
(1537, 26, 1, '2014-06-21'),
(1538, 27, 1, '2014-08-19'),
(1540, 26, 1, '2014-08-19'),
(1547, 23, 1, '2014-11-04'),
(1549, 26, 1, '2014-11-04'),
(1558, 27, 1, '2014-11-05'),
(1560, 29, 1, '2014-11-05'),
(1561, 28, 1, '2014-11-05'),
(1562, 23, 1, '2014-11-05'),
(1564, 26, 1, '2014-11-05'),
(1574, 27, 1, '2014-11-01'),
(1575, 32, 1, '2014-11-01'),
(1576, 34, 1, '2014-11-01'),
(1577, 28, 1, '2014-11-01'),
(1578, 26, 1, '2014-11-01'),
(1579, 33, 1, '2014-11-01'),
(1580, 27, 1, '2014-11-07'),
(1581, 32, 1, '2014-11-07'),
(1582, 31, 1, '2014-11-07'),
(1583, 34, 1, '2014-11-07'),
(1584, 29, 1, '2014-11-07'),
(1585, 28, 1, '2014-11-07'),
(1586, 35, 1, '2014-11-07'),
(1587, 23, 1, '2014-11-07'),
(1588, 26, 1, '2014-11-07'),
(1589, 33, 1, '2014-11-07');

-- --------------------------------------------------------

--
-- Table structure for table `employee_detail`
--

CREATE TABLE IF NOT EXISTS `employee_detail` (
  `EmpID` int(10) NOT NULL AUTO_INCREMENT,
  `EmpName` varchar(255) NOT NULL,
  `EmpAddress` text NOT NULL,
  `EmpMobile` varchar(15) NOT NULL,
  `EmpEmail` varchar(50) NOT NULL,
  `EmpBirthdate` date NOT NULL,
  `EmpBloodGroup` varchar(5) NOT NULL,
  `EmpTechnology` varchar(20) NOT NULL,
  PRIMARY KEY (`EmpID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `employee_detail`
--

INSERT INTO `employee_detail` (`EmpID`, `EmpName`, `EmpAddress`, `EmpMobile`, `EmpEmail`, `EmpBirthdate`, `EmpBloodGroup`, `EmpTechnology`) VALUES
(23, 'Morrison Laju', 'Abuja', '9426666226', 'mor@mor.com', '2013-05-23', 'A-', 'cpt'),
(26, 'DR MUSA', 'minna', '08069213941', 'an@we.com', '2014-08-03', 'A+', 'cme'),
(27, 'Elijah Abolaji', 'bosso', '0803344567', 'fut@gmail.com', '2000-02-02', 'B+', 'others'),
(28, 'Blessing Chukwu', 'Tudun Fulani', '08028433366', 'bb@bb.com', '1987-11-01', 'B+', 'cpt'),
(29, 'Usman Ohagenyi', 'Bosso Dam', '09023467543', 'usman@gmail.com', '1995-02-02', 'AB+', 'css'),
(31, 'Tosin Komolafe', 'NO. 32 GIDAN KWANO', '08099456783', 'tosin@er.com', '1997-11-06', 'B-', 'imt'),
(32, 'Oluwatoyin Adisa', 'Bosso Road', '08012345678', 'toyin@gmail.com', '1995-05-01', 'B+', 'others'),
(33, 'Ismail Kabiru', 'SMS lodge Gidan Kwano', '08028455566', 'kabir@yahoo.com', '1988-03-05', 'AB+', 'cme'),
(34, 'Thomas Messi', 'Kpakungu', '09034567892', 'tmessi@gmail.com', '1997-06-09', 'B-', 'css'),
(35, 'Chinedu Emordi', 'Gidan Kwano', '08033445566', 'chinex@yahoo.com', '1988-05-03', 'AB+', 'cpt');

-- --------------------------------------------------------

--
-- Table structure for table `increment_detail`
--

CREATE TABLE IF NOT EXISTS `increment_detail` (
  `IncID` int(20) NOT NULL AUTO_INCREMENT,
  `EmpID` int(20) NOT NULL,
  `Salary` int(20) NOT NULL,
  `IncrementDate` date NOT NULL,
  PRIMARY KEY (`IncID`),
  KEY `EmpID` (`EmpID`),
  KEY `EmpID_2` (`EmpID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `increment_detail`
--

INSERT INTO `increment_detail` (`IncID`, `EmpID`, `Salary`, `IncrementDate`) VALUES
(1, 23, 600, '2014-10-01'),
(2, 26, 1000, '2014-09-01'),
(3, 26, 1500, '2014-10-01'),
(4, 27, 300, '2014-11-02'),
(5, 26, 2200, '2014-11-01');

-- --------------------------------------------------------

--
-- Table structure for table `salary_detail`
--

CREATE TABLE IF NOT EXISTS `salary_detail` (
  `SalaryID` int(20) NOT NULL AUTO_INCREMENT,
  `EmpID` int(20) NOT NULL,
  `JoinDate` date NOT NULL,
  `EmpType` varchar(20) NOT NULL,
  `CurrentSalary` int(10) NOT NULL,
  `IncrementAmount` int(10) NOT NULL,
  `IncrementAfter` int(5) NOT NULL,
  `IncrementDate` date NOT NULL,
  `LastSalary` int(10) NOT NULL,
  `LastIncrement` date NOT NULL,
  PRIMARY KEY (`SalaryID`),
  KEY `EmpID` (`EmpID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `salary_detail`
--

INSERT INTO `salary_detail` (`SalaryID`, `EmpID`, `JoinDate`, `EmpType`, `CurrentSalary`, `IncrementAmount`, `IncrementAfter`, `IncrementDate`, `LastSalary`, `LastIncrement`) VALUES
(2, 26, '2014-03-04', 'employee', 2500, 300, 1, '2014-12-01', 2200, '2014-11-01'),
(3, 29, '2014-10-01', 'cordinator', 200, 50, 2, '2015-01-01', 200, '2014-11-01'),
(4, 27, '2014-09-01', 'employee', 400, 100, 1, '2014-12-02', 300, '2014-11-02'),
(5, 33, '2014-11-05', 'designer', 15000, 1000, 3, '2015-02-05', 15000, '2014-11-01'),
(6, 35, '2014-11-07', 'maintenance', 5000, 500, 4, '2015-03-07', 5000, '2014-11-01');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `UserID` int(10) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`UserID`),
  KEY `UserID` (`UserID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `UserName`, `Password`) VALUES
(2, 'admin', 'admin');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`EmpID`) REFERENCES `employee_detail` (`EmpID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `increment_detail`
--
ALTER TABLE `increment_detail`
  ADD CONSTRAINT `increment_detail_ibfk_1` FOREIGN KEY (`EmpID`) REFERENCES `employee_detail` (`EmpID`) ON DELETE CASCADE;

--
-- Constraints for table `salary_detail`
--
ALTER TABLE `salary_detail`
  ADD CONSTRAINT `salary_detail_ibfk_1` FOREIGN KEY (`EmpID`) REFERENCES `employee_detail` (`EmpID`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
