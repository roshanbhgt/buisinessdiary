-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 02, 2013 at 01:21 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `buisinessdiary`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--
-- Creation: Oct 19, 2013 at 07:52 PM
-- Last update: Oct 19, 2013 at 07:52 PM
--

CREATE TABLE IF NOT EXISTS `admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `firstname`, `lastname`, `email`, `username`, `password`, `usertype`, `status`, `created_date`, `updated_date`) VALUES
(1, 'Roshan', 'Bhagat', 'roshanbhgt@gmail.com', 'admin', 'YWRtaW5AMTIz', 'administrator', 'active', '2013-09-07 21:45:46', '2013-09-21 10:38:04');

-- --------------------------------------------------------

--
-- Table structure for table `buisiness_category`
--
-- Creation: Oct 19, 2013 at 07:52 PM
-- Last update: Oct 20, 2013 at 03:17 PM
--

CREATE TABLE IF NOT EXISTS `buisiness_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `parentcat_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `identifier` varchar(255) NOT NULL,
  `description` text,
  `banner` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `buisiness_category`
--

INSERT INTO `buisiness_category` (`cat_id`, `parentcat_id`, `title`, `identifier`, `description`, `banner`, `status`, `created_date`, `update_date`) VALUES
(2, 0, 'Test 1', '', '<br>', '', 'active', '2013-09-22 12:53:01', '2013-09-28 20:28:27'),
(3, 0, 'Test 2', '', '', '', 'active', '2013-09-22 12:53:19', '2013-09-22 12:57:03'),
(4, 0, 'Test 3', '', '', '', 'active', '2013-09-22 12:53:38', '2013-09-23 20:59:06'),
(5, 0, 'Test 4', '', '', '', 'active', '2013-09-22 12:54:01', '2013-09-22 12:57:40'),
(6, 0, 'Test 5', '', '', '', 'active', '2013-09-22 12:54:34', '2013-09-22 12:58:09'),
(8, 4, 'Test', '', 'Testing purpose<br>', '', 'active', '2013-10-20 20:47:28', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `buisiness_list`
--
-- Creation: Oct 19, 2013 at 07:52 PM
-- Last update: Oct 19, 2013 at 07:52 PM
--

CREATE TABLE IF NOT EXISTS `buisiness_list` (
  `list_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `address` text,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--
-- Creation: Oct 19, 2013 at 07:52 PM
-- Last update: Oct 19, 2013 at 07:52 PM
--

CREATE TABLE IF NOT EXISTS `country` (
  `countryId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`countryId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`countryId`, `title`, `created_date`) VALUES
(1, 'India', '2013-09-09 17:50:59'),
(2, 'United States America', '2013-10-05 17:55:11'),
(3, 'United Kingdom', '2013-10-05 17:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--
-- Creation: Oct 19, 2013 at 07:52 PM
-- Last update: Oct 20, 2013 at 03:10 PM
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `galleryId` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_title` varchar(255) NOT NULL,
  `gallery_description` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  PRIMARY KEY (`galleryId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_image`
--
-- Creation: Oct 19, 2013 at 07:52 PM
-- Last update: Oct 19, 2013 at 07:52 PM
--

CREATE TABLE IF NOT EXISTS `gallery_image` (
  `galleryImageId` int(11) NOT NULL AUTO_INCREMENT,
  `galleryId` int(11) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`galleryImageId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--
-- Creation: Oct 19, 2013 at 07:52 PM
-- Last update: Oct 19, 2013 at 07:52 PM
--

CREATE TABLE IF NOT EXISTS `pages` (
  `pageId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`pageId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`pageId`, `title`, `identifier`, `description`, `status`, `created_date`, `update_date`) VALUES
(1, 'About Us', 'about-us', '<blockquote><b>Lorem Ipsum</b> is simply dummy text of the printing and typesetting industry.\r\n		 	<br></blockquote>Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a \r\n		 	galley of type and scrambled it to make a type specimen book. \r\n		 	<br>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. \r\n		 	<br>It was popularised in the 1960s with the release of Letraset \r\nsheets containing Lorem Ipsum passages, and more recently with desktop \r\npublishing software like Aldus Page Maker including versions of Lorem \r\nIpsum.', 'active', '2013-10-02 17:37:00', '2013-10-05 16:23:31');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--
-- Creation: Oct 19, 2013 at 07:52 PM
-- Last update: Oct 19, 2013 at 08:20 PM
--

CREATE TABLE IF NOT EXISTS `state` (
  `stateId` int(11) NOT NULL AUTO_INCREMENT,
  `countryId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`stateId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`stateId`, `countryId`, `title`, `created_date`) VALUES
(1, 1, 'Andaman & Nicobar Islands', '2013-10-06 07:10:35'),
(2, 1, 'Andra Pradesh', '2013-10-06 07:10:35'),
(3, 1, 'Arunachal Pradesh', '2013-10-06 07:10:35'),
(4, 1, 'Assam', '2013-10-06 07:10:35'),
(5, 1, 'Bihar', '2013-10-06 07:10:36'),
(6, 1, 'Chhattisgarh', '2013-10-06 07:10:36'),
(7, 1, 'Dadra & Nagar Haveli', '2013-10-06 07:10:36'),
(8, 1, 'Daman & Diu', '2013-10-06 07:10:36'),
(9, 1, 'Delhi', '2013-10-06 07:10:36'),
(10, 1, 'Goa', '2013-10-06 07:10:36'),
(11, 1, 'Gujrat', '2013-10-06 07:10:36'),
(12, 1, 'Haryana', '2013-10-06 07:10:36'),
(13, 1, 'Himachal Pradesh', '2013-10-06 07:10:36'),
(14, 1, 'Jammu & Kashmir', '2013-10-06 07:10:36'),
(15, 1, 'Jharkhand', '2013-10-06 07:10:36'),
(16, 1, 'Karnataka', '2013-10-06 07:10:36'),
(17, 1, 'Kerala', '2013-10-06 07:10:36'),
(18, 1, 'Lakshadweep', '2013-10-06 07:10:36'),
(19, 1, 'Madhya Pradesh', '2013-10-06 07:10:36'),
(20, 1, 'Maharashtra', '2013-10-06 07:10:36'),
(21, 1, 'Manipur', '2013-10-06 07:10:36'),
(22, 1, 'Meghalaya', '2013-10-06 07:10:36'),
(23, 1, 'Mizoram', '2013-10-06 07:10:36'),
(24, 1, 'Nagaland', '2013-10-06 07:10:36'),
(25, 1, 'Orissa', '2013-10-06 07:10:36'),
(26, 1, 'Pondicherry', '2013-10-06 07:10:36'),
(27, 1, 'Punjab', '2013-10-06 07:10:36'),
(28, 1, 'Rajastan', '2013-10-06 07:10:36'),
(30, 1, 'Sikkim', '2013-10-06 07:10:36'),
(31, 1, 'Tamil Nadu', '2013-10-06 07:10:36'),
(32, 1, 'Tripura', '2013-10-06 07:10:36'),
(33, 1, 'Uttar Pradesh', '2013-10-06 07:10:36'),
(34, 1, 'Uttarakhand', '2013-10-06 07:10:36'),
(35, 1, 'Uttarpradesh', '2013-10-06 07:10:36'),
(36, 1, 'West Bengal', '2013-10-06 07:10:36');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
