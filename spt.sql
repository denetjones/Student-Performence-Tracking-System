-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 06, 2025 at 02:35 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spt`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
CREATE TABLE IF NOT EXISTS `admin_login` (
  `admin_email` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_email`, `admin_password`) VALUES
('admin@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `stud_id` int NOT NULL,
  `sub_id` varchar(255) NOT NULL,
  `month` varchar(9) NOT NULL,
  `total` int NOT NULL,
  `attendance` int NOT NULL,
  PRIMARY KEY (`stud_id`,`sub_id`,`month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`stud_id`, `sub_id`, `month`, `total`, `attendance`) VALUES
(15, '300', 'April', 20, 15),
(17, '300', 'February', 45, 12),
(17, '300', 'September', 52, 50),
(34, '54', 'January', 23, 5),
(34, '56', 'August', 54, 43),
(34, '56', 'January', 23, 13),
(34, '56', 'March', 14, 3),
(34, '56', 'November', 56, 67),
(34, '76', 'January', 54, 43);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE IF NOT EXISTS `contact_us` (
  `email` varchar(255) NOT NULL,
  `subject` varchar(10) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
CREATE TABLE IF NOT EXISTS `result` (
  `stud_id` int NOT NULL,
  `sub_id` varchar(255) NOT NULL,
  `month` varchar(9) NOT NULL,
  `total` int NOT NULL,
  `marks` int NOT NULL,
  PRIMARY KEY (`stud_id`,`sub_id`,`month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`stud_id`, `sub_id`, `month`, `total`, `marks`) VALUES
(34, '56', 'January', 100, 56),
(34, '76', 'January', 100, 78),
(43, '56', 'May', 100, 87),
(45, '56', 'May', 100, 65),
(76, '56', 'November', 100, 67);

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

DROP TABLE IF EXISTS `student_login`;
CREATE TABLE IF NOT EXISTS `student_login` (
  `stud_id` int NOT NULL,
  `stud_name` varchar(255) NOT NULL,
  `stud_year` int NOT NULL,
  `stud_sem` int NOT NULL,
  `stud_dept` varchar(20) NOT NULL,
  `stud_phno` int NOT NULL,
  `stud_email` varchar(255) NOT NULL,
  `stud_password` varchar(255) NOT NULL,
  PRIMARY KEY (`stud_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student_login`
--

INSERT INTO `student_login` (`stud_id`, `stud_name`, `stud_year`, `stud_sem`, `stud_dept`, `stud_phno`, `stud_email`, `stud_password`) VALUES
(41, 'suman', 4, 8, 'cse', 1234567890, 'abc@gmail.com', '123456789'),
(4, 'abc', 4, 4, 'cse', 1234567890, 'abcd@gmail.com', '123456'),
(17, 'Anwesha Chakraborty', 4, 8, 'CSE', 2147483647, 'anwesha@gmail.com', '12345six'),
(110, 'MuTamizh', 3, 6, 'CS', 2147483647, 'muthu@gmail.com', 'muthumuthu');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_login`
--

DROP TABLE IF EXISTS `teacher_login`;
CREATE TABLE IF NOT EXISTS `teacher_login` (
  `t_name` varchar(255) NOT NULL,
  `sub_id` varchar(10) NOT NULL,
  `sub_name` varchar(255) NOT NULL,
  `t_phno` int NOT NULL,
  `t_email` varchar(255) NOT NULL,
  `t_password` varchar(255) NOT NULL,
  PRIMARY KEY (`t_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `teacher_login`
--

INSERT INTO `teacher_login` (`t_name`, `sub_id`, `sub_name`, `t_phno`, `t_email`, `t_password`) VALUES
('a', '1', 'abc', 123, 'a@a', '123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
