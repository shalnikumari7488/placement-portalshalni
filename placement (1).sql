-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2026 at 02:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `placement`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('ankitamam@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `applicationid` varchar(20) NOT NULL,
  `studentemail` varchar(20) NOT NULL,
  `studentname` varchar(20) NOT NULL,
  `companyid` varchar(20) NOT NULL,
  `companyemail` varchar(20) NOT NULL,
  `jobrole` varchar(20) NOT NULL,
  `applydate` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`applicationid`, `studentemail`, `studentname`, `companyid`, `companyemail`, `jobrole`, `applydate`, `status`) VALUES
('shalni123', 'shalni@gmail.com', 'shalni kumari', 'microsoft123', 'microsoft@gmail.com', 'software engineer', '2026-03-31', 'confirm');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `comname` varchar(20) NOT NULL,
  `companyemail` varchar(20) NOT NULL,
  `comid` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `uploadphoto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`comname`, `companyemail`, `comid`, `password`, `contact`, `city`, `state`, `uploadphoto`) VALUES
('microsoft', 'microsoft@gmail.com', 'microsoft123', '1234', '8988765645', 'banglore', 'karnataka', 'image/m.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `jobrole` varchar(20) NOT NULL,
  `jobdescription` varchar(20) NOT NULL,
  `eligibility` varchar(20) NOT NULL,
  `package` varchar(20) NOT NULL,
  `companyname` varchar(20) NOT NULL,
  `companyemail` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `last date` varchar(20) NOT NULL,
  `post date` varchar(20) NOT NULL,
  `photo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`jobrole`, `jobdescription`, `eligibility`, `package`, `companyname`, `companyemail`, `location`, `last date`, `post date`, `photo`) VALUES
('software engineer', 'Responsible for desi', 'BSC-CA/ B.TECH/MCA', '12,00,000 per annum', 'microsoft', 'microsoft@gmail.com', 'banglore/hyderabad', '2026-03-31', '2026-03-01', 'image/m.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(20) NOT NULL,
  `roll` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `department` varchar(20) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `photo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `roll`, `email`, `password`, `department`, `Contact`, `city`, `state`, `photo`) VALUES
('shalni kumari', '23BS58300356', 'shalni@gmail.com', '1234', 'BSC-CA', '1234567890', 'Ranchi', 'jharkhand', 'image/shalni.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
