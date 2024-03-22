-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 06, 2022 at 08:44 AM
-- Server version: 10.3.35-MariaDB-log-cll-lve
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `archqjoy_empbz`
--

-- --------------------------------------------------------

--
-- Table structure for table `irs`
--

CREATE TABLE `irs` (
  `username` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irs`
--

INSERT INTO `irs` (`username`) VALUES
('001930'),
('300211'),
('600864');

-- --------------------------------------------------------

--
-- Table structure for table `ivs`
--

CREATE TABLE `ivs` (
  `username` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ivs`
--

INSERT INTO `ivs` (`username`) VALUES
('IVS600864GQ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accounts`
--

CREATE TABLE `tbl_accounts` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `acc_no` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL,
  `balance` double NOT NULL,
  `pin` int(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_accounts`
--

INSERT INTO `tbl_accounts` (`id`, `user_id`, `acc_no`, `type`, `balance`, `pin`, `status`, `bdate`) VALUES
(1, 1, '6235447290', 'SA', 4615706, 1000, 'ACTIVE', '2021-08-12 12:59:15'),
(2, 2, '7054418155', 'CA', 0, 1000, 'INACTIVE', '2021-08-12 14:49:00'),
(3, 3, '1161515929', '', 0, 0, 'INACTIVE', '2021-08-12 16:13:49'),
(4, 4, '9163271842', 'CA', 208500, 1965, 'ACTIVE', '2021-08-12 16:34:40'),
(5, 5, '4522128304', 'CA', 483500, 1212, 'ACTIVE', '2021-08-13 07:03:21'),
(6, 6, '8152111612', 'CA', 0, 4664, 'INACTIVE', '2021-08-16 18:30:33'),
(7, 7, '8286272840', 'CA', 2305000, 4844, 'ACTIVE', '2021-10-06 05:15:49'),
(8, 8, '1420182421', '', 0, 0, 'INACTIVE', '2021-10-10 00:52:29'),
(9, 9, '9459987334', 'SA', 0, 1965, 'INACTIVE', '2021-10-11 09:53:35'),
(10, 10, '1697130606', 'SA', 10004059, 1985, 'ACTIVE', '2021-10-21 01:21:33'),
(11, 11, '4985903089', '', 0, 310191, 'ACTIVE', '2021-11-24 09:17:16'),
(12, 12, '8661158698', '', 0, 1256, 'ACTIVE', '2021-11-28 09:58:39'),
(16, 16, '9950851319', 'CA', 859208, 1212, 'ACTIVE', '2021-12-01 15:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_address`
--

CREATE TABLE `tbl_address` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(40) NOT NULL,
  `state` varchar(40) NOT NULL,
  `zipcode` varchar(1000) NOT NULL,
  `country` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_address`
--

INSERT INTO `tbl_address` (`id`, `user_id`, `address`, `city`, `state`, `zipcode`, `country`) VALUES
(1, 1, 'NY, New York, United States', 'NY', 'NY', '233', 'USA'),
(2, 2, 'NY', 'NY', 'NY', '10001', 'USA'),
(3, 3, '', '', '', '0', 'USA'),
(4, 4, 'Avenue de la Renaissance 45,1000 Bruxelles, Belgium', 'Bruxelles', 'Bruxelles', '1000', 'USA'),
(5, 5, '345 W.El Norte PKWY APT 151\r\nEscondido,Ca 92026', 'Escondido', '', '92026', 'USA'),
(6, 6, '', 'Lincoln park', 'Illinois', '60614', 'USA'),
(7, 7, '', 'Antwerp', 'Antwerp', '2130', 'USA'),
(8, 8, '', '', '', '0', 'USA'),
(9, 9, '', 'Bruxxelles', 'Gent', '9002', 'USA'),
(10, 10, '', 'Buffalo', 'New York', '10010', 'USA'),
(11, 11, '', 'Blacksburg', 'South Carolina', '24060', 'USA'),
(12, 12, 'This is an account open to invest, save, and loan , is world wide objectives', 'New York City', 'New Boston', '35957', 'USA'),
(16, 16, '', 'Los Angeles', 'California', '90001', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaction`
--

CREATE TABLE `tbl_transaction` (
  `id` int(10) NOT NULL,
  `tx_no` varchar(20) NOT NULL,
  `tx_type` varchar(10) NOT NULL,
  `amount` double NOT NULL,
  `date` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `to_accno` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `tdate` varchar(40) NOT NULL,
  `comments` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaction`
--

INSERT INTO `tbl_transaction` (`id`, `tx_no`, `tx_type`, `amount`, `date`, `description`, `to_accno`, `status`, `tdate`, `comments`) VALUES
(1, 'TX00921', 'credit', 3738299, '2021-08-12 13:05:07', 'Wire transfer of $3738299 credited into Account 6235447290 : IBN CODE: 52WAEZA, with Reference# TX00921', '6235447290', 'SUCCESS', '09/11/2001', 'hshs'),
(2, 'TX2', 'credit', 343434, '2021-08-12 13:08:00', 'Fund transfer of $343434 to Account 6235447290 Reference# TX2', '6235447290', 'SUCCESS', '02/12/2005', 'ddd'),
(3, 'TX3', 'credit', 3500, '2021-08-13 07:14:33', 'Fund transfer of $3500 to Account 4522128304 Reference# TX3', '4522128304', 'SUCCESS', '08/09/2021', 'Direct  Wire Deposit'),
(4, 'TX4', 'credit', 480000, '2021-08-13 07:31:34', 'Fund transfer of $480000 to Account 4522128304 Reference# TX4', '4522128304', 'SUCCESS', '08/13/2021', 'Direct Wire Deposit'),
(5, 'TX5', 'credit', 207300, '2021-08-13 07:32:56', 'Fund transfer of $207300 to Account 9163271842 Reference# TX5', '9163271842', 'SUCCESS', '08/12/2021', 'DIRECT DEPOSIT'),
(6, 'TX6', 'credit', 1200, '2021-08-13 07:34:36', 'Fund transfer of $1200 to Account 9163271842 Reference# TX6', '9163271842', 'SUCCESS', '07/23/2021', 'CASH DEPOSIT'),
(7, 'TX7', 'credit', 533973, '2021-08-13 13:27:38', 'Fund transfer of $533973 to Account 6235447290 Reference# TX7', '6235447290', 'SUCCESS', '06/12/2001', 'Cb'),
(8, 'TX8', 'credit', 2305000, '2021-10-06 06:26:24', 'Fund transfer of $2305000 to Account 8286272840 Reference# TX8', '8286272840', 'SUCCESS', '08/16/2021', 'Approved : Direct Deposit \r\n Wire transfer'),
(9, 'TX9', 'credit', 10004059, '2021-10-21 01:25:04', 'Fund transfer of $10004059 to Account 1697130606 Reference# TX9', '1697130606', 'SUCCESS', '02/11/2021', 'Direct Account Deposit'),
(10, 'TX10', 'credit', 859208, '2021-12-02 02:13:33', 'Fund transfer of $859208 to Account 9950851319 Reference# TX10', '9950851319', 'SUCCESS', '12/03/2004', 'International Wire Transfer 9310375');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `is_active` varchar(10) NOT NULL,
  `utype` varchar(10) NOT NULL,
  `pics` varchar(200) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `fname`, `lname`, `pwd`, `email`, `phone`, `gender`, `is_active`, `utype`, `pics`, `bdate`) VALUES
(1, 'Testing', 'Testing', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9', 'pirloadndrews@gmail.com', '+1972627282', 'Male', 'TRUE', 'USER', '', '2021-08-12 12:59:15'),
(2, 'test2', 'test2', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9', 'pirloadndrews@gmail.com', '+10929289282', 'Male', 'FALSE', 'USER', '', '2021-08-12 14:49:00'),
(3, 'MA', '', '', '', '', '', 'FALSE', 'USER', '', '2021-08-12 16:13:49'),
(4, 'Marie louise', 'Delosa', '*763CEF1D1D980AA903E849E539F946586584C413', 'marielouisedelosa@gmail.com', '+32493476578', 'Felame', 'TRUE', 'USER', '', '2021-08-12 16:34:40'),
(5, 'Sergio', 'Souffront', '*DA86F1D047055A5730A2A85F4C6320534406A1E4', 'prettyflower442@gmail.com', '7604455846', 'Male', 'TRUE', 'USER', '', '2021-08-13 07:03:21'),
(6, 'Leroy', 'Quartey', '*2D9C62DC1DEF7FFC7EA659CB96DACC436FC257C3', 'avianna.js69@gmail.com', 'â€ª(740) 586-0660â€¬', 'Male', 'FALSE', 'USER', '', '2021-08-16 18:30:33'),
(7, 'Nathalie', 'Faignant', '*AD48A11E8D625BEE2033ACF60882F3F5127AB255', 'nathalie.faignant@aol.com', '+32489812809', 'Felame', 'TRUE', 'USER', '', '2021-10-06 05:15:49'),
(8, 'Daniel', 'Addo', '*1B08CC31005810F75203B23012ED9317FE771B18', 'Addodan@gmail', '', '', 'FALSE', 'USER', '', '2021-10-10 00:52:29'),
(9, 'John', 'Addo', '*DD1C1F203D63CF732F53F6D2A8B3B0D96B47515B', 'Johnaddo10002@yahoo.com', '062 048 5040', 'Male', 'FALSE', 'USER', '', '2021-10-11 09:53:35'),
(10, 'Jacqueline', 'Little', '*FEFA2AD6F9C8CD53666F50EF89BF327DC6E9171B', 'Jacquelinelittle23glo@gmail.co', '3329999628', 'Felame', 'TRUE', 'USER', '', '2021-10-21 01:21:33'),
(11, 'Justice', 'Smith', '*B77AF963CF7B6FAD215F8FDBAF13ED3849548CC5', 'Smithjustice915@gmail.com', '7163289279', 'Male', 'TRUE', 'USER', '', '2021-11-24 09:17:16'),
(12, 'Gary', 'Kadi', '*E5F5CA264931019D9820DD9A35D977BF171811C1', 'jessekingroyal111@gmail.com', '+12569609542', 'Male', 'FALSE', 'USER', '', '2021-11-28 09:58:39'),
(16, 'George S', 'Stones', '*DC2102EEFD879FC3E8C41DE086313CADC445B086', 'georgestoneswft210@yahoo.com', '7602334144', 'Male', 'TRUE', 'USER', '', '2021-12-01 15:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'AN3982VXGTW', 'SW908EXVXBZ'),
(6, 'CMP9WX4', 'COMP0894'),
(3, 'DEM800C1', 'DMOUR27WX'),
(2, 'RES9001BC', 'CX0566DX'),
(4, 'TRAN3009', 'TRAZX567');

-- --------------------------------------------------------

--
-- Table structure for table `wac`
--

CREATE TABLE `wac` (
  `username` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wac`
--

INSERT INTO `wac` (`username`) VALUES
('WBACC600864IX');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_address`
--
ALTER TABLE `tbl_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_address`
--
ALTER TABLE `tbl_address`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
