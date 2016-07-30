-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2016 at 10:20 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `swift_entry`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
`s_id` int(25) NOT NULL,
  `first_name` varchar(65) NOT NULL,
  `middle_name` varchar(45) NOT NULL,
  `last_name` varchar(65) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `sem_id` int(11) NOT NULL,
  `DOB` date NOT NULL,
  `date_admit` date NOT NULL,
  `email` varchar(120) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `fingerprint_sample` varchar(65) DEFAULT 'no' COMMENT 'fingerprint sample features.'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_id`, `first_name`, `middle_name`, `last_name`, `roll_no`, `d_id`, `sem_id`, `DOB`, `date_admit`, `email`, `address`, `contact`, `fingerprint_sample`) VALUES
(2, 'djfjdf', '', 'dfjdhf', 878333, 3, 7, '1993-11-12', '2016-04-19', 'dmnf', 'dkfkd', 9834443434, 'no'),
(3, 'nddsn', '', 'sdsjf', 7637, 3, 7, '1919-12-12', '2016-04-19', 'dkfjdk', 'dkjfkd', 986276327, 'no'),
(4, 'nddsn', '', 'sdsjf', 7637, 2, 7, '1919-12-12', '2016-04-19', 'dkfjdk', 'dkjfkd', 986276327, 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`s_id`), ADD KEY `fk_department_student_idx` (`d_id`), ADD KEY `fk_semester_student_idx` (`sem_id`), ADD KEY `d_id` (`d_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
MODIFY `s_id` int(25) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `student`
--
ALTER TABLE `student`
ADD CONSTRAINT `fk_department_student` FOREIGN KEY (`d_id`) REFERENCES `department` (`dept_id`) ON UPDATE CASCADE,
ADD CONSTRAINT `fk_semester_student` FOREIGN KEY (`sem_id`) REFERENCES `semester` (`sem_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
