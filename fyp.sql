-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2022 at 10:02 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fyp`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `username`, `email`, `message`) VALUES
(7, 'yaziv019', 'yaziv019@gmail.com', 'Nice work on User Interface. Hoping to see more features in next update.');

-- --------------------------------------------------------

--
-- Table structure for table `jobseekerprofile`
--

CREATE TABLE `jobseekerprofile` (
  `id` int(15) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `contactnumber` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `dateofbirth` varchar(200) NOT NULL,
  `educationdetails` varchar(200) NOT NULL,
  `workexperience` varchar(200) NOT NULL,
  `skills` varchar(200) NOT NULL,
  `otherdetails` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jprofile`
--

CREATE TABLE `jprofile` (
  `id` int(10) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `contactnumber` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `dateofbirth` varchar(50) NOT NULL,
  `educationdetails` varchar(200) NOT NULL,
  `workexperience` varchar(200) NOT NULL,
  `skills` varchar(200) NOT NULL,
  `otherdetails` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jprofile`
--

INSERT INTO `jprofile` (`id`, `fullname`, `contactnumber`, `email`, `address`, `dateofbirth`, `educationdetails`, `workexperience`, `skills`, `otherdetails`) VALUES
(16, 'sda', 123, 'asdcx', 'czxc', 'asd@', '', '', '', ''),
(17, 'asdad', 12334, 'adf', 'fgfd', 'safg', 'sfdgd', '', '', ''),
(18, 'dfsfdsfv', 123, 'dsf', 'dfgh', 'fgbn', 'fg', 'bnm', '', ''),
(19, 'dfsfdsfv', 123, 'dsf', 'dfgh', 'fgbn', 'fg', 'bnm', 'sad', ''),
(20, 'dfsfdsfv', 123, 'dsf', 'dfgh', 'fgbn', 'fg', 'bnm', 'sad', 'dsf');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(50) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(16, 'manager', 'byebyez'),
(19, 'samir', 'pioioi'),
(22, 'prabin', 'qwerfc'),
(23, 'marathon', 'asqwasqw'),
(24, 'yaziv', 'yaziv'),
(25, 'intern', 'intern'),
(26, 'Baitadi', '1234567'),
(29, 'yazzeev', 'yazzeev'),
(30, 'samrat', 'samrat'),
(31, 'sujan', 'sujan'),
(32, 'Oklahoma', '12'),
(33, 'bickye', 'bickye'),
(34, 'sdad', 'sadas'),
(35, 'rajan35', 'rajan35'),
(36, 'pravin', 'prabib');

-- --------------------------------------------------------

--
-- Table structure for table `postjob`
--

CREATE TABLE `postjob` (
  `id` int(11) NOT NULL,
  `company` varchar(50) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `location` varchar(55) NOT NULL,
  `time` varchar(55) NOT NULL,
  `jobdetail` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `postjob`
--

INSERT INTO `postjob` (`id`, `company`, `designation`, `location`, `time`, `jobdetail`) VALUES
(8, 'Magic Cube', 'Trainer SEO ANALYSIS', 'Sabhagriha', 'Full time', 'We are looking for the best SEO Analysis trainer to train the interns of the company. \nSalary: Negotiable \nIf you are interested, send us your cv at magiccube@gmail.com\n'),
(16, 'Support Associate Expert', 'Customer Service ', 'Lalitpur', 'Parttime', 'We are looking for jobseekers who are interested in customer service job. Level: Entry LevelOffered Salary: 10000 gross/ monthEducation Degree: Intermediate Shifts Available: 8 PM - 12 PM or 11AM - 3PMInterest Candidates meeting mentioned criteria are requested to send their email at expert@gmail.com'),
(23, 'Prativa HSS', 'Science Teacher', 'Palikhechowk', 'Morning', '(Job Details for teacher)'),
(29, 'Lokdeep SBS', 'Math Teacher', 'Beni', 'Full time', 'We are looking for the best teacher who are capable of teaching Mathematics for secondary level. Experience: 5 yearsOffered Salary: 35000 per monthEducation Degree: MasterShifts: 10 AM - 5 PMInterested Candidates meeting mentioned criteria are requested to send their cv at hire@lokdeepsbs.edu.np'),
(30, 'ICP', 'Programming Teacher', 'Lion\'s Marga', 'Part-time', 'We are looking for the best teacher who are capable of teaching programming for Bachelor first year. \r\nExperience: 5 years in same field\r\nOffered Salary: 45000 per month\r\nShifts: 7AM - 10 AM\r\n\r\nInterested Candidates meeting mentioned criteria are requested to send their cv at infomatics@icp.edu.np'),
(31, 'Motherland HSS', 'Chemistry Lab Assistant', 'Masbar', 'Full-time', 'We are looking for the best teacher who are capable of assisting chemistry lab for \r\nhigh school level\r\nExperience: 3 years in particular field\r\nOffered Salary: 35000 per month\r\nShifts: 10 AM - 5 PM\r\n\r\nInterested Candidates meeting mentioned criteria are requested to send their cv at motherland@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `postpjob`
--

CREATE TABLE `postpjob` (
  `pid` int(10) NOT NULL,
  `company` varchar(55) NOT NULL,
  `designation` varchar(55) NOT NULL,
  `location` varchar(55) NOT NULL,
  `time` varchar(25) NOT NULL,
  `jobdetail` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `postpjob`
--

INSERT INTO `postpjob` (`pid`, `company`, `designation`, `location`, `time`, `jobdetail`) VALUES
(5, 'Infomatics College', 'Emerging Tutor', 'Matepani', 'Part time', 'Interested candidates can apply for the job.\nsend your cv at ok@gmail.com'),
(8, 'Company Name', 'Job Title', 'Job Location', 'Job Time', 'Job Details\nJob Details\nJob Details\nJob Details\nJob Details\nJob Details\nJob Details\nJob Details\n\n\n\n\n\n\n\n'),
(9, 'Prativa HSS', 'Science Teacher', 'Palikhechowk', 'Morning', '(Job Details for teacher)\n(if we pressed on post premium, we have to pay some money and it will be present on homepage)');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `password`) VALUES
(6, 'byapass', 'ronaldo'),
(7, 'poiuy', 'fundamental'),
(9, 'sushil', 'kathmandu'),
(10, 'yaziv', 'Pokhara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobseekerprofile`
--
ALTER TABLE `jobseekerprofile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fullname` (`fullname`),
  ADD KEY `contactnumber` (`contactnumber`),
  ADD KEY `email` (`email`),
  ADD KEY `address` (`address`),
  ADD KEY `educationdetails` (`educationdetails`),
  ADD KEY `dateofbirth` (`dateofbirth`),
  ADD KEY `workexperience` (`workexperience`),
  ADD KEY `skills` (`skills`),
  ADD KEY `otherdetails` (`otherdetails`);

--
-- Indexes for table `jprofile`
--
ALTER TABLE `jprofile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fullname` (`fullname`),
  ADD KEY `contactnumber` (`contactnumber`),
  ADD KEY `email` (`email`),
  ADD KEY `address` (`address`),
  ADD KEY `dateofbirth` (`dateofbirth`),
  ADD KEY `educationdetails` (`educationdetails`),
  ADD KEY `workexperience` (`workexperience`),
  ADD KEY `skills` (`skills`),
  ADD KEY `otherdetails` (`otherdetails`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING HASH,
  ADD KEY `password` (`password`(768));

--
-- Indexes for table `postjob`
--
ALTER TABLE `postjob`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postpjob`
--
ALTER TABLE `postpjob`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING HASH,
  ADD KEY `password` (`password`(768));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jobseekerprofile`
--
ALTER TABLE `jobseekerprofile`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jprofile`
--
ALTER TABLE `jprofile`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `postjob`
--
ALTER TABLE `postjob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `postpjob`
--
ALTER TABLE `postpjob`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
