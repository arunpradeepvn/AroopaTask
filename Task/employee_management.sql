-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2023 at 06:34 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `empId` int(11) NOT NULL,
  `empName` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `maritalStatus` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `salaryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`empId`, `empName`, `department`, `gender`, `maritalStatus`, `address`, `salaryId`) VALUES
(1, 'Arun', 'Business', 'Male', 'Single', 'Emaneswaram', 1),
(2, 'Pradeep', 'Development', 'Male', 'Single', 'Paramakudi', 2),
(3, 'Pragathi', 'Business', 'Female', 'Single', 'Delhi', 3),
(5, 'Employee Name', 'Development', 'Male', 'Single', 'Ramanathapuram', 5),
(6, 'Arun', 'Development', 'Male', 'Married', '2/150 B', 6),
(8, 'Arunpradeep', 'Business', 'Male', 'Single', 'Paramakudi', 8),
(12, 'Arun', 'Business', 'Male', 'Married', '1/187 Emaneswaram 623701', 12),
(13, 'aarthi', 'Business', 'Female', 'Single', '2/150 B', 13),
(14, 'Arunpradeep VN', 'Development', 'Male', 'Single', '2/150 B, Gurunathan Kovil Street, Emaneswaram, Paramakudi, Ramanathapuram 623701', 14),
(15, 'Final Test', 'Development', 'Female', 'Single', '1/287 Emaneswaram 623701', 15),
(17, 'Final Test', 'Development', 'Male', 'Single', 'Chennai', 17),
(18, 'Final Test One', 'Business', 'Female', 'Married', 'Korattur', 18),
(19, 'Final Test Two', 'Development', 'Male', 'Single', 'Ooty', 19),
(20, 'Final Test Three', 'Business', 'Female', 'Married', 'Kodaikanal', 20),
(21, 'Person', 'Development', 'Female', 'Married', 'Door No. 1, Street Name, City Name Pincode - 000000', 21),
(22, 'Arunpradeep VN', 'Business', 'Male', 'Single', 'Emaneswaram 623701', 22),
(24, 'Final Test Employee Name', 'Business', 'Female', 'Married', 'Employee Door Number 0, Employee Street, Employee City, Pincode - 000000', 24);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `salaryId` int(11) NOT NULL,
  `salary` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`salaryId`, `salary`) VALUES
(1, '10000'),
(2, '12000'),
(3, '200000'),
(5, '7500'),
(6, '60000'),
(8, '200000'),
(12, '35000'),
(13, '7500'),
(14, '10000'),
(15, '50000'),
(17, '10000'),
(18, '12000'),
(19, '14000'),
(20, '16000'),
(21, '100000'),
(22, '20000'),
(24, '25000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`empId`),
  ADD KEY `salaryId` (`salaryId`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`salaryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `empId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `salaryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`salaryId`) REFERENCES `salary` (`salaryId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
