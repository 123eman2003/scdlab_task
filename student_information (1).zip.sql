-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2023 at 06:32 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_information`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseid` int(11) NOT NULL,
  `coursetitle` varchar(50) NOT NULL,
  `coursecredithrs` int(11) NOT NULL,
  `courseteacher` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseid`, `coursetitle`, `coursecredithrs`, `courseteacher`) VALUES
(111, 'Database', 3, 'Mr. Usman'),
(222, 'Discrete', 3, 'Ms. Nida Tasneem'),
(333, 'Linear Algebra', 3, 'Mr. Khalid'),
(444, 'OOP', 3, 'Ms. Nousheen Mazhar'),
(555, 'Economics', 2, 'Ms. Sidra');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fathername` varchar(50) NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` char(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `username`, `password`, `name`, `fathername`, `dob`, `gender`, `contact`, `email`) VALUES
(1, '101', 'tasbiha101', 'Tasbiha', 'Sohail', '2001-01-14', 'female', '03365784025', 'tasbiha@gmail.com'),
(2, '081', 'hammad081', 'Hammad', 'Aslam', '2000-09-15', 'male', '03341234672', 'hammad@gmail.com'),
(3, '091', 'nadeem091', 'Nadeem', 'Israr', '2002-12-30', 'Male', '03085172362', 'nadeem@gmail.com'),
(6, '096', 'mahnoor096', 'Mahnoor', 'Zohaib', '2000-12-26', 'Female', '03347654190', 'mahnoor@gmail.com'),
(7, '098', 'ayyan098', 'Ayyan', 'Abbas', '2001-12-31', 'Male', '03337461132', 'ayyan@gmail.com'),
(9, '099', 'sehar099', 'Sehar', 'Ali', '2000-12-26', 'Female', '03335461231', 'sehar@gmail.com'),
(10, '100', 'noman100', 'Noman', 'Ejaz', '2001-12-31', 'Male', '03025318962', 'noman@gmail.com'),
(11, '093', 'sarmad093', 'Sarmad', 'Tariq', '2002-12-30', 'Male', '03348145678', 'sarmad@gmail.com'),
(12, '097', 'shanial097', 'Shanial', 'Tahir', '2000-12-26', 'Female', '03215387981', 'shanial@gmail.com'),
(13, '082', 'hasnat082', 'Hasnat', 'Shahzad', '2000-12-26', 'Male', '03085132269', 'hasnat@gmail.com'),
(15, '083', 'wahid083', 'Wahid', 'Farooq', '2000-12-26', 'Male', '03325268319', 'wahid@gmail.com'),
(18, '50', 'hamna050', 'Hamna', 'Sohail', '2022-11-04', 'Female', '54783689000', 'hamna42@gmail.com'),
(19, '75', 'ali075', 'Ali', 'Hassan', '2022-11-10', 'Male', '56778821933', 'ali345@gmail.com'),
(20, '55', 'ahmad055', 'Ahmad', 'Shakeel', '2001-01-09', 'Male', '03362578923', 'ahmad@gmail.com'),
(21, '59', 'musa059', 'Musa', 'Sohail', '2002-12-30', 'Male', '09752464792', 'musa@gmail.com'),
(22, '45', 'hamza045', 'Hamza', 'Tariq', '2003-12-29', 'Male', '97465034567', 'hamzat@gmail.com'),
(23, '35', 'uzair035', 'Uzair', 'Haib', '2000-12-26', 'Male', '09356478890', 'uzair@gmail.com'),
(25, '20', 'urwa020', 'Urwa', 'Sohail', '2000-12-26', 'Female', '09766554444', 'urwa@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `student_course`
--

CREATE TABLE `student_course` (
  `st_cr_id` int(11) DEFAULT NULL,
  `cr_st_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_course`
--

INSERT INTO `student_course` (`st_cr_id`, `cr_st_id`) VALUES
(NULL, 111),
(NULL, 555),
(1, 111),
(1, 444),
(1, 333),
(13, 111),
(NULL, 111),
(NULL, 222),
(15, 222),
(15, 333),
(15, 444),
(15, 555),
(2, 222),
(3, 111),
(3, 555),
(NULL, 444),
(NULL, 333),
(2, 444),
(2, 555),
(NULL, 222),
(NULL, 444),
(18, 333),
(18, 444),
(19, 111),
(19, 222),
(19, 333),
(NULL, 111),
(NULL, 111),
(NULL, 111),
(20, 111),
(20, 222),
(21, 111),
(21, 222),
(22, 444),
(22, 555),
(23, 111),
(23, 222),
(23, 333),
(23, 444),
(23, 555),
(NULL, 333),
(NULL, 444),
(NULL, 555),
(10, 111),
(25, 222),
(25, 333),
(25, 444);

-- --------------------------------------------------------

--
-- Table structure for table `st_marks`
--

CREATE TABLE `st_marks` (
  `st_id` int(50) DEFAULT NULL,
  `cr_id` int(50) DEFAULT NULL,
  `marks` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `st_marks`
--

INSERT INTO `st_marks` (`st_id`, `cr_id`, `marks`) VALUES
(NULL, 111, '89'),
(15, 222, '57'),
(13, 111, '68'),
(3, 111, '78'),
(19, 111, '56'),
(20, 111, '90'),
(13, 111, '78'),
(3, 111, '89'),
(1, 111, '67'),
(21, 111, '67'),
(20, 111, '89'),
(20, 111, '89'),
(13, 111, '78'),
(15, 222, '80'),
(15, 222, '80'),
(15, 222, '80'),
(15, 222, '80'),
(15, 222, '80'),
(15, 222, '80'),
(15, 222, '80'),
(15, 222, '67'),
(15, 222, '67'),
(15, 222, '67'),
(15, 222, '67'),
(1, 111, '56'),
(2, 222, '89'),
(2, 222, '89'),
(2, 222, '89'),
(1, 333, '89'),
(1, 333, '89'),
(1, 333, '89'),
(1, 333, '89'),
(1, 333, '89'),
(15, 222, '67'),
(1, 333, '99'),
(15, 333, '79'),
(25, 444, '67'),
(19, 222, '90'),
(21, 111, '78'),
(15, 222, '76'),
(10, 111, '89');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `Tname` varchar(50) NOT NULL,
  `Tusername` varchar(50) NOT NULL,
  `Tpassword` varchar(50) NOT NULL,
  `Tcourse` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`Tname`, `Tusername`, `Tpassword`, `Tcourse`) VALUES
('Mr. Usman', 'Usman', 'usman111', 'Database'),
('Ms. Nida Tasneem', 'Nida', 'nida222', 'Discrete'),
('Mr. Khalid', 'Khalid', 'khalid333', 'Linear Algebra'),
('Ms. Nousheen Mazhar', 'Nousheen', 'nousheen444', 'OOP'),
('Ms. Sidra', 'Sidra', 'sidra555', 'Economics');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_course`
--
ALTER TABLE `student_course`
  ADD KEY `crst` (`cr_st_id`),
  ADD KEY `stst` (`st_cr_id`);

--
-- Indexes for table `st_marks`
--
ALTER TABLE `st_marks`
  ADD KEY `fstid` (`st_id`),
  ADD KEY `fcrid` (`cr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_course`
--
ALTER TABLE `student_course`
  ADD CONSTRAINT `crst` FOREIGN KEY (`cr_st_id`) REFERENCES `course` (`courseid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `stst` FOREIGN KEY (`st_cr_id`) REFERENCES `student` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `st_marks`
--
ALTER TABLE `st_marks`
  ADD CONSTRAINT `fcrid` FOREIGN KEY (`cr_id`) REFERENCES `course` (`courseid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fstid` FOREIGN KEY (`st_id`) REFERENCES `student` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
