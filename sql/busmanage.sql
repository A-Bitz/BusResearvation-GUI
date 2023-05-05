-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2018 at 06:56 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `busmanage`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Username`, `Password`) VALUES
('Rahul', 'Rahul123'),
('Sourav', 'Sourav123');

-- --------------------------------------------------------

--
-- Table structure for table `bus_booking`
--

CREATE TABLE `bus_booking` (
  `User` varchar(30) NOT NULL,
  `Bus_No` varchar(30) NOT NULL,
  `Paid` int(200) NOT NULL,
  `Seats` int(100) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_booking`
--

INSERT INTO `bus_booking` (`User`, `Bus_No`, `Paid`, `Seats`, `Name`) VALUES
('Rahul', 'RJ01-0003', 300, 3, 'Rahul'),
('Rahul', 'RJ14-0333', 800, 2, 'Rahul'),
('Rahul', 'RJ07-0012', 1050, 3, 'Sourav'),
('Rahul', 'RJ01-0001', 150, 1, 'Yashpal'),
('Rahul', 'RJ14-0022', 700, 2, 'Rahul');

-- --------------------------------------------------------

--
-- Table structure for table `bus_detail`
--

CREATE TABLE `bus_detail` (
  `Bus_No` varchar(30) NOT NULL,
  `Source` varchar(30) NOT NULL,
  `Destination` varchar(30) NOT NULL,
  `Time` varchar(30) NOT NULL,
  `Price` int(30) NOT NULL,
  `Seats` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_detail`
--

INSERT INTO `bus_detail` (`Bus_No`, `Source`, `Destination`, `Time`, `Price`, `Seats`) VALUES
('RJ01-0001', 'Ajmer', 'Alwar', '07:00 AM', 150, 44),
('RJ01-0002', 'Ajmer', 'Bhilwara', '09:00 PM', 300, 50),
('RJ01-0101', 'Ajmer', 'Jaipur', '05:00 AM', 100, 37),
('RJ01-0004', 'Ajmer', 'Jaipur', '10:00 AM', 100, 50),
('RJ07-0010', 'Bikaner', 'Bhilwara', '09:00', 450, 45),
('RJ07-0012', 'Bikaner', 'Jaipur', '08:00 AM', 350, 47),
('RJ14-0022', 'Jaipur', 'Bikaner', '05:00 AM', 350, 43),
('RJ14-0333', 'Jaipur', 'Bikaner', '09:00 AM', 400, 38);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Name` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Gender` varchar(30) NOT NULL,
  `Category` varchar(30) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Name`, `Email`, `Gender`, `Category`, `Username`, `Password`) VALUES
('Rahul', 'rahulsharma349ur@gmail.com', 'Male', 'GENERAL', 'Rahul', 'Rahul123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
