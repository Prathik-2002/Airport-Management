-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2022 at 09:22 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newdemo`
--

-- --------------------------------------------------------

--
-- Table structure for table `airlines`
--

CREATE TABLE `airlines` (
  `airlineID` varchar(10) NOT NULL,
  `al_name` varchar(20) DEFAULT NULL,
  `3digitcode` varchar(3) DEFAULT NULL,
  `airportno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airlines`
--

INSERT INTO `airlines` (`airlineID`, `al_name`, `3digitcode`, `airportno`) VALUES
('6E', 'IndiGo', 'IGO', 1),
('AI', 'Air India', 'AIC', 3),
('I5', 'AirAsia India', 'IAD', 4),
('IX', 'AirIndia Express', 'AXB', 2),
('SG', 'SpiceJet', 'SEJ', 6),
('VK', 'Vistara', 'VTI', 8);

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `Airportno` int(2) NOT NULL,
  `airportname` varchar(50) NOT NULL,
  `astate` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT 'India'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`Airportno`, `airportname`, `astate`, `city`, `country`) VALUES
(1, 'Indira Gandhi International Airport', 'Delhi', 'New Delhi', 'India'),
(2, 'Chhatrapati Shivaji Maharaj International Airport', 'Maharastra', 'Mumbai', 'India'),
(3, 'Shirdi Airport', 'Maharastra ', 'Shirdi', 'India'),
(4, 'Mangaluru Airport', 'Karnataka', 'Mangaluru', 'India'),
(5, 'Kempegowda International Airport', 'Karnataka', 'Bangaluru', 'India'),
(6, 'Vadodar Airport', 'Gujarat', 'Vadodar', 'India'),
(7, 'Jabalpur Airport', 'Madhya Pradesh', 'Jabalpur', 'India'),
(8, 'Kanpur Airport', 'Uttar Pradesh', 'Kanpur', 'India'),
(9, 'Nal Airport', 'Rajasthan', 'Bikaner', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `booked`
--

CREATE TABLE `booked` (
  `pid` int(11) NOT NULL,
  `ticketno` int(11) NOT NULL,
  `dateofbooking` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booked`
--

INSERT INTO `booked` (`pid`, `ticketno`, `dateofbooking`) VALUES
(65501, 22201, '2022-12-01'),
(65502, 33301, '2022-12-02'),
(65503, 77966, '2022-11-16'),
(65504, 82907, '2022-11-09'),
(65505, 87704, '2022-11-09'),
(65506, 11101, '2022-11-09'),
(65507, 11281, '2022-11-15'),
(65508, 22302, '2022-11-07'),
(65509, 22300, '2022-11-09'),
(65510, 22405, '2022-11-19'),
(65511, 23403, '2022-11-21'),
(65512, 32100, '2022-11-16'),
(65513, 33307, '2022-11-22'),
(65514, 33400, '2022-12-18'),
(65515, 22374, '2022-11-21'),
(65516, 11206, '2022-11-16'),
(65517, 43303, '2022-11-07'),
(65518, 44404, '2022-11-15'),
(65519, 44707, '2022-11-13'),
(65520, 54002, '2022-11-20'),
(65521, 54409, '2022-12-01'),
(65522, 55505, '2022-11-29'),
(65523, 55608, '2022-11-28'),
(65524, 62903, '2022-11-29'),
(65525, 63505, '2022-11-28'),
(65526, 64704, '2022-11-27'),
(65527, 66604, '2022-11-28'),
(65528, 66807, '2022-11-26'),
(65529, 67203, '2022-11-21'),
(65530, 74304, '2022-11-28'),
(65531, 74409, '2022-11-14'),
(65532, 98105, '2022-11-24'),
(65533, 32101, '2022-12-09'),
(65534, 76600, '2022-12-09'),
(65535, 55650, '2022-12-09'),
(65536, 22400, '2022-12-09'),
(65537, 10280, '2022-12-09'),
(65538, 22401, '2022-12-10'),
(65539, 22402, '2022-12-10');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flightcode` varchar(10) NOT NULL,
  `arrival` datetime DEFAULT NULL,
  `departure` datetime DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `duration` time DEFAULT NULL,
  `airlineID` varchar(10) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `did` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flightcode`, `arrival`, `departure`, `source`, `destination`, `duration`, `airlineID`, `sid`, `did`) VALUES
('AIC01', '2022-12-10 12:30:30', '2022-12-10 14:30:00', 'Indira Gandhi International Airport', 'Kempegowda International Airport', '02:00:30', 'AI', 1, 5),
('AIC02', '2022-12-11 10:35:00', '2022-12-11 12:45:35', 'Chhatrapati Shivaji Maharaj International Airport', 'Mangaluru Airport', '02:10:35', 'AI', 2, 4),
('AIC03', '2022-12-10 11:30:41', '2022-12-10 12:35:41', 'Kempegowda International Airport', 'Chhatrapati Shivaji Maharaj International Airport', '01:05:00', 'AI', 5, 2),
('AIC04', '2022-12-12 11:30:41', '2022-12-12 12:35:41', 'Vadodar Airport', 'Chhatrapati Shivaji Maharaj International Airport', '01:05:00', 'AI', 6, 2),
('AIC05', '2022-12-11 11:30:41', '2022-12-11 12:35:41', 'Jabalpur Airport', 'Shirdi Airport', '01:05:00', 'AI', 7, 3),
('AIC06', '2022-12-10 11:30:41', '2022-12-10 12:35:41', 'Kanpur Airport', 'Chhatrapati Shivaji Maharaj International Airport', '01:05:00', 'AI', 8, 2),
('AIC07', '2022-12-13 11:30:41', '2022-12-13 12:35:41', 'Nal Airport', 'Chhatrapati Shivaji Maharaj International Airport', '01:05:00', 'AI', 9, 2),
('AXB01', '2022-12-12 15:15:00', '2022-12-12 18:30:00', 'Indira Gandhi International Airport', 'Jabalpur Airport', '03:15:00', 'IX', 1, 7),
('AXB02', '2022-12-14 14:00:10', '2022-12-14 15:15:50', 'Shirdi Airport', 'Jabalpur Airport', '01:45:40', 'IX', 3, 7),
('AXB03', '2022-12-11 13:50:00', '2022-12-11 15:20:00', 'Kempegowda International Airport', 'Jabalpur Airport', '02:30:00', 'IX', 5, 7),
('AXB04', '2022-12-11 13:50:00', '2022-12-11 15:20:00', 'Vadodar Airport', 'Jabalpur Airport', '02:30:00', 'IX', 6, 7),
('AXB05', '2022-12-12 15:50:00', '2022-12-12 17:20:00', 'Jabalpur Airport', 'Vadodar Airport', '02:30:00', 'IX', 7, 6),
('AXB06', '2022-12-11 14:50:00', '2022-12-11 16:20:00', 'Kanpur Airport', 'Vadodar Airport', '02:30:00', 'IX', 8, 6),
('AXB07', '2022-12-10 13:50:00', '2022-12-10 15:20:00', 'Nal Airport', 'Vadodar Airport ', '02:30:00', 'IX', 9, 6),
('AXB08', '2022-12-10 22:15:00', '2022-12-11 23:30:00', 'Chhatrapati Shivaji Maharaj International Airport', 'Kempegowda International Airport', '01:15:00', 'AI', 2, 5),
('IAD01', '2022-12-11 18:15:00', '2022-12-11 19:30:30', 'Indira Gandhi International Airport', 'Vadodar Airport', '01:15:30', 'I5', 1, 6),
('IAD02', '2022-12-10 15:45:25', '2022-12-10 16:45:00', 'Chhatrapati Shivaji Maharaj International Airport', 'Vadodar Airport ', '02:00:45', 'I5', 2, 6),
('IAD03', '2022-12-11 12:50:00', '2022-12-11 14:30:00', 'Kempegowda International Airport', 'Vadodar Airport', '02:40:00', 'I5', 5, 6),
('IAD04', '2022-12-10 12:50:00', '2022-12-10 14:30:00', 'Vadodar Airport', 'Kempegowda International Airport', '02:40:00', 'I5', 6, 5),
('IAD05', '2022-12-10 12:50:00', '2022-12-10 14:30:00', 'Jabalpur Airport', 'Mangaluru Airport', '02:40:00', 'I5', 7, 4),
('IAD06', '2022-12-12 12:50:00', '2022-12-12 14:30:00', 'Kanpur Airport', 'Kempegowda International Airport', '02:40:00', 'I5', 8, 5),
('IAD07', '2022-12-10 12:50:00', '2022-12-10 14:30:00', 'Nal Airport', 'Kempegowda International Airport', '02:40:00', 'I5', 9, 5),
('IGO01', '2022-12-12 19:00:24', '2022-12-12 22:15:24', 'Indira Gandhi International Airport', 'Chhatrapati Shivaji Maharaj International Airport', '03:15:00', '6E', 1, 2),
('IGO02', '2022-12-10 16:10:10', '2022-12-10 17:10:10', 'Chhatrapati Shivaji Maharaj International Airport', 'Indira Gandhi International ', '01:00:00', '6E', 2, 1),
('IGO03', '2022-12-12 10:00:00', '2022-12-12 11:45:00', 'Kempegowda International Airport', 'Indira Gandhi  International Airport', '01:45:00', '6E', 5, 1),
('IGO04', '1899-12-13 00:00:00', '2022-12-13 14:15:24', 'Vadodar Airport', 'Indira Gandhi  International Airport', '04:15:00', '6E', 6, 1),
('IGO05', '2022-12-10 10:00:24', '2022-12-10 14:15:24', 'Jabalpur Airport', 'Indira Gandhi  International Airport', '04:15:00', '6E', 7, 1),
('IGO06', '2022-12-12 10:00:00', '2022-12-12 11:00:00', 'Kanpur Airport', 'Indira Gandhi  International Airport', '01:00:00', '6E', 8, 1),
('IGO07', '2022-12-14 14:00:10', '2022-12-14 15:45:00', 'Nal Airport', 'Indira Gandhi  International Airport', '01:45:50', '6E', 9, 1),
('SEJ01', '2022-12-11 00:10:00', '2022-12-11 01:50:30', 'Indira Gandhi International Airport', 'Kanpur Airport', '01:40:30', 'SG', 1, 8),
('SEJ02', '2022-12-12 18:00:00', '2022-12-12 20:30:50', 'Chhatrapati Shivaji Maharaj International Airport', 'Kanpur Airport', '02:30:50', 'SG', 2, 8),
('SEJ03', '2022-12-14 16:25:10', '2022-12-14 18:50:00', 'Kempegowda International Airport', 'Kanpur Airport', '02:25:50', 'SG', 5, 8),
('SEJ04', '2022-12-14 16:15:00', '2022-12-14 18:15:24', 'Vadodar Airport', 'Kanpur Airport', '02:00:24', 'SG', 6, 8),
('SEJ05', '2022-12-13 18:25:10', '2022-12-13 20:50:00', 'Jabalpur Airport', 'Kanpur Airport', '02:25:50', 'SG', 7, 8),
('SEJ06', '2022-12-14 16:25:10', '2022-12-14 18:50:00', 'Kanpur Airport', 'Jabalpur Airport', '02:25:50', 'SG', 8, 7),
('SEJ07', '2022-12-12 16:25:10', '2022-12-12 18:50:00', 'Nal Airport', 'Jabalpur Airport', '02:25:50', 'SG', 9, 7),
('VTI01', '2022-12-10 02:15:30', '2022-12-10 05:00:30', 'Indira Gandhi International Airport', 'Nal Airport', '03:45:00', 'VK', 1, 9),
('VTI02', '2022-12-11 22:30:45', '2022-12-11 23:45:25', 'Chhatrapati Shivaji Maharaj International Airport', 'Nal Airport', '01:15:35', 'VK', 2, 9),
('VTI03', '2022-12-13 20:10:10', '2022-12-13 22:05:20', 'Mangaluru Airport', 'Nal Airport', '02:55:10', 'VK', 4, 9),
('VTI04', '2022-12-13 18:35:20', '2022-12-13 20:35:20', 'Vadodar Airport', 'Nal Airport', '02:00:00', 'VK', 6, 9),
('VTI05', '2022-12-12 20:10:10', '2022-12-12 22:05:20', 'Jabalpur Airport', 'Nal Airport', '02:55:10', 'VK', 7, 9),
('VTI06', '2022-12-13 20:10:10', '2022-12-13 22:05:20', 'Kanpur Airport', 'Nal Airport', '02:55:10', 'VK', 8, 9),
('VTI07', '2022-12-10 20:10:10', '2022-12-10 22:05:20', 'Nal Airport', 'Kanpur Airport', '02:55:10', 'VK', 9, 8);

-- --------------------------------------------------------

--
-- Stand-in structure for view `flightpro`
-- (See below for the actual view)
--
CREATE TABLE `flightpro` (
`flightcode` varchar(10)
,`arrival` datetime
,`departure` datetime
,`source` varchar(50)
,`destination` varchar(50)
,`duration` time
,`airlineID` varchar(10)
,`sid` int(11)
,`did` int(11)
,`sstate` varchar(20)
,`dstate` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `flightwithsstate`
-- (See below for the actual view)
--
CREATE TABLE `flightwithsstate` (
`flightcode` varchar(10)
,`arrival` datetime
,`departure` datetime
,`source` varchar(50)
,`destination` varchar(50)
,`duration` time
,`airlineID` varchar(10)
,`sid` int(11)
,`did` int(11)
,`sstate` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `notbooked`
-- (See below for the actual view)
--
CREATE TABLE `notbooked` (
`ticketno` int(11)
,`flightcode` varchar(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `pid` int(11) NOT NULL,
  `paddress` varchar(100) DEFAULT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `passportno` int(11) DEFAULT NULL,
  `flightcode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`pid`, `paddress`, `fname`, `lname`, `age`, `sex`, `phone`, `passportno`, `flightcode`) VALUES
(65501, '53d Phase V,Udyog vihar,\r\nDelhi Haryana-122001', 'Prajwal', 'Kumar', 25, 'M', '9512450119', 3119585, NULL),
(65502, '210 Fabricon Estate,Shastri Nagar\r\nMaharashtra-400054', 'Ananda', 'Bhandari', 45, 'M', '9535482563', 9137925, NULL),
(65503, '19/4,Tsp Road Fort,Kalasipalyam\r\nBanglore,Karnataka-560002', 'Naman', 'Suvarna', 22, 'M', '9071990964', 5498838, NULL),
(65504, '8-b,Paras Bldg Nagar Thakur,\r\nMumbai,Maharashtra-560002\r\n', 'Ayush', 'Hegde', 29, 'M', '6562995782', 1242853, NULL),
(65505, 'Plot No 29,Sector23,cidco,\r\nMumbai Maharashtra-400705', 'Aneesha', 'Salian', 32, 'F', '9592104999', 4071151, NULL),
(65506, 'C 33,Acharaya Niketan,Mayur Vihar\r\nDelhi,Haryana-110091', 'Yusuf', 'Abdul', 47, 'M', '9851163524', 7365536, NULL),
(65507, 'Paldi Char Rasta,nr Udipi Hote\r\nAhemdabad,Gujarat-380007', 'Keertana', 'kamath', 29, 'M', '6532525269', 4017151, NULL),
(65508, '335,Inder Lok,Opp Bari\r\nMysore,Karnataka-110035', 'Pavan', 'Kamath', 20, 'M', '4526358585', 2065510, NULL),
(65509, 'Nehru Place,Lal Kothi Scheme,\r\nJaipur,Rajastan-302015', 'Vijay', 'Jat', 35, 'M', '7856563325', 6413091, NULL),
(65510, 'D Floor,Near Nagpur Parishad,\r\nMumbai,Maharashtra-401204', 'Shalini', 'Kapoor', 39, 'F', '8562454575', 3123928, NULL),
(65511, '3-301,1,Panna Bhavan No,Opp\r\nAjmer,Rajastan-401303', 'Anita', 'Sarabhai', 31, 'F', '4578889622', 7355671, NULL),
(65512, '29/45,gurukrupa society,\r\nPune,Maharashtra-411027', 'Shwetha', 'Salian', 28, 'F', '6235455141', 3591154, NULL),
(65513, 'Shop No 32,Laram Centre,Andheri,\r\nMumbai,Maharashtra', 'Roshan ', 'Hegde', 20, 'M', '6652458511', 5253384, NULL),
(65514, '13-882,Fci Road,Surya Nagar Colony, Hyderabad,AndraPradesh-500076', 'LIonel', 'Prakash', 45, 'M', '4521652555', 4333529, NULL),
(65515, '294,Walltaxrd,Park Town\r\nChennai,TamilNadu-600004\r\n\r\n', 'Mohit', 'Mohan', 25, 'M', '4525625489', 1525448, NULL),
(65516, '81,R V Road,Next to Silicon Honda,\r\nShowroom,Basavanagudi-560004', 'Arun', 'Kumar', 24, 'M', '9584625215', 8569841, NULL),
(65517, '108/2,Bangur Avenue,Bangur,\r\nKolkata,WestBengal-700555', 'Joshiga', 'kumar', 25, 'F', '6425256355', 7845512, NULL),
(65518, 'L-556,Plot No.L-556,\r\nAhemdabad,Gujarat-382415', 'Arvind', 'Sagar', 55, 'M', '4526154578', 4589638, NULL),
(65519, '57/4,R V Complex,\r\nManglore Karnataka-560004', 'Rohit', 'Rao', 22, 'M', '9108620259', 9638458, NULL),
(65520, '55,Hussain Sahib Street,\r\nChennai,TamilNadu-600423', 'Nagraj', 'Suvarna', 24, 'M', '6532624581', 4758124, NULL),
(65521, '3 Udayachai,Salt Lake,\r\nKolkata,West Bengal-700017', 'Krishna', 'Sundari', 31, 'M', '6225458555', 4574421, NULL),
(65522, '50,Malad Shopping Centre,\r\nMumbai,Maharashtra-400708', 'Savitha ', 'Gowda', 30, 'F', '6352418596', 7845126, NULL),
(65523, 'pl#29,shop,10,Karkhana,\r\nHyderabad,AndraPradesh-500015', 'Hinata', 'Shoyuou', 20, 'M', '4521635248', 1452423, NULL),
(65524, 'F3,Heealana Complex,1 Floor\r\nBanglore,Karnataka-560014', 'Heera', 'Salian', 41, 'F', '8541525514', 6367623, NULL),
(65525, 'C 22/6,Noida,opp centre,\r\nDelhi,Delhi-201301', 'Sita', 'Lakshmi', 24, 'F', '9568554174', 1124586, NULL),
(65526, '29,471,Devpath Building,CG road,\r\nAhemdabad Gujarat-380006', 'Gautham', 'Poojary', 24, 'M', '8541256355', 4578569, NULL),
(65527, '405,Katha Bazar,Narshi,\r\nUdupi,Karnataka-5741504', 'Deekshith ', 'Poojary', 43, 'M', '6543219874', 7896541, NULL),
(65528, '93,Madhu Market A M Lane,\r\nBAnglore,Karnataka-560035', 'Dheeraj', 'Kotian', 29, 'M', '6352418596', 6352415, NULL),
(65529, '124/59,c Block Govind Nagar\r\nKanpur,UttarPradesh-208207', 'Monish', 'Shetty', 21, 'M', '8596325415', 1593571, NULL),
(65530, '8-2-192/3,Panjagutta,\r\nHyderbad,AndraPradesh-500082', 'Babu', 'Shetty', 45, 'M', '7539518524', 7586425, NULL),
(65531, 'Gagan Nilaya, 21 Street, JP Complex,\r\nMangaluru, Karnataka - 571234', 'Vicky', 'Kamath', 23, 'M', '9453623712', 7777444, NULL),
(65532, 'Well Rock, Room-23,34 Street , Mysore, Karnataka - 543699', 'Suresh', 'Shetty', 43, 'M', '8767656773', 6755689, NULL),
(65533, 'Home Sell, Indhar, NH-23 road, Kanpur, Uttar Pradesh - 664738', 'Rachan', 'Surya', 32, 'M', '875647372', 6547389, NULL),
(65534, 'Flower House, Janthra, Belman, Udupi,Karnataka- 567112', 'Deon', 'Mendonca', 21, 'M', '8767534218', 6563526, NULL),
(65535, 'Feona Lives Here, 453-Street, Honipur, Gujarat - 6754333', 'Feona', 'Menon', 23, 'F', '8786754536', 536789, NULL),
(65536, 'Shri Hari, Flower Station, Andheri, Maharastra', 'Pushpa', 'Raj', 54, 'M', '7565849373', 5546378, NULL),
(65537, 'Cream Residence, Gojo Street, Aikunpur, Maharastra - 687843', 'Gopal', 'Rao', 43, 'M', '7864532156', 6490878, NULL),
(65538, 'Urva market, State bank,\r\nManglore, Karnataka-547845', 'Pranav', 'Shetty', 21, 'M', '4512487556', 2589634, NULL),
(65539, 'Ghost housreb,KArnatka, - 56438', 'Sandeep', 'Shetty', 44, 'M', '8847635643', 6546378, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticketno` int(11) NOT NULL,
  `tsource` varchar(50) DEFAULT NULL,
  `tdestination` varchar(50) DEFAULT NULL,
  `dateoftravel` date DEFAULT NULL,
  `seatno` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `flightcode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticketno`, `tsource`, `tdestination`, `dateoftravel`, `seatno`, `price`, `flightcode`) VALUES
(10280, 'Chhatrapati Shivaji Maharaj International Airport', 'Kempegowda International Airport', '2022-12-10', 1, 8060, 'AXB08'),
(10281, 'Chhatrapati Shivaji Maharaj International Airport', 'Kempegowda International Airport', '2022-12-10', 2, 8060, 'AXB08'),
(10282, 'Chhatrapati Shivaji Maharaj International Airport', 'Kempegowda International Airport', '2022-12-10', 3, 8060, 'AXB08'),
(10283, 'Chhatrapati Shivaji Maharaj International Airport', 'Kempegowda International Airport', '2022-12-10', 4, 8060, 'AXB08'),
(10284, 'Chhatrapati Shivaji Maharaj International Airport', 'Kempegowda International Airport', '2022-12-10', 5, 8060, 'AXB08'),
(10285, 'Chhatrapati Shivaji Maharaj International Airport', 'Kempegowda International Airport', '2022-12-10', 6, 8060, 'AXB08'),
(10286, 'Chhatrapati Shivaji Maharaj International Airport', 'Kempegowda International Airport', '2022-12-10', 7, 8060, 'AXB08'),
(10287, 'Chhatrapati Shivaji Maharaj International Airport', 'Kempegowda International Airport', '2022-12-10', 8, 8060, 'AXB08'),
(10288, 'Chhatrapati Shivaji Maharaj International Airport', 'Kempegowda International Airport', '2022-12-10', 9, 8060, 'AXB08'),
(10289, 'Chhatrapati Shivaji Maharaj International Airport', 'Kempegowda International Airport', '2022-12-10', 10, 8060, 'AXB08'),
(11100, 'Indira Gandhi International Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-12', 1, 6580, 'IGO01'),
(11101, 'Indira Gandhi International Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-12', 2, 6580, 'IGO01'),
(11102, 'Indira Gandhi International Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-12', 3, 6580, 'IGO01'),
(11103, 'Indira Gandhi International Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-12', 4, 6580, 'IGO01'),
(11104, 'Indira Gandhi International Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-12', 5, 6580, 'IGO01'),
(11105, 'Indira Gandhi International Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-12', 6, 6580, 'IGO01'),
(11106, 'Indira Gandhi International Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-12', 7, 6580, 'IGO01'),
(11107, 'Indira Gandhi International Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-12', 8, 6580, 'IGO01'),
(11108, 'Indira Gandhi International Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-12', 9, 6580, 'IGO01'),
(11109, 'Indira Gandhi International Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-12', 10, 6580, 'IGO01'),
(11200, 'Indira Gandhi International Airport', 'Kanpur Airport', '2022-12-11', 1, 6480, 'SEJ01'),
(11201, 'Indira Gandhi International Airport', 'Kanpur Airport', '2022-12-11', 2, 6480, 'SEJ01'),
(11202, 'Indira Gandhi International Airport', 'Kanpur Airport', '2022-12-11', 3, 6480, 'SEJ01'),
(11203, 'Indira Gandhi International Airport', 'Kanpur Airport', '2022-12-11', 4, 6480, 'SEJ01'),
(11204, 'Indira Gandhi International Airport', 'Kanpur Airport', '2022-12-11', 5, 6480, 'SEJ01'),
(11205, 'Indira Gandhi International Airport', 'Kanpur Airport', '2022-12-11', 6, 6480, 'SEJ01'),
(11206, 'Indira Gandhi International Airport', 'Kanpur Airport', '2022-12-11', 7, 6480, 'SEJ01'),
(11207, 'Indira Gandhi International Airport', 'Kanpur Airport', '2022-12-11', 8, 6480, 'SEJ01'),
(11208, 'Indira Gandhi International Airport', 'Kanpur Airport', '2022-12-11', 9, 6480, 'SEJ01'),
(11209, 'Indira Gandhi International Airport', 'Kanpur Airport', '2022-12-11', 10, 6480, 'SEJ01'),
(11280, 'Indira Gandhi International Airport', 'Nal Airport', '2022-12-10', 1, 7660, 'VTI01'),
(11281, 'Indira Gandhi International Airport', 'Nal Airport', '2022-12-10', 2, 7660, 'VTI01'),
(11282, 'Indira Gandhi International Airport', 'Nal Airport', '2022-12-10', 3, 7660, 'VTI01'),
(11283, 'Indira Gandhi International Airport', 'Nal Airport', '2022-12-10', 4, 7660, 'VTI01'),
(11284, 'Indira Gandhi International Airport', 'Nal Airport', '2022-12-10', 5, 7660, 'VTI01'),
(11285, 'Indira Gandhi International Airport', 'Nal Airport', '2022-12-10', 6, 7660, 'VTI01'),
(11286, 'Indira Gandhi International Airport', 'Nal Airport', '2022-12-10', 7, 7660, 'VTI01'),
(11287, 'Indira Gandhi International Airport', 'Nal Airport', '2022-12-10', 8, 7660, 'VTI01'),
(11288, 'Indira Gandhi International Airport', 'Nal Airport', '2022-12-10', 9, 7660, 'VTI01'),
(11289, 'Indira Gandhi International Airport', 'Nal Airport', '2022-12-10', 10, 7660, 'VTI01'),
(22200, 'Chhatrapati Shivaji Maharaj International Airport', 'Indira Gandhi International ', '2022-12-10', 1, 9780, 'IGO02'),
(22201, 'Chhatrapati Shivaji Maharaj International Airport', 'Indira Gandhi International ', '2022-12-10', 2, 9780, 'IGO02'),
(22202, 'Chhatrapati Shivaji Maharaj International Airport', 'Indira Gandhi International ', '2022-12-10', 3, 9780, 'IGO02'),
(22203, 'Chhatrapati Shivaji Maharaj International Airport', 'Indira Gandhi International ', '2022-12-10', 4, 9780, 'IGO02'),
(22204, 'Chhatrapati Shivaji Maharaj International Airport', 'Indira Gandhi International ', '2022-12-10', 5, 9780, 'IGO02'),
(22205, 'Chhatrapati Shivaji Maharaj International Airport', 'Indira Gandhi International ', '2022-12-10', 6, 9780, 'IGO02'),
(22206, 'Chhatrapati Shivaji Maharaj International Airport', 'Indira Gandhi International ', '2022-12-10', 7, 9780, 'IGO02'),
(22207, 'Chhatrapati Shivaji Maharaj International Airport', 'Indira Gandhi International ', '2022-12-10', 8, 9780, 'IGO02'),
(22208, 'Chhatrapati Shivaji Maharaj International Airport', 'Indira Gandhi International ', '2022-12-10', 9, 9780, 'IGO02'),
(22209, 'Chhatrapati Shivaji Maharaj International Airport', 'Indira Gandhi International ', '2022-12-10', 10, 9780, 'IGO02'),
(22300, 'Chhatrapati Shivaji Maharaj International Airport', 'Kanpur Airport', '2022-12-12', 1, 9680, 'SEJ02'),
(22301, 'Chhatrapati Shivaji Maharaj International Airport', 'Kanpur Airport', '2022-12-12', 2, 9680, 'SEJ02'),
(22302, 'Chhatrapati Shivaji Maharaj International Airport', 'Kanpur Airport', '2022-12-12', 3, 9680, 'SEJ02'),
(22303, 'Chhatrapati Shivaji Maharaj International Airport', 'Kanpur Airport', '2022-12-12', 4, 9680, 'SEJ02'),
(22304, 'Chhatrapati Shivaji Maharaj International Airport', 'Kanpur Airport', '2022-12-12', 5, 9680, 'SEJ02'),
(22305, 'Chhatrapati Shivaji Maharaj International Airport', 'Kanpur Airport', '2022-12-12', 6, 9680, 'SEJ02'),
(22306, 'Chhatrapati Shivaji Maharaj International Airport', 'Kanpur Airport', '2022-12-12', 7, 9680, 'SEJ02'),
(22307, 'Chhatrapati Shivaji Maharaj International Airport', 'Kanpur Airport', '2022-12-12', 8, 9680, 'SEJ02'),
(22308, 'Chhatrapati Shivaji Maharaj International Airport', 'Kanpur Airport', '2022-12-12', 9, 9680, 'SEJ02'),
(22309, 'Chhatrapati Shivaji Maharaj International Airport', 'Kanpur Airport', '2022-12-12', 10, 9680, 'SEJ02'),
(22370, 'Chhatrapati Shivaji Maharaj International Airport', 'Nal Airport', '2022-12-11', 1, 9980, 'VTI02'),
(22371, 'Chhatrapati Shivaji Maharaj International Airport', 'Nal Airport', '2022-12-11', 2, 9980, 'VTI02'),
(22372, 'Chhatrapati Shivaji Maharaj International Airport', 'Nal Airport', '2022-12-11', 3, 9980, 'VTI02'),
(22373, 'Chhatrapati Shivaji Maharaj International Airport', 'Nal Airport', '2022-12-11', 4, 9980, 'VTI02'),
(22374, 'Chhatrapati Shivaji Maharaj International Airport', 'Nal Airport', '2022-12-11', 5, 9980, 'VTI02'),
(22375, 'Chhatrapati Shivaji Maharaj International Airport', 'Nal Airport', '2022-12-11', 6, 9980, 'VTI02'),
(22376, 'Chhatrapati Shivaji Maharaj International Airport', 'Nal Airport', '2022-12-11', 7, 9980, 'VTI02'),
(22377, 'Chhatrapati Shivaji Maharaj International Airport', 'Nal Airport', '2022-12-11', 8, 9980, 'VTI02'),
(22378, 'Chhatrapati Shivaji Maharaj International Airport', 'Nal Airport', '2022-12-11', 9, 9980, 'VTI02'),
(22379, 'Chhatrapati Shivaji Maharaj International Airport', 'Nal Airport', '2022-12-11', 10, 9980, 'VTI02'),
(22400, 'Chhatrapati Shivaji Maharaj International Airport', 'Mangaluru Airport', '2022-12-11', 1, 6400, 'AIC02'),
(22401, 'Chhatrapati Shivaji Maharaj International Airport', 'Mangaluru Airport', '2022-12-11', 2, 6400, 'AIC02'),
(22402, 'Chhatrapati Shivaji Maharaj International Airport', 'Mangaluru Airport', '2022-12-11', 3, 6400, 'AIC02'),
(22403, 'Chhatrapati Shivaji Maharaj International Airport', 'Mangaluru Airport', '2022-12-11', 4, 6400, 'AIC02'),
(22404, 'Chhatrapati Shivaji Maharaj International Airport', 'Mangaluru Airport', '2022-12-11', 5, 6400, 'AIC02'),
(22405, 'Chhatrapati Shivaji Maharaj International Airport', 'Mangaluru Airport', '2022-12-11', 6, 6400, 'AIC02'),
(22406, 'Chhatrapati Shivaji Maharaj International Airport', 'Mangaluru Airport', '2022-12-11', 7, 6400, 'AIC02'),
(22407, 'Chhatrapati Shivaji Maharaj International Airport', 'Mangaluru Airport', '2022-12-11', 8, 6400, 'AIC02'),
(22408, 'Chhatrapati Shivaji Maharaj International Airport', 'Mangaluru Airport', '2022-12-11', 9, 6400, 'AIC02'),
(22409, 'Chhatrapati Shivaji Maharaj International Airport', 'Mangaluru Airport', '2022-12-11', 10, 6400, 'AIC02'),
(23400, 'Indira Gandhi International Airport', 'Jabalpur Airport', '2022-12-12', 1, 3440, 'AXB01'),
(23401, 'Indira Gandhi International Airport', 'Jabalpur Airport', '2022-12-12', 2, 3440, 'AXB01'),
(23402, 'Indira Gandhi International Airport', 'Jabalpur Airport', '2022-12-12', 3, 3440, 'AXB01'),
(23403, 'Indira Gandhi International Airport', 'Jabalpur Airport', '2022-12-12', 4, 3440, 'AXB01'),
(23404, 'Indira Gandhi International Airport', 'Jabalpur Airport', '2022-12-12', 5, 3440, 'AXB01'),
(23405, 'Indira Gandhi International Airport', 'Jabalpur Airport', '2022-12-12', 6, 3440, 'AXB01'),
(23406, 'Indira Gandhi International Airport', 'Jabalpur Airport', '2022-12-12', 7, 3440, 'AXB01'),
(23407, 'Indira Gandhi International Airport', 'Jabalpur Airport', '2022-12-12', 8, 3440, 'AXB01'),
(23408, 'Indira Gandhi International Airport', 'Jabalpur Airport', '2022-12-12', 9, 3440, 'AXB01'),
(23409, 'Indira Gandhi International Airport', 'Jabalpur Airport', '2022-12-12', 10, 3440, 'AXB01'),
(32100, 'Kanpur Airport', 'Kempegowda International Airport', '2022-12-12', 1, 8380, 'IAD06'),
(32101, 'Kanpur Airport', 'Kempegowda International Airport', '2022-12-12', 2, 8380, 'IAD06'),
(32102, 'Kanpur Airport', 'Kempegowda International Airport', '2022-12-12', 3, 8380, 'IAD06'),
(32103, 'Kanpur Airport', 'Kempegowda International Airport', '2022-12-12', 4, 8380, 'IAD06'),
(32104, 'Kanpur Airport', 'Kempegowda International Airport', '2022-12-12', 5, 8380, 'IAD06'),
(32105, 'Kanpur Airport', 'Kempegowda International Airport', '2022-12-12', 6, 8380, 'IAD06'),
(32106, 'Kanpur Airport', 'Kempegowda International Airport', '2022-12-12', 7, 8380, 'IAD06'),
(32107, 'Kanpur Airport', 'Kempegowda International Airport', '2022-12-12', 8, 8380, 'IAD06'),
(32108, 'Kanpur Airport', 'Kempegowda International Airport', '2022-12-12', 9, 8380, 'IAD06'),
(32109, 'Kanpur Airport', 'Kempegowda International Airport', '2022-12-12', 10, 8380, 'IAD06'),
(33300, 'Kempegowda International Airport', 'Indira Gandhi  International Airport', '2022-12-12', 1, 6540, 'IGO03'),
(33301, 'Kempegowda International Airport', 'Indira Gandhi  International Airport', '2022-12-12', 2, 6540, 'IGO03'),
(33302, 'Kempegowda International Airport', 'Indira Gandhi  International Airport', '2022-12-12', 3, 6540, 'IGO03'),
(33303, 'Kempegowda International Airport', 'Indira Gandhi  International Airport', '2022-12-12', 4, 6540, 'IGO03'),
(33304, 'Kempegowda International Airport', 'Indira Gandhi  International Airport', '2022-12-12', 5, 6540, 'IGO03'),
(33305, 'Kempegowda International Airport', 'Indira Gandhi  International Airport', '2022-12-12', 6, 6540, 'IGO03'),
(33306, 'Kempegowda International Airport', 'Indira Gandhi  International Airport', '2022-12-12', 7, 6540, 'IGO03'),
(33307, 'Kempegowda International Airport', 'Indira Gandhi  International Airport', '2022-12-12', 8, 6540, 'IGO03'),
(33308, 'Kempegowda International Airport', 'Indira Gandhi  International Airport', '2022-12-12', 9, 6540, 'IGO03'),
(33309, 'Kempegowda International Airport', 'Indira Gandhi  International Airport', '2022-12-12', 10, 6540, 'IGO03'),
(33400, 'Kempegowda International Airport', 'Kanpur Airport', '2022-12-14', 1, 11140, 'SEJ03'),
(33401, 'Kempegowda International Airport', 'Kanpur Airport', '2022-12-14', 2, 11140, 'SEJ03'),
(33402, 'Kempegowda International Airport', 'Kanpur Airport', '2022-12-14', 3, 11140, 'SEJ03'),
(33403, 'Kempegowda International Airport', 'Kanpur Airport', '2022-12-14', 4, 11140, 'SEJ03'),
(33404, 'Kempegowda International Airport', 'Kanpur Airport', '2022-12-14', 5, 11140, 'SEJ03'),
(33405, 'Kempegowda International Airport', 'Kanpur Airport', '2022-12-14', 6, 11140, 'SEJ03'),
(33406, 'Kempegowda International Airport', 'Kanpur Airport', '2022-12-14', 7, 11140, 'SEJ03'),
(33407, 'Kempegowda International Airport', 'Kanpur Airport', '2022-12-14', 8, 11140, 'SEJ03'),
(33408, 'Kempegowda International Airport', 'Kanpur Airport', '2022-12-14', 9, 11140, 'SEJ03'),
(33409, 'Kempegowda International Airport', 'Kanpur Airport', '2022-12-14', 10, 11140, 'SEJ03'),
(33440, 'Mangaluru Airport', 'Nal Airport', '2022-12-13', 1, 10040, 'VTI03'),
(33441, 'Mangaluru Airport', 'Nal Airport', '2022-12-13', 2, 10040, 'VTI03'),
(33442, 'Mangaluru Airport', 'Nal Airport', '2022-12-13', 3, 10040, 'VTI03'),
(33443, 'Mangaluru Airport', 'Nal Airport', '2022-12-13', 4, 10040, 'VTI03'),
(33444, 'Mangaluru Airport', 'Nal Airport', '2022-12-13', 5, 10040, 'VTI03'),
(33445, 'Mangaluru Airport', 'Nal Airport', '2022-12-13', 6, 10040, 'VTI03'),
(33446, 'Mangaluru Airport', 'Nal Airport', '2022-12-13', 7, 10040, 'VTI03'),
(33447, 'Mangaluru Airport', 'Nal Airport', '2022-12-13', 8, 10040, 'VTI03'),
(33448, 'Mangaluru Airport', 'Nal Airport', '2022-12-13', 9, 10040, 'VTI03'),
(33449, 'Mangaluru Airport', 'Nal Airport', '2022-12-13', 10, 10040, 'VTI03'),
(34200, 'Shirdi Airport', 'Jabalpur Airport', '2022-12-14', 1, 5310, 'AXB02'),
(34201, 'Shirdi Airport', 'Jabalpur Airport', '2022-12-14', 2, 5310, 'AXB02'),
(34202, 'Shirdi Airport', 'Jabalpur Airport', '2022-12-14', 3, 5310, 'AXB02'),
(34203, 'Shirdi Airport', 'Jabalpur Airport', '2022-12-14', 4, 5310, 'AXB02'),
(34204, 'Shirdi Airport', 'Jabalpur Airport', '2022-12-14', 5, 5310, 'AXB02'),
(34205, 'Shirdi Airport', 'Jabalpur Airport', '2022-12-14', 6, 5310, 'AXB02'),
(34206, 'Shirdi Airport', 'Jabalpur Airport', '2022-12-14', 7, 5310, 'AXB02'),
(34207, 'Shirdi Airport', 'Jabalpur Airport', '2022-12-14', 8, 5310, 'AXB02'),
(34208, 'Shirdi Airport', 'Jabalpur Airport', '2022-12-14', 9, 5310, 'AXB02'),
(34209, 'Shirdi Airport', 'Jabalpur Airport', '2022-12-14', 10, 5310, 'AXB02'),
(36400, 'Indira Gandhi International Airport', 'Kempegowda International Airport', '2022-12-10', 1, 5400, 'AIC01'),
(36401, 'Indira Gandhi International Airport', 'Kempegowda International Airport', '2022-12-10', 2, 5400, 'AIC01'),
(36402, 'Indira Gandhi International Airport', 'Kempegowda International Airport', '2022-12-10', 3, 5400, 'AIC01'),
(36403, 'Indira Gandhi International Airport', 'Kempegowda International Airport', '2022-12-10', 4, 5400, 'AIC01'),
(36404, 'Indira Gandhi International Airport', 'Kempegowda International Airport', '2022-12-10', 5, 5400, 'AIC01'),
(36405, 'Indira Gandhi International Airport', 'Kempegowda International Airport', '2022-12-10', 6, 5400, 'AIC01'),
(36406, 'Indira Gandhi International Airport', 'Kempegowda International Airport', '2022-12-10', 7, 5400, 'AIC01'),
(36407, 'Indira Gandhi International Airport', 'Kempegowda International Airport', '2022-12-10', 8, 5400, 'AIC01'),
(36408, 'Indira Gandhi International Airport', 'Kempegowda International Airport', '2022-12-10', 9, 5400, 'AIC01'),
(36409, 'Indira Gandhi International Airport', 'Kempegowda International Airport', '2022-12-10', 10, 5400, 'AIC01'),
(43300, 'Indira Gandhi International Airport', 'Vadodar Airport', '2022-12-11', 1, 6580, 'IAD01'),
(43301, 'Indira Gandhi International Airport', 'Vadodar Airport', '2022-12-11', 2, 6580, 'IAD01'),
(43302, 'Indira Gandhi International Airport', 'Vadodar Airport', '2022-12-11', 3, 6580, 'IAD01'),
(43303, 'Indira Gandhi International Airport', 'Vadodar Airport', '2022-12-11', 4, 6580, 'IAD01'),
(43304, 'Indira Gandhi International Airport', 'Vadodar Airport', '2022-12-11', 5, 6580, 'IAD01'),
(43305, 'Indira Gandhi International Airport', 'Vadodar Airport', '2022-12-11', 6, 6580, 'IAD01'),
(43306, 'Indira Gandhi International Airport', 'Vadodar Airport', '2022-12-11', 7, 6580, 'IAD01'),
(43307, 'Indira Gandhi International Airport', 'Vadodar Airport', '2022-12-11', 8, 6580, 'IAD01'),
(43308, 'Indira Gandhi International Airport', 'Vadodar Airport', '2022-12-11', 9, 6580, 'IAD01'),
(43309, 'Indira Gandhi International Airport', 'Vadodar Airport', '2022-12-11', 10, 6580, 'IAD01'),
(44400, 'Jabalpur Airport', 'Indira Gandhi  International Airport', '2022-12-10', 1, 6360, 'IGO05'),
(44401, 'Jabalpur Airport', 'Indira Gandhi  International Airport', '2022-12-10', 2, 6360, 'IGO05'),
(44402, 'Jabalpur Airport', 'Indira Gandhi  International Airport', '2022-12-10', 3, 6360, 'IGO05'),
(44403, 'Jabalpur Airport', 'Indira Gandhi  International Airport', '2022-12-10', 4, 6360, 'IGO05'),
(44404, 'Jabalpur Airport', 'Indira Gandhi  International Airport', '2022-12-10', 5, 6360, 'IGO05'),
(44405, 'Jabalpur Airport', 'Indira Gandhi  International Airport', '2022-12-10', 6, 6360, 'IGO05'),
(44406, 'Jabalpur Airport', 'Indira Gandhi  International Airport', '2022-12-10', 7, 6360, 'IGO05'),
(44407, 'Jabalpur Airport', 'Indira Gandhi  International Airport', '2022-12-10', 8, 6360, 'IGO05'),
(44408, 'Jabalpur Airport', 'Indira Gandhi  International Airport', '2022-12-10', 9, 6360, 'IGO05'),
(44409, 'Jabalpur Airport', 'Indira Gandhi  International Airport', '2022-12-10', 10, 6360, 'IGO05'),
(44700, 'Jabalpur Airport', 'Kanpur Airport', '2022-12-13', 1, 6060, 'SEJ05'),
(44701, 'Jabalpur Airport', 'Kanpur Airport', '2022-12-13', 2, 6060, 'SEJ05'),
(44702, 'Jabalpur Airport', 'Kanpur Airport', '2022-12-13', 3, 6060, 'SEJ05'),
(44703, 'Jabalpur Airport', 'Kanpur Airport', '2022-12-13', 4, 6060, 'SEJ05'),
(44704, 'Jabalpur Airport', 'Kanpur Airport', '2022-12-13', 5, 6060, 'SEJ05'),
(44705, 'Jabalpur Airport', 'Kanpur Airport', '2022-12-13', 6, 6060, 'SEJ05'),
(44706, 'Jabalpur Airport', 'Kanpur Airport', '2022-12-13', 7, 6060, 'SEJ05'),
(44707, 'Jabalpur Airport', 'Kanpur Airport', '2022-12-13', 8, 6060, 'SEJ05'),
(44708, 'Jabalpur Airport', 'Kanpur Airport', '2022-12-13', 9, 6060, 'SEJ05'),
(44709, 'Jabalpur Airport', 'Kanpur Airport', '2022-12-13', 10, 6060, 'SEJ05'),
(44760, 'Jabalpur Airport', 'Nal Airport', '2022-12-12', 1, 6760, 'VTI05'),
(44761, 'Jabalpur Airport', 'Nal Airport', '2022-12-12', 2, 6760, 'VTI05'),
(44762, 'Jabalpur Airport', 'Nal Airport', '2022-12-12', 3, 6760, 'VTI05'),
(44763, 'Jabalpur Airport', 'Nal Airport', '2022-12-12', 4, 6760, 'VTI05'),
(44764, 'Jabalpur Airport', 'Nal Airport', '2022-12-12', 5, 6760, 'VTI05'),
(44765, 'Jabalpur Airport', 'Nal Airport', '2022-12-12', 6, 6760, 'VTI05'),
(44766, 'Jabalpur Airport', 'Nal Airport', '2022-12-12', 7, 6760, 'VTI05'),
(44767, 'Jabalpur Airport', 'Nal Airport', '2022-12-12', 8, 6760, 'VTI05'),
(44768, 'Jabalpur Airport', 'Nal Airport', '2022-12-12', 9, 6760, 'VTI05'),
(44769, 'Jabalpur Airport', 'Nal Airport', '2022-12-12', 10, 6760, 'VTI05'),
(54000, 'Nal Airport', 'Kempegowda International Airport', '2022-12-10', 1, 8730, 'IAD07'),
(54001, 'Nal Airport', 'Kempegowda International Airport', '2022-12-10', 2, 8730, 'IAD07'),
(54002, 'Nal Airport', 'Kempegowda International Airport', '2022-12-10', 3, 8730, 'IAD07'),
(54003, 'Nal Airport', 'Kempegowda International Airport', '2022-12-10', 4, 8730, 'IAD07'),
(54004, 'Nal Airport', 'Kempegowda International Airport', '2022-12-10', 5, 8730, 'IAD07'),
(54005, 'Nal Airport', 'Kempegowda International Airport', '2022-12-10', 6, 8730, 'IAD07'),
(54006, 'Nal Airport', 'Kempegowda International Airport', '2022-12-10', 7, 8730, 'IAD07'),
(54007, 'Nal Airport', 'Kempegowda International Airport', '2022-12-10', 8, 8730, 'IAD07'),
(54008, 'Nal Airport', 'Kempegowda International Airport', '2022-12-10', 9, 8730, 'IAD07'),
(54009, 'Nal Airport', 'Kempegowda International Airport', '2022-12-10', 10, 8730, 'IAD07'),
(54400, 'Chhatrapati Shivaji Maharaj International Airport', 'Vadodar Airport ', '2022-12-10', 1, 6780, 'IAD02'),
(54401, 'Chhatrapati Shivaji Maharaj International Airport', 'Vadodar Airport ', '2022-12-10', 2, 6780, 'IAD02'),
(54402, 'Chhatrapati Shivaji Maharaj International Airport', 'Vadodar Airport ', '2022-12-10', 3, 6780, 'IAD02'),
(54403, 'Chhatrapati Shivaji Maharaj International Airport', 'Vadodar Airport ', '2022-12-10', 4, 6780, 'IAD02'),
(54404, 'Chhatrapati Shivaji Maharaj International Airport', 'Vadodar Airport ', '2022-12-10', 5, 6780, 'IAD02'),
(54405, 'Chhatrapati Shivaji Maharaj International Airport', 'Vadodar Airport ', '2022-12-10', 6, 6780, 'IAD02'),
(54406, 'Chhatrapati Shivaji Maharaj International Airport', 'Vadodar Airport ', '2022-12-10', 7, 6780, 'IAD02'),
(54407, 'Chhatrapati Shivaji Maharaj International Airport', 'Vadodar Airport ', '2022-12-10', 8, 6780, 'IAD02'),
(54408, 'Chhatrapati Shivaji Maharaj International Airport', 'Vadodar Airport ', '2022-12-10', 9, 6780, 'IAD02'),
(54409, 'Chhatrapati Shivaji Maharaj International Airport', 'Vadodar Airport ', '2022-12-10', 10, 6780, 'IAD02'),
(55500, 'Vadodar Airport', 'Indira Gandhi  International Airport', '2022-12-13', 1, 6000, 'IGO04'),
(55501, 'Vadodar Airport', 'Indira Gandhi  International Airport', '2022-12-13', 2, 6000, 'IGO04'),
(55502, 'Vadodar Airport', 'Indira Gandhi  International Airport', '2022-12-13', 3, 6000, 'IGO04'),
(55503, 'Vadodar Airport', 'Indira Gandhi  International Airport', '2022-12-13', 4, 6000, 'IGO04'),
(55504, 'Vadodar Airport', 'Indira Gandhi  International Airport', '2022-12-13', 5, 6000, 'IGO04'),
(55505, 'Vadodar Airport', 'Indira Gandhi  International Airport', '2022-12-13', 6, 6000, 'IGO04'),
(55506, 'Vadodar Airport', 'Indira Gandhi  International Airport', '2022-12-13', 7, 6000, 'IGO04'),
(55507, 'Vadodar Airport', 'Indira Gandhi  International Airport', '2022-12-13', 8, 6000, 'IGO04'),
(55508, 'Vadodar Airport', 'Indira Gandhi  International Airport', '2022-12-13', 9, 6000, 'IGO04'),
(55509, 'Vadodar Airport', 'Indira Gandhi  International Airport', '2022-12-13', 10, 6000, 'IGO04'),
(55600, 'Vadodar Airport', 'Kanpur Airport', '2022-12-14', 1, 7000, 'SEJ04'),
(55601, 'Vadodar Airport', 'Kanpur Airport', '2022-12-14', 2, 7000, 'SEJ04'),
(55602, 'Vadodar Airport', 'Kanpur Airport', '2022-12-14', 3, 7000, 'SEJ04'),
(55603, 'Vadodar Airport', 'Kanpur Airport', '2022-12-14', 4, 7000, 'SEJ04'),
(55604, 'Vadodar Airport', 'Kanpur Airport', '2022-12-14', 5, 7000, 'SEJ04'),
(55605, 'Vadodar Airport', 'Kanpur Airport', '2022-12-14', 6, 7000, 'SEJ04'),
(55606, 'Vadodar Airport', 'Kanpur Airport', '2022-12-14', 7, 7000, 'SEJ04'),
(55607, 'Vadodar Airport', 'Kanpur Airport', '2022-12-14', 8, 7000, 'SEJ04'),
(55608, 'Vadodar Airport', 'Kanpur Airport', '2022-12-14', 9, 7000, 'SEJ04'),
(55609, 'Vadodar Airport', 'Kanpur Airport', '2022-12-14', 10, 7000, 'SEJ04'),
(55650, 'Vadodar Airport', 'Nal Airport', '2022-12-13', 1, 9000, 'VTI04'),
(55651, 'Vadodar Airport', 'Nal Airport', '2022-12-13', 2, 9000, 'VTI04'),
(55652, 'Vadodar Airport', 'Nal Airport', '2022-12-13', 3, 9000, 'VTI04'),
(55653, 'Vadodar Airport', 'Nal Airport', '2022-12-13', 4, 9000, 'VTI04'),
(55654, 'Vadodar Airport', 'Nal Airport', '2022-12-13', 5, 9000, 'VTI04'),
(55655, 'Vadodar Airport', 'Nal Airport', '2022-12-13', 6, 9000, 'VTI04'),
(55656, 'Vadodar Airport', 'Nal Airport', '2022-12-13', 7, 9000, 'VTI04'),
(55657, 'Vadodar Airport', 'Nal Airport', '2022-12-13', 8, 9000, 'VTI04'),
(55658, 'Vadodar Airport', 'Nal Airport', '2022-12-13', 9, 9000, 'VTI04'),
(55659, 'Vadodar Airport', 'Nal Airport', '2022-12-13', 10, 9000, 'VTI04'),
(62900, 'Kempegowda International Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-10', 1, 6400, 'AIC03'),
(62901, 'Kempegowda International Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-10', 2, 6400, 'AIC03'),
(62902, 'Kempegowda International Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-10', 3, 6400, 'AIC03'),
(62903, 'Kempegowda International Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-10', 4, 6400, 'AIC03'),
(62904, 'Kempegowda International Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-10', 5, 6400, 'AIC03'),
(62905, 'Kempegowda International Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-10', 6, 6400, 'AIC03'),
(62906, 'Kempegowda International Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-10', 7, 6400, 'AIC03'),
(62907, 'Kempegowda International Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-10', 8, 6400, 'AIC03'),
(62908, 'Kempegowda International Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-10', 9, 6400, 'AIC03'),
(62909, 'Kempegowda International Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-10', 10, 6400, 'AIC03'),
(63500, 'Vadodar Airport', 'Jabalpur Airport', '2022-12-11', 1, 8730, 'AXB04'),
(63501, 'Vadodar Airport', 'Jabalpur Airport', '2022-12-11', 2, 8730, 'AXB04'),
(63502, 'Vadodar Airport', 'Jabalpur Airport', '2022-12-11', 3, 8730, 'AXB04'),
(63503, 'Vadodar Airport', 'Jabalpur Airport', '2022-12-11', 4, 8730, 'AXB04'),
(63504, 'Vadodar Airport', 'Jabalpur Airport', '2022-12-11', 5, 8730, 'AXB04'),
(63505, 'Vadodar Airport', 'Jabalpur Airport', '2022-12-11', 6, 8730, 'AXB04'),
(63506, 'Vadodar Airport', 'Jabalpur Airport', '2022-12-11', 7, 8730, 'AXB04'),
(63507, 'Vadodar Airport', 'Jabalpur Airport', '2022-12-11', 8, 8730, 'AXB04'),
(63508, 'Vadodar Airport', 'Jabalpur Airport', '2022-12-11', 9, 8730, 'AXB04'),
(63509, 'Vadodar Airport', 'Jabalpur Airport', '2022-12-11', 10, 8730, 'AXB04'),
(64700, 'Kempegowda International Airport', 'Jabalpur Airport', '2022-12-11', 1, 8380, 'AXB03'),
(64701, 'Kempegowda International Airport', 'Jabalpur Airport', '2022-12-11', 2, 8380, 'AXB03'),
(64702, 'Kempegowda International Airport', 'Jabalpur Airport', '2022-12-11', 3, 8380, 'AXB03'),
(64703, 'Kempegowda International Airport', 'Jabalpur Airport', '2022-12-11', 4, 8380, 'AXB03'),
(64704, 'Kempegowda International Airport', 'Jabalpur Airport', '2022-12-11', 5, 8380, 'AXB03'),
(64705, 'Kempegowda International Airport', 'Jabalpur Airport', '2022-12-11', 6, 8380, 'AXB03'),
(64706, 'Kempegowda International Airport', 'Jabalpur Airport', '2022-12-11', 7, 8380, 'AXB03'),
(64707, 'Kempegowda International Airport', 'Jabalpur Airport', '2022-12-11', 8, 8380, 'AXB03'),
(64708, 'Kempegowda International Airport', 'Jabalpur Airport', '2022-12-11', 9, 8380, 'AXB03'),
(64709, 'Kempegowda International Airport', 'Jabalpur Airport', '2022-12-11', 10, 8380, 'AXB03'),
(66600, 'Kanpur Airport', 'Indira Gandhi International Airport', '2022-12-12', 1, 5650, 'IGO06'),
(66601, 'Kanpur Airport', 'Indira Gandhi International Airport', '2022-12-12', 2, 5650, 'IGO06'),
(66602, 'Kanpur Airport', 'Indira Gandhi International Airport', '2022-12-12', 3, 5650, 'IGO06'),
(66603, 'Kanpur Airport', 'Indira Gandhi International Airport', '2022-12-12', 4, 5650, 'IGO06'),
(66604, 'Kanpur Airport', 'Indira Gandhi International Airport', '2022-12-12', 5, 5650, 'IGO06'),
(66605, 'Kanpur Airport', 'Indira Gandhi International Airport', '2022-12-12', 6, 5650, 'IGO06'),
(66606, 'Kanpur Airport', 'Indira Gandhi International Airport', '2022-12-12', 7, 5650, 'IGO06'),
(66607, 'Kanpur Airport', 'Indira Gandhi International Airport', '2022-12-12', 8, 5650, 'IGO06'),
(66608, 'Kanpur Airport', 'Indira Gandhi International Airport', '2022-12-12', 9, 5650, 'IGO06'),
(66609, 'Kanpur Airport', 'Indira Gandhi International Airport', '2022-12-12', 10, 5650, 'IGO06'),
(66800, 'Kanpur Airport', 'Jabalpur Airport', '2022-12-14', 1, 5950, 'SEJ06'),
(66801, 'Kanpur Airport', 'Jabalpur Airport', '2022-12-14', 2, 5950, 'SEJ06'),
(66802, 'Kanpur Airport', 'Jabalpur Airport', '2022-12-14', 3, 5950, 'SEJ06'),
(66803, 'Kanpur Airport', 'Jabalpur Airport', '2022-12-14', 4, 5950, 'SEJ06'),
(66804, 'Kanpur Airport', 'Jabalpur Airport', '2022-12-14', 5, 5950, 'SEJ06'),
(66805, 'Kanpur Airport', 'Jabalpur Airport', '2022-12-14', 6, 5950, 'SEJ06'),
(66806, 'Kanpur Airport', 'Jabalpur Airport', '2022-12-14', 7, 5950, 'SEJ06'),
(66807, 'Kanpur Airport', 'Jabalpur Airport', '2022-12-14', 8, 5950, 'SEJ06'),
(66808, 'Kanpur Airport', 'Jabalpur Airport', '2022-12-14', 9, 5950, 'SEJ06'),
(66809, 'Kanpur Airport', 'Jabalpur Airport', '2022-12-14', 10, 5950, 'SEJ06'),
(66860, 'Kanpur Airport', 'Nal Airport', '2022-12-13', 1, 6750, 'VTI06'),
(66861, 'Kanpur Airport', 'Nal Airport', '2022-12-13', 2, 6750, 'VTI06'),
(66862, 'Kanpur Airport', 'Nal Airport', '2022-12-13', 3, 6750, 'VTI06'),
(66863, 'Kanpur Airport', 'Nal Airport', '2022-12-13', 4, 6750, 'VTI06'),
(66864, 'Kanpur Airport', 'Nal Airport', '2022-12-13', 5, 6750, 'VTI06'),
(66865, 'Kanpur Airport', 'Nal Airport', '2022-12-13', 6, 6750, 'VTI06'),
(66866, 'Kanpur Airport', 'Nal Airport', '2022-12-13', 7, 6750, 'VTI06'),
(66867, 'Kanpur Airport', 'Nal Airport', '2022-12-13', 8, 6750, 'VTI06'),
(66868, 'Kanpur Airport', 'Nal Airport', '2022-12-13', 9, 6750, 'VTI06'),
(66869, 'Kanpur Airport', 'Nal Airport', '2022-12-13', 10, 6750, 'VTI06'),
(67200, 'Kanpur Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-10', 1, 6780, 'AIC06'),
(67201, 'Kanpur Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-10', 2, 6780, 'AIC06'),
(67202, 'Kanpur Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-10', 3, 6780, 'AIC06'),
(67203, 'Kanpur Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-10', 4, 6780, 'AIC06'),
(67204, 'Kanpur Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-10', 5, 6780, 'AIC06'),
(67205, 'Kanpur Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-10', 6, 6780, 'AIC06'),
(67206, 'Kanpur Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-10', 7, 6780, 'AIC06'),
(67207, 'Kanpur Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-10', 8, 6780, 'AIC06'),
(67208, 'Kanpur Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-10', 9, 6780, 'AIC06'),
(67209, 'Kanpur Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-10', 10, 6780, 'AIC06'),
(74300, 'Nal Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-13', 1, 7340, 'AIC07'),
(74301, 'Nal Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-13', 2, 7340, 'AIC07'),
(74302, 'Nal Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-13', 3, 7340, 'AIC07'),
(74303, 'Nal Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-13', 4, 7340, 'AIC07'),
(74304, 'Nal Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-13', 5, 7340, 'AIC07'),
(74305, 'Nal Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-13', 6, 7340, 'AIC07'),
(74306, 'Nal Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-13', 7, 7340, 'AIC07'),
(74307, 'Nal Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-13', 8, 7340, 'AIC07'),
(74308, 'Nal Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-13', 9, 7340, 'AIC07'),
(74309, 'Nal Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-13', 10, 7340, 'AIC07'),
(74400, 'Kanpur Airport', 'Vadodar Airpor', '2022-12-11', 1, 5980, 'AXB06'),
(74401, 'Kanpur Airport', 'Vadodar Airpor', '2022-12-11', 2, 5980, 'AXB06'),
(74402, 'Kanpur Airport', 'Vadodar Airpor', '2022-12-11', 3, 5980, 'AXB06'),
(74403, 'Kanpur Airport', 'Vadodar Airpor', '2022-12-11', 4, 5980, 'AXB06'),
(74404, 'Kanpur Airport', 'Vadodar Airpor', '2022-12-11', 5, 5980, 'AXB06'),
(74405, 'Kanpur Airport', 'Vadodar Airpor', '2022-12-11', 6, 5980, 'AXB06'),
(74406, 'Kanpur Airport', 'Vadodar Airpor', '2022-12-11', 7, 5980, 'AXB06'),
(74407, 'Kanpur Airport', 'Vadodar Airpor', '2022-12-11', 8, 5980, 'AXB06'),
(74408, 'Kanpur Airport', 'Vadodar Airpor', '2022-12-11', 9, 5980, 'AXB06'),
(74409, 'Kanpur Airport', 'Vadodar Airpor', '2022-12-11', 10, 5980, 'AXB06'),
(74700, 'Nal Airport', 'Vadodar Airpor', '2022-12-10', 1, 9830, 'AXB07'),
(74701, 'Nal Airport', 'Vadodar Airpor', '2022-12-10', 2, 9830, 'AXB07'),
(74702, 'Nal Airport', 'Vadodar Airpor', '2022-12-10', 3, 9830, 'AXB07'),
(74703, 'Nal Airport', 'Vadodar Airpor', '2022-12-10', 4, 9830, 'AXB07'),
(74704, 'Nal Airport', 'Vadodar Airpor', '2022-12-10', 5, 9830, 'AXB07'),
(74705, 'Nal Airport', 'Vadodar Airpor', '2022-12-10', 6, 9830, 'AXB07'),
(74706, 'Nal Airport', 'Vadodar Airpor', '2022-12-10', 7, 9830, 'AXB07'),
(74707, 'Nal Airport', 'Vadodar Airpor', '2022-12-10', 8, 9830, 'AXB07'),
(74708, 'Nal Airport', 'Vadodar Airpor', '2022-12-10', 9, 9830, 'AXB07'),
(74709, 'Nal Airport', 'Vadodar Airpor', '2022-12-10', 10, 9830, 'AXB07'),
(74900, 'Jabalpur Airport', 'Shirdi Airport', '2022-12-11', 1, 6580, 'AIC05'),
(74901, 'Jabalpur Airport', 'Shirdi Airport', '2022-12-11', 2, 6580, 'AIC05'),
(74902, 'Jabalpur Airport', 'Shirdi Airport', '2022-12-11', 3, 6580, 'AIC05'),
(74903, 'Jabalpur Airport', 'Shirdi Airport', '2022-12-11', 4, 6580, 'AIC05'),
(74904, 'Jabalpur Airport', 'Shirdi Airport', '2022-12-11', 5, 6580, 'AIC05'),
(74905, 'Jabalpur Airport', 'Shirdi Airport', '2022-12-11', 6, 6580, 'AIC05'),
(74906, 'Jabalpur Airport', 'Shirdi Airport', '2022-12-11', 7, 6580, 'AIC05'),
(74907, 'Jabalpur Airport', 'Shirdi Airport', '2022-12-11', 8, 6580, 'AIC05'),
(74908, 'Jabalpur Airport', 'Shirdi Airport', '2022-12-11', 9, 6580, 'AIC05'),
(74909, 'Jabalpur Airport', 'Shirdi Airport', '2022-12-11', 10, 6580, 'AIC05'),
(76600, 'Kempegowda International Airport', 'Vadodar Airport', '2022-12-11', 1, 7340, 'IAD03'),
(76601, 'Kempegowda International Airport', 'Vadodar Airport', '2022-12-11', 2, 7340, 'IAD03'),
(76602, 'Kempegowda International Airport', 'Vadodar Airport', '2022-12-11', 3, 7340, 'IAD03'),
(76603, 'Kempegowda International Airport', 'Vadodar Airport', '2022-12-11', 4, 7340, 'IAD03'),
(76604, 'Kempegowda International Airport', 'Vadodar Airport', '2022-12-11', 5, 7340, 'IAD03'),
(76605, 'Kempegowda International Airport', 'Vadodar Airport', '2022-12-11', 6, 7340, 'IAD03'),
(76606, 'Kempegowda International Airport', 'Vadodar Airport', '2022-12-11', 7, 7340, 'IAD03'),
(76607, 'Kempegowda International Airport', 'Vadodar Airport', '2022-12-11', 8, 7340, 'IAD03'),
(76608, 'Kempegowda International Airport', 'Vadodar Airport', '2022-12-11', 9, 7340, 'IAD03'),
(76609, 'Kempegowda International Airport', 'Vadodar Airport', '2022-12-11', 10, 7340, 'IAD03'),
(77700, 'Nal Airport', 'Indira Gandhi International Airport', '2022-12-14', 1, 8730, 'IGO07'),
(77701, 'Nal Airport', 'Indira Gandhi International Airport', '2022-12-14', 2, 8730, 'IGO07'),
(77702, 'Nal Airport', 'Indira Gandhi International Airport', '2022-12-14', 3, 8730, 'IGO07'),
(77703, 'Nal Airport', 'Indira Gandhi International Airport', '2022-12-14', 4, 8730, 'IGO07'),
(77704, 'Nal Airport', 'Indira Gandhi International Airport', '2022-12-14', 5, 8730, 'IGO07'),
(77705, 'Nal Airport', 'Indira Gandhi International Airport', '2022-12-14', 6, 8730, 'IGO07'),
(77706, 'Nal Airport', 'Indira Gandhi International Airport', '2022-12-14', 7, 8730, 'IGO07'),
(77707, 'Nal Airport', 'Indira Gandhi International Airport', '2022-12-14', 8, 8730, 'IGO07'),
(77708, 'Nal Airport', 'Indira Gandhi International Airport', '2022-12-14', 9, 8730, 'IGO07'),
(77709, 'Nal Airport', 'Indira Gandhi International Airport', '2022-12-14', 10, 8730, 'IGO07'),
(77900, 'Nal Airport', 'Jabalpur Airport', '2022-12-12', 1, 8730, 'SEJ07'),
(77901, 'Nal Airport', 'Jabalpur Airport', '2022-12-12', 2, 8730, 'SEJ07'),
(77902, 'Nal Airport', 'Jabalpur Airport', '2022-12-12', 3, 8730, 'SEJ07'),
(77903, 'Nal Airport', 'Jabalpur Airport', '2022-12-12', 4, 8730, 'SEJ07'),
(77904, 'Nal Airport', 'Jabalpur Airport', '2022-12-12', 5, 8730, 'SEJ07'),
(77905, 'Nal Airport', 'Jabalpur Airport', '2022-12-12', 6, 8730, 'SEJ07'),
(77906, 'Nal Airport', 'Jabalpur Airport', '2022-12-12', 7, 8730, 'SEJ07'),
(77907, 'Nal Airport', 'Jabalpur Airport', '2022-12-12', 8, 8730, 'SEJ07'),
(77908, 'Nal Airport', 'Jabalpur Airport', '2022-12-12', 9, 8730, 'SEJ07'),
(77909, 'Nal Airport', 'Jabalpur Airport', '2022-12-12', 10, 8730, 'SEJ07'),
(77960, 'Nal Airport', 'Kanpur Airport', '2022-12-10', 1, 8730, 'VTI07'),
(77961, 'Nal Airport', 'Kanpur Airport', '2022-12-10', 2, 8730, 'VTI07'),
(77962, 'Nal Airport', 'Kanpur Airport', '2022-12-10', 3, 8730, 'VTI07'),
(77963, 'Nal Airport', 'Kanpur Airport', '2022-12-10', 4, 8730, 'VTI07'),
(77964, 'Nal Airport', 'Kanpur Airport', '2022-12-10', 5, 8730, 'VTI07'),
(77965, 'Nal Airport', 'Kanpur Airport', '2022-12-10', 6, 8730, 'VTI07'),
(77966, 'Nal Airport', 'Kanpur Airport', '2022-12-10', 7, 8730, 'VTI07'),
(77967, 'Nal Airport', 'Kanpur Airport', '2022-12-10', 8, 8730, 'VTI07'),
(77968, 'Nal Airport', 'Kanpur Airport', '2022-12-10', 9, 8730, 'VTI07'),
(77969, 'Nal Airport', 'Kanpur Airport', '2022-12-10', 10, 8730, 'VTI07'),
(82900, 'Vadodar Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-12', 1, 5480, 'AIC04'),
(82901, 'Vadodar Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-12', 2, 5480, 'AIC04'),
(82902, 'Vadodar Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-12', 3, 5480, 'AIC04'),
(82903, 'Vadodar Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-12', 4, 5480, 'AIC04'),
(82904, 'Vadodar Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-12', 5, 5480, 'AIC04'),
(82905, 'Vadodar Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-12', 6, 5480, 'AIC04'),
(82906, 'Vadodar Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-12', 7, 5480, 'AIC04'),
(82907, 'Vadodar Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-12', 8, 5480, 'AIC04'),
(82908, 'Vadodar Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-12', 9, 5480, 'AIC04'),
(82909, 'Vadodar Airport', 'Chhatrapati Shivaji Maharaj International Airport', '2022-12-12', 10, 5480, 'AIC04'),
(87700, 'Vadodar Airport', 'Kempegowda International Airport', '2022-12-10', 1, 3440, 'IAD04'),
(87701, 'Vadodar Airport', 'Kempegowda International Airport', '2022-12-10', 2, 3440, 'IAD04'),
(87702, 'Vadodar Airport', 'Kempegowda International Airport', '2022-12-10', 3, 3440, 'IAD04'),
(87703, 'Vadodar Airport', 'Kempegowda International Airport', '2022-12-10', 4, 3440, 'IAD04'),
(87704, 'Vadodar Airport', 'Kempegowda International Airport', '2022-12-10', 5, 3440, 'IAD04'),
(87705, 'Vadodar Airport', 'Kempegowda International Airport', '2022-12-10', 6, 3440, 'IAD04'),
(87706, 'Vadodar Airport', 'Kempegowda International Airport', '2022-12-10', 7, 3440, 'IAD04'),
(87707, 'Vadodar Airport', 'Kempegowda International Airport', '2022-12-10', 8, 3440, 'IAD04'),
(87708, 'Vadodar Airport', 'Kempegowda International Airport', '2022-12-10', 9, 3440, 'IAD04'),
(87709, 'Vadodar Airport', 'Kempegowda International Airport', '2022-12-10', 10, 3440, 'IAD04'),
(98100, 'Jabalpur Airport', 'Mangaluru Airport', '2022-12-10', 1, 5310, 'IAD05'),
(98101, 'Jabalpur Airport', 'Mangaluru Airport', '2022-12-10', 2, 5310, 'IAD05'),
(98102, 'Jabalpur Airport', 'Mangaluru Airport', '2022-12-10', 3, 5310, 'IAD05'),
(98103, 'Jabalpur Airport', 'Mangaluru Airport', '2022-12-10', 4, 5310, 'IAD05'),
(98104, 'Jabalpur Airport', 'Mangaluru Airport', '2022-12-10', 5, 5310, 'IAD05'),
(98105, 'Jabalpur Airport', 'Mangaluru Airport', '2022-12-10', 6, 5310, 'IAD05'),
(98106, 'Jabalpur Airport', 'Mangaluru Airport', '2022-12-10', 7, 5310, 'IAD05'),
(98107, 'Jabalpur Airport', 'Mangaluru Airport', '2022-12-10', 8, 5310, 'IAD05'),
(98108, 'Jabalpur Airport', 'Mangaluru Airport', '2022-12-10', 9, 5310, 'IAD05'),
(98109, 'Jabalpur Airport', 'Mangaluru Airport', '2022-12-10', 10, 5310, 'IAD05'),
(98700, 'Jabalpur Airport', 'Vadodar Airpor', '2022-12-12', 1, 8930, 'AXB05'),
(98701, 'Jabalpur Airport', 'Vadodar Airpor', '2022-12-12', 2, 8930, 'AXB05'),
(98702, 'Jabalpur Airport', 'Vadodar Airpor', '2022-12-12', 3, 8930, 'AXB05'),
(98703, 'Jabalpur Airport', 'Vadodar Airpor', '2022-12-12', 4, 8930, 'AXB05'),
(98704, 'Jabalpur Airport', 'Vadodar Airpor', '2022-12-12', 5, 8930, 'AXB05'),
(98705, 'Jabalpur Airport', 'Vadodar Airpor', '2022-12-12', 6, 8930, 'AXB05'),
(98706, 'Jabalpur Airport', 'Vadodar Airpor', '2022-12-12', 7, 8930, 'AXB05'),
(98707, 'Jabalpur Airport', 'Vadodar Airpor', '2022-12-12', 8, 8930, 'AXB05'),
(98708, 'Jabalpur Airport', 'Vadodar Airpor', '2022-12-12', 9, 8930, 'AXB05'),
(98709, 'Jabalpur Airport', 'Vadodar Airpor', '2022-12-12', 10, 8930, 'AXB05');

-- --------------------------------------------------------

--
-- Structure for view `flightpro`
--
DROP TABLE IF EXISTS `flightpro`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `flightpro`  AS SELECT `flightwithsstate`.`flightcode` AS `flightcode`, `flightwithsstate`.`arrival` AS `arrival`, `flightwithsstate`.`departure` AS `departure`, `flightwithsstate`.`source` AS `source`, `flightwithsstate`.`destination` AS `destination`, `flightwithsstate`.`duration` AS `duration`, `flightwithsstate`.`airlineID` AS `airlineID`, `flightwithsstate`.`sid` AS `sid`, `flightwithsstate`.`did` AS `did`, `flightwithsstate`.`sstate` AS `sstate`, `a`.`astate` AS `dstate` FROM (`flightwithsstate` join `airport` `a`) WHERE `flightwithsstate`.`did` = `a`.`Airportno``Airportno`  ;

-- --------------------------------------------------------

--
-- Structure for view `flightwithsstate`
--
DROP TABLE IF EXISTS `flightwithsstate`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `flightwithsstate`  AS SELECT `flight`.`flightcode` AS `flightcode`, `flight`.`arrival` AS `arrival`, `flight`.`departure` AS `departure`, `flight`.`source` AS `source`, `flight`.`destination` AS `destination`, `flight`.`duration` AS `duration`, `flight`.`airlineID` AS `airlineID`, `flight`.`sid` AS `sid`, `flight`.`did` AS `did`, `a`.`astate` AS `sstate` FROM (`flight` join `airport` `a`) WHERE `flight`.`sid` = `a`.`Airportno``Airportno`  ;

-- --------------------------------------------------------

--
-- Structure for view `notbooked`
--
DROP TABLE IF EXISTS `notbooked`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `notbooked`  AS SELECT `ticket`.`ticketno` AS `ticketno`, `ticket`.`flightcode` AS `flightcode` FROM `ticket` WHERE !(`ticket`.`ticketno` in (select `b`.`ticketno` from `booked` `b`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airlines`
--
ALTER TABLE `airlines`
  ADD PRIMARY KEY (`airlineID`),
  ADD KEY `airportno` (`airportno`);

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`Airportno`);

--
-- Indexes for table `booked`
--
ALTER TABLE `booked`
  ADD PRIMARY KEY (`pid`,`ticketno`),
  ADD KEY `ticketno` (`ticketno`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flightcode`),
  ADD KEY `airlineID` (`airlineID`),
  ADD KEY `sid` (`sid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `passportno` (`passportno`),
  ADD KEY `flightcode` (`flightcode`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticketno`),
  ADD KEY `flightcode` (`flightcode`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airlines`
--
ALTER TABLE `airlines`
  ADD CONSTRAINT `airlines_ibfk_1` FOREIGN KEY (`airportno`) REFERENCES `airport` (`Airportno`);

--
-- Constraints for table `booked`
--
ALTER TABLE `booked`
  ADD CONSTRAINT `booked_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `passenger` (`pid`),
  ADD CONSTRAINT `booked_ibfk_2` FOREIGN KEY (`ticketno`) REFERENCES `ticket` (`ticketno`);

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`airlineID`) REFERENCES `airlines` (`airlineID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `flight_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `airport` (`Airportno`),
  ADD CONSTRAINT `flight_ibfk_3` FOREIGN KEY (`did`) REFERENCES `airport` (`Airportno`),
  ADD CONSTRAINT `flight_ibfk_4` FOREIGN KEY (`did`) REFERENCES `airport` (`Airportno`);

--
-- Constraints for table `passenger`
--
ALTER TABLE `passenger`
  ADD CONSTRAINT `passenger_ibfk_1` FOREIGN KEY (`flightcode`) REFERENCES `flight` (`flightcode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`flightcode`) REFERENCES `flight` (`flightcode`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
