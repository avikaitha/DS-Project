-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2014 at 07:08 AM
-- Server version: 5.6.11
-- PHP Version: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `electricitydept`
--
CREATE DATABASE IF NOT EXISTS `electricitydept` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `electricitydept`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `cust_id` varchar(50) NOT NULL DEFAULT '',
  `Name` varchar(50) NOT NULL,
  `PhoneNo` varchar(50) NOT NULL,
  `Address` varchar(500) NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `Name`, `PhoneNo`, `Address`) VALUES
('1', 'Avinash', '+917694939339', 'H.No: 2-1-255 Flat No:305, S S Enclave Market Road, Nallakunta, Hyderabad 500044'),
('2', 'Srinadh', '+918989828499', 'dummy'),
('3', 'Jayavanth', '+918458824239', 'dummy'),
('4', 'Girish', '+918964916776', 'dummy');

-- --------------------------------------------------------

--
-- Table structure for table `meter`
--

CREATE TABLE IF NOT EXISTS `meter` (
  `meter_id` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL,
  `modelno` varchar(50) NOT NULL,
  `cust_id` varchar(50) NOT NULL,
  PRIMARY KEY (`meter_id`),
  KEY `cust_id` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meter`
--

INSERT INTO `meter` (`meter_id`, `type`, `modelno`, `cust_id`) VALUES
('+917024505652', 'Digital', '56678', '2'),
('+917694939339', 'Digital', '56548', '1'),
('+919425862583', 'Digital', '56446', '2');

-- --------------------------------------------------------

--
-- Table structure for table `ozekimessageout`
--

CREATE TABLE IF NOT EXISTS `ozekimessageout` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sender` varchar(30) DEFAULT '+918964916776',
  `receiver` varchar(30) DEFAULT NULL,
  `msg` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `senttime` varchar(100) DEFAULT NULL,
  `receivedtime` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `msgtype` varchar(30) DEFAULT NULL,
  `reference` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `errormsg` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `ozekimessageout`
--

INSERT INTO `ozekimessageout` (`id`, `sender`, `receiver`, `msg`, `senttime`, `receivedtime`, `operator`, `msgtype`, `reference`, `status`, `errormsg`) VALUES
(1, '+918500169269', '+917694939339', 'avinash', '2014-04-08 00:09:24', NULL, 'IDEA', NULL, NULL, 'sent', NULL),
(11, '+918500169269', '+917694939339', 'Dear Avinash Your no of units: and your bill is ', '2014-04-08 14:45:11', NULL, NULL, NULL, NULL, 'sent', NULL),
(32, '+918500169269', '+917694939339', 'Dear Avinash Your no of units:200 and your bill is: 800', '2014-04-08 14:57:04', NULL, NULL, NULL, NULL, 'sent', NULL),
(33, '+918500169269', '+917694939339', 'Dear Avinash Your no of units:300 and your bill is: 1200', '2014-04-08 14:58:25', NULL, NULL, NULL, NULL, 'sent', NULL),
(35, '+918500169269', '+918989828499', 'Dear Srinadh Your no of units:350 and your bill is: 1400', '2014-04-08 15:06:27', NULL, NULL, NULL, NULL, 'sent', NULL),
(36, '+918500169269', '+918964916776', 'Dear Girish Your no of units:423 and your bill is: 1692', '2014-04-08 15:18:18', NULL, NULL, NULL, NULL, 'sent', NULL),
(37, '+918500169269', '+918458824239', 'Dear Jayavanth Your no of units:233 and your bill is: 932', '2014-04-08 15:19:20', NULL, NULL, NULL, NULL, 'sent', NULL),
(38, '+918500169269', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'notsent', NULL),
(39, '+918500169269', '+917694939339', 'Dear Avinash Your no of units:245 and your bill is: 980', '2014-04-08 15:32:51', NULL, NULL, NULL, NULL, 'sent', NULL),
(41, '+918500169269', '+917694939339', 'Dear Avinash\n Connection ID: \n Units consumed this month:12345\n Cost: Rs.49380\nPlease pay your bill at mpcz.co.in', '2014-04-08 16:22:40', NULL, NULL, NULL, NULL, 'sent', NULL),
(42, '+918500169269', '+917694939339', 'Dear AvinashConnection ID: 19409.45689320141\nUnits Consumed this month: 239\nCost: Rs.956', '2014-04-08 16:32:02', NULL, NULL, NULL, NULL, 'sent', NULL),
(43, '+918500169269', '+917694939339', 'Dear Avinash\nConnection ID: 67197\nUnits Consumed this month: 635\nCost: Rs.2540', '2014-04-08 16:36:22', NULL, NULL, NULL, NULL, 'sent', NULL),
(44, '+918500169269', '+917694939339', 'Dear Avinash\nConnection ID: 75067\nUnits Consumed this month: 234\nCost: Rs.936', '2014-04-08 16:38:03', NULL, NULL, NULL, NULL, 'sent', NULL),
(45, '+918500169269', '+917694939339', 'Dear Avinash\nYour Monthly Bill:\nConnection ID: 98134\nUnits Consumed: 12346\nCost: Rs.49384Pay your bill at:\n mpcz.co.in', '2014-04-08 16:43:36', NULL, NULL, NULL, NULL, 'sent', NULL),
(46, '+918500169269', '+917694939339', 'Dear Avinash\nYour Monthly Bill:\nConnection ID: 22361\nUnits Consumed: 562\nCost: Rs.2248\nPay your bill at:\n www.mpcz.co.in', '2014-04-08 16:47:36', NULL, NULL, NULL, NULL, 'sent', NULL),
(47, '+918500169269', '+917694939339', 'Dear Avinash\nYour Monthly Bill:\nConnection ID: 45782\nUnits Consumed: 560\nCost: Rs.2240\nPay your bill at:\n http://www.mpcz.co.in', '2014-04-08 16:52:18', NULL, NULL, NULL, NULL, 'sent', NULL),
(48, '+918500169269', '+917694939339', 'Dear Avinash\nYour Monthly Bill:\nConnection ID: 29625\nUnits Consumed: 630\nCost: Rs.4410\nPay your bill at:\n www.mpcz.co.in', '2014-04-08 17:02:19', NULL, NULL, NULL, NULL, 'sent', NULL),
(50, '+918500169269', '+917694939339', 'Dear Avinash\nYour Monthly Bill:\nConnection ID: 69540\nUnits Consumed: 176.00\nCost: Rs.1232\nPay your bill at:\n www.mpcz.co.in', '2014-04-08 21:51:24', NULL, NULL, NULL, NULL, 'sent', NULL),
(51, '+918500169269', '+917694939339', 'Dear Avinash\nYour Monthly Bill:\nConnection ID: 79293\nUnits Consumed: 216.00\nCost: Rs.1512\nPay your bill at:\n www.mpcz.co.in', '2014-04-08 21:52:55', NULL, NULL, NULL, NULL, 'sent', NULL),
(52, '+918500169269', '+917694939339', 'Dear Avinash\nYour Monthly Bill:\nConnection ID: 96248\nUnits Consumed: 230\nCost: Rs.1610\nPay your bill at:\n www.mpcz.co.in', '2014-04-09 01:44:36', NULL, NULL, NULL, NULL, 'sent', NULL),
(53, '+918500169269', '+917694939339', 'Dear Avinash\nYour Monthly Bill:\nConnection ID: 82819\nUnits Consumed: 37.00\nCost: Rs.259\nPay your bill at:\n www.mpcz.co.in', '2014-04-09 01:46:37', NULL, NULL, NULL, NULL, 'sent', NULL),
(54, '+918500169269', '+917694939339', 'Warning!!! You have attempted to tamper your meter. If you continue to do so, your connection will be terminated.', '2014-04-09 03:55:59', NULL, NULL, NULL, NULL, 'sent', NULL),
(55, '+918500169269', '+917694939339', 'Warning!!! You have attempted to tamper your meter. If you continue to do so, your connection will be terminated.', '2014-04-09 03:57:01', NULL, NULL, NULL, NULL, 'sent', NULL),
(56, '+918500169269', '+917694939339', 'Dear Avinash\nYour Monthly Bill:\nConnection ID: 72497\nUnits Consumed: 230\nCost: Rs.1610\nPay your bill at:\n www.mpcz.co.in', '2014-04-09 03:57:52', NULL, NULL, NULL, NULL, 'sent', NULL),
(58, '+918500169269', '+918989828499', 'Dear Srinadh\nYour Monthly Bill:\nConnection ID: 28122\nUnits Consumed: 12346\nCost: Rs.86422\nPay your bill at:\n www.mpcz.co.in', '2014-04-09 04:16:53', NULL, NULL, NULL, NULL, 'sent', NULL),
(69, 'EL-DEPT', '+917694939339', 'Testing', '2014-04-09 10:33:58', NULL, NULL, NULL, NULL, 'sent', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sms_in`
--

CREATE TABLE IF NOT EXISTS `sms_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sms_text` varchar(1600) DEFAULT NULL,
  `sender_number` varchar(50) DEFAULT NULL,
  `sent_dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

--
-- Dumping data for table `sms_in`
--

INSERT INTO `sms_in` (`id`, `sms_text`, `sender_number`, `sent_dt`) VALUES
(1, 'hi ra how r ...', '+918989828499', '2014-04-08 01:06:09'),
(2, 'Hello!You ha...', 'BA-INBSNL', '2014-04-08 01:10:10'),
(3, 'monthsbill:\r...', '+917024505652', '2014-04-08 01:30:24'),
(4, 'monthsbill:\r...', '+917024505652', '2014-04-08 01:30:54'),
(5, '0.00', '+917024505652', '2014-04-08 01:45:39'),
(6, '393.00', '+917024505652', '2014-04-08 01:55:28'),
(7, '265.00', '+917024505652', '2014-04-08 01:55:57'),
(15, 'Hello!You ha...', 'BA-INBSNL', '2014-04-08 03:39:13'),
(16, 'Hello!You ha...', 'BA-INBSNL', '2014-04-08 03:40:04'),
(18, 'Hello!You ha...', 'BA-INBSNL', '2014-04-08 03:42:39'),
(19, 'Ysy', '+917694939339', '2014-04-08 03:43:30'),
(21, 'Hello!You ha...', 'BA-INBSNL', '2014-04-08 03:48:47'),
(22, 'Hii', '+917694939339', '2014-04-08 04:02:03'),
(25, '200', '+917694939339', '2014-04-08 04:17:10'),
(26, 'ALERT: You h...', 'BX-SBIINB', '2014-04-08 07:09:57'),
(27, 'ALERT: You h...', 'BX-SBIINB', '2014-04-08 07:14:44'),
(28, 'OTP to add b...', 'LM-SBIINB', '2014-04-08 07:15:53'),
(29, 'Hello!You ha...', 'BA-INBSNL', '2014-04-08 07:18:10'),
(30, 'Hello!You ha...', 'BA-INBSNL', '2014-04-08 07:18:26'),
(31, 'Hello!You ha...', 'BA-INBSNL', '2014-04-08 07:18:37'),
(32, 'Hello!You ha...', 'BA-INBSNL', '2014-04-08 07:19:16'),
(33, 'OTP to add b...', 'LM-SBIINB', '2014-04-08 07:19:16'),
(34, 'OTP to add b...', 'BX-SBIINB', '2014-04-08 07:20:08'),
(35, 'You added to...', 'BX-SBIINB', '2014-04-08 07:21:16'),
(36, 'OTP to trans...', 'LM-SBIINB', '2014-04-08 07:22:14'),
(37, 'You added to...', 'BX-SBIINB', '2014-04-08 07:21:16'),
(38, 'OTP to trans...', 'BX-SBIINB', '2014-04-08 07:23:45'),
(39, 'Thank you fo...', 'BX-SBIINB', '2014-04-08 07:26:25'),
(40, 'Activation o...', 'BX-SBIINB', '2014-04-08 08:31:22'),
(41, 'Third party ...', 'BX-SBIINB', '2014-04-08 09:31:34'),
(42, 'ALERT: You h...', 'BX-SBIINB', '2014-04-08 12:44:12'),
(43, 'BSNL-MOBILE ...', 'BA-611111', '2014-04-08 11:46:58'),
(44, 'ALERT: You h...', 'BX-SBIINB', '2014-04-08 13:24:13'),
(45, '200', '+917694939339', '2014-04-08 14:55:53'),
(46, '300', '+917694939339', '2014-04-08 14:58:10'),
(47, 'BSNL-MOBILE ...', 'BA-611111', '2014-04-08 13:56:42'),
(48, '350', '+917694939339', '2014-04-08 15:06:14'),
(49, '423', '+917694939339', '2014-04-08 15:18:02'),
(50, '233', '+917694939339', '2014-04-08 15:18:58'),
(51, 'Thanks for i...', '+918964916776', '2014-04-08 15:19:53'),
(52, '245', '+917694939339', '2014-04-08 15:32:39'),
(54, '12345', '+917024505652', '2014-04-08 16:22:18'),
(55, '239', '+917024505652', '2014-04-08 16:31:46'),
(56, '635', '+917024505652', '2014-04-08 16:36:03'),
(57, '234', '+917024505652', '2014-04-08 16:37:43'),
(58, '12346', '+917024505652', '2014-04-08 16:43:24'),
(59, '562', '+917024505652', '2014-04-08 16:47:18'),
(60, '560', '+917024505652', '2014-04-08 16:52:03'),
(61, '630', '+917024505652', '2014-04-08 17:01:59'),
(63, '176.00', '+917024505652', '2014-04-08 21:50:33'),
(64, '216.00', '+917024505652', '2014-04-08 21:52:33'),
(65, '230', '+917694939339', '2014-04-09 01:44:18'),
(66, '37.00', '+917024505652', '2014-04-09 01:46:19'),
(73, 'tampered', '+917694939339', '2014-04-09 03:55:42'),
(74, 'tampered', '+917694939339', '2014-04-09 03:56:40'),
(75, '230', '+917694939339', '2014-04-09 03:57:32'),
(77, '12346', '+917024505652', '2014-04-09 04:16:40');

--
-- Triggers `sms_in`
--
DROP TRIGGER IF EXISTS `message_trigger`;
DELIMITER //
CREATE TRIGGER `message_trigger` AFTER INSERT ON `sms_in`
 FOR EACH ROW begin
	IF new.sms_text = 'tampered' then
	INSERT INTO `ozekimessageout`( `sender`, `receiver`, `msg`, `senttime`, `receivedtime`, `operator`, `msgtype`, `reference`, `status`, `errormsg`) values ( '+918500169269',	
	(SELECT PhoneNo from customer where cust_id in (select cust_id from meter,sms_in 	where meter.meter_id = new.sender_number)),'Warning!!! You have attempted to tamper your meter. If you continue to do so, your connection will be terminated.',NULL,NULL,NULL,NULL,NULL,'send',NULL);
	ELSE
	INSERT INTO `ozekimessageout`( `sender`, `receiver`, `msg`, `senttime`, `receivedtime`, `operator`, `msgtype`, `reference`, `status`, `errormsg`) values ( '+918500169269',	
	(SELECT PhoneNo from customer where cust_id in (select cust_id from meter,sms_in 	where meter.meter_id = new.sender_number)),(SELECT CONCAT('Dear ',Name,'
Your Monthly Bill:','
Connection ID: ',ROUND((RAND()*90001)+10000),'
Units Consumed: ',(SELECT sms_text from sms_in,meter where new.sender_number = meter_id order by id DESC limit 0,1),'
Cost: Rs.', (SELECT (convert(sms_text,unsigned integer))*7 from sms_in,meter where new.sender_number = meter_id order by id DESC limit 0,1),'
Pay your bill at:
 www.mpcz.co.in') from customer where cust_id in (select cust_id from meter,sms_in 	where meter.meter_id = new.sender_number)),NULL,NULL,NULL,NULL,NULL,'send',NULL);


	INSERT INTO stats ( `meter_id`, `load_value`, `date`) values (	
	 (select distinct meter_id from meter,sms_in where meter.meter_id = new.sender_number),(SELECT sms_text from sms_in,meter where new.sender_number = meter_id order by id DESC limit 0,1),NOW());
END IF;
end
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

CREATE TABLE IF NOT EXISTS `stats` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `meter_id` varchar(50) NOT NULL,
  `load_value` float NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`,`meter_id`,`load_value`),
  KEY `stats_ibfk_1` (`meter_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `stats`
--

INSERT INTO `stats` (`id`, `meter_id`, `load_value`, `date`) VALUES
(1, '+917024505652', 176, '2014-04-08'),
(2, '+917024505652', 216, '2014-04-08'),
(3, '+917024505652', 234, '2014-04-08'),
(4, '+917024505652', 239, '2014-04-08'),
(5, '+917024505652', 560, '2014-04-08'),
(6, '+917024505652', 562, '2014-04-08'),
(7, '+917024505652', 630, '2014-04-08'),
(8, '+917024505652', 635, '2014-04-08'),
(9, '+917024505652', 12345, '2014-04-08'),
(10, '+917024505652', 12346, '2014-04-08'),
(11, '+917694939339', 230, '2014-04-09'),
(12, '+917024505652', 37, '2014-04-09'),
(13, '+917694939339', 230, '2014-04-09'),
(14, '+917024505652', 12346, '2014-04-09');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meter`
--
ALTER TABLE `meter`
  ADD CONSTRAINT `meter_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`);

--
-- Constraints for table `stats`
--
ALTER TABLE `stats`
  ADD CONSTRAINT `stats_ibfk_1` FOREIGN KEY (`meter_id`) REFERENCES `meter` (`meter_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
