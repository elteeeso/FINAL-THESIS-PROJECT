-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 01, 2024 at 08:50 PM
-- Server version: 8.2.0
-- PHP Version: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `damsmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int NOT NULL,
  `AppointmentNumber` int DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `AppointmentDate` date DEFAULT NULL,
  `AppointmentTime` time DEFAULT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `Doctor` int DEFAULT NULL,
  `Message` mediumtext,
  `ApplyDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `AppointmentNumber`, `Name`, `MobileNumber`, `Email`, `AppointmentDate`, `AppointmentTime`, `Specialization`, `Doctor`, `Message`, `ApplyDate`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 1001, 'Mohamed Ahmed', 989, 'Mohamed@gmail.com', '2024-04-01', '12:41:00', '2', 2, 'Thanks', '2024-04-02 09:11:50', 'Cancelled due to incorrect mobile number', 'Cancelled', '2024-04-02 15:40:35'),
(2, 1002, 'Jaamac c/laahi', 7797979, 'Jaamac@gmail.com', '2024-04-01', '12:30:00', '2', 2, 'bmnbmngfugwakJDiowhfdgr', '2024-04-02 10:08:58', 'Your appointment has been approved, kindly came at mention time', 'Approved', '2024-04-02 15:34:41'),
(3, 1003, 'Sumayo Mohamed', 6101001, 'Zamuu@gmail.com', '2024-04-01', '13:00:00', '1', 1, 'bjnbjh', '2024-04-03 15:08:51', 'Appointment request has been approved', 'Approved', '2024-04-03 17:32:29'),
(4, 1004, 'Fathi Ali', 7987987, 'Fathi@gmail.com', '2024-14-12', '02:00:00', '1', 1, 'Thanks', '2024-11-10 17:31:17', 'im busy', "Cancelled", '2024-03-25 20:31:25' ),
(5, 1005, 'Saynab Ahmed', 7723154, 'Zaynab@gmail.com', '2024-04-16', '20:50:00', '1', 1, 'NA', '2024-04-16 04:19:37', NULL, NULL, NULL),
(6, 1006, 'C/Rahman', 7358177, 'CR@gmail.com', '2024-04-15', '18:31:00', '2', 2, 'NA', '2024-04-19 04:48:52', 'Approved', 'Approved', '2024-05-11 10:24:25'),
(7, 1007, 'Asiya', 7890011, 'asiya@test.com', '2024-04-25', '15:20:00', '2', 2, 'NA', '2024-04-30 04:49:54', NULL, NULL, NULL),
(8, 1008, 'Najmo  ', 7272790, 'Najuu@test.com', '2024-04-15', '12:30:00', '13', 4, 'NA', '2024-04-17 04:56:17', 'Your appointment has been approved.', 'Approved', '2024-04-20 04:56:55'),
(9, 1009, 'abdalla  ', 6212054, 'abdalla@gmail.com', '2024-02-21', '08:00:00', '12', 5, '', '2024-01-20 20:34:47', 'welcome.', 'Approved', '2024-03-25 20:47:42'),
(10, 1010, 'ismail  ', 6115202, 'serar@gmail.com', '2024-01-22', '10:30:00', '12', 5, '', '2024-01-20 20:38:40', 'Busy ahay waqtigas.', 'Cancelled', '2024-03-25 20:48:31'),
(12, 1012, 'jamac  ', 7788909, 'jama@gmail.com', '2024-01-25', '08:00:00', '7', 3, '', '2024-01-22 20:53:59', 'welcome.', 'Approved', '2024-03-25 20:49:01');


--
-- Table structure for table `tbldoctor`
--

CREATE TABLE `tbldoctor` (
  `ID` int NOT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `Password` varchar(259) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldoctor`
--

INSERT INTO `tbldoctor` (`ID`, `FullName`, `MobileNumber`, `Email`, `Specialization`, `Password`, `CreationDate`) VALUES
(1, 'Dr. ibrahim Dek', 907650599, 'ibradek@gmail.com', '1', '123', '2024-01-20 08:01:11'),
(2, 'IDris yusuf', 907663774, 'IDris@gmail.com', '2', 'Qaylo123', '2024-01-20 08:01:59'),
(3, 'Mohamed ilkacaze', 907721554, 'ilkacaze@gmail.com', '7', '1554', '2024-01-22 04:28:44'),
(4, 'Usame Mohamed', 907274677, 'Filfil@gmail.com', '4', '4677', '2024-01-25 04:54:44'),
(5, 'Dr.Shiine', 906256140, 'DR.Shiine@gmail.com', '12', '123', '2024-01-20 19:32:16'),
(6, 'Eng. Tusbahle', 907732123, 'Tusbahle@gmail.com', '5', 'test@99', '2024-01-22 20:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `PageDescription` mediumtext,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(2, 'contactus', 'Contact Us', '990, Sector 90, New Bosaso (Somalia/ Puntland/ Bosaso)', 'info@gmail.com', 907650599, NULL, '10:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblspecialization`
--

CREATE TABLE `tblspecialization` (
  `ID` int NOT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblspecialization`
--

INSERT INTO `tblspecialization` (`ID`, `Specialization`, `CreationDate`) VALUES
(1, 'Dhakhaatiirta lafaha', '2024-01-01 17:22:33'),
(2, 'Daawooyinka Guddaha', '2024-01-01 17:26:42'),
(3, 'Dhakhaatiirta haweenka', '2024-01-01 17:28:14'),
(4, 'Maqaarka', '2024-01-01 17:28:14'),
(5, 'Dhakhaatiirta carruurta', '2024-01-01 17:28:14'),
(6, 'Shucaaca', '2024-01-01 17:29:14'),
(7, 'Qalliinka Guud', '2024-01-01 17:31:15'),
(8, 'Daawooyinka Degdegga ah', '2024-01-01 17:33:15'),
(9, 'Daawooyinka Qoyska', '2024-01-01 17:35:19'),
(10, 'Daawooyinka Laabta', '2024-01-01 17:36:10'),
(11, 'Suuxtinta', '2024-01-01 17:38:19'),
(12, 'Qaliimada Indhaha', '2024-01-01 17:41:33'),
(13, 'Dhakhatirta Wadnaha', '2022-11-02 17:10:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbldoctor`
--
ALTER TABLE `tbldoctor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblspecialization`
--
ALTER TABLE `tblspecialization`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbldoctor`
--
ALTER TABLE `tbldoctor`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblspecialization`
--
ALTER TABLE `tblspecialization`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
