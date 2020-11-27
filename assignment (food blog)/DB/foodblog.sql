-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2020 at 06:51 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `cid` int(100) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `ptitle` varchar(100) NOT NULL,
  `cresponse` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`cid`, `comment`, `pid`, `tag`, `ptitle`, `cresponse`) VALUES
(1, 'test', 1, 'neil', 'test', 'this is good t');

-- --------------------------------------------------------

--
-- Table structure for table `fooduser`
--

CREATE TABLE `fooduser` (
  `userid` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `education` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `picture` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fooduser`
--

INSERT INTO `fooduser` (`userid`, `username`, `password`, `email`, `gender`, `education`, `type`, `picture`) VALUES
(2, 'neil', '123', 'neil@gmail.com', 'M', 'bsc', 'admin', ''),
(3, 'Nozib', '1111', 'akash@gmail.com', 'M', 'bsc', 'admin', ''),
(5, 'Kawser', '123456', 'rat315@gmail.com', 'M', 'ssc', 'traveler', ''),
(6, 'iqbal', '20202020', 'iQb@gmail.com', 'M', 'bsc', 'Trans_Dealer', ''),
(7, 'RAS_EMON', '###3###3###', 'rasjbii@gmail.com', 'M', 'bsc', 'Trans_Dealer', 'IMG_3384.JPG'),
(8, 'rasdrek', '20112011', 'rasjbii@gmail.com', 'M', 'bsc', 'Trans_Dealer', 'IMG_3384.JPG'),
(9, 'fsdf', 'dsfsd', 'sdfsdf', 'sdfsd', 'dsfsd', 'sdfsdf', '');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `pid` int(100) NOT NULL,
  `ptitle` varchar(100) NOT NULL,
  `rname` varchar(100) NOT NULL,
  `rprice` varchar(100) NOT NULL,
  `rtype` varchar(100) NOT NULL,
  `rdesc` varchar(100) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `avail` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`pid`, `ptitle`, `rname`, `rprice`, `rtype`, `rdesc`, `tag`, `avail`) VALUES
(30, 'oio', 'ioi', '3333', 'pip', 'ioioi22 434', 'neil', 'aaa'),
(34, '123', 'sdf', 'sdf', 'dads', 'asd', 'neil', 'sdf443'),
(35, 'fsdf', 'sdfsdf', 'sdfsdf', 'sdfdsf', 'sdfsdf', 'neil', 'sdf 3'),
(36, 'klklk', 'sdfsdf', 'sdfsdf', 'sdfdsf', 'sdfsdf', 'neil', 'sdf');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `hmName` varchar(100) NOT NULL,
  `hotelName` varchar(100) NOT NULL,
  `hmPhone` varchar(100) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `hmName`, `hotelName`, `hmPhone`, `uname`, `password`, `type`) VALUES
(1, 'niloy', 'aiub', '01781858209', 'neil', '123', 'hm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `fooduser`
--
ALTER TABLE `fooduser`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `cid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fooduser`
--
ALTER TABLE `fooduser`
  MODIFY `userid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `pid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
