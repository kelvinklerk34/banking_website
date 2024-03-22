-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 12, 2021 at 10:42 AM
-- Server version: 10.3.28-MariaDB-log-cll-lve
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stanxpfb_brokerage`
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
(47, 50, '6768308424', 'FDA', 990000, 1002, 'ACTIVE', '2017-08-02 06:25:40'),
(48, 51, '1243849495', 'CA', 2000000, 1002, 'ACTIVE', '2017-08-02 06:51:11'),
(49, 52, '8475885571', 'CA', 2000000, 2007, 'ACTIVE', '2017-08-03 15:36:38'),
(50, 53, '5026283150', 'CA', 1000000, 1002, 'ACTIVE', '2017-08-10 05:02:55'),
(51, 54, '3422032540', 'CA', 1000000, 1002, 'ACTIVE', '2017-08-10 06:21:13'),
(99, 102, '9916095787', 'FDA', 0, 1962, 'INACTIVE', '2018-04-05 16:54:09'),
(177, 180, '7041072304', 'FDA', 19353513, 2020, 'INACTIVE', '2021-02-19 09:29:45'),
(179, 182, '1212661938', 'CA', 24467856, 1971, 'ACTIVE', '2021-06-07 08:57:18'),
(180, 183, '8644324568', 'FDA', 18750903, 1132, 'ACTIVE', '2021-06-15 15:40:21'),
(181, 184, '2829716677', 'CA', 0, 1000, 'INACTIVE', '2021-07-06 06:04:24');

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
(2, 5, '23/1, Baker street', 'pune', 'MA', '2341', 'USA'),
(99, 102, '3040 Dunvale Rd', 'Houston', 'Texas', '77063', 'USA'),
(110, 113, 'Houston Texas, United States of America', 'Houston', 'Texas', '77005', 'USA'),
(177, 180, '3 E 27th Ave', 'Vancouver', 'BC', 'V5H 37Z', 'USA'),
(179, 182, '4330 Thicket Dr. Garland', 'Dr. Garland, Texas', 'Texas', '75043', 'USA'),
(180, 183, '1827 Woodward Dr Suite 311, Otawa, ON K2C 0P9, Canada', 'Otawa', 'Otawa', '1827', 'USA'),
(181, 184, 'NY', 'NY', 'NY', '10001', 'USA');

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
(1, 'TX100000001', 'credit', 200, '2015-01-06 09:23:57', 'credited $200 by admin at date', '12345566', 'SUCCESS', '', ''),
(2, 'TX100000002', 'credit', 20, '2015-01-06 09:36:06', 'credit $20 by Admin on Jan-06-2015', '1234556666', 'SUCCESS', '', ''),
(3, 'TX100000003', 'debit', 15, '2015-01-06 09:36:37', 'debit $15 by Admin on Jan-06-2015', '12345566', 'SUCCESS', '', ''),
(4, 'TX100000004', 'credit', 120, '2015-01-06 09:38:01', 'credit $120 by Admin on Jan-06-2015', '22334412', 'SUCCESS', '', ''),
(419, 'TX100000005', 'credit', 109999, '2018-04-10 08:42:36', 'Fund transfer of â‚¬109999 to Account 8482085393 Reference# TX100000005', '8482085393', 'SUCCESS', '09/12/1981', 'addsd'),
(420, 'TX100000006', 'credit', 1233333, '2018-04-10 09:34:40', 'Fund transfer of $1233333 to Account 3024042556 Reference# TX100000006', '3024042556', 'SUCCESS', '09/11/2009', 'gfhg'),
(421, 'TX100000007', 'debit', 900.89, '2018-04-10 09:40:16', 'Fund transfer of $900 to Account 939393933 Reference# TX100000007', '3024042556', 'SUCCESS', '09-01-2001', 'fjghvh'),
(422, 'TX100000008', 'debit', 900.89, '2018-04-10 09:48:48', 'Fund transfer of $900 to Account 939393933 Reference# TX100000008', '3024042556', 'SUCCESS', '09-01-2001', 'fjghvh'),
(423, 'TX100000009', 'credit', 650000, '2018-04-10 11:12:01', 'cash deposited by Bechtel company as the full payment of the contract ', '2221189002', 'SUCCESS', '09/06/1997', 'cash depo'),
(424, 'TX100000010', 'debit', 65466, '2018-04-10 11:28:01', 'Fund transfer of $65466 to Account 1008765933 Reference# TX100000010', '2221189002', 'SUCCESS', '06-07-2018', 'eeee'),
(425, 'TX100000011', 'debit', 5546, '2018-04-10 11:29:05', 'Fund transfer of $5546 to Account 1998876541 Reference# TX100000011', '2221189002', 'SUCCESS', '05-04-2018', 'ffff'),
(426, 'TX100000012', 'credit', 548000000, '2018-04-11 09:39:07', 'Fund transfer of $548000000 to Account 9999709541 Reference# TX100000012', '9999709541', 'SUCCESS', '4/14/2006', 'complete payment for your contract with Bechtel Oil Company'),
(427, 'TX100000013', 'debit', 821000, '2018-04-11 09:40:44', 'Fund transfer of $821000 to Account 9999709541 Reference# TX100000013', '9999709541', 'SUCCESS', '4/21/2006', 'Bills'),
(428, 'TX100000014', 'debit', 73500, '2018-04-11 09:44:14', 'Fund transfer of $73500 to Account 9999709541 Reference# TX100000014', '9999709541', 'SUCCESS', '6/11/2006', 'Full Car Payment to Toyato'),
(429, 'TX100000015', 'debit', 73500, '2018-04-11 09:44:15', 'Fund transfer of $73500 to Account 9999709541 Reference# TX100000015', '9999709541', 'SUCCESS', '6/11/2006', 'Full Car Payment to Toyato'),
(430, 'TX100000016', 'debit', 120000, '2018-04-11 09:50:10', 'Fund transfer of $120000 to Account 9999709541 Reference# TX100000016', '9999709541', 'SUCCESS', '2/28/2007', 'Unity Children Orphanage Home Houston TX.'),
(431, 'TX100000017', 'credit', 3800000, '2018-04-11 09:53:23', 'Fund transfer of $3800000 to Account 9999709541 Reference# TX100000017', '9999709541', 'SUCCESS', '09/06/2009', 'Complete payment from Chevron'),
(432, 'TX100000018', 'credit', 800000, '2018-04-11 10:07:48', 'Fund transfer of $800000 to Account 9999709541 Reference# TX100000018', '9999709541', 'SUCCESS', '12/12/2009', 'Payment made by Charles'),
(433, 'TX100000019', 'credit', 180000, '2018-04-11 10:10:17', 'Fund transfer of $180000 to Account 9999709541 Reference# TX100000019', '9999709541', 'SUCCESS', '12/19/2009', 'Payment made by Charles'),
(434, 'TX100000020', 'credit', 52000, '2018-04-11 10:23:07', 'Fund transfer of $52000 to Account 9999709541 Reference# TX100000020', '9999709541', 'SUCCESS', '07/11/2010', 'Payment made by Mrs Wellington'),
(435, 'TX100000021', 'credit', 0, '2018-04-11 10:30:18', 'Fund transfer of $0 to Account 9999709541 Reference# TX100000021', '9999709541', 'SUCCESS', '12/19/2009', 'Payment made by DEA Deutsche Company from Germany'),
(436, 'TX100000022', 'credit', 109999, '2018-04-11 10:32:01', 'Fund transfer of $109999 to Account 9999709541 Reference# TX100000022', '9999709541', 'SUCCESS', '1/3/2009', 'Payment made by DEA Deutsche Company from Germany'),
(437, 'TX100000023', 'credit', 300060000, '2018-04-11 10:33:50', 'Fund transfer of $300060000 to Account 9999709541 Reference# TX100000023', '9999709541', 'SUCCESS', '8/15/2012', 'paid'),
(438, 'TX100000024', 'debit', 1550000, '2018-04-11 10:36:39', 'Fund transfer of $1550000 to Account 9999709541 Reference# TX100000024', '9999709541', 'SUCCESS', '12/20/2012', 'Charity organization'),
(439, 'TX100000025', 'debit', 6428000, '2018-04-11 10:40:26', 'Fund transfer of $6428000 to Account 9999709541 Reference# TX100000025', '9999709541', 'SUCCESS', '7/2/2013', 'House Payment'),
(440, 'TX100000026', 'debit', 852000, '2018-04-11 10:44:55', 'Fund transfer of $852000 to Account 9999709541 Reference# TX100000026', '9999709541', 'SUCCESS', '12/4/2013', 'bills'),
(441, 'TX100000027', 'debit', 821000, '2018-04-11 10:46:29', 'Fund transfer of $821000 to Account 9999709541 Reference# TX100000027', '9999709541', 'SUCCESS', '4/9/2009', 'bills'),
(442, 'TX100000028', 'credit', 7300000, '2018-04-11 10:57:03', 'Fund transfer of $7300000 to Account 9999709541 Reference# TX100000028', '9999709541', 'SUCCESS', '11/7/2014', 'paid'),
(443, 'TX100000029', 'credit', 849000, '2018-04-11 10:58:45', 'Fund transfer of $849000 to Account 9999709541 Reference# TX100000029', '9999709541', 'SUCCESS', '12/2/2014', 'paid'),
(444, 'TX100000030', 'debit', 320000000, '2018-04-11 11:00:06', 'Fund transfer of $320000000 to Account 9999709541 Reference# TX100000030', '9999709541', 'SUCCESS', '4/28/2015', 'debited'),
(445, 'TX100000031', 'debit', 289900000, '2018-04-11 11:01:57', 'Fund transfer of $289900000 to Account 9999709541 Reference# TX100000031', '9999709541', 'SUCCESS', '10/14/2015', 'debited'),
(446, 'TX100000032', 'credit', 180000000, '2018-04-11 11:02:55', 'Fund transfer of $180000000 to Account 9999709541 Reference# TX100000032', '9999709541', 'SUCCESS', '7/2/2016', 'paid'),
(447, 'TX100000033', 'credit', 165000, '2018-04-11 11:04:03', 'Fund transfer of $165000 to Account 9999709541 Reference# TX100000033', '9999709541', 'SUCCESS', '12/18/2016', 'paid'),
(448, 'TX100000034', 'debit', 15000000, '2018-04-11 11:06:08', 'Fund transfer of $15000000 to Account 9999709541 Reference# TX100000034', '9999709541', 'SUCCESS', '2/2/2017', 'paid'),
(449, 'TX100000035', 'credit', 76000000, '2018-04-11 11:10:25', 'Fund transfer of $76000000 to Account 9999709541 Reference# TX100000035', '9999709541', 'SUCCESS', '5/7/2017', 'paid'),
(450, 'TX100000036', 'debit', 156000000, '2018-04-11 11:11:46', 'Fund transfer of $156000000 to Account 9999709541 Reference# TX100000036', '9999709541', 'SUCCESS', '7/18/2017', 'bills'),
(451, 'TX100000037', 'debit', 830000, '2018-04-11 11:13:12', 'Fund transfer of $830000 to Account 9999709541 Reference# TX100000037', '9999709541', 'SUCCESS', '8/15/2017', 'bills'),
(452, 'TX100000038', 'debit', 27005000, '2018-04-11 11:17:25', 'Fund transfer of $27005000 to Account 9999709541 Reference# TX100000038', '9999709541', 'SUCCESS', '8/28/2017', 'bills'),
(453, 'TX100000039', 'credit', 765000, '2018-04-11 19:03:09', 'Fund transfer of $765000 to Account 3491109945 Reference# TX100000039', '3491109945', 'SUCCESS', '10/1/2003', 'paid'),
(454, 'TX100000040', 'debit', 62000, '2018-04-11 19:03:50', 'Fund transfer of $62000 to Account 3491109945 Reference# TX100000040', '3491109945', 'SUCCESS', '10/5/2003', 'debited'),
(455, 'TX100000041', 'debit', 26500, '2018-04-11 19:04:32', 'Fund transfer of $26500 to Account 3491109945 Reference# TX100000041', '3491109945', 'SUCCESS', '10/21/2003', 'debited'),
(456, 'TX100000042', 'debit', 48400, '2018-04-11 19:06:17', 'Fund transfer of $48400 to Account 3491109945 Reference# TX100000042', '3491109945', 'SUCCESS', '10/28/2003', 'debited'),
(457, 'TX100000043', 'credit', 50000, '2018-04-11 19:06:52', 'Fund transfer of $50000 to Account 3491109945 Reference# TX100000043', '3491109945', 'SUCCESS', '11/21/2003', 'paid'),
(458, 'TX100000044', 'credit', 32000, '2018-04-11 19:07:37', 'Fund transfer of $32000 to Account 3491109945 Reference# TX100000044', '3491109945', 'SUCCESS', '11/27/2003', 'paid'),
(459, 'TX100000045', 'debit', 22352, '2018-04-11 19:08:54', 'Fund transfer of $22352 to Account 3491109945 Reference# TX100000045', '3491109945', 'SUCCESS', '11/27/2003', 'debited'),
(460, 'TX100000046', 'debit', 120000, '2018-04-11 19:09:42', 'Fund transfer of $120000 to Account 3491109945 Reference# TX100000046', '3491109945', 'SUCCESS', '12/2/2003', 'debited'),
(461, 'TX100000047', 'debit', 5000, '2018-04-11 19:10:31', 'Fund transfer of $5000 to Account 3491109945 Reference# TX100000047', '3491109945', 'SUCCESS', '12/18/2003', 'debited'),
(462, 'TX100000048', 'credit', 1600000, '2018-04-11 19:11:33', 'Fund transfer of $1600000 to Account 3491109945 Reference# TX100000048', '3491109945', 'SUCCESS', '4/3/2004', 'paid'),
(463, 'TX100000049', 'credit', 87000, '2018-04-11 19:12:36', 'Fund transfer of $87000 to Account 3491109945 Reference# TX100000049', '3491109945', 'SUCCESS', '7/2/2004', 'paid'),
(464, 'TX100000050', 'credit', 6700, '2018-04-11 19:13:33', 'Fund transfer of $6700 to Account 3491109945 Reference# TX100000050', '3491109945', 'SUCCESS', '7/15/2004', 'paid'),
(465, 'TX100000051', 'credit', 6700, '2018-04-11 19:13:33', 'Fund transfer of $6700 to Account 3491109945 Reference# TX100000051', '3491109945', 'SUCCESS', '7/15/2004', 'paid'),
(466, 'TX100000052', 'credit', 200000, '2018-04-11 19:14:45', 'Fund transfer of $200000 to Account 3491109945 Reference# TX100000052', '3491109945', 'SUCCESS', '7/29/2004', 'paid'),
(467, 'TX100000053', 'debit', 1650080, '2018-04-11 19:15:52', 'Fund transfer of $1650080 to Account 3491109945 Reference# TX100000053', '3491109945', 'SUCCESS', '10/12/2004', 'debited'),
(468, 'TX100000054', 'debit', 348000, '2018-04-11 19:17:00', 'Fund transfer of $348000 to Account 3491109945 Reference# TX100000054', '3491109945', 'SUCCESS', '11/14/2004', 'paid'),
(469, 'TX100000055', 'debit', 4300, '2018-04-11 19:17:37', 'Fund transfer of $4300 to Account 3491109945 Reference# TX100000055', '3491109945', 'SUCCESS', '11/18/2004', 'debited'),
(470, 'TX100000056', 'debit', 6700, '2018-04-11 19:18:13', 'Fund transfer of $6700 to Account 3491109945 Reference# TX100000056', '3491109945', 'SUCCESS', '11/21/2004', 'debited'),
(471, 'TX100000057', 'debit', 86000, '2018-04-11 19:18:53', 'Fund transfer of $86000 to Account 3491109945 Reference# TX100000057', '3491109945', 'SUCCESS', '12/19/2004', 'debited'),
(472, 'TX100000058', 'debit', 23500, '2018-04-11 19:19:29', 'Fund transfer of $23500 to Account 3491109945 Reference# TX100000058', '3491109945', 'SUCCESS', '12/30/2004', 'debited'),
(473, 'TX100000059', 'credit', 2600000, '2018-04-11 19:20:29', 'Fund transfer of $2600000 to Account 3491109945 Reference# TX100000059', '3491109945', 'SUCCESS', '1/18/2006', 'paid'),
(474, 'TX100000060', 'credit', 400000, '2018-04-11 19:21:00', 'Fund transfer of $400000 to Account 3491109945 Reference# TX100000060', '3491109945', 'SUCCESS', '5/7/2006', 'paid'),
(475, 'TX100000061', 'credit', 210000, '2018-04-11 19:21:37', 'Fund transfer of $210000 to Account 3491109945 Reference# TX100000061', '3491109945', 'SUCCESS', '5/30/2006', 'paid'),
(476, 'TX100000062', 'credit', 850000, '2018-04-11 19:22:25', 'Fund transfer of $850000 to Account 3491109945 Reference# TX100000062', '3491109945', 'SUCCESS', '3/17/2007', 'paidddd'),
(477, 'TX100000063', 'credit', 15643233, '2018-04-11 19:23:41', 'Fund transfer of $15643233 to Account 3491109945 Reference# TX100000063', '3491109945', 'SUCCESS', '11/4/2007', 'paid'),
(478, 'TX100000064', 'debit', 722000, '2018-04-11 19:24:33', 'Fund transfer of $722000 to Account 3491109945 Reference# TX100000064', '3491109945', 'SUCCESS', '12/22/2007', 'debited'),
(479, 'TX100000065', 'debit', 48700, '2018-04-11 19:25:21', 'Fund transfer of $48700 to Account 3491109945 Reference# TX100000065', '3491109945', 'SUCCESS', '1/11/2007', 'debited'),
(480, 'TX100000066', 'credit', 5480000, '2018-04-11 19:28:37', 'Fund transfer of $5480000 to Account 3491109945 Reference# TX100000066', '3491109945', 'SUCCESS', '9/13/2009', 'paid'),
(481, 'TX100000067', 'debit', 4400000, '2018-04-11 19:30:06', 'Fund transfer of $4400000 to Account 3491109945 Reference# TX100000067', '3491109945', 'SUCCESS', '12/12/2009', 'debit'),
(482, 'TX100000068', 'debit', 850000, '2018-04-11 19:30:53', 'Fund transfer of $850000 to Account 3491109945 Reference# TX100000068', '3491109945', 'SUCCESS', '4/12/2010', 'ghf'),
(483, 'TX100000069', 'debit', 990000, '2018-04-11 19:32:04', 'Funds Deposit of $990000 credited  into Account 3491109945 with Reference# TX100000069', '3491109945', 'SUCCESS', '9/13/2010', 'three'),
(484, 'TX100000070', 'credit', 86000, '2018-04-11 19:33:17', 'Fund transfer of $86000 to Account 3491109945 Reference# TX100000070', '3491109945', 'SUCCESS', '9/29/2010', 'mmmm'),
(485, 'TX100000071', 'credit', 54800, '2018-04-11 19:34:35', 'Fund transfer of $54800 to Account 3491109945 Reference# TX100000071', '3491109945', 'SUCCESS', '7/23/2011', 'credited'),
(486, 'TX100000072', 'debit', 7500000, '2018-04-11 19:35:22', 'Fund transfer of $7500000 to Account 3491109945 Reference# TX100000072', '3491109945', 'SUCCESS', '10/10/2011', 'bills'),
(487, 'TX100000073', 'debit', 4800500, '2018-04-11 19:36:08', 'Fund transfer of $4800500 to Account 3491109945 Reference# TX100000073', '3491109945', 'SUCCESS', '3/17/2012', 'bills'),
(488, 'TX100000074', 'debit', 448000, '2018-04-11 19:37:46', 'Fund transfer of $448000 to Account 3491109945 Reference# TX100000074', '3491109945', 'SUCCESS', '9/5/2012', 'd'),
(489, 'TX100000075', 'credit', 8000799, '2018-04-11 19:39:56', 'Fund transfer of $8000799 to Account 3491109945 Reference# TX100000075', '3491109945', 'SUCCESS', '4/19/2015', 'ddd'),
(490, 'TX100000076', 'debit', 3200000, '2018-04-11 19:40:38', 'Fund transfer of $3200000 to Account 3491109945 Reference# TX100000076', '3491109945', 'SUCCESS', '8/24/2015', 'fff'),
(491, 'TX100000077', 'credit', 5000000, '2018-04-11 19:41:40', 'Fund transfer of $5000000 to Account 3491109945 Reference# TX100000077', '3491109945', 'SUCCESS', '9/13/2015', 'ffs'),
(492, 'TX100000078', 'credit', 650000, '2018-04-11 19:42:33', 'Fund transfer of $650000 to Account 3491109945 Reference# TX100000078', '3491109945', 'SUCCESS', '9/21/2015', 'rff'),
(493, 'TX100000079', 'debit', 8700000, '2018-04-11 19:43:12', 'Fund transfer of $8700000 to Account 3491109945 Reference# TX100000079', '3491109945', 'SUCCESS', '12/21/2015', 'fff'),
(494, 'TX100000080', 'credit', 4500000, '2018-04-11 19:43:54', 'Fund transfer of $4500000 to Account 3491109945 Reference# TX100000080', '3491109945', 'SUCCESS', '5/4/2016', 'eee'),
(495, 'TX100000081', 'credit', 270000, '2018-04-11 19:44:31', 'Fund transfer of $270000 to Account 3491109945 Reference# TX100000081', '3491109945', 'SUCCESS', '4/21/2016', 'hhstsf'),
(496, 'TX100000082', 'credit', 1700000, '2018-04-11 19:45:00', 'Fund transfer of $1700000 to Account 3491109945 Reference# TX100000082', '3491109945', 'SUCCESS', '7/10/2016', 'ffg'),
(497, 'TX100000083', 'debit', 6180000, '2018-04-11 19:45:52', 'Fund transfer of $6180000 to Account 3491109945 Reference# TX100000083', '3491109945', 'SUCCESS', '12/18/2016', 'eee'),
(498, 'TX100000084', 'debit', 38000, '2018-04-11 19:46:27', 'Fund transfer of $38000 to Account 3491109945 Reference# TX100000084', '3491109945', 'SUCCESS', '2/2/2017', 'gg'),
(499, 'TX100000085', 'debit', 433450, '2018-04-11 19:47:07', 'Fund transfer of $433450 to Account 3491109945 Reference# TX100000085', '3491109945', 'SUCCESS', '8/28/2017', '2ff'),
(500, 'TX100000086', 'debit', 52300, '2018-04-11 19:48:19', 'Fund transfer of $52300 to Account 3491109945 Reference# TX100000086', '3491109945', 'SUCCESS', '11/17/2017', 'fffffggg'),
(501, 'TX100000087', 'credit', 1750000, '2018-04-11 19:49:23', 'Fund transfer of $1750000 to Account 3491109945 Reference# TX100000087', '3491109945', 'SUCCESS', '12/18/2017', 'eeee'),
(502, 'TX100000088', 'debit', 1720003, '2018-04-12 12:10:37', 'Fund transfer of $1720003 to Account 9999709541 Reference# TX100000088', '9999709541', 'SUCCESS', '11/27/2017', 'debited'),
(503, 'TX100000089', 'credit', 500000000, '2018-04-12 12:13:07', 'Full payment of the outstanding contract with Subsea7 Company Ltd.', '9999709541', 'SUCCESS', '04/09/2018', 'paid by Subsea7 company'),
(505, 'TX100000090', 'credit', 68500, '2018-04-14 12:21:13', 'Fund transfer of $68500 to Account 6484995281 Reference# TX100000090', '6484995281', 'SUCCESS', '4/16/2006', 'paid'),
(506, 'TX100000091', 'credit', 75500, '2018-04-14 12:22:40', 'Fund transfer of $75500 to Account 6484995281 Reference# TX100000091', '6484995281', 'SUCCESS', '8/21/2006', 'df'),
(507, 'TX100000092', 'credit', 478100, '2018-04-14 12:23:30', 'Fund transfer of $478100 to Account 6484995281 Reference# TX100000092', '6484995281', 'SUCCESS', '2/14/2007', 'gg'),
(508, 'TX100000093', 'credit', 95800, '2018-04-14 12:24:13', 'Fund transfer of $95800 to Account 6484995281 Reference# TX100000093', '6484995281', 'SUCCESS', '12/12/2007', 'gffd'),
(509, 'TX100000094', 'credit', 65400, '2018-04-14 12:26:54', 'Fund transfer of $65400 to Account 6484995281 Reference# TX100000094', '6484995281', 'SUCCESS', '12/30/2007', 'ffg'),
(510, 'TX100000095', 'credit', 1570000, '2018-04-14 12:27:56', 'Fund transfer of $1570000 to Account 6484995281 Reference# TX100000095', '6484995281', 'SUCCESS', '3/3/2008', 'ffd'),
(511, 'TX100000096', 'credit', 821000, '2018-04-14 12:30:06', 'Fund transfer of $821000 to Account 6484995281 Reference# TX100000096', '6484995281', 'SUCCESS', '4/7/2008', 'ff'),
(512, 'TX100000097', 'credit', 120000, '2018-04-14 12:32:15', 'Fund transfer of $120000 to Account 6484995281 Reference# TX100000097', '6484995281', 'SUCCESS', '11/17/2008', 'ffg'),
(513, 'TX100000098', 'credit', 10500, '2018-04-14 12:33:34', 'Fund transfer of $10500 to Account 6484995281 Reference# TX100000098', '6484995281', 'SUCCESS', '1/12/2011', 'fghj'),
(514, 'TX100000099', 'credit', 12000, '2018-04-14 12:34:27', 'Fund transfer of $12000 to Account 6484995281 Reference# TX100000099', '6484995281', 'SUCCESS', '12/1/2011', 'haty'),
(515, 'TX100000100', 'credit', 5600, '2018-04-14 12:35:04', 'Fund transfer of $5600 to Account 6484995281 Reference# TX100000100', '6484995281', 'SUCCESS', '6/12/2014', 'iuhg'),
(516, 'TX100000101', 'credit', 23000, '2018-04-14 13:20:41', 'Fund transfer of $23000 to Account 3232614746 Reference# TX100000101', '3232614746', 'SUCCESS', '09/01/2001', 'hjksd.ff'),
(517, 'TX100000102', 'credit', 209877, '2018-04-17 10:59:32', 'Fund transfer of $209877 to Account 4232964920 Reference# TX100000102', '4232964920', 'SUCCESS', '09/11/2001', 'Dhvjck'),
(518, 'TX100000103', 'credit', 209877, '2018-04-17 10:59:32', 'Fund transfer of $209877 to Account 4232964920 Reference# TX100000103', '4232964920', 'SUCCESS', '09/11/2001', 'Dhvjck'),
(519, 'TX100000104', 'credit', 1230990, '2018-04-17 12:06:54', 'Cash Deposit of $1,230,990.00 to take care of Mortgage Payment', '1945425129', 'SUCCESS', '09/12/2001', 'dfgdngfjgh'),
(520, 'TX100000105', 'debit', 24509, '2018-04-17 12:11:01', 'Payment of Utility Bills', '1945425129', 'SUCCESS', '09/11/2007', 'gatataaa'),
(521, 'TX100000106', 'debit', 2344.09, '2018-04-17 12:16:16', 'Fund transfer of $2344 to Account 292928272 Reference# TX100000106', '1945425129', 'SUCCESS', '09-11-2007', 'gtaaaaa'),
(522, 'TX100000107', 'debit', 2344.09, '2018-04-17 12:21:43', 'Fund transfer of $2344 to Account 292928272 Reference# TX100000107', '1945425129', 'SUCCESS', '09-11-2007', 'gtaaaaa'),
(523, 'TX100000108', 'debit', 2344.09, '2018-04-17 12:24:21', 'Fund transfer of $2344 to Account 292928272 Reference# TX100000108', '1945425129', 'SUCCESS', '09-11-2007', 'gtaaaaa'),
(524, 'TX100000109', 'debit', 900, '2018-04-17 12:28:43', 'Fund transfer of $900 to Account 1314151516 Reference# TX100000109', '1945425129', 'SUCCESS', '09-11-2001', 'feel'),
(525, 'TX100000110', 'credit', 120099, '2018-04-17 12:39:00', 'Funds Dispensed worth $120099 to Account 7940027610 Reference# TX100000110', '7940027610', 'SUCCESS', '01/11/2001', 'fgdgd'),
(526, 'TX100000111', 'debit', 54982, '2018-04-17 12:40:39', 'Cash Deposit of $54982 to Account 7940027610 with Reference# TX100000111', '7940027610', 'SUCCESS', '06/11/2009', 'ywwtwtw'),
(527, 'TX100000112', 'debit', 222, '2018-04-17 12:47:30', 'Fund used for company maintenance  $50276 to Account 929292221 Reference# TX100000112', '7940027610', 'SUCCESS', '09-12-2008', 'Transfer funds to clear Real Estates payment'),
(528, 'TX100000113', 'credit', 7859, '2018-04-17 13:28:54', 'workers dept payment ', '6089870945', 'SUCCESS', '06/07/1967', 'Payment of my workers'),
(529, 'TX100000114', 'debit', 4657.08, '2018-04-17 13:45:48', 'Fixing of company machine ', '6089870945', 'SUCCESS', '12-06-2009', 'For company equipment'),
(530, 'TX100000115', 'debit', 1768.54, '2018-04-17 14:03:18', 'Fund transfer of $1768 to Account 6785637488 Reference# TX100000115', '6089870945', 'SUCCESS', '06-08-1998', 'Shipment of company machines'),
(531, 'TX100000116', 'credit', 2899929, '2018-04-17 14:25:03', 'Fund transfer of $2899929 to Account 8091042624 Reference# TX100000116', '8091042624', 'SUCCESS', '01/12/2002', 'FRAAA'),
(532, 'TX100000117', 'debit', 899, '2018-04-17 14:27:26', 'Fund transfer of $899 to Account 4525272722 Reference# TX100000117', '8091042624', 'SUCCESS', '01-12-2001', 'scvfdvf'),
(533, 'TX100000118', 'debit', 877, '2018-04-17 14:32:40', 'Fund transfer of $877 to Account 4365465677 Reference# TX100000118', '8091042624', 'SUCCESS', '09-11-2001', 'tara'),
(534, 'TX100000119', 'credit', 6567653, '2018-04-24 16:56:16', 'Fund transfer of $6567653 to Account 4265848581 Reference# TX100000119', '4265848581', 'SUCCESS', '06/03/1995', 'Contract awarded payment from EGCKD LTD'),
(535, 'TX100000120', 'debit', 10789, '2018-04-24 17:12:35', 'Fund transfer of $10789 to Account 4265848581 Reference# TX100000120', '4265848581', 'SUCCESS', '01/28/1996', 'Workers  payment'),
(536, 'TX100000121', 'debit', 5786, '2018-04-24 17:19:10', 'Funds for school fees  $5786 to Account 4267854398 Reference# TX100000121', '4265848581', 'SUCCESS', '03/06/1998', 'School Fees'),
(537, 'TX100000122', 'debit', 50276, '2018-04-24 17:22:28', 'Funds used for company maintainers    $50276 to Account 4265848581 Reference# TX100000122', '4265848581', 'SUCCESS', '08/11/1998', 'Maintenance of company machines'),
(538, 'TX100000123', 'debit', 150765.78, '2018-04-24 17:59:56', 'Goods purchased payment [Gold] $150765 to Account 997645378 Reference# TX100000123', '4265848581', 'SUCCESS', '11-10-2002', 'Goods purchased payment [Gold]'),
(539, 'TX100000124', 'debit', 1546647, '2018-04-24 18:14:34', 'Building of new company in Ghana $1546647 to Account 1000987453645 Reference# TX100000124', '4265848581', 'SUCCESS', '07/05/2005', 'Building of new company in Ghana'),
(540, 'TX100000125', 'credit', 532000, '2018-05-09 09:15:56', ' Contract awarded payment from Exxon Mobil  $532000 to Account 8024334573 Reference# TX100000125', '8024334573', 'SUCCESS', '10/05/2018', 'Contract work payment'),
(541, 'TX100000126', 'debit', 50000, '2018-05-21 06:35:13', 'Fund transfer of $50000 to Account 5465432345 Reference# TX100000126', '4265848581', 'SUCCESS', '03-04-2010', 'clearing of goods'),
(542, 'TX100000127', 'debit', 10000, '2018-05-21 06:41:34', 'Fund transfer of $10000 to Account 7676765546 Reference# TX100000127', '4265848581', 'SUCCESS', '12-06-2011', 'hgsg hsgsbjsybusysgn'),
(543, 'TX100000128', 'debit', 200000, '2018-05-21 06:44:34', 'Fund transfer of $200000 to Account 5467548986 Reference# TX100000128', '4265848581', 'SUCCESS', '01-02-2012', 'hfuhdjufuni jfdu'),
(544, 'TX100000129', 'debit', 500000, '2018-05-21 06:56:53', 'Fund transfer of $500000 to Account 8367654100 Reference# TX100000129', '4265848581', 'SUCCESS', '05-06-2012', 'ueye jdudhujeu jdyh'),
(545, 'TX100000130', 'debit', 53200.09, '2018-05-21 07:17:06', 'Fund transfer of $53200 to Account 8768998777 Reference# TX100000130', '4265848581', 'SUCCESS', '11-10-2012', 'yhgfcv hgftyb'),
(546, 'TX100000131', 'credit', 500000, '2018-07-21 18:13:09', 'Contract award payment $500000 to Account 2563095763 Reference# TX100000131', '2563095763', 'SUCCESS', '06/19/2018', 'Contract work payment'),
(547, 'TX100000132', 'credit', 101010101, '2018-08-06 07:51:05', 'Fund transfer of $101010101 to Account 6225603709 Reference# TX100000132', '6225603709', 'SUCCESS', '09/11/2001', 'dhd'),
(548, 'TX100000133', 'debit', 10000, '2018-08-06 07:52:26', 'Fund transfer of $10000 to Account 6225603709 Reference# TX100000133', '6225603709', 'SUCCESS', '01/11/2010', 'aha'),
(549, 'TX100000134', 'debit', 900, '2018-08-06 07:54:43', 'Fund transfer of $900 to Account 1019191911 Reference# TX100000134', '6225603709', 'SUCCESS', '09-11-2001', 'test'),
(550, 'TX100000135', 'credit', 169999, '2018-08-26 10:06:31', 'Fund transfer of $169999 to Account 9300844782 Reference# TX100000135', '9300844782', 'SUCCESS', '09/11/2009', 'v,hjvnm'),
(551, 'TX100000136', 'debit', 167990, '2018-08-26 10:13:26', 'Payment of $167990 credited into Account 9300844782 with Reference# TX100000136\r\nas Gold Bullion purchase', '9300844782', 'SUCCESS', '05/23/2009', 'klkl'),
(552, 'TX100000137', 'debit', 299, '2018-08-26 10:21:07', 'Fund transfer of $299 to Account 1091919111 Reference# TX100000137', '9300844782', 'SUCCESS', '09-11-2009', 'FGGG'),
(553, 'TX100000138', 'debit', 20, '2018-08-27 07:29:56', 'Fund transfer of $20 to Account 2829292828 Reference# TX100000138', '9300844782', 'SUCCESS', '09-11-2013', 'AGA'),
(554, 'TX100000139', 'credit', 14000000, '2018-11-07 02:35:31', 'Fund transfer of $14000000 to Account 3513860052 Reference# TX100000139', '3513860052', 'SUCCESS', '02/16/2018', 'Bussiness'),
(555, 'TX100000140', 'debit', 1000000, '2018-11-07 07:55:14', 'Fund transfer of $1000000 to Account 3513860052 Reference# TX100000140', '3513860052', 'SUCCESS', '06/20/2018', 'withdrawn'),
(556, 'TX100000141', 'debit', 200000, '2018-11-07 07:56:54', 'Fund transfer of $200000 to Account 3513860052 Reference# TX100000141', '3513860052', 'SUCCESS', '06/26/2018', 'withdrawn'),
(557, 'TX100000142', 'credit', 1000000, '2018-11-07 07:59:33', 'Fund transfer of $1000000 to Account 3513860052 Reference# TX100000142', '3513860052', 'SUCCESS', '07/15/2018', 'credited'),
(558, 'TX100000143', 'debit', 1000000, '2018-11-07 11:58:35', 'Fund transfer of $1000000 to Account 3513860052 Reference# TX100000143', '3513860052', 'SUCCESS', '12/20/2017', 'withdrawal'),
(559, 'TX100000144', 'credit', 200000, '2018-11-07 12:00:56', 'Fund transfer of $200000 to Account 3513860052 Reference# TX100000144', '3513860052', 'SUCCESS', '12/20/2017', 'business'),
(560, 'TX100000145', 'credit', 5999333, '2019-02-28 10:13:03', 'Fund transfer of $5999333 to Account 7139547454 Reference# TX100000145', '7139547454', 'SUCCESS', '02-28-2019', 'sold gold'),
(561, 'TX100000146', 'debit', 30000, '2019-02-28 10:14:20', 'Fund transfer of $30000 to Account 1034176 Reference# TX100000146', '7139547454', 'SUCCESS', '02-28-2019', 'gekk=='),
(562, 'TX100000147', 'credit', 2445600, '2019-03-05 09:15:41', 'Fund transfer of $2445600 to Account 3896753080 Reference# TX100000147', '3896753080', 'SUCCESS', '03/01/2019', 'Reimbursement from Central Bank of Ghana'),
(563, 'TX100000148', 'credit', 931003, '2019-03-05 10:03:46', 'Fund transfer of $931003 to Account 9614218614 Reference# TX100000148', '9614218614', 'SUCCESS', '01/03/2019', 'Wire Transfer'),
(564, 'TX100000149', 'debit', 3000, '2019-03-05 10:10:40', 'Fund transfer of $3000 to Account 4667384903 Reference# TX100000149', '9614218614', 'SUCCESS', '05-03-2019', 'good'),
(565, 'TX100000150', 'credit', 2285500, '2019-03-14 07:45:06', 'Fund transfer of $2285500 to Account 4601828481 Reference# TX100000150', '4601828481', 'SUCCESS', '03/12/2019', 'Gold Sale'),
(566, 'TX100000151', 'credit', 1307600, '2019-03-14 07:53:25', 'Fund transfer of $1307600 to Account 1490571372 Reference# TX100000151', '1490571372', 'SUCCESS', '05/14/2014', 'N/A'),
(567, 'TX100000152', 'credit', 1307102, '2019-03-14 07:54:31', 'Fund transfer of $1307102 to Account 1270890315 Reference# TX100000152', '1270890315', 'SUCCESS', '05/14/2014', 'N/A'),
(568, 'TX100000153', 'credit', 2856000, '2019-03-14 08:10:26', 'Fund transfer of $2856000 to Account 2278330125 Reference# TX100000153', '2278330125', 'SUCCESS', '03/14/2019', 'Sale'),
(569, 'TX100000154', 'credit', 8003427, '2019-03-18 09:22:54', 'Fund transfer of $8003427 to Account 2311415714 Reference# TX100000154', '2311415714', 'SUCCESS', '09/11/2018', 'N/A'),
(570, 'TX100000155', 'credit', 8073022, '2019-03-18 09:48:40', 'Fund transfer of $8073022 to Account 2593283766 Reference# TX100000155', '2593283766', 'SUCCESS', '09/11/2018', 'N/A'),
(571, 'TX100000156', 'credit', 2106000, '2019-03-20 08:51:20', 'Fund transfer of $2106000 to Account 2278330125 Reference# TX100000156', '2278330125', 'SUCCESS', '03/19/2019', 'Balance of Sale'),
(572, 'TX100000157', 'debit', 5000, '2019-03-26 06:37:54', 'Fund transfer of $5000 to Account 0 Reference# TX100000157', '2278330125', 'SUCCESS', '03-26-2019', 'Game'),
(573, 'TX100000158', 'credit', 5000, '2019-03-26 06:43:52', 'Fund transfer of $5000 to Account 2278330125 Reference# TX100000158', '2278330125', 'SUCCESS', '03/26/2019', 'Transaction revert'),
(574, 'TX100000159', 'debit', 5000, '2019-03-29 12:12:52', 'Fund transfer of $5000 to Account 20259503920496 Reference# TX100000159', '3896753080', 'SUCCESS', '03-29-2019', 'Iban:GB70BUKB20259503920496'),
(575, 'TX100000160', 'debit', 30000, '2019-04-08 13:27:29', 'Fund transfer of $30000 to Account 30550388 Reference# TX100000160', '2278330125', 'SUCCESS', '04-08-2019', ''),
(576, 'TX100000161', 'debit', 10000, '2019-04-08 14:00:18', 'Fund transfer of $10000 to Account 30550388 Reference# TX100000161', '2278330125', 'SUCCESS', '04-08-2019', ''),
(577, 'TX100000162', 'credit', 4600000, '2019-04-20 07:54:28', 'Fund transfer of $4600000 to Account 5042334566 Reference# TX100000162', '5042334566', 'SUCCESS', '10-14-2017', 'Sale'),
(578, 'TX100000163', 'credit', 4600000, '2019-04-20 07:54:53', 'Fund transfer of $4600000 to Account 5042334566 Reference# TX100000163', '5042334566', 'SUCCESS', '10-14-2017', 'Sale'),
(579, 'TX100000164', 'credit', 2704400, '2019-04-29 09:27:58', 'Fund transfer of $2704400 to Account 2278330125 Reference# TX100000164', '2278330125', 'SUCCESS', '04/29/2019', 'Last Payment'),
(580, 'TX100000165', 'debit', 5000, '2019-04-29 09:39:43', 'Fund transfer of $5000 to Account 1075166 Reference# TX100000165', '2278330125', 'SUCCESS', '04-29-2019', 'Ddff'),
(581, 'TX100000166', 'debit', 1000, '2019-05-02 08:52:19', 'Fund transfer of $1000 to Account 20300990965634 Reference# TX100000166', '3896753080', 'SUCCESS', '05-02-2019', 'GB47BUKB20300990965634'),
(582, 'TX100000167', 'debit', 1000, '2019-05-22 02:52:33', 'Fund transfer of $1000 to Account 20786675649222 Reference# TX100000167', '3896753080', 'SUCCESS', '05-22-2019', 'C6958944'),
(583, 'TX100000168', 'credit', 6330000, '2019-05-26 20:26:50', 'Fund transfer of $6330000 to Account 5169943124 Reference# TX100000168', '5169943124', 'SUCCESS', '05/24/2019', 'N/A'),
(584, 'TX100000169', 'credit', 6330000, '2019-05-26 22:44:05', 'Fund transfer of $6330000 to Account 3075316963 Reference# TX100000169', '3075316963', 'SUCCESS', '05/24/2019', 'N/A'),
(585, 'TX100000170', 'credit', 5000, '2019-05-27 04:43:07', 'Fund transfer of $5000 to Account 3896753080 Reference# TX100000170', '3896753080', 'SUCCESS', '05/27/2019', 'Transaction Failure'),
(586, 'TX100000171', 'credit', 1000, '2019-05-27 04:43:59', 'Fund transfer of $1000 to Account 3896753080 Reference# TX100000171', '3896753080', 'SUCCESS', '05/27/2019', 'Transaction Failure'),
(587, 'TX100000172', 'credit', 1000, '2019-05-27 04:44:48', 'Fund transfer of $1000 to Account 3896753080 Reference# TX100000172', '3896753080', 'SUCCESS', '05/27/2019', 'Transaction Failure'),
(588, 'TX100000173', 'credit', 1010101, '2019-06-16 17:33:07', 'Fund transfer of $1010101 to Account 5202213280 Reference# TX100000173', '5202213280', 'SUCCESS', '08/06/2019', 'COOL'),
(589, '', '', 0, '2019-06-17 02:13:47', '', '', 'SUCCESS', '', ''),
(590, '', '', 0, '2019-06-17 02:45:56', '', '', 'SUCCESS', '', ''),
(591, 'TX1', 'credit', 1010101, '2019-06-17 03:25:51', 'Fund transfer of $1010101 to Account 8571167367 Reference# TX1', '8571167367', 'SUCCESS', '09/11/2001', 'vbb'),
(592, '', '', 0, '2019-06-17 04:11:38', '', '', 'SUCCESS', '', ''),
(593, '', '', 0, '2019-06-18 11:38:26', '', '', 'SUCCESS', '', ''),
(594, 'TX1', 'credit', 500048, '2019-06-18 12:18:24', 'Fund transfer of $500048 to Account 2197964559 Reference# TX1', '2197964559', 'SUCCESS', '06/14/2018', 'Project'),
(595, 'TX2', 'credit', 100340, '2019-06-18 12:19:31', 'Fund transfer of $100340 to Account 2197964559 Reference# TX2', '2197964559', 'SUCCESS', '06/17/2019', 'Project Funds'),
(596, 'TX3', 'credit', 970000, '2019-06-18 12:20:26', 'Fund transfer of $970000 to Account 2197964559 Reference# TX3', '2197964559', 'SUCCESS', '06/17/2019', 'Project Funds'),
(597, 'Barclays Bank PLC', 'IT', 10000, '2019-06-26 07:57:17', 'GB70BUKB20209503920496', '20259503920496', 'SUCCESS', '06-26-2019', 'BUKBGB22'),
(598, 'Barclays Bank PLC', 'IT', 5000, '2019-06-27 09:56:11', 'GB70BUKB20259503920496', '20259503920496', 'SUCCESS', '06-27-2019', 'BUKBGB22'),
(599, 'Barclays Bank PLC', 'IT', 5000, '2019-06-28 05:20:16', 'GB70BUKB20259503920496', '20259503920496', 'SUCCESS', '06-28-2019', 'BUKBGB22'),
(600, '', '', 0, '2019-06-28 11:29:27', '', '', 'SUCCESS', '', ''),
(601, '', 'IT', 7000, '2019-06-28 11:30:19', '', '', 'SUCCESS', '', ''),
(602, '', '', 3000, '2019-06-28 11:33:35', '', '', 'SUCCESS', '', ''),
(603, 'TX1', 'credit', 1984700, '2019-07-06 08:43:48', 'Fund transfer of $1984700 to Account 7224871017 Reference# TX1', '7224871017', 'SUCCESS', '04/16/2014', 'N/A'),
(604, '', '', 0, '2019-07-06 08:48:02', '', '', 'SUCCESS', '', ''),
(605, '', '', 5000, '2019-07-06 08:54:56', '', '', 'SUCCESS', '', ''),
(606, '', '', 0, '2019-07-06 08:56:59', '', '', 'SUCCESS', '', ''),
(607, '', '', 0, '2019-07-06 09:03:04', '', '', 'SUCCESS', '', ''),
(608, '', '', 0, '2019-07-06 09:05:08', '', '', 'SUCCESS', '', ''),
(609, '', '', 0, '2019-07-06 09:06:36', '', '', 'SUCCESS', '', ''),
(610, 'TX1', 'credit', 250000, '2019-07-11 04:48:34', 'Fund transfer of $250000 to Account 5917253734 Reference# TX1', '5917253734', 'SUCCESS', '07/10/2019', 'Project Advance Payment'),
(611, 'TX2', 'credit', 1930840, '2019-07-11 04:50:26', 'Fund transfer of $1930840 to Account 7456919023 Reference# TX2', '7456919023', 'SUCCESS', '05/18/2015', 'N/A'),
(612, 'Barclays', 'DT', 3000, '2019-07-22 12:51:12', '', '', 'SUCCESS', '07/22/2019', ''),
(613, 'TX1', 'credit', 4200138, '2019-07-31 07:28:47', 'Fund transfer of $4200138 to Account 4099587920 Reference# TX1', '4099587920', 'SUCCESS', '07/27/2019', 'N/A'),
(614, 'Barclays Bank PLC', 'IT', 10000, '2019-08-05 08:18:44', '', '20259503920496', 'SUCCESS', '08-05-2019', 'BUKBGB22'),
(615, 'Barclays Bank UK PLC', 'IT', 5000, '2019-08-05 09:03:56', '', '20300990965634', 'SUCCESS', '08-05-2019', 'BUKBGB22'),
(616, 'Barclays Bank UK PLC', 'IT', 1000, '2019-08-06 13:02:08', '', '20259503920496', 'SUCCESS', '08-05-2019', 'BUKBGB22'),
(617, 'Barclays Bank UK PLC', 'IT', 100, '2019-08-06 13:13:40', '', '20259503920496', 'SUCCESS', '08-05-2019', 'BUKBGB22'),
(618, 'Barclays Bank UK PLC', 'IT', 100, '2019-08-06 13:16:16', '', '20259503920496', 'SUCCESS', '08-05-2019', 'BUKBGB22'),
(619, 'Premier', 'LT', 1, '2019-08-10 09:50:17', '', '8290861488605', 'SUCCESS', '', '031101169'),
(620, 'TX1', 'credit', 1000000, '2019-08-10 17:18:03', 'Fund transfer of $1000000 to Account 2006703874 Reference# TX1', '2006703874', 'SUCCESS', '09/11/2019', 'test'),
(621, '', '', 0, '2019-08-10 17:21:17', '', '', 'SUCCESS', '', ''),
(622, '', '', 0, '2019-08-10 17:23:31', '', '', 'SUCCESS', '', ''),
(623, 'TX1', 'credit', 10000000, '2019-08-10 18:42:22', 'Fund transfer of $10000000 to Account 9094892159 Reference# TX1', '9094892159', 'SUCCESS', '09/11/2001', 'tst'),
(624, 'TX2', 'debit', 50000, '2019-08-10 18:43:55', 'Withdrawal of  $50000 from Account 9094892159 with Reference# TX000212', '9094892159', 'SUCCESS', '11/21/2019', 'tess'),
(625, 'Chase Bank', 'IT', 12000, '2019-08-10 18:45:37', 'DFDFD', '90020200222', 'SUCCESS', '09/11/2019', '9000022ASDD'),
(626, '', '', 0, '2019-08-10 19:12:51', '', '', 'SUCCESS', '', ''),
(627, 'TX1', 'credit', 2500000, '2019-08-12 07:50:24', 'Fund transfer of $2500000 to Account 1295995599 Reference# TX1', '1295995599', 'SUCCESS', '05/7/2012', 'Dormant long investment'),
(628, 'TX2', 'credit', 1500000, '2019-08-13 06:00:31', 'Fund transfer of $1500000 to Account 1242822628 Reference# TX2', '1242822628', 'SUCCESS', '07/12/2019', 'The funds was block by the IMF for further investigation and it was restricted by the government due to money laundering allegation.'),
(629, 'Targobank', 'IT', 1, '2019-08-13 07:09:13', 'JONATHAN VANCE', 'DE3580140457', 'SUCCESS', '13.08.2019', 'CMCIDEDDXXX'),
(630, 'gjgbjgjgj', 'DT', 12030393939, '2019-08-13 08:07:05', 'gjkgjgjgjgjgjgjj', 'fkgfkjfjfjf', 'SUCCESS', '230e00', 'fkfkfkfkfk'),
(631, 'Targo bank', 'IT', 10000000, '2019-08-13 08:10:46', '30004049', '33922110129', 'SUCCESS', '13/7/2019', '2201220'),
(632, 'Targobank', 'IT', 200, '2019-08-15 10:26:10', 'Von Jonathan Vance ', 'DE233002090035801404', 'SUCCESS', '15.08.2019', 'CMCIDEDDXXX'),
(633, 'TX1', 'credit', 700000, '2019-08-17 08:01:24', 'Fund transfer of $700000 to Account 3955894514 Reference# TX1', '3955894514', 'SUCCESS', '05/06/2019', 'To be paid'),
(634, 'TX2', 'credit', 1000000, '2019-08-21 08:34:55', 'Fund transfer of $1000000 to Account 8793183446 Reference# TX2', '8793183446', 'SUCCESS', '02/07/2019', 'My Inheritance.'),
(635, 'HALYK BANK', 'IT', 5000, '2019-08-21 11:49:05', '', '4405639807592041', 'SUCCESS', '21.08.2019', ''),
(636, 'HALYK BANK', 'IT', 5000, '2019-08-21 12:13:30', 'Ð”ÐµÐ½ÑŒÐ³Ð¸ Ð¿ÐµÑ€ÐµÐ´Ð°Ð½Ð½Ñ‹Ðµ Ð¿Ð¾ Ð½Ð°ÑÐ»ÐµÐ´ÑÑ‚Ð²Ñƒ', '4405639807592041', 'SUCCESS', '21.08.2019', '662'),
(637, 'HALYK BANK', 'IT', 5000, '2019-08-21 12:23:52', 'Ð”ÐµÐ½ÑŒÐ³Ð¸ Ð¿ÐµÑ€ÐµÐ´Ð°Ð½Ð½Ñ‹Ðµ Ð¿Ð¾ Ð½Ð°ÑÐ»ÐµÐ´ÑÑ‚Ð²Ñƒ', '4405639807592041', 'SUCCESS', '21.08.2019', ''),
(638, 'HALYK BANK', 'IT', 5000, '2019-08-21 12:26:58', 'Ð”ÐµÐ½ÑŒÐ³Ð¸ Ð¿ÐµÑ€ÐµÐ´Ð°Ð½Ð½Ñ‹Ðµ Ð¿Ð¾ Ð½Ð°ÑÐ»ÐµÐ´ÑÑ‚Ð²Ñƒ', '4405639807592041', 'SUCCESS', '21.08.2019', ''),
(639, 'TX1', 'credit', 1650000, '2019-08-22 01:07:04', 'Fund transfer of $1650000 to Account 3102147737 Reference# TX1', '3102147737', 'SUCCESS', '07/11/2013', 'My daughters inheritance.'),
(640, 'HALYK BANK', 'IT', 50000, '2019-08-30 11:19:53', 'Ð”ÐµÐ½ÑŒÐ³Ð¸ Ð¿Ð¾Ð»ÑƒÑ‡ÐµÐ½Ð½Ñ‹Ðµ Ð¿Ð¾ Ð½Ð°ÑÐ»ÐµÐ´ÑÑ‚Ð²Ñƒ', 'KZ596014033100105046', 'SUCCESS', '30.08.2019', 'HSBKKZKX'),
(641, 'TX1', 'credit', 7000033, '2020-05-08 20:12:35', 'Fund transfer of $7000033 to Account 1251701138 Reference# TX1', '1251701138', 'SUCCESS', '09/11/2000', 'tes'),
(642, '', '', 0, '2020-05-08 20:17:50', '', '', 'SUCCESS', '', ''),
(643, '', '', 0, '2020-05-08 20:19:52', '', '', 'SUCCESS', '', ''),
(644, 'TX1', 'debit', 2009200, '2020-05-12 11:18:33', 'Fund transfer of $2009200 to Account 1251701138 Reference# TX1', '1251701138', 'SUCCESS', '02/11/2002', 'test'),
(645, '', '', 0, '2020-05-12 11:19:08', '', '', 'SUCCESS', '', ''),
(646, 'TX1', 'credit', 609668, '2020-05-17 05:47:05', 'Fund transfer of $609668 to Account 1236165419 Reference# TX1', '1236165419', 'SUCCESS', '04/21/2000', 'nm'),
(647, '', '', 0, '2020-05-17 06:03:56', '', '', 'SUCCESS', '', ''),
(648, 'TX1', 'credit', 404949, '2020-05-17 07:00:03', 'Fund transfer of $404949 to Account 9801817531 Reference# TX1', '9801817531', 'SUCCESS', '03/12/2013', 'tetsss'),
(649, 'TX2', 'credit', 509767, '2020-05-17 07:02:30', 'Fund transfer of $509767 to Account 9801817531 Reference# TX2', '9801817531', 'SUCCESS', '04/11/2014', 'gvbn'),
(650, 'TX3', 'credit', 1098821, '2020-05-17 07:06:02', 'Fund transfer of $1098821 to Account 9801817531 Reference# TX3', '9801817531', 'SUCCESS', '08/02/2015', 'gg'),
(651, 'TX4', 'credit', 2309799, '2020-05-17 07:14:22', 'Fund transfer of $2309799 to Account 9801817531 Reference# TX4', '9801817531', 'SUCCESS', '02/10/2016', 'bbb'),
(652, 'TX5', 'credit', 809744, '2020-05-17 14:42:08', 'Fund transfer of $809744 to Account 8997963470 Reference# TX5', '8997963470', 'SUCCESS', '02/03/2016', 'Zbx'),
(653, 'TX6', 'credit', 1408466, '2020-05-17 14:43:42', 'Fund transfer of $1408466 to Account 8997963470 Reference# TX6', '8997963470', 'SUCCESS', '10/12/2016', 'Xbc'),
(654, 'TX7', 'credit', 1608338, '2020-05-17 14:45:34', 'Fund transfer of $1608338 to Account 8997963470 Reference# TX7', '8997963470', 'SUCCESS', '10/26/2016', 'Xbc'),
(655, 'TX8', 'credit', 608384, '2020-05-17 14:47:14', 'Fund transfer of $608384 to Account 8997963470 Reference# TX8', '8997963470', 'SUCCESS', '11/03/2016', 'Bxbx'),
(656, 'TX000121', 'credit', 200, '2020-05-19 17:34:33', 'Funds Deposit of $200 credited into Account 5416588835 with Reference# TX000121', '5416588835', 'SUCCESS', '05/20/2020', 'sdrft'),
(657, 'TX122', 'credit', 865654, '2020-05-21 16:46:30', 'Wire transfer of $865654 to Account 5416588835 Reference# TX122 from Global Unity Bank.', '5416588835', 'SUCCESS', '05/21/2020', 'Did d'),
(658, 'TX123', 'credit', 423097, '2020-06-01 13:42:37', 'Fund transfer of $423097 to Account 8738488351 Reference# TX123', '8738488351', 'SUCCESS', '09/11/2013', 'tree'),
(659, 'TX124', 'debit', 380967, '2020-06-01 13:43:27', 'Fund transfer of $380967 to Account 8738488351 Reference# TX124', '8738488351', 'SUCCESS', '02/11/2017', 'srdgx'),
(660, 'TX0015625', 'debit', 41097, '2020-06-01 13:44:27', 'Debit of $41097 from Account 8738488351 with Reference# TX0015625 as PART Payments of Quarterly Sales.', '8738488351', 'SUCCESS', '05/26/2020', 'srfsf'),
(661, 'TX15626', 'credit', 1000000, '2020-06-03 13:40:22', 'Fund transfer of $1000000 to Account 1236165419 Reference# TX15626', '1236165419', 'SUCCESS', '09/09/2020', 'Vn'),
(662, '', '', 0, '2020-06-03 13:42:20', '', '', 'SUCCESS', '', ''),
(663, 'TX1', 'debit', 500, '2020-06-17 12:22:23', 'Fund transfer of $500 to Account 8738488351 Reference# TX1', '8738488351', 'SUCCESS', '06/15/2020', 'Shdb'),
(664, 'TX2', 'credit', 507, '2020-06-17 12:32:50', 'Fund transfer of $507 to Account 3438602795 Reference# TX2', '3438602795', 'SUCCESS', '05/16/2020', 'Bb'),
(665, 'TX3', 'credit', 4808556, '2020-06-19 06:52:25', 'Fund transfer of $4808556 to Account 9395102162 Reference# TX3', '9395102162', 'SUCCESS', '03/10/2016', 'Gjg'),
(666, 'TX4', 'credit', 500, '2020-07-01 04:15:17', 'Fund transfer of $500 to Account 6540906905 Reference# TX4', '6540906905', 'SUCCESS', '06/01/2020', 'Funds Deposit of $500 credited into Account 6540906905 with Reference# TX000121'),
(667, 'TX5', 'credit', 2400000, '2020-07-03 12:06:25', 'Fund transfer of $2400000 to Account 6540906905 Reference# TX5', '6540906905', 'SUCCESS', '07/03/2020', 'First transfer national Bank- Payment Reference# TX03'),
(668, 'TX6', 'credit', 300000000, '2020-07-11 08:00:51', 'Fund transfer of $300000000 to Account 1236165419 Reference# TX6', '1236165419', 'SUCCESS', '09/11/2020', 'fdgfgjvm'),
(669, 'Bank of America', 'IT', 899, '2020-07-11 08:02:12', 'TDTD', '25262728292', 'SUCCESS', '09/11/2021', 'W432522X5462'),
(670, 'TX1', 'debit', 100999800, '2020-08-03 10:58:19', 'Fund transfer of $100999800 to Account 1236165419 Reference# TX1', '1236165419', 'SUCCESS', '08/03/2020', 'yyr'),
(671, '', '', 0, '2020-08-03 10:58:56', '', '', 'SUCCESS', '', ''),
(672, 'TX1', 'credit', 487, '2020-08-28 12:08:23', 'Fund transfer of $487 to Account 3103387559 Reference# TX1', '3103387559', 'SUCCESS', '08/28/2020', 'eee'),
(673, 'TX2', 'debit', 100000000, '2020-08-31 11:44:02', 'Fund transfer of $100000000 to Account 1236165419 Reference# TX2', '1236165419', 'SUCCESS', '09/06/2001', 'hfdhf'),
(674, 'JP Morgan ', '', 0, '2020-08-31 11:45:28', '', '', 'SUCCESS', '', ''),
(675, 'TX1', 'credit', 3091672, '2020-09-01 11:24:29', 'Fund transfer of $3091672 to Account 3103387559 Reference# TX1', '3103387559', 'SUCCESS', '09/01/2020', 'DTFEN UK treasury'),
(676, 'TX2', 'credit', 3040499, '2020-12-11 07:58:38', 'Fund transfer of $3040499 to Account 6604215449 Reference# TX2', '6604215449', 'SUCCESS', '12/09/2001', 'yes'),
(677, '', '', 0, '2020-12-11 08:05:50', '', '', 'SUCCESS', '', ''),
(678, '', '', 0, '2020-12-11 08:08:34', '', '', 'SUCCESS', '', ''),
(679, 'J P Morgan ', 'IT', 8000, '2020-12-11 10:07:07', 'trae', '2029292922', 'SUCCESS', '01/12/2001', '0919191911'),
(680, 'J P Morgan Chase', 'IT', 600000, '2020-12-12 09:29:01', 'GGG', '234567890000', 'SUCCESS', '12/09/2001', 'ET976543'),
(681, 'TX1', 'credit', 20000000, '2020-12-12 09:31:01', 'Fund transfer of $20000000 to Account 6604215449 Reference# TX1', '6604215449', 'SUCCESS', '12/05/2015', 'fhg'),
(682, 'TX2', 'debit', 5000000, '2020-12-12 09:32:00', 'Fund transfer of $5000000 to Account 6604215449 Reference# TX2', '6604215449', 'SUCCESS', '03/12/2016', 'fcgvhbn'),
(683, '', '', 0, '2021-02-06 02:40:41', '', '', 'SUCCESS', '', ''),
(691, 'TX70012', 'credit', 608332, '2021-02-20 13:24:05', 'Cash Deposit of $608332 credited into Account 7041072304 with Reference# TX70012', '7041072304', 'SUCCESS', '06/12/2000', 'Jd'),
(692, 'TX70013', 'credit', 506432, '2021-02-20 16:04:40', 'Wire Transfer of $506432 credited into Account 7041072304 with Reference# TX70013', '7041072304', 'SUCCESS', '03/12/2001', 'Guv'),
(693, 'TX70014', 'credit', 863631, '2021-02-20 16:05:49', 'Cheque Deposit of $863631 paid into Account 7041072304 with Reference# TX70014', '7041072304', 'SUCCESS', '02/21/2002', 'Tt'),
(694, 'TX70015', 'debit', 20675, '2021-02-20 16:06:59', 'Withdrwal of $20675 debited from Account 7041072304 with Reference# TX70015', '7041072304', 'SUCCESS', '03/12/2003', 'Fhv'),
(695, 'TX70016', 'credit', 208361, '2021-02-20 16:08:02', 'Interest Capital of $208361 credited into Account 7041072304 with Reference# TX70016', '7041072304', 'SUCCESS', '11/02/2004', 'Hr'),
(696, 'TX70017', 'credit', 2063111, '2021-02-20 16:09:02', 'Contractual Payment(Cheque Deposit) of $2063111 credited into Account 7041072304 with Reference# TX70017', '7041072304', 'SUCCESS', '06/12/2005', 'Fh'),
(697, 'TX70018', 'credit', 910282, '2021-02-20 16:17:42', 'Returns on Investments(Hedging) worth $910282 credited into Account 7041072304 with Reference# TX70018', '7041072304', 'SUCCESS', '04/12/2006', 'Dh'),
(698, 'TX70019', 'debit', 508333, '2021-02-20 16:19:18', 'Withdrawal of $508333 debited from Account 7041072304 with Reference# TX70019', '7041072304', 'SUCCESS', '06/12/2007', 'Dbd'),
(699, 'TX70020', 'credit', 5792308, '2021-02-20 16:20:48', 'Interest Capital of $5792308 credited into Account 7041072304 with Reference# TX70020', '7041072304', 'SUCCESS', '08/11/2008', 'Fhr'),
(700, 'TX70021', 'credit', 4083757, '2021-02-20 16:23:16', 'Interest Capital of $4083757 credited into Account 7041072304 with Reference# TX70021', '7041072304', 'SUCCESS', '09/12/2009', 'Xhd'),
(701, 'TX70022', 'debit', 200861, '2021-02-20 16:25:32', 'Withdrawal of $200861 debited from Account 7041072304 with Reference# TX70022', '7041072304', 'SUCCESS', '01/02/2010', 'Dhd'),
(702, 'TX70023', 'credit', 200862, '2021-02-20 16:28:16', 'Interest Capital of $200862 credited into Account 7041072304 with Reference# TX70023', '7041072304', 'SUCCESS', '01/02/2011', 'Dhd'),
(703, 'TX70024', 'credit', 408829, '2021-02-20 16:29:06', 'Return on Investments worth $408829 credited into Account 7041072304 with Reference# TX70024', '7041072304', 'SUCCESS', '02/11/2012', 'Dhd'),
(704, 'TX70025', 'debit', 130007, '2021-02-20 16:30:16', 'Withdrawal of funds worth $130007 credited  into Account 7041072304 with Reference# TX70025', '7041072304', 'SUCCESS', '03/21/2013', 'Ud'),
(705, 'TX70026', 'credit', 400573, '2021-02-20 16:31:08', 'Return on Investments worth $400573 credited into Account 7041072304 with Reference# TX70026', '7041072304', 'SUCCESS', '05/11/2014', 'Dd'),
(706, 'TX70027', 'credit', 506432, '2021-02-20 16:33:34', 'Return on Investments worth $506432 credited into Account 7041072304 with Reference# TX70027', '7041072304', 'SUCCESS', '04/12/2015', 'T'),
(707, 'TX70028', 'credit', 506432, '2021-02-20 16:34:09', 'Return on Investments worth $506432 credited  into Account 7041072304 with Reference# TX70028', '7041072304', 'SUCCESS', '03/02/2016', 'Gug'),
(708, 'TX70029', 'credit', 506455, '2021-02-20 16:35:50', 'Interest Capital worth $506455 credited into Account 7041072304 with Reference# TX70029', '7041072304', 'SUCCESS', '02/21/2017', 'Th'),
(709, 'TX70030', 'credit', 506439, '2021-02-20 16:37:53', 'Interest Capital worth $506439 credited into Account 7041072304 with Reference# TX70030', '7041072304', 'SUCCESS', '03/12/2018', 'Fg'),
(710, 'TX70031', 'credit', 50641, '2021-02-20 16:42:26', 'Return on Investments worth $50641 credited into Account 7041072304 with Reference# TX70031', '7041072304', 'SUCCESS', '10/12/2019', 'Fg'),
(711, 'TX70032', 'credit', 1096206, '2021-02-20 16:44:54', 'Return on Investments (HEDGING) $1096206 credited into Account 7041072304 with Reference# TX70032', '7041072304', 'SUCCESS', '11/12/2019', 'Db'),
(712, 'TX70033', 'credit', 1096206, '2021-02-20 16:44:55', 'Return on Investments(HEDGING) worth $1096206 credited into Account 7041072304 with Reference# TX70033', '7041072304', 'SUCCESS', '11/12/2019', 'Db'),
(713, 'TX70034', 'credit', 506432, '2021-02-20 16:48:43', 'Interest Capital of $506432 credited into Account 7041072304 with Reference# TX70034', '7041072304', 'SUCCESS', '05/12/2020', 'Dh'),
(714, 'TX70035', 'credit', 407282, '2021-06-07 16:28:21', 'Funds worth $407282 credited into Account 1212661938 with Reference# TX70035 as Contractual Payment', '1212661938', 'SUCCESS', '09/12/1999', 'Jdjd d'),
(715, 'TX70036', 'credit', 572920, '2021-06-07 16:29:02', 'Funds worth $572920 credited into Account 1212661938 with Reference# TX70036 ', '1212661938', 'SUCCESS', '08/12/2000', 'Sjdn'),
(716, 'TX70037', 'debit', 45085, '2021-06-07 16:30:50', 'Wire Transfer of $45085 debited from Account 1212661938 with Reference# TX70037', '1212661938', 'SUCCESS', '02/11/2001', 'Ghvv');
INSERT INTO `tbl_transaction` (`id`, `tx_no`, `tx_type`, `amount`, `date`, `description`, `to_accno`, `status`, `tdate`, `comments`) VALUES
(717, 'TX70038', 'credit', 600373, '2021-06-07 16:34:28', 'Check Deposit of $600373 credited into Account 1212661938 with Reference# TX70038', '1212661938', 'SUCCESS', '10/12/2001', 'Beb'),
(718, 'TX70039', 'debit', 65008, '2021-06-07 16:35:23', 'Withdrawal of funds worth $65008 debited from Account 1212661938 with Reference# TX70039', '1212661938', 'SUCCESS', '01/12/2002', 'And'),
(719, 'TX70040', 'credit', 540962, '2021-06-07 16:40:29', 'Funds worth $540962 credited into Account 1212661938 with Reference# TX70040', '1212661938', 'SUCCESS', '06/12/2002', 'Sbd'),
(720, 'TX70041', 'credit', 462081, '2021-06-07 16:41:53', 'Check Deposit of $462081 credited into Account 1212661938 with Reference# TX70041', '1212661938', 'SUCCESS', '11/21/2002', 'Bdb'),
(721, 'TX70042', 'credit', 103562, '2021-06-07 16:42:31', 'Check deposit of $103562 credited into Account 1212661938 with Reference# TX70042', '1212661938', 'SUCCESS', '01/21/2003', 'Bs d'),
(722, 'TX70043', 'credit', 60373, '2021-06-07 16:43:09', 'Interest Capital of $60373 credited into Account 1212661938 with Reference# TX70043', '1212661938', 'SUCCESS', '05/12/2003', 'Bd d'),
(723, 'TX70044', 'credit', 824699, '2021-06-07 16:47:07', 'Interest Capital of $824699 to Account 1212661938 with Reference# TX70044', '1212661938', 'SUCCESS', '01/25/2004', 'Gv'),
(724, 'TX70045', 'debit', 80422, '2021-06-07 18:48:02', 'Wire check of $80422 debited from Account 1212661938 with Reference# TX70045', '1212661938', 'SUCCESS', '11/23/2004', 'Cv'),
(725, 'TX70046', 'credit', 309651, '2021-06-07 18:51:17', 'Funds worth $309651 credited into Account 1212661938 with Reference# TX70046', '1212661938', 'SUCCESS', '02/21/2005', 'Ve'),
(726, 'TX70047', 'credit', 708264, '2021-06-07 18:53:33', 'Return of Investments (R.O.I) worth $708264 credited into Account 1212661938 with Reference# TX70047', '1212661938', 'SUCCESS', '05/11/2005', 'V. Hh'),
(727, 'TX70048', 'credit', 509654, '2021-06-07 18:54:39', 'Return on Investments (Hedging) worth $509654 credited into Account 1212661938 with Reference# TX70048', '1212661938', 'SUCCESS', '05/21/2006', 'V.'),
(728, 'TX70049', 'debit', 50835, '2021-06-07 18:55:33', 'Wire deposit worth $50835 debited from Account 1212661938 with Reference# TX70049', '1212661938', 'SUCCESS', '02/12/2007', 'Gs s'),
(729, 'TX70050', 'credit', 754226, '2021-06-07 18:58:28', 'Cash Deposit of $754226 credited into Account 1212661938 with Reference# TX70050', '1212661938', 'SUCCESS', '03/21/2008', 'Cv'),
(730, 'TX70051', 'credit', 306421, '2021-06-07 19:17:06', 'Cash Deposit of $306421 credited into Account 1212661938 with Reference# TX70051', '1212661938', 'SUCCESS', '10/14/2008', 'V.'),
(731, 'TX70052', 'debit', 98532, '2021-06-07 19:18:23', 'Wire Transfer of $98532 debited from Account 1212661938 with Reference# TX70052', '1212661938', 'SUCCESS', '02/12/2009', 'Fc'),
(732, 'TX70053', 'credit', 252586, '2021-06-07 19:19:08', 'Hedging of funds Deposit worth $252586 credited into Account 1212661938 with Reference# TX70053', '1212661938', 'SUCCESS', '02/16/2010', 'Bd'),
(733, 'TX70054', 'credit', 452075, '2021-06-07 19:20:17', 'Funds transfer of $452075 credited into Account 1212661938 with Reference# TX70054', '1212661938', 'SUCCESS', '10/21/2011', 'V.'),
(734, 'TX70055', 'credit', 5085327, '2021-06-08 05:13:00', 'Deposit of Precious Metals worth $5085327 credited into Account 1212661938 with Reference# TX70055', '1212661938', 'SUCCESS', '03/20/2012', 'Cbc'),
(735, 'TX70056', 'debit', 402826, '2021-06-08 05:13:38', 'Check Clearance of $402826 debited from Account 1212661938 with Reference# TX70056', '1212661938', 'SUCCESS', '11/21/2012', 'Gsb'),
(736, 'TX70057', 'credit', 2518254, '2021-06-08 05:14:44', 'Deposit of Precious Metals worth $2518254 credited into Account 1212661938 with Reference# TX70057', '1212661938', 'SUCCESS', '02/12/2013', 'Cb'),
(737, 'TX70058', 'credit', 4027221, '2021-06-08 05:16:21', 'Gem Stones worth of $4027221 deposited into Account 1212661938 with Reference# TX70058', '1212661938', 'SUCCESS', '10/21/2013', 'Abs'),
(738, 'TX70059', 'credit', 5292612, '2021-06-08 05:17:10', 'Deposit of funds worth $5292612 credited into Account 1212661938 with Reference# TX70059', '1212661938', 'SUCCESS', '02/21/2014', 'And'),
(739, 'TX70060', 'debit', 70937, '2021-06-08 05:22:24', 'Cash withdrawal of $70937 debited from Account 1212661938 with Reference# TX70060', '1212661938', 'SUCCESS', '12/02/2014', 'Dd'),
(740, 'TX70061', 'debit', 38355, '2021-06-08 05:26:32', 'Wire Transfer of $38355 debited from Account 1212661938 with Reference# TX70061', '1212661938', 'SUCCESS', '03/12/2015', 'C'),
(741, 'TX70062', 'credit', 208257, '2021-06-08 05:27:18', 'Deposit of funds worth $208257 credited into Account 1212661938 with Reference# TX70062', '1212661938', 'SUCCESS', '10/21/2015', 'Dnd'),
(742, 'TX70063', 'debit', 675365, '2021-06-08 05:31:15', 'Withdrawal of $675365 debited from Account 1212661938 with Reference# TX70063', '1212661938', 'SUCCESS', '01/21/2016', 'Ghvv'),
(743, 'TX70064', 'credit', 409532, '2021-06-08 05:32:15', 'Fund transfer of $409532 credited into Account 1212661938 with Reference# TX70064', '1212661938', 'SUCCESS', '09/14/2016', 'Vb'),
(744, 'TX70065', 'credit', 386432, '2021-06-08 05:34:55', 'Check Deposit of $386432 credited into Account 1212661938 with Reference# TX70065', '1212661938', 'SUCCESS', '05/12/2017', 'Vic'),
(745, 'TX70066', 'debit', 303221, '2021-06-08 05:36:35', 'Transfer of funds worth $303221 debited from Account 1212661938 with Reference# TX70066', '1212661938', 'SUCCESS', '01/15/2018', 'Sbd'),
(746, 'TX70067', 'credit', 897252, '2021-06-08 05:38:11', 'Interest Capital of $897252 to Account 1212661938 Reference# TX70067', '1212661938', 'SUCCESS', '12/06/2018', 'Chv'),
(747, 'TX70068', 'credit', 608426, '2021-06-08 05:39:33', 'Interest Capital of $608426 credited into Account 1212661938 with Reference# TX70068', '1212661938', 'SUCCESS', '03/12/2019', 'V'),
(748, 'TX70069', 'credit', 209383, '2021-06-15 15:58:47', 'Fund transfer of $209383 to Account 8644324568 Reference# TX70069', '8644324568', 'SUCCESS', '09/12/1998', 'fsf'),
(749, 'TX70070', 'credit', 1082723, '2021-06-15 16:08:15', 'Cheque Deposit of $1082723 credited into Account 8644324568 with Reference# TX70070', '8644324568', 'SUCCESS', '01/21/1999', 'ag'),
(750, 'TX70071', 'credit', 6292827, '2021-06-15 16:10:07', 'Wire Transfer of $6292827 credited into Account 8644324568 with Reference# TX70071', '8644324568', 'SUCCESS', '05/23/1999', 'gsgs'),
(751, 'TX70072', 'debit', 192823, '2021-06-15 16:11:52', 'Withdrawal of $192823 debited from Account 8644324568 with Reference# TX70072', '8644324568', 'SUCCESS', '12/04/1999', 'aa'),
(752, 'TX70073', 'credit', 2091816, '2021-06-15 16:14:47', 'Fund transfer of $2091816 to Account 8644324568 Reference# TX70073', '8644324568', 'SUCCESS', '01/11/2000', 'aa'),
(753, 'TX70074', 'credit', 340963, '2021-06-15 16:17:35', 'Funds Deposit of $340963 credited into Account 8644324568 with Reference# TX70074', '8644324568', 'SUCCESS', '04/15/2000', 'ss'),
(754, 'TX70075', 'credit', 1097265, '2021-06-15 16:18:07', 'Contractual Payment of $1097265 credited into Account 8644324568 with Reference# TX70075', '8644324568', 'SUCCESS', '11/03/2000', 'ss'),
(755, 'TX70076', 'credit', 709595, '2021-06-15 16:18:57', 'Fund transfer of $709595 to Account 8644324568 Reference# TX70076', '8644324568', 'SUCCESS', '01/12/2001', 'ss'),
(756, 'TX70077', 'credit', 1054342, '2021-06-15 16:24:52', 'Contractual Payment of $1054342 credited   into Account 8644324568 with Reference# TX70077', '8644324568', 'SUCCESS', '04/21/2001', 'dfd'),
(757, 'TX70078', 'credit', 800271, '2021-06-15 16:30:16', 'Wire Transfer of $800271 credited  into Account 8644324568 with Reference# TX70078', '8644324568', 'SUCCESS', '09/16/2002', 'gsg'),
(758, 'TX70079', 'credit', 609393, '2021-06-15 16:59:33', 'Interest Capital of $609393 to credited into Account 8644324568 with Reference# TX70079', '8644324568', 'SUCCESS', '12/04/2002', 'aa'),
(759, 'TX70080', 'debit', 730938, '2021-06-15 17:01:05', 'Withdrawal of  funds worth $730938 debited from Account 8644324568 with Reference# TX70080', '8644324568', 'SUCCESS', '01/20/2003', 'aa'),
(760, 'TX70081', 'credit', 109283, '2021-06-15 17:01:58', 'Returns on Investments equivalent to  $109283 credited into Account 8644324568 with Reference# TX70081', '8644324568', 'SUCCESS', '06/19/2003', 'ss'),
(761, 'TX70082', 'credit', 409656, '2021-06-15 17:05:01', 'Wire Transfer of $409656 credited into Account 8644324568 with Reference# TX70082', '8644324568', 'SUCCESS', '01/22/2004', 'ss'),
(762, 'TX70083', 'debit', 209864, '2021-06-15 17:07:36', 'Cash Withdrawal of  $209864 debited from Account 8644324568 with Reference# TX70083', '8644324568', 'SUCCESS', '11/23/2004', 'dd'),
(763, 'TX70084', 'credit', 175937, '2021-06-15 17:09:56', 'Interest Capital of $175937 credited into Account 8644324568 with Reference# TX70084', '8644324568', 'SUCCESS', '01/17/2005', 'gdd'),
(764, 'TX70085', 'credit', 303423, '2021-06-15 17:16:21', 'Returns of Investments worth $303423 credited into Account 8644324568 with Reference# TX70085', '8644324568', 'SUCCESS', '08/11/2005', 'ss'),
(765, 'TX70086', 'debit', 130928, '2021-06-15 17:20:03', 'Funds worth $130928 debited from Account 8644324568 with Reference# TX70086', '8644324568', 'SUCCESS', '01/22/2006', 'faf'),
(766, 'TX70087', 'debit', 180028, '2021-06-15 17:37:07', 'Cash Withdrawal of $180028 debited from Account 8644324568 with Reference# TX70087', '8644324568', 'SUCCESS', '11/03/2006', 'aa'),
(767, 'TX70088', 'credit', 202822, '2021-06-15 17:38:35', 'Interest Capital of $202822 credited into Account 8644324568 with Reference# TX70088', '8644324568', 'SUCCESS', '01/22/2007', 'gag'),
(768, 'TX70089', 'credit', 130309, '2021-06-15 17:39:41', 'Interest Capital of $130309 credited into Account 8644324568 with Reference# TX70089', '8644324568', 'SUCCESS', '12/09/2008', 'aa'),
(769, 'TX70090', 'credit', 519392, '2021-06-15 17:40:37', 'Returns on investments(R.O.I) worth $519392 credited into Account 8644324568 with Reference# TX70090', '8644324568', 'SUCCESS', '10/13/2009', 'agg'),
(770, 'TX70091', 'credit', 171021, '2021-06-15 17:41:45', 'Wire Transfer of $171021 credited into Account 8644324568 with Reference# TX70091', '8644324568', 'SUCCESS', '09/11/2010', 'aa'),
(771, 'TX70092', 'debit', 1708987, '2021-06-15 17:42:40', 'Cash Withdrawal of $1708987 debited Account 8644324568 with Reference# TX70092', '8644324568', 'SUCCESS', '08/22/2011', 'fdv'),
(772, 'TX70093', 'debit', 648766, '2021-06-15 17:44:28', 'Withdrawal of funds worth $648766 debited from Account 8644324568 with Reference# TX70093', '8644324568', 'SUCCESS', '10/13/2012', 'ss'),
(773, 'TX70094', 'credit', 309888, '2021-06-15 17:45:50', 'Fund transfer of $309888 to Account 8644324568 Reference# TX70094', '8644324568', 'SUCCESS', '07/19/2013', 'sdsd'),
(774, 'TX70095', 'credit', 637456, '2021-06-15 17:47:53', 'Fund transfer of $637456 to Account 8644324568 Reference# TX70095', '8644324568', 'SUCCESS', '03/21/2014', 'ss'),
(775, 'TX70096', 'debit', 245987, '2021-06-15 17:50:41', 'Fund transfer of $245987 to Account 8644324568 Reference# TX70096', '8644324568', 'SUCCESS', '03/20/2015', 'sds'),
(776, 'TX70097', 'credit', 350988, '2021-06-15 17:52:50', 'Fund transfer of $350988 to Account 8644324568 Reference# TX70097', '8644324568', 'SUCCESS', '04/21/2016', 'dfd'),
(777, 'TX70098', 'credit', 1409876, '2021-06-15 17:53:47', 'Fund transfer of $1409876 to Account 8644324568 Reference# TX70098', '8644324568', 'SUCCESS', '09/23/2017', 'as'),
(778, 'TX70099', 'credit', 730976, '2021-06-15 17:56:13', 'Interest Capital of $730976 credit into  Account 8644324568 with Reference# TX70099', '8644324568', 'SUCCESS', '11/09/2018', 'sds'),
(779, 'TX70100', 'credit', 168708, '2021-06-15 17:58:38', 'Interest Capital of $168708 to Account 8644324568 with  Reference# TX70100. ', '8644324568', 'SUCCESS', '02/21/2019', 'sds'),
(780, 'TX70101', 'credit', 220821, '2021-06-15 18:01:07', 'Interest Capital of $220821 credited Account 8644324568 Reference# TX70101', '8644324568', 'SUCCESS', '04/11/2020', 'aa'),
(781, 'TX70102', 'debit', 840897, '2021-06-15 18:05:39', 'Withdrawal of funds worth $840897 debited from Account 8644324568 with Reference# TX70102', '8644324568', 'SUCCESS', '12/08/2020', 'ss'),
(782, 'TX70103', 'credit', 3500987, '2021-06-15 18:10:01', 'Sale of Building ASSETS worth $3500987 credited into Account 8644324568 with Reference# TX70103', '8644324568', 'SUCCESS', '05/26/2021', 'sd'),
(783, 'Servus Credit Union', 'IT', 750, '2021-06-16 12:12:15', 'To cover taxes, tarrifs, duties and additional costs to facilitate sale of estate properties.', '680101771766', 'SUCCESS', 'June16,2021', 'cucxcattcal or#899'),
(784, 'Servus Credit Union', 'IT', 1, '2021-06-16 13:14:33', 'Funds required to pay taxes owed, levies and fees necessary to facilitate sale of said properties.', '680101771766', 'SUCCESS', 'June16,2021', 'cucxcattcal or#899');

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
(180, 'Mr. Philip', 'Aerts', '*2625EDBE183C8610EF9729B3D6233D3AEB6BBF2E', 'Philipaerts@gmail.com', '3044456879', 'Felame', 'TRUE', 'USER', '20210220_132350.jpg', '2021-02-19 09:29:45'),
(182, 'David', 'Wells', '*02B3B7F0E4B8F7214C5FE00499D8CC65B52A2D6E', 'restricted', '+1 469 021 2456', '', 'TRUE', 'USER', '', '2021-06-07 08:57:18'),
(183, 'HENRY', 'ABERE', '*84C26EE8B961776CE04F9AA85DBAAEFF4C201191', 'Mrhenryabere@gmail.com', '+1 451 612 0023', 'Male', 'TRUE', 'USER', 'wrk1.jpg', '2021-06-15 15:40:21'),
(184, 'Testing', 'Testing', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9', 'pirloadndrews@gmail.com', '+1 300 400 3001', 'Male', 'FALSE', 'USER', '', '2021-07-06 06:04:24');

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `tbl_address`
--
ALTER TABLE `tbl_address`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=785;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
