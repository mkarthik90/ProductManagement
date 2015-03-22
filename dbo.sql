-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2015 at 02:40 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbo`
--

-- --------------------------------------------------------

--
-- Table structure for table `empde`
--

CREATE TABLE IF NOT EXISTS `empde` (
  `empid` bigint(20) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(20) NOT NULL,
  `pname` varchar(20) DEFAULT NULL,
  `ename` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`empid`),
  KEY `empid` (`empid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `empde`
--

INSERT INTO `empde` (`empid`, `firstname`, `lastname`, `username`, `email`, `password`, `pname`, `ename`) VALUES
(1, 'Hariharan', 'Ravichandran', 'hariharan270295@gmail.com', 'hariharan270295@gmail.com', 'testme', NULL, NULL),
(2, 'Vignesh', 'Kumar', 'wikeykumar@gmail.com', 'wikeykumar@gmail.com', 'wikeykumar', NULL, NULL),
(3, 'aravind', 'aravind', 'aravind@test.com', 'aravind@test.com', 'aravind', NULL, NULL),
(4, 'aravind', 'aravind', 'aravind@test.com', 'aravind@test.com', 'aravind', NULL, NULL),
(5, 'balaji', 'bala', 'balaji@test.com', 'balaji@test.com', 'balaaji', NULL, NULL),
(6, 'chanakya', 'chanakya', 'chanakyacse2k15@gmail.com', 'chanakyacse2k15@gmail.com', 'qwerty', NULL, NULL),
(7, 'chan', 'chan', 'chan@email.com', 'chan@email.com', 'chan', NULL, NULL),
(8, 'dev', 'dev', 'dev@test.com', 'dev@test.com', 'dev', NULL, NULL),
(9, 'enum', 'saa', 'sadasd', 'sadasd', 'asdas', NULL, NULL),
(10, 'hariharan', 'Ravichandran', 'hariharan270295@gmail.com', 'hariharan270295@gmail.com', 'hariharan', NULL, NULL),
(11, 'hariharan', 'Ravichandran', 'hariharan@gmail.com', 'hariharan@gmail.com', 'hariharan', NULL, NULL),
(12, 'aravind', 'raj', 'aravindraj12345@yahoo.com', 'aravindraj12345@yahoo.com', 'aravindrajh', NULL, NULL),
(13, 'balaji', 'balal', 'balajibalal12345@gmail.co.in', 'balajibalal12345@gmail.co.in', 'balajibala', NULL, NULL),
(17, 'hariharan', 'ravichandra', 'hariharan2702951@gmail.com', 'hariharan2702951@gmail.com', 'hariharan', NULL, NULL),
(18, 'hariaha', 'aravind', 'hariharan@gmail.com', 'hariharan@gmail.com', 'asasass', NULL, NULL),
(19, 'asd', 'sad', 'hariharan270295@gmail.com', 'hariharan270295@gmail.com', 'adsd', NULL, NULL),
(20, 'sasa', 'asas', 'hariharan270295@gmail.com', 'hariharan270295@gmail.com', 'asas', NULL, NULL),
(21, 'hariharan', 'ravichandran', 'hariharan270295@gmail.com', 'hariharan270295@gmail.com', 'hariharan', NULL, NULL),
(22, 'hariharan', 'Ravichandran', 'hariharanravi@hotmail.com', 'hariharanravi@hotmail.com', 'hariharan', NULL, NULL),
(23, '', '', 'admin', '', '', NULL, NULL),
(24, 'Thillai', 'vaanan', 'Thillai vaanan', 'thillai@gmail.com', 'error', NULL, NULL),
(25, 'vignesh', 'kumar', 'vickey', 'kumar@test.com', 'sample', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `empdetails`
--

CREATE TABLE IF NOT EXISTS `empdetails` (
  `name` varchar(60) NOT NULL,
  `empid` int(11) NOT NULL,
  `remprod` int(11) NOT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empdetails`
--

INSERT INTO `empdetails` (`name`, `empid`, `remprod`) VALUES
('hariharan270295@gmail.com', 1, 0),
('wikeykumar@gmail.com', 2, 0),
('aravind', 3, 0),
('aravind', 4, 0),
('balaji', 5, 0),
('chanakya', 6, 0),
('chan', 7, 0),
('dev', 8, 0),
('enum', 9, 0),
('hariharan', 10, 0),
('hariharan', 11, 0),
('aravind', 12, 0),
('balaji', 13, 0),
('hariharan', 17, 0),
('hariaha', 18, 0),
('asd', 19, 0),
('sasa', 20, 0),
('hariharan', 21, 0),
('hariharan', 22, 0),
('', 23, 0),
('Thillai', 24, 5);

-- --------------------------------------------------------

--
-- Table structure for table `eventdetails`
--

CREATE TABLE IF NOT EXISTS `eventdetails` (
  `eventid` int(11) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(60) NOT NULL,
  `nopreq` int(6) NOT NULL,
  `date` date NOT NULL,
  `Time` time NOT NULL,
  `place` varchar(30) NOT NULL,
  `products` varchar(200) NOT NULL,
  `returnDate` date NOT NULL,
  `returnTime` time NOT NULL,
  PRIMARY KEY (`eventid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `eventdetails`
--

INSERT INTO `eventdetails` (`eventid`, `eventname`, `nopreq`, `date`, `Time`, `place`, `products`, `returnDate`, `returnTime`) VALUES
(1, 'marraige', 3, '0002-02-02', '00:00:00', '', '', '2012-12-05', '00:00:00'),
(2, 'Meeting', 4, '2016-05-01', '06:00:00', 'kalpakkam', '', '2014-10-10', '00:00:00'),
(3, 'Sample', 4, '2005-09-19', '05:00:00', 'kilpauk', '', '2000-10-10', '00:00:00'),
(4, 'fasting', 4, '2010-05-01', '06:00:00', 'kundrathur', '', '2000-10-10', '00:00:00'),
(5, '', 0, '2005-01-01', '01:00:00', '', '', '2000-10-10', '00:00:00'),
(6, 'inaugration', 11, '2017-06-01', '05:00:00', 'salem', 'bosch-1,boss-2,sony-1,sony 11-1', '2000-10-10', '00:00:00'),
(7, 'inaugration function', 11, '2017-06-01', '05:00:00', 'salem', 'bosch-1,boss-3,sony-2,sony 11-2', '2000-10-10', '00:00:00'),
(8, 'sample', 11, '2005-11-01', '10:00:00', 'pandi', 'bosch-3,boss-1,sony-1', '2000-10-10', '00:00:00'),
(9, 'reharsal', 11, '2005-06-01', '09:00:00', 'chennai', 'bosch-3,boss-2,sony-2,sony 11-2', '2000-10-10', '00:00:00'),
(10, 'reharsal', 11, '2018-02-01', '07:00:00', 'chennai', 'bosch-3', '2000-10-10', '00:00:00'),
(11, 'reharsal1', 11, '2018-02-01', '07:00:00', 'chennai', 'bosch-2', '2000-10-10', '00:00:00'),
(12, 'reharsal1', 11, '2005-02-01', '06:00:00', 'chennai', 'set2-1,bosch-2', '2000-10-10', '00:00:00'),
(13, 'reharsal1', 5, '2005-05-01', '06:00:00', 'chennai', 'bosch-1', '2000-10-10', '00:00:00'),
(14, 'reharsal2', 5, '2005-05-01', '06:00:00', 'chennai', 'set2-3,bosch-1', '2000-10-10', '00:00:00'),
(15, 'reharsal2', 2, '2005-05-01', '04:00:00', 'loiki', 'bosch-2', '2000-10-10', '00:00:00'),
(16, 'demo session', 2, '2007-05-01', '03:00:00', 'trt', 'boss-1', '2000-10-10', '00:00:00'),
(17, 'reharsal25', 2, '2005-03-01', '05:00:00', 'erode', 'boss-1,sony-1', '2000-10-10', '00:00:00'),
(18, 'reharsal22', 1, '2005-01-01', '05:00:00', 'hill', 'boss-2', '2000-10-10', '00:00:00'),
(19, 'reharsal224', 2, '2005-01-01', '07:00:00', 'hilk', 'set2-1,bosch-1', '2000-10-10', '00:00:00'),
(20, 'reharsal evening', 2, '2005-01-01', '11:00:00', 'chennai', 'set2-1,bosch-1', '2000-10-10', '00:00:00'),
(21, 'mp marriage', 3, '2015-12-28', '01:00:00', 'munnar', 'set2-1,bosch-2', '2000-10-10', '00:00:00'),
(22, 'sample', 3, '2015-03-20', '01:00:00', 'chennai', 'listit-1,set2-1,bosch-1', '2000-10-10', '00:00:00'),
(23, 'Marriage venkat', 7, '2015-03-27', '02:00:00', 'vadapalani', 'nonono-1,listit-1,bosch-1,takeit-1,boss-1,sony-1,sony 11-1', '2015-03-29', '06:00:00'),
(24, 'Mariage', 4, '2015-03-29', '01:00:00', 'munnar', 'nonono-1,listit-1,set2-1,bosch-1', '2015-04-01', '01:00:00'),
(25, 'wedding', 8, '2015-03-20', '04:30:00', 'chennai', 'bosch-1,boss-1,local-2,sony-3,sony 11-1', '2015-03-21', '20:00:00'),
(26, 'anniversary', 10, '2015-06-03', '18:30:00', 'chennai', 'bosch-2,boss-4,sony-2,sony 11-2', '2015-06-05', '18:30:00'),
(27, 'marriage mla', 4, '2015-03-26', '10:20:00', 'chennai', 'listit-3,set2-3,bosch-3,local-4,sony-3,option-2,sony 11-3', '2015-03-31', '01:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `eventemployee`
--

CREATE TABLE IF NOT EXISTS `eventemployee` (
  `empid` int(20) DEFAULT NULL,
  `employee` varchar(200) NOT NULL,
  `eventname` varchar(200) NOT NULL,
  `products` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventemployee`
--

INSERT INTO `eventemployee` (`empid`, `employee`, `eventname`, `products`) VALUES
(1, 'aaaa', 'marriage function', 'speaker'),
(1, 'aaaa', 'marriage function', 'speaker'),
(1, 'aaaa', 'marriage function', 'speaker'),
(2, 'bbbb', 'Birthday func', 'TV'),
(1, 'aaaa', 'marriage function', 'speaker'),
(1, 'aaaa', 'marriage function', 'speaker'),
(2, '1', '1', '1'),
(1, '1', '2', '2'),
(2, '2', '1', '1'),
(1, '1', '2', '2'),
(2, '2', '1', '1'),
(2, '2', '1', '1'),
(2, '2', '1', '1'),
(2, '2', '1', '1'),
(2, '2', '1', '1'),
(1, '1', '1', '1'),
(2, 'bbbb', 'marriage function', '1'),
(1, 'bbbb', 'Birthday func', 'speaker'),
(1, 'aaaa', 'Birthday func', 'TV'),
(1, 'aaaa', 'marriage function', 'speaker,TV'),
(2, 'bbbb', 'Birthday func', 'speaker,TV'),
(3, 'test', 'marriage function', 'speaker,TV'),
(2, 'NONE', 'Birthday func', 'asd'),
(2, 'bbbb', 'Birthday func', 'asd'),
(2, 'aaaa', 'Birthday func', 'TV'),
(9, 'bbbb', 'marraige', 'test,Speaker,TV,test2'),
(1, 'aaaa', 'marraige', 'test,Speaker,TV,test2'),
(1, 'aaaa', 'marraige', 'test,TV,test2'),
(1, 'aaaa', 'marraige', 'test,test2'),
(9, 'hariharan', 'marraige', 'test,Speaker,TV,test2'),
(2, 'test', 'marraige', 'test,Speaker,TV,test2'),
(1, 'ravi', 'marraige', 'test,TV');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `eventid` int(10) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(50) NOT NULL,
  `products` varchar(2000) NOT NULL,
  `eventdate` date NOT NULL,
  `productsreturndate` date NOT NULL,
  PRIMARY KEY (`eventid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`eventid`, `eventname`, `products`, `eventdate`, `productsreturndate`) VALUES
(1, 'Arun Birthday', 'Speakers - 4,Mic -5,TV - 6,VGA Cables - 2', '2015-02-27', '2015-03-28'),
(2, 'Ajay Birthday', 'Speakers - 4,Mic -5,TV - 6,VGA Cables - 2', '2015-03-03', '2015-03-05'),
(3, 'marraige', 'TV - 5, MIC -10, SPEAKER -5,INSTRUMENTS- 10', '2015-05-05', '2015-03-10'),
(4, 'inaguration', 'ALL products', '2015-03-09', '2015-03-09');

-- --------------------------------------------------------

--
-- Table structure for table `event_product_mapping`
--

CREATE TABLE IF NOT EXISTS `event_product_mapping` (
  `empid` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `Pid` int(11) unsigned NOT NULL,
  UNIQUE KEY `Pid` (`Pid`),
  KEY `Pid_2` (`Pid`),
  KEY `eventid` (`eventid`),
  KEY `empid` (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logintable`
--

CREATE TABLE IF NOT EXISTS `logintable` (
  `userName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logintable`
--

INSERT INTO `logintable` (`userName`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `productdetails`
--

CREATE TABLE IF NOT EXISTS `productdetails` (
  `pname` varchar(60) NOT NULL,
  `pid` int(11) unsigned NOT NULL,
  `2005/01/1` int(11) NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productdetails`
--

INSERT INTO `productdetails` (`pname`, `pid`, `2005/01/1`) VALUES
('test', 0, 0),
('Speaker', 1, 0),
('TV', 2, 0),
('test2', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `productlist`
--

CREATE TABLE IF NOT EXISTS `productlist` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `mic` varchar(60) NOT NULL,
  `projector` varchar(60) NOT NULL,
  `led` varchar(60) NOT NULL,
  `speaker` varchar(60) NOT NULL,
  `micquantity` int(3) NOT NULL,
  `projectorquantity` int(3) NOT NULL,
  `ledquantity` int(3) NOT NULL,
  `speakerquantity` int(3) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `productlist`
--

INSERT INTO `productlist` (`sno`, `mic`, `projector`, `led`, `speaker`, `micquantity`, `projectorquantity`, `ledquantity`, `speakerquantity`) VALUES
(10, 'bosch', 'sony', 'sony 11', 'boss', 4, 4, 4, 4),
(11, 'set2', 'local', 'option', 'takeit', 5, 5, 5, 5),
(12, 'listit', 'havei', 'adds', 'nooo', 3, 3, 3, 3),
(13, 'nonono', 'get4', 'forit', 'hahaha', 4, 4, 4, 4);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event_product_mapping`
--
ALTER TABLE `event_product_mapping`
  ADD CONSTRAINT `event_product_mapping_ibfk_1` FOREIGN KEY (`Pid`) REFERENCES `productdetails` (`pid`),
  ADD CONSTRAINT `event_product_mapping_ibfk_2` FOREIGN KEY (`eventid`) REFERENCES `eventdetails` (`eventid`),
  ADD CONSTRAINT `event_product_mapping_ibfk_3` FOREIGN KEY (`empid`) REFERENCES `empdetails` (`empid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
