-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 18, 2019 at 11:52 PM
-- Server version: 5.6.44-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trovaa_livedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintype_master`
--

CREATE TABLE `admintype_master` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `admintype` varchar(200) NOT NULL DEFAULT '2,user' COMMENT '2.User,3.Manager',
  `mobile` varchar(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(250) NOT NULL,
  `resetpwd_hash` varchar(250) NOT NULL,
  `manage_user_status` tinyint(4) NOT NULL,
  `manage_vender_status` tinyint(4) NOT NULL,
  `manage_categories_status` tinyint(4) NOT NULL,
  `manage_enquiries_status` tinyint(4) NOT NULL,
  `user_feedback_status` tinyint(4) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL COMMENT '0.Male , 1.Female',
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `modify_date` varchar(250) NOT NULL,
  `profile_pic` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintype_master`
--

INSERT INTO `admintype_master` (`id`, `username`, `admintype`, `mobile`, `email`, `password`, `resetpwd_hash`, `manage_user_status`, `manage_vender_status`, `manage_categories_status`, `manage_enquiries_status`, `user_feedback_status`, `dob`, `gender`, `state`, `city`, `pincode`, `status`, `modify_date`, `profile_pic`) VALUES
(8, 'Ashwini kt', '2', '9929537038', 'ashwini.kt19@gmail.com', 'MTIzNDU2', 'ddff211bab997e0dc169cf80a93f29e0', 1, 1, 1, 1, 1, '04/19/2018', '1', '15', '16', '560072', 1, '', '1523339455.jpg'),
(9, 'Rakesh', '3', '7894561235', 'rakeshgl@gmail.com', 'MTIzNDU2', 'b702dd32b4155e818d0e76dc4a88b815', 1, 1, 1, 1, 1, '04/25/2018', '0', '15', '17', '560072', 1, '', 'doc1.jpg'),
(11, 'Madhu', '3', '9845600969', 'madhu@gmail.com', 'MTIzNDU2', '', 2, 2, 2, 2, 2, '', '0', '', '', '', 1, '', 'imgpsh_fullsize.png');

-- --------------------------------------------------------

--
-- Table structure for table `admin_master`
--

CREATE TABLE `admin_master` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admintype` int(11) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `payable_value` int(11) NOT NULL DEFAULT '1000',
  `customer_profile_editable_time` varchar(100) NOT NULL,
  `merchant_profile_editable_time` varchar(100) NOT NULL,
  `status` enum('1','2','3') NOT NULL,
  `add_date` varchar(50) NOT NULL,
  `modify_date` varchar(50) NOT NULL,
  `login_lvl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_master`
--

INSERT INTO `admin_master` (`id`, `username`, `email`, `password`, `admintype`, `profile_pic`, `payable_value`, `customer_profile_editable_time`, `merchant_profile_editable_time`, `status`, `add_date`, `modify_date`, `login_lvl`) VALUES
(1, 'admin', 'admin@admin.com', 'MTIzNDU2', 1, 'user2-160x160.jpg', 1000, '1479900338', '1518419177', '1', '1479900338', '1479900338', 1),
(2, 'admin', 'dharma@admin.com', 'MTIzNDU2', 1, 'user2-160x160.jpg', 1000, '1479900338', '1518419177', '1', '1479900338', '1479900338', 2),
(3, 'admin', 'doctor@admin.com', 'MTIzNDU2', 1, 'user2-160x160.jpg', 1000, '1479900338', '1518419177', '1', '1479900338', '1479900338', 111);

-- --------------------------------------------------------

--
-- Table structure for table `ads_master`
--

CREATE TABLE `ads_master` (
  `id` int(11) NOT NULL,
  `category_name` varchar(150) NOT NULL,
  `ads_image` varchar(250) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `add_date` varchar(60) NOT NULL,
  `modify_date` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ads_master`
--

INSERT INTO `ads_master` (`id`, `category_name`, `ads_image`, `status`, `add_date`, `modify_date`) VALUES
(5, 'Spa', 'ads_logo_1558344246.png', 1, '2019-05-20 14:54', '2019-05-20 14:54'),
(6, 'Doctor', 'ads_logo_1558344224.jpg', 1, '2019-05-20 14:53', '2019-05-20 14:53'),
(7, 'Salon', 'ads_logo_1543387626.jpg', 1, '2018-11-28 12:17', '2018-11-28 12:17'),
(8, 'Restaurant', 'ads_logo_1543387639.jpg', 1, '2019-05-20 14:54', '2019-05-20 14:54');

-- --------------------------------------------------------

--
-- Table structure for table `ads_settings`
--

CREATE TABLE `ads_settings` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `start_date` varchar(50) NOT NULL,
  `end_date` varchar(50) NOT NULL,
  `start_time` varchar(11) NOT NULL,
  `end_time` varchar(11) NOT NULL,
  `days` varchar(250) NOT NULL,
  `last_update` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ads_settings`
--

INSERT INTO `ads_settings` (`id`, `vendor_id`, `cate_id`, `start_date`, `end_date`, `start_time`, `end_time`, `days`, `last_update`, `status`) VALUES
(1, 1, 1, '2018-11-28', '2021-11-28', '00:00', '23:30', 'Mon,Tue,Wed,Fri,Sat', '2019-07-03 05:46:40', 1),
(2, 2, 1, '2018-12-01', '2020-03-30', '00:30', '23:30', 'Mon,Tue,Wed,Fri,Sat', '2019-07-01 03:00:28', 1),
(3, 3, 1, '2019-01-10', '2019-01-31', '00:00', '23:30', 'Mon,Tue,Wed,Fri,Sat', '2019-06-30 10:32:02', 1),
(4, 4, 1, '2019-01-09', '2019-01-31', '00:00', '23:30', 'Mon,Tue,Wed,Fri,Sat', '2019-06-30 10:32:30', 1),
(5, 5, 1, '', '', '05:30', '05:30', 'Mon,Tue,Wed,Thur,Fri,Sat,Sun', '2019-06-30 09:58:47', 1),
(6, 8, 1, '2019-06-24', '2020-06-24', '00:00', '19:00', 'Mon,Tue,Wed,Thur,Fri,Sat', '2019-06-30 10:33:25', 1),
(7, 7, 1, '2019-06-30', '2020-01-30', '00:00', '23:30', 'Mon,Tue,Wed,Thur,Fri,Sat', '2019-06-30 10:33:04', 1),
(8, 12, 1, '2019-08-11', '2019-09-11', '08:00', '07:30', 'Mon,Tue,Wed,Thur,Fri,Sat,Sun', '2019-08-11 02:43:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` int(11) NOT NULL,
  `area_name` varchar(255) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `area_name`, `latitude`, `longitude`) VALUES
(1477, 'Whitefield', '12.9697999', '77.7499467'),
(1478, 'Aavalahalli', '13.0356797', '77.7353665'),
(1479, 'Abbigere', '13.0762712', '77.5255683'),
(1480, 'Adakamaranahalli', '13.0628291', '77.4400774'),
(1481, 'Adugodi', '12.9420036', '77.6083044'),
(1482, 'AECS Layout', '12.9629354', '77.7122996'),
(1483, 'Akshayanagar', '12.8689407', '77.6162491'),
(1484, 'Amrutha Halli', '13.065735', '77.600713'),
(1485, 'Anagalapura', '13.0696902', '77.6727343'),
(1486, 'Ananth Nagar', '12.8389444', '77.6898209'),
(1487, 'Andrahalli', '13.0097181', '77.4783959'),
(1488, 'Anekal', '12.7105259', '77.6911295'),
(1489, 'Anjanapura', '12.8616498', '77.5616339'),
(1490, 'Annapurneshwari Nagar', '12.9703346', '77.4942715'),
(1491, 'Arasanakunte', '13.0804669', '77.4053874'),
(1492, 'Arekere', '12.8875381', '77.5970094'),
(1493, 'Ashirvad Colony', '13.0274175', '77.6588461'),
(1494, 'Ashok Nagar', '12.970872', '77.6047905'),
(1495, 'Attibele', '12.7807124', '77.7709558'),
(1496, 'Attibele - Anekal Road', '12.7379428', '77.7343688'),
(1497, 'Attiguppe', '12.9597914', '77.5289797'),
(1498, 'Azad Nagar', '12.9553875', '77.554777'),
(1499, 'B Narayanapura', '12.9925237', '77.6808128'),
(1500, 'Babusa Palya', '13.0228229', '77.6520917'),
(1501, 'Bagalakunte', '13.0526818', '77.4954718'),
(1502, 'Bagaluru', '13.1325768', '77.6672134'),
(1503, 'Bagepalli', '13.784605', '77.7981834'),
(1504, 'Baiyyappanahalli', '13.0719766', '77.7201102'),
(1505, 'Balagere', '12.939467', '77.7272471'),
(1506, 'Ballur', '12.754579', '77.7870155'),
(1507, 'Banashankari', '12.9254533', '77.546757'),
(1508, 'Banashankari 3rd Stage', '12.9345271', '77.5435215'),
(1509, 'Banashankari 5th Stage', '12.8981667', '77.5540605'),
(1510, 'Banaswadi', '13.0119571', '77.6471307'),
(1511, 'Bannerghatta', '12.8052456', '77.5787804'),
(1512, 'Bannerghatta Jigani Road', '12.7792055', '77.643652'),
(1513, 'Bannerghatta Road', '12.7942632', '77.6208026'),
(1514, 'Bapuji Nagar', '12.95678', '77.5397293'),
(1515, 'Basapura', '12.864781', '77.650953'),
(1516, 'Basavanagar', '12.9670863', '77.6808128'),
(1517, 'Basavanagudi', '12.9421166', '77.5753609'),
(1518, 'Basavanna Nagar', '12.9866294', '77.7201699'),
(1519, 'Basaveshwara Nagar', '12.9886182', '77.5382864'),
(1520, 'Battarahalli', '13.0243273', '77.7077906'),
(1521, 'Begur', '13.1823986', '77.6804549'),
(1522, 'Begur Road', '12.8890191', '77.6256512'),
(1523, 'Belathur', '13.0072468', '77.7523608'),
(1524, 'Belatur', '13.0072468', '77.7523608'),
(1525, 'Bellandur', '12.9260308', '77.6762463'),
(1526, 'Bellandur Outer Ring Road', '12.9273756', '77.6792764'),
(1527, 'Bellary Road', '13.0905792', '77.5966305'),
(1528, 'BEML Layout', '12.959641', '77.717308'),
(1529, 'BEML Layout Raja Rajeshwari Nagar', '12.9164134', '77.5225294'),
(1530, 'Bennigana Halli', '12.9966659', '77.6539609'),
(1531, 'Benson Town', '13.004155', '77.6045925'),
(1532, 'Bettahalasur', '13.1615965', '77.610883'),
(1533, 'Bhaktharahalli', '13.0216762', '77.795625'),
(1534, 'Bhoganhalli', '12.9256173', '77.700203'),
(1535, 'Bhoopasandra', '13.0435641', '77.5812849'),
(1536, 'Bhovi Palya', '12.8500663', '77.6851069'),
(1537, 'Bhuvaneshwari Nagar', '13.0545047', '77.6036145'),
(1538, 'Bidadi', '12.7984219', '77.3872174'),
(1539, 'Bidrahalli', '13.0613596', '77.7158771'),
(1540, 'Bikasipura', '12.8921062', '77.5595617'),
(1541, 'Bikkanahalli', '12.8368056', '77.7593143'),
(1542, 'Bilekahalli', '13.0195677', '77.5968131'),
(1543, 'Bileshivale', '13.0584131', '77.6698228'),
(1544, 'Binny Pete', '12.967566', '77.5583595'),
(1545, 'Bommanahalli', '12.8983601', '77.6179465'),
(1546, 'Bommasandra', '12.8168473', '77.6989492'),
(1547, 'Bommenahalli', '13.0732359', '77.7423469'),
(1548, 'Boyalahalli', '13.1664223', '77.6793813'),
(1549, 'Brigade Road', '12.9709728', '77.6068881'),
(1550, 'Brookefield', '12.9712301', '77.7148376'),
(1551, 'BTM Layout', '12.9165757', '77.6101163'),
(1552, 'Budigere', '13.1342839', '77.7466387'),
(1553, 'Budigere Road', '13.0576936', '77.7439816'),
(1554, 'Budihal', '13.1323602', '77.3597194'),
(1555, 'Byatarayanapura', '13.0597892', '77.5933367'),
(1556, 'Byrathi', '13.0528869', '77.6501486'),
(1557, 'Cambridge Layout', '12.9725546', '77.6253315'),
(1558, 'Carmelaram', '12.9061527', '77.7065754'),
(1559, 'Chadalapura', '13.2523481', '77.8017021'),
(1560, 'Chamarajpet', '12.9570097', '77.5634409'),
(1561, 'Chamundi Nagar', '13.0317433', '77.5999083'),
(1562, 'Chandapura', '12.8004945', '77.713612'),
(1563, 'Chandapura Anekal Road', '12.7592027', '77.7036916'),
(1564, 'Chandra Layout', '12.9538653', '77.5232461'),
(1565, 'Chansandra', '12.9795172', '77.7638042'),
(1566, 'Chelekare', '13.0254021', '77.6443056'),
(1567, 'Chickpet', '12.9709232', '77.5763139'),
(1568, 'Chikbanavara', '13.0796477', '77.5046649'),
(1569, 'Chikka Banaswadi', '13.0059894', '77.6468515'),
(1570, 'Chikka Tirupathi', '12.8967455', '77.8667416'),
(1571, 'Chikkaballapur', '13.432366', '77.7280396'),
(1572, 'Chikkabasavanapura', '13.0127356', '77.7044287'),
(1573, 'Chikkabellandur', '12.9088733', '77.7056981'),
(1574, 'Chikkabidarakallu', '13.0449861', '77.489181'),
(1575, 'Chikkagubbi', '13.0819081', '77.6579077'),
(1576, 'Chikkajala', '13.1715223', '77.6356486'),
(1577, 'Chikkakannalli', '12.8941836', '77.7053587'),
(1578, 'Chikkalasandra', '12.9120815', '77.5462476'),
(1579, 'Chikkanahalli', '12.7871594', '77.7881176'),
(1580, 'Chikkathoguru', '12.8607605', '77.6490192'),
(1581, 'Chinnapa Garden', '13.0029434', '77.6034894'),
(1582, 'Chinnapanna Halli', '12.9670265', '77.7047758'),
(1583, 'Chintamani', '13.4019689', '78.0551384'),
(1584, 'Chokkanahalli', '13.0856954', '77.6301154'),
(1585, 'Cholanayakanahalli', '13.0358453', '77.5970433'),
(1586, 'Choodasandra', '12.8836788', '77.6793813'),
(1587, 'Commercial Street', '12.9821895', '77.6083485'),
(1588, 'Cooke Town', '13.0031678', '77.6228252'),
(1589, 'Cottonpete', '12.9670753', '77.5654657'),
(1590, 'Cox Town', '12.9954659', '77.6234053'),
(1591, 'CQAL Layout', '13.0631302', '77.583126'),
(1592, 'Craig Park Layout', '12.9717372', '77.6156642'),
(1593, 'Cunningham Road', '12.9876915', '77.5944579'),
(1594, 'CV Raman Nagar', '12.9854542', '77.6639248'),
(1595, 'Dabaspete', '13.2297571', '77.2433891'),
(1596, 'Dasarahalli Hebbal', '13.0579453', '77.6048316'),
(1597, 'Dasarahalli Main Road', '13.0551668', '77.6023865'),
(1598, 'Dayananda Nagar', '12.9890326', '77.5640913'),
(1599, 'Defence Colony - Bagalagunte', '13.0540077', '77.5053269'),
(1600, 'Devanahalli', '13.1507726', '77.7088114'),
(1601, 'Devanahalli Road', '13.2067886', '77.6338688'),
(1602, 'Devarachikkanahalli', '12.8834305', '77.6189388'),
(1603, 'Devasthanagalu', '12.9428958', '77.7366242'),
(1604, 'Devinagar', '13.052301', '77.571972'),
(1605, 'Dodda Aalada Mara Road', '12.90939', '77.3957798'),
(1606, 'Dodda Banasvadi', '13.0159203', '77.6528966'),
(1607, 'Doddaballapur', '13.2957137', '77.5363908'),
(1608, 'Doddaballapur Road', '13.1995289', '77.5615004'),
(1609, 'Doddabele', '12.8867107', '77.4773674'),
(1610, 'Doddabommasandra', '13.0631929', '77.5633748'),
(1611, 'Doddakallasandra', '12.8806617', '77.5575804'),
(1612, 'Doddakammanahalli', '12.8502874', '77.6006245'),
(1613, 'Doddakannalli', '12.9040772', '77.7029137'),
(1614, 'Doddathoguru', '12.8500218', '77.6542771'),
(1615, 'Doddenahalli', '13.0943429', '77.6851406'),
(1616, 'Doddenakundi', '12.9720888', '77.694364'),
(1617, 'Dodsworth Layout', '12.9729122', '77.7437775'),
(1618, 'Dollars Colony', '13.041526', '77.5683899'),
(1619, 'Domlur', '13.0377347', '77.6288279'),
(1620, 'Dommasandra', '12.8812814', '77.7480692'),
(1621, 'Donnenahalli', '12.884943', '77.3826845'),
(1622, 'Dooravani Nagar', '13.0071755', '77.674196'),
(1623, 'Ejipura', '12.9385333', '77.6308174'),
(1624, 'Electronic City Phase I', '12.8411741', '77.6643171'),
(1625, 'Electronic City Phase II', '12.852932', '77.678469'),
(1626, 'Essel Gardens', '13.0545164', '77.6667899'),
(1627, 'Frazer Town', '12.9971503', '77.6142558'),
(1628, 'Ganapathihalli', '12.9168231', '77.3999054'),
(1629, 'Gandhi Nagar', '12.9791734', '77.5770467'),
(1630, 'Ganga Nagar', '13.0266605', '77.590791'),
(1631, 'Garden Layout', '12.908942', '77.6464534'),
(1632, 'Garudachar Palya', '12.9878279', '77.7008509'),
(1633, 'Garvebhavi Palya', '12.8957938', '77.6360226'),
(1634, 'Gattahalli', '12.8683625', '77.7029183'),
(1635, 'Girinagar', '12.9420948', '77.5463577'),
(1636, 'GM Palya', '12.8552384', '77.5868906'),
(1637, 'Gollahalli', '13.1515617', '77.7250734'),
(1638, 'Gottigere', '12.8552384', '77.5868906'),
(1639, 'Gubalala', '12.8870638', '77.5433122'),
(1640, 'Gunjur', '12.9212977', '77.7341073'),
(1641, 'Gunjur Mugalur Road', '12.9109777', '77.7802374'),
(1642, 'Guttahalli', '12.9411453', '77.5247696'),
(1643, 'HAL Layout', '12.8869529', '77.6443056'),
(1644, 'HAL Layout2', '12.8899366', '77.6448746'),
(1645, 'Hancharahalli', '13.0938504', '77.7505527'),
(1646, 'Hanumantha Nagar', '12.9425468', '77.5625781'),
(1647, 'Haragadde', '12.7637802', '77.6507489'),
(1648, 'Haralur Road', '12.9043297', '77.6622041'),
(1649, 'Harlur', '12.8998046', '77.6628428'),
(1650, 'Harohalli', '12.855506', '77.7248801'),
(1651, 'Haudin Road', '12.9756403', '77.618576'),
(1652, 'HBR Layout', '13.0377347', '77.6288279'),
(1653, 'Hebbal', '13.0357695', '77.5970222'),
(1654, 'Hebbal Kempapura', '13.0529125', '77.6014859'),
(1655, 'Hegde Nagar', '13.0724417', '77.6323623'),
(1656, 'Hennur', '13.0345848', '77.6368664'),
(1657, 'Hennur Road', '13.038071', '77.6480753'),
(1658, 'Hesaraghatta', '13.0850533', '77.5484437'),
(1659, 'HMT Layout', '13.0803898', '77.5608672'),
(1660, 'Hombegowda Nagar', '12.9375448', '77.5948946'),
(1661, 'Hongasandra', '12.8942722', '77.6289517'),
(1662, 'Hoodi', '12.9922145', '77.7159001'),
(1663, 'Horamavu', '13.0250726', '77.659665'),
(1664, 'Horamavu Agara', '13.0411068', '77.6622027'),
(1665, 'Hosa Road', '12.8903233', '77.6733203'),
(1666, 'Hosakerehalli', '12.9163636', '77.5361462'),
(1667, 'Hosapalaya', '12.9053013', '77.4499778'),
(1668, 'Hoskote', '13.0730023', '77.7966975'),
(1669, 'Hoskote Malur Road', '13.0434126', '77.8705657'),
(1670, 'Hosur Road', '12.8539203', '77.6660725'),
(1671, 'HRBR Layout', '13.0191445', '77.6464534'),
(1672, 'HSR Layout', '12.908136', '77.647608'),
(1673, 'HSR Layout Sector 1', '12.9175337', '77.6504572'),
(1674, 'HSR Layout Sector 2', '12.908942', '77.6464534'),
(1675, 'HSR Layout Sector 3', '12.9079567', '77.640957'),
(1676, 'HSR Layout Sector 4', '12.9160035', '77.6426789'),
(1677, 'HSR Layout Sector 5', '12.9173071', '77.6367879'),
(1678, 'HSR Layout Sector 6', '12.9137705', '77.6292697'),
(1679, 'HSR Layout Sector 7', '12.9083955', '77.6349979'),
(1680, 'Hulimavu', '12.8789001', '77.6089869'),
(1681, 'Hullahalli', '12.8263048', '77.6156107'),
(1682, 'Huskur', '13.0611209', '77.7552218'),
(1683, 'Huttanahalli', '13.1653704', '77.6499525'),
(1684, 'Immadihalli', '12.9650186', '77.7595472'),
(1685, 'Indira Nagar', '12.9718915', '77.6411545'),
(1686, 'Infantry Road', '12.9817379', '77.5998225'),
(1687, 'ISRO Layout', '12.8984834', '77.5590645'),
(1688, 'ITPL Road', '12.9715987', '77.5945627'),
(1689, 'IVC Road', '13.0724878', '77.5716118'),
(1690, 'Jagadish Nagar', '12.9702178', '77.6646901'),
(1691, 'Jagajeevanram Nagar', '12.9656187', '77.5506761'),
(1692, 'Jakkasandra', '12.9233948', '77.6385779'),
(1693, 'Jakkur', '13.0631411', '77.6206769'),
(1694, 'Jakkuru Layout', '13.0711168', '77.5998704'),
(1695, 'Jalahalli Cross', '13.0396444', '77.5182195'),
(1696, 'Jalahalli East', '13.0699231', '77.5448599'),
(1697, 'Jalahalli West', '13.0612203', '77.5192657'),
(1698, 'Jaya Chamarajendra Nagar', '13.0081816', '77.5948946'),
(1699, 'Jayamahal', '12.9998698', '77.5950525'),
(1700, 'Jayanagar', '12.9250074', '77.5938028'),
(1701, 'Jeevanbheema Nagar', '12.9628593', '77.6595082'),
(1702, 'Jigani', '12.8011396', '77.6618096'),
(1703, 'Jnana Ganga Nagar', '12.9545241', '77.4968175'),
(1704, 'JP Nagar', '12.8222466', '77.7838274'),
(1705, 'JP Nagar Phase 1', '12.9118374', '77.579495'),
(1706, 'JP Nagar Phase 2', '2.914776', '77.588259'),
(1707, 'JP Nagar Phase 3', '12.9122238', '77.5923219'),
(1708, 'JP Nagar Phase 4', '12.9043079', '77.5984654'),
(1709, 'JP Nagar Phase 5', '12.903517', '77.5920295'),
(1710, 'JP Nagar Phase 6', '12.9000069', '77.5777031'),
(1711, 'JP Nagar Phase 7', '12.8890015', '77.573385'),
(1712, 'JP Nagar Phase 8', '12.8741077', '77.5791729'),
(1713, 'JP Nagar Phase 9', '12.9033666', '77.5808787'),
(1714, 'K Channasandra', '13.040565', '77.6776466'),
(1715, 'K R Puram', '13.0040167', '77.6877765'),
(1716, 'Kacharakanahalli', '13.0156289', '77.6321339'),
(1717, 'Kadabagere', '12.9968854', '77.4331027'),
(1718, 'Kadubeesanahalli', '12.9394137', '77.6952031'),
(1719, 'Kadugodi', '12.9908404', '77.7607805'),
(1720, 'Kadugondanahalli', '13.0186924', '77.6186204'),
(1721, 'Kadusonnappanahalli', '13.097366', '77.6624686'),
(1722, 'Kaggadasapura', '12.9752911', '77.6750869'),
(1723, 'Kaggalipura', '12.8001467', '77.5085047'),
(1724, 'kaikondrahalli', '12.9127307', '77.6873868'),
(1725, 'Kalasipalayam', '12.9594549', '77.5805685'),
(1726, 'Kalena Agrahara', '12.8710738', '77.5934927'),
(1727, 'Kalkere', '13.0334934', '77.673888'),
(1728, 'Kallumantapa', '13.0190912', '77.6600552'),
(1729, 'Kalyan Nagar', '13.0280047', '77.6399711'),
(1730, 'Kamaksipalya', '12.9886819', '77.5270578'),
(1731, 'Kamala Nagar', '12.9886182', '77.5382864'),
(1732, 'Kamanahalli', '12.9079572', '77.797055'),
(1733, 'Kammanahalli', '13.0159044', '77.6378619'),
(1734, 'Kammasandra', '12.834002', '77.688267'),
(1735, 'Kammasandra Agrahara', '12.7393392', '77.7008509'),
(1736, 'Kanaka Nagar', '13.0341748', '77.6063541'),
(1737, 'Kanakapura', '12.5462442', '77.4198823'),
(1738, 'Kanakapura Road', '12.8462576', '77.5203847'),
(1739, 'Kannamangala', '13.2159595', '77.6569104'),
(1740, 'Kartik Nagar', '12.9771994', '77.7018941'),
(1741, 'Karuna Nagar', '12.8434636', '77.650033'),
(1742, 'Kasavanahalli', '12.9066841', '77.6757011'),
(1743, 'Kasturi Nagar', '13.0060924', '77.6594498'),
(1744, 'Kathriguppe', '12.9293653', '77.5569265'),
(1745, 'Kattigenahalli', '13.1215607', '77.6211888'),
(1746, 'Kaval Byrasandra', '13.0230425', '77.6102985'),
(1747, 'Kempapura', '13.0961343', '77.4995922'),
(1748, 'Kempegowda Nagar', '12.9473279', '77.5633748'),
(1749, 'Kengeri', '12.899623', '77.4826976'),
(1750, 'Kengeri Satellite Town', '12.9230523', '77.4846519'),
(1751, 'Kithiganur', '13.0384626', '77.7060037'),
(1752, 'Kodathi', '12.8882398', '77.7162622'),
(1753, 'Kodichikkanahalli', '12.8953449', '77.6150369'),
(1754, 'Kodigehalli', '12.9715987', '77.5945627'),
(1755, 'Kodigehalli - KR Puram', '13.0023713', '77.7264001'),
(1756, 'Kodihalli', '12.9611228', '77.6472466'),
(1757, 'Kodipur', '12.9090978', '77.5318463'),
(1758, 'Kogilu', '13.1012065', '77.6125498'),
(1759, 'Kolar-Chikkaballapur Road', '13.2071958', '77.9889793'),
(1760, 'Kommaghatta', '12.9213707', '77.4644607'),
(1761, 'Konanakunte', '12.8857037', '77.566548'),
(1762, 'Koppa', '12.7945296', '77.614948'),
(1763, 'Koralur', '12.9902949', '77.7823973'),
(1764, 'Koramangala', '12.8222466', '77.7838274'),
(1765, 'Kothanoor', '13.0551956', '77.6422206'),
(1766, 'Kothanur', '13.055196', '77.642221'),
(1767, 'Kudlu', '12.8899504', '77.648101'),
(1768, 'Kudlu Gate', '12.890984', '77.6400098'),
(1769, 'Kumaraswamy Layout', '12.9037594', '77.5618439'),
(1770, 'Kumbalgodu', '12.8780608', '77.4443807'),
(1771, 'Kundalahalli', '12.9689968', '77.7208853'),
(1772, 'Kuthaganahalli', '12.8920473', '77.7966975'),
(1773, 'Laggere', '13.0097647', '77.5253962'),
(1774, 'Lake City', '12.8997743', '77.6170964'),
(1775, 'Lakshmamma Layout', '13.0134236', '77.6555729'),
(1776, 'lal bagh', '12.9507432', '77.5847773'),
(1777, 'Langford Road', '12.9606421', '77.6008147'),
(1778, 'Langford Town', '12.95635', '77.604984'),
(1779, 'Lavelle Road', '12.9711522', '77.5978612'),
(1780, 'LB Shastri Nagar', '12.9670714', '77.6704859'),
(1781, 'Lingadheeranahalli', '12.8824852', '77.5361462'),
(1782, 'Lingarajapuram', '13.008365', '77.630638'),
(1783, 'Madhava Nagar', '12.9854856', '77.5784195'),
(1784, 'Madiwala', '12.9226373', '77.6174442'),
(1785, 'Magadi Road', '12.9869245', '77.4762076'),
(1786, 'Mahadevapura', '12.9912802', '77.687367'),
(1787, 'Mahalakshmi Layout', '13.0145937', '77.5514047'),
(1788, 'Majestic', '12.9766637', '77.5712556'),
(1789, 'Mallathahalli', '12.9610894', '77.4974416'),
(1790, 'Malleshpalya', '12.9756762', '77.6778473'),
(1791, 'Malleshwaram', '13.0030624', '77.5642928'),
(1792, 'Malur-Hosur Road', '12.8588908', '77.8761141'),
(1793, 'Marathahalli', '12.9591722', '77.697419'),
(1794, 'Marathahalli ORR', '12.9577617', '77.7011748'),
(1795, 'Marathahalli-Sarjapur Outer Ring Road', '12.9326886', '77.6880384'),
(1796, 'Margondanahalli', '13.037339', '77.6927701'),
(1797, 'Maruthi Nagar', '13.0488712', '77.5741212'),
(1798, 'Maruthi Nagar (Yelahanka)', '13.1078395', '77.6092188'),
(1799, 'Maruthi Sevanagar', '13.0019125', '77.6322142'),
(1800, 'Mathikere', '13.0334194', '77.5639761'),
(1801, 'Medihalli', '12.7126142', '77.6722239'),
(1802, 'Meenakunte', '13.1865647', '77.6278377'),
(1803, 'MG Road', '12.972637', '77.6195846'),
(1804, 'Mico Layout', '12.9128039', '77.6043174'),
(1805, 'Millers Road', '12.989323', '77.5925454'),
(1806, 'MS Palya', '13.0814594', '77.5483289'),
(1807, 'Munireddy Layout', '12.8844898', '77.5558518'),
(1808, 'Munireddypalya', '13.0101977', '77.5927458'),
(1809, 'Munnekollal', '12.9499109', '77.7117912'),
(1810, 'Murugeshpalya', '12.9613139', '77.656118'),
(1811, 'Mysore Road', '12.9135102', '77.4873951'),
(1812, 'Nagadevanahalli', '12.9421942', '77.4906245'),
(1813, 'Nagarbhavi', '12.9599448', '77.5082833'),
(1814, 'Nagarbhavi Circle', '12.9579711', '77.5204372'),
(1815, 'Nagasandra', '13.0431638', '77.5003091'),
(1816, 'Nagavara', '13.0422567', '77.6135523'),
(1817, 'Nagondanahalli', '12.971241', '77.767888'),
(1818, 'Nallurhalli', '12.9704803', '77.7329131'),
(1819, 'Nandi Hills', '13.19613517', '77.63000662'),
(1820, 'Nandini Layout', '13.0159906', '77.5338233'),
(1821, 'Nanjappa Garden', '12.81336', '77.586266'),
(1822, 'Narasapura', '13.1091865', '77.4630265'),
(1823, 'National Highway 207', '12.9861405', '77.7809521'),
(1824, 'Nayanda Halli', '12.9411453', '77.5247696'),
(1825, 'Neeladri Nagar', '12.8412536', '77.6446595'),
(1826, 'Neelasandra', '12.9662156', '77.6067998'),
(1827, 'Nehru Nagar', '13.0902817', '77.6025302'),
(1828, 'Nelamangala', '13.0874193', '77.4110064'),
(1829, 'New BEL Road', '13.0302337', '77.5705737'),
(1830, 'New Thippasandra', '12.9717571', '77.6551929'),
(1831, 'Nobo Nagar', '12.8680604', '77.595969'),
(1832, 'NRI Layout', '13.0321038', '77.6808128'),
(1833, 'Off Sarjapur road', '12.9048144', '77.6749883'),
(1834, 'Old Airport Road', '12.9548472', '77.684914'),
(1835, 'Old Madras Road', '12.9869094', '77.6479666'),
(1836, 'OMBR Layout', '13.0075666', '77.6504664'),
(1837, 'Outer Ring Road', '13.0279353', '77.6321671'),
(1838, 'Padmanabha Nagar', '12.9155691', '77.5567733'),
(1839, 'Pai Layout', '12.9943266', '77.666818'),
(1840, 'Palace Road', '12.9849066', '77.5882383'),
(1841, 'Panathur', '12.9355734', '77.7057495'),
(1842, 'Panduranga Nagar', '12.8961381', '77.5962816'),
(1843, 'Pattandur Agrahara', '12.9825102', '77.7379943'),
(1844, 'Peenya', '13.0285133', '77.5196763'),
(1845, 'Prashanth Nagar', '12.9790324', '77.532563'),
(1846, 'R.K. Hegde Nagar', '13.0724417', '77.6323623'),
(1847, 'Race Course Road', '12.9838758', '77.5815784'),
(1848, 'Rachenahalli', '13.0615195', '77.6163803'),
(1849, 'Ragavendra Nagar', '13.01152', '77.4888388'),
(1850, 'Raghavendra Colony', '12.9551303', '77.5640913'),
(1851, 'Raja Rajeshwari Nagar', '12.9242199', '77.5191195'),
(1852, 'Rajaji Nagar', '12.9048022', '77.6821069'),
(1853, 'Rajanukunte', '13.1870068', '77.5501957'),
(1854, 'Rajiv Gandhi Nagar', '13.0686087', '77.5781225'),
(1855, 'Ramagondanahalli', '12.9558171', '77.7409162'),
(1856, 'Ramamurthy Nagar', '13.0084887', '77.6737028'),
(1857, 'Ramohalli', '12.9051692', '77.4214278'),
(1858, 'Rayasandra', '12.8623824', '77.6757906'),
(1859, 'Residency Road', '12.9705894', '77.6041179'),
(1860, 'Rest House Road', '12.9728419', '77.6059198'),
(1861, 'Richard\'s Park', '13.0033753', '77.6193151'),
(1862, 'Richards Town', '13.0063217', '77.614948'),
(1863, 'Richmond Road', '12.9666338', '77.608655'),
(1864, 'Richmond Town', '12.9633823', '77.6034894'),
(1865, 'RMV', '13.0417756', '77.579657'),
(1866, 'RMV 2nd Stage', '13.0422174', '77.5700444'),
(1867, 'RMV Extension', '13.0440974', '77.5777031'),
(1868, 'Roopena Agrahara', '12.9106725', '77.6235413'),
(1869, 'RT Nagar', '13.0195677', '77.5968131'),
(1870, 'S.Medihalli', '12.8222466', '77.7838274'),
(1871, 'Sadashiva Nagar', '13.0068182', '77.5812849'),
(1872, 'Sadduguntepalya', '12.9411453', '77.5247696'),
(1873, 'Sahakara Nagar', '13.0623425', '77.5871032'),
(1874, 'Sampangi Rama Nagar', '13.0563231', '77.6332079'),
(1875, 'Sampigehalli', '13.0803805', '77.620808'),
(1876, 'Sanjay Nagar', '13.0364641', '77.5767631'),
(1877, 'Sankey Road', '12.9997236', '77.584131'),
(1878, 'Sarjapur', '12.8549222', '77.7881176'),
(1879, 'Sarjapur Attibele Road', '12.8511016', '77.7824013'),
(1880, 'Sarjapur Bagalur Road', '12.8480176', '77.8273777'),
(1881, 'Sarjapur Road', '12.8222466', '77.7838274'),
(1882, 'Seegehalli', '13.0121011', '77.7652346'),
(1883, 'Seenappa Layout', '12.8966394', '77.6170825'),
(1884, 'Seshadripuram', '12.9935334', '77.5787401'),
(1885, 'Shankarapura', '12.8607605', '77.6490192'),
(1886, 'Shanthala Nagar', '12.9717208', '77.6006245'),
(1887, 'Shanthi Nagar', '12.9569472', '77.5992703'),
(1888, 'Shanthi Pura', '12.8485869', '77.6836756'),
(1889, 'Shettihalli', '13.058378', '77.5180437'),
(1890, 'Shigehalli', '13.009648', '77.7620482'),
(1891, 'Shivaji Nagar', '12.9856503', '77.6056927'),
(1892, 'Siddapura', '12.9566734', '77.7339993'),
(1893, 'Sidlaghatta', '13.3936652', '77.8653126'),
(1894, 'Silk Board', '12.9176544', '77.6233421'),
(1895, 'Silver Springs Layout', '12.9517671', '77.7151616'),
(1896, 'Singasandra', '12.8801665', '77.6460458'),
(1897, 'SMV Layout', '12.9307172', '77.4749013'),
(1898, 'Solur', '13.0701252', '77.244826'),
(1899, 'Somashetti Halli', '13.0847831', '77.5132117'),
(1900, 'Sompura', '12.8695823', '77.7695255'),
(1901, 'Sonnenahalli', '13.0150482', '77.7380549'),
(1902, 'Soukya Road', '12.9924594', '77.8068603'),
(1903, 'Soundarya Layout', '13.0654332', '77.4948136'),
(1904, 'Srinagar', '12.9467756', '77.5519109'),
(1905, 'Srinivasa Nagar', '12.9356162', '77.554777'),
(1906, 'Srirampura', '12.995099', '77.5658649'),
(1907, 'St. Johns Road', '12.9844772', '77.6143592'),
(1908, 'Subramanyapura', '12.8964518', '77.5406717'),
(1909, 'Sudhama Nagar', '12.9591024', '77.5867915'),
(1910, 'Sunkadakatte', '12.9919691', '77.5071806'),
(1911, 'Suryanagar', '12.975954', '77.545422'),
(1912, 'T Dasarahalli', '13.0435419', '77.5123791'),
(1913, 'Talaghattapura', '12.8690867', '77.534158'),
(1914, 'Tavarekere-BTM', '12.9218249', '77.6094135'),
(1915, 'TC Palya Road', '12.9715987', '77.5945627'),
(1916, 'Teacher\'s Colony', '12.9204334', '77.6357139'),
(1917, 'Thanisandra', '13.0568653', '77.6235264'),
(1918, 'Thanisandra Main Road', '13.0708072', '77.6335973'),
(1919, 'Tharaballi', '12.9963681', '77.8435176'),
(1920, 'Tharabanahalli', '13.1037041', '77.4809523'),
(1921, 'Thavarekere-Magadi Road', '12.9665345', '77.4016987'),
(1922, 'Thippasandra', '12.9123424', '77.7529293'),
(1923, 'Thubarahalli', '12.9520393', '77.7208853'),
(1924, 'Thurahalli', '12.8816584', '77.5189458'),
(1925, 'Tilak Nagar', '12.9249995', '77.5986587'),
(1926, 'Tippenahalli', '13.0265719', '77.4788014'),
(1927, 'Tumkur Road', '13.058606', '77.4672816'),
(1928, 'Ullal', '12.9600037', '77.4759795'),
(1929, 'Ulsoor', '12.9817147', '77.6285585'),
(1930, 'Uttarahalli', '12.9069823', '77.552059'),
(1931, 'Uttarahalli Main Road', '12.9040861', '77.5257479'),
(1932, 'Vaderahalli', '13.0958692', '77.5375794'),
(1933, 'Varthur', '12.9388787', '77.7412047'),
(1934, 'Varthur Road', '12.9559607', '77.7132207'),
(1935, 'Vasanth Nagar', '12.9910869', '77.5920295'),
(1936, 'Vasanthapura', '12.8942296', '77.5518667'),
(1937, 'Venkatagiri Kote', '13.3273361', '77.7334051'),
(1938, 'Venkatapura', '12.9199543', '77.6256895'),
(1939, 'Venkateshpuram', '13.0143362', '77.6199608'),
(1940, 'Victoria Layout', '12.9667581', '77.614948'),
(1941, 'Vidyaranyapura', '13.0857908', '77.556098'),
(1942, 'Vignana Nagar', '12.9729573', '77.6774528'),
(1943, 'Vijaya Bank Colony', '12.8902208', '77.6092188'),
(1944, 'Vijayanagar', '12.9719161', '77.5298856'),
(1945, 'Vijaypura', '13.2955371', '77.8009872'),
(1946, 'Vinayaka Layout', '12.9687095', '77.7520032'),
(1947, 'Virupakshapura', '13.0624973', '77.570572'),
(1948, 'Vishweshwaraiah Layout', '12.9639778', '77.4972874'),
(1949, 'Vittal Mallya Road', '12.9715787', '77.5953184'),
(1950, 'Vittal Nagar', '12.9024018', '77.5540605'),
(1951, 'Viveka Nagar', '12.9544874', '77.6190723'),
(1952, 'Weavers Colony', '12.8445625', '77.5841502'),
(1953, 'Wheeler Road', '12.9959813', '77.6173167'),
(1954, 'Whitefield Road', '12.9907483', '77.7220513'),
(1955, 'Williams Town', '13.0203878', '77.794615'),
(1956, 'Wilson Garden', '12.9481933', '77.5971865'),
(1957, 'Wind Tunnel Road', '12.9475652', '77.6598519'),
(1958, 'Yelachena Halli', '12.9004352', '77.5712222'),
(1959, 'Yelahanka', '13.1004849', '77.5940134'),
(1960, 'Yelahanka New Town', '13.1042445', '77.5713193'),
(1961, 'Yelanahalli', '12.8586766', '77.6118073'),
(1962, 'Yemalur', '12.9446164', '77.6836756'),
(1963, 'Yeshwanthpur', '13.0279661', '77.5409156');

-- --------------------------------------------------------

--
-- Table structure for table `banner_gallery_list`
--

CREATE TABLE `banner_gallery_list` (
  `id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `last_update` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner_gallery_list`
--

INSERT INTO `banner_gallery_list` (`id`, `images`, `last_update`, `status`) VALUES
(12, '1542181670_image2.jpg', '2018-11-14 13:17', 1),
(13, '1542181670_image3.jpg', '2018-11-14 13:17', 1),
(14, '1542181670_image4.jpg', '2018-11-14 13:17', 1),
(15, '1542181670_image5.jpg', '2018-11-14 13:17', 1),
(16, '1542181670_image6.jpg', '2018-11-14 13:17', 1),
(17, '1542181670_image7.jpg', '2018-11-14 13:17', 1),
(18, '1542181670_image8.jpg', '2018-11-14 13:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_master`
--

CREATE TABLE `category_master` (
  `id` int(11) NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `category_image` varchar(250) NOT NULL,
  `type` int(11) NOT NULL COMMENT '0.General Category, 1. Emergency Category',
  `features` int(11) NOT NULL COMMENT '1=>Yes,2=>No',
  `status` tinyint(4) NOT NULL,
  `add_date` varchar(60) NOT NULL,
  `modify_date` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_master`
--

INSERT INTO `category_master` (`id`, `category_name`, `parent_id`, `category_image`, `type`, `features`, `status`, `add_date`, `modify_date`) VALUES
(1, 'Doctor', 0, 'cate_logo_1565877294.jpg', 0, 1, 1, '2019-08-15 19:24', '2019-08-15 19:24'),
(41, 'Restaurant', 0, 'cate_logo_1543384773.png', 0, 1, 0, '2018-11-28 11:29', '2018-11-28 11:29'),
(43, 'Spa', 0, 'cate_logo_1543387916.png', 0, 1, 0, '2018-11-28 12:21', '2018-11-28 12:21'),
(49, 'Salon', 0, 'cate_logo_1543384812.png', 0, 1, 0, '2018-11-28 11:30', '2018-11-28 11:30');

-- --------------------------------------------------------

--
-- Table structure for table `deal_list`
--

CREATE TABLE `deal_list` (
  `dealid` int(11) NOT NULL,
  `item_id` varchar(55) NOT NULL,
  `spa_id` varchar(55) NOT NULL,
  `cate_id` varchar(55) NOT NULL,
  `design_txt` varchar(5555) NOT NULL,
  `date_time` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deal_list`
--

INSERT INTO `deal_list` (`dealid`, `item_id`, `spa_id`, `cate_id`, `design_txt`, `date_time`, `status`) VALUES
(1, '4', '3', '43', '<p>Offer / Deal Name</p>\r\n\r\n<p>Validity: 22-1-2019 to 31-1-2019</p>\r\n\r\n<p>Accept only new users: 10% discount</p>\r\n\r\n<p><img alt=\"\" src=\"https://i0.wp.com/www.jjosephsalon.com/wp-content/uploads/2016/02/luxurycc.jpg\" style=\"height:150px; width:262px\" /></p>\r\n', '2019-01-22 00:00:00', 1),
(2, '4', '3', '43', '<p>Offer / Deal Name</p>\r\n\r\n<p>Validity: 22-1-2019 to 31-1-2019</p>\r\n\r\n<p>Accept only new users: 10% discount</p>\r\n\r\n<p><img alt=\"\" src=\"https://i0.wp.com/www.jjosephsalon.com/wp-content/uploads/2016/02/luxurycc.jpg\" style=\"height:150px; width:262px\" /></p>\r\n', '2019-01-22 00:00:00', 1),
(3, '4', '3', '43', '<h2>&nbsp;</h2>\r\n\r\n<hr />\r\n<h2><small>&nbsp;Developer Testing</small></h2>\r\n\r\n<hr />\r\n<h2>&nbsp;</h2>\r\n', '2019-01-22 00:00:00', 1),
(4, '4', '3', '43', '<p>dfgsdfgsfdgsdfg</p>\r\n', '2019-01-22 00:00:00', 1),
(5, '4', '3', '43', '<p>ytyrtyrty</p>\r\n', '2019-01-22 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_lists`
--

CREATE TABLE `doctor_lists` (
  `doc_id` int(11) NOT NULL,
  `doc_name` varchar(100) NOT NULL,
  `experience` varchar(50) NOT NULL,
  `doc_mobile` varchar(14) NOT NULL,
  `website` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cate_id` varchar(252) NOT NULL,
  `sub_cateid` varchar(252) NOT NULL,
  `FacebookUrl` varchar(100) NOT NULL,
  `TwitterUrl` varchar(100) NOT NULL,
  `InstagramUrl` varchar(100) NOT NULL,
  `GooglePlusUrl` varchar(100) NOT NULL,
  `doc_address` text NOT NULL,
  `search_keyword` varchar(255) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `country` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `pincode` int(11) NOT NULL,
  `CompanyName` varchar(200) NOT NULL,
  `AboutCompany` text NOT NULL,
  `opening_time` varchar(50) NOT NULL,
  `closing_time` varchar(50) NOT NULL,
  `Educationdetails` varchar(111) NOT NULL,
  `RegistrationNumber` varchar(50) NOT NULL,
  `ConsultingFees` int(11) NOT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `AwardRecogination` text NOT NULL,
  `offers_discount` varchar(255) NOT NULL,
  `doc_logo` text NOT NULL,
  `background_image` varchar(255) NOT NULL,
  `adds` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `Package` varchar(255) NOT NULL,
  `Keyword` text NOT NULL,
  `ServiceContact` varchar(20) NOT NULL,
  `ServiceEmail` varchar(50) NOT NULL,
  `Establishment` varchar(200) NOT NULL,
  `door_delivery` varchar(20) NOT NULL,
  `booking_option` varchar(255) NOT NULL,
  `servicess` text NOT NULL,
  `practises_at` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  `add_date` varchar(30) NOT NULL,
  `modify_date` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_lists`
--

INSERT INTO `doctor_lists` (`doc_id`, `doc_name`, `experience`, `doc_mobile`, `website`, `email`, `cate_id`, `sub_cateid`, `FacebookUrl`, `TwitterUrl`, `InstagramUrl`, `GooglePlusUrl`, `doc_address`, `search_keyword`, `latitude`, `longitude`, `country`, `state`, `city`, `pincode`, `CompanyName`, `AboutCompany`, `opening_time`, `closing_time`, `Educationdetails`, `RegistrationNumber`, `ConsultingFees`, `payment_mode`, `AwardRecogination`, `offers_discount`, `doc_logo`, `background_image`, `adds`, `details`, `Package`, `Keyword`, `ServiceContact`, `ServiceEmail`, `Establishment`, `door_delivery`, `booking_option`, `servicess`, `practises_at`, `status`, `add_date`, `modify_date`) VALUES
(1, 'Ashalatha Ganesh', '2010', '8880001111', 'http://develope.promena.in', 'glrakesh4@gmail.com', '1', '1', '', '', '', '', '2nd main,1st cross', 'Banashankari', '12.9255', '77.5468', 1, 8, 9, 560085, 'Wellspring Mother & Child Hospital', 'Dr Ashalatha is a renowned IVF expert, she has gained immense knowledge in the field of reproductive medicine and infertility. She also practices at Well Spring Hospital. Using technology to make reproduction simpler has been her main driving force.', '', '', 'MBBS, Doctor of Philosophy', '4566135', 500, '6,1', 'Karnataka Medical Council,Best General', '50', 'logo_1559906552.jpg', 'background_image_1559905483.jpg', '', '1,2', '', '', '', '', '', '', '', '7,9,10,12', '[{\"hospitalname\":\"Wellspring Mother & Child Hospital\",\"address1\":\"18, Universal House, Palace Orchards, Bellary Road, \\r\\nAirport Road, Landmark: Opposite Palace Ground Gate\\r\\n Number 5 King\'s Court & Near Croma, Bangalore\",\"rating\":\"4.5\"}]', 1, '2018-11-13 19:34:14', '2019-07-30 13:00:57'),
(2, 'Satish Ramana', '2010', '9632060605', 'http://develop.promena.in', 'dharmadpf@gmail.com', '1', '1,10', '', '', '', '', '2, Tumkur Service Road, Goraguntepalya, Landmark: Near BMTC Bus Stop And Opposite Taj Vivanta', 'Yeshwanthpur', '13.0250', '77.5340', 1, 8, 9, 560022, 'People Tree Hospital', 'Dr. Satish Ramana is a Doctor in Yeshwanthpur, Bangalore and has an experience of 20 years in this field. Dr. Satish Ramana practices at People Tree Hospitals in Yeshwanthpur, Bangalore and Raghavendra People Tree Hospital in T Dasarahalli, Bangalore. He completed MBBS from Devaraj URS Medical College - Kolar in 1998 and MD - General Medicine from Dr B R Ambedkar medical college in 2004', '', '', 'MBBS, MD - General Medicine  General Physician', '325656', 400, '6,1,3', 'Scoliosis Research Spine Society Educational Scholarship - 2008, Most Promising Spine Research Award -HKOA - 2009, International Society for Study of Lumbar Spine (ISSLS), Best Research Award - 2010, Scoliosis Research Society Traveling Fellowship - 2012', '', 'logo_1542172617.jpg', 'background_image_1542173748.jpg', '', '6,5,4,3,2', '', '', '', '', '', '', '', '42,33,34,37,39,40,41,36,32,31,30,21,23,24,25,26,27,28,29,43,44,46', '[{\"hospitalname\":\"Raghavendra People Tree Hospital\",\"address1\":\"13\\/4, T Dasarahalli, Tumkur Road, \\r\\nLandmark: Near Dasarahalli Metro Stop, \\r\\nBangalore\",\"rating\":\"4.5\"}]', 1, '2018-11-14 10:44:17', '2019-08-16 13:34:16'),
(3, 'Krishna Kumar', '2012', '9874561237', 'http://promena.in', 'chetan@gmail.com', '1', '1', '', '', '', '', '2nd Stage', 'BTM Layout', '12.9166', '77.6101', 1, 8, 9, 560013, 'Keva Ayurveda Healthcare Pvt Ltd', 'Dr. Krishna Kumar has been rated as one of the best Ayurveda doctors in Bangalore, recently awarded Gold star award for medical excellence by global achievers foundation. Armed with BAMS degree, PG in Nutrition & Dietetics, Fellowship from Manipal (fage). He has worked for Kerala Ayurveda limited in Bangalore, Goa, Mumbai, and Pune. With his experience, he teamed up with the industry veteran to start Keva Ayurveda Healthcare Pvt Ltd. in BTM Layout, Bangalore 6 years ago and later HSR Layout Branch, Indiranagar, Marathahalli and New Thippasandra started its operation. Keva Ayurveda has also started its operation in Delhi, Mumbai & Tamil Nadu.', '', '', 'BAMS, PG Dip (Medical Education)', '654651358', 350, '6,1', 'Best Cardio,Best Physician,Best Neuro,Best Consultant,Popular', '', 'logo_1542173172.jpg', 'logo_1542172940.png', '', '1,2,3,4', '', '', '', '', '', '', '', '7,8,9,10,11', '[{\"hospitalname\":\"Keva Ayurveda\",\"address1\":\"8, 5th Main, 1st Cross, Domlur 2nd Stage, \\r\\nLandmark: Near Subway & Lakme Saloon,\\r\\n Bangalore\",\"rating\":\"4.0\"}]', 1, '2018-11-14 10:52:20', '2019-07-30 12:58:47'),
(4, 'Nithya Raghunath', '2009', '7733445511', 'http://dialio.in', 'nithya@gmail.com', '1', '2', '', '', '', '', '2nd Floor, 80 Feet Kammanahalli Main Road, \r\nHRBR 3rd Block, Landmark: Above KFC', 'Kalyan Nagar', '13.0280', '77.6400', 1, 8, 9, 560043, 'Contura Clinic', 'Dr. Nithya Raghunath, Dermatologist & Cosmetologist (MBBS, MD, Fellowship in Cosmetology) offers a comprehensive variety of affordable dermatologic and cosmetic treatment and procedures and enables tailored treatment to achieve the best possible result for patients', '', '', 'MBBS, MD - Dermatology , Venereology & Leprosy', '34504', 500, '6,1,3', 'Best Trichologist 2016', '', 'logo_1542173735.jpg', 'background_image_1542172654.jpg', '', '29,30,33', '', '', '', '', '', '', '', '118,119,120,121,122,123,126,128,129,130,132,137,139,143,150,157', '[{\"hospitalname\":\"Sri Raghavendra Hospital\",\"address1\":\"Near Bus Stand, Landmark: Near Bus Stand, Malur\",\"rating\":\"3.5\"}]', 1, '2018-11-14 11:03:52', '2019-08-16 16:24:49'),
(7, 'Dr. Manohar K N', '2018', '8071172999', 'http://.manipalhospital.com', 'dr@gmial.com', '1', '4', '', '', '', '', '98, Kodihalli, Landmark: HAL Bus Stop, Bangalore', 'HAL Layout', '12.95959', '77.64937', 1, 8, 9, 560078, 'Manipal Hospital', '\r\nDr. Manohar K N has been treating myself and my wife for Diabetes for last 8 years. Doctor has been prescribing latest medicine which suits us. Just to narrate an incident. I took my medicines to South Africa as I need to travel for project assignment. When I visited one of Physician for flu and cold. I was asked what medicine do I use for my Diabetes. When I showed the medicines I was using, the South Africa Physician said the prescribed medicines were latest available in the market and are very good. I was very happy to hear that the Dr Manohar uses all the knowledge he acquired from various seminars and workshop. He has also treated my parents and has been treating my wife and my mother in law. I also appreciate the Dr. Manohar for his social awareness and giving back to the society. Keep up the good work sir.', '', '', 'FRCP, MD', '1000', 250, '6,1,3,5', '', '', 'logo_1560427227.jpg', 'background_image_1560427289.jpg', '', '', '', '', '', '', '', '', '', '13,14', '[{\"hospitalname\":\"Manipal Hospital\",\"address1\":\"98, Kodihalli, Landmark: HAL Bus Stop, Bangalore\",\"rating\":\"3.5\"}]', 1, '2019-06-13 17:27:30', '2019-06-13 17:31:29'),
(8, 'B Ramesh', '2001', '8899445566', 'http://ramesh.com', 'ramesh@gmail.com', '1', '1', '', '', '', '', '#2231 ,23rd Cross', 'Jayanagar', '12.9308', '77.5802', 1, 8, 9, 560070, 'Ramesh Cardiology Clinic', 'Dr Ramesh Cardiology Clinic is a one stop for all your heart care needs. Equipped with the state of the art equipment. Our Clinic offers the following investigations-\r\n-Electrocardiogram\r\n-Color doppler Echocardiogram\r\n-Treadmill stress testing\r\n-Stress Echo\r\n-Holter monitoring[24 hr ECG recording]', '', '', 'MBBS, DM - Cardiology, MD - General Medicine Cardiologist', '54654656', 250, '6,1,3,4,5', 'General physco,Medical adviser,Best guide', '', 'logo_1561359339.png', 'logo_1561359239.png', '', '1,3', '', '', '', '', '', '', '', '8,9,11', '[{\"hospitalname\":\"Bangalore Hospital\",\"address1\":\"#2231 ,23rd Cross \",\"rating\":\"4\"}]', 1, '2019-06-24 12:23:59', '2019-07-30 12:59:34'),
(9, 'Vithal Bagi', '2010', '8605002066', '', 'abc@gmail.com', '1', '1', '', '', '', '', 'Apollo Clinic Basavanagudi, 99, bull Temple Road next To Ramakrishna Ashram, Basavanagudi, Bengaluru, Karnataka 560019', 'Basavanagudi', '12.9406', '77.5738', 1, 8, 9, 560019, 'Apollo Clinic Basavanagudi', 'Health plays an intrinsic role in the development of nations and we have implemented a number of strategies that addresses and identifies people’s health needs. Apollo Hospitals believe in community engagement and provides its customers more than just specific health treatments. Keeping this in mind, Apollo Hospitals bring to you a solution that provides you with a greater accessibility to your healthcare needs.', '', '', 'MBBS, MD - General Medicine  General Physician', '125642', 500, '6,1,3,5', '', '', 'logo_1561967143.jpg', 'background_image_1561967153.jpg', '', '2,3,5', '', '', '', '', '', '', '', '7,8,9,10,11,12', '[]', 1, '2019-07-01 13:04:24', '2019-07-30 12:57:16'),
(10, 'Prakash Belvade', '2005', '9985642157', '', 'pavankumar19@gmail.com', '1', '2', '', '', '', '', '#26, Padma Nilaya\r\nGanganagar Extension', 'Ganga Nagar', '45487986', '877897444', 1, 8, 9, 560032, 'Jade Aesthetic Clinic', 'Dr. Prakasah has about 15-years of post-qualification experience and is currently HOD & Consultant Spine Surgeon at Manipal Hospitals, Bangalore. He performs about 600 procedures annually and totaling over 6000 successful spinal surgeries so far. He had a very successful academic career winning more than 30 national & international awards along with over 35 international publications in indexed journals. He has worked in most reputed centers of excellence in spine surgery across the globe. Dr. Vidyadhara S was awarded the ISCA Young Scientist Award from the then President of India, Dr. APJ Abdul Kalam in 2006, Lester Lowe SICOT Award in 2007 and ISSLS Best Research Award in 2010. In 2012, he was honored to be third Indian winning the prestigious SRS Traveling Fellowship to visit the best centers for Spine Surgery in the USA. He is fifth Indian and first from Karnataka to have been awarded active fellowship of Scoliosis Research Society of USA', '', '', 'MBBS, MD-Dermatalogy', '785412543', 800, '6,1,3', 'Scoliosis Research Spine Society Educational Scholarship - 2008 Most Promising Spine Research Award -HKOA - 2009 International Society for Study of Lumbar Spine (ISSLS) Best Research Award - 2010 Scoliosis Research Society Traveling Fellowship - 2012', '', 'logo_1565424805.jpg', 'logo_1565424598.png', '', '30,33', '', '', '', '', '', '', '', '118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,166,172', '[]', 1, '2019-08-10 13:39:57', '2019-08-10 13:57:56'),
(11, 'Aman Sodhi', '2004', '9487548754', '', 'trovallp@gmail.com', '1', '13', '', '', '', '', '1st Floor, 78/2, Opposite Bharat Petroleum Petrol Bunk ,Off Bannerghatta Road, Landmark: Above Medplus Medicals, Near Shantiniketan Sai Baba Temple, Bangalore', 'Arekere', '12.8873247', '77.5944179', 1, 8, 9, 560076, 'Dental Solutions Multi Speciality Dental Care Centre', 'Dr. Aman Sodhi is a Dentist,Dental Surgeon and Cosmetic/Aesthetic Dentist in Arekere, Bangalore and has an experience of 17 years in these fields. Dr. Aman Sodhi practices at Dental Solutions Multi Speciality Dental Care Centre in Arekere, Bangalore. She completed BDS from Christian Dental College in 2000 and MDS - Oral Medicine and Radiology from The Oxford dental College, Bangalore in 2010.\r\nShe is a member of Indian Dental Association. Some of the services provided by the doctor are: Impaction / Impacted Tooth Extraction,Crowns and Bridges Fixing,Cosmetic/ Aesthetic Dentistry,Scaling / Polishing and Presurgical Orthodontics etc', '', '', 'BDS, MDS - Oral Medicine and Radiology', '3119777', 200, '6,1,3', 'Rank certificate [Batch 2009] from Rajiv Gandhi Institute of Health Sciences for Endodontics and Restorative (Aesthetic) Dentistry - 2009', '20% Flat Discount for all Root Canal Treatments. Valid only for the month of August 2019', 'logo_1565510049.jpg', 'logo_1565509427.png', '', '', '', '', '', '', '', '', '', '1132,1133,1134,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145,1146,1147,1148,1149,1150,1151,1152,1157,1203', '[{\"hospitalname\":\"DentoCare\",\"address1\":\"Surya Mansion, 102,7th Main, Landmark: Opposite to Hotel Maiyaas Near Jayanagar Metro, Bangalore\",\"rating\":\"4.5\"},{\"hospitalname\":\"\",\"address1\":\"\",\"rating\":\"\"}]', 1, '2019-08-11 13:13:47', '2019-08-11 14:26:27'),
(12, 'Vima T Vijayan', '2013', '9875684587', '', 'pavankumar9@gmail.com', '1', '14', '', '', '', '', 'Surya Mansion, 102,7th Main, Landmark: Opposite to Hotel Maiyaas Near Jayanagar Metro, Bangalore', 'Jayanagar', '12.8873247', '77.5944179', 1, 8, 9, 560069, 'German Homeopathy Clinics', 'She has started practicing Homoeopathy for seven years. She has attended around 5000 + cases including the acute and chronic ailments(Women ailments, Respiratory, Endocrinology, Rheumatoid). Specially trained under Dermatology and Trichology from the international chain of clinics. She has attended various seminars of eminent personalities from the Homoeopathic field. She is dedicated to the profession and loyal to Homoeopathy. I can assure the eminent patient care as She believes patients concern is her first priority', '', '', 'BHMS', '9966', 300, '6,1,3,4,5', 'BEST HOMOEOPATHIC CONSULTANT - 2016', '', 'logo_1565514384.jpg', 'logo_1565514278.png', '', '', '', '', '', '', '', '', '', '1282,1283,1284,1285,1286,1287,1288,1289,1290,1291,1292,1293,1295,1296,1297,1299,1300,1303,1305,1306,1410', '[{\"hospitalname\":\"Dr Batras Clinic\",\"address1\":\"Surya Mansion, 102,7th Main, Landmark: Opposite to Hotel Maiyaas Near Jayanagar Metro, Bangalore\",\"rating\":\"4\"}]', 1, '2019-08-11 14:34:38', '2019-08-11 14:36:24'),
(13, 'Harshitha Kumari', '2009', '9856485632', '', 'testmail@gmail.com', '1', '15', '', '', '', '', '211, Service Rd, East of NGEF Layout, Kasturi Nagar, ,, Landmark: Service Rd, East of NGEF Layout, Bangalore', 'Banaswadi', '12.8873247', '77.5944179', 1, 8, 9, 0, 'Orenda Ayurveda Multispeciality Hospital', 'Dr. Harshitha Kumari says \"I have done post graduation from SDM Ayurveda college Udupi and PhD from IPGT&RA Jamnagar\".', '', '', 'BAMS, PhD- Ayurveda', '21492', 300, '6,1,3', 'Senior Member of Karnataka Ayurveda Association', '', 'logo_1565672681.jpg', 'logo_1565671979.png', '', '', '', '', '', '', '', '', '', '1595,1598,1604,1606,1608,1615,1620,1622,1623,1625,1627,1629,1631,1637,1639,1640,1641,1642,1656,1659,1677,1678,1679,1680,1681,1682,1684,1690,1708,1713,1714,1715', '[{\"hospitalname\":\"AyurVAID Hospitals\",\"address1\":\"Door No 16, Maruthi Complex, 3rd Main, TC Palya Road, Hoysala Nagar, Ramamurthy Nagar, 3rd Main Rd, Landmark: Near Dominos Pizza, Bangalore\",\"rating\":\"4.5\"}]', 1, '2019-08-13 10:22:59', '2019-08-13 10:34:41');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_services`
--

CREATE TABLE `doctor_services` (
  `service_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `add_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modify_date` date NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `general_service` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_services`
--

INSERT INTO `doctor_services` (`service_id`, `cate_id`, `service_name`, `add_datetime`, `modify_date`, `status`, `general_service`) VALUES
(7, 10, 'Dietitians', '2018-11-14 04:47:58', '2018-11-14', 1, 1),
(8, 10, 'Podiatrists', '2018-11-14 04:48:17', '2018-11-14', 1, 1),
(9, 10, 'Physical activity', '2018-11-14 04:48:43', '2018-11-14', 1, 1),
(10, 3, 'Hearing', '2018-11-14 04:50:14', '2018-11-14', 1, 1),
(11, 3, 'Throat', '2018-11-14 04:50:44', '2018-11-14', 1, 1),
(12, 4, 'Liver Disorder', '2018-11-14 04:53:10', '2018-11-14', 1, 1),
(13, 4, 'Pancreatic Disorder', '2018-11-14 04:53:32', '2018-11-14', 1, 1),
(14, 4, 'Upper GI Endoscopy', '2018-11-14 04:54:17', '2018-11-14', 1, 1),
(15, 1, 'Arrhythmia', '2019-06-28 05:13:55', '2019-06-28', 1, 1),
(21, 1, 'Non-Invasive Cardiology', '2019-07-12 06:19:51', '2019-07-12', 1, 1),
(23, 1, 'Treadmill Test - TMT', '2019-07-12 06:20:42', '2019-07-12', 1, 1),
(24, 1, 'Electrocardiography (ECG) ', '2019-07-12 06:21:14', '2019-07-12', 1, 1),
(25, 1, '24 hour Holster Monitor (ECG Monitering) ', '2019-07-12 06:23:59', '2019-07-12', 1, 1),
(26, 1, '24 hour ABPM (Ambulatory Blood Pressure Monitor) ', '2019-07-12 06:25:01', '2019-07-12', 1, 1),
(27, 1, 'Hypercolesterolemia Treatment', '2019-07-12 06:25:38', '2019-07-12', 1, 1),
(28, 1, 'Chest Pain Treatment', '2019-07-12 06:25:57', '2019-07-12', 1, 1),
(29, 1, 'Heart Valve Repairs', '2019-07-12 06:26:15', '2019-07-12', 1, 1),
(30, 1, 'Cardiac Rehabilitation', '2019-07-12 06:26:43', '2019-07-12', 1, 1),
(31, 1, 'Heart Transplant', '2019-07-12 06:27:01', '2019-07-12', 1, 1),
(32, 1, 'Ablation', '2019-07-12 06:27:11', '2019-07-12', 1, 1),
(33, 1, 'Heart Valve Replacement', '2019-07-12 06:27:29', '2019-07-12', 1, 1),
(34, 1, 'Angioplasty and Stenting', '2019-07-12 06:28:02', '2019-07-12', 1, 1),
(35, 1, 'Coronary Artery Bypass Grafting', '2019-07-12 06:28:41', '2019-07-12', 1, 1),
(36, 1, 'Coronary Angiography', '2019-07-12 06:29:14', '2019-07-12', 1, 1),
(37, 1, 'Bifurcation Cases', '2019-07-12 06:29:32', '2019-07-12', 1, 1),
(38, 1, 'Multivessel Disease Cases', '2019-07-12 06:29:57', '2019-07-12', 1, 1),
(39, 1, 'Chronic Total Occlusion Cases', '2019-07-12 06:30:37', '2019-07-12', 1, 1),
(40, 1, 'Left Main Angioplasty', '2019-07-12 13:03:53', '2019-07-12', 1, 1),
(41, 1, 'Coronary Angioplasty in Heart Attack', '2019-07-12 13:04:28', '2019-07-12', 1, 1),
(42, 1, 'Rotablation Cases / FFR Cases', '2019-07-12 13:05:11', '2019-07-12', 1, 1),
(43, 1, 'Peripheral Vascular Disease', '2019-07-12 13:05:36', '2019-07-12', 1, 1),
(44, 1, 'Renal Angioplasty', '2019-07-12 13:05:56', '2019-07-12', 1, 1),
(46, 1, 'Angioplasty in Subclavian Artery', '2019-07-12 13:07:10', '2019-07-12', 1, 1),
(47, 1, 'ICD Implantation', '2019-07-29 12:04:11', '2019-07-29', 1, 1),
(48, 1, 'Angioplasty in Leg Vessels', '2019-07-29 12:04:28', '2019-07-29', 1, 1),
(49, 1, 'Cardiac Arrhythmia Management', '2019-07-29 12:04:44', '2019-07-29', 1, 1),
(50, 1, 'Pacemaker Implantation', '2019-07-29 12:04:58', '2019-07-29', 1, 1),
(51, 1, 'EP Study and RF Ablation', '2019-07-29 12:05:09', '2019-07-29', 1, 1),
(52, 1, 'Valvular Heart Diseases', '2019-07-29 12:05:19', '2019-07-29', 1, 1),
(53, 1, 'Balloon Dilatation of Valve Stenosis (PTMC/PBMV,PBPV)', '2019-07-29 12:05:32', '2019-07-29', 1, 1),
(54, 1, 'Congenital Heart Disease', '2019-07-29 12:05:45', '2019-07-29', 1, 1),
(55, 1, 'ASD VSD PDA Device Closures', '2019-07-29 12:05:53', '2019-07-29', 1, 1),
(56, 1, 'Ethical Transparent Evidence Based Cardia Care', '2019-07-29 12:06:05', '2019-07-29', 1, 1),
(57, 1, 'Heart Failure Management', '2019-07-29 12:06:14', '2019-07-29', 1, 1),
(58, 1, 'PCI (Percutaneous Coronary Interventionist)', '2019-07-29 12:06:24', '2019-07-29', 1, 1),
(59, 1, 'Treatment of Arrhythmia', '2019-07-29 12:07:34', '2019-07-29', 1, 1),
(60, 1, 'Implantable Cardioverter Defibrillator', '2019-07-29 12:07:44', '2019-07-29', 1, 1),
(61, 1, 'Transesophageal Echocardiogram', '2019-07-29 12:07:50', '2019-07-29', 1, 1),
(62, 1, 'Mitral Valve Repair', '2019-07-29 12:08:05', '2019-07-29', 1, 1),
(63, 1, 'Catheter Ablation', '2019-07-29 12:08:48', '2019-07-29', 1, 1),
(64, 1, 'Permanent Pacemaker', '2019-07-29 12:08:57', '2019-07-29', 1, 1),
(65, 1, 'Balloon Mitral Valvotomy', '2019-07-29 12:09:05', '2019-07-29', 1, 1),
(66, 1, 'Atrial Fibrillation', '2019-07-29 12:09:11', '2019-07-29', 1, 1),
(67, 1, 'Cardioversion', '2019-07-29 12:09:20', '2019-07-29', 1, 1),
(68, 1, 'Carotid Angioplasty and Stenting', '2019-07-29 12:09:26', '2019-07-29', 1, 1),
(69, 1, 'Coronary Angioplasty / Bypass Surgery', '2019-07-29 12:09:55', '2019-07-29', 1, 1),
(70, 1, 'Peripheral Angiography', '2019-07-29 12:10:03', '2019-07-29', 1, 1),
(71, 1, 'Heart Conditions', '2019-07-29 12:10:09', '2019-07-29', 1, 1),
(72, 1, 'Treatment of Hole in the Heart', '2019-07-29 12:10:17', '2019-07-29', 1, 1),
(73, 1, 'Cardiac Catheterisation', '2019-07-29 12:10:24', '2019-07-29', 1, 1),
(74, 1, 'Acute Aortic Dissection', '2019-07-29 12:10:30', '2019-07-29', 1, 1),
(75, 1, 'TAVI (Transcatheter Aortic Valve Implantation)', '2019-07-29 12:10:36', '2019-07-29', 1, 1),
(76, 1, 'Hypertriglyceridemia', '2019-07-29 12:10:43', '2019-07-29', 1, 1),
(77, 1, 'Ergometric Test', '2019-07-29 12:10:49', '2019-07-29', 1, 1),
(78, 1, 'Ultrasound / Ultrasonography', '2019-07-29 12:11:09', '2019-07-29', 1, 1),
(79, 1, 'Rheumatic Heart Disease Treatment', '2019-07-29 12:11:16', '2019-07-29', 1, 1),
(80, 1, 'Fetal Echocardiography', '2019-07-29 12:11:23', '2019-07-29', 1, 1),
(81, 1, 'Peripheal Angiography', '2019-07-29 12:11:33', '2019-07-29', 1, 1),
(82, 1, 'Stress Echocardiography', '2019-07-29 12:11:39', '2019-07-29', 1, 1),
(83, 1, 'Revascularization', '2019-07-29 12:11:46', '2019-07-29', 1, 1),
(84, 1, 'Angiogram', '2019-07-29 12:11:59', '2019-07-29', 1, 1),
(85, 1, 'Open Heart Surgery', '2019-07-29 12:12:05', '2019-07-29', 1, 1),
(86, 1, 'Aortic Valve Surgery', '2019-07-29 12:12:16', '2019-07-29', 1, 1),
(87, 1, 'Atrial Septal Defect Surgery', '2019-07-29 12:12:23', '2019-07-29', 1, 1),
(88, 1, 'Congenital Heart Surgery', '2019-07-29 12:12:28', '2019-07-29', 1, 1),
(89, 1, 'Ventricular Assist Device', '2019-07-29 12:12:35', '2019-07-29', 1, 1),
(90, 1, 'Paediatric Cardiac Surgery', '2019-07-29 12:12:45', '2019-07-29', 1, 1),
(91, 1, 'Ventricular Septal Defect Surgery', '2019-07-29 12:12:58', '2019-07-29', 1, 1),
(92, 1, 'Pulmonary Function Test (PFT)', '2019-07-29 12:14:13', '2019-07-29', 1, 1),
(93, 1, 'Minimally Invasive Cardiac Surgery', '2019-07-29 12:14:20', '2019-07-29', 1, 1),
(94, 1, 'Peripheral Vascular Surgery', '2019-07-29 12:14:26', '2019-07-29', 1, 1),
(95, 1, 'Repair of Adult Coarctation', '2019-07-29 12:14:31', '2019-07-29', 1, 1),
(96, 1, 'Redo Tetralogy', '2019-07-29 12:14:42', '2019-07-29', 1, 1),
(97, 1, 'Patent Ductus Arteriosus (PDA)', '2019-07-29 12:14:48', '2019-07-29', 1, 1),
(98, 1, 'Tetralogy O Fallot (TOF)', '2019-07-29 12:14:55', '2019-07-29', 1, 1),
(99, 1, 'Dextro - Transposition of the Great Arteries (DTGA)', '2019-07-29 12:15:01', '2019-07-29', 1, 1),
(100, 1, 'Robotic Heart Surgery', '2019-07-29 12:15:08', '2019-07-29', 1, 1),
(101, 1, 'Valvuloplasty', '2019-07-29 12:15:13', '2019-07-29', 1, 1),
(102, 1, 'Aortic Anuerysm Surgery / Endovascular Repair', '2019-07-29 12:15:20', '2019-07-29', 1, 1),
(103, 1, 'Patent Foramen Ovale', '2019-07-29 12:15:27', '2019-07-29', 1, 1),
(104, 1, 'CT Angiogram', '2019-07-29 12:15:33', '2019-07-29', 1, 1),
(105, 1, '2D - Echocardiography (2D- Echo)', '2019-07-29 12:15:40', '2019-07-29', 1, 1),
(106, 1, 'Intra - Arterial Thrombolysis', '2019-07-29 12:15:47', '2019-07-29', 1, 1),
(107, 1, 'Gastritis Treatment', '2019-07-29 12:15:53', '2019-07-29', 1, 1),
(108, 1, 'Dyslipidemia', '2019-07-29 12:15:59', '2019-07-29', 1, 1),
(109, 1, 'Diabetes Management', '2019-07-29 12:16:06', '2019-07-29', 1, 1),
(110, 1, 'Type 1 Diabetes Treatment', '2019-07-29 12:16:12', '2019-07-29', 1, 1),
(111, 1, 'Type 2 Diabetes Treatment', '2019-07-29 12:16:17', '2019-07-29', 1, 1),
(112, 1, 'Diabetic Diet Counseling', '2019-07-29 12:16:24', '2019-07-29', 1, 1),
(113, 1, 'Gestational Diabetes Management', '2019-07-29 12:16:31', '2019-07-29', 1, 1),
(114, 1, 'Pregnant Women Counseling', '2019-07-29 12:17:08', '2019-07-29', 1, 1),
(115, 1, 'Foot Care', '2019-07-29 12:18:37', '2019-07-29', 1, 1),
(116, 1, 'High-Risk Pregnancy Care', '2019-07-29 12:18:47', '2019-07-29', 1, 1),
(117, 1, 'Pregancy Hypertension (Preeclampsia / Ecalmpsia)', '2019-07-29 12:18:54', '2019-07-29', 1, 1),
(118, 2, 'Acne / Pimple Treatment', '2019-07-29 12:22:44', '2019-07-29', 1, 1),
(119, 2, 'Wart Removal', '2019-07-29 12:23:00', '2019-07-29', 1, 1),
(120, 2, 'Leucoderma Treatment', '2019-07-29 12:23:10', '2019-07-29', 1, 1),
(121, 2, 'Dermabrasion', '2019-07-29 12:23:16', '2019-07-29', 1, 1),
(122, 2, 'Sun Spots, Age Spots, Pigmented Lesions', '2019-07-29 12:23:24', '2019-07-29', 1, 1),
(123, 2, 'Anti Aging Treatment', '2019-07-29 12:23:31', '2019-07-29', 1, 1),
(124, 2, 'Electrocautry', '2019-07-29 12:23:36', '2019-07-29', 1, 1),
(125, 2, 'Coronary Angiogram', '2019-07-29 12:23:42', '2019-07-29', 1, 1),
(126, 2, 'Chemical Peel', '2019-07-29 12:23:48', '2019-07-29', 1, 1),
(127, 2, 'Medical Vitiligo Treatment', '2019-07-29 12:23:55', '2019-07-29', 1, 1),
(128, 2, 'Melasma Treatment', '2019-07-29 12:24:02', '2019-07-29', 1, 1),
(129, 2, 'Hair Loss Treatment', '2019-07-29 12:24:11', '2019-07-29', 1, 1),
(130, 2, 'Eczema Treatment', '2019-07-29 12:24:16', '2019-07-29', 1, 1),
(131, 2, 'Atopic Dermatitis Treatment', '2019-07-29 12:24:22', '2019-07-29', 1, 1),
(132, 2, 'Psoriasis Treatment', '2019-07-29 12:24:28', '2019-07-29', 1, 1),
(133, 2, 'Skin Rash Treatment', '2019-07-29 12:24:35', '2019-07-29', 1, 1),
(134, 2, 'Corn Removal', '2019-07-29 12:24:40', '2019-07-29', 1, 1),
(135, 2, 'Skin Tag Surgical Removal', '2019-07-29 12:24:51', '2019-07-29', 1, 1),
(136, 2, 'Venereology', '2019-07-29 12:25:01', '2019-07-29', 1, 1),
(137, 2, 'Trichology', '2019-07-29 12:25:07', '2019-07-29', 1, 1),
(138, 2, 'Pityriasis Rosea', '2019-07-29 12:25:14', '2019-07-29', 1, 1),
(139, 2, 'Dermaroller', '2019-07-29 12:25:21', '2019-07-29', 1, 1),
(140, 2, 'Line and Wrinkle Smoothing', '2019-07-29 12:25:31', '2019-07-29', 1, 1),
(141, 2, 'Tattoo Removal', '2019-07-29 12:25:37', '2019-07-29', 1, 1),
(142, 2, 'Botox Injections', '2019-07-29 12:25:48', '2019-07-29', 1, 1),
(143, 2, 'Laser', '2019-07-29 12:25:54', '2019-07-29', 1, 1),
(144, 2, 'Mole Removal', '2019-07-29 12:26:01', '2019-07-29', 1, 1),
(145, 2, 'Fractional Skin Rejuvenation', '2019-07-29 12:26:07', '2019-07-29', 1, 1),
(146, 2, 'Tissue Tightening', '2019-07-29 12:26:18', '2019-07-29', 1, 1),
(147, 2, 'Skin Peeling', '2019-07-29 12:26:33', '2019-07-29', 1, 1),
(148, 2, 'Nail Surgery', '2019-07-29 12:26:39', '2019-07-29', 1, 1),
(149, 2, 'Thermage', '2019-07-29 12:26:49', '2019-07-29', 1, 1),
(150, 2, 'PRP for HAIR', '2019-07-29 12:27:38', '2019-07-29', 1, 1),
(151, 2, 'Dental Fillings', '2019-07-29 12:27:56', '2019-07-29', 1, 1),
(152, 2, 'Fine Thread Contour', '2019-07-29 12:28:07', '2019-07-29', 1, 1),
(153, 2, 'Micro Needle Radiofrequency', '2019-07-29 12:28:13', '2019-07-29', 1, 1),
(154, 2, 'Pigmentation Treatment With Q Switch Laser', '2019-07-29 12:28:19', '2019-07-29', 1, 1),
(155, 2, 'Laser Hair Removal - Face', '2019-07-29 12:28:25', '2019-07-29', 1, 1),
(156, 2, 'Photofacial', '2019-07-29 12:28:31', '2019-07-29', 1, 1),
(157, 2, 'Mesotherapy', '2019-07-29 12:28:37', '2019-07-29', 1, 1),
(158, 2, 'Hyper Pigmentation Treatment', '2019-07-29 12:28:44', '2019-07-29', 1, 1),
(159, 2, 'Microdermabrasion', '2019-07-29 12:28:50', '2019-07-29', 1, 1),
(160, 2, 'Dark Circle Removal', '2019-07-29 12:28:56', '2019-07-29', 1, 1),
(161, 2, 'Dermal Fillers', '2019-07-29 12:29:02', '2019-07-29', 1, 1),
(162, 2, 'DPN and Skin Tag Laser Removal', '2019-07-29 12:29:13', '2019-07-29', 1, 1),
(163, 2, 'Warts Laser Removal', '2019-07-29 12:29:19', '2019-07-29', 1, 1),
(164, 2, 'Stretch Mark Reduction by Laser', '2019-07-29 12:29:29', '2019-07-29', 1, 1),
(165, 2, 'Laser Mole Removal', '2019-07-29 12:29:34', '2019-07-29', 1, 1),
(166, 2, 'Skin Care', '2019-07-29 12:29:41', '2019-07-29', 1, 1),
(167, 2, 'Scar Treatment', '2019-07-29 12:29:47', '2019-07-29', 1, 1),
(168, 2, 'Lasers in Dermatology', '2019-07-29 12:29:53', '2019-07-29', 1, 1),
(169, 2, 'Skin Polishing', '2019-07-29 12:30:00', '2019-07-29', 1, 1),
(170, 2, 'Co2 Fractional', '2019-07-29 12:30:44', '2019-07-29', 1, 1),
(171, 2, 'Alopecia Areta Treatment', '2019-07-29 12:30:54', '2019-07-29', 1, 1),
(172, 2, 'Dermato Surgery', '2019-07-29 12:31:00', '2019-07-29', 1, 1),
(173, 2, 'Facial Rejuvenation Treatment', '2019-07-29 12:31:07', '2019-07-29', 1, 1),
(174, 2, 'Cosmetic Dermatology', '2019-07-29 12:31:14', '2019-07-29', 1, 1),
(175, 2, 'General Dermatology', '2019-07-29 12:31:24', '2019-07-29', 1, 1),
(176, 2, 'Fungal Infection Treatment', '2019-07-29 12:31:34', '2019-07-29', 1, 1),
(177, 2, 'PRP Treatment', '2019-07-29 12:31:40', '2019-07-29', 1, 1),
(178, 2, 'Keloid Treatment', '2019-07-29 12:31:52', '2019-07-29', 1, 1),
(179, 2, 'Laser Tonning', '2019-07-29 12:32:01', '2019-07-29', 1, 1),
(180, 2, 'Carbon Peel', '2019-07-29 12:32:09', '2019-07-29', 1, 1),
(181, 2, 'Q-Switched Nd-YAG Laser', '2019-07-29 12:32:18', '2019-07-29', 1, 1),
(182, 2, 'ISS Patch Test', '2019-07-29 12:34:18', '2019-07-29', 1, 1),
(183, 2, 'Skin Prick Test', '2019-07-29 12:34:28', '2019-07-29', 1, 1),
(184, 2, 'Fungal Test', '2019-07-29 12:34:35', '2019-07-29', 1, 1),
(185, 2, 'Trichoscopy', '2019-07-29 12:34:41', '2019-07-29', 1, 1),
(186, 2, 'Oxy Peel', '2019-07-29 12:34:47', '2019-07-29', 1, 1),
(187, 2, 'Lactic Peel', '2019-07-29 12:34:53', '2019-07-29', 1, 1),
(188, 2, 'Skin Biopsy', '2019-07-29 12:35:00', '2019-07-29', 1, 1),
(189, 2, 'FUT Hair Transplant', '2019-07-29 12:35:07', '2019-07-29', 1, 1),
(190, 2, 'Accupressure', '2019-07-29 12:35:14', '2019-07-29', 1, 1),
(191, 2, 'Rhinoplasty', '2019-07-29 12:35:18', '2019-07-29', 1, 1),
(192, 2, 'Eyelid Surgery', '2019-07-29 12:35:25', '2019-07-29', 1, 1),
(193, 2, 'Hair Transplant Surgery', '2019-07-29 12:35:32', '2019-07-29', 1, 1),
(194, 2, 'Vaginoplasty', '2019-07-29 12:35:38', '2019-07-29', 1, 1),
(195, 2, 'Dimple Creation', '2019-07-29 12:35:48', '2019-07-29', 1, 1),
(196, 2, 'Hymenoplasty', '2019-07-29 12:35:54', '2019-07-29', 1, 1),
(197, 2, 'Lip Augmentation', '2019-07-29 12:36:01', '2019-07-29', 1, 1),
(198, 2, 'Lip Reduction', '2019-07-29 12:36:08', '2019-07-29', 1, 1),
(199, 2, 'Liposuction', '2019-07-29 12:36:14', '2019-07-29', 1, 1),
(200, 2, 'Fat Injections (Transplant)', '2019-07-29 12:36:20', '2019-07-29', 1, 1),
(201, 2, 'Dermatosurgery', '2019-07-29 12:36:26', '2019-07-29', 1, 1),
(202, 2, 'Aesthetic Dermatology', '2019-07-29 12:36:33', '2019-07-29', 1, 1),
(203, 2, 'Ear Lobe Correction / Repair', '2019-07-29 12:36:38', '2019-07-29', 1, 1),
(204, 2, 'UltraLipo', '2019-07-29 12:36:45', '2019-07-29', 1, 1),
(205, 2, 'Melanocyte Transfer', '2019-07-29 12:36:51', '2019-07-29', 1, 1),
(206, 2, 'Double Chin Treatment', '2019-07-29 12:36:58', '2019-07-29', 1, 1),
(207, 2, 'Chin Augumentation (Mentoplasty)', '2019-07-29 12:37:05', '2019-07-29', 1, 1),
(208, 2, 'Theard Lift', '2019-07-29 12:37:11', '2019-07-29', 1, 1),
(209, 2, 'Weight Loss Diet Counseling', '2019-07-29 12:37:19', '2019-07-29', 1, 1),
(210, 2, 'Glycolic Peel', '2019-07-29 12:37:29', '2019-07-29', 1, 1),
(211, 2, 'Salicyclic Peel', '2019-07-29 12:37:36', '2019-07-29', 1, 1),
(212, 2, 'Wrinkle Treatment', '2019-07-29 12:37:41', '2019-07-29', 1, 1),
(213, 2, 'Skin Pulse Treatment', '2019-07-29 12:37:48', '2019-07-29', 1, 1),
(214, 2, 'Tinea Versicolor Treatment', '2019-07-29 12:37:55', '2019-07-29', 1, 1),
(215, 2, 'Brow Lift', '2019-07-29 12:38:02', '2019-07-29', 1, 1),
(216, 2, 'Calf Liposuction', '2019-07-29 12:38:09', '2019-07-29', 1, 1),
(217, 2, 'Forehead Lift', '2019-07-29 12:38:15', '2019-07-29', 1, 1),
(218, 2, 'Thigh Liposuction', '2019-07-29 12:38:22', '2019-07-29', 1, 1),
(219, 2, 'Buttock Liposuction', '2019-07-29 12:38:29', '2019-07-29', 1, 1),
(220, 2, 'Hand Rejuvenation', '2019-07-29 12:38:36', '2019-07-29', 1, 1),
(221, 2, 'Back Liposuction', '2019-07-29 12:38:46', '2019-07-29', 1, 1),
(222, 2, 'MesoBotox', '2019-07-29 12:38:52', '2019-07-29', 1, 1),
(223, 2, 'Low Level Laser Therapy', '2019-07-29 12:38:59', '2019-07-29', 1, 1),
(224, 2, 'Injectable Fillers', '2019-07-29 12:39:11', '2019-07-29', 1, 1),
(225, 2, 'Lipodissolve Injection', '2019-07-29 12:39:18', '2019-07-29', 1, 1),
(226, 2, 'MesoGlow', '2019-07-29 12:39:24', '2019-07-29', 1, 1),
(227, 2, 'Thicker Eye Lashes', '2019-07-29 12:39:30', '2019-07-29', 1, 1),
(228, 2, 'Strip Method', '2019-07-29 12:39:37', '2019-07-29', 1, 1),
(229, 2, 'FUE Stitch Less', '2019-07-29 12:39:43', '2019-07-29', 1, 1),
(230, 2, 'FUE Scar Less Method', '2019-07-29 12:39:49', '2019-07-29', 1, 1),
(231, 2, 'Acell Matrix Hair Transplantation', '2019-07-29 12:39:56', '2019-07-29', 1, 1),
(232, 2, 'Hair Multiplication', '2019-07-29 12:40:02', '2019-07-29', 1, 1),
(233, 2, 'Scalp Reduction', '2019-07-29 12:40:08', '2019-07-29', 1, 1),
(234, 2, 'Scalp Treatment', '2019-07-29 12:40:14', '2019-07-29', 1, 1),
(235, 2, 'Allergy Treatment', '2019-07-29 12:40:21', '2019-07-29', 1, 1),
(236, 2, 'Immunology', '2019-07-29 12:40:27', '2019-07-29', 1, 1),
(237, 2, 'Hair Weaving & Bonding', '2019-07-29 12:40:33', '2019-07-29', 1, 1),
(238, 2, 'Hair Regrowth', '2019-07-29 12:40:40', '2019-07-29', 1, 1),
(239, 2, 'Stem Cell Therapy', '2019-07-29 12:40:46', '2019-07-29', 1, 1),
(240, 2, 'Androgenetic Alopecia Treatment', '2019-07-29 12:40:54', '2019-07-29', 1, 1),
(241, 2, 'Baldness Treatment', '2019-07-29 12:41:01', '2019-07-29', 1, 1),
(242, 2, 'Hair Patch', '2019-07-29 12:41:07', '2019-07-29', 1, 1),
(243, 2, 'PRP Hair Transplantation', '2019-07-29 12:41:13', '2019-07-29', 1, 1),
(244, 2, 'Laser Hair Removal', '2019-07-29 12:41:19', '2019-07-29', 1, 1),
(245, 2, 'Skin Whitening', '2019-07-29 12:41:29', '2019-07-29', 1, 1),
(246, 2, 'Bacterial Skin Infection Treatment', '2019-07-29 12:41:37', '2019-07-29', 1, 1),
(247, 2, 'Cosmiatria', '2019-07-29 12:41:45', '2019-07-29', 1, 1),
(248, 3, 'Allergy Treatment', '2019-07-29 12:42:37', '2019-07-29', 1, 1),
(249, 3, 'Sinusitis', '2019-07-29 12:42:44', '2019-07-29', 1, 1),
(250, 3, 'Ear Wax (Cerumen) Removal', '2019-07-29 12:42:51', '2019-07-29', 1, 1),
(251, 3, 'Allergic Rhinitis', '2019-07-29 12:42:58', '2019-07-29', 1, 1),
(252, 3, 'Ear Pain', '2019-07-29 12:43:05', '2019-07-29', 1, 1),
(253, 3, 'Giddiness', '2019-07-29 12:43:25', '2019-07-29', 1, 1),
(254, 3, 'Foreign Body in Eyes, Nose and Throat', '2019-07-29 12:43:32', '2019-07-29', 1, 1),
(255, 3, 'General ENT Care', '2019-07-29 12:43:39', '2019-07-29', 1, 1),
(256, 3, 'Microsurgery of the Larynx', '2019-07-29 12:43:47', '2019-07-29', 1, 1),
(257, 3, 'Hearing Aid Fitting', '2019-07-29 12:43:55', '2019-07-29', 1, 1),
(258, 3, 'Vertigo and Headache Clinic', '2019-07-29 12:44:05', '2019-07-29', 1, 1),
(259, 3, 'Coflon Ear and Nose Piercing', '2019-07-29 12:44:12', '2019-07-29', 1, 1),
(260, 3, 'Head and Neck Tumor / Cancer Surgery', '2019-07-29 12:44:19', '2019-07-29', 1, 1),
(261, 3, 'Impedence Audiometry', '2019-07-29 12:44:26', '2019-07-29', 1, 1),
(262, 3, 'Nose Bleed Management', '2019-07-29 12:44:33', '2019-07-29', 1, 1),
(263, 3, 'Evaluation of Sleep Disorder', '2019-07-29 12:44:40', '2019-07-29', 1, 1),
(264, 3, 'Ear Micro Surgery', '2019-07-29 12:44:48', '2019-07-29', 1, 1),
(265, 3, 'Audiometry Test', '2019-07-29 12:44:55', '2019-07-29', 1, 1),
(266, 3, 'Video Laryngoscopy', '2019-07-29 12:45:01', '2019-07-29', 1, 1),
(267, 3, 'Foreign Body Removal', '2019-07-29 12:45:08', '2019-07-29', 1, 1),
(268, 3, 'Minor Cosmetic Procedures', '2019-07-29 12:45:15', '2019-07-29', 1, 1),
(269, 3, 'Rhinoplasty', '2019-07-29 12:45:21', '2019-07-29', 1, 1),
(270, 3, 'Functional Endoscopic Sinus Surgery - FESS', '2019-07-29 12:45:32', '2019-07-29', 1, 1),
(271, 3, 'Nasal Disorders', '2019-07-29 12:45:40', '2019-07-29', 1, 1),
(272, 3, 'Pediatric Otolarynology', '2019-07-29 12:45:47', '2019-07-29', 1, 1),
(273, 3, 'Hearing Loss', '2019-07-29 12:45:54', '2019-07-29', 1, 1),
(274, 3, 'Hearing,Speech Impairment', '2019-07-29 12:46:00', '2019-07-29', 1, 1),
(275, 3, 'Congenital Ear Problem Treatment', '2019-07-29 12:46:07', '2019-07-29', 1, 1),
(276, 3, 'Thyroplasty', '2019-07-29 12:46:14', '2019-07-29', 1, 1),
(277, 3, 'Nasal Endoscopy', '2019-07-29 12:46:28', '2019-07-29', 1, 1),
(278, 3, 'Laser Surgeries for Head and Neck Lesions', '2019-07-29 12:46:35', '2019-07-29', 1, 1),
(279, 3, 'Phonosurgery', '2019-07-29 12:48:49', '2019-07-29', 1, 1),
(280, 3, 'Eardrum Ruture Treatment', '2019-07-29 12:49:01', '2019-07-29', 1, 1),
(281, 3, 'Tonsillitis Treatment', '2019-07-29 12:49:07', '2019-07-29', 1, 1),
(282, 3, 'Myringoplasty', '2019-07-29 12:49:15', '2019-07-29', 1, 1),
(283, 3, 'Tonsillectomy', '2019-07-29 12:49:23', '2019-07-29', 1, 1),
(284, 3, 'Skill Base Surgery', '2019-07-29 12:49:31', '2019-07-29', 1, 1),
(285, 3, 'Orbital and Optic Nerve Decompression', '2019-07-29 12:49:37', '2019-07-29', 1, 1),
(286, 3, 'Facial Plastic Surgery', '2019-07-29 12:50:10', '2019-07-29', 1, 1),
(287, 3, 'Septorhinoplasty', '2019-07-29 12:50:17', '2019-07-29', 1, 1),
(288, 3, 'Surgery for Snoring Septoplasty', '2019-07-29 12:50:25', '2019-07-29', 1, 1),
(289, 3, 'Nasal and Sinus Allergy Care', '2019-07-29 12:50:38', '2019-07-29', 1, 1),
(290, 3, 'Headache Treatment', '2019-07-29 12:50:50', '2019-07-29', 1, 1),
(291, 3, 'Hearing Deficiency Assessment', '2019-07-29 12:50:57', '2019-07-29', 1, 1),
(292, 3, 'Head and Neck Infection Treatment', '2019-07-29 12:51:05', '2019-07-29', 1, 1),
(293, 3, 'ENT Checkup (General)', '2019-07-29 12:51:12', '2019-07-29', 1, 1),
(294, 3, 'Tinnitus Evaluation / Management', '2019-07-29 12:51:19', '2019-07-29', 1, 1),
(295, 3, 'Throat and Voice Problems', '2019-07-29 12:51:25', '2019-07-29', 1, 1),
(296, 3, 'Thyroid Surgery', '2019-07-29 12:51:32', '2019-07-29', 1, 1),
(297, 3, 'Obstructive Sleep Apnea', '2019-07-29 12:51:39', '2019-07-29', 1, 1),
(298, 3, 'Surgery for Snoring', '2019-07-29 12:51:47', '2019-07-29', 1, 1),
(299, 3, 'Sinus Surgery', '2019-07-29 12:51:54', '2019-07-29', 1, 1),
(300, 3, 'Frontal Sinus Surgery', '2019-07-29 12:52:01', '2019-07-29', 1, 1),
(301, 3, 'Otoplasty', '2019-07-29 12:52:08', '2019-07-29', 1, 1),
(302, 3, 'Parotid Surgery', '2019-07-29 12:52:14', '2019-07-29', 1, 1),
(303, 3, 'Reconstructive Middle Ear Surgery', '2019-07-29 12:52:21', '2019-07-29', 1, 1),
(304, 3, 'Microscopic Voice Surgery', '2019-07-29 12:52:28', '2019-07-29', 1, 1),
(305, 3, 'Ear Reconstructive Surgery', '2019-07-29 12:52:34', '2019-07-29', 1, 1),
(306, 3, 'Vocal Cord Surgery', '2019-07-29 12:52:41', '2019-07-29', 1, 1),
(307, 3, 'Thyroidectomy', '2019-07-29 12:52:48', '2019-07-29', 1, 1),
(308, 3, 'Cochlear Implants', '2019-07-29 12:52:59', '2019-07-29', 1, 1),
(309, 3, 'Ear Lobe Correction / Repair', '2019-07-29 12:53:14', '2019-07-29', 1, 1),
(310, 3, 'Nosebleed (Epistaxis) Treatment', '2019-07-29 12:53:25', '2019-07-29', 1, 1),
(311, 3, 'Electrophysiology Hearing', '2019-07-29 12:54:31', '2019-07-29', 1, 1),
(312, 3, 'Tongue Tie Release', '2019-07-29 12:54:37', '2019-07-29', 1, 1),
(313, 3, 'Nasal Septum Surgery', '2019-07-29 12:54:44', '2019-07-29', 1, 1),
(314, 3, 'Cosmetic Surgery', '2019-07-29 12:54:50', '2019-07-29', 1, 1),
(315, 3, 'Endoscopic Examination', '2019-07-29 12:54:59', '2019-07-29', 1, 1),
(316, 3, 'Ear and Nose Piercing', '2019-07-29 12:55:05', '2019-07-29', 1, 1),
(317, 3, 'Ear Lobe Repair (Torn Ear Lobe)', '2019-07-29 12:55:12', '2019-07-29', 1, 1),
(318, 3, 'Snoring Evaluation by Sleep Study', '2019-07-29 12:55:19', '2019-07-29', 1, 1),
(319, 3, 'Hearing Evaluation', '2019-07-29 12:55:26', '2019-07-29', 1, 1),
(320, 3, 'Pure Tone Audiometry', '2019-07-29 12:55:37', '2019-07-29', 1, 1),
(321, 3, 'Speech Therapy for Voice Disorder', '2019-07-29 12:55:44', '2019-07-29', 1, 1),
(322, 3, 'Speaking Difficulty', '2019-07-29 12:55:54', '2019-07-29', 1, 1),
(323, 3, 'Swallowing Problems', '2019-07-29 12:56:05', '2019-07-29', 1, 1),
(324, 3, 'Hearing, Speech Impairment', '2019-07-29 12:56:21', '2019-07-29', 1, 1),
(325, 3, 'Mouth Bleed', '2019-07-29 12:57:42', '2019-07-29', 1, 1),
(326, 3, 'Sleep Apnea', '2019-07-29 12:57:52', '2019-07-29', 1, 1),
(327, 3, 'Laryngoscopy', '2019-07-29 12:58:00', '2019-07-29', 1, 1),
(328, 3, 'Surgery of the Facial Nerve', '2019-07-29 14:16:14', '2019-07-29', 1, 1),
(329, 3, 'Voice Clinic and Speech Therapy', '2019-07-29 14:16:58', '2019-07-29', 1, 1),
(330, 3, 'Auditory Verbal Therapy for Cochlear Implant Patients', '2019-07-29 14:19:39', '2019-07-29', 1, 1),
(331, 3, 'Ear Drum Repair', '2019-07-29 15:16:26', '2019-07-29', 1, 1),
(332, 3, 'Diagnostic Nasal Endoscopy', '2019-07-29 15:16:37', '2019-07-29', 1, 1),
(333, 3, 'Micro Laryngeal Surgeries', '2019-07-29 15:16:44', '2019-07-29', 1, 1),
(334, 3, 'New Born Hearing and Screening', '2019-07-29 15:16:53', '2019-07-29', 1, 1),
(335, 3, 'Sudden Hearing Loss', '2019-07-29 15:17:00', '2019-07-29', 1, 1),
(336, 3, 'Tympanoplasty', '2019-07-29 15:17:07', '2019-07-29', 1, 1),
(337, 3, 'Septoplasty', '2019-07-29 15:17:18', '2019-07-29', 1, 1),
(338, 3, 'Otoacoustic Emission (OAE)', '2019-07-29 15:17:25', '2019-07-29', 1, 1),
(339, 3, 'Scar Revision Surgery', '2019-07-29 15:17:32', '2019-07-29', 1, 1),
(340, 3, 'Thyroid Disorder Treatment', '2019-07-29 15:17:46', '2019-07-29', 1, 1),
(341, 3, 'Grommet Insertion', '2019-07-29 15:17:53', '2019-07-29', 1, 1),
(342, 3, 'Laryngeal Biopsy', '2019-07-29 15:18:01', '2019-07-29', 1, 1),
(343, 3, 'Tracheostomy', '2019-07-29 15:18:08', '2019-07-29', 1, 1),
(344, 3, 'Laryngotracheal Anomalies', '2019-07-29 15:18:15', '2019-07-29', 1, 1),
(345, 3, 'Immunity Therapy', '2019-07-29 15:18:23', '2019-07-29', 1, 1),
(346, 3, 'CSF Rhinorrhoea Repair Surgery', '2019-07-29 15:18:30', '2019-07-29', 1, 1),
(347, 3, 'Hypophysectomy', '2019-07-29 15:18:37', '2019-07-29', 1, 1),
(348, 3, 'Facial Cosmetic Surgery', '2019-07-29 15:18:44', '2019-07-29', 1, 1),
(349, 3, 'Salivary Gland Surgery', '2019-07-29 15:18:51', '2019-07-29', 1, 1),
(350, 3, 'Stapedectomy', '2019-07-29 15:19:04', '2019-07-29', 1, 1),
(351, 3, 'Sinonasal Malignancies', '2019-07-29 15:19:11', '2019-07-29', 1, 1),
(352, 3, 'Balloon Sinuplasty', '2019-07-29 15:19:18', '2019-07-29', 1, 1),
(353, 3, 'Polysomnography', '2019-07-29 15:19:26', '2019-07-29', 1, 1),
(354, 3, 'Pillar Procedure', '2019-07-29 15:19:36', '2019-07-29', 1, 1),
(355, 3, 'Balance Exercises', '2019-07-29 15:19:44', '2019-07-29', 1, 1),
(356, 3, 'Computerised Spirometry (Pulmonary Function Test)', '2019-07-29 15:19:52', '2019-07-29', 1, 1),
(357, 3, 'Suction Wax Cleaning', '2019-07-29 15:19:58', '2019-07-29', 1, 1),
(358, 3, 'Microscopic Ear Examination', '2019-07-29 15:20:05', '2019-07-29', 1, 1),
(359, 3, 'Nose and Larynx Endoscopy', '2019-07-29 15:20:12', '2019-07-29', 1, 1),
(360, 3, 'Hearing Test - Audiometry and Tympanometry', '2019-07-29 15:20:30', '2019-07-29', 1, 1),
(361, 4, 'Endoscopy', '2019-07-29 15:21:49', '2019-07-29', 1, 1),
(362, 4, 'Colonoscopy', '2019-07-29 15:21:56', '2019-07-29', 1, 1),
(363, 4, 'Gastritis Treatment', '2019-07-29 15:22:04', '2019-07-29', 1, 1),
(364, 4, 'Loose Motion', '2019-07-29 15:22:11', '2019-07-29', 1, 1),
(365, 4, 'Constipation Treatment', '2019-07-29 15:22:19', '2019-07-29', 1, 1),
(366, 4, 'Vomit Blood', '2019-07-29 15:22:25', '2019-07-29', 1, 1),
(367, 4, 'Liver Disease Treatment', '2019-07-29 15:22:34', '2019-07-29', 1, 1),
(368, 4, 'Gastroscopy', '2019-07-29 15:22:42', '2019-07-29', 1, 1),
(369, 4, 'Piles Treatment (Non Surgical)', '2019-07-29 15:22:51', '2019-07-29', 1, 1),
(370, 4, 'Hernia Repair Surgery', '2019-07-29 15:22:58', '2019-07-29', 1, 1),
(371, 4, 'Abdominal Pain Treatment', '2019-07-29 15:23:06', '2019-07-29', 1, 1),
(372, 4, 'Hepato-Billary-Pancreatic', '2019-07-29 15:23:17', '2019-07-29', 1, 1),
(373, 4, 'Chronic Liver Disease', '2019-07-29 15:23:24', '2019-07-29', 1, 1),
(374, 4, 'Piles Surgery', '2019-07-29 15:23:31', '2019-07-29', 1, 1),
(375, 4, 'Bariatric (Gastric Bypass) Surgery', '2019-07-29 15:23:39', '2019-07-29', 1, 1),
(376, 4, 'Gastrointestinal Endoscopic Mucosal Resection', '2019-07-29 15:23:48', '2019-07-29', 1, 1),
(377, 4, 'Abdominal Surgery', '2019-07-29 15:24:03', '2019-07-29', 1, 1),
(378, 4, 'Intestine Surgery', '2019-07-29 15:24:14', '2019-07-29', 1, 1),
(379, 4, 'GI/HPB Surgery', '2019-07-29 15:24:20', '2019-07-29', 1, 1),
(380, 4, 'Fistula Treatment', '2019-07-29 15:24:28', '2019-07-29', 1, 1),
(381, 4, 'Laparoscopic Surgery', '2019-07-29 15:24:44', '2019-07-29', 1, 1),
(382, 4, 'Thyroid Surgery', '2019-07-29 15:24:52', '2019-07-29', 1, 1),
(383, 4, 'Fistula Surgery', '2019-07-29 15:25:01', '2019-07-29', 1, 1),
(384, 4, 'Minimally Invasive Surgery', '2019-07-29 15:25:09', '2019-07-29', 1, 1),
(385, 4, 'Colorectal Surgery', '2019-07-29 15:25:16', '2019-07-29', 1, 1),
(386, 4, 'Laparoscopic Giagnostica', '2019-07-29 15:25:23', '2019-07-29', 1, 1),
(387, 4, 'Small Surgical Procedures', '2019-07-29 15:25:32', '2019-07-29', 1, 1),
(388, 4, 'Biopsy', '2019-07-29 15:25:39', '2019-07-29', 1, 1),
(389, 4, 'Minor Surgery', '2019-07-29 15:25:46', '2019-07-29', 1, 1),
(390, 4, 'Endoscopic Surgery', '2019-07-29 15:25:55', '2019-07-29', 1, 1),
(391, 4, 'Endosurgery', '2019-07-29 15:26:04', '2019-07-29', 1, 1),
(392, 4, 'Laparoscopic Adjustable Gastric Band', '2019-07-29 15:26:11', '2019-07-29', 1, 1),
(393, 4, 'Gastric Balloon', '2019-07-29 15:26:18', '2019-07-29', 1, 1),
(394, 4, 'Laser Fissure Surgery', '2019-07-29 15:26:27', '2019-07-29', 1, 1),
(395, 4, 'Laser Piles Treatment', '2019-07-29 15:26:38', '2019-07-29', 1, 1),
(396, 4, 'Laser Fistula Treatment', '2019-07-29 15:26:45', '2019-07-29', 1, 1),
(397, 4, 'Gastric Plication', '2019-07-29 15:26:56', '2019-07-29', 1, 1),
(398, 4, 'Breast Reduction Surgery', '2019-07-29 15:27:05', '2019-07-29', 1, 1),
(399, 4, 'Obesity Surgery', '2019-07-29 15:27:13', '2019-07-29', 1, 1),
(400, 4, 'Inscisional Hernia', '2019-07-29 15:27:21', '2019-07-29', 1, 1),
(401, 4, 'Anal Fissure Surgery', '2019-07-29 15:27:28', '2019-07-29', 1, 1),
(402, 4, 'Anal Fissure Treatment', '2019-07-29 15:27:35', '2019-07-29', 1, 1),
(403, 4, 'Pilonidal', '2019-07-29 15:27:45', '2019-07-29', 1, 1),
(404, 4, 'Appendicitis Treatment', '2019-07-29 15:27:51', '2019-07-29', 1, 1),
(405, 4, 'Laparoscopic Appendicectomy', '2019-07-29 15:28:06', '2019-07-29', 1, 1),
(406, 4, 'Laparoscopic Hiatus Hernia Repair', '2019-07-29 15:28:12', '2019-07-29', 1, 1),
(407, 4, 'Laparoscopic Hernial Repair', '2019-07-29 15:28:19', '2019-07-29', 1, 1),
(408, 4, 'Hepatitis B Treatment', '2019-07-29 15:28:25', '2019-07-29', 1, 1),
(409, 4, 'ERCP', '2019-07-29 15:28:33', '2019-07-29', 1, 1),
(410, 4, 'Laparoscopic Sterilization', '2019-07-29 15:28:42', '2019-07-29', 1, 1),
(411, 4, 'Laparoscopic Sleeve Resection', '2019-07-29 15:28:50', '2019-07-29', 1, 1),
(412, 4, 'Circumcision', '2019-07-29 15:28:57', '2019-07-29', 1, 1),
(413, 4, 'Inflammatory Bowel Disease (IBD) Treatment', '2019-07-29 15:29:04', '2019-07-29', 1, 1),
(414, 4, 'Diabetic Food Treatment / Surgery', '2019-07-29 15:29:11', '2019-07-29', 1, 1),
(415, 4, 'Acidity', '2019-07-29 15:29:19', '2019-07-29', 1, 1),
(416, 4, 'Sebaceous Cyst Excision', '2019-07-29 15:29:26', '2019-07-29', 1, 1),
(417, 4, 'Liver Resection', '2019-07-29 15:29:34', '2019-07-29', 1, 1),
(418, 4, 'Cancer Surgery', '2019-07-29 15:29:41', '2019-07-29', 1, 1),
(419, 4, 'Stoma Care', '2019-07-29 15:29:48', '2019-07-29', 1, 1),
(420, 4, 'Gall Bladder Surgery', '2019-07-29 15:29:55', '2019-07-29', 1, 1),
(421, 4, 'Gall Bladder (Biliary) Stone Treatment', '2019-07-29 15:30:04', '2019-07-29', 1, 1),
(422, 4, 'Food Infection', '2019-07-29 15:30:12', '2019-07-29', 1, 1),
(423, 4, 'Abdominoplasty', '2019-07-29 15:30:20', '2019-07-29', 1, 1),
(424, 4, 'Abscess', '2019-07-29 15:30:27', '2019-07-29', 1, 1),
(425, 4, 'Varicose Veins Treatment', '2019-07-29 15:30:35', '2019-07-29', 1, 1),
(426, 4, 'Varicocele Surgery', '2019-07-29 15:30:42', '2019-07-29', 1, 1),
(427, 4, 'Hydrocele Treatment (Surgical)', '2019-07-29 15:30:50', '2019-07-29', 1, 1),
(428, 4, 'Breast Augmentation Surgery', '2019-07-29 15:30:57', '2019-07-29', 1, 1),
(429, 4, 'Non-Surgical Fat Loss', '2019-07-29 15:31:06', '2019-07-29', 1, 1),
(430, 4, 'Single Port Surgeries', '2019-07-29 15:31:14', '2019-07-29', 1, 1),
(431, 4, 'Laparotomy', '2019-07-29 15:31:23', '2019-07-29', 1, 1),
(432, 4, 'Trauma Surgery', '2019-07-29 15:31:39', '2019-07-29', 1, 1),
(433, 4, 'Pancreatitis Treatment', '2019-07-29 15:31:53', '2019-07-29', 1, 1),
(434, 4, 'Hepatitis C Treatment', '2019-07-29 15:32:02', '2019-07-29', 1, 1),
(435, 4, 'Hepatitis A Treatment', '2019-07-29 15:32:10', '2019-07-29', 1, 1),
(436, 4, 'Jaundice Treatment', '2019-07-29 15:32:18', '2019-07-29', 1, 1),
(437, 4, 'Hepatitis D Treatment', '2019-07-29 15:32:26', '2019-07-29', 1, 1),
(438, 4, 'Liver Surgery', '2019-07-29 15:32:34', '2019-07-29', 1, 1),
(439, 4, 'Splenectomy', '2019-07-29 15:32:45', '2019-07-29', 1, 1),
(440, 4, 'Inguinal Hernia', '2019-07-29 15:33:30', '2019-07-29', 1, 1),
(441, 4, 'Umbilical Hernia', '2019-07-29 15:33:41', '2019-07-29', 1, 1),
(442, 4, 'Capsule Endoscopy', '2019-07-29 15:33:49', '2019-07-29', 1, 1),
(443, 4, 'Single Baloon Enteroscopy', '2019-07-29 15:34:00', '2019-07-29', 1, 1),
(444, 4, 'Endoscopic Ultrasound with FNAC', '2019-07-29 15:34:08', '2019-07-29', 1, 1),
(445, 4, 'Metallic Stenting', '2019-07-29 15:34:15', '2019-07-29', 1, 1),
(446, 4, 'Variceal Banding', '2019-07-29 15:34:24', '2019-07-29', 1, 1),
(447, 4, 'Specialised Gastrointestinal Pathology', '2019-07-29 15:34:32', '2019-07-29', 1, 1),
(448, 4, 'Gastric Problems', '2019-07-29 15:34:39', '2019-07-29', 1, 1),
(449, 4, 'Gastroesophageal Reflux Disease (GERD)                          ', '2019-07-29 15:34:48', '2019-07-29', 1, 1),
(450, 4, 'Abdominal / Stomach Pain', '2019-07-29 15:34:56', '2019-07-29', 1, 1),
(451, 4, 'Bleeding in Stool', '2019-07-29 15:35:05', '2019-07-29', 1, 1),
(452, 4, 'Surgery for Ulcerative Colitis', '2019-07-29 15:35:16', '2019-07-29', 1, 1),
(453, 4, 'Intestinal Tuberculosis', '2019-07-29 15:35:25', '2019-07-29', 1, 1),
(454, 4, 'Cirrhosis of Liver', '2019-07-29 15:35:33', '2019-07-29', 1, 1),
(455, 4, 'Liver Tumors', '2019-07-29 15:35:46', '2019-07-29', 1, 1),
(456, 4, 'Cancer of Food Pipe', '2019-07-29 15:35:54', '2019-07-29', 1, 1),
(457, 4, 'Cancer of Stomach', '2019-07-29 15:36:08', '2019-07-29', 1, 1),
(458, 4, 'Cancer of Colon', '2019-07-29 15:36:17', '2019-07-29', 1, 1),
(459, 4, 'Malabsorption', '2019-07-29 15:36:24', '2019-07-29', 1, 1),
(460, 4, 'Diarrhea', '2019-07-29 15:36:35', '2019-07-29', 1, 1),
(461, 4, 'Swallowing Therpy', '2019-07-29 15:36:43', '2019-07-29', 1, 1),
(462, 4, 'Achalasia Cardia', '2019-07-29 15:37:02', '2019-07-29', 1, 1),
(463, 4, 'Barrets Esophagus', '2019-07-29 15:37:30', '2019-07-29', 1, 1),
(464, 4, 'Helicobacter Pylori', '2019-07-29 15:37:44', '2019-07-29', 1, 1),
(465, 4, 'Ulcer Disease', '2019-07-29 15:37:52', '2019-07-29', 1, 1),
(466, 4, 'Alcoholic Liver Disease', '2019-07-29 15:37:59', '2019-07-29', 1, 1),
(467, 4, 'Ascites', '2019-07-29 15:38:08', '2019-07-29', 1, 1),
(468, 4, 'Fatty Liver', '2019-07-29 15:38:16', '2019-07-29', 1, 1),
(469, 4, 'Steatosis', '2019-07-29 15:38:24', '2019-07-29', 1, 1),
(470, 4, 'Ulcerative Colitis Treatment', '2019-07-29 15:38:38', '2019-07-29', 1, 1),
(471, 4, 'Pancreas Transplantation', '2019-07-29 15:38:47', '2019-07-29', 1, 1),
(472, 4, 'Irritable Bowel Syndrome (IBS)', '2019-07-29 15:38:55', '2019-07-29', 1, 1),
(473, 4, 'Diverticular Disease', '2019-07-29 15:39:04', '2019-07-29', 1, 1),
(474, 4, 'Hemorrhoids Treatment', '2019-07-29 15:39:50', '2019-07-29', 1, 1),
(475, 4, 'Crohns Disease', '2019-07-29 15:40:04', '2019-07-29', 1, 1),
(476, 4, 'Gastroenteritis Treatment', '2019-07-29 15:40:11', '2019-07-29', 1, 1),
(477, 4, 'Wilsons Disease Treatment', '2019-07-29 15:40:26', '2019-07-29', 1, 1),
(478, 4, 'Bladder Cancer Surgery', '2019-07-29 15:40:34', '2019-07-29', 1, 1),
(479, 4, 'Banding', '2019-07-29 15:40:42', '2019-07-29', 1, 1),
(480, 4, 'Stent Removal', '2019-07-29 15:40:52', '2019-07-29', 1, 1),
(481, 4, 'Advanced Endoscopy', '2019-07-29 15:41:02', '2019-07-29', 1, 1),
(482, 4, 'Metabolic Liver Disease', '2019-07-29 15:41:11', '2019-07-29', 1, 1),
(483, 4, 'Motility Disorders', '2019-07-29 15:41:18', '2019-07-29', 1, 1),
(484, 4, 'GI Cancer', '2019-07-29 15:41:27', '2019-07-29', 1, 1),
(485, 4, 'IBD Therapeutic Endoscopy', '2019-07-29 15:41:38', '2019-07-29', 1, 1),
(486, 4, 'Pediatric Endoscopy', '2019-07-29 15:41:45', '2019-07-29', 1, 1),
(487, 4, 'Surgical Oncology', '2019-07-29 15:41:53', '2019-07-29', 1, 1),
(488, 4, 'Weight Loss Surgery', '2019-07-29 15:42:00', '2019-07-29', 1, 1),
(489, 4, 'Laser Hemorrhoids', '2019-07-29 15:42:08', '2019-07-29', 1, 1),
(490, 4, 'Ascitic Fluid Aspiration', '2019-07-29 15:42:15', '2019-07-29', 1, 1),
(491, 4, 'Pseudocysts', '2019-07-29 15:42:29', '2019-07-29', 1, 1),
(492, 4, 'Esophageal and Gastric Varices', '2019-07-29 15:42:42', '2019-07-29', 1, 1),
(493, 4, 'Anal Fistula', '2019-07-29 15:42:53', '2019-07-29', 1, 1),
(494, 4, 'Rectal Bioscopy', '2019-07-29 15:43:01', '2019-07-29', 1, 1),
(495, 4, 'Satretta Therapy', '2019-07-29 15:43:09', '2019-07-29', 1, 1),
(496, 4, 'Perianal Sepsis', '2019-07-29 15:43:17', '2019-07-29', 1, 1),
(497, 4, 'Anal Abscess', '2019-07-29 15:43:26', '2019-07-29', 1, 1),
(498, 4, 'Foreign Body Obstruction', '2019-07-29 15:43:33', '2019-07-29', 1, 1),
(499, 4, 'Rectal Prolapsed', '2019-07-29 15:43:42', '2019-07-29', 1, 1),
(500, 4, 'Colorectal Cancer', '2019-07-29 15:43:50', '2019-07-29', 1, 1),
(501, 4, 'Argan Plasma Coagulation', '2019-07-29 15:43:59', '2019-07-29', 1, 1),
(502, 4, 'Endoscopic Balloon Placement', '2019-07-29 15:44:06', '2019-07-29', 1, 1),
(503, 4, 'GI Banding', '2019-07-29 15:44:15', '2019-07-29', 1, 1),
(504, 4, 'Instant Reflux', '2019-07-29 15:44:22', '2019-07-29', 1, 1),
(505, 4, 'Fibroscan', '2019-07-29 15:44:30', '2019-07-29', 1, 1),
(506, 4, 'Faecal Incontinence', '2019-07-29 15:44:47', '2019-07-29', 1, 1),
(507, 4, 'Anal Fissure', '2019-07-29 15:44:56', '2019-07-29', 1, 1),
(508, 4, 'Gastric Cancer', '2019-07-29 15:45:03', '2019-07-29', 1, 1),
(509, 4, 'Esophageal Cancer', '2019-07-29 15:45:11', '2019-07-29', 1, 1),
(510, 4, 'Portal Hypertension', '2019-07-29 15:45:21', '2019-07-29', 1, 1),
(511, 4, 'Flexible Sigmoidoscopy', '2019-07-29 15:45:30', '2019-07-29', 1, 1),
(512, 4, 'Sphincter of Oddi Dysfunction', '2019-07-29 15:45:39', '2019-07-29', 1, 1),
(513, 4, 'Dysentry', '2019-07-29 15:45:48', '2019-07-29', 1, 1),
(514, 4, 'Hydatid Cyst', '2019-07-29 15:45:56', '2019-07-29', 1, 1),
(515, 4, 'Piles', '2019-07-29 15:46:11', '2019-07-29', 1, 1),
(516, 4, 'Esophagitis', '2019-07-29 15:46:20', '2019-07-29', 1, 1),
(517, 4, 'Esophageal Stricture', '2019-07-29 15:46:29', '2019-07-29', 1, 1),
(518, 4, 'Endocrine Surgery', '2019-07-29 15:48:38', '2019-07-29', 1, 1),
(519, 4, 'GI Mobility and Physiology', '2019-07-29 15:48:50', '2019-07-29', 1, 1),
(520, 4, 'Defactory Disorders and Constipation', '2019-07-29 15:48:59', '2019-07-29', 1, 1),
(521, 4, 'Blood Cancer Surgery', '2019-07-29 15:49:08', '2019-07-29', 1, 1),
(522, 4, 'Rhinoplasty', '2019-07-29 15:50:12', '2019-07-29', 1, 1),
(523, 4, 'Vaser Liposuction', '2019-07-29 15:50:22', '2019-07-29', 1, 1),
(524, 5, 'High Risk Pregnancy Care', '2019-07-30 05:33:19', '2019-07-30', 1, 1),
(525, 5, 'Infertility Evaluation / Treatment', '2019-07-30 05:35:17', '2019-07-30', 1, 1),
(526, 5, 'Intra-Uterine Insemination (IUI)', '2019-07-30 05:35:36', '2019-07-30', 1, 1),
(527, 5, 'D&C (Dilation and Curettage)', '2019-07-30 05:35:52', '2019-07-30', 1, 1),
(528, 5, 'Normal Vaginal Delivery (NVD)', '2019-07-30 05:36:04', '2019-07-30', 1, 1),
(529, 5, 'Gynae Problems', '2019-07-30 05:36:17', '2019-07-30', 1, 1),
(530, 5, 'Pap Smear', '2019-07-30 05:36:24', '2019-07-30', 1, 1),
(531, 5, 'Maternal Care / Checkup', '2019-07-30 05:36:33', '2019-07-30', 1, 1),
(532, 5, 'Menopause Clinic', '2019-07-30 05:36:42', '2019-07-30', 1, 1),
(533, 5, 'Contraception Advice', '2019-07-30 05:36:50', '2019-07-30', 1, 1),
(534, 5, 'Abortion / Medical Termination of Pregnancy (MTP)', '2019-07-30 05:36:59', '2019-07-30', 1, 1),
(535, 5, 'Pre-Marital Counselling', '2019-07-30 05:37:13', '2019-07-30', 1, 1),
(536, 5, 'Colposcopy Examination', '2019-07-30 05:37:22', '2019-07-30', 1, 1),
(537, 5, 'Diseases in Pregnancy', '2019-07-30 05:37:31', '2019-07-30', 1, 1),
(538, 5, 'PCOD / PCOS Treatment', '2019-07-30 05:37:39', '2019-07-30', 1, 1),
(539, 5, 'Cervical Cerclage', '2019-07-30 05:37:50', '2019-07-30', 1, 1),
(540, 5, 'Aminocentesis', '2019-07-30 05:38:03', '2019-07-30', 1, 1),
(541, 5, 'Mirena (hormonal Lud)', '2019-07-30 05:38:17', '2019-07-30', 1, 1),
(542, 5, 'Caesarean Section (C Section)', '2019-07-30 05:38:30', '2019-07-30', 1, 1),
(543, 5, 'Hysterectomy (Abdominal / Vaginal)', '2019-07-30 05:38:39', '2019-07-30', 1, 1),
(544, 5, 'Tubectomy / Tubal Ligation', '2019-07-30 05:38:48', '2019-07-30', 1, 1),
(545, 5, 'Laparoscopic Surgery', '2019-07-30 05:38:57', '2019-07-30', 1, 1),
(546, 5, 'Artificial Insemination', '2019-07-30 05:39:08', '2019-07-30', 1, 1),
(547, 5, 'Embryo Donor Program', '2019-07-30 05:40:06', '2019-07-30', 1, 1),
(548, 5, 'Natural Cycle IVF', '2019-07-30 05:40:14', '2019-07-30', 1, 1),
(549, 5, 'Vaccination / Immunization', '2019-07-30 05:40:22', '2019-07-30', 1, 1),
(550, 5, 'Obstetrics / Antenatal Care', '2019-07-30 05:40:30', '2019-07-30', 1, 1),
(551, 5, 'Breast Examination', '2019-07-30 05:40:42', '2019-07-30', 1, 1),
(552, 5, 'Vagina Surgery', '2019-07-30 05:40:51', '2019-07-30', 1, 1),
(553, 5, 'Dysmenorrhea Treatment', '2019-07-30 05:40:59', '2019-07-30', 1, 1),
(554, 5, 'Epidurals', '2019-07-30 05:41:08', '2019-07-30', 1, 1),
(555, 5, 'Urinary Incontinence (UI) Treatment', '2019-07-30 05:41:24', '2019-07-30', 1, 1),
(556, 5, 'Ultrasound Scan', '2019-07-30 05:41:33', '2019-07-30', 1, 1),
(557, 5, 'Hysteroscopy', '2019-07-30 05:41:54', '2019-07-30', 1, 1),
(559, 5, 'Endometrial Receptivity Assay', '2019-07-30 05:43:02', '2019-07-30', 1, 1),
(560, 5, 'Endometrial Assay', '2019-07-30 05:43:28', '2019-07-30', 1, 1),
(561, 5, 'Preimplantation Genetic Diagnosis (PGD)', '2019-07-30 06:11:06', '2019-07-30', 1, 1),
(562, 5, 'Adiana System', '2019-07-30 06:11:24', '2019-07-30', 1, 1),
(563, 5, 'In-Vitro-Fertilization (IVF)', '2019-07-30 06:11:35', '2019-07-30', 1, 1),
(564, 5, 'Unilateral Salpingo-Oophorectomy', '2019-07-30 06:11:43', '2019-07-30', 1, 1),
(565, 5, 'Intracytoplasmic Sperm Injection (ICSI)', '2019-07-30 06:11:51', '2019-07-30', 1, 1),
(566, 5, 'Egg Donor', '2019-07-30 06:11:59', '2019-07-30', 1, 1),
(567, 5, 'Well Women Health Check', '2019-07-30 06:12:07', '2019-07-30', 1, 1),
(568, 5, 'Breast Cancer Screening', '2019-07-30 06:12:16', '2019-07-30', 1, 1),
(569, 5, 'Specialty Diagnostics in Tuberculosis', '2019-07-30 06:12:25', '2019-07-30', 1, 1),
(570, 5, 'HIV Counselling', '2019-07-30 06:12:33', '2019-07-30', 1, 1),
(571, 5, 'Electrocardiography (ECG)', '2019-07-30 06:12:41', '2019-07-30', 1, 1),
(572, 5, 'Fever Management', '2019-07-30 06:12:49', '2019-07-30', 1, 1),
(573, 5, 'Diabetes Management', '2019-07-30 06:13:15', '2019-07-30', 1, 1),
(574, 5, 'Fertility Treatment', '2019-07-30 06:13:23', '2019-07-30', 1, 1),
(575, 5, 'Hymenoplasty', '2019-07-30 06:13:34', '2019-07-30', 1, 1),
(576, 5, 'Obstetrics Problems', '2019-07-30 06:13:52', '2019-07-30', 1, 1),
(577, 5, 'Pre and Post Delivery Care', '2019-07-30 06:14:03', '2019-07-30', 1, 1),
(578, 5, 'Female Infertility Treatment', '2019-07-30 06:14:10', '2019-07-30', 1, 1),
(579, 5, 'Female Sexual Problems', '2019-07-30 06:14:21', '2019-07-30', 1, 1),
(580, 5, 'Pregnant Women Counselling', '2019-07-30 06:14:29', '2019-07-30', 1, 1),
(581, 5, 'Fetal Monitoring', '2019-07-30 06:14:37', '2019-07-30', 1, 1),
(582, 5, 'Epidural - Pain Less Labour', '2019-07-30 06:14:45', '2019-07-30', 1, 1),
(583, 5, 'Family Planning / Sterilisation', '2019-07-30 06:14:54', '2019-07-30', 1, 1),
(584, 5, 'Stem-cell Banking', '2019-07-30 06:15:02', '2019-07-30', 1, 1),
(585, 5, 'Gynaecological Endoscopy', '2019-07-30 06:15:12', '2019-07-30', 1, 1),
(586, 5, 'Pregnancy Exercise', '2019-07-30 06:15:19', '2019-07-30', 1, 1),
(587, 5, 'Child Birth Education', '2019-07-30 06:15:28', '2019-07-30', 1, 1),
(588, 5, 'Wellness', '2019-07-30 06:15:36', '2019-07-30', 1, 1),
(589, 5, 'Antenatal Immunisation', '2019-07-30 06:15:44', '2019-07-30', 1, 1),
(590, 5, 'Antenatal Counselling', '2019-07-30 06:15:52', '2019-07-30', 1, 1),
(591, 5, 'Adoloscent Gynecology', '2019-07-30 06:15:59', '2019-07-30', 1, 1),
(592, 5, 'Cervical Cancer Vaccination', '2019-07-30 06:16:10', '2019-07-30', 1, 1),
(593, 5, 'IUI Procedures', '2019-07-30 06:16:18', '2019-07-30', 1, 1),
(594, 5, 'Gynaec Consultation', '2019-07-30 06:16:40', '2019-07-30', 1, 1),
(595, 5, 'Basic and Advanced Laproscopy', '2019-07-30 06:16:48', '2019-07-30', 1, 1),
(596, 5, 'Normal and Operative Deliveries', '2019-07-30 06:16:56', '2019-07-30', 1, 1),
(597, 5, 'Insertion of CUT', '2019-07-30 06:17:04', '2019-07-30', 1, 1),
(598, 5, 'Ultrasound / Ultrasonography', '2019-07-30 06:17:12', '2019-07-30', 1, 1),
(599, 5, '3D / 4D Ultrasound', '2019-07-30 06:17:20', '2019-07-30', 1, 1),
(600, 5, 'Lactation Counselling', '2019-07-30 06:17:35', '2019-07-30', 1, 1),
(601, 5, 'Growth Scan', '2019-07-30 06:17:43', '2019-07-30', 1, 1),
(602, 5, 'Nuchal Transluscency Scan', '2019-07-30 06:18:06', '2019-07-30', 1, 1),
(603, 5, 'Nutrition for Pregnant Women', '2019-07-30 06:18:15', '2019-07-30', 1, 1),
(604, 5, 'Menstrual Disorders in Adolescent Girls', '2019-07-30 06:18:23', '2019-07-30', 1, 1),
(605, 5, 'Endometriosis Treatment', '2019-07-30 06:18:31', '2019-07-30', 1, 1),
(606, 5, 'Menopause Advice', '2019-07-30 06:18:39', '2019-07-30', 1, 1),
(607, 5, 'Maternal Fetal Medicine', '2019-07-30 06:18:46', '2019-07-30', 1, 1),
(608, 5, 'Teenage Gynecological Problems', '2019-07-30 06:18:53', '2019-07-30', 1, 1),
(609, 5, 'Adolescent Health Care', '2019-07-30 06:19:01', '2019-07-30', 1, 1),
(610, 5, 'Pre-Conception Counselling', '2019-07-30 06:19:09', '2019-07-30', 1, 1),
(611, 5, 'Hormonal Imbalance Treatment', '2019-07-30 06:19:17', '2019-07-30', 1, 1),
(612, 5, 'Osteoporosis Treatment', '2019-07-30 06:19:24', '2019-07-30', 1, 1),
(613, 5, 'Laparoscopic Sterilization', '2019-07-30 06:19:32', '2019-07-30', 1, 1),
(614, 5, 'Polycystic Ovary Syndrome in Adolescence', '2019-07-30 06:19:41', '2019-07-30', 1, 1),
(615, 5, 'Laparoscopic Myomectomy', '2019-07-30 06:19:48', '2019-07-30', 1, 1),
(616, 5, 'Laparoscopy Hysterectomy', '2019-07-30 06:19:56', '2019-07-30', 1, 1),
(617, 5, 'Uterine Bleeding', '2019-07-30 06:20:04', '2019-07-30', 1, 1),
(618, 5, 'Uterine Fibroid Treatment', '2019-07-30 06:20:12', '2019-07-30', 1, 1),
(619, 5, 'Chromosomal Abnormality Screening', '2019-07-30 06:20:20', '2019-07-30', 1, 1),
(620, 5, 'Uterus / Uterine Prolapse Treatment', '2019-07-30 06:20:28', '2019-07-30', 1, 1),
(621, 5, 'Abnormal Uterine Bleeding (AUB)', '2019-07-30 06:20:36', '2019-07-30', 1, 1),
(622, 5, 'Post Pregnancy Classes', '2019-07-30 06:20:43', '2019-07-30', 1, 1),
(623, 5, 'Instrumental Delivery', '2019-07-30 06:20:51', '2019-07-30', 1, 1),
(624, 5, 'Lower Segment Caesarean Section (LSCS)', '2019-07-30 06:20:59', '2019-07-30', 1, 1),
(625, 5, 'Complicated Caesarean Section (Placenta Pervia, Fibroid Uterus, Breech, Placenta Accreta, Twins Etc..)', '2019-07-30 06:21:07', '2019-07-30', 1, 1),
(626, 5, 'Vaginal Prolapse', '2019-07-30 06:21:15', '2019-07-30', 1, 1),
(627, 5, 'NST', '2019-07-30 06:21:23', '2019-07-30', 1, 1),
(628, 5, 'Vaginal Birth After Cesarean (VBAC)', '2019-07-30 06:21:31', '2019-07-30', 1, 1),
(629, 5, 'Hysteroscopic Myomectomy', '2019-07-30 06:21:39', '2019-07-30', 1, 1),
(630, 5, 'Pre-natal Screening (for Unborn)', '2019-07-30 06:22:00', '2019-07-30', 1, 1),
(631, 5, 'Pregnancy with PCOD', '2019-07-30 06:22:08', '2019-07-30', 1, 1),
(632, 5, 'Double Market Test (1st Trimester Screening for Genetic Abnormality in Pregnancy)', '2019-07-30 06:22:15', '2019-07-30', 1, 1),
(633, 5, 'Pregnancy Hypertension (Preeclampsia / Eclampsia)', '2019-07-30 06:22:23', '2019-07-30', 1, 1),
(634, 5, 'HPV Vaccination', '2019-07-30 06:22:33', '2019-07-30', 1, 1),
(635, 5, 'Vaginoplasty', '2019-07-30 06:22:40', '2019-07-30', 1, 1),
(636, 5, 'Choromosomal Abnormality Screening', '2019-07-30 06:22:48', '2019-07-30', 1, 1),
(637, 5, 'Ovary Removal Surgery', '2019-07-30 06:22:59', '2019-07-30', 1, 1),
(638, 5, 'Adolescence Gynae Problems', '2019-07-30 06:23:07', '2019-07-30', 1, 1),
(639, 5, 'Copper-T / Multi Load Insertion and Removal', '2019-07-30 06:23:15', '2019-07-30', 1, 1),
(640, 5, 'Women Counselling', '2019-07-30 06:23:23', '2019-07-30', 1, 1),
(641, 5, 'Gynecomastia Treatment / Surgery', '2019-07-30 06:23:32', '2019-07-30', 1, 1),
(642, 5, 'Cordocentesis', '2019-07-30 06:23:42', '2019-07-30', 1, 1),
(643, 5, 'Fertility Conserving Procedures', '2019-07-30 06:23:53', '2019-07-30', 1, 1),
(644, 5, 'Clinical Embryologist', '2019-07-30 06:24:01', '2019-07-30', 1, 1),
(645, 5, 'ICSI', '2019-07-30 06:24:09', '2019-07-30', 1, 1),
(646, 5, 'Donor Insemination Surrogacy', '2019-07-30 06:24:22', '2019-07-30', 1, 1),
(647, 5, 'Fertilization', '2019-07-30 06:24:29', '2019-07-30', 1, 1),
(648, 5, 'Hormonal Therapy', '2019-07-30 06:24:37', '2019-07-30', 1, 1),
(649, 5, 'Reproduction', '2019-07-30 06:24:44', '2019-07-30', 1, 1),
(650, 5, 'IUD Placement', '2019-07-30 06:24:52', '2019-07-30', 1, 1),
(651, 5, 'Regular Pregnancy Check up / Post Delivery Check up', '2019-07-30 06:25:58', '2019-07-30', 1, 1),
(652, 5, 'Amenorrhoea Treatment', '2019-07-30 06:26:07', '2019-07-30', 1, 1),
(653, 5, 'Cooper T Insertion and Removal', '2019-07-30 06:26:15', '2019-07-30', 1, 1),
(654, 5, 'Gynae Checkup for Menstural Problems', '2019-07-30 06:26:25', '2019-07-30', 1, 1),
(655, 5, 'IVF Consultation', '2019-07-30 06:26:33', '2019-07-30', 1, 1),
(656, 5, 'Quad Screen', '2019-07-30 06:26:44', '2019-07-30', 1, 1),
(657, 5, 'Gynea Laparoscopy', '2019-07-30 06:26:52', '2019-07-30', 1, 1),
(658, 5, 'Vaginal Hysterectomy', '2019-07-30 06:27:00', '2019-07-30', 1, 1),
(659, 5, 'Male Infertility Treatment', '2019-07-30 06:27:09', '2019-07-30', 1, 1),
(660, 6, 'Nerve Conduction Studies (NCS)', '2019-07-30 06:58:07', '2019-07-30', 1, 1),
(661, 6, 'Headache Management', '2019-07-30 06:58:20', '2019-07-30', 1, 1),
(662, 6, 'Neck Pain', '2019-07-30 06:58:29', '2019-07-30', 1, 1),
(663, 6, 'Back Pain', '2019-07-30 06:58:37', '2019-07-30', 1, 1),
(664, 6, 'Fibromyalgia Treatment', '2019-07-30 06:58:45', '2019-07-30', 1, 1),
(665, 6, 'Disk Slip', '2019-07-30 06:58:53', '2019-07-30', 1, 1),
(666, 6, 'Numbness and Tingling', '2019-07-30 06:59:00', '2019-07-30', 1, 1),
(667, 6, 'Paralysis', '2019-07-30 06:59:08', '2019-07-30', 1, 1),
(668, 6, 'Electroencephalogram (EEG)', '2019-07-30 06:59:15', '2019-07-30', 1, 1),
(669, 6, 'Canalith Repositioning (CR)', '2019-07-30 06:59:23', '2019-07-30', 1, 1);
INSERT INTO `doctor_services` (`service_id`, `cate_id`, `service_name`, `add_datetime`, `modify_date`, `status`, `general_service`) VALUES
(670, 6, 'Multple Sclerosis Treatment', '2019-07-30 06:59:31', '2019-07-30', 1, 1),
(671, 6, 'Peripheral Neuropathy', '2019-07-30 06:59:43', '2019-07-30', 1, 1),
(672, 6, 'Stroke Treatment', '2019-07-30 06:59:50', '2019-07-30', 1, 1),
(673, 6, 'Hydrocephalus', '2019-07-30 06:59:58', '2019-07-30', 1, 1),
(674, 6, 'Spinal Disorders', '2019-07-30 07:00:07', '2019-07-30', 1, 1),
(675, 6, 'Electromyography (EMG)', '2019-07-30 07:00:27', '2019-07-30', 1, 1),
(676, 6, 'Nerve and Muscle Disorders', '2019-07-30 07:00:35', '2019-07-30', 1, 1),
(677, 6, 'Migraine Treatment', '2019-07-30 07:00:42', '2019-07-30', 1, 1),
(678, 6, 'Parkinsons Disease Treatment', '2019-07-30 07:01:06', '2019-07-30', 1, 1),
(679, 6, 'Complex Regional Pain Syndrome', '2019-07-30 07:01:21', '2019-07-30', 1, 1),
(680, 6, 'Vertigo / Dizziness', '2019-07-30 07:01:34', '2019-07-30', 1, 1),
(681, 6, 'Epilepsy Treatment', '2019-07-30 07:01:42', '2019-07-30', 1, 1),
(682, 6, 'Spasticity', '2019-07-30 07:01:50', '2019-07-30', 1, 1),
(683, 6, 'Dermentia Treatment', '2019-07-30 07:01:58', '2019-07-30', 1, 1),
(684, 6, 'Nerver and Muscle Disorders', '2019-07-30 07:02:06', '2019-07-30', 1, 1),
(685, 6, 'Neurological Problems', '2019-07-30 07:02:14', '2019-07-30', 1, 1),
(686, 6, 'Alzheimers Disease', '2019-07-30 07:02:37', '2019-07-30', 1, 1),
(687, 6, 'Epilepsy Surgery', '2019-07-30 07:02:45', '2019-07-30', 1, 1),
(688, 6, 'Sleep Disorder Treatment', '2019-07-30 07:02:54', '2019-07-30', 1, 1),
(689, 6, 'Vagus Nerve Stimulation (Epilepsy)', '2019-07-30 07:03:01', '2019-07-30', 1, 1),
(690, 6, 'Movement Disorders', '2019-07-30 07:03:09', '2019-07-30', 1, 1),
(691, 6, 'Expert Evaluation on Neurological Disorders', '2019-07-30 07:03:17', '2019-07-30', 1, 1),
(692, 6, 'Neuromuscular Disorders', '2019-07-30 07:03:24', '2019-07-30', 1, 1),
(693, 6, 'Electrophysiologic Evaluation', '2019-07-30 07:03:33', '2019-07-30', 1, 1),
(694, 6, 'Ataxia and Disorders of Balance', '2019-07-30 07:04:22', '2019-07-30', 1, 1),
(695, 6, 'Autonomic Disorders', '2019-07-30 07:04:30', '2019-07-30', 1, 1),
(696, 6, 'Multple Sclerosis and Demyelinating Disorders', '2019-07-30 07:04:39', '2019-07-30', 1, 1),
(697, 6, 'Chorea', '2019-07-30 07:04:51', '2019-07-30', 1, 1),
(698, 6, 'Numbness of Hand', '2019-07-30 07:05:00', '2019-07-30', 1, 1),
(699, 6, 'Head Injury', '2019-07-30 07:05:07', '2019-07-30', 1, 1),
(700, 6, 'Brain Tumors', '2019-07-30 07:05:16', '2019-07-30', 1, 1),
(701, 6, 'Spinal Cord Stimulation (Paddle Lead)', '2019-07-30 07:05:23', '2019-07-30', 1, 1),
(702, 6, 'Spinal Tap', '2019-07-30 07:05:32', '2019-07-30', 1, 1),
(703, 6, 'Drying Vessels (Sclerotherapy)', '2019-07-30 07:05:41', '2019-07-30', 1, 1),
(704, 6, 'Brain Surgery', '2019-07-30 07:05:50', '2019-07-30', 1, 1),
(705, 6, 'Deep Brain Stimulation', '2019-07-30 07:06:00', '2019-07-30', 1, 1),
(706, 6, 'Cranial Cyber-Knife Radiosurgery', '2019-07-30 07:06:09', '2019-07-30', 1, 1),
(707, 6, 'Vascular Brain Diseases', '2019-07-30 07:06:18', '2019-07-30', 1, 1),
(708, 6, 'Forgetfulness', '2019-07-30 07:06:30', '2019-07-30', 1, 1),
(709, 6, 'Cervical Posterior Foraminotomy', '2019-07-30 07:06:39', '2019-07-30', 1, 1),
(710, 6, 'DBS Surgery', '2019-07-30 07:06:49', '2019-07-30', 1, 1),
(711, 6, 'Botox Injection', '2019-07-30 07:06:59', '2019-07-30', 1, 1),
(712, 6, 'Pituitary Diseases', '2019-07-30 07:07:08', '2019-07-30', 1, 1),
(713, 6, 'Huntingtons Disease', '2019-07-30 07:07:20', '2019-07-30', 1, 1),
(714, 6, 'Seizures', '2019-07-30 07:07:29', '2019-07-30', 1, 1),
(715, 6, 'Spinocerebellar Ataxia', '2019-07-30 07:09:01', '2019-07-30', 1, 1),
(716, 6, 'Tremors', '2019-07-30 07:08:02', '2019-07-30', 1, 1),
(717, 6, 'Friedreich Ataxia', '2019-07-30 07:08:13', '2019-07-30', 1, 1),
(718, 6, 'Cerebral Infraction', '2019-07-30 07:09:11', '2019-07-30', 1, 1),
(719, 6, 'Cerebral Venous Thrombosis', '2019-07-30 07:09:19', '2019-07-30', 1, 1),
(720, 6, 'Lateral Lumbar Interbody Fusion (XLIF)', '2019-07-30 07:09:27', '2019-07-30', 1, 1),
(721, 6, 'Lumbar Radiofrequency Neurotomy', '2019-07-30 07:09:35', '2019-07-30', 1, 1),
(722, 6, 'Lumbar Spinal Stenosis', '2019-07-30 07:09:43', '2019-07-30', 1, 1),
(723, 6, 'Spondylosis', '2019-07-30 07:09:51', '2019-07-30', 1, 1),
(724, 6, 'Memory Loss', '2019-07-30 07:09:59', '2019-07-30', 1, 1),
(725, 6, 'Memory Problem', '2019-07-30 07:10:07', '2019-07-30', 1, 1),
(726, 6, 'Foot Drop', '2019-07-30 07:10:14', '2019-07-30', 1, 1),
(727, 6, 'Myasthenia Gravis', '2019-07-30 07:10:23', '2019-07-30', 1, 1),
(728, 6, 'Encephalitis', '2019-07-30 07:10:31', '2019-07-30', 1, 1),
(729, 6, 'Brain Infection', '2019-07-30 07:10:41', '2019-07-30', 1, 1),
(730, 6, 'GB Syndrome', '2019-07-30 07:10:49', '2019-07-30', 1, 1),
(731, 6, 'Insomnia Treatment', '2019-07-30 07:10:58', '2019-07-30', 1, 1),
(732, 6, 'Giddiness', '2019-07-30 07:11:10', '2019-07-30', 1, 1),
(733, 6, 'Pre-Surgical Evaluation of Medically Refractory Epilepsy', '2019-07-30 07:11:18', '2019-07-30', 1, 1),
(734, 6, 'Brain Tumor Surgery', '2019-07-30 07:11:27', '2019-07-30', 1, 1),
(735, 6, 'Aortic Anuerysm Sugery / Endovascular Repair', '2019-07-30 10:22:25', '2019-07-30', 1, 1),
(736, 6, 'Spine Surgery', '2019-07-30 10:22:35', '2019-07-30', 1, 1),
(737, 6, 'Peripheral Neuro Surgery', '2019-07-30 10:22:44', '2019-07-30', 1, 1),
(738, 6, 'Cerebrovascular Surgery', '2019-07-30 10:22:52', '2019-07-30', 1, 1),
(739, 6, 'Brain Suite', '2019-07-30 10:23:01', '2019-07-30', 1, 1),
(740, 6, 'Pediatric Neurosugeon', '2019-07-30 10:23:11', '2019-07-30', 1, 1),
(741, 6, 'Dementia Treatment', '2019-07-30 10:23:20', '2019-07-30', 1, 1),
(742, 6, 'Laminectomy', '2019-07-30 10:23:28', '2019-07-30', 1, 1),
(743, 6, 'Ventriculoperitoneal Shunt', '2019-07-30 10:23:37', '2019-07-30', 1, 1),
(744, 6, 'Brain Mapping', '2019-07-30 10:23:46', '2019-07-30', 1, 1),
(745, 6, 'Cerebrospinal Fluid Shunt', '2019-07-30 10:23:56', '2019-07-30', 1, 1),
(746, 6, 'Brain Aneursym Surgery', '2019-07-30 10:24:04', '2019-07-30', 1, 1),
(747, 6, 'Digital Subraction Angiography (DSA)', '2019-07-30 10:24:16', '2019-07-30', 1, 1),
(748, 6, 'Video EEG', '2019-07-30 10:25:01', '2019-07-30', 1, 1),
(749, 6, 'Intravenous', '2019-07-30 10:25:10', '2019-07-30', 1, 1),
(750, 6, 'Intra - Arterial Thrombolysis', '2019-07-30 10:25:30', '2019-07-30', 1, 1),
(751, 6, 'Endovascular Neurosurgery', '2019-07-30 10:25:39', '2019-07-30', 1, 1),
(752, 6, 'Spinal and Cerebral Tumor Emolization', '2019-07-30 10:25:50', '2019-07-30', 1, 1),
(753, 6, 'Skull Base Surgery', '2019-07-30 10:25:58', '2019-07-30', 1, 1),
(754, 6, 'Spine Tumor', '2019-07-30 10:26:06', '2019-07-30', 1, 1),
(755, 6, 'Brain Hemorrhage', '2019-07-30 10:26:15', '2019-07-30', 1, 1),
(756, 6, 'Brain Aneursym Treatment', '2019-07-30 10:26:25', '2019-07-30', 1, 1),
(757, 6, 'Brain Arteriovenous Malformation', '2019-07-30 10:26:34', '2019-07-30', 1, 1),
(758, 6, 'Sciatica Treatment', '2019-07-30 10:26:43', '2019-07-30', 1, 1),
(759, 6, 'Micro Endoscopic Discectomy', '2019-07-30 10:29:18', '2019-07-30', 1, 1),
(760, 6, 'Anterior Cervical Discectomy and Fusion', '2019-07-30 10:29:26', '2019-07-30', 1, 1),
(761, 6, 'Carotid Cavernous Fistula Treatment', '2019-07-30 10:29:35', '2019-07-30', 1, 1),
(762, 6, 'Minimally-Invasive Lumbar Microdecompression', '2019-07-30 10:29:44', '2019-07-30', 1, 1),
(763, 6, 'Posterior Lumbar Interbody Fusion (PLIF)', '2019-07-30 10:29:53', '2019-07-30', 1, 1),
(764, 6, 'Nerve Block', '2019-07-30 10:30:01', '2019-07-30', 1, 1),
(765, 6, 'Traumatic Brain Injury (TBI) Treatment', '2019-07-30 10:30:10', '2019-07-30', 1, 1),
(766, 6, 'Trigeminal Neuralgia', '2019-07-30 10:30:19', '2019-07-30', 1, 1),
(767, 6, 'Brain Vascular Bypass Surgery', '2019-07-30 10:30:28', '2019-07-30', 1, 1),
(768, 6, 'Herniated Disc', '2019-07-30 10:30:36', '2019-07-30', 1, 1),
(769, 6, 'Laminectomy (Cervical) with Fusion', '2019-07-30 10:30:45', '2019-07-30', 1, 1),
(770, 6, 'Brain Pain', '2019-07-30 10:30:53', '2019-07-30', 1, 1),
(771, 6, 'Neck and Spine Biopsy', '2019-07-30 10:31:01', '2019-07-30', 1, 1),
(772, 6, 'Carpel Tunnel Syndrome', '2019-07-30 10:31:10', '2019-07-30', 1, 1),
(773, 6, 'Brain Dural Arteriovenous Fistula Embolization', '2019-07-30 10:31:18', '2019-07-30', 1, 1),
(774, 6, 'Musculoskeletal Pain Management', '2019-07-30 10:31:26', '2019-07-30', 1, 1),
(775, 6, 'Head and Neck Tumor Embolization', '2019-07-30 10:31:35', '2019-07-30', 1, 1),
(776, 6, 'Giloma', '2019-07-30 10:31:44', '2019-07-30', 1, 1),
(777, 6, 'Radiculopathy', '2019-07-30 10:31:53', '2019-07-30', 1, 1),
(778, 6, 'Spinal Surgery', '2019-07-30 10:32:01', '2019-07-30', 1, 1),
(779, 6, 'Spinal Fusion', '2019-07-30 10:33:12', '2019-07-30', 1, 1),
(780, 6, 'Spinal Diseases', '2019-07-30 10:33:23', '2019-07-30', 1, 1),
(781, 6, 'Lumbar Puncture', '2019-07-30 10:33:32', '2019-07-30', 1, 1),
(782, 6, 'Carotid Body Tumor Embolization', '2019-07-30 10:34:00', '2019-07-30', 1, 1),
(783, 6, 'Glioblastoma', '2019-07-30 10:34:08', '2019-07-30', 1, 1),
(784, 6, 'Astrocytoma', '2019-07-30 10:34:16', '2019-07-30', 1, 1),
(785, 6, 'Brain Aneurysm Coiling', '2019-07-30 10:34:25', '2019-07-30', 1, 1),
(786, 6, 'Aneursym Surgery', '2019-07-30 10:34:33', '2019-07-30', 1, 1),
(787, 6, 'Carotid Stenting', '2019-07-30 10:34:42', '2019-07-30', 1, 1),
(788, 6, 'Carotid Endarterectomy', '2019-07-30 10:34:51', '2019-07-30', 1, 1),
(789, 6, 'Spinal Disc Surgery', '2019-07-30 10:35:03', '2019-07-30', 1, 1),
(790, 6, 'Spinal Cord Injury Treatment', '2019-07-30 10:35:33', '2019-07-30', 1, 1),
(791, 6, 'Spinal DSA', '2019-07-30 10:35:43', '2019-07-30', 1, 1),
(792, 6, 'Dural AV Fistula', '2019-07-30 10:35:52', '2019-07-30', 1, 1),
(793, 6, 'Acoustic Schwannoma', '2019-07-30 10:36:04', '2019-07-30', 1, 1),
(794, 6, 'Cavernoma', '2019-07-30 10:36:13', '2019-07-30', 1, 1),
(795, 6, 'Vertigo Treatment', '2019-07-30 10:36:23', '2019-07-30', 1, 1),
(796, 6, 'Orbital Tumor', '2019-07-30 10:36:34', '2019-07-30', 1, 1),
(797, 6, 'Hand Weakness', '2019-07-30 10:36:44', '2019-07-30', 1, 1),
(798, 6, 'Leg Weakness', '2019-07-30 10:36:53', '2019-07-30', 1, 1),
(799, 6, 'Oligodendroglioma', '2019-07-30 10:38:21', '2019-07-30', 1, 1),
(800, 6, 'Meningioma', '2019-07-30 10:38:30', '2019-07-30', 1, 1),
(801, 6, 'Spine Decompression', '2019-07-30 10:38:50', '2019-07-30', 1, 1),
(802, 6, 'Tension Headache', '2019-07-30 10:39:01', '2019-07-30', 1, 1),
(803, 6, 'Mechanical Thrombectomy', '2019-07-30 10:39:09', '2019-07-30', 1, 1),
(804, 6, 'Brain Bleed', '2019-07-30 10:39:19', '2019-07-30', 1, 1),
(805, 6, 'Brain Clot', '2019-07-30 10:39:28', '2019-07-30', 1, 1),
(806, 6, 'CSF Rhinorrhoes Repair Surgery', '2019-07-30 10:39:37', '2019-07-30', 1, 1),
(807, 6, 'Brain Bypass', '2019-07-30 10:39:50', '2019-07-30', 1, 1),
(808, 6, 'EC - IC Bypass', '2019-07-30 10:40:00', '2019-07-30', 1, 1),
(809, 6, 'STA - MCA Bypass', '2019-07-30 10:40:10', '2019-07-30', 1, 1),
(810, 6, 'Chiari Malformation', '2019-07-30 10:40:21', '2019-07-30', 1, 1),
(811, 6, 'Middle Cerebral Artery', '2019-07-30 10:40:31', '2019-07-30', 1, 1),
(812, 6, 'Internal Carotid Artery', '2019-07-30 10:40:40', '2019-07-30', 1, 1),
(813, 6, 'Subdural Hematoma', '2019-07-30 10:40:49', '2019-07-30', 1, 1),
(814, 6, 'Extradural Hematoma', '2019-07-30 10:40:59', '2019-07-30', 1, 1),
(815, 6, 'Intraventricular Hematoma', '2019-07-30 10:41:08', '2019-07-30', 1, 1),
(816, 6, 'Acute Neurology', '2019-07-30 10:41:17', '2019-07-30', 1, 1),
(817, 6, 'Clinical Neuro - Physiology', '2019-07-30 10:41:26', '2019-07-30', 1, 1),
(818, 6, 'Neuro Rehabilitation', '2019-07-30 10:41:35', '2019-07-30', 1, 1),
(819, 6, 'Electro Diagnosis of Nerves and Muscles', '2019-07-30 10:41:43', '2019-07-30', 1, 1),
(820, 6, 'Dystonia', '2019-07-30 10:41:52', '2019-07-30', 1, 1),
(821, 6, 'Botox Treatment for Neurological Disorders', '2019-07-30 10:42:02', '2019-07-30', 1, 1),
(822, 7, 'Glaucoma Evaluation / Treatment', '2019-07-30 13:05:52', '2019-07-30', 1, 1),
(823, 7, 'Pediatric', '2019-07-30 13:06:01', '2019-07-30', 1, 1),
(824, 7, 'Canaloplasty', '2019-07-30 13:06:14', '2019-07-30', 1, 1),
(825, 7, 'LASIK Eye Surgery', '2019-07-30 13:06:22', '2019-07-30', 1, 1),
(826, 7, 'Eye Muscle Surgery', '2019-07-30 13:06:29', '2019-07-30', 1, 1),
(827, 7, 'Eyelid Surgery', '2019-07-30 13:06:38', '2019-07-30', 1, 1),
(828, 7, 'Eye Surgery', '2019-07-30 13:06:46', '2019-07-30', 1, 1),
(829, 7, 'Corneal Transplantation', '2019-07-30 13:06:55', '2019-07-30', 1, 1),
(830, 7, 'Retina Surgery and Lasik', '2019-07-30 13:07:02', '2019-07-30', 1, 1),
(831, 7, 'Corneal Surgery', '2019-07-30 13:07:13', '2019-07-30', 1, 1),
(832, 7, 'Vitreoretinal Surgery', '2019-07-30 13:07:22', '2019-07-30', 1, 1),
(833, 7, 'Visual Field Test', '2019-07-30 13:07:29', '2019-07-30', 1, 1),
(834, 7, 'Corneal Ulcer Treatment', '2019-07-30 13:07:39', '2019-07-30', 1, 1),
(835, 7, 'Reduced Vision', '2019-07-30 13:07:48', '2019-07-30', 1, 1),
(836, 7, 'Refractive Surgery', '2019-07-30 13:07:56', '2019-07-30', 1, 1),
(837, 7, 'Oculoplastic Surgery', '2019-07-30 13:08:11', '2019-07-30', 1, 1),
(838, 7, 'Orbital Surgery', '2019-07-30 13:08:18', '2019-07-30', 1, 1),
(839, 7, 'Anterior Segment Surgery', '2019-07-30 13:08:31', '2019-07-30', 1, 1),
(840, 7, 'Cataract Surgery', '2019-07-30 13:08:40', '2019-07-30', 1, 1),
(841, 7, 'Teeth Straightening / Braces', '2019-07-30 13:08:48', '2019-07-30', 1, 1),
(842, 7, 'Orbital Trauma', '2019-07-30 13:08:57', '2019-07-30', 1, 1),
(843, 7, 'Nasolacrimal Duct Obstruction', '2019-07-30 13:09:09', '2019-07-30', 1, 1),
(844, 7, 'Corneal Collagen Cross-Linking', '2019-07-30 13:09:17', '2019-07-30', 1, 1),
(845, 7, 'Yag Iridotomy', '2019-07-30 13:09:24', '2019-07-30', 1, 1),
(846, 7, 'Trabeculectomy', '2019-07-30 13:09:35', '2019-07-30', 1, 1),
(847, 7, 'Pediatric Glaucoma Management', '2019-07-30 13:09:50', '2019-07-30', 1, 1),
(848, 7, 'Age-Related Macular Degeneration Treatment', '2019-07-30 13:09:56', '2019-07-30', 1, 1),
(849, 7, 'Avastin Injections', '2019-07-30 13:10:04', '2019-07-30', 1, 1),
(850, 7, 'Fundus Fluorescein Angiography', '2019-07-30 13:10:11', '2019-07-30', 1, 1),
(851, 7, 'Diabetic Eye Checkup', '2019-07-30 13:10:22', '2019-07-30', 1, 1),
(852, 7, 'Diabetic Retinopathy Screening / Treatment', '2019-07-30 13:10:32', '2019-07-30', 1, 1),
(853, 7, 'Phacoemulsification Surgery', '2019-07-30 13:10:39', '2019-07-30', 1, 1),
(854, 7, 'Macular', '2019-07-30 13:10:46', '2019-07-30', 1, 1),
(855, 7, 'Retina Examination', '2019-07-30 13:10:54', '2019-07-30', 1, 1),
(856, 7, 'Eye Checkup - General', '2019-07-30 13:11:54', '2019-07-30', 1, 1),
(857, 7, 'High End CSO Slit Lamp', '2019-07-30 13:12:05', '2019-07-30', 1, 1),
(858, 7, 'Sonomed A Scan', '2019-07-30 13:12:24', '2019-07-30', 1, 1),
(859, 7, 'Optical Coherence Tomography (OCT)', '2019-07-30 13:12:33', '2019-07-30', 1, 1),
(860, 7, 'Keratoplasty', '2019-07-30 13:12:40', '2019-07-30', 1, 1),
(861, 7, 'Octopus Visual Field Analyser', '2019-07-30 13:12:49', '2019-07-30', 1, 1),
(862, 7, 'Neuro Ophthalmology', '2019-07-30 13:12:59', '2019-07-30', 1, 1),
(863, 7, 'Retinal Detachment Surgery', '2019-07-30 13:13:11', '2019-07-30', 1, 1),
(864, 7, 'Glaucoma Valve Implantation', '2019-07-30 13:13:20', '2019-07-30', 1, 1),
(865, 7, 'Uveitis', '2019-07-30 13:13:29', '2019-07-30', 1, 1),
(866, 7, 'Orbital Decompression Surgery for Thyroid Eye Disease', '2019-07-30 13:13:37', '2019-07-30', 1, 1),
(867, 7, 'Lacrimal sac Surgeries', '2019-07-30 13:13:46', '2019-07-30', 1, 1),
(868, 7, 'Botox', '2019-07-30 13:13:55', '2019-07-30', 1, 1),
(869, 7, 'Tonometry', '2019-07-30 13:14:05', '2019-07-30', 1, 1),
(870, 7, 'Ocular Trauma', '2019-07-30 13:14:14', '2019-07-30', 1, 1),
(871, 7, 'Tumours', '2019-07-30 13:14:22', '2019-07-30', 1, 1),
(872, 7, 'Orbits', '2019-07-30 13:14:30', '2019-07-30', 1, 1),
(873, 7, 'Refractive Errors', '2019-07-30 13:14:38', '2019-07-30', 1, 1),
(874, 8, 'De-Addiction and Rehabilitation', '2019-07-30 13:15:19', '2019-07-30', 1, 1),
(875, 8, 'Child Guidance Clinic', '2019-07-30 13:15:30', '2019-07-30', 1, 1),
(876, 8, 'Counselling and Psychotherapy', '2019-07-30 13:15:37', '2019-07-30', 1, 1),
(877, 8, 'Emotional and Behavioral Problems', '2019-07-30 13:15:44', '2019-07-30', 1, 1),
(878, 8, 'Suicide Prevention', '2019-07-30 13:15:56', '2019-07-30', 1, 1),
(879, 8, 'Seizure Prevention', '2019-07-30 13:16:04', '2019-07-30', 1, 1),
(880, 8, 'Memory Clinic', '2019-07-30 13:16:13', '2019-07-30', 1, 1),
(881, 8, 'Clinical Hypnotherapy', '2019-07-30 13:16:36', '2019-07-30', 1, 1),
(882, 8, 'Relationship Counselling', '2019-07-30 13:16:46', '2019-07-30', 1, 1),
(883, 8, 'Migraine Treatment', '2019-07-30 13:16:55', '2019-07-30', 1, 1),
(884, 8, 'Chronic Pain Treatment', '2019-07-30 13:17:04', '2019-07-30', 1, 1),
(885, 8, 'Spiritual Psychiatry', '2019-07-30 13:17:13', '2019-07-30', 1, 1),
(886, 8, 'Stammering and Bed Wetting', '2019-07-30 13:17:20', '2019-07-30', 1, 1),
(887, 8, 'Relaxation Training', '2019-07-30 13:17:31', '2019-07-30', 1, 1),
(888, 8, 'Career Counselling', '2019-07-30 13:17:39', '2019-07-30', 1, 1),
(889, 8, 'Gediatric Psychiatry', '2019-07-30 13:17:47', '2019-07-30', 1, 1),
(890, 8, 'Anger Management', '2019-07-30 13:17:53', '2019-07-30', 1, 1),
(891, 8, 'Cognitive Behavioral Therapy (CBT)', '2019-07-30 13:18:01', '2019-07-30', 1, 1),
(892, 8, 'Premarital Counselling', '2019-07-30 13:18:09', '2019-07-30', 1, 1),
(893, 8, 'Psychotherapy Adult', '2019-07-30 13:18:18', '2019-07-30', 1, 1),
(894, 8, 'Loss of Interest', '2019-07-30 13:26:11', '2019-07-30', 1, 1),
(895, 8, 'Grief Counselling', '2019-07-30 13:26:20', '2019-07-30', 1, 1),
(896, 8, 'Sleep Disturbance', '2019-07-30 13:26:28', '2019-07-30', 1, 1),
(897, 8, 'De-Addiction', '2019-07-30 13:26:35', '2019-07-30', 1, 1),
(898, 8, 'Personality Assessment', '2019-07-30 13:26:43', '2019-07-30', 1, 1),
(899, 8, 'Psychosexual Problems', '2019-07-30 13:26:52', '2019-07-30', 1, 1),
(900, 8, 'IQ Assessment', '2019-07-30 13:27:00', '2019-07-30', 1, 1),
(901, 8, 'Hypnotherapy', '2019-07-30 13:27:06', '2019-07-30', 1, 1),
(902, 8, 'Post Traumatic Stress Disorder (PTSD)', '2019-07-30 13:27:13', '2019-07-30', 1, 1),
(903, 8, 'Geriatric Healthcare', '2019-07-30 13:27:19', '2019-07-30', 1, 1),
(904, 8, 'Insomnia (Sleeplessness)', '2019-07-30 13:27:26', '2019-07-30', 1, 1),
(906, 8, 'Behaviours and Thought Problems', '2019-07-30 13:28:17', '2019-07-30', 1, 1),
(907, 8, 'Loneliness', '2019-07-30 13:28:26', '2019-07-30', 1, 1),
(908, 8, 'Anxiety Disorders Treatment', '2019-07-30 13:29:13', '2019-07-30', 1, 1),
(909, 8, 'De-Addiction Counselling', '2019-07-30 13:29:22', '2019-07-30', 1, 1),
(910, 8, 'Adolescent Medicine', '2019-07-30 13:29:31', '2019-07-30', 1, 1),
(911, 8, 'Family Problems', '2019-07-30 13:29:40', '2019-07-30', 1, 1),
(912, 8, 'Chronic Health Issues Management', '2019-07-30 13:30:11', '2019-07-30', 1, 1),
(913, 8, 'Parenting Issues and Doubts', '2019-07-30 13:30:32', '2019-07-30', 1, 1),
(914, 8, 'Early Parenting Issues', '2019-07-30 13:30:41', '2019-07-30', 1, 1),
(915, 8, 'Concentration Problems', '2019-07-30 13:30:53', '2019-07-30', 1, 1),
(916, 8, 'Crisis Management', '2019-07-30 13:31:01', '2019-07-30', 1, 1),
(917, 8, 'Electroconvulsive Therapy (ECT)', '2019-07-30 13:31:16', '2019-07-30', 1, 1),
(918, 8, 'Low Confidence', '2019-07-30 13:31:24', '2019-07-30', 1, 1),
(919, 8, 'Diseases in Pregnancy', '2019-07-30 13:31:33', '2019-07-30', 1, 1),
(920, 8, 'Emotional Outbursts', '2019-07-30 13:31:42', '2019-07-30', 1, 1),
(921, 8, 'Suicidal Behavior', '2019-07-30 13:31:49', '2019-07-30', 1, 1),
(922, 8, 'Drug Abuse and De-Addiction Therapy', '2019-07-30 13:31:58', '2019-07-30', 1, 1),
(923, 8, 'Nicotine / Tobacco (Smoking) De-Addiction Treatment', '2019-07-30 13:32:08', '2019-07-30', 1, 1),
(924, 8, 'Depression Treatment', '2019-07-30 13:32:15', '2019-07-30', 1, 1),
(925, 8, 'Abnormal, Unusual, Strange Behavior', '2019-07-30 13:32:24', '2019-07-30', 1, 1),
(926, 8, 'Marriage / Marital Counselling', '2019-07-30 13:32:34', '2019-07-30', 1, 1),
(927, 8, 'Nightmares / Bad Dreams', '2019-07-30 13:32:41', '2019-07-30', 1, 1),
(928, 8, 'Obsessive Compulsive Disorder (OCD) Treatment', '2019-07-30 13:32:51', '2019-07-30', 1, 1),
(929, 8, 'Withdrawal Symptoms Management', '2019-07-30 13:32:58', '2019-07-30', 1, 1),
(930, 8, 'Antisocial Behavior', '2019-07-30 13:34:03', '2019-07-30', 1, 1),
(931, 8, 'Stress Management', '2019-07-30 13:34:11', '2019-07-30', 1, 1),
(932, 8, 'Bipolar Disorder Treatment', '2019-07-30 13:34:19', '2019-07-30', 1, 1),
(933, 8, 'Online Counselling', '2019-07-30 13:34:27', '2019-07-30', 1, 1),
(934, 8, 'Unexplained Physical Symptoms', '2019-07-30 13:34:35', '2019-07-30', 1, 1),
(935, 8, 'Child and Adolescent Problems', '2019-07-30 13:34:41', '2019-07-30', 1, 1),
(937, 8, 'Schizophrenia Treatment', '2019-07-30 13:35:29', '2019-07-30', 1, 1),
(938, 8, 'Sexologist', '2019-07-30 13:35:44', '2019-07-30', 1, 1),
(939, 8, 'Epilepsy Treatment', '2019-07-30 13:35:52', '2019-07-30', 1, 1),
(940, 8, 'Headache Management', '2019-07-30 13:36:00', '2019-07-30', 1, 1),
(941, 8, 'Video EEG', '2019-07-30 13:36:07', '2019-07-30', 1, 1),
(942, 8, 'Nerve and Muscle Disorders', '2019-07-30 13:36:14', '2019-07-30', 1, 1),
(943, 8, 'Biofeedback Therapy ', '2019-07-30 13:36:22', '2019-07-30', 1, 1),
(944, 8, 'ADHD', '2019-07-30 13:36:29', '2019-07-30', 1, 1),
(945, 8, 'Attention Problems', '2019-07-30 13:36:38', '2019-07-30', 1, 1),
(946, 8, 'Autism', '2019-07-30 13:36:58', '2019-07-30', 1, 1),
(947, 8, 'Autism Spectrum Disorder', '2019-07-30 13:37:08', '2019-07-30', 1, 1),
(948, 8, 'Slow Learning', '2019-07-30 13:37:17', '2019-07-30', 1, 1),
(949, 8, 'Learning Disability', '2019-07-30 13:37:25', '2019-07-30', 1, 1),
(950, 8, 'Sex Education', '2019-07-30 13:37:33', '2019-07-30', 1, 1),
(951, 8, 'Eating Disorder', '2019-07-30 13:37:40', '2019-07-30', 1, 1),
(952, 8, 'Anorexia Nervosa', '2019-07-30 14:11:30', '2019-07-30', 1, 1),
(953, 8, 'Bullimia Nervosa', '2019-07-30 14:11:56', '2019-07-30', 1, 1),
(954, 8, 'Kleptomania', '2019-07-30 14:12:05', '2019-07-30', 1, 1),
(955, 8, 'Trichology', '2019-07-30 14:12:17', '2019-07-30', 1, 1),
(956, 8, 'Paraphilia', '2019-07-30 14:30:49', '2019-07-30', 1, 1),
(957, 8, 'Low Energy Level', '2019-07-30 14:30:58', '2019-07-30', 1, 1),
(958, 8, 'Violence, Aggression, Suspicions', '2019-07-30 14:31:09', '2019-07-30', 1, 1),
(959, 8, 'Assault Behavior', '2019-07-30 14:31:35', '2019-07-30', 1, 1),
(960, 8, 'Violent Patient Management', '2019-07-30 14:31:46', '2019-07-30', 1, 1),
(961, 8, 'Talking to Self', '2019-07-30 14:31:54', '2019-07-30', 1, 1),
(962, 8, 'Laughing to Self', '2019-07-30 14:32:03', '2019-07-30', 1, 1),
(963, 8, 'Suspiciousness', '2019-07-30 14:32:10', '2019-07-30', 1, 1),
(964, 8, 'Catharsis', '2019-07-30 14:32:17', '2019-07-30', 1, 1),
(965, 8, 'Mental Retardation', '2019-07-30 14:32:24', '2019-07-30', 1, 1),
(966, 8, 'Sleep Related Disorders', '2019-07-30 14:32:30', '2019-07-30', 1, 1),
(967, 8, 'Narcissm', '2019-07-30 14:32:41', '2019-07-30', 1, 1),
(968, 8, 'ERTMS', '2019-07-30 14:32:48', '2019-07-30', 1, 1),
(969, 8, 'Psychotherapy for Couples', '2019-07-30 14:32:53', '2019-07-30', 1, 1),
(970, 8, 'Polysomnography', '2019-07-30 14:33:00', '2019-07-30', 1, 1),
(971, 8, 'Brief Psychodynamic Therapy', '2019-07-30 14:33:06', '2019-07-30', 1, 1),
(972, 8, 'Dementia Treatment', '2019-07-30 14:33:12', '2019-07-30', 1, 1),
(973, 8, 'Personality Disorder Treatment', '2019-07-30 14:33:19', '2019-07-30', 1, 1),
(974, 8, 'Substance Abuse', '2019-07-30 14:33:25', '2019-07-30', 1, 1),
(975, 8, 'Mental Health', '2019-07-30 14:33:32', '2019-07-30', 1, 1),
(976, 8, 'Anger Control', '2019-07-30 14:33:40', '2019-07-30', 1, 1),
(977, 8, 'Affective and Emotional Difficulties', '2019-07-30 14:34:08', '2019-07-30', 1, 1),
(978, 8, 'Counselling for Marital Problems', '2019-07-30 14:34:14', '2019-07-30', 1, 1),
(979, 8, 'Unexplained Pain and Physical Complaints', '2019-07-30 14:34:34', '2019-07-30', 1, 1),
(980, 8, 'Psychotic Disorders', '2019-07-30 14:34:41', '2019-07-30', 1, 1),
(981, 8, 'Holistic Psychiatry', '2019-07-30 14:34:48', '2019-07-30', 1, 1),
(982, 8, 'Addiciton Psychiatry', '2019-07-30 14:34:56', '2019-07-30', 1, 1),
(983, 8, 'De-Addiction Assessment and Treatment', '2019-07-30 14:35:03', '2019-07-30', 1, 1),
(984, 8, 'Medico-Legal Reporting - Civil and Criminal Cases', '2019-07-30 14:35:15', '2019-07-30', 1, 1),
(985, 8, 'Corporate Seminar and Speaking Events', '2019-07-30 14:35:23', '2019-07-30', 1, 1),
(986, 8, 'Occupational Health Intervention', '2019-07-30 14:35:38', '2019-07-30', 1, 1),
(987, 8, 'Depression Counselling', '2019-07-30 14:35:50', '2019-07-30', 1, 1),
(988, 8, 'Mood Disorders', '2019-07-30 14:36:17', '2019-07-30', 1, 1),
(989, 8, 'Sleep Disorder Treatment', '2019-07-30 14:36:24', '2019-07-30', 1, 1),
(990, 8, 'Anxiety Disorders Counselling', '2019-07-30 14:36:32', '2019-07-30', 1, 1),
(991, 8, 'Schizophrenia and Other Psychotic Disorders', '2019-07-30 14:36:39', '2019-07-30', 1, 1),
(992, 8, 'Psychosomatic Illness', '2019-07-30 14:36:48', '2019-07-30', 1, 1),
(993, 8, 'Body Dysmorphic Disorder (BDD)', '2019-07-30 14:36:55', '2019-07-30', 1, 1),
(994, 8, 'Smoking Cessation', '2019-07-30 14:37:01', '2019-07-30', 1, 1),
(995, 8, 'Rehabilitation', '2019-07-30 14:37:08', '2019-07-30', 1, 1),
(996, 8, 'Perinatal and Postnatal Mental Health', '2019-07-30 14:37:14', '2019-07-30', 1, 1),
(997, 8, 'Child Protection Issues', '2019-07-30 14:37:21', '2019-07-30', 1, 1),
(998, 8, 'Medico-Legal Health Reports', '2019-07-30 14:37:26', '2019-07-30', 1, 1),
(999, 8, 'Occupational Health Reports', '2019-07-30 14:37:34', '2019-07-30', 1, 1),
(1000, 8, 'Corporate Motivational Work', '2019-07-30 14:37:41', '2019-07-30', 1, 1),
(1001, 8, 'Stress Management Counselling', '2019-07-30 14:37:47', '2019-07-30', 1, 1),
(1002, 8, 'Conflict Management', '2019-07-30 14:37:54', '2019-07-30', 1, 1),
(1003, 8, 'Couple and Family Therapy', '2019-07-30 14:38:01', '2019-07-30', 1, 1),
(1004, 8, 'Specialized Psychotherapy', '2019-07-30 14:38:13', '2019-07-30', 1, 1),
(1005, 8, 'Psychosis', '2019-07-30 14:38:20', '2019-07-30', 1, 1),
(1006, 8, 'Mania Treatment', '2019-07-30 14:38:26', '2019-07-30', 1, 1),
(1007, 8, 'Old Age Problems', '2019-07-30 14:38:34', '2019-07-30', 1, 1),
(1008, 8, 'Past Life Regression Therapy', '2019-07-30 14:38:41', '2019-07-30', 1, 1),
(1009, 8, 'Complex Trauma', '2019-07-30 14:38:48', '2019-07-30', 1, 1),
(1010, 8, 'Psychic Integration', '2019-07-30 14:38:55', '2019-07-30', 1, 1),
(1011, 8, 'Psychoanalysis to Suicide', '2019-07-30 14:39:03', '2019-07-30', 1, 1),
(1012, 8, 'Psychological Diagnosis (Adult and Child)', '2019-07-30 14:39:10', '2019-07-30', 1, 1),
(1013, 8, 'Psychological Rehabilitation', '2019-07-30 14:39:17', '2019-07-30', 1, 1),
(1014, 8, 'Therapy for Austimo', '2019-07-30 14:39:24', '2019-07-30', 1, 1),
(1015, 8, 'Neuro Psychological Diagnosis', '2019-07-30 14:39:57', '2019-07-30', 1, 1),
(1016, 8, 'Adopted Child Syndrome Treatment', '2019-07-30 14:40:04', '2019-07-30', 1, 1),
(1017, 8, 'Parkinsons Disease Treatment', '2019-07-30 14:40:16', '2019-07-30', 1, 1),
(1018, 8, 'Alzheimers Disease', '2019-07-30 14:40:27', '2019-07-30', 1, 1),
(1019, 8, 'Individual Psychotherapy', '2019-07-30 14:40:33', '2019-07-30', 1, 1),
(1020, 8, 'Insanity', '2019-07-30 14:40:41', '2019-07-30', 1, 1),
(1021, 8, 'Memory Improvement', '2019-07-30 14:40:48', '2019-07-30', 1, 1),
(1022, 8, 'Psicopedatria', '2019-07-30 14:40:55', '2019-07-30', 1, 1),
(1023, 9, 'Urinary Tract Infection (UTI)', '2019-07-30 14:41:31', '2019-07-30', 1, 1),
(1024, 9, 'Andrology', '2019-07-30 14:41:39', '2019-07-30', 1, 1),
(1025, 9, 'Mens Health', '2019-07-30 14:42:12', '2019-07-30', 1, 1),
(1026, 9, 'Vasectomy', '2019-07-30 14:42:20', '2019-07-30', 1, 1),
(1027, 9, 'Ureteoscopy (URS)', '2019-07-30 14:42:27', '2019-07-30', 1, 1),
(1028, 9, 'Urinary Incontinence (UI) Treatment', '2019-07-30 14:42:34', '2019-07-30', 1, 1),
(1029, 9, 'Kidney Stone Treatment', '2019-07-30 14:42:41', '2019-07-30', 1, 1),
(1030, 9, 'Male Sexual Problems', '2019-07-30 14:42:47', '2019-07-30', 1, 1),
(1031, 9, 'Male Hypogonadism', '2019-07-30 14:42:59', '2019-07-30', 1, 1),
(1032, 9, 'Male Infertility Treatment', '2019-07-30 14:43:05', '2019-07-30', 1, 1),
(1033, 9, 'Male Sexual Dysfunction Treatment', '2019-07-30 14:43:11', '2019-07-30', 1, 1),
(1034, 9, 'Vasectomy Reversal', '2019-07-30 14:43:19', '2019-07-30', 1, 1),
(1035, 9, 'Hydrocele Treatment (Surgical)', '2019-07-30 14:43:42', '2019-07-30', 1, 1),
(1036, 9, 'Nephrectomy (Kidney Removal)', '2019-07-30 14:43:48', '2019-07-30', 1, 1),
(1037, 9, 'Neurourology', '2019-07-30 14:44:14', '2019-07-30', 1, 1),
(1038, 9, 'Prostate Resection Surgery', '2019-07-30 14:44:25', '2019-07-30', 1, 1),
(1039, 9, 'Transurethral Resection of The Prostate (TURP)', '2019-07-30 14:44:53', '2019-07-30', 1, 1),
(1040, 9, 'Transurethral Incision of The Prostate (TUIP)', '2019-07-30 14:45:05', '2019-07-30', 1, 1),
(1041, 9, 'Open Prostatectomy', '2019-07-30 14:45:22', '2019-07-30', 1, 1),
(1042, 9, 'Cystoscopy', '2019-07-30 14:45:32', '2019-07-30', 1, 1),
(1043, 9, 'Genitourinary Surgery', '2019-07-30 14:45:42', '2019-07-30', 1, 1),
(1044, 9, 'Blood in Urine (Hematuria) Treatment', '2019-07-30 14:45:50', '2019-07-30', 1, 1),
(1045, 9, 'Minimally Invasive Urology', '2019-07-30 14:46:18', '2019-07-30', 1, 1),
(1046, 9, 'Laparoscopy', '2019-07-30 14:46:51', '2019-07-30', 1, 1),
(1047, 9, 'Dysmenorrhea Treatment', '2019-07-30 14:47:12', '2019-07-30', 1, 1),
(1048, 9, 'Pediatric Urology', '2019-07-30 14:47:22', '2019-07-30', 1, 1),
(1049, 9, 'Reconstructive Urology', '2019-07-30 14:47:31', '2019-07-30', 1, 1),
(1050, 9, 'Urologic Oncology', '2019-07-30 14:47:40', '2019-07-30', 1, 1),
(1051, 9, 'Lithotripsy', '2019-07-30 14:47:48', '2019-07-30', 1, 1),
(1052, 9, 'Stricture Management', '2019-07-30 14:47:57', '2019-07-30', 1, 1),
(1053, 9, 'Urinarty Tract / Bladder Stones Treatment', '2019-07-30 14:48:03', '2019-07-30', 1, 1),
(1054, 9, 'Treatment of Erectile Dysfuntion', '2019-07-30 14:48:12', '2019-07-30', 1, 1),
(1055, 9, 'Transurethral Resection of Bladder Tumor', '2019-07-30 14:48:23', '2019-07-30', 1, 1),
(1056, 9, 'Blood in Semen', '2019-07-30 14:48:31', '2019-07-30', 1, 1),
(1057, 9, 'Prostate Laser Surgery', '2019-07-30 14:48:48', '2019-07-30', 1, 1),
(1058, 9, 'Radical Prostatectomy', '2019-07-31 09:12:11', '2019-07-31', 1, 1),
(1059, 9, 'Prostate Cancer Surgery', '2019-07-31 09:12:18', '2019-07-31', 1, 1),
(1060, 9, 'Enlarged Prostate', '2019-07-31 09:12:25', '2019-07-31', 1, 1),
(1061, 9, 'Genital Injury', '2019-07-31 09:12:32', '2019-07-31', 1, 1),
(1062, 9, 'Urinary Tract Obstruction', '2019-07-31 09:12:38', '2019-07-31', 1, 1),
(1063, 9, 'Obstruction While Urinating', '2019-07-31 09:12:44', '2019-07-31', 1, 1),
(1064, 9, 'UTI', '2019-07-31 09:12:49', '2019-07-31', 1, 1),
(1065, 9, 'Testicular Surgery', '2019-07-31 09:13:05', '2019-07-31', 1, 1),
(1066, 9, 'Bioidentical Hormone Therapies for Men and Women', '2019-07-31 09:13:11', '2019-07-31', 1, 1),
(1067, 9, 'Bartter Syndrome', '2019-07-31 09:13:18', '2019-07-31', 1, 1),
(1068, 9, 'Urology Consultation', '2019-07-31 09:13:28', '2019-07-31', 1, 1),
(1069, 9, 'Direct Visual Internal Urethrotomy (DVIU)', '2019-07-31 09:13:40', '2019-07-31', 1, 1),
(1070, 9, 'Dialysis / Haemodialysis', '2019-07-31 09:13:46', '2019-07-31', 1, 1),
(1071, 9, 'Congential Nephorgenic Diabetes Insipidus', '2019-07-31 09:14:06', '2019-07-31', 1, 1),
(1072, 9, 'Pelvic Lymph Node Dissection', '2019-07-31 09:14:15', '2019-07-31', 1, 1),
(1073, 9, 'Laser Prastatectomy', '2019-07-31 09:14:31', '2019-07-31', 1, 1),
(1074, 9, 'Sperm Retrieval', '2019-07-31 09:14:40', '2019-07-31', 1, 1),
(1075, 9, 'Fanconi Renotubular Syndrome', '2019-07-31 09:14:48', '2019-07-31', 1, 1),
(1076, 9, 'Orotic Aciduria', '2019-07-31 09:15:02', '2019-07-31', 1, 1),
(1077, 9, 'Urethrotomy', '2019-07-31 09:15:08', '2019-07-31', 1, 1),
(1078, 9, 'Ureterostomy', '2019-07-31 09:15:17', '2019-07-31', 1, 1),
(1079, 9, 'Vesicoureteral Reflux', '2019-07-31 09:15:26', '2019-07-31', 1, 1),
(1080, 9, 'Urinary Tract Problems', '2019-07-31 09:15:32', '2019-07-31', 1, 1),
(1081, 9, 'Adrenal Masses', '2019-07-31 09:15:42', '2019-07-31', 1, 1),
(1082, 9, 'Bladder Cancer', '2019-07-31 09:15:49', '2019-07-31', 1, 1),
(1083, 9, 'Impotence', '2019-07-31 09:15:55', '2019-07-31', 1, 1),
(1084, 9, 'Premature Ejaculation', '2019-07-31 09:16:01', '2019-07-31', 1, 1),
(1085, 9, 'Dent Diesease', '2019-07-31 09:16:08', '2019-07-31', 1, 1),
(1086, 9, 'Benign Prostatic Hypertropy', '2019-07-31 09:16:15', '2019-07-31', 1, 1),
(1087, 9, 'Urinary Bladder Cancer', '2019-07-31 09:16:22', '2019-07-31', 1, 1),
(1088, 9, 'Urine Stone', '2019-07-31 09:16:28', '2019-07-31', 1, 1),
(1089, 9, 'Surgery of the Penis', '2019-07-31 09:16:39', '2019-07-31', 1, 1),
(1090, 9, 'Urostomy', '2019-07-31 09:16:46', '2019-07-31', 1, 1),
(1091, 9, 'Functional Urologist', '2019-07-31 09:16:55', '2019-07-31', 1, 1),
(1092, 9, 'Infertility Evaluation / Treatment', '2019-07-31 09:17:02', '2019-07-31', 1, 1),
(1093, 9, 'HIV Counselling', '2019-07-31 09:17:08', '2019-07-31', 1, 1),
(1094, 9, 'Pre-Marital Counselling', '2019-07-31 09:17:15', '2019-07-31', 1, 1),
(1095, 9, 'Azoospermia Treatment', '2019-07-31 09:17:21', '2019-07-31', 1, 1),
(1096, 9, 'Kidney Transplant', '2019-07-31 09:17:28', '2019-07-31', 1, 1),
(1097, 9, 'Uro-Oncology and Radiology', '2019-07-31 09:17:35', '2019-07-31', 1, 1),
(1098, 9, 'Laser Urology', '2019-07-31 09:17:41', '2019-07-31', 1, 1),
(1099, 9, 'Robotic Urology', '2019-07-31 09:17:48', '2019-07-31', 1, 1),
(1100, 9, 'Infertility', '2019-07-31 09:18:16', '2019-07-31', 1, 1),
(1101, 9, 'Endoscopy', '2019-07-31 09:24:03', '2019-07-31', 1, 1),
(1102, 9, 'Open Surgical Procedures', '2019-07-31 09:24:14', '2019-07-31', 1, 1),
(1103, 9, 'Female Stress UI', '2019-07-31 09:24:22', '2019-07-31', 1, 1),
(1104, 9, 'Rec. UTI', '2019-07-31 09:24:30', '2019-07-31', 1, 1),
(1105, 9, 'Urethral Evaluation', '2019-07-31 09:24:39', '2019-07-31', 1, 1),
(1106, 9, 'Sexual Dysfuntion', '2019-07-31 09:24:48', '2019-07-31', 1, 1),
(1107, 9, 'Endoscopic and Surgical Surgery', '2019-07-31 09:25:14', '2019-07-31', 1, 1),
(1108, 9, 'P.C.N.L', '2019-07-31 09:25:24', '2019-07-31', 1, 1),
(1109, 9, 'Evaluation of Treatment', '2019-07-31 09:25:30', '2019-07-31', 1, 1),
(1110, 9, 'Urinary Tract / Bladder Stone Treatment', '2019-07-31 09:25:36', '2019-07-31', 1, 1),
(1111, 9, 'Adult Urology', '2019-07-31 09:25:42', '2019-07-31', 1, 1),
(1112, 9, 'Urolithiasis', '2019-07-31 09:25:49', '2019-07-31', 1, 1),
(1113, 9, 'Uro Oncology', '2019-07-31 09:25:57', '2019-07-31', 1, 1),
(1114, 9, 'Uro Radiology', '2019-07-31 09:26:17', '2019-07-31', 1, 1),
(1115, 9, 'Laparoscopic and Minimally Invasive Urology', '2019-07-31 09:26:23', '2019-07-31', 1, 1),
(1116, 9, 'Ureteroscopy (URS)', '2019-07-31 09:26:30', '2019-07-31', 1, 1),
(1117, 9, 'Colitis Treatment', '2019-07-31 09:26:35', '2019-07-31', 1, 1),
(1118, 9, 'Varicocele Surgery', '2019-07-31 09:26:41', '2019-07-31', 1, 1),
(1119, 9, 'Prostate Endo Surgery', '2019-07-31 09:26:47', '2019-07-31', 1, 1),
(1120, 9, 'Treatment of Urgency and Stress Urinary Incontinence', '2019-07-31 09:26:53', '2019-07-31', 1, 1),
(1121, 9, 'ESWL', '2019-07-31 09:26:59', '2019-07-31', 1, 1),
(1122, 9, 'Men Sexual Health (Impotency, Pre-mature Ejaculation)', '2019-07-31 09:27:06', '2019-07-31', 1, 1),
(1123, 9, 'RIRS', '2019-07-31 09:27:13', '2019-07-31', 1, 1),
(1124, 9, 'Urethroplasty', '2019-07-31 09:27:20', '2019-07-31', 1, 1),
(1125, 9, 'Renal Tumors', '2019-07-31 09:27:27', '2019-07-31', 1, 1),
(1126, 9, 'Bladder Tumors', '2019-07-31 09:27:33', '2019-07-31', 1, 1),
(1127, 9, 'Hypospadias', '2019-07-31 09:27:40', '2019-07-31', 1, 1),
(1128, 9, 'Subincision', '2019-07-31 09:27:47', '2019-07-31', 1, 1),
(1129, 9, 'Radical Cystectomy', '2019-07-31 09:27:53', '2019-07-31', 1, 1),
(1130, 9, 'Cystectomy', '2019-07-31 09:27:59', '2019-07-31', 1, 1),
(1131, 9, 'Vascular Surgery', '2019-07-31 09:28:12', '2019-07-31', 1, 1),
(1132, 13, 'Artificial Teeth', '2019-07-31 14:26:59', '2019-07-31', 1, 1),
(1133, 13, 'Conservative Dentistry', '2019-07-31 14:27:06', '2019-07-31', 1, 1),
(1134, 13, 'Cosmetic / Aesthetic Dentistry', '2019-07-31 14:27:12', '2019-07-31', 1, 1),
(1135, 13, 'Crowns and Bridges Fixing', '2019-07-31 14:27:20', '2019-07-31', 1, 1),
(1136, 13, 'Complete / Partial Dentures Fixing', '2019-07-31 14:27:27', '2019-07-31', 1, 1),
(1137, 13, 'Impaction / Impacted Tooth Extraction', '2019-07-31 14:27:39', '2019-07-31', 1, 1),
(1138, 13, 'Endo Surgery OR Apicoectomy', '2019-07-31 14:27:50', '2019-07-31', 1, 1),
(1139, 13, 'Endosurgery', '2019-07-31 14:27:55', '2019-07-31', 1, 1),
(1140, 13, 'Tooth Extraction', '2019-07-31 14:28:03', '2019-07-31', 1, 1),
(1141, 13, 'Dental Fillings', '2019-07-31 14:28:12', '2019-07-31', 1, 1),
(1142, 13, 'Fixed Partial Denture (FPD)', '2019-07-31 14:28:19', '2019-07-31', 1, 1),
(1143, 13, 'Flexible Partial / Complete Denture', '2019-07-31 14:28:26', '2019-07-31', 1, 1),
(1144, 13, 'Forensic Odontology', '2019-07-31 14:28:33', '2019-07-31', 1, 1),
(1145, 13, 'Flap Surgery', '2019-07-31 14:28:39', '2019-07-31', 1, 1),
(1146, 13, 'Gum Disease Treatment / Surgery', '2019-07-31 14:28:48', '2019-07-31', 1, 1),
(1147, 13, 'Dental Implant Fixing', '2019-07-31 14:28:54', '2019-07-31', 1, 1),
(1148, 13, 'Inlays and Onlays', '2019-07-31 14:29:00', '2019-07-31', 1, 1),
(1149, 13, 'Invisible / Clear Braces', '2019-07-31 14:29:05', '2019-07-31', 1, 1),
(1150, 13, 'Laminates', '2019-07-31 14:29:11', '2019-07-31', 1, 1),
(1151, 13, 'Laser Gum Surgery', '2019-07-31 14:29:16', '2019-07-31', 1, 1),
(1152, 13, 'Laser Surgery', '2019-07-31 14:29:22', '2019-07-31', 1, 1),
(1153, 13, 'Maxillo Facial Prosthodontics', '2019-07-31 14:29:31', '2019-07-31', 1, 1),
(1154, 13, 'Orthognathic Surgery', '2019-07-31 14:29:46', '2019-07-31', 1, 1),
(1155, 13, 'Periodontal Flap Surgery', '2019-07-31 14:29:51', '2019-07-31', 1, 1),
(1156, 13, 'Post and Core', '2019-07-31 14:29:57', '2019-07-31', 1, 1),
(1157, 13, 'Prosthetics', '2019-07-31 14:30:05', '2019-07-31', 1, 1),
(1158, 13, 'RCT - Root Canal Treatment', '2019-07-31 14:30:11', '2019-07-31', 1, 1),
(1159, 13, 'Scaling / Polishing', '2019-07-31 14:30:19', '2019-07-31', 1, 1),
(1160, 13, 'Dental Sealant', '2019-07-31 14:30:25', '2019-07-31', 1, 1),
(1161, 13, 'Sedation Dentistry', '2019-07-31 14:30:32', '2019-07-31', 1, 1),
(1162, 13, 'Smile Design', '2019-07-31 14:30:39', '2019-07-31', 1, 1),
(1163, 13, 'Teeth Reshaping', '2019-07-31 14:30:46', '2019-07-31', 1, 1),
(1164, 13, 'Dental Braces Fixing', '2019-07-31 14:30:54', '2019-07-31', 1, 1),
(1165, 13, 'Teeth Whitening', '2019-07-31 14:31:02', '2019-07-31', 1, 1),
(1166, 13, 'Thineers', '2019-07-31 14:31:09', '2019-07-31', 1, 1),
(1167, 13, 'Thooth Coloured Fillings', '2019-07-31 14:31:17', '2019-07-31', 1, 1),
(1168, 13, 'Veneers / Laminates', '2019-07-31 14:31:27', '2019-07-31', 1, 1),
(1169, 13, 'Wedding Smile Planner', '2019-07-31 14:31:33', '2019-07-31', 1, 1),
(1170, 13, 'Surgical Tooth Extraction', '2019-07-31 14:31:41', '2019-07-31', 1, 1),
(1171, 13, 'Oral and Maxillofacial Surgery', '2019-07-31 14:31:49', '2019-07-31', 1, 1),
(1172, 13, 'Laser Dentistry', '2019-07-31 14:31:57', '2019-07-31', 1, 1),
(1173, 13, 'Oral Rehabilitation', '2019-07-31 14:32:03', '2019-07-31', 1, 1),
(1174, 13, 'Oral Lesions Screening', '2019-07-31 14:32:10', '2019-07-31', 1, 1),
(1175, 13, 'Oral Surgery Procedures', '2019-07-31 14:32:19', '2019-07-31', 1, 1),
(1176, 13, 'Maxillofacial Trauma', '2019-07-31 14:32:25', '2019-07-31', 1, 1),
(1177, 13, 'Oral Medicine and Radiology', '2019-07-31 14:32:32', '2019-07-31', 1, 1),
(1178, 13, 'Orthodontic Treatment', '2019-07-31 14:32:38', '2019-07-31', 1, 1),
(1179, 13, 'Metal Braces Fixing', '2019-07-31 14:32:46', '2019-07-31', 1, 1),
(1180, 13, 'Tooth Coloured Fillings', '2019-07-31 14:32:55', '2019-07-31', 1, 1),
(1181, 13, 'Acrylic Partial Denture', '2019-07-31 14:33:02', '2019-07-31', 1, 1),
(1182, 13, 'BPS Dentures Fixing', '2019-07-31 14:33:16', '2019-07-31', 1, 1),
(1183, 13, 'Cast Partial Dentures', '2019-07-31 14:33:24', '2019-07-31', 1, 1),
(1184, 13, 'Immediate Dentures', '2019-07-31 14:33:30', '2019-07-31', 1, 1),
(1185, 13, 'Preadjusted Edgewise Technique', '2019-07-31 14:33:39', '2019-07-31', 1, 1),
(1186, 13, 'Pulpectomy', '2019-07-31 14:33:45', '2019-07-31', 1, 1),
(1187, 13, 'Teeth - Jewellery', '2019-07-31 14:33:51', '2019-07-31', 1, 1),
(1188, 13, 'Space Maintainers', '2019-07-31 14:33:58', '2019-07-31', 1, 1),
(1189, 13, 'Bleeding Gums Treatment', '2019-07-31 14:34:04', '2019-07-31', 1, 1),
(1190, 13, 'Gap Closing', '2019-07-31 14:34:11', '2019-07-31', 1, 1),
(1191, 13, 'Cosmetic Veneers / Bonding', '2019-07-31 14:34:17', '2019-07-31', 1, 1),
(1192, 13, 'Presurgical Orthodontics', '2019-07-31 14:34:31', '2019-07-31', 1, 1),
(1193, 13, 'Temporomandibular Joint Disorder', '2019-07-31 14:34:37', '2019-07-31', 1, 1),
(1194, 13, 'Facial Trauma', '2019-07-31 14:34:44', '2019-07-31', 1, 1),
(1195, 13, 'Ceramic Crowns and Bridges Fixing', '2019-07-31 14:34:51', '2019-07-31', 1, 1),
(1196, 13, 'Implant Retained Dentures', '2019-07-31 14:34:58', '2019-07-31', 1, 1),
(1197, 13, 'Ceramic Veneers / Crowns', '2019-07-31 14:35:04', '2019-07-31', 1, 1),
(1198, 13, 'Minimally Invasive Dentistry', '2019-07-31 14:35:11', '2019-07-31', 1, 1),
(1199, 13, 'Myofunctional Orthodontics', '2019-07-31 14:35:20', '2019-07-31', 1, 1),
(1200, 13, 'Cosmetic Fillings', '2019-07-31 14:35:27', '2019-07-31', 1, 1),
(1201, 13, 'Dental Crowns', '2019-07-31 14:35:33', '2019-07-31', 1, 1),
(1202, 13, 'Pit and Fissure Sealant', '2019-07-31 14:35:39', '2019-07-31', 1, 1),
(1203, 13, 'Dental Screening and Prophylaxis', '2019-07-31 14:35:46', '2019-07-31', 1, 1),
(1204, 13, 'Dental Checkup (General)', '2019-07-31 14:35:53', '2019-07-31', 1, 1),
(1205, 13, 'Cerec CADCAM', '2019-07-31 14:36:00', '2019-07-31', 1, 1),
(1206, 13, 'Porcelain Inlays and Onlays', '2019-07-31 14:36:07', '2019-07-31', 1, 1),
(1207, 13, 'TMJ Pain Management', '2019-07-31 14:36:13', '2019-07-31', 1, 1),
(1208, 13, 'Mouth Guard', '2019-07-31 14:36:19', '2019-07-31', 1, 1),
(1209, 13, 'Composite Bondings', '2019-07-31 14:36:26', '2019-07-31', 1, 1),
(1210, 13, 'Wisdom Tooth Extraction', '2019-07-31 14:36:32', '2019-07-31', 1, 1),
(1211, 13, 'Straightening Teeth (Conventional Braces)', '2019-07-31 14:36:44', '2019-07-31', 1, 1),
(1212, 13, 'Prosthetic Care and Rehabilitation', '2019-07-31 14:36:51', '2019-07-31', 1, 1),
(1213, 13, 'Tooth Air Polishing', '2019-07-31 14:36:58', '2019-07-31', 1, 1),
(1214, 13, 'Paedodontics', '2019-07-31 14:37:04', '2019-07-31', 1, 1),
(1215, 13, 'Child Speciality Dentistry', '2019-07-31 14:37:11', '2019-07-31', 1, 1),
(1216, 13, 'Paediatric Dental Surgeon', '2019-07-31 14:37:17', '2019-07-31', 1, 1),
(1217, 13, 'Child Specialists', '2019-07-31 14:37:24', '2019-07-31', 1, 1),
(1218, 13, 'Cosmetic Makeovers', '2019-07-31 14:37:32', '2019-07-31', 1, 1),
(1219, 13, 'Dentofacial Orthopedics', '2019-07-31 14:37:39', '2019-07-31', 1, 1),
(1220, 13, 'Ceramic Dental Braces', '2019-07-31 14:37:47', '2019-07-31', 1, 1),
(1221, 13, 'Braces Adjustment', '2019-07-31 14:37:53', '2019-07-31', 1, 1),
(1222, 13, 'Damon System', '2019-07-31 14:38:00', '2019-07-31', 1, 1),
(1223, 13, 'Facial Orthopedics', '2019-07-31 14:38:15', '2019-07-31', 1, 1),
(1224, 13, 'Functional Orthopedics', '2019-07-31 14:38:22', '2019-07-31', 1, 1),
(1225, 13, 'Jaw Orthopedics', '2019-07-31 14:38:27', '2019-07-31', 1, 1),
(1226, 13, 'Ortho', '2019-07-31 14:38:35', '2019-07-31', 1, 1),
(1227, 13, 'Invisalign', '2019-07-31 14:38:42', '2019-07-31', 1, 1),
(1228, 13, 'Invisible Braces', '2019-07-31 14:38:51', '2019-07-31', 1, 1),
(1229, 13, 'Clear Braces', '2019-07-31 14:38:57', '2019-07-31', 1, 1),
(1230, 13, 'Straightening Teeth (Invisalign)', '2019-07-31 14:39:04', '2019-07-31', 1, 1),
(1231, 13, 'Clear Aligners', '2019-07-31 14:39:11', '2019-07-31', 1, 1),
(1232, 13, 'Teeth Alignment (Orthodontics)', '2019-07-31 14:39:17', '2019-07-31', 1, 1),
(1233, 13, 'Orthodontic Corrections', '2019-07-31 14:39:25', '2019-07-31', 1, 1),
(1234, 13, 'Advanced Surgery in Implantology', '2019-07-31 14:39:34', '2019-07-31', 1, 1),
(1235, 13, 'Invisible Orthodontics', '2019-07-31 14:39:40', '2019-07-31', 1, 1),
(1236, 13, 'Braces', '2019-07-31 14:39:46', '2019-07-31', 1, 1),
(1237, 13, 'Dental Sleep Medicine (Snoring and Sleep Apnea Management)', '2019-07-31 14:39:53', '2019-07-31', 1, 1),
(1238, 13, 'Zirconia Crowns', '2019-07-31 14:39:59', '2019-07-31', 1, 1),
(1239, 13, 'TMJ Therapy', '2019-07-31 14:40:06', '2019-07-31', 1, 1),
(1240, 13, 'Mucogingival Surgery', '2019-07-31 14:40:11', '2019-07-31', 1, 1),
(1241, 13, 'Gingivoplasty', '2019-07-31 14:40:17', '2019-07-31', 1, 1),
(1242, 13, 'Aveolectomy', '2019-07-31 14:40:25', '2019-07-31', 1, 1),
(1243, 13, 'Dental X-Ray', '2019-07-31 14:40:41', '2019-07-31', 1, 1),
(1244, 13, 'Laser Gingivoplasty', '2019-07-31 14:40:48', '2019-07-31', 1, 1),
(1245, 13, 'Scraping Periodontal', '2019-07-31 14:40:55', '2019-07-31', 1, 1),
(1246, 13, 'Full Denture (Acrylic)', '2019-07-31 14:41:01', '2019-07-31', 1, 1),
(1247, 13, 'Jaw Reshaping', '2019-07-31 14:41:08', '2019-07-31', 1, 1),
(1248, 13, 'Amalgam Removal', '2019-07-31 14:41:15', '2019-07-31', 1, 1),
(1249, 13, 'Pulpo', '2019-07-31 14:41:21', '2019-07-31', 1, 1),
(1250, 13, 'Implant Prosthesis', '2019-07-31 14:41:29', '2019-07-31', 1, 1),
(1251, 13, 'Implant Rehabilitation', '2019-07-31 14:41:37', '2019-07-31', 1, 1),
(1252, 13, 'Implant Supported Denture Fixing', '2019-07-31 14:41:43', '2019-07-31', 1, 1),
(1253, 13, 'Retention Implant Dentures', '2019-07-31 14:41:51', '2019-07-31', 1, 1),
(1254, 13, 'Discoloured Tooth Restoration', '2019-07-31 14:41:56', '2019-07-31', 1, 1),
(1255, 13, 'Dental Restoration', '2019-07-31 14:42:04', '2019-07-31', 1, 1),
(1256, 13, 'Dental Examinations', '2019-07-31 14:42:10', '2019-07-31', 1, 1),
(1257, 13, 'Preparation for Dentures', '2019-07-31 14:42:16', '2019-07-31', 1, 1),
(1258, 13, 'Zirconium Caps', '2019-07-31 14:42:24', '2019-07-31', 1, 1),
(1259, 13, 'Bone Grafting for Dental Implants', '2019-07-31 14:42:30', '2019-07-31', 1, 1),
(1260, 13, 'Dental Prophylaxis', '2019-07-31 14:42:38', '2019-07-31', 1, 1),
(1261, 13, 'Oral Hygiene / Prophylaxis', '2019-07-31 14:42:45', '2019-07-31', 1, 1),
(1262, 13, 'Fluoride Gel Application', '2019-07-31 14:42:52', '2019-07-31', 1, 1),
(1263, 13, 'Habit Breaking Appliance', '2019-07-31 14:42:59', '2019-07-31', 1, 1),
(1264, 13, 'Fillings (Restorations)', '2019-07-31 14:43:06', '2019-07-31', 1, 1),
(1265, 13, 'Indirect Adhesive Dentistry', '2019-07-31 14:43:12', '2019-07-31', 1, 1),
(1266, 13, 'Impactions (Removal of Wisdom Tooth)', '2019-07-31 14:43:19', '2019-07-31', 1, 1),
(1267, 13, 'Frenectomy', '2019-07-31 14:43:24', '2019-07-31', 1, 1),
(1268, 13, 'Apicoectomy', '2019-07-31 14:43:31', '2019-07-31', 1, 1),
(1269, 13, 'Closure of Oro-Antral Fistula', '2019-07-31 14:43:37', '2019-07-31', 1, 1),
(1270, 13, 'Fracture Reduction', '2019-07-31 14:43:43', '2019-07-31', 1, 1),
(1271, 13, 'Cyst Enucleation, GTR', '2019-07-31 14:43:51', '2019-07-31', 1, 1),
(1272, 13, 'Serial Extractions', '2019-07-31 14:43:57', '2019-07-31', 1, 1),
(1273, 13, 'Beggs Appliances', '2019-07-31 14:44:04', '2019-07-31', 1, 1),
(1274, 13, 'Straight Wire Appliances', '2019-07-31 14:44:09', '2019-07-31', 1, 1),
(1275, 13, 'Inman Aligners Specialist', '2019-07-31 14:44:15', '2019-07-31', 1, 1),
(1276, 13, 'Teeth Grinding', '2019-07-31 14:44:20', '2019-07-31', 1, 1),
(1277, 13, 'GIC Tooth Fillings', '2019-07-31 14:44:26', '2019-07-31', 1, 1),
(1278, 13, 'Tooth Decay', '2019-07-31 14:44:33', '2019-07-31', 1, 1),
(1279, 13, 'Cavities', '2019-07-31 14:44:38', '2019-07-31', 1, 1),
(1280, 13, 'Bad Breath Treatment', '2019-07-31 14:44:44', '2019-07-31', 1, 1),
(1281, 13, 'Receding Gums', '2019-07-31 14:44:50', '2019-07-31', 1, 1),
(1282, 14, 'Cervical Spondylitis Treatment', '2019-07-31 14:46:40', '2019-07-31', 1, 1),
(1283, 14, 'Sinusitis Treatment', '2019-07-31 14:46:49', '2019-07-31', 1, 1),
(1284, 14, 'Dermatitis Treatment', '2019-07-31 14:46:55', '2019-07-31', 1, 1),
(1285, 14, 'Hair Loss Treatment', '2019-07-31 14:47:02', '2019-07-31', 1, 1),
(1286, 14, 'Dysmenorrhea Treatment', '2019-07-31 14:47:09', '2019-07-31', 1, 1),
(1287, 14, 'Infertility Evaluation / Treatment', '2019-07-31 14:47:14', '2019-07-31', 1, 1),
(1288, 14, 'Warts Treatment', '2019-07-31 14:47:21', '2019-07-31', 1, 1),
(1289, 14, 'Bronchial Asthma Treatment', '2019-07-31 14:47:30', '2019-07-31', 1, 1),
(1290, 14, 'Skin Disorders', '2019-07-31 14:47:37', '2019-07-31', 1, 1),
(1291, 14, 'Liver Disease Treatment', '2019-07-31 14:47:43', '2019-07-31', 1, 1),
(1292, 14, 'Eczema Treatment', '2019-07-31 14:47:51', '2019-07-31', 1, 1),
(1293, 14, 'Irritable Bowel Syndrome (IBS) Treatment', '2019-07-31 14:47:57', '2019-07-31', 1, 1),
(1294, 14, 'Insomnia Treatment', '2019-07-31 14:48:05', '2019-07-31', 1, 1),
(1295, 14, 'Acidity Treatment', '2019-07-31 14:48:21', '2019-07-31', 1, 1),
(1296, 14, 'Bronchitis Treatment', '2019-07-31 14:48:27', '2019-07-31', 1, 1),
(1297, 14, 'Acne / Pimples Treatment', '2019-07-31 14:48:35', '2019-07-31', 1, 1),
(1298, 14, 'Gastritis Treatment', '2019-07-31 14:48:42', '2019-07-31', 1, 1),
(1299, 14, 'Kidney Stones Treatment', '2019-07-31 14:48:48', '2019-07-31', 1, 1),
(1300, 14, 'Obesity Treatment', '2019-07-31 14:48:56', '2019-07-31', 1, 1),
(1301, 14, 'Allergy Treatment', '2019-07-31 14:49:01', '2019-07-31', 1, 1),
(1302, 14, 'Psychological Problems', '2019-07-31 14:49:08', '2019-07-31', 1, 1),
(1303, 14, 'Psoriasis Treatment', '2019-07-31 14:49:15', '2019-07-31', 1, 1),
(1304, 14, 'Depression Treatment', '2019-07-31 14:49:21', '2019-07-31', 1, 1),
(1305, 14, 'PCOD / PCOS Treatment', '2019-07-31 14:49:27', '2019-07-31', 1, 1),
(1306, 14, 'Thyroid Disorders', '2019-07-31 14:49:35', '2019-07-31', 1, 1),
(1307, 14, 'Joints and Musculoskeletal Disorders', '2019-07-31 14:49:41', '2019-07-31', 1, 1),
(1308, 14, 'Dandruff Treatment', '2019-07-31 14:49:48', '2019-07-31', 1, 1),
(1309, 14, 'Hypertension Disorders', '2019-07-31 14:49:53', '2019-07-31', 1, 1),
(1310, 14, 'Rheumatic Complaints', '2019-07-31 14:50:01', '2019-07-31', 1, 1),
(1311, 14, 'Diabetes Management', '2019-07-31 14:50:12', '2019-07-31', 1, 1),
(1312, 14, 'Chronic Diseases', '2019-07-31 14:50:18', '2019-07-31', 1, 1),
(1313, 14, 'Migraine Treatment', '2019-07-31 14:50:25', '2019-07-31', 1, 1),
(1314, 14, 'Chronic Health Issues Management', '2019-07-31 14:50:31', '2019-07-31', 1, 1),
(1315, 14, 'Piles Treatment (Non-Surgical)', '2019-07-31 14:50:39', '2019-07-31', 1, 1),
(1316, 14, 'Skin Diseases Treatment', '2019-07-31 14:50:45', '2019-07-31', 1, 1),
(1317, 14, 'Female Complaints', '2019-07-31 14:50:55', '2019-07-31', 1, 1),
(1318, 14, 'Skin Rash Treatment', '2019-07-31 14:51:02', '2019-07-31', 1, 1),
(1319, 14, 'Arthritis Management', '2019-07-31 14:51:10', '2019-07-31', 1, 1),
(1320, 14, 'Rheumatism Treatment', '2019-07-31 14:51:16', '2019-07-31', 1, 1);
INSERT INTO `doctor_services` (`service_id`, `cate_id`, `service_name`, `add_datetime`, `modify_date`, `status`, `general_service`) VALUES
(1321, 14, 'Lifestyle Disorders Treatment', '2019-07-31 14:51:22', '2019-07-31', 1, 1),
(1322, 14, 'Cysts Treatment', '2019-07-31 14:51:29', '2019-07-31', 1, 1),
(1323, 14, 'Gall Bladder (Billary) Stone Treatment', '2019-07-31 14:51:35', '2019-07-31', 1, 1),
(1324, 14, 'Cancer Treatment', '2019-07-31 14:51:42', '2019-07-31', 1, 1),
(1325, 14, 'Weight Loss Diet Counselling', '2019-07-31 14:51:49', '2019-07-31', 1, 1),
(1326, 14, 'Pre and Post Menopausal Syndrome', '2019-07-31 14:51:57', '2019-07-31', 1, 1),
(1327, 14, 'Hashimotors Thyroiditis', '2019-07-31 14:52:03', '2019-07-31', 1, 1),
(1328, 14, 'Auto-Immune Disorder', '2019-07-31 14:52:09', '2019-07-31', 1, 1),
(1329, 14, 'Leucoderma Treatment', '2019-07-31 14:52:17', '2019-07-31', 1, 1),
(1330, 14, 'Anti Aging Treatment', '2019-07-31 14:52:22', '2019-07-31', 1, 1),
(1331, 14, 'Medical Vitiligo Treatment', '2019-07-31 14:52:33', '2019-07-31', 1, 1),
(1332, 14, 'Neurological Problems', '2019-07-31 14:52:39', '2019-07-31', 1, 1),
(1333, 14, 'Heart Conditions', '2019-07-31 14:52:46', '2019-07-31', 1, 1),
(1334, 14, 'Chronic Skin Allery', '2019-07-31 14:52:52', '2019-07-31', 1, 1),
(1335, 14, 'Viral Fever Treatment', '2019-07-31 14:52:59', '2019-07-31', 1, 1),
(1336, 14, 'Skin Care', '2019-07-31 14:53:05', '2019-07-31', 1, 1),
(1337, 14, 'Skin Allergies', '2019-07-31 14:53:11', '2019-07-31', 1, 1),
(1338, 14, 'Chronic Kidney Disease', '2019-07-31 14:53:18', '2019-07-31', 1, 1),
(1339, 14, 'Peptic / Gastric Ulcer Treatment', '2019-07-31 14:53:25', '2019-07-31', 1, 1),
(1340, 14, 'Children Asthma Treatment', '2019-07-31 14:53:31', '2019-07-31', 1, 1),
(1341, 14, 'Joint and Muscle Problems', '2019-07-31 14:53:41', '2019-07-31', 1, 1),
(1342, 14, 'Joint Pain Treatment', '2019-07-31 14:53:49', '2019-07-31', 1, 1),
(1343, 14, 'Insomnia in Children Treatment', '2019-07-31 14:53:57', '2019-07-31', 1, 1),
(1344, 14, 'Foot Infection', '2019-07-31 14:54:04', '2019-07-31', 1, 1),
(1345, 14, 'Neck Pain Treatment', '2019-07-31 14:54:11', '2019-07-31', 1, 1),
(1346, 14, 'Female Infertility Treatment', '2019-07-31 14:54:17', '2019-07-31', 1, 1),
(1347, 14, 'Menstrual Disorders in Adolescent Girls', '2019-07-31 14:54:24', '2019-07-31', 1, 1),
(1348, 14, 'Chronic Pain Treatment', '2019-07-31 14:54:30', '2019-07-31', 1, 1),
(1349, 14, 'Baldness Treatment', '2019-07-31 14:54:37', '2019-07-31', 1, 1),
(1350, 14, 'Fertility Treatment', '2019-07-31 14:54:43', '2019-07-31', 1, 1),
(1351, 14, 'Typhoid Fever Treatment', '2019-07-31 14:54:50', '2019-07-31', 1, 1),
(1352, 14, 'Dengue Fever Treatment', '2019-07-31 14:54:58', '2019-07-31', 1, 1),
(1353, 14, 'Lichen Planus  Treatment', '2019-07-31 14:55:04', '2019-07-31', 1, 1),
(1354, 14, 'Chronic Liver Disease', '2019-07-31 14:55:10', '2019-07-31', 1, 1),
(1355, 14, 'Vertigo Treatment', '2019-07-31 14:55:17', '2019-07-31', 1, 1),
(1356, 14, 'Gynecologist', '2019-07-31 14:55:26', '2019-07-31', 1, 1),
(1357, 14, 'Skin Blemishes Treatment', '2019-07-31 14:55:49', '2019-07-31', 1, 1),
(1358, 14, 'Colitis Treatment', '2019-07-31 14:55:55', '2019-07-31', 1, 1),
(1359, 14, 'Geriatric Healthcare', '2019-07-31 14:56:04', '2019-07-31', 1, 1),
(1360, 14, 'Skin Lightening', '2019-07-31 14:56:11', '2019-07-31', 1, 1),
(1361, 14, 'Treatment for Acne and Acne Scars', '2019-07-31 14:56:18', '2019-07-31', 1, 1),
(1362, 14, 'Weight Reduction', '2019-07-31 14:56:23', '2019-07-31', 1, 1),
(1363, 14, 'Chemical Peel', '2019-07-31 14:56:30', '2019-07-31', 1, 1),
(1364, 14, 'Meso and Stem Cell Therapy', '2019-07-31 14:56:37', '2019-07-31', 1, 1),
(1365, 14, 'Laser Treatment for Hair Growth', '2019-07-31 14:56:43', '2019-07-31', 1, 1),
(1366, 14, 'Glow Peels', '2019-07-31 14:56:50', '2019-07-31', 1, 1),
(1367, 14, 'PRP', '2019-07-31 14:56:57', '2019-07-31', 1, 1),
(1368, 14, 'Treatment for Open Pores and Stretch Marks', '2019-07-31 14:57:03', '2019-07-31', 1, 1),
(1369, 14, 'Removal of Warts, Corns and Skin Tags', '2019-07-31 14:57:10', '2019-07-31', 1, 1),
(1370, 14, 'Detan Treatment', '2019-07-31 14:57:16', '2019-07-31', 1, 1),
(1371, 14, 'Youth Counselling', '2019-07-31 14:57:23', '2019-07-31', 1, 1),
(1372, 14, 'Vaccination / Immunization', '2019-07-31 14:57:29', '2019-07-31', 1, 1),
(1373, 14, 'Yoga Therapy', '2019-07-31 14:57:37', '2019-07-31', 1, 1),
(1374, 14, 'Adult Counselling', '2019-07-31 14:57:44', '2019-07-31', 1, 1),
(1375, 14, 'Sleep Disturbance', '2019-07-31 14:57:50', '2019-07-31', 1, 1),
(1376, 14, 'De-Addiction', '2019-07-31 14:57:57', '2019-07-31', 1, 1),
(1377, 14, 'Low Confidence', '2019-07-31 14:58:08', '2019-07-31', 1, 1),
(1378, 14, 'Post Traumatic Stress Disorder (PTSD)', '2019-07-31 14:58:14', '2019-07-31', 1, 1),
(1379, 14, 'Psychotherapy', '2019-07-31 14:58:30', '2019-07-31', 1, 1),
(1380, 14, 'Nicotine / Tobacco (Smoking) De-Addiction Treatment', '2019-07-31 14:58:40', '2019-07-31', 1, 1),
(1381, 14, 'Headache Management', '2019-07-31 14:58:56', '2019-07-31', 1, 1),
(1382, 14, 'Pediaterics', '2019-08-01 06:14:43', '2019-08-01', 1, 1),
(1383, 14, 'Gynaecological', '2019-08-01 06:14:51', '2019-08-01', 1, 1),
(1384, 14, 'Venous Ulcer Treatment', '2019-08-01 06:14:59', '2019-08-01', 1, 1),
(1385, 14, 'Acess Bar HealingAcess Consciousness Bars and Body Process', '2019-08-01 06:15:21', '2019-08-01', 1, 1),
(1386, 14, 'Access Vission Correction', '2019-08-01 06:15:29', '2019-08-01', 1, 1),
(1387, 14, 'Crystal Healing', '2019-08-01 06:15:37', '2019-08-01', 1, 1),
(1388, 14, 'Lumbar Spondylitis Treatment', '2019-08-01 06:15:44', '2019-08-01', 1, 1),
(1389, 14, 'Pranic Healing', '2019-08-01 06:15:52', '2019-08-01', 1, 1),
(1390, 14, 'Weight Gain Diet Counselling', '2019-08-01 06:15:59', '2019-08-01', 1, 1),
(1391, 14, 'Diabetic Diet Counselling', '2019-08-01 06:16:07', '2019-08-01', 1, 1),
(1392, 14, 'Diet Counselling', '2019-08-01 06:16:14', '2019-08-01', 1, 1),
(1393, 14, 'Malaria Treatment', '2019-08-01 06:16:24', '2019-08-01', 1, 1),
(1394, 14, 'Hepatitis B Treatment', '2019-08-01 06:16:31', '2019-08-01', 1, 1),
(1395, 14, 'Hyper Pigmentation Treatment', '2019-08-01 06:16:39', '2019-08-01', 1, 1),
(1396, 14, 'Attention Deficit Hyperactiveity Disorder (ADHD) Treatment', '2019-08-01 06:16:47', '2019-08-01', 1, 1),
(1397, 14, 'Concentration Problems', '2019-08-01 06:16:57', '2019-08-01', 1, 1),
(1398, 14, 'Urinary Tract Obstruction', '2019-08-01 06:17:06', '2019-08-01', 1, 1),
(1399, 14, 'Health Checkup (General)', '2019-08-01 06:17:14', '2019-08-01', 1, 1),
(1400, 14, 'Well Women Healthcheck', '2019-08-01 06:17:22', '2019-08-01', 1, 1),
(1401, 14, 'Anxiety Disorders Treatment', '2019-08-01 06:17:29', '2019-08-01', 1, 1),
(1402, 14, 'Acute Diarrhea Treatment', '2019-08-01 06:17:37', '2019-08-01', 1, 1),
(1403, 14, 'Type 2 Diabetes Treatment', '2019-08-01 06:17:45', '2019-08-01', 1, 1),
(1404, 14, 'Osteoarthritis Treatment', '2019-08-01 06:17:54', '2019-08-01', 1, 1),
(1405, 14, 'Bedwetting', '2019-08-01 06:18:03', '2019-08-01', 1, 1),
(1406, 14, 'Cold and Cough Treatment', '2019-08-01 06:18:10', '2019-08-01', 1, 1),
(1407, 14, 'Female Sexual Problems', '2019-08-01 06:18:18', '2019-08-01', 1, 1),
(1408, 14, 'Male Sexual Problems', '2019-08-01 06:18:27', '2019-08-01', 1, 1),
(1409, 14, 'Sexual Problems', '2019-08-01 06:18:37', '2019-08-01', 1, 1),
(1410, 14, 'Trichology', '2019-08-01 06:18:44', '2019-08-01', 1, 1),
(1411, 14, 'Male Infertility Treatment', '2019-08-01 06:18:51', '2019-08-01', 1, 1),
(1412, 14, 'Uterine Fibroid Treatment', '2019-08-01 06:18:58', '2019-08-01', 1, 1),
(1413, 14, 'Rheumatoid Arthritis Treatment', '2019-08-01 06:19:09', '2019-08-01', 1, 1),
(1414, 14, 'Ankyosing Spondylitis Treatment', '2019-08-01 06:19:17', '2019-08-01', 1, 1),
(1415, 14, 'Glaucoma Treatment', '2019-08-01 06:19:24', '2019-08-01', 1, 1),
(1416, 14, 'Catract Treatment', '2019-08-01 06:19:34', '2019-08-01', 1, 1),
(1417, 14, 'Tonsillitis ', '2019-08-01 06:19:44', '2019-08-01', 1, 1),
(1418, 14, 'Corn Removal', '2019-08-01 06:19:52', '2019-08-01', 1, 1),
(1419, 14, 'Sciatica Treatment', '2019-08-01 06:20:00', '2019-08-01', 1, 1),
(1420, 14, 'Constipation Treatment', '2019-08-01 06:20:18', '2019-08-01', 1, 1),
(1421, 14, 'Haemorroids and Fissures', '2019-08-01 06:20:26', '2019-08-01', 1, 1),
(1422, 14, 'Fistula Treatment', '2019-08-01 06:20:33', '2019-08-01', 1, 1),
(1423, 14, 'Conjuntivitis Treatment', '2019-08-01 06:20:43', '2019-08-01', 1, 1),
(1424, 14, 'Diabetes Renal Failure', '2019-08-01 06:20:52', '2019-08-01', 1, 1),
(1425, 14, 'Hypothyroid Treatment', '2019-08-01 06:21:01', '2019-08-01', 1, 1),
(1426, 14, 'Hyperthyroid Treatment', '2019-08-01 06:21:08', '2019-08-01', 1, 1),
(1427, 14, 'Anemia Treatment', '2019-08-01 06:21:16', '2019-08-01', 1, 1),
(1428, 14, 'Varicose Veins Treatment', '2019-08-01 06:21:24', '2019-08-01', 1, 1),
(1429, 14, 'Ovarian Cyst', '2019-08-01 06:21:31', '2019-08-01', 1, 1),
(1430, 14, 'White Grey Hair Treatment', '2019-08-01 06:21:38', '2019-08-01', 1, 1),
(1431, 14, 'Sterility Treatment', '2019-08-01 06:22:02', '2019-08-01', 1, 1),
(1432, 14, 'Epilepsy Treatment', '2019-08-01 06:22:19', '2019-08-01', 1, 1),
(1433, 14, 'Ear Ache', '2019-08-01 06:22:59', '2019-08-01', 1, 1),
(1434, 14, 'Leuchorrea', '2019-08-01 06:23:09', '2019-08-01', 1, 1),
(1435, 14, 'Menopause Treatment', '2019-08-01 06:23:17', '2019-08-01', 1, 1),
(1436, 14, 'Osteoporosos Treatment', '2019-08-01 06:23:26', '2019-08-01', 1, 1),
(1437, 14, 'Fungal Infection', '2019-08-01 06:23:37', '2019-08-01', 1, 1),
(1438, 14, 'Acute Pancreatitis Treatment', '2019-08-01 06:23:48', '2019-08-01', 1, 1),
(1439, 14, 'Stammering', '2019-08-01 06:23:57', '2019-08-01', 1, 1),
(1440, 14, 'Tumors', '2019-08-01 06:24:16', '2019-08-01', 1, 1),
(1441, 14, 'Urinary Tract Infectin (UTI)', '2019-08-01 06:24:28', '2019-08-01', 1, 1),
(1442, 14, 'Respiratory Diseases', '2019-08-01 06:24:40', '2019-08-01', 1, 1),
(1443, 14, 'Gout Treatment', '2019-08-01 06:25:36', '2019-08-01', 1, 1),
(1444, 14, 'Premature Ejaculation', '2019-08-01 06:25:49', '2019-08-01', 1, 1),
(1445, 11, 'Hip Replacement', '2019-08-09 13:30:37', '2019-08-09', 1, 1),
(1446, 11, 'Knee Replacement', '2019-08-09 13:30:46', '2019-08-09', 1, 1),
(1447, 11, 'Joint Replacement Surgery', '2019-08-09 13:30:54', '2019-08-09', 1, 1),
(1448, 11, 'Arthritis Management', '2019-08-09 13:31:02', '2019-08-09', 1, 1),
(1449, 11, 'Fracture Treatment', '2019-08-09 13:31:12', '2019-08-09', 1, 1),
(1450, 11, 'Osteoporosis Treatment', '2019-08-09 13:31:19', '2019-08-09', 1, 1),
(1451, 11, 'Primary Hip and Knee Arthoplasty', '2019-08-09 13:31:33', '2019-08-09', 1, 1),
(1452, 11, 'Revision Hip and Knee Arthoplasty', '2019-08-09 13:31:48', '2019-08-09', 1, 1),
(1453, 11, 'Pain Management Counselling', '2019-08-09 13:31:56', '2019-08-09', 1, 1),
(1454, 11, 'Trauma Surgery', '2019-08-09 13:32:03', '2019-08-09', 1, 1),
(1455, 11, 'Elbow Replacement', '2019-08-09 13:32:10', '2019-08-09', 1, 1),
(1456, 11, 'Shoulder Replacement', '2019-08-09 13:32:17', '2019-08-09', 1, 1),
(1457, 11, 'Post Surgery Physiotherapy / Rehabilitation', '2019-08-09 13:32:26', '2019-08-09', 1, 1),
(1458, 11, 'Pelvi - Acetabular Surgeries', '2019-08-09 13:32:33', '2019-08-09', 1, 1),
(1459, 11, 'Knee Braces For Osteoarthritis', '2019-08-09 13:32:40', '2019-08-09', 1, 1),
(1460, 11, 'Physiotherapy For Sports Injury Rehabilitation', '2019-08-09 13:32:48', '2019-08-09', 1, 1),
(1461, 11, 'Orthopedic Physiotherapy', '2019-08-09 13:32:55', '2019-08-09', 1, 1),
(1462, 11, 'Musculoskeletal Infections', '2019-08-09 13:33:03', '2019-08-09', 1, 1),
(1463, 11, 'Bone Trauma', '2019-08-09 13:33:10', '2019-08-09', 1, 1),
(1464, 11, 'Lower Back Pain', '2019-08-09 13:33:18', '2019-08-09', 1, 1),
(1465, 11, 'Ligament Reconstruction', '2019-08-09 13:33:28', '2019-08-09', 1, 1),
(1466, 11, 'Paediatrics - Ortho', '2019-08-09 13:33:36', '2019-08-09', 1, 1),
(1467, 11, 'Direct Anterior Approach to Total Hip Replacement', '2019-08-09 13:33:44', '2019-08-09', 1, 1),
(1468, 11, 'Synovial Fluid Replacement Centre', '2019-08-09 13:33:51', '2019-08-09', 1, 1),
(1469, 11, 'PRP (Platelet Rich Plasma) Therapy in Orthopaedics', '2019-08-09 13:34:31', '2019-08-09', 1, 1),
(1470, 11, 'Viscus Supplements (Synovial Fluid Restoration)', '2019-08-09 13:35:18', '2019-08-09', 1, 1),
(1471, 11, 'Arthroscopy', '2019-08-09 13:52:16', '2019-08-09', 1, 1),
(1472, 11, 'Arthoplasty', '2019-08-09 13:52:26', '2019-08-09', 1, 1),
(1473, 11, 'Arthritis and Pain Management', '2019-08-09 13:52:33', '2019-08-09', 1, 1),
(1474, 11, 'Joint Mobilization', '2019-08-09 13:52:40', '2019-08-09', 1, 1),
(1475, 11, 'ACL Reconstruction', '2019-08-09 13:52:47', '2019-08-09', 1, 1),
(1476, 11, 'Spinal Therapy', '2019-08-09 13:52:54', '2019-08-09', 1, 1),
(1477, 11, 'Hip Resurfacing', '2019-08-09 13:53:04', '2019-08-09', 1, 1),
(1478, 11, 'Knee Osteotomy', '2019-08-09 13:53:11', '2019-08-09', 1, 1),
(1479, 11, 'Radio Frequency Neurotomy', '2019-08-09 13:53:49', '2019-08-09', 1, 1),
(1480, 11, 'Musculoskeletal Pain Management', '2019-08-09 13:53:55', '2019-08-09', 1, 1),
(1481, 11, 'Disc Prolapse', '2019-08-09 13:54:03', '2019-08-09', 1, 1),
(1482, 11, 'Spondylosis', '2019-08-09 13:54:09', '2019-08-09', 1, 1),
(1483, 11, 'Joint Dislocation Treatment', '2019-08-09 13:54:23', '2019-08-09', 1, 1),
(1484, 11, 'Skeletal Dysplasias', '2019-08-09 13:54:30', '2019-08-09', 1, 1),
(1485, 11, 'Limb Lenghthening', '2019-08-09 13:54:37', '2019-08-09', 1, 1),
(1486, 11, 'Neuromuscular Disorders', '2019-08-09 13:54:44', '2019-08-09', 1, 1),
(1487, 11, 'Chemonucleolysis', '2019-08-09 13:54:52', '2019-08-09', 1, 1),
(1488, 11, 'Limb Deformities', '2019-08-09 13:54:59', '2019-08-09', 1, 1),
(1489, 11, 'Cartilage Surgery', '2019-08-09 13:55:06', '2019-08-09', 1, 1),
(1490, 11, 'Knee Pain Treatment', '2019-08-09 13:55:13', '2019-08-09', 1, 1),
(1491, 11, 'Hip Pain Treatment', '2019-08-09 13:55:19', '2019-08-09', 1, 1),
(1492, 11, 'Achilles Tendon Rupture Treatment', '2019-08-09 13:55:26', '2019-08-09', 1, 1),
(1493, 11, 'Spine Mobilization', '2019-08-09 13:55:33', '2019-08-09', 1, 1),
(1494, 11, 'Meniscus Injury', '2019-08-09 13:55:40', '2019-08-09', 1, 1),
(1495, 11, 'Shoulder SLAP (Tear) Lesions', '2019-08-09 13:55:48', '2019-08-09', 1, 1),
(1496, 11, 'Bankart Repair', '2019-08-09 13:55:56', '2019-08-09', 1, 1),
(1497, 11, 'Rotator Cuff Injury Treatment', '2019-08-09 13:56:03', '2019-08-09', 1, 1),
(1498, 11, 'Spinal Disc Surgery', '2019-08-09 13:56:11', '2019-08-09', 1, 1),
(1499, 11, 'Sports Injury Treatment / Management', '2019-08-09 13:56:18', '2019-08-09', 1, 1),
(1500, 11, 'Joint and Muscle Problems', '2019-08-09 13:56:28', '2019-08-09', 1, 1),
(1501, 11, 'Joint and Musculoskeletal Disorders', '2019-08-09 13:56:34', '2019-08-09', 1, 1),
(1502, 11, 'Soft Tissue Injury Management', '2019-08-09 13:56:42', '2019-08-09', 1, 1),
(1503, 11, 'Spinal Disorders', '2019-08-09 13:56:49', '2019-08-09', 1, 1),
(1504, 11, 'Foot Care', '2019-08-09 13:57:00', '2019-08-09', 1, 1),
(1505, 11, 'Spine Injury', '2019-08-09 13:57:07', '2019-08-09', 1, 1),
(1506, 11, 'Spinal Deformity Corrections', '2019-08-09 13:57:16', '2019-08-09', 1, 1),
(1507, 11, 'Minimally Invasive Knee Correction', '2019-08-09 13:57:24', '2019-08-09', 1, 1),
(1508, 11, 'Minimally Invasive Hip Correctioin', '2019-08-09 13:57:30', '2019-08-09', 1, 1),
(1509, 11, 'Knee Care', '2019-08-09 13:57:37', '2019-08-09', 1, 1),
(1510, 11, 'Foot Drop', '2019-08-09 13:57:44', '2019-08-09', 1, 1),
(1511, 11, 'Frozen Shoulder Physiotherapy', '2019-08-09 13:57:51', '2019-08-09', 1, 1),
(1512, 11, 'Chronic Pain Treatment', '2019-08-09 13:57:58', '2019-08-09', 1, 1),
(1513, 11, 'Back Pain Treatment', '2019-08-09 13:58:06', '2019-08-09', 1, 1),
(1514, 11, 'Osteoarthritis Treatment', '2019-08-09 13:58:12', '2019-08-09', 1, 1),
(1515, 11, 'Cruciate Ligament Reconstruction', '2019-08-09 13:58:20', '2019-08-09', 1, 1),
(1516, 11, 'Back Pain Physiotherapy', '2019-08-09 13:58:26', '2019-08-09', 1, 1),
(1517, 11, 'Frozen Shoulder Treatment', '2019-08-09 13:58:34', '2019-08-09', 1, 1),
(1518, 11, 'Articular Degenerative Disease Treatment', '2019-08-09 13:58:41', '2019-08-09', 1, 1),
(1519, 11, 'Column Traumatology', '2019-08-09 13:58:50', '2019-08-09', 1, 1),
(1520, 11, 'Orthopedic Physical Therapy', '2019-08-09 13:58:57', '2019-08-09', 1, 1),
(1521, 11, 'Correction of Deformities', '2019-08-09 13:59:04', '2019-08-09', 1, 1),
(1522, 11, 'Osteomalacia', '2019-08-09 13:59:19', '2019-08-09', 1, 1),
(1523, 11, 'Hand Pain Treatment', '2019-08-09 13:59:30', '2019-08-09', 1, 1),
(1524, 11, 'Disk Slip', '2019-08-09 13:59:38', '2019-08-09', 1, 1),
(1525, 11, 'External Fixator', '2019-08-09 13:59:48', '2019-08-09', 1, 1),
(1526, 11, 'Functional Orthopedics', '2019-08-09 13:59:54', '2019-08-09', 1, 1),
(1527, 11, 'Reconstruction and Bone Lenghtening', '2019-08-09 14:00:02', '2019-08-09', 1, 1),
(1528, 11, 'Reconstruction and Rehabilitation', '2019-08-09 14:00:09', '2019-08-09', 1, 1),
(1529, 11, 'Herniated Disc', '2019-08-09 14:00:16', '2019-08-09', 1, 1),
(1530, 11, 'Skeletal Muscle Therapy', '2019-08-09 14:00:22', '2019-08-09', 1, 1),
(1531, 11, 'Spasticity', '2019-08-09 14:00:30', '2019-08-09', 1, 1),
(1532, 11, 'Muscle Release', '2019-08-09 14:00:36', '2019-08-09', 1, 1),
(1533, 11, 'Neck Pain Treatment', '2019-08-09 14:00:43', '2019-08-09', 1, 1),
(1534, 11, 'Wrist Problems', '2019-08-09 14:00:50', '2019-08-09', 1, 1),
(1535, 11, 'Joint Pain Treatment', '2019-08-09 14:00:57', '2019-08-09', 1, 1),
(1536, 11, 'Plantar Fascitis', '2019-08-09 14:01:04', '2019-08-09', 1, 1),
(1537, 11, 'Stem Cell Therapy For Orthopedic Conditions', '2019-08-09 14:01:11', '2019-08-09', 1, 1),
(1538, 11, 'Sciatic Pain Treatment', '2019-08-09 14:01:19', '2019-08-09', 1, 1),
(1539, 11, 'Tailbone Pain Treatment', '2019-08-09 14:01:26', '2019-08-09', 1, 1),
(1540, 11, 'Cervical Spondylitis Treatment', '2019-08-09 14:01:32', '2019-08-09', 1, 1),
(1541, 11, 'Percutaneous Vertebroplasty For Compression Fracture', '2019-08-09 14:01:39', '2019-08-09', 1, 1),
(1542, 11, 'Kyphoplasty', '2019-08-09 14:01:45', '2019-08-09', 1, 1),
(1543, 11, 'Neck and Spine Biopsy', '2019-08-09 14:01:52', '2019-08-09', 1, 1),
(1544, 11, 'Ligament and Tendon Repair', '2019-08-09 14:01:59', '2019-08-09', 1, 1),
(1545, 11, 'Hip Arthroplasty', '2019-08-09 14:02:06', '2019-08-09', 1, 1),
(1546, 11, 'Knee Arthroplasty', '2019-08-09 14:02:13', '2019-08-09', 1, 1),
(1547, 11, 'Heat Therapy Treatment', '2019-08-09 14:02:19', '2019-08-09', 1, 1),
(1548, 11, 'Diabetic Foot Check-Up', '2019-08-09 14:02:27', '2019-08-09', 1, 1),
(1549, 11, 'Foot Injury Treatment', '2019-08-09 14:02:33', '2019-08-09', 1, 1),
(1550, 11, 'High-Risk Wound Care', '2019-08-09 14:02:40', '2019-08-09', 1, 1),
(1551, 11, 'Lower Extremity Wound Care', '2019-08-09 14:02:48', '2019-08-09', 1, 1),
(1552, 11, 'Ankle-Brachial Index', '2019-08-09 14:02:54', '2019-08-09', 1, 1),
(1553, 11, 'Foot Pressure / Vascular Assessment', '2019-08-09 14:03:02', '2019-08-09', 1, 1),
(1554, 11, 'Foot Assessment', '2019-08-09 14:03:10', '2019-08-09', 1, 1),
(1555, 11, 'ACI Reconstruction', '2019-08-09 14:03:26', '2019-08-09', 1, 1),
(1556, 11, 'Arthoscopy', '2019-08-09 14:03:34', '2019-08-09', 1, 1),
(1557, 11, 'Sprain Treatment', '2019-08-09 14:03:41', '2019-08-09', 1, 1),
(1558, 11, 'Spondylitis', '2019-08-09 14:03:49', '2019-08-09', 1, 1),
(1559, 11, 'Spinal Fusion', '2019-08-09 14:03:57', '2019-08-09', 1, 1),
(1560, 11, 'Toe Walking', '2019-08-09 14:04:04', '2019-08-09', 1, 1),
(1561, 11, 'Laminectomy', '2019-08-09 14:04:11', '2019-08-09', 1, 1),
(1562, 11, 'Accidents and Trauma', '2019-08-09 14:04:18', '2019-08-09', 1, 1),
(1563, 11, 'Unicondylar Knee Replacements', '2019-08-09 14:04:26', '2019-08-09', 1, 1),
(1564, 11, 'All Orthopaedics Services', '2019-08-09 14:04:33', '2019-08-09', 1, 1),
(1565, 11, 'McKinzie Treatment For Spine', '2019-08-09 14:04:41', '2019-08-09', 1, 1),
(1566, 11, 'Spinal Diseases', '2019-08-09 14:04:50', '2019-08-09', 1, 1),
(1567, 11, 'Hip, Ankle, Knee Injury', '2019-08-09 14:04:56', '2019-08-09', 1, 1),
(1568, 11, 'Scoliosis Correction', '2019-08-09 14:05:04', '2019-08-09', 1, 1),
(1569, 11, 'Cubital Tunnel Syndrome', '2019-08-09 14:05:11', '2019-08-09', 1, 1),
(1570, 11, 'Tumours', '2019-08-09 14:05:19', '2019-08-09', 1, 1),
(1571, 11, 'Bmd Test', '2019-08-09 14:05:25', '2019-08-09', 1, 1),
(1572, 11, 'Infections', '2019-08-09 14:05:33', '2019-08-09', 1, 1),
(1573, 11, 'Flat Foot', '2019-08-09 14:05:40', '2019-08-09', 1, 1),
(1574, 11, 'Fibromyalgia', '2019-08-09 14:05:52', '2019-08-09', 1, 1),
(1575, 11, 'Rheumatoid Arthritis', '2019-08-09 14:05:59', '2019-08-09', 1, 1),
(1576, 11, 'Calcaneal Spur', '2019-08-09 14:06:05', '2019-08-09', 1, 1),
(1577, 11, 'Whippeles Surgery', '2019-08-09 14:06:12', '2019-08-09', 1, 1),
(1578, 11, 'Spur', '2019-08-09 14:06:19', '2019-08-09', 1, 1),
(1579, 11, 'X-Ray', '2019-08-09 14:06:25', '2019-08-09', 1, 1),
(1580, 11, 'Gout', '2019-08-09 14:06:33', '2019-08-09', 1, 1),
(1581, 11, 'Tuberculosis Of Bone', '2019-08-09 14:06:41', '2019-08-09', 1, 1),
(1582, 11, 'Club Foot', '2019-08-09 14:06:47', '2019-08-09', 1, 1),
(1583, 11, 'ACL Tears', '2019-08-09 14:06:54', '2019-08-09', 1, 1),
(1584, 11, 'PCL Tears', '2019-08-09 14:07:01', '2019-08-09', 1, 1),
(1585, 11, 'Tennis Elbow Physiotherapy', '2019-08-09 14:07:08', '2019-08-09', 1, 1),
(1586, 11, 'Congential Disorders Evaluation / Treatment', '2019-08-09 14:07:15', '2019-08-09', 1, 1),
(1587, 11, 'Childhood Bone and Soft Tissue Tumors', '2019-08-09 14:07:21', '2019-08-09', 1, 1),
(1588, 11, 'Exercise Therapy', '2019-08-09 14:07:58', '2019-08-09', 1, 1),
(1589, 11, 'Manual Therapy', '2019-08-09 14:08:27', '2019-08-09', 1, 1),
(1590, 11, 'Assessment', '2019-08-09 14:08:34', '2019-08-09', 1, 1),
(1591, 15, 'Marriage/ Marital Counselling', '2019-08-12 13:43:05', '2019-08-12', 1, 1),
(1592, 15, 'Pre-Marital Counselling', '2019-08-12 13:43:17', '2019-08-12', 1, 1),
(1593, 15, 'Early Parenting Issues', '2019-08-12 13:43:24', '2019-08-12', 1, 1),
(1594, 15, 'Skin Care', '2019-08-12 13:43:31', '2019-08-12', 1, 1),
(1595, 15, 'Netra Tharpanam', '2019-08-12 13:43:38', '2019-08-12', 1, 1),
(1596, 15, 'Youth Counselling', '2019-08-12 13:43:46', '2019-08-12', 1, 1),
(1597, 15, 'Family Counseling', '2019-08-12 13:43:54', '2019-08-12', 1, 1),
(1598, 15, 'Panchakarma', '2019-08-12 13:44:01', '2019-08-12', 1, 1),
(1599, 15, 'Detoxification', '2019-08-12 13:44:09', '2019-08-12', 1, 1),
(1600, 15, 'Neck Pain Treatment', '2019-08-12 13:44:16', '2019-08-12', 1, 1),
(1601, 15, 'Grief Counselling', '2019-08-12 13:44:24', '2019-08-12', 1, 1),
(1602, 15, 'Adult Counselling', '2019-08-12 13:44:32', '2019-08-12', 1, 1),
(1603, 15, 'Hair Care', '2019-08-12 13:44:39', '2019-08-12', 1, 1),
(1604, 15, 'Shirodhara', '2019-08-12 13:44:48', '2019-08-12', 1, 1),
(1605, 15, 'Joints and Musculoskeletal Disorders', '2019-08-12 13:44:55', '2019-08-12', 1, 1),
(1606, 15, 'Arthritis Management', '2019-08-12 13:45:03', '2019-08-12', 1, 1),
(1607, 15, 'Obesity Treatment', '2019-08-12 13:45:11', '2019-08-12', 1, 1),
(1608, 15, 'Psoriasis Treatment', '2019-08-12 13:45:19', '2019-08-12', 1, 1),
(1609, 15, 'Infertility Evaluation / Treatment', '2019-08-12 13:45:26', '2019-08-12', 1, 1),
(1610, 15, 'Ayurvedic Surgery', '2019-08-12 13:45:35', '2019-08-12', 1, 1),
(1611, 15, 'Weight Loss Diet Counseling', '2019-08-12 13:45:43', '2019-08-12', 1, 1),
(1612, 15, 'Hair Loss Treatment', '2019-08-12 13:45:49', '2019-08-12', 1, 1),
(1613, 15, 'Stress Management', '2019-08-12 13:45:58', '2019-08-12', 1, 1),
(1614, 15, 'Treatment of Paralysis', '2019-08-12 13:46:05', '2019-08-12', 1, 1),
(1615, 15, 'Piles Treatment (Non Surgical)', '2019-08-12 13:46:17', '2019-08-12', 1, 1),
(1616, 15, 'Skin Tag Treatment', '2019-08-12 13:46:25', '2019-08-12', 1, 1),
(1617, 15, 'Gastritis Treatment', '2019-08-12 13:46:32', '2019-08-12', 1, 1),
(1618, 15, 'PCOD Treatment', '2019-08-12 13:46:39', '2019-08-12', 1, 1),
(1619, 15, 'Bronchial Asthma Treatment', '2019-08-12 13:46:48', '2019-08-12', 1, 1),
(1620, 15, 'Pizhichil', '2019-08-12 13:46:57', '2019-08-12', 1, 1),
(1621, 15, 'Anal Fissure Treatment (Non Surgical)', '2019-08-12 13:47:04', '2019-08-12', 1, 1),
(1622, 15, 'Sirodhara', '2019-08-12 13:47:11', '2019-08-12', 1, 1),
(1623, 15, 'Vasthi', '2019-08-12 13:47:19', '2019-08-12', 1, 1),
(1624, 15, 'Family Planning and Full Contraceptive Services', '2019-08-12 13:47:27', '2019-08-12', 1, 1),
(1625, 15, 'Abhyangam', '2019-08-12 13:47:34', '2019-08-12', 1, 1),
(1626, 15, 'Acute Pancreatitis Treatment', '2019-08-12 13:47:41', '2019-08-12', 1, 1),
(1627, 15, 'Kizhi', '2019-08-12 13:47:48', '2019-08-12', 1, 1),
(1628, 15, 'Sinus / Sinusitis Treatment', '2019-08-12 13:47:56', '2019-08-12', 1, 1),
(1629, 15, 'Snehapanam', '2019-08-12 13:48:04', '2019-08-12', 1, 1),
(1630, 15, 'Skin Rash Treatment', '2019-08-12 13:48:11', '2019-08-12', 1, 1),
(1631, 15, 'Njavarakizhi', '2019-08-12 13:48:20', '2019-08-12', 1, 1),
(1632, 15, 'Back Pain Physiotherapy', '2019-08-12 13:48:28', '2019-08-12', 1, 1),
(1633, 15, 'Tonsillitis Treatment', '2019-08-12 13:48:36', '2019-08-12', 1, 1),
(1634, 15, 'Joint Care Management', '2019-08-12 13:48:43', '2019-08-12', 1, 1),
(1635, 15, 'Irritable Bowel Syndrome (IBS) Treatment', '2019-08-12 13:48:52', '2019-08-12', 1, 1),
(1636, 15, 'Dysmenorrhea Treatment', '2019-08-12 13:49:00', '2019-08-12', 1, 1),
(1637, 15, 'Nadi Pariksha', '2019-08-12 13:49:08', '2019-08-12', 1, 1),
(1638, 15, 'Colitis Treatment', '2019-08-12 13:49:16', '2019-08-12', 1, 1),
(1639, 15, 'Udwarthanam', '2019-08-12 13:49:23', '2019-08-12', 1, 1),
(1640, 15, 'Lepanam', '2019-08-12 13:49:31', '2019-08-12', 1, 1),
(1641, 15, 'Sirovasthi', '2019-08-12 13:49:38', '2019-08-12', 1, 1),
(1642, 15, 'Nasyam', '2019-08-12 13:49:46', '2019-08-12', 1, 1),
(1643, 15, 'Eczema Treatment', '2019-08-12 13:49:53', '2019-08-12', 1, 1),
(1644, 15, 'Alopecia Areata Treatment', '2019-08-12 13:50:00', '2019-08-12', 1, 1),
(1645, 15, 'Acne / Pimple Treatment', '2019-08-12 13:50:09', '2019-08-12', 1, 1),
(1646, 15, 'Menstrual Disorders in Adolescent Girls', '2019-08-12 13:50:17', '2019-08-12', 1, 1),
(1647, 15, 'Lower / Upper Respiratory Tract Infection Treatment', '2019-08-12 13:50:26', '2019-08-12', 1, 1),
(1648, 15, 'Arthritis and Pain Management', '2019-08-12 13:50:34', '2019-08-12', 1, 1),
(1649, 15, 'Hyper Pigmentation Treatment', '2019-08-12 13:50:42', '2019-08-12', 1, 1),
(1650, 15, 'Varicose Veins Treatment', '2019-08-12 13:50:49', '2019-08-12', 1, 1),
(1651, 15, 'Allergy Treatment', '2019-08-12 13:50:57', '2019-08-12', 1, 1),
(1652, 15, 'Anorectal Surgeries', '2019-08-12 13:51:05', '2019-08-12', 1, 1),
(1653, 15, 'Fistula', '2019-08-12 13:51:13', '2019-08-12', 1, 1),
(1654, 15, 'Corn Removal', '2019-08-12 13:51:21', '2019-08-12', 1, 1),
(1655, 15, 'Wart Removal', '2019-08-12 13:51:28', '2019-08-12', 1, 1),
(1656, 15, 'Kshar Sutra', '2019-08-12 13:51:37', '2019-08-12', 1, 1),
(1657, 15, 'Nail Surgery', '2019-08-12 13:51:46', '2019-08-12', 1, 1),
(1658, 15, 'Anti Aging Treatment', '2019-08-12 13:51:54', '2019-08-12', 1, 1),
(1659, 15, 'Agnikarma', '2019-08-12 13:52:02', '2019-08-12', 1, 1),
(1660, 15, 'Insomnia Treatment', '2019-08-12 13:52:10', '2019-08-12', 1, 1),
(1661, 15, 'Tonsillitis and Adenoids', '2019-08-12 13:52:18', '2019-08-12', 1, 1),
(1662, 15, 'Epilepsy and Parkinson', '2019-08-13 04:30:44', '2019-08-13', 1, 1),
(1663, 15, 'Nasal Polyps', '2019-08-13 04:30:58', '2019-08-13', 1, 1),
(1664, 15, 'Alopecia', '2019-08-13 04:31:06', '2019-08-13', 1, 1),
(1665, 15, 'Migraine Treatment', '2019-08-13 04:31:16', '2019-08-13', 1, 1),
(1666, 15, 'Back Pain - IVDP', '2019-08-13 04:31:27', '2019-08-13', 1, 1),
(1667, 15, 'Investigation and Treatment of Epistaxis', '2019-08-13 04:31:34', '2019-08-13', 1, 1),
(1668, 15, 'Lifestyle Disorders', '2019-08-13 04:31:42', '2019-08-13', 1, 1),
(1669, 15, 'Wrinkle Treatment', '2019-08-13 04:31:51', '2019-08-13', 1, 1),
(1670, 15, 'Diabetes Management', '2019-08-13 04:31:58', '2019-08-13', 1, 1),
(1671, 15, 'Cognitive Behavioral Therapy (CBT)', '2019-08-13 04:32:06', '2019-08-13', 1, 1),
(1672, 15, 'Atopic Dermatitis Treatment', '2019-08-13 04:32:12', '2019-08-13', 1, 1),
(1673, 15, 'Child Development Disease Treatment', '2019-08-13 04:32:21', '2019-08-13', 1, 1),
(1674, 15, 'Skin Allergies', '2019-08-13 04:32:29', '2019-08-13', 1, 1),
(1675, 15, 'Vertigo Treatment', '2019-08-13 04:32:37', '2019-08-13', 1, 1),
(1676, 15, 'Viral Fever Treatment', '2019-08-13 04:32:45', '2019-08-13', 1, 1),
(1677, 15, 'Takradhara', '2019-08-13 04:32:53', '2019-08-13', 1, 1),
(1678, 15, 'Kativasthi', '2019-08-13 04:33:04', '2019-08-13', 1, 1),
(1679, 15, 'Yoniprakshalanam', '2019-08-13 04:33:10', '2019-08-13', 1, 1),
(1680, 15, 'Thalam', '2019-08-13 04:33:18', '2019-08-13', 1, 1),
(1681, 15, 'Elakizhi', '2019-08-13 04:33:25', '2019-08-13', 1, 1),
(1682, 15, 'Consultation', '2019-08-13 04:33:33', '2019-08-13', 1, 1),
(1683, 15, 'Gynae Problems', '2019-08-13 04:33:40', '2019-08-13', 1, 1),
(1684, 15, 'Ayurveda', '2019-08-13 04:33:48', '2019-08-13', 1, 1),
(1685, 15, 'Diabetic Diet Counseling', '2019-08-13 04:33:55', '2019-08-13', 1, 1),
(1686, 15, 'Chronic Pain Treatment', '2019-08-13 04:34:03', '2019-08-13', 1, 1),
(1687, 15, 'Chest Pain Treatment', '2019-08-13 04:34:11', '2019-08-13', 1, 1),
(1688, 15, 'Kerala Massage', '2019-08-13 04:34:20', '2019-08-13', 1, 1),
(1689, 15, 'Yoga Therapy', '2019-08-13 04:34:28', '2019-08-13', 1, 1),
(1690, 15, 'Ayurvedic Massage', '2019-08-13 04:34:36', '2019-08-13', 1, 1),
(1691, 15, 'Spondylosis', '2019-08-13 04:34:45', '2019-08-13', 1, 1),
(1692, 15, 'PCOD / PCOS Treatment', '2019-08-13 04:34:54', '2019-08-13', 1, 1),
(1693, 15, 'Rheumatism Treatment', '2019-08-13 04:35:02', '2019-08-13', 1, 1),
(1694, 15, 'Kidney Stone Treatment', '2019-08-13 04:35:12', '2019-08-13', 1, 1),
(1695, 15, 'Herpes Infection Treatment', '2019-08-13 04:35:20', '2019-08-13', 1, 1),
(1696, 15, 'Constipation Treatment', '2019-08-13 04:35:28', '2019-08-13', 1, 1),
(1697, 15, 'Cardiovascular & Pulmonary Physiotherapy', '2019-08-13 04:35:37', '2019-08-13', 1, 1),
(1698, 15, 'Contraception Advice', '2019-08-13 04:35:45', '2019-08-13', 1, 1),
(1699, 15, 'Headache Management', '2019-08-13 04:35:53', '2019-08-13', 1, 1),
(1700, 15, 'Pre & Post Delivery Care', '2019-08-13 04:36:01', '2019-08-13', 1, 1),
(1701, 15, 'Disc Prolapse', '2019-08-13 04:36:09', '2019-08-13', 1, 1),
(1702, 15, 'Gastroentrology', '2019-08-13 04:36:18', '2019-08-13', 1, 1),
(1703, 15, 'Beauty Enhancement', '2019-08-13 04:36:26', '2019-08-13', 1, 1),
(1704, 15, 'Rheumatoid Arthritis Treatment', '2019-08-13 04:36:34', '2019-08-13', 1, 1),
(1705, 15, 'Osteoarthritis Treatment', '2019-08-13 04:36:44', '2019-08-13', 1, 1),
(1706, 15, 'Hypertension Treatment', '2019-08-13 04:36:53', '2019-08-13', 1, 1),
(1707, 15, 'Herbal Steam Bath', '2019-08-13 04:37:01', '2019-08-13', 1, 1),
(1708, 15, 'Podikizhi', '2019-08-13 04:37:09', '2019-08-13', 1, 1),
(1709, 15, 'Dandruff Treatment', '2019-08-13 04:37:17', '2019-08-13', 1, 1),
(1710, 15, 'Frozen Shoulder Physiotherapy', '2019-08-13 04:37:27', '2019-08-13', 1, 1),
(1711, 15, 'Osteopathic Treatment', '2019-08-13 04:43:14', '2019-08-13', 1, 1),
(1712, 15, 'Sexual Therapy', '2019-08-13 04:43:22', '2019-08-13', 1, 1),
(1713, 15, 'Thalapothichil', '2019-08-13 04:43:31', '2019-08-13', 1, 1),
(1714, 15, 'Siddhamarma', '2019-08-13 04:43:41', '2019-08-13', 1, 1),
(1715, 15, 'Marma Chikitsa', '2019-08-13 04:43:50', '2019-08-13', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_speciality`
--

CREATE TABLE `doctor_speciality` (
  `speciality_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `speciality_name` varchar(255) NOT NULL,
  `add_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modify_date` date NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `general_speciality` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doc_booking_list`
--

CREATE TABLE `doc_booking_list` (
  `doc_book_id` int(11) NOT NULL,
  `bookno` varchar(255) NOT NULL,
  `doc_id` varchar(255) NOT NULL,
  `service_id` int(11) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `fallowup_status` int(1) NOT NULL,
  `book_datetime` varchar(50) NOT NULL,
  `booking_datetimenew` datetime NOT NULL,
  `book_date` date NOT NULL,
  `message` varchar(999) NOT NULL,
  `status` int(11) NOT NULL,
  `booking_status` int(1) NOT NULL COMMENT '0=processing,1=confirm,2=reschdule,3=cancelled,4=completed',
  `re_booking_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doc_booking_list`
--

INSERT INTO `doc_booking_list` (`doc_book_id`, `bookno`, `doc_id`, `service_id`, `patient_name`, `uid`, `age`, `gender`, `fallowup_status`, `book_datetime`, `booking_datetimenew`, `book_date`, `message`, `status`, `booking_status`, `re_booking_date`) VALUES
(1, '', '1', 1, 'dharma', '3', '24', 'Male', 0, '2019-06-06 08:00 pm', '0000-00-00 00:00:00', '2019-06-06', 'test', 0, 2, ''),
(3, '', '1', 1, 'Harish', '18', '1', 'Male', 0, '2019-06-13 11:30 am', '0000-00-00 00:00:00', '2019-06-06', 'Hi', 0, 3, ''),
(4, '', '1', 2, 'dharma', '3', '10', 'Male', 0, '2019-06-06 09:00 pm', '0000-00-00 00:00:00', '2019-06-06', 'test', 0, 1, ''),
(5, '', '1', 2, 'dharma', '3', '12', 'Male', 0, '2019-06-06 07:00 pm', '2019-06-06 07:00:00', '2019-06-06', 'ewrwerwe', 0, 2, ''),
(6, '', '1', 1, 'dharma', '3', '23', 'Female', 0, '2019-06-06 08:30 pm', '2019-06-06 08:30:00', '2019-06-06', '4rwe', 0, 1, ''),
(7, '', '1', 2, 'Harish', '18', '23', 'Male', 0, '2019-06-14 11:00 am', '2019-06-14 11:00:00', '2019-06-06', 'test', 0, 1, ''),
(8, '', '1', 2, 'Harish', '18', '23', 'Male', 0, '2019-06-07 11:00 am', '2019-06-07 11:00:00', '2019-06-06', '', 0, 1, ''),
(9, '', '1', 1, 'dharma', '3', '2', 'Male', 0, '2019-06-21 10:00 am', '2019-06-21 10:00:00', '2019-06-06', 'sdsdf', 0, 1, ''),
(10, '', '1', 1, 'dharma', '3', '22', 'Male', 0, '2019-06-06 06:00 pm', '2019-06-06 06:00:00', '2019-06-06', 'fsdfsd', 0, 1, ''),
(11, '', '2', 1, 'Harish', '18', '23', 'Male', 0, '2019-06-13 10:00 am', '2019-06-13 10:00:00', '2019-06-07', '', 0, 1, ''),
(12, '', '3', 1, 'Harish', '18', '23', 'Male', 0, '2019-06-12 12:30 pm', '2019-06-12 12:30:00', '2019-06-07', 'OK', 0, 1, ''),
(13, '', '4', 5, 'Harish', '18', '23', 'Male', 0, '2019-06-14 11:00 am', '2019-06-14 11:00:00', '2019-06-07', '', 0, 1, ''),
(15, '', '1', 2, 'Madhusudhan', '19', '11', 'Male', 0, '2019-06-20 04:30 pm', '2019-06-20 04:30:00', '2019-06-07', '', 0, 1, ''),
(16, '', '1', 1, 'Madhusudhan', '19', '22', 'Male', 0, '2019-06-20 11:00 am', '2019-06-20 11:00:00', '2019-06-07', '', 0, 1, ''),
(17, '', '4', 4, 'Madhusudhan', '19', '100', 'Male', 0, '2019-06-07 12:00 am', '2019-06-07 12:00:00', '2019-06-07', '', 0, 1, ''),
(41, '', '1', 1, 'testingweb@gmail.com', '13', '23', 'Male', 0, '2019-07-03 09:30 am', '2019-07-03 09:30:00', '2019-07-02', 'OKay', 0, 1, ''),
(19, '', '1', 1, 'dharma', '3', '44', 'Male', 0, '2019-06-14 12:30 pm', '2019-06-14 12:30:00', '2019-06-13', 'Test', 0, 1, ''),
(20, '', '1', 2, 'Harish', '18', '23', 'Male', 0, '2019-06-14 11:30 am', '2019-06-14 11:30:00', '2019-06-13', 'Ok', 0, 1, ''),
(21, '', '1', 2, 'Harish', '18', '23', 'Male', 0, '2019-06-14 11:30 am', '2019-06-14 11:30:00', '2019-06-13', 'Ok', 0, 1, ''),
(22, '', '1', 2, 'Harish', '18', '23', 'Male', 0, '2019-06-20 01:00 pm', '2019-06-20 01:00:00', '2019-06-13', 'Ok', 0, 1, ''),
(23, '', '1', 2, 'Harish', '18', '23', 'Male', 0, '2019-06-20 01:00 pm', '2019-06-20 01:00:00', '2019-06-13', 'Ok', 0, 1, ''),
(40, '', '9', 2, 'testingweb@gmail.com', '13', '23', 'Male', 0, '2019-07-09 09:30 am', '2019-07-09 09:30:00', '2019-07-02', '', 0, 1, ''),
(25, '', '1', 2, 'Pavan Kumar', '20', '36', 'Male', 0, '2019-06-17 12:30 pm', '2019-06-17 12:30:00', '2019-06-14', '', 0, 1, ''),
(39, '', '9', 2, 'Harish', '18', '21', 'Male', 0, '2019-07-02 10:30 am', '2019-07-02 10:30:00', '2019-07-01', 'ok', 0, 1, ''),
(27, '', '3', 1, 'Harish', '18', '23', 'Male', 0, '2019-06-15 11:30 am', '2019-06-15 11:30:00', '2019-06-14', '', 0, 1, ''),
(28, '', '1', 1, 'Harish D M', '18', '23', 'Male', 0, '2019-06-25 11:00 am', '2019-06-25 11:00:00', '2019-06-24', 'Ok', 0, 1, ''),
(29, '', '4', 3, 'Harish D M ', '18', '23', 'Male', 0, '2019-06-25 10:30 am', '2019-06-25 10:30:00', '2019-06-24', 'OK', 0, 1, ''),
(30, '', '4', 3, 'Harish D M ', '18', '23', 'Male', 0, '2019-06-25 10:30 am', '2019-06-25 10:30:00', '2019-06-24', 'OK', 0, 1, ''),
(31, '', '2', 1, 'Harish', '18', '23', 'Male', 0, '2019-06-25 09:30 am', '2019-06-25 09:30:00', '2019-06-24', 'ok4', 0, 1, ''),
(32, '', '1', 1, 'sreekutty', '21', '24', 'Female', 0, '2019-06-25 12:30 pm', '2019-06-25 12:30:00', '2019-06-25', 'cardio -testing ', 0, 1, ''),
(33, '', '1', 1, 'Harish', '18', '24', 'Male', 0, '2019-06-26 09:30 am', '2019-06-26 09:30:00', '2019-06-25', 'Ok', 0, 1, ''),
(34, '', '2', 2, 'Harish', '18', '23', 'Male', 0, '2019-08-26 12:00 am', '2019-08-26 12:00:00', '2019-06-25', 'ok', 0, 1, ''),
(35, '', '1', 1, 'Harish', '18', '23', 'Male', 0, '2019-06-27 12:30 pm', '2019-06-27 12:30:00', '2019-06-26', 'ok', 0, 1, ''),
(36, '', '1', 1, 'Harish', '18', '23', 'Male', 0, '2019-06-27 09:30 am', '2019-06-27 09:30:00', '2019-06-26', 'Ok', 0, 1, ''),
(37, '', '1', 2, 'soumya', '23', '22', 'Female', 0, '2019-06-29 12:00 pm', '2019-06-29 12:00:00', '2019-06-29', 'cold', 0, 1, ''),
(38, '', '1', 2, 'soumya', '23', '22', 'Female', 0, '2019-06-29 12:00 pm', '2019-06-29 12:00:00', '2019-06-29', 'cold', 0, 1, ''),
(42, '', '9', 17, '', '20', '45', 'male', 0, '2019-07-12 12:00 pm', '0000-00-00 00:00:00', '2019-07-11', '', 0, 0, ''),
(43, '', '1', 15, '', '20', '24', 'female', 0, '2019-07-13 12:00 pm', '0000-00-00 00:00:00', '2019-07-11', '', 0, 0, ''),
(44, '', '1', 13, '', '20', '25', 'female', 0, '2019-07-17 04:30 pm', '0000-00-00 00:00:00', '2019-07-15', '', 0, 0, ''),
(45, '', '2', 34, '', '20', '45', 'male', 0, '2019-07-17 11:00 am', '0000-00-00 00:00:00', '2019-07-15', '', 1, 4, ''),
(46, '', '2', 30, '', '20', '42', 'male', 0, '2019-07-23 09:30 am', '0000-00-00 00:00:00', '2019-07-21', '', 0, 0, ''),
(47, '', '2', 28, '', '20', '25', 'female', 1, '2019-07-26 04:00 pm', '0000-00-00 00:00:00', '2019-07-22', '', 0, 0, ''),
(48, '', '1', 12, '', '18', '24', 'male', 0, '2019-07-27 10:00 am', '0000-00-00 00:00:00', '2019-07-26', 'Nill', 0, 0, ''),
(49, '', '4', 3, '', '18', '24', 'male', 1, '2019-07-27 12:00 pm', '0000-00-00 00:00:00', '2019-07-26', 'Ok', 0, 0, ''),
(50, '', '2', 24, '', '20', '45', 'male', 0, '2019-07-27 11:30 am', '0000-00-00 00:00:00', '2019-07-26', '', 0, 0, ''),
(51, '', '2', 30, '', '20', '45', 'male', 0, '2019-07-27 11:00 am', '0000-00-00 00:00:00', '2019-07-26', '', 0, 0, ''),
(52, '', '1', 12, '', '18', '40', 'male', 0, '2019-07-29 06:30 pm', '0000-00-00 00:00:00', '2019-07-29', 'Okay', 0, 0, ''),
(53, '', '1', 14, '', '18', '20', 'male', 0, '2019-07-30 07:30 pm', '0000-00-00 00:00:00', '2019-07-29', '', 0, 0, ''),
(54, '', '2', 23, '', '32', '21', 'male', 0, '2019-07-31 10:00 am', '0000-00-00 00:00:00', '2019-07-30', 'Okay', 0, 0, ''),
(55, '', '2', 40, 'Pavan Kumar', '20', '39', 'Male', 0, '2019-08-02 11:00 am', '2019-08-02 11:00:00', '2019-07-30', '', 0, 1, ''),
(56, '', '11', 1141, '', '20', '44', 'male', 0, '2019-08-14 04:00 pm', '0000-00-00 00:00:00', '2019-08-12', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `doc_booking_reschdule`
--

CREATE TABLE `doc_booking_reschdule` (
  `resc_id` int(11) NOT NULL,
  `doc_book_id` varchar(255) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `re_datetime` varchar(255) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  `user_type` int(11) NOT NULL COMMENT '1=user,2=admin',
  `status` int(11) NOT NULL,
  `add_datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doc_booking_reschdule`
--

INSERT INTO `doc_booking_reschdule` (`resc_id`, `doc_book_id`, `doc_id`, `uid`, `re_datetime`, `msg`, `user_type`, `status`, `add_datetime`) VALUES
(3, '1', 0, '3', '2019-07-02 16:00:00', 'ok', 1, 0, '2019-07-01 14:57:17'),
(2, '5', 0, '3', '2019-06-01 18:00:00', 'OKAy', 1, 0, '2019-06-13 16:48:10');

-- --------------------------------------------------------

--
-- Table structure for table `doc_booking_schedule`
--

CREATE TABLE `doc_booking_schedule` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `reschedule_date` datetime NOT NULL,
  `description` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doc_categorylist`
--

CREATE TABLE `doc_categorylist` (
  `cate_id` int(11) NOT NULL,
  `cate_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  `add_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `desp` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `doc_listid` text NOT NULL,
  `web_images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doc_categorylist`
--

INSERT INTO `doc_categorylist` (`cate_id`, `cate_name`, `category_image`, `add_datetime`, `desp`, `status`, `doc_listid`, `web_images`) VALUES
(1, 'Cardiology', 'cate_logo_1542520670.png', '2019-07-31 10:16:40', 'Cardio', 1, '1,2,3,5,8,9,10', 'heart-health-stock-photo-2.jpg'),
(2, 'Dermatology', 'cate_logo_1542520688.png', '2019-08-10 08:09:58', 'Dermi', 1, '4,10', 'dermat-19-1500457935.jpg'),
(3, 'ENT(Ear,Nose,Throat)', 'cate_logo_1542611344.png', '2019-02-04 07:27:04', 'ent', 1, '', 'Professional-Audiologist-in-Kolkata.jpg'),
(4, 'Gastroenterology', 'cate_logo_1542611366.png', '2019-07-30 19:14:00', 'gastro', 1, '7', 'what-is-a-gastroenterologist.jpg'),
(5, 'Gynecology & Obstetrics', 'cate_logo_1542611457.png', '2019-07-30 19:15:00', 'gyno', 1, '6', '189183-425x283-Doctor-in-discussion-with-patient.jpg'),
(6, 'Neurology', 'cate_logo_1542611479.png', '2019-07-30 19:16:00', 'neuro', 1, '', 'specialty-neurology.jpg'),
(7, 'Ophthalmology', 'cate_logo_1542611506.png', '2019-07-30 19:16:00', 'ophth', 1, '', 'optometry.jpg'),
(8, 'Phychiatry', 'cate_logo_1542611546.png', '2019-07-30 19:17:00', 'phychia', 1, '', 'hqdefault.jpg'),
(9, 'Urology', 'cate_logo_1542611564.png', '2019-07-30 19:18:00', 'urologi', 1, '', 'istockphoto-989800236-612x612.jpg'),
(10, 'Diabetology', 'cate_logo_1542611315.png', '2019-07-30 19:14:00', 'diabetic', 1, '', 'diabetes-2.jpg'),
(11, 'Orthopaedics', 'cate_logo_1542611525.png', '2019-07-30 19:22:00', 'ortho', 1, '', '95391987.jpg'),
(13, 'Dental', 'dental-care.png', '2019-08-11 07:43:47', 'Dentistry', 1, '11', 'Dental.jpg'),
(14, 'Homeopathy', 'homeopathy 3.png', '2019-08-11 09:04:38', 'Homeopathy', 1, '12', 'download.jpg'),
(15, 'Ayurveda', 'ayurveda.png', '2019-08-13 04:52:59', 'Ayurveda', 1, '13', 'aurimages.jpg'),
(16, 'Pediatrics', 'cate_logo_1565507236.jpg', '2019-08-11 19:51:00', 'Children Specialist', 1, '', ''),
(17, 'General Surgeon', 'cate_logo_1565507286.jpg', '2019-08-11 07:08:06', 'General Surgeon', 1, '', ''),
(18, 'General Physician', 'cate_logo_1565507303.jpg', '2019-08-11 07:08:23', 'General Physician', 1, '', ''),
(19, 'Diet & Nutrition', 'cate_logo_1565507496.jpg', '2019-08-11 19:53:00', 'Dietitian and Nutrition', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `doc_feedback`
--

CREATE TABLE `doc_feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vender_id` int(11) NOT NULL,
  `recomendation` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `add_time` varchar(40) NOT NULL,
  `username` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `rating` varchar(200) NOT NULL,
  `delay` varchar(200) NOT NULL,
  `treatment` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `anonymous_status` int(1) NOT NULL DEFAULT '0',
  `modify_date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doc_feedback`
--

INSERT INTO `doc_feedback` (`id`, `user_id`, `vender_id`, `recomendation`, `message`, `add_time`, `username`, `mobile`, `rating`, `delay`, `treatment`, `status`, `anonymous_status`, `modify_date`) VALUES
(1, 2, 1, 'yes', 'Happy To Consulting The Doctor And His Suggestions', '1543927576', 'Testing user1', '8050201311', '5.0', 'on time', 'General Physician', 1, 0, '1554748200'),
(2, 3, 2, 'yes', 'Note: Your identity will be shared with doctor, if doctor ask for it.', '1547021246', 'dharma', '9047138133', '4', '10 min late', 'cardio', 1, 0, ''),
(3, 3, 2, 'no', 'ok my test, ok my test,ok my testok my testok my test', '1547031163', 'dharma', '9047138133', '5', '10 min late', 'General Physician', 1, 0, ''),
(4, 3, 2, 'yes', 'gg', '1547031314', 'dharma', '9047138133', '4', '10 min late', 'cardio', 1, 0, ''),
(6, 3, 2, 'yes', 'asfdas', '1547031386', 'dharma', '9047138133', '2', '10 min late', 'cardio', 1, 0, ''),
(7, 2, 2, 'yes', 'hrshhd', '1552217869', 'Testing user1', '8050201311', '2.5', '10 min late', 'General Physician', 1, 0, ''),
(8, 2, 1, 'no', 'testing feedback', '1552289583', 'Testing user1', '8050201311', '4.0', 'on time', 'General Physician', 1, 0, ''),
(9, 3, 1, 'yes', 'Grundy delight fell feel del sahi l Henrik enjoy del sol lis flop still well egl erm still sp cup all egl sp oz dump maxell', '1552540866', 'dharma', '9047138133', '4', 'on time', 'cardio', 1, 0, ''),
(10, 8, 3, 'no', 'fgjamcgj', '1553766843', 'Anusha', '7892811070', '4.5', 'on time', 'cardio', 1, 0, ''),
(11, 8, 3, 'yes', 'dhjkn', '1553844972', 'Anusha', '7892811070', '4.0', 'on time', 'cardio', 1, 0, ''),
(12, 3, 2, 'no', '<div class=\"col-md-4 col-xs-12\" style=\"border-right: solid #e6e6e6 2px;\">\r\n    	<span style=\"color: #000;    font-weight: 600;    font-size: large;\">Status</span>\r\n    	    	\r\n    	 <p style=\"margin-bottom: 3px;\"><span style=\"color:green; font-size: 16px;\">Open Now(<span style=\"color:red; font-size: 16px;\">Close in 07hr :44min </span>)</span></p>\r\n    	 <p style=\"margin-bottom: 3px;\">\r\n    	 		Today : <span>11:30 am</span> - <span>11:30 pm</span>\r\n		    	</p>\r\n    	  <div class=\"panel-group1\" id=\"accordion\" role=\"tablist\" aria-multiselectable=\"true\">\r\n                          <div class=\"panel1 panel-default1\">\r\n                            <div class=\"panel-heading1\" role=\"tab\" id=\"headingOne\">\r\n                              <h4 class=\"panel-title\">\r\n                                <a role=\"button\" data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#description\" aria-expanded=\"false\" aria-controls=\"collapseOne\" class=\"collapsed\">\r\n                               <u> Show All</u>  <i class=\"fa fa-angle-down\"></i> </a>\r\n                                \r\n                              </h4>\r\n                            </div>\r\n                            <div id=\"description\" class=\"panel-collapse collapse\" role=\"tabpanel\" aria-labelledby=\"headingOne\" aria-expanded=\"false\" style=\"height: 0px;\">\r\n                              <div class=\"panel-body\">\r\n                           	<p>\r\n                           	\r\n                           	                                         </p><li style=\"color:#cc176a\">\r\n                                            <span class=\"hours_title\"><i class=\"fa fa-clock-o\"></i>Day</span> \r\n                                            <span>Morning</span>   <span>Evening</span>\r\n                                        </li>\r\n \r\n                                        <li>\r\n                                            <span class=\"hours_title\"><i class=\"fa fa-clock-o\"></i>Monday</span> \r\n                                            <span>11:30 am</span> - <span>11:30 pm</span>\r\n                                        </li>\r\n                                        <li style=\"color: #00b300;\" ;=\"\">\r\n                                            <span class=\"hours_title\"><i class=\"fa fa-clock-o\"></i>Tuesday</span> \r\n                                            <span>11:30 am</span> - <span>11:30 pm</span>\r\n                                        </li>\r\n                                        <li>\r\n                                            <span class=\"hours_title\"><i class=\"fa fa-clock-o\"></i>Wednesday</span> \r\n                                            <span>11:30 am</span> - <span>11:30 pm</span>\r\n                                        </li>\r\n                                        <li>\r\n                                            <span class=\"hours_title\"><i class=\"fa fa-clock-o\"></i>Thursday</span> \r\n                                            <span>11:30 am</span> - <span>11:30 pm</span>\r\n                                        </li>\r\n                                        <li>\r\n                                            <span class=\"hours_title\"><i class=\"fa fa-clock-o\"></i>Friday</span> \r\n                                            <span>11:30 am</span> - <span>11:30 pm</span>\r\n                                        </li>\r\n                                        <li>\r\n                                            <span class=\"hours_title\"><i class=\"fa fa-clock-o\"></i>Saturday</span> \r\n                                            <span>11:30 am</span> - <span>11:30 pm</span>\r\n                                        </li>\r\n                                        <li>\r\n                                            <span class=\"hours_title\"><i class=\"fa fa-clock-o\"></i>Sunday</span> \r\n                                            <span>11:30 am</span> - <span>11:30 pm</span>\r\n                                        </li>\r\n                                                                   	\r\n                           	\r\n                           	<p></p>\r\n                              </div>\r\n                            </div>\r\n                          </div>\r\n           </div>               \r\n    	 \r\n    	\r\n    	 \r\n    	</div>', '1554201793', 'dharma', '9047138133', '5', 'one hour late', 'cardio', 1, 0, ''),
(13, 3, 2, 'no', 'Chinese Restaurant Theme uses twitter bootstrap responsive boilerplate that adapts your website to mobile devices and the desktop or any other viewing environment. The theme is mainly targeted for Japanese, Chinese, Korean, Thai restaurants or sushi bars, that want to display their dishes, but it can also be used for any other restaurant type or for a recipe website. Also, you have the options to upload your own logo, header and favicon through the Customizer panel. It\'s Multilingual Ready, Search Engine Friendly, W3C Markup Validated and Cross-Browser compatible. Finally, your customers will have the option to reserve a table through our free restaurant reservation system.\r\n\r\n', '1554202726', 'dharma', '9047138133', '3', 'on time', 'cardio', 1, 0, ''),
(14, 11, 1, 'yes', 'ahshh', '1554452859', 'Apoorva', '8660549616', '4.0', '30 min late', 'cardio', 1, 0, ''),
(15, 3, 2, 'yes', 'testing purpose', '1554785010', 'dharma', '9047138133', '3', 'on time', 'cardio', 1, 0, '1559845800'),
(16, 2, 2, 'no', 'Dgbdevwvsbdbdbwgqfehrhrv4(3(#-74-2_3(492-#-4837:??????????????????????????????????????????????????????????????????????????????????. £! £! £? £? £! £! £-8:):(:):=)£(£', '1556084194', 'Testing user1', '8050201311', '4.0', '10 min late', 'General Physician', 1, 0, ''),
(17, 2, 2, 'no', 'Hjgf', '1556084780', 'Testing user1', '8050201311', '4.0', '30 min late', 'General Physician', 1, 0, ''),
(18, 2, 2, 'no', 'B', '1556085506', 'Testing user1', '8050201000', '4.0', 'on time', 'cardio', 1, 0, ''),
(19, 2, 3, 'no', '.', '1556086018', 'Testing user1', '8050201000', '0.5', '10 min late', 'General Physician', 1, 0, ''),
(20, 2, 2, 'yes', 'Nzjsjxjxxm', '1556086486', 'Testing user1', '8050201000', '3.0', 'one hour late', 'cardio', 1, 0, ''),
(21, 2, 1, 'no', 'v LJ n', '1556097435', 'Testing user1', '8050201000', '4.5', 'one hour late', 'cardio', 1, 0, ''),
(22, 2, 4, 'yes', 'huh LJ LJ', '1556099024', 'Testing user1', '8050201000', '1.5', 'on time', 'Acne', 1, 0, ''),
(23, 2, 1, 'yes', 'Nv', '1556105509', 'Testing user1', '8050201000', '5.0', 'on time', 'General Physician', 1, 0, ''),
(24, 2, 1, 'no', 'H', '1556106407', 'Testing user1', '8050201000', '3.5', '30 min late', 'cardio', 1, 0, ''),
(25, 2, 1, 'yes', 'Hv gv', '1556106422', 'Testing user1', '8050201000', '4.5', '30 min late', 'cardio', 1, 0, ''),
(26, 2, 4, 'yes', 'H', '1556106902', 'Testing user1', '8050201000', '5.0', 'one hour late', 'Acne', 1, 0, ''),
(27, 2, 2, 'no', 'Cnxbb', '1556108142', 'Testing user1', '8050201000', '2.5', 'on time', 'cardio', 1, 0, ''),
(28, 2, 1, 'no', 'Due hain haq knew jannu Jews mean harm jannu jew jew id he been knifed jes knew ', '1557813491', 'Testing user1', '7026912306', '2', '30 min late', 'cardio', 1, 0, ''),
(30, 3, 1, 'yes', 'developer testing', '1558182756', 'dharma', '9047138133', '4', 'on time', 'cardio', 1, 0, ''),
(31, 2, 1, 'yes', 'Awesome ', '1558334689', 'Testing user1', '7026912306', '5', 'on time', 'cardio', 1, 0, ''),
(32, 16, 3, 'yes', 'Na', '1558347940', 'Syed ', '8951109176', '1', 'on time', 'cardio', 1, 0, ''),
(33, 2, 2, 'no', 'vxvxvxv saf afs ', '1558353911', 'Testing user1', '7026912306', '1', 'on time', 'cardio', 1, 0, ''),
(34, 2, 1, 'yes', 'sas a asfa faf  asf a', '1558354166', 'Testing user1', '7026912306', '4', '10 min late', 'General Physician', 1, 0, ''),
(35, 2, 1, 'yes', 'tesr', '1558354194', 'Testing user1', '7026912306', '5', 'on time', 'cardio', 1, 0, ''),
(36, 3, 1, 'yes', 'tes4r', '1558357755', 'dharma', '9047138133', '3', '10 min late', 'cardio', 1, 0, ''),
(37, 3, 1, 'no', 'dfgdfgdf', '1558445331', 'dharma', '9047138133', '4', 'on time', 'cardio', 1, 0, ''),
(38, 18, 2, 'yes', 'Good Job!', '1559116343', 'Harish', '8310896028', '3', '30 min late', 'General Physician', 1, 0, ''),
(39, 18, 1, 'yes', 'Great Job!', '1559198807', 'Harish', '8310896028', '4', 'on time', 'General Physician', 1, 0, ''),
(40, 18, 1, 'yes', 'GOOD JOB! ', '1559199060', 'Harish', '8310896028', '3', '10 min late', 'General Physician', 1, 0, ''),
(41, 18, 4, 'yes', 'Not Bad!', '1559199123', 'Harish', '8310896028', '3', 'on time', 'Acne', 1, 0, ''),
(42, 18, 1, 'yes', 'Great Job!', '1559199581', 'Harish', '8310896028', '5', 'on time', 'cardio', 1, 0, ''),
(43, 18, 2, 'yes', 'Good!', '1559199827', 'Harish', '8310896028', '3', 'on time', 'General Physician', 1, 0, ''),
(44, 18, 4, 'yes', 'Nice!', '1559200038', 'Harish', '8310896028', '3', 'on time', 'Sun Damaged Skin', 1, 0, ''),
(45, 18, 1, 'yes', '???? great', '1559207032', 'Harish', '8310896028', '4', '10 min late', 'General Physician', 1, 0, ''),
(46, 18, 1, 'yes', 'Nice', '1559208762', 'Harish', '8310896028', '3.0', 'on time', 'General Physician', 1, 0, ''),
(47, 18, 3, 'no', 'Bad!\r\n', '1559280357', 'Harish', '8310896028', '1', 'one hour late', 'cardio', 1, 0, ''),
(48, 18, 3, 'yes', 'GOOD!', '1559300006', 'Harish', '8310896028', '3', '10 min late', 'General Physician', 1, 0, ''),
(49, 18, 1, 'yes', 'Good!', '1559303837', 'Harish', '8310896028', '3', '10 min late', 'cardio', 1, 0, ''),
(50, 19, 3, 'no', 'Hedge headsde JW Jamie kaye Jane bantha Jarvis beauti Jennifer Jayne dark hair having arrived katherrena', '1559642881', 'Madhusudhan', '9845600969', '1', '30 min late', 'General Physician', 1, 0, ''),
(51, 18, 1, 'no', 'Bad!', '1559799379', 'Harish', '8310896028', '1', 'one hour late', 'General Physician', 1, 0, ''),
(52, 18, 1, 'no', 'Bad!', '1559815906', 'Harish', '8310896028', '1', 'one hour late', 'General Physician', 1, 0, ''),
(53, 18, 3, 'no', 'Ok', '1559816382', 'Harish', '8310896028', '1', '10 min late', 'General Physician', 1, 0, ''),
(54, 18, 2, 'no', 'BAd', '1559816445', 'Harish', '8310896028', '1', 'one hour late', 'General Physician', 1, 0, '1561919400'),
(55, 18, 4, 'no', 'Ok', '1559816973', 'Harish', '8310896028', '2', '30 min late', 'Acne', 2, 0, '1561919400'),
(56, 18, 2, 'no', 'oK', '1559890415', 'Harish', '8310896028', '1', 'one hour late', 'cardio', 1, 0, '1561919400'),
(57, 18, 3, 'yes', 'Great', '1559890498', 'Harish', '8310896028', '4', 'on time', 'cardio', 1, 0, ''),
(58, 18, 1, 'yes', 'Ok', '1559891617', 'Harish', '8310896028', '2', 'one hour late', 'General Physician', 2, 0, '1561919400'),
(59, 18, 2, 'yes', 'Ok', '1559891821', 'Harish', '8310896028', '2', '10 min late', 'General Physician', 2, 0, '1561919400'),
(60, 18, 3, 'yes', 'Ok', '1559899741', 'Harish', '8310896028', '4', '10 min late', 'General Physician', 1, 0, ''),
(61, 19, 2, 'no', 'Diego group doi sp filho jaap DP Dubai gungho DP DP for sp sjp oftel lay dingo shop help deep ', '1559924078', 'Madhusudhan', '9845600969', '1', 'one hour late', 'cardio', 1, 0, '1561919400'),
(62, 18, 5, 'yes', 'Ok', '1560247668', 'Harish', '8310896028', '3', '30 min late', 'cardio', 1, 0, ''),
(63, 3, 5, 'no', 'ok', '1560255622', 'dharma', '9047138133', '4', '10 min late', 'cardio', 1, 0, ''),
(64, 3, 5, 'no', 'test', '1560256790', 'dharma', '9047138133', '4', 'on time', 'cardio', 1, 0, ''),
(65, 18, 1, 'yes', 'Ok', '1560409724', 'Harish', '8310896028', '2', '10 min late', 'cardio', 1, 0, ''),
(66, 18, 1, 'yes', 'Ok', '1560421917', 'Harish', '8310896028', '3', '10 min late', 'cardio', 1, 0, ''),
(67, 18, 6, 'yes', 'ok', '1560426866', 'Harish', '8310896028', '2', 'on time', 'cardio', 1, 0, ''),
(68, 19, 5, 'no', 'Even sheet cake hatch dish ', '1560429709', 'Madhusudhan', '9845600969', '1', 'one hour late', 'General Physician', 1, 0, ''),
(69, 18, 4, 'no', 'ok', '1560506218', 'Harish', '8310896028', '3', '10 min late', 'Actinic Keratoses', 1, 0, ''),
(70, 18, 1, 'yes', 'ok', '1560942664', 'Harish', '8310896028', '2', 'on time', 'cardio', 1, 0, ''),
(71, 18, 1, 'yes', 'ok', '1560942664', 'Harish', '8310896028', '2', 'on time', 'cardio', 1, 0, ''),
(72, 18, 1, 'yes', 'ok', '1560942664', 'Harish', '8310896028', '2', 'on time', 'cardio', 1, 0, ''),
(73, 18, 1, 'yes', 'ok', '1560942665', 'Harish', '8310896028', '2', 'on time', 'cardio', 1, 0, ''),
(74, 19, 2, 'no', 'dhru do drop sp group do door do', '1561004216', 'Madhusudhan', '9845600969', '2.0', '10 min late', 'cardio', 1, 0, ''),
(75, 18, 1, 'no', 'OK', '1561355905', 'Harish', '8310896028', '2', 'one hour late', 'cardio', 1, 0, ''),
(76, 18, 1, 'no', 'ok', '1561355950', 'Harish', '8310896028', '2', '10 min late', 'cardio', 1, 0, ''),
(77, 18, 4, 'yes', 'Ok', '1561358005', 'Harish', '8310896028', '2', 'on time', 'Acne', 1, 0, ''),
(78, 18, 4, 'yes', 'OK', '1561358026', 'Harish', '8310896028', '5', 'on time', 'Sun Damaged Skin', 1, 0, ''),
(79, 18, 5, 'no', 'Ok', '1561368592', 'Harish', '8310896028', '2', '10 min late', 'cardio', 1, 0, ''),
(80, 18, 1, 'yes', 'ok', '1561463969', 'Harish', '8310896028', '1', 'on time', 'cardio', 1, 0, ''),
(81, 18, 1, 'yes', 'ok', '1561543173', 'Harish', '8310896028', '2', 'on time', 'Cardio', 1, 0, ''),
(82, 18, 1, 'no', 'Bad', '1561549542', 'Harish', '8310896028', '3', 'one hour late', 'Cardio', 1, 0, ''),
(83, 18, 9, 'no', 'ok', '1561969093', 'Harish', '8310896028', '3', 'on time', 'General Physician', 1, 0, ''),
(84, 13, 9, 'no', 'Ok', '1562047462', 'testingweb@gmail.com', '7026912307', '3', '10 min late', 'General Physician', 1, 0, ''),
(85, 13, 1, 'yes', 'ok', '1562048835', 'testingweb@gmail.com', '7026912307', '4', 'on time', 'Cardio', 1, 0, ''),
(86, 18, 9, 'no', 'k', '1562137094', 'Harish', '8310896028', '4', 'on time', 'General Physician', 1, 0, ''),
(87, 18, 9, 'yes', 'Ok', '1563171487', 'Harish', '8310896028', '2', 'on time', 'Arrhythmia', 1, 0, ''),
(88, 18, 1, 'yes', 'Great.!', '1564124341', 'Harish', '8310896028', '5.0', 'on time', 'Podiatrists', 1, 0, ''),
(89, 18, 4, 'yes', 'ok', '1564124953', 'Harish', '8310896028', '3.5', '10 min late', 'Actinic Keratoses', 1, 0, ''),
(90, 18, 1, 'yes', 'Great!', '1564402314', 'Harish', '8310896028', '4.5', 'on time', 'Podiatrists', 1, 0, ''),
(91, 18, 1, 'yes', 'Good', '1564402341', 'Harish', '8310896028', '4.0', 'on time', 'Podiatrists', 1, 0, ''),
(92, 32, 8, 'yes', 'ok', '1564471812', 'Harish', '8310896028', '4.0', 'on time', 'Podiatrists', 1, 0, ''),
(93, 32, 4, 'no', 'Nooo', '1564471930', 'Harish', '8310896028', '1.0', 'one hour late', 'Dietitians', 1, 0, ''),
(94, 20, 12, 'yes', 'My skin problem was treated perfectly by the doctor and I am glad that my skin has regained it\'s original status. Thank you very much.', '1565593960', 'Pavan Kumar', '9632060605', '5.0', '10 min late', 'Skin Disorders', 1, 0, ''),
(95, 20, 2, 'yes', 'fsdfsfsfsf sdfsfsafsafas erewrwerwerwecrecrwer ', '1565941653', 'Pavan Kumar', '9632060605', '4', 'on time', 'Heart Transplant', 1, 0, ''),
(96, 18, 8, 'yes', 'Great Service!', '1565953125', 'Harish', '8310896028', '5', 'on time', 'Podiatrists', 1, 0, ''),
(97, 18, 10, 'yes', 'Ok', '1565954215', 'Harish', '8310896028', '5', 'on time', 'Wart Removal', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `doc_gallery_list`
--

CREATE TABLE `doc_gallery_list` (
  `gallery_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `images` varchar(250) NOT NULL,
  `last_update` varchar(60) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doc_gallery_list`
--

INSERT INTO `doc_gallery_list` (`gallery_id`, `doc_id`, `images`, `last_update`, `status`) VALUES
(8, 2, '1542172617_image0_2.jpg', '2018-11-14 10:46', 1),
(13, 2, '1542172620_image5_2.jpg', '2018-11-14 10:46', 1),
(14, 3, '1542173172_image0_3.jpg', '2018-11-14 10:56', 1),
(20, 4, '1542173735_image0_4.jpg', '2018-11-14 11:05', 1),
(21, 4, '1542173735_image1_4.jpg', '2018-11-14 11:05', 1),
(22, 4, '1542173735_image2_4.jpg', '2018-11-14 11:05', 1),
(23, 4, '1542173735_image3_4.jpg', '2018-11-14 11:05', 1),
(24, 3, '1542432448_image0_3.jpg', '2018-11-17 10:57', 1),
(25, 3, '1542432448_image1_3.jpg', '2018-11-17 10:57', 1),
(26, 3, '1542432448_image2_3.jpg', '2018-11-17 10:57', 1),
(27, 3, '1542432448_image3_3.jpg', '2018-11-17 10:57', 1),
(28, 2, '1557229624_image0_2.jpg', '2019-05-07 17:17', 1),
(29, 2, '1557229675_image0_2.png', '2019-05-07 17:17', 1),
(30, 2, '1557229706_image0_2.png', '2019-05-07 17:18', 1),
(31, 2, '1557229767_image0_2.jpg', '2019-05-07 17:19', 1),
(33, 2, '1557229788_image0_2.png', '2019-05-07 17:19', 1),
(34, 2, '1557229810_image0_2.jpg', '2019-05-07 17:20', 1),
(35, 2, '1557229821_image0_2.jpg', '2019-05-07 17:20', 1),
(36, 1, '1559905422_image0_1.jpg', '2019-06-07 16:33', 1),
(37, 1, '1559905422_image1_1.jpg', '2019-06-07 16:33', 1),
(38, 1, '1559905422_image2_1.jpg', '2019-06-07 16:33', 1),
(39, 1, '1559905422_image3_1.jpg', '2019-06-07 16:33', 1),
(40, 5, '1559905945_image0_5.jpg', '2019-06-07 16:42', 1),
(41, 5, '1559905945_image1_5.jpg', '2019-06-07 16:42', 1),
(42, 5, '1559905945_image2_5.jpg', '2019-06-07 16:42', 1),
(43, 5, '1559905945_image3_5.jpg', '2019-06-07 16:42', 1),
(44, 6, '1560426578_image0_6.jpg', '2019-06-13 17:19', 1),
(45, 6, '1560426578_image1_6.jpg', '2019-06-13 17:19', 1),
(46, 6, '1560426578_image2_6.jpg', '2019-06-13 17:19', 1),
(47, 6, '1560426578_image3_6.jpg', '2019-06-13 17:19', 1),
(48, 6, '1560426578_image4_6.jpg', '2019-06-13 17:19', 1),
(49, 6, '1560426578_image5_6.jpg', '2019-06-13 17:19', 1),
(50, 7, '1560427227_image0_7.jfif', '2019-06-13 17:30', 1),
(51, 7, '1560427227_image1_7.jpg', '2019-06-13 17:30', 1),
(52, 7, '1560427227_image2_7.jpg', '2019-06-13 17:30', 1),
(53, 7, '1560427227_image3_7.jpg', '2019-06-13 17:30', 1),
(54, 7, '1560427228_image4_7.jpg', '2019-06-13 17:30', 1),
(55, 7, '1560427228_image5_7.jpg', '2019-06-13 17:30', 1),
(56, 8, '1561359339_image0_8.png', '2019-06-24 12:25', 1),
(57, 9, '1561967143_image0_9.jpg', '2019-07-01 13:15', 1),
(58, 10, '1565425229_image0_10.jpg', '2019-08-10 13:50', 1),
(59, 10, '1565425229_image1_10.jpg', '2019-08-10 13:50', 1),
(60, 10, '1565425229_image2_10.jpeg', '2019-08-10 13:50', 1),
(61, 10, '1565425229_image3_10.jpeg', '2019-08-10 13:50', 1),
(62, 10, '1565425229_image4_10.jpeg', '2019-08-10 13:50', 1),
(63, 10, '1565425229_image5_10.jpeg', '2019-08-10 13:50', 1),
(64, 10, '1565425229_image6_10.jpeg', '2019-08-10 13:50', 1),
(65, 10, '1565425229_image7_10.jpeg', '2019-08-10 13:50', 1),
(66, 10, '1565425229_image8_10.jpeg', '2019-08-10 13:50', 1),
(67, 11, '1565510049_image0_11.jpg', '2019-08-11 13:24', 1),
(69, 11, '1565510049_image2_11.jpg', '2019-08-11 13:24', 1),
(70, 11, '1565510049_image3_11.jpg', '2019-08-11 13:24', 1),
(71, 11, '1565510049_image4_11.jpg', '2019-08-11 13:24', 1),
(72, 11, '1565510049_image5_11.jpg', '2019-08-11 13:24', 1),
(73, 11, '1565510049_image6_11.jpg', '2019-08-11 13:24', 1),
(74, 11, '1565510049_image7_11.jpg', '2019-08-11 13:24', 1),
(75, 11, '1565510049_image8_11.jpg', '2019-08-11 13:24', 1),
(76, 11, '1565510049_image9_11.jpg', '2019-08-11 13:24', 1),
(77, 11, '1565510049_image10_11.png', '2019-08-11 13:24', 1),
(78, 12, '1565514384_image0_12.jpg', '2019-08-11 14:36', 1),
(79, 12, '1565514384_image1_12.jpg', '2019-08-11 14:36', 1),
(80, 12, '1565514384_image2_12.jpg', '2019-08-11 14:36', 1),
(81, 12, '1565514384_image3_12.jpg', '2019-08-11 14:36', 1),
(82, 12, '1565514384_image4_12.jpg', '2019-08-11 14:36', 1),
(83, 13, '1565672681_image0_13.jpg', '2019-08-13 10:34', 1),
(84, 13, '1565672681_image1_13.jpg', '2019-08-13 10:34', 1),
(85, 13, '1565672681_image2_13.jpg', '2019-08-13 10:34', 1),
(86, 13, '1565672681_image3_13.jpg', '2019-08-13 10:34', 1),
(87, 13, '1565672681_image4_13.jpg', '2019-08-13 10:34', 1),
(88, 13, '1565672681_image5_13.jpg', '2019-08-13 10:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doc_report_db`
--

CREATE TABLE `doc_report_db` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vender_id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `mobile_no` int(11) NOT NULL,
  `reportmsg` varchar(250) NOT NULL,
  `report_type` varchar(255) NOT NULL,
  `add_datetime` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doc_report_db`
--

INSERT INTO `doc_report_db` (`id`, `user_id`, `vender_id`, `user_name`, `mobile_no`, `reportmsg`, `report_type`, `add_datetime`, `status`) VALUES
(1, 3, 3, 'dharma', 2147483647, '', 'Wrong Timing', '0000-00-00 00:00:00', 1),
(2, 3, 3, 'dharma', 2147483647, '', 'Wrong Consultation Fees', '0000-00-00 00:00:00', 1),
(3, 3, 1, 'dharma', 2147483647, '8877667755', 'Wrong Phone Number', '2019-04-10 05:56:53', 1),
(4, 3, 1, 'dharma', 2147483647, 'wrong address-developer testing', 'Wrong Address', '2019-04-11 10:40:14', 0),
(5, 2, 1, 'Testing user1', 2147483647, 'Fhfdfrx\nYvv\nByhv\nBybub\nUvb\nJbu\nUgu\nBjb\nUgu\nBj\nH\nB\nH\nJ\nN\nN\nN\nN\nNmf\nG\nFf\nG\nCf\nF\n\nF\n\nBg\nF\nFffff\n\nF\nG MG\nF\nF\nF\nFf\nF\nF\nF\nF\nF\nF\nF\nF\nF\nF\nF\nF\nGv\nB\nMb\nV\nV\nDv\nV\nV\nV\nV\nB\nB\nB\nVvvv\n\nV\nB v\nVvv\nVv\nV\nV\nV\nV\nV\nV\nV\nV\n\n', '', '0000-00-00 00:00:00', 0),
(6, 2, 1, 'Testing user1', 2147483647, 'tghrt\nn ye rjrrjrjrn\nrjrjen\nrjej', '', '0000-00-00 00:00:00', 0),
(7, 2, 4, 'Testing user1', 2147483647, 'bhvgnnn', '', '0000-00-00 00:00:00', 0),
(8, 2, 1, 'Testing user1', 2147483647, 'Y', '', '0000-00-00 00:00:00', 0),
(9, 2, 1, 'Testing user1', 2147483647, 'Q', '', '0000-00-00 00:00:00', 0),
(10, 2, 1, 'Testing user1', 2147483647, 'W', '', '0000-00-00 00:00:00', 0),
(11, 2, 1, 'Testing user1', 2147483647, 'H', '', '0000-00-00 00:00:00', 0),
(12, 2, 1, 'Testing user1', 2147483647, 'H', '', '0000-00-00 00:00:00', 0),
(13, 2, 4, 'Testing user1', 2147483647, 'J', '', '0000-00-00 00:00:00', 0),
(14, 2, 1, 'Testing user1', 2147483647, '', '', '0000-00-00 00:00:00', 0),
(15, 2, 1, 'Testing user1', 2147483647, '', 'Wrong Consultation Fees', '2019-05-14 11:31:10', 0),
(16, 2, 1, 'Testing user1', 2147483647, '', 'Wrong Phone Number', '2019-05-14 11:31:15', 0),
(84, 18, 1, 'Harish', 2147483647, 'OK..........', 'Others', '2019-07-11 04:52:34', 0),
(18, 15, 1, 'Preetham', 2147483647, '', 'Wrong Phone Number', '2019-05-16 04:46:08', 0),
(19, 15, 1, 'Preetham', 2147483647, '', 'Wrong Phone Number', '2019-05-16 04:46:11', 0),
(20, 15, 1, 'Preetham', 2147483647, '', 'Wrong Phone Number', '2019-05-16 04:46:13', 0),
(21, 15, 1, 'Preetham', 2147483647, '', 'Wrong Phone Number', '2019-05-16 04:46:15', 0),
(22, 15, 1, 'Preetham', 2147483647, '', 'Wrong Phone Number', '2019-05-16 04:46:16', 0),
(23, 2, 2, 'Testing user1', 2147483647, '', 'Wrong Consultation Fees', '2019-05-20 05:33:58', 0),
(24, 2, 2, 'Testing user1', 2147483647, '', 'Others', '2019-05-20 05:34:03', 0),
(25, 2, 1, 'Testing user1', 2147483647, 'sdfsdfsd', 'Wrong Address', '2019-05-22 01:04:25', 0),
(26, 2, 1, 'Testing user1', 2147483647, 'sdfsdfs', 'Wrong Phone Number', '2019-05-22 01:04:29', 0),
(27, 2, 1, 'Testing user1', 2147483647, 'sdfsdfsdfsdfsdfsdfsdfvsdfsdfsdfv  sdfsdfsdfsdfsdfsdfdsfdsfsdf', 'Wrong Phone Number', '2019-05-22 01:04:37', 0),
(29, 18, 2, 'Harish', 2147483647, '', 'Wrong Phone Number', '2019-05-29 01:23:12', 0),
(30, 18, 2, 'Harish', 2147483647, '', 'Wrong Phone Number', '2019-05-29 01:23:13', 0),
(31, 18, 1, 'Harish', 2147483647, '', 'Wrong Address', '2019-05-30 01:07:16', 0),
(32, 18, 3, 'Harish', 2147483647, '', 'Wrong Timing', '2019-05-30 02:48:03', 0),
(33, 18, 3, 'Harish', 2147483647, '', 'Wrong Timing', '2019-05-30 02:48:04', 0),
(34, 19, 1, 'Madhusudhan', 2147483647, '', 'Wrong Address', '2019-06-04 12:43:58', 0),
(35, 19, 1, 'Madhusudhan', 2147483647, '', 'Wrong Phone Number', '2019-06-04 12:44:03', 0),
(36, 19, 1, 'Madhusudhan', 2147483647, '', 'Wrong Phone Number', '2019-06-04 12:44:05', 0),
(37, 19, 2, 'Madhusudhan', 2147483647, '', 'Others', '2019-06-04 03:41:58', 0),
(38, 19, 2, 'Madhusudhan', 2147483647, '', 'Others', '2019-06-04 03:42:08', 0),
(39, 19, 3, 'Madhusudhan', 2147483647, '', 'Others', '2019-06-04 03:42:29', 0),
(40, 18, 1, 'Harish', 2147483647, '', 'Wrong Address', '2019-06-06 12:12:17', 0),
(41, 18, 1, 'Harish', 2147483647, '', 'Wrong Timing', '2019-06-06 03:37:09', 0),
(42, 18, 2, 'Harish', 2147483647, '', 'Wrong Timing', '2019-06-06 03:50:26', 0),
(43, 18, 2, 'Harish', 2147483647, '', 'Wrong Timing', '2019-06-06 03:51:04', 0),
(44, 18, 1, 'Harish', 2147483647, '', 'Wrong Phone Number', '2019-06-06 04:50:29', 0),
(45, 18, 1, 'Harish', 2147483647, '', 'Others', '2019-06-06 04:50:37', 0),
(46, 18, 1, 'Harish', 2147483647, '', 'Others', '2019-06-06 04:50:45', 0),
(47, 18, 1, 'Harish', 2147483647, '', 'Others', '2019-06-06 05:54:12', 0),
(48, 18, 1, 'Harish', 2147483647, '', 'Wrong Address', '2019-06-06 05:54:15', 0),
(49, 3, 1, 'dharma', 2147483647, '', 'Wrong Phone Number', '2019-06-06 06:25:20', 0),
(50, 3, 1, 'dharma', 2147483647, '', 'Others', '2019-06-06 06:25:26', 0),
(51, 3, 1, 'dharma', 2147483647, '', 'Others', '2019-06-06 06:25:36', 0),
(52, 3, 1, 'dharma', 2147483647, '', 'Wrong Phone Number', '2019-06-06 06:40:47', 0),
(53, 3, 1, 'dharma', 2147483647, 'ggghjghj', 'Others', '2019-06-06 06:41:37', 0),
(54, 18, 2, 'Harish', 2147483647, '', 'Wrong Address', '2019-06-07 12:20:25', 0),
(55, 18, 2, 'Harish', 2147483647, '', 'Wrong Consultation Fees', '2019-06-07 12:21:27', 0),
(56, 18, 1, 'Harish', 2147483647, '', 'Wrong Consultation Fees', '2019-06-07 12:43:01', 0),
(57, 18, 4, 'Harish', 2147483647, 'Ok', 'Others', '2019-06-07 12:47:45', 0),
(58, 18, 3, 'Harish', 2147483647, 'Ok', 'Others', '2019-06-07 02:59:21', 0),
(59, 19, 1, 'Madhusudhan', 2147483647, 'Justin Farook still idk lfzu donny hey Kirk', 'Others', '2019-06-07 09:40:02', 0),
(60, 19, 1, 'Madhusudhan', 2147483647, '', 'Wrong Timing', '2019-06-07 09:42:39', 0),
(61, 18, 5, 'Harish', 2147483647, 'Ok', 'Others', '2019-06-11 03:29:53', 0),
(62, 18, 5, 'Harish', 2147483647, 'Bad', 'Others', '2019-06-11 03:51:00', 0),
(63, 18, 1, 'Harish', 2147483647, '', 'Wrong Consultation Fees', '2019-06-13 12:39:22', 0),
(64, 18, 3, 'Harish', 2147483647, 'Ok..!\r\n', 'Others', '2019-06-14 02:38:16', 0),
(65, 19, 2, 'Madhusudhan', 2147483647, '', '', '0000-00-00 00:00:00', 0),
(66, 18, 1, 'Harish', 2147483647, 'Bad!', 'Wrong Phone Number', '2019-06-24 11:26:29', 0),
(67, 18, 1, 'Harish', 2147483647, 'Bad!', 'Wrong Phone Number', '2019-06-24 11:26:29', 0),
(68, 18, 1, 'Harish', 2147483647, 'OK', 'Wrong Timing', '2019-06-24 11:26:36', 0),
(69, 18, 1, 'Harish', 2147483647, 'NIce!', 'Others', '2019-06-24 11:26:44', 0),
(70, 18, 1, 'Harish', 2147483647, '', 'Wrong Consultation Fees', '2019-06-24 11:26:47', 0),
(71, 18, 1, 'Harish', 2147483647, '', 'Wrong Address', '2019-06-24 11:26:50', 0),
(72, 18, 4, 'Harish', 2147483647, '', 'Wrong Consultation Fees', '2019-06-24 12:04:39', 0),
(73, 18, 8, 'Harish', 2147483647, '', 'Wrong Phone Number', '2019-06-25 05:33:00', 0),
(74, 18, 8, 'Harish', 2147483647, 'ok', 'Others', '2019-06-25 05:33:07', 0),
(75, 18, 1, 'Harish', 2147483647, '', 'Wrong Phone Number', '2019-06-26 03:26:14', 0),
(76, 18, 1, 'Harish', 2147483647, '', 'Wrong Address', '2019-06-26 03:26:18', 0),
(77, 18, 1, 'Harish', 2147483647, '', 'Wrong Timing', '2019-06-26 03:26:21', 0),
(78, 18, 1, 'Harish', 2147483647, '', 'Wrong Phone Number', '2019-06-26 05:10:40', 0),
(79, 18, 1, 'Harish', 2147483647, 'Oi', 'Others', '2019-06-26 05:10:46', 0),
(80, 18, 8, 'Harish', 2147483647, '', '', '0000-00-00 00:00:00', 0),
(81, 23, 1, 'soumya', 2147483647, '', 'Wrong Address', '2019-06-29 11:03:17', 0),
(82, 18, 1, 'Harish', 2147483647, '', '', '0000-00-00 00:00:00', 0),
(83, 18, 1, 'Harish', 2147483647, '', 'Wrong Timing', '2019-07-11 04:52:20', 0),
(85, 18, 1, 'Harish', 2147483647, '', '', '0000-00-00 00:00:00', 0),
(86, 18, 1, 'Harish', 2147483647, '', '', '0000-00-00 00:00:00', 0),
(87, 18, 1, 'Harish', 2147483647, 'Bad service', '', '0000-00-00 00:00:00', 0),
(88, 18, 8, 'Harish', 2147483647, '', '', '0000-00-00 00:00:00', 0),
(89, 32, 8, 'Harish', 2147483647, 'Ok', '', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `doc_specialities`
--

CREATE TABLE `doc_specialities` (
  `id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `speciality_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doc_specialities`
--

INSERT INTO `doc_specialities` (`id`, `cate_id`, `speciality_name`) VALUES
(1, 1, 'General'),
(2, 1, 'Lungs'),
(3, 1, 'A&E'),
(4, 1, 'Acupuncture'),
(5, 1, 'Alcohol Care Team'),
(6, 1, 'Anaesthetic'),
(7, 2, 'Dry Skin'),
(8, 2, 'Cysts'),
(9, 2, 'Hair Loss'),
(10, 2, 'Hives'),
(11, 2, 'Lupus'),
(12, 2, 'Rashes'),
(13, 10, 'Type1 Diabetes'),
(14, 10, 'Type2 Diabetes'),
(15, 10, 'Gestational Diabetes'),
(16, 10, 'Pre-diabetes'),
(17, 3, 'Ear'),
(18, 3, 'Nose'),
(19, 3, 'Throat'),
(20, 1, 'abc'),
(21, 1, 'Cardiologist'),
(22, 1, 'Internal Medicine'),
(23, 1, 'General Physician'),
(24, 1, 'Diabetologist'),
(25, 1, 'Invterventional Cardiologist'),
(26, 1, 'Cardiac Surgeon'),
(27, 1, 'Cardiovascular Surgeon'),
(28, 1, 'Cardiothoracic Surgeon'),
(29, 2, 'Dermatologist'),
(30, 2, 'Aestheic Dermatologist'),
(31, 2, 'Cosmetologist'),
(32, 2, 'Venereologist'),
(33, 2, 'Dermatosurgeon'),
(34, 2, 'Hair Transplant Surgeon'),
(35, 2, 'Trichologist'),
(36, 2, 'Pediatric Dermatologist'),
(37, 3, 'ENT / Otorhinolaryngologist'),
(38, 3, 'Diploma in Otorhinolaryngology (DLO)'),
(39, 3, 'Rhinologist'),
(40, 3, 'Pediatric Otorhinolaryngologist'),
(41, 3, 'Otologist'),
(42, 3, 'ENT, Head and Neck Surgeon'),
(43, 3, 'Headache and Vertigo Specialist'),
(44, 3, 'Allergist / Immunologist'),
(45, 4, 'Gastroenterologist'),
(46, 4, 'Gastrointestinal Surgeon'),
(47, 4, 'Digestive Endoscopist'),
(48, 4, 'Bariatric Surgeon'),
(49, 4, 'General Surgeon'),
(50, 4, 'Intestine Surgeon'),
(51, 4, 'Laparoscopic Surgeon'),
(52, 4, 'Proctologist'),
(53, 4, 'Colorectal Surgeon'),
(54, 4, 'Hepatologist'),
(55, 4, 'Chronic Liver Specialist'),
(56, 5, 'Obstetrician'),
(57, 5, 'Gynecologist'),
(58, 5, 'Infertility Specialist'),
(59, 5, 'Reproductive Endocrinologist'),
(60, 5, 'Laparoscopic Surgeon (Obs & Gyn)'),
(61, 5, 'Gynecologic Oncologist'),
(62, 6, 'Neurologist'),
(63, 6, 'Neurosurgeon'),
(64, 6, 'Movement Disorder Specialist'),
(65, 7, 'Ophthalmologist / Eye Surgeon'),
(66, 7, 'Pediatric Ophthalmologist'),
(67, 7, 'Strabismus Specialist'),
(68, 9, 'Andrologist'),
(69, 9, 'Urologist'),
(70, 9, 'Urological Surgeon'),
(71, 9, 'Pediatric Urologist'),
(72, 9, 'Laparoscopic Surgeon'),
(73, 9, 'Sexologist'),
(74, 9, 'Infertility Specialist'),
(75, 9, 'Urogynecologist'),
(76, 9, 'Medical Oncologist'),
(77, 8, 'Psychiatrist'),
(78, 8, 'Counselling Psychologist'),
(79, 8, 'Neuro Psychiatrist'),
(80, 8, 'Clinical Psychologist'),
(81, 8, 'Adolescent and Child Psychiatrist'),
(82, 8, 'Geriatric Psychiatrist'),
(83, 8, 'Forensic Psychiatrist'),
(84, 8, 'Addiction Psychiatrist'),
(85, 8, 'Somnologist (Sleep Specialist)'),
(86, 8, 'Psychotherapist'),
(87, 8, 'Occupational Psychologist'),
(88, 8, 'Educational Psychologist'),
(89, 8, 'Health Psychologist'),
(90, 8, 'Family Psychologist');

-- --------------------------------------------------------

--
-- Table structure for table `doc_timing`
--

CREATE TABLE `doc_timing` (
  `id` int(11) NOT NULL,
  `doc_id` varchar(60) NOT NULL,
  `monday_morning_time` varchar(255) NOT NULL,
  `monday_evening_time` varchar(60) NOT NULL,
  `tuesday_morning_time` varchar(60) NOT NULL,
  `tuesday_evening_time` varchar(60) NOT NULL,
  `wednesday_morning_time` varchar(60) NOT NULL,
  `wednesday_evening_time` varchar(60) NOT NULL,
  `thursday_morning_time` varchar(60) NOT NULL,
  `thursday_evening_time` varchar(60) NOT NULL,
  `friday_morning_time` varchar(60) NOT NULL,
  `friday_evening_time` varchar(60) NOT NULL,
  `saturday_morning_time` varchar(60) NOT NULL,
  `saturday_evening_time` varchar(60) NOT NULL,
  `sunday_morning_time` varchar(60) NOT NULL,
  `sunday_evening_time` varchar(60) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `add_date` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doc_timing`
--

INSERT INTO `doc_timing` (`id`, `doc_id`, `monday_morning_time`, `monday_evening_time`, `tuesday_morning_time`, `tuesday_evening_time`, `wednesday_morning_time`, `wednesday_evening_time`, `thursday_morning_time`, `thursday_evening_time`, `friday_morning_time`, `friday_evening_time`, `saturday_morning_time`, `saturday_evening_time`, `sunday_morning_time`, `sunday_evening_time`, `status`, `add_date`) VALUES
(1, '1', '12:00 AM - 11:00 AM', '01:30 PM - 11:30 PM', '12:00 AM - 11:00 AM', '01:30 PM - 11:30 PM', '12:00 AM - 11:00 AM', '01:30 PM - 11:30 PM', '12:00 AM - 11:00 AM', '01:30 PM - 11:30 PM', '12:00 AM - 11:00 AM', '01:30 PM - 11:30 PM', '12:00 AM - 11:00 AM', '01:30 PM - 11:30 PM', '', '', 1, '1564655286'),
(2, '2', '', '', '08:00 AM - 12:00 PM', '04:00 PM - 08:00 PM', '08:00 AM - 12:00 PM', '04:00 PM - 08:00 PM', '08:00 AM - 12:00 PM', '04:00 PM - 08:00 PM', '08:00 AM - 12:00 PM', '04:00 PM - 08:00 PM', '08:00 AM - 12:00 PM', '04:00 PM - 08:00 PM', '', '', 1, '1565942411'),
(3, '3', '09:00 AM - 01:00 PM', '03:00 PM - 07:00 PM', '09:00 AM - 01:00 PM', '03:00 PM - 07:00 PM', '09:00 AM - 01:00 PM', '03:00 PM - 07:00 PM', '09:00 AM - 01:00 PM', '03:00 PM - 07:00 PM', '09:00 AM - 01:00 PM', '03:00 PM - 07:00 PM', '09:00 AM - 01:00 PM', '03:00 PM - 07:00 PM', '', '', 1, '1561870929'),
(4, '4', '10:00 AM - 02:00 PM', '07:00 PM - 10:00 PM', '10:00 AM - 02:00 PM', '07:00 PM - 10:00 PM', '10:00 AM - 02:00 PM', '07:00 PM - 10:00 PM', '10:00 AM - 02:00 PM', '07:00 PM - 10:00 PM', '10:00 AM - 02:00 PM', '07:00 PM - 10:00 PM', '10:00 AM - 02:00 PM', '07:00 PM - 10:00 PM', '', '', 1, '1561870944'),
(7, '7', '09:00 AM - 01:30 PM', '03:00 PM - 07:30 PM', '09:00 AM - 01:30 PM', '03:00 PM - 07:30 PM', '09:00 AM - 01:30 PM', '03:00 PM - 07:30 PM', '09:00 AM - 01:30 PM', '03:00 PM - 07:30 PM', '09:00 AM - 01:30 PM', '03:00 PM - 07:30 PM', '09:00 AM - 01:30 PM', '03:00 PM - 07:30 PM', '', '', 1, '1561870980'),
(8, '8', '08:30 AM - 01:00 PM', '02:30 PM - 06:00 PM', '08:30 AM - 01:00 PM', '02:30 PM - 06:00 PM', '08:30 AM - 01:00 PM', '02:30 PM - 06:00 PM', '08:30 AM - 01:00 PM', '02:30 PM - 06:00 PM', '08:30 AM - 01:00 PM', '02:30 PM - 06:00 PM', '08:30 AM - 01:00 PM', '02:30 PM - 06:00 PM', '', '', 1, '1561870999'),
(9, '9', '09:00 AM - 01:00 PM', '02:00 PM - 06:00 PM', '09:00 AM - 01:00 PM', '02:00 PM - 06:00 PM', '09:00 AM - 01:00 PM', '02:00 PM - 06:00 PM', '09:00 AM - 01:00 PM', '02:00 PM - 06:00 PM', '09:00 AM - 01:00 PM', '02:00 PM - 06:00 PM', '', '02:00 PM - 06:00 PM', '', '', 1, '1561967554'),
(10, '10', '09:00 AM - 01:00 PM', '03:00 PM - 08:00 PM', '09:00 AM - 01:00 PM', '03:00 PM - 08:00 PM', '09:00 AM - 01:00 PM', '03:00 PM - 08:00 PM', '09:00 AM - 01:00 PM', '03:00 PM - 08:00 PM', '09:00 AM - 01:00 PM', '03:00 PM - 08:00 PM', '', '', '', '', 1, '1565424930'),
(11, '11', '12:00 AM - 12:00 AM', '03:00 PM - 09:00 PM', '12:00 AM - 12:00 AM', '03:00 PM - 09:00 PM', '12:00 AM - 12:00 AM', '03:00 PM - 09:00 PM', '12:00 AM - 12:00 AM', '03:00 PM - 09:00 PM', '12:00 AM - 12:00 AM', '03:00 PM - 09:00 PM', '12:00 AM - 12:00 AM', '02:00 PM - 09:00 PM', '10:00 AM - 01:30 PM', '02:30 PM - 04:00 PM', 1, '1565510000'),
(12, '12', '11:00 AM - 02:00 PM', '02:30 PM - 08:00 PM', '11:00 AM - 02:00 PM', '02:30 PM - 08:00 PM', '11:00 AM - 02:00 PM', '02:30 PM - 08:00 PM', '', '', '11:00 AM - 02:00 PM', '02:30 PM - 08:00 PM', '11:00 AM - 02:00 PM', '02:30 PM - 08:00 PM', '11:00 AM - 02:00 PM', '02:30 PM - 08:00 PM', 1, '1565514461'),
(13, '13', '10:00 AM - 02:00 PM', '03:00 PM - 08:00 PM', '10:00 AM - 02:00 PM', '03:00 PM - 08:00 PM', '10:00 AM - 02:00 PM', '03:00 PM - 08:00 PM', '10:00 AM - 02:00 PM', '03:00 PM - 08:00 PM', '10:00 AM - 02:00 PM', '03:00 PM - 08:00 PM', '10:00 AM - 02:00 PM', '03:00 PM - 08:00 PM', '', '', 1, '1565672425');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_master`
--

CREATE TABLE `enquiry_master` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `product_address` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_address` varchar(250) NOT NULL,
  `appointment_date` varchar(60) NOT NULL,
  `appointment_time` varchar(60) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `status` varchar(44) NOT NULL,
  `add_date` varchar(60) NOT NULL,
  `modify_date` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `favourite_master`
--

CREATE TABLE `favourite_master` (
  `id` int(11) NOT NULL,
  `vender_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `add_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '1=>favourite,o=>Not favourite'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favourite_master`
--

INSERT INTO `favourite_master` (`id`, `vender_id`, `cate_id`, `user_id`, `add_date`, `status`) VALUES
(1, 2, 41, 17, '2018-11-14 12:49:53', 1),
(2, 1, 41, 1, '2018-11-14 01:19:14', 1),
(3, 1, 1, 2, '2019-04-24 05:14:05', 1),
(8, 3, 41, 3, '2018-12-03 01:35:14', 1),
(9, 1, 1, 4, '2018-12-05 05:35:19', 1),
(11, 3, 1, 2, '2018-12-10 12:43:51', 1),
(12, 2, 41, 2, '2019-04-24 12:10:13', 1),
(16, 4, 49, 2, '2019-04-24 12:31:10', 1),
(17, 3, 49, 2, '2019-04-24 05:56:15', 0),
(18, 1, 41, 2, '2019-04-24 05:36:10', 0),
(19, 3, 43, 2, '2019-05-04 12:29:24', 1),
(20, 2, 1, 2, '2019-01-23 03:09:13', 1),
(21, 1, 1, 3, '2019-01-23 05:07:11', 1),
(22, 1, 1, 5, '2019-01-23 05:07:41', 1),
(23, 2, 1, 3, '2019-01-23 05:16:36', 1),
(24, 4, 1, 3, '2019-04-10 11:42:17', 0),
(25, 3, 49, 3, '2019-04-10 12:40:36', 1),
(26, 4, 49, 3, '2019-04-10 12:41:09', 1),
(27, 3, 43, 3, '2019-04-10 12:58:12', 1),
(28, 4, 1, 2, '2019-04-24 05:25:29', 1),
(29, 3, 41, 2, '2019-05-27 01:45:15', 1),
(30, 1, 1, 15, '2019-05-16 04:44:17', 0),
(31, 3, 43, 15, '2019-05-16 05:07:19', 1),
(32, 3, 43, 16, '2019-05-20 04:15:39', 1),
(33, 3, 49, 17, '2019-05-22 03:56:13', 0),
(34, 3, 43, 17, '2019-05-22 03:58:11', 1),
(35, 2, 41, 3, '2019-05-23 12:39:14', 1),
(36, 2, 1, 18, '2019-05-29 01:23:16', 1),
(37, 1, 1, 18, '2019-07-29 06:11:22', 1),
(38, 3, 1, 18, '2019-05-30 02:47:49', 0),
(39, 3, 43, 18, '2019-05-30 03:07:38', 1),
(40, 4, 1, 18, '2019-05-31 04:33:48', 0),
(41, 1, 41, 18, '2019-06-03 05:45:15', 1),
(42, 2, 41, 18, '2019-06-03 05:46:33', 1),
(43, 3, 41, 18, '2019-06-06 12:14:29', 0),
(44, 3, 49, 18, '2019-06-07 12:28:49', 1),
(45, 5, 1, 18, '2019-06-11 03:26:53', 1),
(46, 6, 1, 18, '2019-06-13 05:24:08', 0),
(47, 1, 1, 19, '2019-06-13 06:25:36', 1),
(48, 5, 1, 20, '2019-06-14 12:48:13', 1),
(49, 4, 49, 18, '2019-06-14 04:24:18', 1),
(50, 5, 1, 21, '2019-06-25 04:29:20', 0),
(51, 8, 1, 18, '2019-07-29 06:30:44', 1),
(52, 1, 1, 21, '2019-06-25 06:19:36', 0),
(53, 9, 49, 18, '2019-06-26 02:48:42', 1),
(54, 5, 49, 18, '2019-06-26 04:15:25', 1),
(55, 9, 49, 23, '2019-06-29 10:56:20', 1),
(56, 9, 1, 18, '2019-07-29 06:06:59', 1),
(57, 8, 1, 13, '2019-07-02 05:24:14', 0),
(58, 1, 1, 13, '2019-07-02 06:00:24', 0),
(59, 1, 41, 13, '2019-07-02 06:00:33', 1),
(60, 3, 49, 13, '2019-07-02 06:00:42', 1),
(61, 6, 43, 13, '2019-07-02 06:00:50', 1),
(62, 9, 49, 13, '2019-07-02 06:01:24', 0),
(63, 7, 43, 18, '2019-07-11 05:18:21', 1),
(64, 1, 1, 20, '2019-07-11 06:40:10', 1),
(65, 3, 1, 20, '2019-07-11 06:40:15', 1),
(66, 5, 43, 29, '2019-07-24 03:54:06', 1),
(67, 3, 41, 20, '2019-07-26 02:10:31', 1),
(68, 8, 1, 32, '2019-07-30 12:42:17', 1),
(69, 9, 1, 32, '2019-07-30 12:45:58', 1),
(70, 3, 1, 32, '2019-07-30 12:46:03', 1),
(71, 2, 1, 32, '2019-07-30 12:46:30', 1),
(72, 4, 1, 32, '2019-07-30 01:02:13', 1),
(73, 2, 1, 20, '2019-07-30 06:33:26', 1),
(74, 11, 1, 20, '2019-08-11 02:26:54', 1),
(75, 12, 1, 20, '2019-08-12 12:43:13', 1),
(76, 10, 1, 18, '2019-08-19 12:03:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vender_id` int(11) NOT NULL,
  `recomendation` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `add_time` varchar(40) NOT NULL,
  `username` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `rating` varchar(200) NOT NULL,
  `delay` varchar(200) NOT NULL,
  `treatment` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `modify_date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `global_search`
--

CREATE TABLE `global_search` (
  `id` int(11) NOT NULL,
  `s_keyword` varchar(555) NOT NULL,
  `s_keyword_type` varchar(555) NOT NULL,
  `category` varchar(555) NOT NULL,
  `cate_id` varchar(255) NOT NULL,
  `vendor_id` varchar(55) NOT NULL,
  `status` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `global_search`
--

INSERT INTO `global_search` (`id`, `s_keyword`, `s_keyword_type`, `category`, `cate_id`, `vendor_id`, `status`, `date_time`) VALUES
(20, 'Koramangala', 'Location name', 'Restaurant', '41', '2', 1, '2018-11-14 13:08:51'),
(19, 'Truffles', 'Restaurant name', 'Restaurant', '41', '2', 1, '2018-11-14 13:05:24'),
(18, 'Banashankari 3rd Stage', 'Location name', 'Salon', '49', '2', 1, '2018-11-14 12:51:22'),
(17, ' Lakshmi Gents Parlour', 'Salon name', 'Salon', '49', '2', 1, '2018-11-14 12:46:55'),
(16, 'Contura Clinic', 'Hospital name', 'Doctor', '1', '4', 1, '2018-11-14 12:33:52'),
(15, 'Kalyan Nagar', 'Location name', 'Doctor', '1', '4', 1, '2018-11-14 12:33:52'),
(14, 'Nithya Raghunath', 'Doctor name', 'Doctor', '1', '4', 1, '2018-11-14 12:33:52'),
(13, 'Sahakara Nagar', 'Location name', 'Salon', '49', '1', 1, '2018-11-14 12:29:43'),
(12, 'Spark Family Saloon', 'Salon name', 'Salon', '49', '1', 1, '2018-11-14 12:23:50'),
(11, 'Keva Ayurveda Healthcare Pvt Ltd', 'Hospital name', 'Doctor', '1', '3', 1, '2018-11-14 12:22:20'),
(10, 'BTM Layout', 'Location name', 'Doctor', '1', '3', 1, '2018-11-14 12:22:20'),
(9, 'Krishna Kumar', 'Doctor name', 'Doctor', '1', '3', 1, '2018-11-14 12:22:20'),
(8, 'People Tree Hospital', 'Hospital name', 'Doctor', '1', '2', 1, '2018-11-14 12:14:17'),
(7, 'Yeshwanthpur', 'Location name', 'Doctor', '1', '2', 1, '2018-11-14 12:14:17'),
(6, 'Satish Ramana', 'Doctor name', 'Doctor', '1', '2', 1, '2018-11-14 12:14:17'),
(5, 'Whitefield', 'Location name', 'Restaurant', '41', '1', 1, '2018-11-14 12:01:18'),
(4, 'eat.fit', 'Restaurant name', 'Restaurant', '41', '1', 1, '2018-11-14 11:57:27'),
(3, 'Wellspring Mother & Child Hospital', 'Hospital name', 'Doctor', '1', '1', 1, '2018-11-13 21:04:14'),
(2, 'Banashankari', 'Location name', 'Doctor', '1', '1', 1, '2018-11-13 21:04:14'),
(1, 'Ashalatha Ganesh', 'Doctor name', 'Doctor', '1', '1', 1, '2018-11-13 21:04:14'),
(21, 'New Trendz Salon And Spa ', 'Spa name', 'Spa', '43', '1', 1, '2018-11-14 13:43:17'),
(22, 'Uttarahalli', 'Location name', 'Spa', '43', '1', 1, '2018-11-14 13:44:22'),
(23, 'Byg Brewski Brewing Company', 'Restaurant name', 'Restaurant', '41', '3', 1, '2018-11-14 13:55:11'),
(24, 'Hennur', 'Location name', 'Restaurant', '41', '3', 1, '2018-11-14 13:58:42'),
(32, 'sdf', 'Category', 'Salon', '49', '9', 1, '2018-11-17 13:19:30'),
(29, 'sdfs', 'Category', 'Doctor', '1', '13', 1, '2018-11-17 13:18:54'),
(30, 'testing_cate', 'Category', 'Restaurant', '41', '11', 1, '2018-11-17 13:19:10'),
(31, 'sdf', 'Category', 'Salon', '49', '8', 1, '2018-11-17 13:19:28'),
(33, 'testing_cate', 'Category', 'Spa', '43', '5', 1, '2018-11-17 13:19:47'),
(34, 'Testing spa', 'Spa name', 'Spa', '43', '2', 1, '2018-11-17 19:04:15'),
(35, 'Banashankari', 'Location name', 'Spa', '43', '2', 1, '2018-11-17 19:05:51'),
(36, 'Cardiologist', 'Category', 'Doctor', '1', '1', 1, '2018-11-17 13:19:47'),
(37, 'Dermatologist', 'Category', 'Doctor', '1', '2', 1, '2018-11-17 13:19:47'),
(38, 'ENT(Ear,Nose,Throat)', 'Category', 'Doctor', '1', '3', 1, '2018-11-17 13:19:47'),
(39, 'Gastroenterologist', 'Category', 'Doctor', '1', '4', 1, '2018-11-17 13:19:47'),
(40, 'Gynecologist', 'Category', 'Doctor', '1', '5', 1, '2018-11-17 13:19:47'),
(41, 'Neurologist', 'Category', 'Doctor', '1', '6', 1, '2018-11-17 13:19:47'),
(42, 'Ophthalmologist', 'Category', 'Doctor', '1', '7', 1, '2018-11-17 13:19:47'),
(43, 'Phychiatrist', 'Category', 'Doctor', '1', '8', 1, '2018-11-17 13:19:47'),
(44, 'Urologist', 'Category', 'Doctor', '1', '9', 1, '2018-11-17 13:19:47'),
(45, 'Diabetic', 'Category', 'Doctor', '1', '10', 1, '2018-11-17 13:19:47'),
(46, 'Orthopedist', 'Category', 'Doctor', '1', '11', 1, '2018-11-17 13:19:47'),
(47, 'Trending This Week', 'Category', 'Restaurant', '41', '1', 1, '2018-11-17 13:19:47'),
(48, 'Newly Opened', 'Category', 'Restaurant', '41', '2', 1, '2018-11-17 13:19:47'),
(49, 'Cafe Breakfast', 'Category', 'Restaurant', '41', '3', 1, '2018-11-17 13:19:47'),
(50, 'Healthy juices', 'Category', 'Restaurant', '41', '4', 1, '2018-11-17 13:19:47'),
(51, 'Caribbean', 'Category', 'Restaurant', '41', '5', 1, '2018-11-17 13:19:47'),
(52, 'Chinese', 'Category', 'Restaurant', '41', '6', 1, '2018-11-17 13:19:47'),
(53, 'South Indian', 'Category', 'Restaurant', '41', '7', 1, '2018-11-17 13:19:47'),
(54, 'Organic Food', 'Category', 'Restaurant', '41', '8', 1, '2018-11-17 13:19:47'),
(55, 'Hair-Cutting', 'Category', 'Salon', '49', '10', 1, '2018-12-11 07:14:31'),
(56, 'Colouring and Styling', 'Category', 'Salon', '49', '11', 1, '2018-12-11 07:15:27'),
(57, 'waxing & forms of hair removal', 'Category', 'Salon', '49', '12', 1, '2018-12-11 07:19:26'),
(58, 'Nail Treatments', 'Category', 'Salon', '49', '13', 1, '2018-12-11 07:21:46'),
(59, 'facials and skin care', 'Category', 'Salon', '49', '14', 1, '2018-12-11 07:24:11'),
(60, 'Tanning', 'Category', 'Salon', '49', '15', 1, '2018-12-11 07:30:10'),
(61, 'Celebrate Life Unisex Salon', 'Salon name', 'Salon', '49', '3', 1, '2018-12-11 07:37:41'),
(62, 'Banashankari', 'Location name', 'Salon', '49', '3', 1, '2018-12-11 07:40:13'),
(63, 'Flirty Scissors Spa & Salon', 'Salon name', 'Salon', '49', '4', 1, '2018-12-11 08:32:08'),
(64, 'Jayanagar', 'Location name', 'Salon', '49', '4', 1, '2018-12-11 08:34:40'),
(65, 'Traditional Spa', 'Category', 'Spa', '43', '6', 1, '2018-12-11 10:02:39'),
(66, 'Destination Spa', 'Category', 'Spa', '43', '7', 1, '2018-12-11 10:03:26'),
(67, 'Relaxation and Pampering Spa', 'Category', 'Spa', '43', '8', 1, '2018-12-11 10:04:09'),
(68, 'Ayurvedic Spa', 'Category', 'Spa', '43', '9', 1, '2018-12-11 10:04:42'),
(69, 'Medical Spa', 'Category', 'Spa', '43', '10', 1, '2018-12-11 10:05:19'),
(70, 'Thermal Spa', 'Category', 'Spa', '43', '11', 1, '2018-12-11 10:06:01'),
(71, 'Four Fountains Spa', 'Spa name', 'Spa', '43', '3', 1, '2018-12-11 10:15:33'),
(72, 'Jayanagar', 'Location name', 'Spa', '43', '3', 1, '2018-12-11 10:17:49'),
(73, 'Deve', 'Category', 'Restaurant', '41', '12', 1, '2018-12-26 07:02:03'),
(74, 'Deve', 'Category', 'Restaurant', '41', '13', 1, '2018-12-26 07:02:18'),
(75, 'devop', 'Category', 'Restaurant', '41', '14', 1, '2018-12-26 07:02:37'),
(76, 'my test', 'Category', 'Restaurant', '41', '15', 1, '2018-12-26 07:51:58'),
(77, 'Developer Testing ', 'Category', 'Restaurant', '41', '16', 1, '2018-12-26 07:53:36'),
(78, 'Pavan Rasalkar', 'Doctor name', 'Doctor', '1', '5', 1, '2019-06-07 11:01:17'),
(79, 'Malleshwaram', 'Location name', 'Doctor', '1', '5', 1, '2019-06-07 11:01:17'),
(80, 'Pavan Rasalkar Cardiology Clinics', 'Hospital name', 'Doctor', '1', '5', 1, '2019-06-07 11:01:17'),
(81, 'Shilpa Apte', 'Doctor name', 'Doctor', '1', '6', 1, '2019-06-13 11:46:27'),
(82, 'Jayanagar', 'Location name', 'Doctor', '1', '6', 1, '2019-06-13 11:46:27'),
(83, 'Apollo Cradle', 'Hospital name', 'Doctor', '1', '6', 1, '2019-06-13 11:46:27'),
(84, 'Dr. Manohar K N', 'Doctor name', 'Doctor', '1', '7', 1, '2019-06-13 11:57:30'),
(85, 'HAL Layout', 'Location name', 'Doctor', '1', '7', 1, '2019-06-13 11:57:30'),
(86, 'Manipal Hospital', 'Hospital name', 'Doctor', '1', '7', 1, '2019-06-13 11:57:30'),
(87, 'Pure Veg ', 'Category', 'Restaurant', '41', '17', 1, '2019-06-13 12:35:55'),
(88, 'A2B Veg Restaurant', 'Restaurant name', 'Restaurant', '41', '4', 1, '2019-06-13 12:43:37'),
(89, 'B Ramesh', 'Doctor name', 'Doctor', '1', '8', 1, '2019-06-24 06:53:59'),
(90, 'Jayanagar', 'Location name', 'Doctor', '1', '8', 1, '2019-06-24 06:53:59'),
(91, 'Ramesh Cardiology Clinic', 'Hospital name', 'Doctor', '1', '8', 1, '2019-06-24 06:53:59'),
(92, 'Deep Breath Unisex Salon And Spa', 'Salon name', 'Salon', '49', '5', 1, '2019-06-26 06:14:44'),
(93, 'Deep Breath Unisex Salon', 'Salon name', 'Salon', '49', '6', 1, '2019-06-26 06:16:30'),
(94, 'Deep Breath Unisex Salon And Spa ', 'Salon name', 'Salon', '49', '7', 1, '2019-06-26 06:17:32'),
(95, 'Banashankari 3rd Stage', 'Location name', 'Salon', '49', '7', 1, '2019-06-26 06:27:10'),
(96, 'Deep Breath Unisex Salon And Spa', 'Salon name', 'Salon', '49', '8', 1, '2019-06-26 06:52:39'),
(97, 'Banashankari 3rd Stage', 'Location name', 'Salon', '49', '8', 1, '2019-06-26 06:53:34'),
(98, 'Banashankari 3rd Stage', 'Location name', 'Salon', '49', '5', 1, '2019-06-26 07:03:50'),
(99, 'Deep Breath Unisex Salon And Spa ', 'Spa name', 'Spa', '43', '4', 1, '2019-06-26 07:07:59'),
(100, 'Banashankari 3rd Stage', 'Location name', 'Spa', '43', '4', 1, '2019-06-26 07:08:47'),
(101, 'Deep Breath Unisex Salon And Spa ', 'Spa name', 'Spa', '43', '5', 1, '2019-06-26 07:18:48'),
(102, 'Banashankari 3rd Stage', 'Location name', 'Spa', '43', '5', 1, '2019-06-26 07:21:14'),
(103, 'Bounce Salon & Spa, Indiranagar', 'Spa name', 'Spa', '43', '6', 1, '2019-06-26 07:32:15'),
(104, 'Indira Nagar', 'Location name', 'Spa', '43', '6', 1, '2019-06-26 07:34:08'),
(105, 'Enrich Salon - Indiranagar', 'Salon name', 'Salon', '49', '9', 1, '2019-06-26 08:04:53'),
(106, 'Indira Nagar', 'Location name', 'Salon', '49', '9', 1, '2019-06-26 08:06:11'),
(107, 'Zudo Spa - Best Spa in Whitefield', 'Spa name', 'Spa', '43', '7', 1, '2019-06-26 09:23:56'),
(108, 'Whitefield', 'Location name', 'Spa', '43', '7', 1, '2019-06-26 09:25:16'),
(109, 'Vithal Bagi', 'Doctor name', 'Doctor', '1', '9', 1, '2019-07-01 07:34:24'),
(110, 'Basavanagudi', 'Location name', 'Doctor', '1', '9', 1, '2019-07-01 07:34:24'),
(111, 'Apollo Clinic Basavanagudi', 'Hospital name', 'Doctor', '1', '9', 1, '2019-07-01 07:34:24'),
(112, 'Prakash Belvade', 'Doctor name', 'Doctor', '1', '10', 1, '2019-07-02 10:41:13'),
(113, 'Ganga Nagar', 'Location name', 'Doctor', '1', '10', 1, '2019-07-02 10:41:13'),
(114, 'Jade Aesthetic Clinic', 'Hospital name', 'Doctor', '1', '10', 1, '2019-07-02 10:41:13'),
(115, 'AAA', 'Category', 'Salon', '49', '16', 1, '2019-07-03 12:59:00'),
(116, 'ABC', 'Salon name', 'Salon', '49', '10', 1, '2019-07-03 13:00:42'),
(117, 'Dental', 'Category', 'Doctor', '1', '12', 1, '2019-07-31 10:04:42'),
(118, 'Dental', 'Category', 'Doctor', '1', '13', 1, '2019-07-31 10:24:27'),
(119, 'Homeopathy', 'Category', 'Doctor', '1', '14', 1, '2019-07-31 10:26:36'),
(120, 'Ayurveda', 'Category', 'Doctor', '1', '15', 1, '2019-07-31 10:27:12'),
(121, 'Prakash Belvade', 'Doctor name', 'Doctor', '1', '10', 1, '2019-08-10 08:09:58'),
(122, 'Ganga Nagar', 'Location name', 'Doctor', '1', '10', 1, '2019-08-10 08:09:58'),
(123, 'Jade Aesthetic Clinic', 'Hospital name', 'Doctor', '1', '10', 1, '2019-08-10 08:09:58'),
(124, 'Pediatrician', 'Category', 'Doctor', '1', '16', 1, '2019-08-11 07:07:16'),
(125, 'General Surgeon', 'Category', 'Doctor', '1', '17', 1, '2019-08-11 07:08:06'),
(126, 'General Physician', 'Category', 'Doctor', '1', '18', 1, '2019-08-11 07:08:23'),
(127, 'Dietitian and Nutrition', 'Category', 'Doctor', '1', '19', 1, '2019-08-11 07:11:36'),
(128, 'Aman Sodhi', 'Doctor name', 'Doctor', '1', '11', 1, '2019-08-11 07:43:47'),
(129, 'Arekere', 'Location name', 'Doctor', '1', '11', 1, '2019-08-11 07:43:47'),
(130, 'Dental Solutions Multi Speciality Dental Care Centre', 'Hospital name', 'Doctor', '1', '11', 1, '2019-08-11 07:43:47'),
(131, 'Vima T Vijayan', 'Doctor name', 'Doctor', '1', '12', 1, '2019-08-11 09:04:38'),
(132, 'Jayanagar', 'Location name', 'Doctor', '1', '12', 1, '2019-08-11 09:04:38'),
(133, 'German Homeopathy Clinics', 'Hospital name', 'Doctor', '1', '12', 1, '2019-08-11 09:04:38'),
(134, 'Harshitha Kumari', 'Doctor name', 'Doctor', '1', '13', 1, '2019-08-13 04:52:59'),
(135, 'Banaswadi', 'Location name', 'Doctor', '1', '13', 1, '2019-08-13 04:52:59'),
(136, 'Orenda Ayurveda Multispeciality Hospital', 'Hospital name', 'Doctor', '1', '13', 1, '2019-08-13 04:52:59');

-- --------------------------------------------------------

--
-- Table structure for table `homepage_image`
--

CREATE TABLE `homepage_image` (
  `id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `last_update` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homepage_image`
--

INSERT INTO `homepage_image` (`id`, `images`, `last_update`, `status`) VALUES
(1, 'doc_img.png', '2018-09-12 16:30', 1),
(2, 'rest_img.png', '2018-09-12 16:30', 1),
(3, 'salon_img.png', '2018-09-12 16:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `import`
--

CREATE TABLE `import` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created_date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `import`
--

INSERT INTO `import` (`id`, `name`, `email`, `created_date`) VALUES
(1, 'satish', '123', '2018-03-06'),
(2, 'Team', 'Tech Arise', '2018-03-06'),
(3, 'satish', '221', '2018-03-06'),
(4, 'id', 'driver_master_id', '2018-03-07'),
(5, '494', '61', '2018-03-07'),
(6, '493', '61', '2018-03-07'),
(7, '471', '61', '2018-03-07'),
(8, '468', '68', '2018-03-07'),
(9, '467', '68', '2018-03-07'),
(10, '465', '68', '2018-03-07'),
(11, '459', '67', '2018-03-07'),
(12, '458', '67', '2018-03-07'),
(13, '456', '67', '2018-03-07'),
(14, '452', '65', '2018-03-07'),
(15, '451', '65', '2018-03-07'),
(16, '444', '67', '2018-03-07'),
(17, '430', '59', '2018-03-07'),
(18, '429', '59', '2018-03-07'),
(19, '428', '59', '2018-03-07'),
(20, '427', '59', '2018-03-07'),
(21, '426', '59', '2018-03-07'),
(22, '423', '59', '2018-03-07'),
(23, '422', '59', '2018-03-07'),
(24, '420', '59', '2018-03-07'),
(25, '412', '57', '2018-03-07'),
(26, '411', '57', '2018-03-07'),
(27, '408', '55', '2018-03-07'),
(28, '407', '55', '2018-03-07'),
(29, '399', '56', '2018-03-07'),
(30, '392', '44', '2018-03-07'),
(31, '384', '44', '2018-03-07'),
(32, '383', '44', '2018-03-07'),
(33, '381', '4', '2018-03-07'),
(34, '379', '46', '2018-03-07'),
(35, '378', '46', '2018-03-07'),
(36, '377', '46', '2018-03-07'),
(37, '375', '46', '2018-03-07'),
(38, '371', '6', '2018-03-07'),
(39, '370', '53', '2018-03-07'),
(40, '369', '53', '2018-03-07'),
(41, '366', '53', '2018-03-07'),
(42, '360', '52', '2018-03-07'),
(43, '340', '52', '2018-03-07'),
(44, '339', '52', '2018-03-07'),
(45, '336', '52', '2018-03-07'),
(46, '333', '47', '2018-03-07'),
(47, '328', '47', '2018-03-07'),
(48, '327', '44', '2018-03-07'),
(49, '313', '43', '2018-03-07'),
(50, '311', '43', '2018-03-07'),
(51, '310', '41', '2018-03-07'),
(52, '309', '41', '2018-03-07'),
(53, '308', '41', '2018-03-07'),
(54, '305', '41', '2018-03-07'),
(55, '302', '4', '2018-03-07'),
(56, '300', '27', '2018-03-07'),
(57, '299', '37', '2018-03-07'),
(58, '298', '37', '2018-03-07'),
(59, '296', '37', '2018-03-07'),
(60, '291', '37', '2018-03-07'),
(61, '289', '36', '2018-03-07'),
(62, '287', '36', '2018-03-07'),
(63, '284', '36', '2018-03-07'),
(64, '279', '33', '2018-03-07'),
(65, '277', '33', '2018-03-07'),
(66, '276', '33', '2018-03-07'),
(67, '272', '33', '2018-03-07'),
(68, '263', '29', '2018-03-07'),
(69, '261', '29', '2018-03-07'),
(70, '251', '30', '2018-03-07'),
(71, '250', '30', '2018-03-07'),
(72, '249', '1', '2018-03-07'),
(73, '247', '32', '2018-03-07'),
(74, '245', '32', '2018-03-07'),
(75, '242', '32', '2018-03-07'),
(76, '239', '32', '2018-03-07'),
(77, '238', '32', '2018-03-07'),
(78, '236', '31', '2018-03-07'),
(79, '233', '31', '2018-03-07'),
(80, '231', '31', '2018-03-07'),
(81, '228', '31', '2018-03-07'),
(82, '226', '27', '2018-03-07'),
(83, '221', '27', '2018-03-07'),
(84, '220', '27', '2018-03-07'),
(85, '219', '27', '2018-03-07'),
(86, '217', '26', '2018-03-07'),
(87, '216', '26', '2018-03-07'),
(88, '212', '26', '2018-03-07'),
(89, '211', '26', '2018-03-07'),
(90, '210', '26', '2018-03-07'),
(91, '209', '26', '2018-03-07'),
(92, '206', '25', '2018-03-07'),
(93, '205', '25', '2018-03-07'),
(94, '203', '25', '2018-03-07'),
(95, '200', '25', '2018-03-07'),
(96, '195', '21', '2018-03-07'),
(97, '192', '21', '2018-03-07'),
(98, '191', '21', '2018-03-07'),
(99, '187', '23', '2018-03-07'),
(100, '185', '24', '2018-03-07'),
(101, '183', '23', '2018-03-07'),
(102, '181', '23', '2018-03-07'),
(103, '179', '23', '2018-03-07'),
(104, '174', '23', '2018-03-07'),
(105, '172', '22', '2018-03-07'),
(106, '171', '22', '2018-03-07'),
(107, '170', '22', '2018-03-07'),
(108, '169', '22', '2018-03-07'),
(109, '163', '22', '2018-03-07'),
(110, '160', '20', '2018-03-07'),
(111, '150', '20', '2018-03-07'),
(112, '149', '20', '2018-03-07'),
(113, '148', '20', '2018-03-07'),
(114, '146', '19', '2018-03-07'),
(115, '140', '18', '2018-03-07'),
(116, '135', '18', '2018-03-07'),
(117, '131', '16', '2018-03-07'),
(118, '129', '16', '2018-03-07'),
(119, '128', '16', '2018-03-07'),
(120, '123', '16', '2018-03-07'),
(121, '121', '10', '2018-03-07'),
(122, '119', '10', '2018-03-07'),
(123, '115', '10', '2018-03-07'),
(124, '113', '10', '2018-03-07'),
(125, '111', '10', '2018-03-07'),
(126, '110', '4', '2018-03-07'),
(127, '107', '12', '2018-03-07'),
(128, '106', '4', '2018-03-07'),
(129, '102', '12', '2018-03-07'),
(130, '100', '12', '2018-03-07'),
(131, '98', '12', '2018-03-07'),
(132, '96', '12', '2018-03-07'),
(133, '95', '12', '2018-03-07'),
(134, '94', '12', '2018-03-07'),
(135, '93', '15', '2018-03-07'),
(136, '89', '15', '2018-03-07'),
(137, '83', '14', '2018-03-07'),
(138, '81', '14', '2018-03-07'),
(139, '79', '14', '2018-03-07'),
(140, '76', '14', '2018-03-07'),
(141, '73', '40', '2018-03-07'),
(142, '66', '13', '2018-03-07'),
(143, '59', '11', '2018-03-07'),
(144, '54', '11', '2018-03-07'),
(145, '53', '11', '2018-03-07'),
(146, '52', '11', '2018-03-07'),
(147, '51', '11', '2018-03-07'),
(148, '50', '11', '2018-03-07'),
(149, '41', '9', '2018-03-07'),
(150, '40', '9', '2018-03-07'),
(151, '39', '9', '2018-03-07'),
(152, '38', '9', '2018-03-07'),
(153, '37', '9', '2018-03-07'),
(154, '36', '9', '2018-03-07'),
(155, '34', '9', '2018-03-07'),
(156, '32', '1', '2018-03-07'),
(157, '30', '1', '2018-03-07'),
(158, '29', '4', '2018-03-07'),
(159, '28', '7', '2018-03-07'),
(160, '23', '7', '2018-03-07'),
(161, '21', '6', '2018-03-07'),
(162, '13', '4', '2018-03-07'),
(163, '10', '4', '2018-03-07'),
(164, '9', '4', '2018-03-07'),
(165, '8', '1', '2018-03-07'),
(166, '7', '3', '2018-03-07'),
(167, '6', '3', '2018-03-07'),
(168, '4', '2', '2018-03-07'),
(169, '3', '1', '2018-03-07'),
(170, '2', '1', '2018-03-07'),
(171, '1', '1', '2018-03-07'),
(172, 'id', 'stu_name', '2018-03-07'),
(173, '2', 'Vamsi', '2018-03-07'),
(174, '10', 'Shubham', '2018-03-07'),
(175, '21', 'Anika', '2018-03-07'),
(176, '23', 'Abbas', '2018-03-07'),
(177, '30', 'a', '2018-03-07'),
(178, '32', 'Vamsi', '2018-03-07'),
(179, '34', 'Vatsal Shrivastava', '2018-03-07'),
(180, '36', 'Abhinav Singh', '2018-03-07'),
(181, '37', 'Samarth Shukla', '2018-03-07'),
(182, '39', 'Kakun Mishra', '2018-03-07'),
(183, '40', 'Shreshta Paul', '2018-03-07'),
(184, '41', 'Navya Bahal', '2018-03-07'),
(185, '50', 'Saksham Agarwal', '2018-03-07'),
(186, '52', 'Aditya Datta', '2018-03-07'),
(187, '53', 'Amogh Agarwal', '2018-03-07'),
(188, '54', 'Anika Agarwal', '2018-03-07'),
(189, '66', 'Abdulla', '2018-03-07'),
(190, '73', 'Akshat', '2018-03-07'),
(191, '76', 'Shubh', '2018-03-07'),
(192, '79', 'Dhruv', '2018-03-07'),
(193, '81', 'Kinjalk', '2018-03-07'),
(194, '83', 'Sarthak', '2018-03-07'),
(195, '89', 'Emon', '2018-03-07'),
(196, '93', 'Aditya', '2018-03-07'),
(197, '94', 'Drishti Agarwal', '2018-03-07'),
(198, '95', 'Naman Agarwal', '2018-03-07'),
(199, '96', 'Nysa Verma', '2018-03-07'),
(200, '98', 'Kripi Agarwal', '2018-03-07'),
(201, '100', 'Vivaan Agarwal', '2018-03-07'),
(202, '102', 'Kabir Agarwal', '2018-03-07'),
(203, '106', 'Astha', '2018-03-07'),
(204, '107', 'Aarav Agarwal', '2018-03-07'),
(205, '111', 'Shashwat Singh', '2018-03-07'),
(206, '113', 'Siddharth Dixit', '2018-03-07'),
(207, '115', 'Dhruv Mittal', '2018-03-07'),
(208, '121', 'Akarshi Gupta', '2018-03-07'),
(209, '123', 'Reva Tandon', '2018-03-07'),
(210, '128', 'Ishita', '2018-03-07'),
(211, '131', 'Krishna ', '2018-03-07'),
(212, '135', 'Ishita Gupta', '2018-03-07'),
(213, '146', 'Mohd Omer', '2018-03-07'),
(214, '148', 'Rauhinetra', '2018-03-07'),
(215, '149', 'Bhavya Singh', '2018-03-07'),
(216, '150', 'Sankarshan Singh', '2018-03-07'),
(217, '160', 'Bhoomi Jaiswal', '2018-03-07'),
(218, '163', 'Shahriyar', '2018-03-07'),
(219, '170', 'Lakshita', '2018-03-07'),
(220, '171', 'Adamya', '2018-03-07'),
(221, '172', 'Vihaan', '2018-03-07'),
(222, '174', 'Arushi', '2018-03-07'),
(223, '179', 'Akshay Shukla', '2018-03-07'),
(224, '181', 'Manvi Verma', '2018-03-07'),
(225, '183', 'Samraat Singh ', '2018-03-07'),
(226, '185', 'Rudhrakshi', '2018-03-07'),
(227, '192', 'Kartikey Agarwal', '2018-03-07'),
(228, '195', 'Vaibhav Verma', '2018-03-07'),
(229, '200', 'Kaustubh Dixit', '2018-03-07'),
(230, '203', 'Akshit', '2018-03-07'),
(231, '205', 'Atharve ', '2018-03-07'),
(232, '206', 'Shreya', '2018-03-07'),
(233, '209', 'Bhart', '2018-03-07'),
(234, '210', 'Rituraj', '2018-03-07'),
(235, '211', 'Shivendra', '2018-03-07'),
(236, '216', 'Aaditya', '2018-03-07'),
(237, '217', 'Kushaag', '2018-03-07'),
(238, '219', 'Abhiraj Saxena', '2018-03-07'),
(239, '220', 'Aarav Singh', '2018-03-07'),
(240, '221', 'Bhavya Vatsh', '2018-03-07'),
(241, '226', 'Aahan Verma', '2018-03-07'),
(242, '228', 'Ridhvi Chandra', '2018-03-07'),
(243, '233', 'Ved Pamnani', '2018-03-07'),
(244, '236', 'Shlok Agarwal', '2018-03-07'),
(245, '238', 'Rishi Shrivastava', '2018-03-07'),
(246, '239', 'Jannat Saaod', '2018-03-07'),
(247, '242', 'Sanya Arora', '2018-03-07'),
(248, '245', 'Flora Dixit', '2018-03-07'),
(249, '247', 'Shaurya', '2018-03-07'),
(250, '250', 'Hammad Aziz', '2018-03-07'),
(251, '251', 'Taiyyab', '2018-03-07'),
(252, '261', 'Aashi Verma', '2018-03-07'),
(253, '263', 'Abhyuday', '2018-03-07'),
(254, '272', 'Swaroop', '2018-03-07'),
(255, '276', 'Aadivesh Tiwari', '2018-03-07'),
(256, '277', 'Sameer Chandra ', '2018-03-07'),
(257, '284', 'Suryansh ', '2018-03-07'),
(258, '291', 'Aditya Shrivastava', '2018-03-07'),
(259, '296', 'Snehal Chandra', '2018-03-07'),
(260, '298', 'Anshul Kumar', '2018-03-07'),
(261, '299', 'Anant Sharma', '2018-03-07'),
(262, '300', 'Kushagra Joshi', '2018-03-07'),
(263, '302', 'Anu', '2018-03-07'),
(264, '305', 'Shaurya', '2018-03-07'),
(265, '308', 'Vishesh', '2018-03-07'),
(266, '309', 'Abhimanyu', '2018-03-07'),
(267, '310', 'Suchita Verma', '2018-03-07'),
(268, '311', 'Abhinav Arya', '2018-03-07'),
(269, '313', 'Pratyush', '2018-03-07'),
(270, '327', 'Ojas Awasthi', '2018-03-07'),
(271, '328', 'Shlok', '2018-03-07'),
(272, '333', 'Ayush', '2018-03-07'),
(273, '336', 'Marvi Shrivastava', '2018-03-07'),
(274, '339', 'Saksham Gupta', '2018-03-07'),
(275, '340', 'Kartik Agarwal', '2018-03-07'),
(276, '360', 'Saumya Shrivastava', '2018-03-07'),
(277, '369', 'Vaani', '2018-03-07'),
(278, '370', 'Vansh', '2018-03-07'),
(279, '375', 'Rishita', '2018-03-07'),
(280, '377', 'Vidit Gupta', '2018-03-07'),
(281, '381', 'Rish', '2018-03-07'),
(282, '383', 'Arnav Goel', '2018-03-07'),
(283, '384', 'Shambhavi', '2018-03-07'),
(284, '392', 'Atharv', '2018-03-07'),
(285, '399', 'Vibhor', '2018-03-07'),
(286, '407', 'Riddhima', '2018-03-07'),
(287, '408', 'Aryan ', '2018-03-07'),
(288, '412', 'Yahya', '2018-03-07'),
(289, '420', 'Naman', '2018-03-07'),
(290, '422', 'Arnav Goel', '2018-03-07'),
(291, '423', 'Medha Goel', '2018-03-07'),
(292, '426', 'Ishanaya Agarwal', '2018-03-07'),
(293, '427', 'Anant Agarwal', '2018-03-07'),
(294, '428', 'Vedant Agarwal', '2018-03-07'),
(295, '429', 'Rudhransh Chowdhary', '2018-03-07'),
(296, '430', 'Vidhi', '2018-03-07'),
(297, '444', 'Shubaika Siddiqui', '2018-03-07'),
(298, '451', 'Maliha', '2018-03-07'),
(299, '452', 'Arsh', '2018-03-07'),
(300, '456', 'Ariz', '2018-03-07'),
(301, '459', 'Dhruv', '2018-03-07'),
(302, '465', 'Apoorv', '2018-03-07'),
(303, '467', 'Srijan', '2018-03-07'),
(304, '502', 'Shayan', '2018-03-07'),
(305, '515', 'Mariyam Muneer', '2018-03-07'),
(306, '520', 'Samriddhi ', '2018-03-07'),
(307, '525', 'Diksha', '2018-03-07'),
(308, '528', 'Haleema', '2018-03-07'),
(309, '542', 'Arpita', '2018-03-07'),
(310, '543', 'Aadya Garg', '2018-03-07'),
(311, '545', 'Raj Vinayak', '2018-03-07');

-- --------------------------------------------------------

--
-- Table structure for table `location_master`
--

CREATE TABLE `location_master` (
  `id` int(10) NOT NULL,
  `location_name` varchar(60) NOT NULL,
  `parent_id` int(10) NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '''0''->',
  `add_date` varchar(60) NOT NULL,
  `modify_date` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_master`
--

INSERT INTO `location_master` (`id`, `location_name`, `parent_id`, `status`, `add_date`, `modify_date`) VALUES
(1, 'India', 0, '1', '', ''),
(2, 'Pakistan', 0, '1', '', ''),
(3, 'Uttar Pradesh', 1, '1', '', ''),
(4, 'Madhaya Pradesh', 1, '1', '', ''),
(5, 'Andhra Pradesh', 1, '1', '', ''),
(6, 'Lucknow', 3, '1', '', ''),
(7, 'Kanpur', 3, '1', '', ''),
(8, 'Karnataka', 1, '1', '', ''),
(9, 'Bangalore', 8, '1', '', ''),
(10, 'Davangere', 8, '1', '', ''),
(11, 'Mangalore', 8, '1', '', ''),
(12, 'Mysore', 8, '1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `location_master1`
--

CREATE TABLE `location_master1` (
  `id` int(10) NOT NULL,
  `location_name` varchar(60) NOT NULL,
  `parent_id` int(10) NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '''0''->',
  `add_date` varchar(60) NOT NULL,
  `modify_date` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_master1`
--

INSERT INTO `location_master1` (`id`, `location_name`, `parent_id`, `status`, `add_date`, `modify_date`) VALUES
(8, 'India', 0, '1', '', ''),
(9, 'Pakistan', 0, '1', '', ''),
(10, 'Uttar Pradesh', 1, '1', '', ''),
(11, 'Madhaya Pradesh', 1, '1', '', ''),
(12, 'Andhra Pradesh', 1, '1', '', ''),
(13, 'Lucknow', 1, '1', '', ''),
(14, 'Kanpur', 3, '1', '', ''),
(15, 'Karnataka', 1, '1', '', ''),
(16, 'Bangalore', 15, '1', '', ''),
(17, 'Davangere', 15, '1', '', ''),
(18, 'Mangalore', 15, '1', '', ''),
(19, 'Mysore', 15, '1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `login_master`
--

CREATE TABLE `login_master` (
  `id` int(11) NOT NULL,
  `uuid` int(11) NOT NULL,
  `login_time` varchar(50) NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0=logout,1=login',
  `device_id` varchar(100) NOT NULL,
  `token_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_master`
--

INSERT INTO `login_master` (`id`, `uuid`, `login_time`, `status`, `device_id`, `token_id`) VALUES
(1, 1, '1542181575', '0', '845057d4748324cc', ''),
(2, 2, '1542265636', '0', 'a6f3ee02f9f9dbe6', ''),
(3, 3, '1542266126', '0', '', ''),
(4, 2, '1542280019', '0', 'a6f3ee02f9f9dbe6', ''),
(5, 2, '1542288181', '0', 'a6f3ee02f9f9dbe6', ''),
(6, 2, '1542455491', '0', 'a6f3ee02f9f9dbe6', ''),
(7, 2, '1542520071', '0', 'a6f3ee02f9f9dbe6', ''),
(8, 2, '1543225579', '0', 'a6f3ee02f9f9dbe6', ''),
(9, 2, '1543312914', '0', 'a6f3ee02f9f9dbe6', ''),
(10, 2, '1543395721', '0', 'a6f3ee02f9f9dbe6', 'fBQvHU41kBA:APA91bF74oTF7GwO6N1vXknqjgF4Y0rOTFB1Ka3wwFbBDpNQFhDrHQzDTe3GRk0MtY1FBpiMzpl5hllofkDusTM8CiPa5mdrL4RKMtOr-PUBDa_J1NKhdFHKGeTCzBfiRBh3OzZhtVC0'),
(11, 2, '1543395770', '0', 'a6f3ee02f9f9dbe6', 'fBQvHU41kBA:APA91bF74oTF7GwO6N1vXknqjgF4Y0rOTFB1Ka3wwFbBDpNQFhDrHQzDTe3GRk0MtY1FBpiMzpl5hllofkDusTM8CiPa5mdrL4RKMtOr-PUBDa_J1NKhdFHKGeTCzBfiRBh3OzZhtVC0'),
(12, 4, '1543904971', '0', 'a6f3ee02f9f9dbe6', ''),
(13, 2, '1543927409', '0', 'a6f3ee02f9f9dbe6', 'e-Iy0yqzNw0:APA91bGfZY08cB9YwdpG6EEjyo2KGNJndvynu_DFsXpnVvhVo__j0-TfIuyQxhcN5tzOuy7MPzcCtCfc-c1D2R7pm5AUcl9eVYn5kb581cGPuCCsW4lJfRojbgKiW_GeJLzcGSZGTjkN'),
(14, 2, '1544425906', '0', 'a6f3ee02f9f9dbe6', 'd6V8cTsrSK0:APA91bGHYtpR8FkZM02yHQuyMf74zMr9MQWYBZkKOAWe1emEZu-Uy4O1e9KdbsAxatXTKvG67M7phkTUtA2QM4HJ_2UQyNau3wL3_YlRrUbNhYgbRk5shZDYy70kQcPiH6F848vAQOe_'),
(15, 2, '1544425995', '0', 'a6f3ee02f9f9dbe6', 'd6V8cTsrSK0:APA91bGHYtpR8FkZM02yHQuyMf74zMr9MQWYBZkKOAWe1emEZu-Uy4O1e9KdbsAxatXTKvG67M7phkTUtA2QM4HJ_2UQyNau3wL3_YlRrUbNhYgbRk5shZDYy70kQcPiH6F848vAQOe_'),
(16, 2, '1544426017', '0', 'a6f3ee02f9f9dbe6', 'd6V8cTsrSK0:APA91bGHYtpR8FkZM02yHQuyMf74zMr9MQWYBZkKOAWe1emEZu-Uy4O1e9KdbsAxatXTKvG67M7phkTUtA2QM4HJ_2UQyNau3wL3_YlRrUbNhYgbRk5shZDYy70kQcPiH6F848vAQOe_'),
(17, 2, '1544522993', '0', 'a6f3ee02f9f9dbe6', 'eyPcK6BUf7c:APA91bHhmgpoCdDJNGS28_V6iEicW2yLOrlXGIndcBOgx31xbebz0ki29iB5ne97TM8_kuBH5HZVkK7bRDIjBS5WMgfbwfjNQkngAq-wMv8iX8Cj06dOn0d14lfqEMcqWAuItHbv8yo1'),
(18, 2, '1544528553', '0', 'a6f3ee02f9f9dbe6', 'cy2ToayGolU:APA91bE2_MbZhjjnZJmZ72YaOPQtU3bZiN1rpvtSLjvEjtCrlicZn3iHNJsdcfuwhjFxTnNFb1s3cx8Ylqmc8VGxgH9WWMFmlvcmr3lSAfyMAwPTu4ppTGfV1YhbN2YQkVl2bO_-swmS'),
(19, 5, '1544534496', '0', '845057d4748324cc', ''),
(20, 2, '1544784108', '0', 'a6f3ee02f9f9dbe6', 'd1U7MJ7ESiY:APA91bFvrZBMIrav1FRg5TUNTBY_wrZ3DCkWwn6Dj4kd5LxsKRkjEnqIjRT-HvjVzCQ7abxkJDSc2TlHAx0mVLHNPl23LheX4POCXIAAtJofgamobsNbg4_iRthuH4dj4WMLAljDq77q'),
(21, 2, '1546237408', '0', 'a6f3ee02f9f9dbe6', 'c778iZfGgMw:APA91bH_NeHcwiTFTH3pPJ6-CND9OIOLnmwWuTM3uZxIJPciOylTg96nM1zlC_VLb3xhTfw0K7C6IYQ1AxXa2zZp_Y2KBvuCuxG6_ft4iExPTnk12kZq8wUN9En2rXokPBNj_8oIP3EZ'),
(22, 2, '1546240414', '0', 'a6f3ee02f9f9dbe6', 'c778iZfGgMw:APA91bH_NeHcwiTFTH3pPJ6-CND9OIOLnmwWuTM3uZxIJPciOylTg96nM1zlC_VLb3xhTfw0K7C6IYQ1AxXa2zZp_Y2KBvuCuxG6_ft4iExPTnk12kZq8wUN9En2rXokPBNj_8oIP3EZ'),
(23, 2, '1546242204', '0', 'a6f3ee02f9f9dbe6', 'c778iZfGgMw:APA91bH_NeHcwiTFTH3pPJ6-CND9OIOLnmwWuTM3uZxIJPciOylTg96nM1zlC_VLb3xhTfw0K7C6IYQ1AxXa2zZp_Y2KBvuCuxG6_ft4iExPTnk12kZq8wUN9En2rXokPBNj_8oIP3EZ'),
(24, 2, '1546242870', '0', 'a6f3ee02f9f9dbe6', 'c778iZfGgMw:APA91bH_NeHcwiTFTH3pPJ6-CND9OIOLnmwWuTM3uZxIJPciOylTg96nM1zlC_VLb3xhTfw0K7C6IYQ1AxXa2zZp_Y2KBvuCuxG6_ft4iExPTnk12kZq8wUN9En2rXokPBNj_8oIP3EZ'),
(25, 2, '1546327777', '0', 'a6f3ee02f9f9dbe6', 'dQeNwShRInI:APA91bGgWWdgoeQB2V_nLIeu6lFOdfmMgPZm_lvte-YT97CrW9Y-MHa4bso2MK6J7SmSu_VHTnC0JwxaDbXbnOcb-zGVzQEKbcP7K4KZv9jQeIEKLZ5hdXR_I3b7S98mCRF9e-BVojto'),
(26, 2, '1546333711', '0', 'a6f3ee02f9f9dbe6', 'c778iZfGgMw:APA91bH_NeHcwiTFTH3pPJ6-CND9OIOLnmwWuTM3uZxIJPciOylTg96nM1zlC_VLb3xhTfw0K7C6IYQ1AxXa2zZp_Y2KBvuCuxG6_ft4iExPTnk12kZq8wUN9En2rXokPBNj_8oIP3EZ'),
(27, 2, '1546503849', '1', 'a6f3ee02f9f9dbe6', 'c778iZfGgMw:APA91bH_NeHcwiTFTH3pPJ6-CND9OIOLnmwWuTM3uZxIJPciOylTg96nM1zlC_VLb3xhTfw0K7C6IYQ1AxXa2zZp_Y2KBvuCuxG6_ft4iExPTnk12kZq8wUN9En2rXokPBNj_8oIP3EZ'),
(28, 2, '1551337077', '1', 'a6f3ee02f9f9dbe6', 'ekRjYCxKTjI:APA91bHe8yZNpemWIPr_c4-cEFVrRKLW0St7uxklANoYfa4R2xGP356RaDNRC3V0Q3ni-RqQHGnWAZbEl92PICuqhCvjs4WgKNP7s9tpXQ4t3P9r0pacfpGU-59f9RvecUeuKrzlQ0fu'),
(29, 6, '1553447394', '0', '347dbb46ad44768c', ''),
(30, 6, '1553512690', '1', '347dbb46ad44768c', 'cizhJYMrhPE:APA91bFVRFjHUPdrfUK694_tOw-3Html_krzZzHcsmN95uXkoMxcosFgnm-saEaijnMJkIps4kJyxoTle_0NYYnfrqIOOf4Z5m4eiLIWpjM76qhbcXadWpeDVb2j9o4vymnte7k9PjUt'),
(31, 6, '1553512692', '1', '347dbb46ad44768c', 'cizhJYMrhPE:APA91bFVRFjHUPdrfUK694_tOw-3Html_krzZzHcsmN95uXkoMxcosFgnm-saEaijnMJkIps4kJyxoTle_0NYYnfrqIOOf4Z5m4eiLIWpjM76qhbcXadWpeDVb2j9o4vymnte7k9PjUt'),
(32, 7, '1553529050', '0', 'f1f949cde837b238', ''),
(33, 8, '1553674895', '0', '8459461b8879fe64', ''),
(34, 9, '1553675946', '0', '8459461b8879fe64', ''),
(35, 8, '1553690445', '0', '8459461b8879fe64', 'fcxAYvzyOGE:APA91bH5rZ1mT5wEHYkd67w9gVkN4hey4L1a2dQ92TDsINqMQgYlxrLcUK-B4OFK_XM3Qm4opQiJo-zdn-RoXpJS3yOtGATS7f8tqh-zTgrGe9cai1iR-YJ__nRe6OrHvBZ2E_A7DLx0'),
(36, 10, '1553776428', '0', '8760f0eafb6e5827', ''),
(37, 8, '1553841642', '1', '8459461b8879fe64', 'fcxAYvzyOGE:APA91bH5rZ1mT5wEHYkd67w9gVkN4hey4L1a2dQ92TDsINqMQgYlxrLcUK-B4OFK_XM3Qm4opQiJo-zdn-RoXpJS3yOtGATS7f8tqh-zTgrGe9cai1iR-YJ__nRe6OrHvBZ2E_A7DLx0'),
(38, 8, '1553841642', '1', '8459461b8879fe64', 'fcxAYvzyOGE:APA91bH5rZ1mT5wEHYkd67w9gVkN4hey4L1a2dQ92TDsINqMQgYlxrLcUK-B4OFK_XM3Qm4opQiJo-zdn-RoXpJS3yOtGATS7f8tqh-zTgrGe9cai1iR-YJ__nRe6OrHvBZ2E_A7DLx0'),
(39, 2, '1554205295', '1', 'a6f3ee02f9f9dbe6', 'cSp4hC_IDkQ:APA91bEYVEHOYs-tysGy5lb8sQQmgsPo3rzbysLwDcVe2vjeqtRrMV-oE4nI9C1ZUrnHEhP8M4B2kq65A9WFTYABjz4KT2A0yvuifVWEwZqJYxLkHT0atjDU73qFmJEVPS9XEbv-aVal'),
(40, 8, '1554357729', '1', '8459461b8879fe64', 'c1X6EameZHQ:APA91bH_SnRxAaUBF9jT-pMzE4ztHktcBhaMXo-ypnPsK1F-cCU3EyhBwqFzpvhCMK0ClCXnXkDL53KM3PMAh1Sko1nOraicLMI2BEL7zPwbBnenpLgrNL6y68GBTJ1w-37vY51RexoO'),
(41, 8, '1554440113', '1', '8459461b8879fe64', 'c1X6EameZHQ:APA91bH_SnRxAaUBF9jT-pMzE4ztHktcBhaMXo-ypnPsK1F-cCU3EyhBwqFzpvhCMK0ClCXnXkDL53KM3PMAh1Sko1nOraicLMI2BEL7zPwbBnenpLgrNL6y68GBTJ1w-37vY51RexoO'),
(42, 11, '1554448913', '0', '8392e7ccad8a8967', ''),
(43, 12, '1554449833', '0', 'bdc743806dcfd0e9', ''),
(44, 11, '1554452599', '1', '8392e7ccad8a8967', 'et1QYVWIOk4:APA91bHkEXnW5kOG-QMAsEorXOQps6SplKqwU_q0EDO0GdkLCVzKzTqTuq14GuLc7gdFNCWuNHmDbo05eqHVfjeSGszyBzK3qT8vbSZHaQ74dUW72AR_GMvrC2sSacdE2EpGALeo9A5D'),
(45, 8, '1554453558', '1', '8459461b8879fe64', 'et1QYVWIOk4:APA91bHkEXnW5kOG-QMAsEorXOQps6SplKqwU_q0EDO0GdkLCVzKzTqTuq14GuLc7gdFNCWuNHmDbo05eqHVfjeSGszyBzK3qT8vbSZHaQ74dUW72AR_GMvrC2sSacdE2EpGALeo9A5D'),
(46, 8, '1554453559', '1', '8459461b8879fe64', 'et1QYVWIOk4:APA91bHkEXnW5kOG-QMAsEorXOQps6SplKqwU_q0EDO0GdkLCVzKzTqTuq14GuLc7gdFNCWuNHmDbo05eqHVfjeSGszyBzK3qT8vbSZHaQ74dUW72AR_GMvrC2sSacdE2EpGALeo9A5D'),
(47, 2, '1555306327', '1', 'a6f3ee02f9f9dbe6', 'c7lUrqnGyiM:APA91bHvXwbvFIQpXlXl9WRCLkevnMTV2K1TcmXLyGZGDU77_JlKIYRPdw_xhlJRbTs-D807ydjmbOSZ9xpmkGsbwvEDITYRJVrobHoM7OrdZFFk_wV2kpheDToUtvivmryOTm4OVowf'),
(48, 2, '1556083954', '1', 'a6f3ee02f9f9dbe6', 'edy2kpjHFgo:APA91bH8wDun000_hInNuS0FWyLDP4HcBNTDprpEi3Wa-nPu6HdCU-5jZ8cFl71I_IUppRd27anYS-wPx_z-JeJ7-gmSeg0nYGNCDtc2mWjExQP9MVtvUkHf26zJgU2j9e6qQLbVJcqu'),
(49, 2, '1556088364', '1', 'a6f3ee02f9f9dbe6', 'fBzAJRLQXfg:APA91bEEdSfI6sda3q81Oj_w3GK7L41Dw82mR-JbkFvVSbY6bqLXBcTSHiEMeoigfKbnj6lVfmk-1u7luNc9qZHVIGyyFFVQAag7O3KioaIlZL1R2bhA8VJZWmqfI7V_biR26TemPUwJ'),
(50, 2, '1556097398', '1', 'a6f3ee02f9f9dbe6', 'cg1VGvV69VQ:APA91bEYsBiyy8C7X7qFJlHjsnVP1W174d5dheJWRdtXuxEkEHWvyM541tcMEk8j3qHYorIksYz7rCSDRmaOYFGW4s0H2ijruK9AsEs2axr_F-V5pOb-7jnBvTxvmmxfpYpIud5vsznM'),
(51, 2, '1556098901', '1', 'a6f3ee02f9f9dbe6', 'ei1Lf5dQylE:APA91bHJfc4eb0SLgh_W_PjxHdQTvJZil9Rn-i41z5K5sr7Wj-FWqu3GPY3ayNadTgJuIKxtKhEgv43at-SVnxdJy_C9KuVUMSgYWhazA8D8pYElWjIrqXC8ZCF4KO_1WjNQZlMDHsr9'),
(52, 2, '1556099069', '1', 'a6f3ee02f9f9dbe6', 'ezAvsFuGpo0:APA91bEvMx2v5LXK3YL58hmzzYhHWUOVI1n0vO3mRZqHUnGo87QlTv4FFVE9aTGP0nMxQOBoXMF7F2bT6V-d7eZ18gt17CaI61WR-L2fZwgZj5lslz4edpLF7XWwV_R2Z6sMLqvGkhze'),
(53, 2, '1556100203', '1', 'a6f3ee02f9f9dbe6', 'e7nFE0jVuTY:APA91bHDwygaEPsw7ZEN7ulfj067WdwnL91zzt5-ctDP5YROAzmW-ZbxpWtoYFwNoFRkyj-pFa9Xx92a4xuV9zgZQ8r6OdsRQQhrN48emSeUOa8WR-1lbpsFUHlKl0RhmF_nhXt5GCcF'),
(54, 2, '1556101397', '1', 'a6f3ee02f9f9dbe6', 'fc5TTtTaUAM:APA91bG0CDCIH1Xu42QVRJNkNZXfBadgyC9KumBe16xifcwWaqgebFjAcd0CkJHk-1AHUy9ms_f4-vkFWHVNWKs8H_WkYhTfOSbOHMfLOV-FoV9eBNQX69ubPrhRzEEeaIfaPdSn4j5F'),
(55, 2, '1556101587', '1', 'a6f3ee02f9f9dbe6', 'eR9bJU9XxUY:APA91bHcBX3nc8MTCqQp2cdWh5x-R4P-9rz_7iqftvFMdsJhpOfSfbrIf6Dp3V0-mzlmrLEI3Ak3NOIki2SACSKbGrk7bJwYt7P8Rs1fBYtMiJMDs4jaKRkk1gDO8CVJUKTv58QmSZLA'),
(56, 2, '1556101640', '1', 'a6f3ee02f9f9dbe6', 'eR9bJU9XxUY:APA91bHcBX3nc8MTCqQp2cdWh5x-R4P-9rz_7iqftvFMdsJhpOfSfbrIf6Dp3V0-mzlmrLEI3Ak3NOIki2SACSKbGrk7bJwYt7P8Rs1fBYtMiJMDs4jaKRkk1gDO8CVJUKTv58QmSZLA'),
(57, 2, '1556101642', '1', 'a6f3ee02f9f9dbe6', 'eR9bJU9XxUY:APA91bHcBX3nc8MTCqQp2cdWh5x-R4P-9rz_7iqftvFMdsJhpOfSfbrIf6Dp3V0-mzlmrLEI3Ak3NOIki2SACSKbGrk7bJwYt7P8Rs1fBYtMiJMDs4jaKRkk1gDO8CVJUKTv58QmSZLA'),
(58, 2, '1556101787', '1', 'a6f3ee02f9f9dbe6', 'eWGmpb83KZg:APA91bEMvKOVY_EbgzDkoesrckhacbbFQIrNl_3JpnJeaWwj8wJiCPvY1VPudD2fK5bZRyOkMft7YW71ji229spBAOTnMVKRPGe6xzli-4nv8BwRwtSdYFi07ZM6m43QEEB2ogbtfi4w'),
(59, 2, '1556101980', '1', 'a6f3ee02f9f9dbe6', 'cUAIL-hzV8Q:APA91bETVf2Ovm59Oa8caPBwlBxAlzFl1MNiKlAER4XwY_Nzpb8guQnH0CjkDsvMwSR4eAkvw8OIZ9LlfiEdzG-5etFqzeeKomlW1lNj3ylE85dQ5QPXvXMq1HO1dDnYT3r-nm5IyBLM'),
(60, 2, '1556103012', '1', 'a6f3ee02f9f9dbe6', 'dQSMCsi8248:APA91bEwy0CMatkOPA899XU9YXvsdCIg1WYmkdR2fPBpvGq3yZQQwoY-i_5xwEVrqE_BdJEG2sPcggHdEq5eFlxyHcpOXd55Y2i91YVauvk4lmqloOb_PgvyAAKKJqpgJkG81j3A0TBV'),
(61, 2, '1556105285', '1', 'a6f3ee02f9f9dbe6', 'e8mXFGz8koo:APA91bEKK0bou5Pd5MJMD6M8yl94EFTn-Q7GY0PdimwAg9hruBfkSJ9YgNtddFCyIQW3WWcf_rI7lMIAwhYNS1UZri7C9oYulpx-LRxtRtaVba-EuoYdCQIV5_JLC7lTzRcXrMe4yaRo'),
(62, 14, '1556280785', '0', 'c0743d718279e3a3', ''),
(63, 14, '1556339369', '1', 'c0743d718279e3a3', 'c7lUrqnGyiM:APA91bHvXwbvFIQpXlXl9WRCLkevnMTV2K1TcmXLyGZGDU77_JlKIYRPdw_xhlJRbTs-D807ydjmbOSZ9xpmkGsbwvEDITYRJVrobHoM7OrdZFFk_wV2kpheDToUtvivmryOTm4OVowf'),
(64, 2, '1558338585', '1', 'a6f3ee02f9f9dbe6', 'chZfWWbG6Jg:APA91bFfQ-bnJwQQyo3K_C7uzxkYj_QjxehXLFLl0eRXY_izTA-gJnOT1r-VYHJj3ljkbPG60QOVC7w5Nl8QTIzajwNZgX0QLaNnTwPCOrKm4JXPy2Myxtu5w11bzUKhwfFytLEIBs_u'),
(65, 2, '1558343773', '1', 'a6f3ee02f9f9dbe6', 'chZfWWbG6Jg:APA91bFfQ-bnJwQQyo3K_C7uzxkYj_QjxehXLFLl0eRXY_izTA-gJnOT1r-VYHJj3ljkbPG60QOVC7w5Nl8QTIzajwNZgX0QLaNnTwPCOrKm4JXPy2Myxtu5w11bzUKhwfFytLEIBs_u'),
(66, 2, '1558354140', '1', 'a6f3ee02f9f9dbe6', 'chZfWWbG6Jg:APA91bFfQ-bnJwQQyo3K_C7uzxkYj_QjxehXLFLl0eRXY_izTA-gJnOT1r-VYHJj3ljkbPG60QOVC7w5Nl8QTIzajwNZgX0QLaNnTwPCOrKm4JXPy2Myxtu5w11bzUKhwfFytLEIBs_u'),
(67, 2, '1558420373', '1', 'a6f3ee02f9f9dbe6', 'chZfWWbG6Jg:APA91bFfQ-bnJwQQyo3K_C7uzxkYj_QjxehXLFLl0eRXY_izTA-gJnOT1r-VYHJj3ljkbPG60QOVC7w5Nl8QTIzajwNZgX0QLaNnTwPCOrKm4JXPy2Myxtu5w11bzUKhwfFytLEIBs_u'),
(68, 17, '1558519885', '0', '42d23d101db1cb11', ''),
(69, 2, '1558606407', '1', 'a6f3ee02f9f9dbe6', 'e9Sz6_NzvsU:APA91bFb2HN1-tIfEzz-eVIgYYe5XHK58WsrrI5-gigsHSELABwxj1qsREQkmSK_dORZe8coPXGVW-O8PEpp5covTNTTrycLkFdm04Bynhj84HuyqgFwArlp9Zfauvd3qrqq7ZVAivJI'),
(70, 2, '1558609763', '1', 'a6f3ee02f9f9dbe6', 'c0qDlcjuKR8:APA91bGAwJS8CdgNApTNN_I40zi7F3imOAfiu_X2U6ahDLhDdTyWkg8A8N4NKqFsc093S0I7lIy7lNYY1Tg9eUgopv9Py1JiQoR-ct2u2vAmW-gIPNlpWLB_CXpD3zeNXoawiaLavdX3'),
(71, 2, '1558691542', '1', 'a6f3ee02f9f9dbe6', 'cN8m2rqZSHg:APA91bFCLZmA_UhlOxODUn574pmyS8aDXU4XkJi3g_a7G1P0W4pBAV55lwsZ-8eh5zuosOOqhYwFn1ckG7AohieXQLd6qckCaXCnRV4NHVneiX_H10RqnbCcrKn9cKPzt5m3sMjxXMBl'),
(72, 18, '1558935927', '0', 'kajhgdk565626asd', ''),
(73, 19, '1558936022', '0', 'kajhgdk565626asd', ''),
(74, 20, '1558936445', '0', 'kajhgdk565626asd', ''),
(75, 21, '1558939164', '0', '910dbc300f7d444d', ''),
(76, 22, '1558940053', '0', '910dbc300f7d444d', ''),
(77, 23, '1558940266', '0', '910dbc300f7d444d', ''),
(78, 24, '1558942140', '0', '910dbc300f7d444d', ''),
(79, 25, '1558942561', '0', '910dbc300f7d444d', ''),
(80, 26, '1558943166', '0', '910dbc300f7d444d', ''),
(81, 18, '1559117588', '1', '', 'd2gbRIPq-ds:APA91bEqmxXJVurX0usieBLdOAa9-J8MUCZWEa24gaEx7zDca4KKo_swRUDD7_GoH_Yqp808cr72YJcx1YqEK3z8a8F6dOvkN-HvYvzPO7jetKMZ-ExXYGn7XjPf4HFLcgHA17fPZssl'),
(82, 18, '1559123237', '1', '', 'd2gbRIPq-ds:APA91bEqmxXJVurX0usieBLdOAa9-J8MUCZWEa24gaEx7zDca4KKo_swRUDD7_GoH_Yqp808cr72YJcx1YqEK3z8a8F6dOvkN-HvYvzPO7jetKMZ-ExXYGn7XjPf4HFLcgHA17fPZssl'),
(83, 20, '1560486735', '0', '3220c216643ec74d', ''),
(84, 19, '1561004192', '1', '', 'f4_Taeyi0ck:APA91bGQeXi4FHcPyUYfpgxI12k29-J9Ojtvs8TeaFdrFfRvuu41iLxW4-LCI9ePJ8vk3WrDwoI9mr1CL37OOqnxY68y9-oOzrVUh3sNtXvSCEqrt74rHQ0k1yYjYryjOjTnhCjS9eJW'),
(85, 20, '1561814737', '1', '3220c216643ec74d', 'e2rXhKaZdSA:APA91bEHcgpu1wSPJ1JNp1dHW86PQzFxsD32d3xACK6KBIMsKpNXKSzYyg5EbU-sLeHc51Aa81zE7Ud7rFm7HQGk7Yk91d1d0821AsvR62XRMWpLvkSFNzUE6vplLikSGDXnDPK24Zae'),
(86, 25, '1562827878', '0', 'da1eacad1374f44e', ''),
(87, 26, '1563065465', '0', 'fa7ef767bf08adbc', ''),
(88, 26, '1563065483', '1', 'fa7ef767bf08adbc', 'eURNmuynXKU:APA91bESU0SRvSwud1Ic6DBDoIF-ol18QoXwoWSOX6IdooVS-_JJy6YCaE-bJR_CjzEYVmDRa6vNanZXqUapLdB4aeNR-p1CDuXRPV7NeaV6cTjuSgiMb9SldRBkUhHg5YGj1--ONyrM'),
(89, 27, '1563252417', '0', '2497fea48f07b15d', ''),
(90, 28, '1563253074', '0', '2497fea48f07b15d', ''),
(91, 25, '1563342443', '1', 'da1eacad1374f44e', 'fsTTYy8fYLM:APA91bH067EQ2JAN7QgXY9hk8-mybk91ujicNtyLsy-6Sn7m9R2yQsz9jml8RWFnQD3f_haHmVWp4JAikkefQxpWRu0fHTtSzQb5mwgpbsVSnturcFs5t6kZxnRGLiN4R8qn5gvqoyU_'),
(92, 29, '1563850219', '0', '9affc818aedf45c2', ''),
(93, 30, '1563963537', '0', 'a8485b7b5517b9e5', ''),
(94, 18, '1564123792', '1', '', 'fa4sBzZCgOc:APA91bH5dhFXP2oVzDkQ6GdesdnswzgVZA8DIex5yPzWDGk5SEdhBv8EGjR26m0Sm7dgkxANwplJ0spk8IwzfmEEzgLmQzDo-tZiFf6V9DDLpAEthMzfCqjLG7jP8DoOkDZrAJeh7Xed'),
(95, 18, '1564125359', '1', '', 'fa4sBzZCgOc:APA91bH5dhFXP2oVzDkQ6GdesdnswzgVZA8DIex5yPzWDGk5SEdhBv8EGjR26m0Sm7dgkxANwplJ0spk8IwzfmEEzgLmQzDo-tZiFf6V9DDLpAEthMzfCqjLG7jP8DoOkDZrAJeh7Xed'),
(96, 20, '1564128445', '1', '3220c216643ec74d', 'dCkxiXvqSxk:APA91bFEQvkbaRTsfur3zwi-iRmGExGecb08sOJMosqtVmLg8btam-TcnQvr412IjNdEw4EQ6TsmxFHefm9uWBWS7XswfPmfKHQ9vqfRKpb9FFam1V0Atqz7u83vwfIpafWrOnBW29t2'),
(97, 20, '1564130428', '1', '3220c216643ec74d', 'fdQHTDA5q1o:APA91bHZlRuQM4xiUopHIqd6aODZP-oPQ4df6rjHdmMwP_GwboB6XIuuJfMSgs4xAMGGm8C8vrkJafw3lylIB1HXqIeD6_GJ2QvOFB9Wh3-KCXzFlMibHkM7C6U9lrsRIgAcjfHniV6D'),
(98, 20, '1564147989', '1', '3220c216643ec74d', 'd4DVgE3BDwQ:APA91bEnWabUhAP9AYZxjcaBtUaJsupqU6ljXKJ0VtEunp4jepaIGMSQIkilJiXK4H_aLVgN8n4pwGsW1zAU8gDbRHVBm5N_A1m7cngpZoVVDdfqBbYc6ZeKkC5gk2nbmW9Rcf04eXSW'),
(99, 31, '1564378161', '0', '2497fea48f07b15d', ''),
(100, 31, '1564378203', '0', '2497fea48f07b15d', 'cAqrVEsqxlM:APA91bGsBW_Ye5HPUhzSth1Aps8wsuTnDZf--Ge4bmLsuKUMwgR3_KhBBL72RInW1XZdKwgqyKpSu-B7zJn3acjLzyGndWj-AIxeaky44BV0YVIlL4smjNDBQAELzvFJdHTSKzTmDlr-'),
(101, 31, '1564378225', '0', '2497fea48f07b15d', 'cAqrVEsqxlM:APA91bGsBW_Ye5HPUhzSth1Aps8wsuTnDZf--Ge4bmLsuKUMwgR3_KhBBL72RInW1XZdKwgqyKpSu-B7zJn3acjLzyGndWj-AIxeaky44BV0YVIlL4smjNDBQAELzvFJdHTSKzTmDlr-'),
(102, 18, '1564402252', '1', '', 'f9lr28ae7PM:APA91bHsht3FXqGmRyxUTWh1sdfMpgO2hmMhipWp3vlAv9xtepr0kpDxGkh3BbXPSCpDJ8uEqfqIU7FcgN2KiTUBh5hR4k_i_XeuO8aLgTmSlY7TK-FA3vXAgm2OUb4YSvWE4cDQ4NNv'),
(103, 18, '1564402686', '1', '', 'f9lr28ae7PM:APA91bHsht3FXqGmRyxUTWh1sdfMpgO2hmMhipWp3vlAv9xtepr0kpDxGkh3BbXPSCpDJ8uEqfqIU7FcgN2KiTUBh5hR4k_i_XeuO8aLgTmSlY7TK-FA3vXAgm2OUb4YSvWE4cDQ4NNv'),
(104, 18, '1564402768', '1', '', 'f9lr28ae7PM:APA91bHsht3FXqGmRyxUTWh1sdfMpgO2hmMhipWp3vlAv9xtepr0kpDxGkh3BbXPSCpDJ8uEqfqIU7FcgN2KiTUBh5hR4k_i_XeuO8aLgTmSlY7TK-FA3vXAgm2OUb4YSvWE4cDQ4NNv'),
(105, 18, '1564404206', '1', '', 'f9lr28ae7PM:APA91bHsht3FXqGmRyxUTWh1sdfMpgO2hmMhipWp3vlAv9xtepr0kpDxGkh3BbXPSCpDJ8uEqfqIU7FcgN2KiTUBh5hR4k_i_XeuO8aLgTmSlY7TK-FA3vXAgm2OUb4YSvWE4cDQ4NNv'),
(106, 32, '1564469381', '0', 'ac01ed590d6c1944', ''),
(107, 32, '1564470829', '1', 'ac01ed590d6c1944', 'f9lr28ae7PM:APA91bHsht3FXqGmRyxUTWh1sdfMpgO2hmMhipWp3vlAv9xtepr0kpDxGkh3BbXPSCpDJ8uEqfqIU7FcgN2KiTUBh5hR4k_i_XeuO8aLgTmSlY7TK-FA3vXAgm2OUb4YSvWE4cDQ4NNv'),
(108, 31, '1564906734', '1', '2497fea48f07b15d', 'cAqrVEsqxlM:APA91bGsBW_Ye5HPUhzSth1Aps8wsuTnDZf--Ge4bmLsuKUMwgR3_KhBBL72RInW1XZdKwgqyKpSu-B7zJn3acjLzyGndWj-AIxeaky44BV0YVIlL4smjNDBQAELzvFJdHTSKzTmDlr-'),
(109, 33, '1565784238', '0', '0c66e186c7242b55', ''),
(110, 33, '1565784287', '1', '0c66e186c7242b55', 'cMqlgXgZSDQ:APA91bGvjjmkmla6mld34IojZwep4mOXPcxdiup7Pp73PaXHzGJQ-XE5vB51wjIYruNyMwe4VsjQRRJjsEwTaR4ZeXk2hrWF4MECCBNxq_Pkl03KRcX9ArZxDMdkhXF0r-3Yl4gygYSC'),
(111, 33, '1565784461', '1', '0c66e186c7242b55', 'dbeik_rI9Gs:APA91bH5ASP3UIWfbxwTQKQGBTKL-QoL2oAcPlY8RWemEwdRTxQZ342W7eEvfJuudBrLQeB7oGbOpkXheCvNXy4tYq0eeVvwVVtehLp6YSpY2yY1WoVB8OOZg3G3VbarzbweUvEDPB9O');

-- --------------------------------------------------------

--
-- Table structure for table `mode_master`
--

CREATE TABLE `mode_master` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `icon` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `add_date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mode_master`
--

INSERT INTO `mode_master` (`id`, `name`, `icon`, `status`, `add_date`) VALUES
(1, 'Credit Card', 'atm-card.png', 1, '1518158395'),
(2, 'COD', 'cash-on-delivery.png', 0, '1518158395'),
(3, 'Debit Card', 'atm-card.png', 1, '1518158395'),
(4, 'EMI', 'EMI.png', 1, '1518158395'),
(5, 'Net Banking', 'Net_banking.png', 1, '1518158395'),
(6, 'Cash', 'cash-on-delivery.png', 2, '1518158395');

-- --------------------------------------------------------

--
-- Table structure for table `notification_list`
--

CREATE TABLE `notification_list` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `message` text NOT NULL,
  `description` text NOT NULL,
  `link` varchar(500) NOT NULL,
  `add_datetime` varchar(50) NOT NULL,
  `last_update` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_list`
--

INSERT INTO `notification_list` (`id`, `title`, `message`, `description`, `link`, `add_datetime`, `last_update`, `status`) VALUES
(1, 'testing', 'first notification', '<p>sdfsdfsdf</p>\r\n', 'notification1542393000_1542446145.html', '2018-11-17 14:45:45', '2019-07-01 16:25:42', 1),
(2, 'New Year Bonanza....', 'Visit any Restaurant Registered with Trova and get 20% off on Total bill', '<p>Visit any Restaurant Registered with Trova and get 20% off on Total bill,On order above 1000 rs</p>\r\n', 'notification1546021800_1546074446.html', '2018-12-29 14:37:26', '2019-01-01 14:05:58', 1),
(3, 'New Year Bonanza....', 'Visit any Restaurant Registered with Trova and get 20% off on Total bill', '<p>dafafds</p>\r\n', 'notification1546194600_1546231200.html', '2018-12-31 10:10:00', '2019-01-01 14:26:11', 1),
(4, 'testing notification', 'redirect ', '<p>jhgfkjsdkfkdsfjhdsgfkjbdshfgjdysfgdjsbfjhsdgf</p>\r\n', 'notification1546194600_1546236116.html', '2018-12-31 11:31:56', '2019-01-01 14:28:26', 1),
(5, 'Developer', 'TEST', '<p>Test : Developer</p>\r\n', 'notification1546194600_1546237670.html', '2018-12-31 11:57:50', '2019-01-01 14:03:08', 1),
(6, 'Spa And Salon', 'Then playing around with small incentive percentages, 5%, 10% or 15% off isn’t going to tempt anyone. To coax new clients who may be toying with giving you a go, I think 25% is the minimum discount.', '<p><img alt=\"\" src=\"https://www.lockhart-meyer.co.uk/wp-content/uploads/2016/06/rush-beauty-offer-screenshot.jpg\" style=\"height:775px; width:600px\" /></p>\r\n', 'notification1556217000_1556278277.html', '2019-04-26 17:01:17', '2019-04-26 17:01:27', 1),
(7, 'test', 'test', '', 'notification1562783400_1562825089.html', '2019-07-11 11:34:49', '2019-07-11 11:35:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `sub_cate_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `add_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(250) NOT NULL,
  `status` int(11) NOT NULL,
  `add_date` varchar(60) NOT NULL,
  `modify_date` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_master`
--

CREATE TABLE `product_master` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `experience` varchar(50) NOT NULL,
  `mobile` varchar(14) NOT NULL,
  `website` varchar(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_cateid` int(11) NOT NULL,
  `FacebookUrl` varchar(100) NOT NULL,
  `TwitterUrl` varchar(100) NOT NULL,
  `InstagramUrl` varchar(100) NOT NULL,
  `GooglePlusUrl` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `pincode` int(11) NOT NULL,
  `CompanyName` varchar(200) NOT NULL,
  `AboutCompany` text NOT NULL,
  `opening_time` varchar(50) NOT NULL,
  `closing_time` varchar(50) NOT NULL,
  `Educationdetails` varchar(111) NOT NULL,
  `RegistrationNumber` int(11) NOT NULL,
  `ConsultingFees` int(11) NOT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `AwardRecogination` text NOT NULL,
  `offers_discount` varchar(255) NOT NULL,
  `logo` text NOT NULL,
  `icon` text NOT NULL,
  `adds` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `Package` varchar(255) NOT NULL,
  `Keyword` text NOT NULL,
  `ServiceContact` varchar(20) NOT NULL,
  `ServiceEmail` varchar(50) NOT NULL,
  `Establishment` varchar(200) NOT NULL,
  `DoorDelivery` varchar(20) NOT NULL,
  `servicess` text NOT NULL,
  `practises_at` varchar(250) NOT NULL,
  `status` int(11) NOT NULL,
  `add_date` varchar(30) NOT NULL,
  `modify_date` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_mode`
--

CREATE TABLE `product_mode` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `mode_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `add_date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_timing`
--

CREATE TABLE `product_timing` (
  `id` int(11) NOT NULL,
  `product_id` varchar(60) NOT NULL,
  `monday_morning_time` varchar(60) NOT NULL,
  `monday_evening_time` varchar(60) NOT NULL,
  `tuesday_morning_time` varchar(60) NOT NULL,
  `tuesday_evening_time` varchar(60) NOT NULL,
  `wednesday_morning_time` varchar(60) NOT NULL,
  `wednesday_evening_time` varchar(60) NOT NULL,
  `thursday_morning_time` varchar(60) NOT NULL,
  `thursday_evening_time` varchar(60) NOT NULL,
  `friday_morning_time` varchar(60) NOT NULL,
  `friday_evening_time` varchar(60) NOT NULL,
  `saturday_morning_time` varchar(60) NOT NULL,
  `saturday_evening_time` varchar(60) NOT NULL,
  `sunday_morning_time` varchar(60) NOT NULL,
  `sunday_evening_time` varchar(60) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `add_date` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_timing1`
--

CREATE TABLE `product_timing1` (
  `id` int(11) NOT NULL,
  `product_id` varchar(60) NOT NULL,
  `days` varchar(200) NOT NULL,
  `morning_time` varchar(200) NOT NULL,
  `evening_time` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `add_date` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_timing1`
--

INSERT INTO `product_timing1` (`id`, `product_id`, `days`, `morning_time`, `evening_time`, `status`, `add_date`) VALUES
(1, '19', '', '', '', 1, '1523255830'),
(2, '18', '', '', '', 1, '1523355069'),
(3, '20', '', '', '', 1, '1523009838'),
(4, '21', '', '', '', 1, '1523255905'),
(5, '1', '', '', '', 1, '1523253488'),
(6, '22', '', '', '', 1, '1523257512'),
(7, '23', '', '', '', 1, '1523355085'),
(8, '24', '', '', '', 1, '1523696048'),
(9, '25', '', '', '', 1, '1523696034'),
(10, '26', '', '', '', 1, '1523696022'),
(11, '31', '', '', '', 1, '1523696564'),
(12, '30', '', '', '', 1, '1523695967'),
(13, '29', '', '', '', 1, '1523695979'),
(14, '28', '', '', '', 1, '1523695993'),
(15, '27', '', '', '', 1, '1523696009');

-- --------------------------------------------------------

--
-- Table structure for table `profession`
--

CREATE TABLE `profession` (
  `id` int(11) NOT NULL,
  `name` varchar(111) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profession`
--

INSERT INTO `profession` (`id`, `name`, `status`) VALUES
(1, 'Artist', 1),
(2, 'Author', 1),
(3, 'Accontant', 1),
(4, 'Business Man', 1),
(5, 'Cashier', 1),
(6, 'Designer', 1),
(7, 'Developer', 1),
(8, 'Engineer', 1),
(9, 'Electtrician', 1),
(10, 'Former', 1),
(11, 'Novelist', 1),
(12, 'Painter', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rating_master`
--

CREATE TABLE `rating_master` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `rating` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `add_date` varchar(40) NOT NULL,
  `modify_date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `profession` varchar(200) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(250) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL COMMENT '0.Male , 1.Female',
  `marital_status` varchar(255) NOT NULL,
  `age` varchar(55) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `address` varchar(555) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '1=>custom,2=>FB,3=>Google',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `add_date` varchar(60) NOT NULL,
  `modify_date` varchar(60) NOT NULL,
  `social_media_id` varchar(250) NOT NULL,
  `profile_pic` varchar(250) NOT NULL,
  `device_id` varchar(200) NOT NULL,
  `update_status` tinyint(1) NOT NULL DEFAULT '1',
  `otp` varchar(100) NOT NULL,
  `otp_status` int(11) NOT NULL,
  `login_lvl` int(11) NOT NULL,
  `last_login` datetime NOT NULL,
  `reg_date` datetime NOT NULL,
  `forgot_otp` int(11) NOT NULL,
  `forgot_otp_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `username`, `profession`, `mobile`, `email`, `password`, `dob`, `gender`, `marital_status`, `age`, `state`, `city`, `pincode`, `address`, `type`, `status`, `add_date`, `modify_date`, `social_media_id`, `profile_pic`, `device_id`, `update_status`, `otp`, `otp_status`, `login_lvl`, `last_login`, `reg_date`, `forgot_otp`, `forgot_otp_status`) VALUES
(3, 'dharma', '18', '9047138133', 'dharmadpf@gmail.com', 'MTIz', '2019-07-24', 'Female', 'Married', '21', 'tamilnadu', 'dharmapuri', '560078', 'address', 1, 1, '', '', '', '1543823278-3.jpg', '', 1, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 9719, 0),
(5, 'Manju channi', '', '9480794052', 'manjuchanni@gmail.com', 'MTIz', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '1544534514.jpg', '845057d4748324cc', 1, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(12, '1111', '', '8588088888', 'vshbnb@hotmail.com', 'MTIzZg==', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 'bdc743806dcfd0e9', 1, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(14, 'developer', 'Common Man', '9961646452', 'dev@gmail.com', 'cGFzc3dvcmQ=', '26-04-2019', 'Male', '', '', 'Karnataka', 'BAngalore', '560085', '', 1, 1, '', '1556280838', '', '1556280819.jpg', 'c0743d718279e3a3', 1, '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(15, 'Preetham', '', '7676494962', 'preethamss1995@gmail.com', 'cGFzc3dvcmQ=', 'Vjj', '', '', 'Hh', '', '', 'Bbvjj', 'Jkh', 1, 1, '', '', '', '1558005710-15.png', '', 2, '541960', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1333, 1),
(16, 'Syed ', '', '8951109176', 'sidimran4455@gmail.com', 'U2lkbW5pc0AxMjM=', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '1558350698-16.png', '', 1, '294370', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(17, 'syed ', '', '+189511091', 'sidimran455@gmail.com', 'U2lkbW5pc0AxMjM=', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', '42d23d101db1cb11', 1, '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(18, 'Harish', 'Common Man', '8310896028', 'haris13396@gmail.com', 'aGRtXzc3NjA2Nw==', '1996-03-13', 'Male', 'Married', '24', 'Karnataka', 'BAngalore', '560030', 'Apollo Clinic Basavanagudi, 99, bull Temple Road next To Ramakrishna Ashram, Basavanagudi, Bengaluru, Karnataka 560019', 1, 1, '', '1564402887', '', '1564125246.jpg', '', 1, '194825', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2525, 1),
(19, 'Madhusudhan', '', '9845600969', 'madhusudhan.sampathraj@gmail.com', 'MTIzNDU2', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', '', 1, '340185', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2797, 1),
(20, 'Pavan Kumar', 'Common Man', '9632060605', 'pavankumar1911@gmail.com', 'cGFzc3dvcmQxMjM=', '14-06-2019', 'Male', '', '', 'Karnataka', 'BAngalore', '560032', '', 1, 1, '', '1560486849', '', '1560486828.jpg', '3220c216643ec74d', 1, '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(21, 'sreekutty', '', '9961646452', 'sreeku192@gmail.com', 'MTIzNDU2', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', '', 1, '543807', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(22, 'Soumya', '', '9983474625', 'testing@gmail.com', 'MTIzNDU2Nzg5MA==', '', '', '', '', '', '', '', '', 1, 0, '', '', '', '', '', 1, '684203', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(23, 'soumya', '17', '7022149704', 'testing1@gmail.com', 'MDEyMzQ1Njc4OQ==', '21/08/1996', 'Female', 'UnMarried', '22', 'karnataka', 'banglore', '', 'bangalore', 1, 1, '', '', '', '', '', 1, '158642', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1870, 0),
(24, 'soumya1', '', '7022149704', 'testing2@gmail.com', 'MTIzNA==', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', '', 1, '859032', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(25, 'text', '', '1234', 'text', 'dGV4dA==', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 'da1eacad1374f44e', 1, '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(26, 'John doe', '', '6364908596', 'playstorecnx4@gmail.com', 'R29vZ2xlQDEyMzQ1', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 'fa7ef767bf08adbc', 1, '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(27, 'Testname', '', '8050537055', 'testname@gmail.com', 'cGFzc3dvcmQ=', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', '2497fea48f07b15d', 1, '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(28, 'Tesla', '', '9663324268', 'tesla@gmail.com', 'cGFzc3dvcmQ=', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', '2497fea48f07b15d', 1, '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(29, 'satish', '', '7975448572', 'satishdanger45@gmail.com', 'Nzc2MDUwMTc4Mw==', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', '9affc818aedf45c2', 1, '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(30, 'Manju', '', '+918105154', 'manjuchanni143@gmail.com', 'MTIzNDU=', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', 'a8485b7b5517b9e5', 1, '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(31, 'Developer', '', '7026912306', 'glrakesh4@gmail.com', 'cGFzc3dvcmQ=', '', '', '', '', '', '', '', '', 1, 1, '', '', '', '', '2497fea48f07b15d', 1, '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(32, 'Harish', 'Common Man', '8310896028', 'harish.promena@gmail.com', 'aGRtXzc3NjA2Nw==', '', 'Female', '', '', 'Karnataka', 'BAngalore', '560036', '', 1, 1, '', '1564469551', '', '1564470191.jpg', 'ac01ed590d6c1944', 1, '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(33, 'vineetha', 'Common Man', '9482717442', 'vineethald95@gmail.com', 'VmluZWV0aGFAMTIz', '14-08-2019', 'Female', '', '', 'Karnataka', 'BAngalore', '572103', '', 1, 1, '', '1565784499', '', '', '0c66e186c7242b55', 1, '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `report_db`
--

CREATE TABLE `report_db` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vender_id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `mobile_no` int(11) NOT NULL,
  `reportmsg` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `res_booking_list`
--

CREATE TABLE `res_booking_list` (
  `res_book_id` int(11) NOT NULL,
  `bookno` varchar(255) NOT NULL,
  `res_id` varchar(255) NOT NULL,
  `numberof_seats` varchar(255) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `book_datetime` varchar(50) NOT NULL,
  `book_date` date NOT NULL,
  `message` varchar(999) NOT NULL,
  `status` int(11) NOT NULL,
  `booking_status` int(1) NOT NULL COMMENT '0=processing,1=confirm,2=reschdule,3=cancelled',
  `re_booking_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_booking_list`
--

INSERT INTO `res_booking_list` (`res_book_id`, `bookno`, `res_id`, `numberof_seats`, `uid`, `book_datetime`, `book_date`, `message`, `status`, `booking_status`, `re_booking_date`) VALUES
(1, '', '3', '3', '3', '2019-06-07 06:30 pm', '2019-06-06', 'cc  ccccccc cccccccc cccccc', 0, 0, '0000-00-00 00:00:00'),
(2, '', '3', '5', '3', '2019-06-14 09:30 pm', '2019-06-06', 'dfgdfgdf', 0, 0, '0000-00-00 00:00:00'),
(3, '', '3', '2', '3', '2019-06-07 08:00 pm', '2019-06-06', '6rytfh', 0, 0, '0000-00-00 00:00:00'),
(4, '', '3', '6', '3', '2019-06-06 09:00 pm', '2019-06-06', 'ryrty', 0, 0, '0000-00-00 00:00:00'),
(5, '', '2', '2', '18', '2019-06-13 12:00 pm', '2019-06-07', 'HI', 0, 2, '0000-00-00 00:00:00'),
(6, '', '2', '2', '18', '2019-06-07 02:30 pm', '2019-06-07', '', 0, 0, '0000-00-00 00:00:00'),
(7, '', '3', '6', '19', '2019-06-13 07:00 pm', '2019-06-07', '', 0, 0, '0000-00-00 00:00:00'),
(8, '', '3', '2', '18', '2019-06-14 07:30 pm', '2019-06-13', 'Ok', 0, 0, '0000-00-00 00:00:00'),
(9, '', '2', '2', '18', '2019-06-15 11:30 am', '2019-06-14', 'ok', 0, 0, '0000-00-00 00:00:00'),
(10, '', '2', '5', '18', '2019-06-25 12:00 pm', '2019-06-24', 'ok', 0, 2, '0000-00-00 00:00:00'),
(11, '', '2', '22', '18', '2019-06-24 04:30 pm', '2019-06-24', 'ok', 0, 0, '0000-00-00 00:00:00'),
(12, '', '1', '2', '18', '2019-06-27 03:00 pm', '2019-06-26', 'ok', 0, 0, '0000-00-00 00:00:00'),
(13, '', '1', '2', '23', '2019-06-29 03:00 pm', '2019-06-29', '', 0, 0, '0000-00-00 00:00:00'),
(14, '', '1', '2', '13', '2019-07-03 04:30 pm', '2019-07-02', 'ok', 0, 0, '0000-00-00 00:00:00'),
(15, '', '3', '2', '18', '2019-07-03 06:00 pm', '2019-07-02', '', 0, 0, '0000-00-00 00:00:00'),
(16, '', '2', '2', '18', '2019-07-21 02:30 pm', '2019-07-15', '', 0, 0, '0000-00-00 00:00:00'),
(17, '', '3', '2', '20', '2019-07-27 07:00 pm', '2019-07-26', '', 0, 0, '0000-00-00 00:00:00'),
(18, '', '1', '4', '33', '2019-08-14 06:30 pm', '2019-08-14', '', 1, 4, '0000-00-00 00:00:00'),
(19, '', '1', '11', '33', '2019-08-14 05:45 pm', '2019-08-14', '', 0, 1, '2019-08-14 17:45:15'),
(20, '', '1', '2', '33', '2019-08-16 10:30 pm', '2019-08-14', '', 0, 3, '0000-00-00 00:00:00'),
(21, '', '2', '3', '33', '2019-08-14 08:00 pm', '2019-08-14', '', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `res_booking_list1`
--

CREATE TABLE `res_booking_list1` (
  `res_book_id` int(11) NOT NULL,
  `bookno` varchar(255) NOT NULL,
  `res_id` varchar(255) NOT NULL,
  `numberof_seats` varchar(255) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `book_datetime` datetime NOT NULL,
  `book_date` date NOT NULL,
  `message` varchar(999) NOT NULL,
  `status` int(11) NOT NULL,
  `booking_status` int(1) NOT NULL DEFAULT '1' COMMENT '0=processing,1=confirm,2=reschdule,3=cancelled',
  `re_booking_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_booking_list1`
--

INSERT INTO `res_booking_list1` (`res_book_id`, `bookno`, `res_id`, `numberof_seats`, `uid`, `book_datetime`, `book_date`, `message`, `status`, `booking_status`, `re_booking_date`) VALUES
(51, '', '19', '2', '6', '0000-00-00 00:00:00', '2018-10-04', '', 0, 1, '0000-00-00 00:00:00'),
(52, '', '19', '2', '6', '0000-00-00 00:00:00', '2018-10-04', '', 0, 1, '0000-00-00 00:00:00'),
(53, '', '19', '8', '6', '0000-00-00 00:00:00', '2018-10-04', '', 0, 1, '0000-00-00 00:00:00'),
(54, '', '19', '3', '17', '0000-00-00 00:00:00', '2018-10-04', '', 0, 1, '0000-00-00 00:00:00'),
(55, '', '19', '1', '6', '0000-00-00 00:00:00', '2018-10-04', '', 0, 1, '0000-00-00 00:00:00'),
(56, '', '19', '1', '6', '0000-00-00 00:00:00', '2018-10-04', '', 0, 1, '0000-00-00 00:00:00'),
(57, '', '19', '2', '17', '0000-00-00 00:00:00', '2018-10-04', '', 0, 1, '0000-00-00 00:00:00'),
(58, '', '19', '4', '17', '0000-00-00 00:00:00', '2018-10-05', '', 0, 1, '0000-00-00 00:00:00'),
(59, '', '19', '10', '17', '0000-00-00 00:00:00', '2018-10-05', '', 0, 1, '0000-00-00 00:00:00'),
(60, '', '19', '2', '17', '0000-00-00 00:00:00', '2018-10-05', '', 0, 1, '0000-00-00 00:00:00'),
(61, '', '20', '2', '17', '0000-00-00 00:00:00', '2018-10-10', '', 0, 1, '0000-00-00 00:00:00'),
(62, '', '20', '3', '21', '0000-00-00 00:00:00', '2018-10-11', 'Demo', 0, 1, '0000-00-00 00:00:00'),
(63, '', '19', '2', '17', '0000-00-00 00:00:00', '2018-10-11', '', 0, 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `res_booking_list2`
--

CREATE TABLE `res_booking_list2` (
  `res_book_id` int(11) NOT NULL,
  `bookno` varchar(255) NOT NULL,
  `res_id` varchar(255) NOT NULL,
  `numberof_seats` varchar(255) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `book_datetime` datetime NOT NULL,
  `book_date` date NOT NULL,
  `message` varchar(999) NOT NULL,
  `status` int(11) NOT NULL,
  `booking_status` int(1) NOT NULL DEFAULT '1' COMMENT '0=processing,1=confirm,2=reschdule,3=cancelled',
  `re_booking_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `res_booking_reschdule`
--

CREATE TABLE `res_booking_reschdule` (
  `resc_id` int(11) NOT NULL,
  `res_book_id` varchar(255) NOT NULL,
  `res_id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `re_datetime` varchar(255) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  `user_type` int(11) NOT NULL COMMENT '1=user,2=admin',
  `status` int(11) NOT NULL,
  `add_datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_booking_reschdule`
--

INSERT INTO `res_booking_reschdule` (`resc_id`, `res_book_id`, `res_id`, `uid`, `re_datetime`, `msg`, `user_type`, `status`, `add_datetime`) VALUES
(1, '5', 0, '18', '2019-06-01 18:00:00', 'ok', 1, 0, '2019-06-13 16:50:25'),
(2, '10', 0, '18', '2019-07-02 16:00:00', 'Rescheduled.', 1, 0, '2019-07-01 16:02:52'),
(3, '19', 1, '33', '2019-08-14 05:45 pm', 'I have a fever now', 2, 0, '2019-08-14 05:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `res_booking_schedule`
--

CREATE TABLE `res_booking_schedule` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `reschedule_date` datetime NOT NULL,
  `description` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `res_categorylist`
--

CREATE TABLE `res_categorylist` (
  `cate_id` int(11) NOT NULL,
  `cate_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  `add_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `descp` varchar(555) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=active,2=deactive',
  `res_listid` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_categorylist`
--

INSERT INTO `res_categorylist` (`cate_id`, `cate_name`, `category_image`, `add_datetime`, `descp`, `status`, `res_listid`) VALUES
(1, 'Trending This Week', 'cate_logo_1542170386.jpg', '2018-11-14 06:55:11', 'The most popular restaurants in town this week', 1, '1,2,3'),
(2, 'Newly Opened', 'cate_logo_1542170547.jpg', '2018-11-14 04:42:27', 'The best new places in town', 1, ''),
(3, 'Cafe Breakfast', 'cate_logo_1542170646.jpg', '2018-11-14 04:44:06', 'The most popular Cafe Breakfast', 1, ''),
(4, 'Healthy juices', 'cate_logo_1542170774.jpg', '2018-11-14 04:46:14', 'Popular Healthy Juices Centers', 1, ''),
(5, 'Caribbean', 'cate_logo_1542170838.jpg', '2018-11-14 04:47:18', 'Caribbean Restaurant', 1, ''),
(6, 'Chinese', 'cate_logo_1542170922.jpg', '2018-11-14 04:48:44', 'Chinese restaurant', 1, ''),
(7, 'South Indian', 'cate_logo_1542170980.jpg', '2018-11-14 17:19:00', 'South Indian Restaurants', 1, ''),
(8, 'Organic Food', 'cate_logo_1542171056.jpg', '2018-11-14 04:50:56', 'Organic Food Restaurant', 1, ''),
(11, 'testing_cate', 'cate_logo_1542435550.jpg', '2018-11-17 06:19:10', 'sdfs', 1, ''),
(17, 'Pure Veg ', 'cate_logo_1560429355.jpg', '2019-06-13 12:43:37', 'A vegetarian who eats plant products only, especially one who uses no products derived from animals, as fur or leather.', 1, '4');

-- --------------------------------------------------------

--
-- Table structure for table `res_cuisine_list`
--

CREATE TABLE `res_cuisine_list` (
  `cuisine_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_cuisine_list`
--

INSERT INTO `res_cuisine_list` (`cuisine_id`, `name`, `last_update`, `status`) VALUES
(1, 'Indian', '2018-05-31 10:22:02', 1),
(2, 'Chinese', '2018-05-31 10:23:19', 1),
(3, 'American', '2018-05-31 10:23:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `res_dining_list`
--

CREATE TABLE `res_dining_list` (
  `dining_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_dining_list`
--

INSERT INTO `res_dining_list` (`dining_id`, `name`, `last_update`, `status`) VALUES
(1, 'Family', '2018-05-31 10:37:10', 1),
(2, 'Fine Dining', '2018-05-31 10:37:56', 1),
(3, 'Parity', '2018-05-31 10:38:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `res_feedback`
--

CREATE TABLE `res_feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vender_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `rating` varchar(200) NOT NULL,
  `add_time` varchar(40) NOT NULL,
  `username` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `anonymous_status` int(1) NOT NULL DEFAULT '0',
  `modify_date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_feedback`
--

INSERT INTO `res_feedback` (`id`, `user_id`, `vender_id`, `message`, `mobile`, `rating`, `add_time`, `username`, `status`, `anonymous_status`, `modify_date`) VALUES
(1, 3, 3, 'devloper Testing', '9047138133', '4', '1543822904', 'dharma', 0, 0, '1556130600'),
(4, 3, 3, 'devloper Testing', '9047138133', '4', '1543822904', 'dharma', 0, 0, '1556130600'),
(5, 3, 2, 'test', '9047138133', '3', '1551871804', 'dharma', 1, 0, '1556130600'),
(6, 3, 2, 'Chinese Restaurant Theme uses twitter bootstrap responsive boilerplate that adapts your website to mobile devices and the desktop or any other viewing environment. The theme is mainly targeted for Japanese, Chinese, Korean, Thai restaurants or sushi bars, that want to display their dishes, but it can also be used for any other restaurant type or for a recipe website. Also, you have the options to upload your own logo, header and favicon through the Customizer panel. It\'s Multilingual Ready, Search Engine Friendly, W3C Markup Validated and Cross-Browser compatible. Finally, your customers will have the option to reserve a table through our free restaurant reservation system.\r\n\r\n', '9047138133', '3', '1554199556', 'dharma', 0, 0, ''),
(7, 3, 3, 'hi developer testing', '9047138133', '4', '1554728394', 'dharma', 2, 0, '1554661800'),
(8, 3, 1, 'testing purpose-restaurant', '9047138133', '2', '1554785280', 'dharma', 2, 0, '1554748200'),
(9, 2, 2, 'I have attached my resume for your reference and hope to hear from you soon as I am currently working on the way to work on the 483(474(374!483)3!/47483(£-48)(_83)3)37383(4-47484(4/4-47\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n44\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n4\n\n\n\n4\n4\n\n\n\n4\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n444\n\n44\n\n\n4\n\n\n\n\n\n\n4\n\n\n\n\n\n4\n\n\n\n\n\n\n\n4\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n4\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n4\n\n\n4\n4\n3\n3\n\n3\n3\n3\n3\n\n(\n&&\n4\n4\n4\n4\n4\n\n4\n4\n4\n\n4\n4\n\n4\n\n4\n5\n5\n\n5\n5\n5\n5\n\n5\n5\n\n5', '8050201000', '1.0', '1556088277', 'Testing user1', 1, 0, '1556130600'),
(10, 2, 1, 'Vhhv', '8050201000', '2.0', '1556088991', 'Testing user1', 2, 0, '1556217000'),
(11, 2, 1, 'Bhgg', '8050201000', '2.0', '1556089021', 'Testing user1', 2, 0, '1556130600'),
(12, 2, 1, 'Hhffg', '8050201000', '2.0', '1556089092', 'Testing user1', 0, 0, '1556130600'),
(13, 2, 1, 'Hhffg', '8050201000', '2.0', '1556089092', 'Testing user1', 1, 0, '1556130600'),
(14, 2, 1, 'Hhggghh', '8050201000', '5.0', '1556107635', 'Testing user1', 1, 0, '1556130600'),
(15, 2, 2, 'Bnjg', '8050201000', '2.0', '1556108085', 'Testing user1', 1, 0, ''),
(16, 2, 2, 'Njg', '8050201000', '3.0', '1556108092', 'Testing user1', 1, 0, ''),
(17, 2, 3, 'Ffjfn', '8050201000', '2.0', '1556108115', 'Testing user1', 0, 0, '1556130600'),
(18, 2, 3, 'Dhdh', '8050201000', '2.0', '1556108119', 'Testing user1', 0, 0, '1556130600'),
(19, 2, 3, 'Xbxh', '8050201000', '1.0', '1556108161', 'Testing user1', 0, 0, '1556130600'),
(20, 2, 2, 'hi', '7026912306', '4.0', '1556188501', 'Testing user1', 0, 0, '1556130600'),
(21, 2, 3, 'testing', '7026912306', '5.0', '1556188620', 'Testing user1', 2, 0, '1556130600'),
(22, 13, 3, 'sree testing', '7026912306', '2', '1556189987', 'testingweb@gmail.com', 2, 0, '1556130600'),
(23, 2, 1, 'testing', '8050201000', '3.0', '1556277702', 'Testing user1', 1, 0, ''),
(24, 2, 2, 'Dingo half sinful agony sp sp pual sjp oap studio dingo', '7026912306', '1', '1557815029', 'Testing user1', 1, 0, ''),
(25, 15, 1, ' Nb ', '7676494962', '5', '1558006030', 'Preetham', 2, 0, '1561919400'),
(26, 2, 1, 'qwe qwqwwrwq', '7026912306', '1', '1558355250', 'Testing user1', 1, 0, ''),
(27, 2, 1, 'n ljl j ', '7026912306', '1', '1558355318', 'Testing user1', 1, 0, ''),
(28, 2, 1, 'test', '7026912306', '4', '1558355320', 'Testing user1', 1, 0, ''),
(29, 3, 1, 'jhg', '9047138133', '4', '1558358095', 'dharma', 1, 0, ''),
(30, 3, 1, 'kl', '9047138133', '3', '1558508023', 'dharma', 1, 0, ''),
(31, 18, 2, 'Nice experience!', '8310896028', '4', '1559198995', 'Harish', 1, 0, ''),
(32, 18, 3, 'Test_Harish', '8310896028', '4', '1559200522', 'Harish', 1, 0, ''),
(33, 18, 1, 'Nice ', '8310896028', '4', '1559207816', 'Harish', 1, 0, ''),
(34, 19, 1, 'Fresh heath hate geyat getti army shaw lab', '9845600969', '1', '1559643512', 'Madhusudhan', 1, 0, ''),
(35, 18, 1, 'Okay', '8310896028', '2', '1559816843', 'Harish', 1, 0, ''),
(36, 18, 2, 'OK', '8310896028', '2', '1559817016', 'Harish', 1, 0, ''),
(37, 18, 1, 'Hi', '8310896028', '2', '1559817876', 'Harish', 1, 0, ''),
(38, 18, 1, 'Good!', '8310896028', '3', '1559823890', 'Harish', 2, 0, '1561919400'),
(39, 18, 2, 'OKay', '8310896028', '2', '1559890605', 'Harish', 1, 0, ''),
(40, 18, 2, 'Ok', '8310896028', '2', '1559891962', 'Harish', 1, 0, ''),
(41, 19, 3, 'Co egl ', '9845600969', '1', '1559924479', 'Madhusudhan', 1, 0, ''),
(42, 3, 3, 'Demo  ', '9047138133', '4', '1560407407', 'dharma', 1, 0, ''),
(43, 18, 2, 'Ok', '8310896028', '3', '1560410874', 'Harish', 1, 0, ''),
(44, 18, 2, 'OK', '8310896028', '2', '1560411282', 'Harish', 1, 0, ''),
(45, 18, 3, 'hi', '8310896028', '3', '1560508962', 'Harish', 1, 0, ''),
(46, 18, 3, 'hhh', '8310896028', '2', '1560508987', 'Harish', 1, 0, ''),
(47, 18, 3, 'jjj', '8310896028', '2', '1560509000', 'Harish', 1, 0, ''),
(48, 18, 2, 'ffff', '8310896028', '2', '1560509132', 'Harish', 1, 0, ''),
(49, 18, 2, 'ffff', '8310896028', '2', '1560509133', 'Harish', 1, 0, ''),
(50, 18, 2, 'ffff', '8310896028', '2', '1560509133', 'Harish', 1, 0, ''),
(51, 18, 2, 'ffff', '8310896028', '2', '1560509133', 'Harish', 1, 0, ''),
(52, 18, 2, 'ffff', '8310896028', '2', '1560509133', 'Harish', 1, 0, ''),
(53, 18, 2, 'ffff', '8310896028', '2', '1560509133', 'Harish', 1, 0, ''),
(54, 18, 2, 'Ok..!', '8310896028', '2', '1561366058', 'Harish', 1, 0, ''),
(55, 18, 1, 'jyr,', '8310896028', '2', '1561544990', 'Harish', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `res_gallery_list`
--

CREATE TABLE `res_gallery_list` (
  `gallery_id` int(11) NOT NULL,
  `res_id` varchar(55) NOT NULL,
  `gallery_type` int(1) NOT NULL COMMENT '1=Food,2=Ambient',
  `images` varchar(1001) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_gallery_list`
--

INSERT INTO `res_gallery_list` (`gallery_id`, `res_id`, `gallery_type`, `images`, `last_update`, `status`) VALUES
(1, '2', 1, '1542176572_image0_2.jpg', '2018-11-14 18:52:00', 1),
(2, '2', 1, '1542176572_image1_2.jpg', '2018-11-14 18:52:00', 1),
(3, '2', 1, '1542176572_image2_2.jpg', '2018-11-14 18:52:00', 1),
(4, '2', 1, '1542176572_image3_2.jpg', '2018-11-14 18:52:00', 1),
(5, '2', 1, '1542176572_image4_2.jpg', '2018-11-14 18:52:00', 1),
(6, '2', 2, '1542176601_image0_2.jpg', '2018-11-14 18:53:00', 1),
(7, '2', 2, '1542176601_image1_2.jpg', '2018-11-14 18:53:00', 1),
(8, '2', 2, '1542176601_image2_2.jpg', '2018-11-14 18:53:00', 1),
(9, '2', 2, '1542176601_image3_2.jpg', '2018-11-14 18:53:00', 1),
(10, '2', 2, '1542176601_image4_2.jpg', '2018-11-14 18:53:00', 1),
(11, '3', 1, '1542178808_image0_3.jpg', '2018-11-14 19:30:00', 1),
(12, '3', 1, '1542178808_image1_3.jpg', '2018-11-14 19:30:00', 1),
(13, '3', 1, '1542178808_image2_3.jpg', '2018-11-14 19:30:00', 1),
(14, '3', 1, '1542178808_image3_3.jpg', '2018-11-14 19:30:00', 1),
(15, '3', 1, '1542178809_image4_3.jpg', '2018-11-14 19:30:00', 1),
(16, '3', 1, '1542178809_image5_3.jpg', '2018-11-14 19:30:00', 1),
(17, '3', 1, '1542178809_image6_3.jpg', '2018-11-14 19:30:00', 1),
(18, '3', 2, '1542178834_image0_3.jpg', '2018-11-14 19:30:00', 1),
(19, '3', 2, '1542178834_image1_3.jpg', '2018-11-14 19:30:00', 1),
(20, '3', 2, '1542178834_image2_3.jpg', '2018-11-14 19:30:00', 1),
(21, '3', 2, '1542178834_image3_3.jpg', '2018-11-14 19:30:00', 1),
(22, '3', 2, '1542178834_image4_3.jpg', '2018-11-14 19:30:00', 1),
(23, '3', 2, '1542178834_image5_3.jpg', '2018-11-14 19:30:00', 1),
(24, '3', 2, '1542178834_image6_3.jpeg', '2018-11-14 19:30:00', 1),
(25, '1', 1, '1542179780_image0_1.jpg', '2018-11-14 19:46:00', 1),
(26, '1', 1, '1542179780_image1_1.jpg', '2018-11-14 19:46:00', 1),
(27, '1', 1, '1542179780_image2_1.jpg', '2018-11-14 19:46:00', 1),
(28, '1', 1, '1542179780_image3_1.jpg', '2018-11-14 19:46:00', 1),
(29, '1', 1, '1542179780_image4_1.jpg', '2018-11-14 19:46:00', 1),
(30, '1', 1, '1542179780_image5_1.jpg', '2018-11-14 19:46:00', 1),
(31, '1', 1, '1542179780_image6_1.jpg', '2018-11-14 19:46:00', 1),
(32, '1', 2, '1542179795_image0_1.jpg', '2018-11-14 19:46:00', 1),
(33, '1', 2, '1542179795_image1_1.jpg', '2018-11-14 19:46:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `res_itemsize_list`
--

CREATE TABLE `res_itemsize_list` (
  `size_id` int(11) NOT NULL,
  `res_id` varchar(255) NOT NULL,
  `size_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `res_items_list`
--

CREATE TABLE `res_items_list` (
  `item_id` int(11) NOT NULL,
  `res_id` varchar(55) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_desc` varchar(255) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `menu_type` int(11) NOT NULL COMMENT '1=list,2=images',
  `item_cost` int(11) NOT NULL,
  `discount_percentage` varchar(255) NOT NULL,
  `item_type` varchar(255) NOT NULL,
  `item_size` varchar(255) NOT NULL,
  `item_tax` varchar(255) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_items_list`
--

INSERT INTO `res_items_list` (`item_id`, `res_id`, `menu_id`, `item_name`, `item_desc`, `item_image`, `menu_type`, `item_cost`, `discount_percentage`, `item_type`, `item_size`, `item_tax`, `last_update`, `status`) VALUES
(1, '1', 1, 'West Coast Fish Chowder', 'moked, candied salmon and rockfish star in this creamy, comforting soup that will warm your belly and your soul after a chilly walk along the beaches of Vancouver Island.', '', 0, 300, '10', '2', '', 'on', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `res_menuimages_list`
--

CREATE TABLE `res_menuimages_list` (
  `gallery_id` int(11) NOT NULL,
  `res_id` varchar(55) NOT NULL,
  `images` varchar(1001) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_menuimages_list`
--

INSERT INTO `res_menuimages_list` (`gallery_id`, `res_id`, `images`, `last_update`, `status`) VALUES
(1, '2', '1542176512_image0_2.png', '2018-11-14 18:51:00', 1),
(2, '2', '1542176512_image1_2.jpg', '2018-11-14 18:51:00', 1),
(3, '2', '1542176512_image2_2.jpg', '2018-11-14 18:51:00', 1),
(4, '2', '1542176512_image3_2.jpg', '2018-11-14 18:51:00', 1),
(5, '2', '1542176512_image4_2.jpg', '2018-11-14 18:51:00', 1),
(6, '2', '1542176512_image5_2.jpg', '2018-11-14 18:51:00', 1),
(7, '2', '1542176512_image6_2.jpg', '2018-11-14 18:51:00', 1),
(8, '2', '1542176512_image7_2.jpg', '2018-11-14 18:51:00', 1),
(9, '2', '1542176515_image8_2.jpg', '2018-11-14 18:51:00', 1),
(10, '2', '1542176515_image9_2.jpg', '2018-11-14 18:51:00', 1),
(11, '3', '1542178767_image0_3.jpg', '2018-11-14 19:29:00', 1),
(12, '3', '1542178767_image1_3.jpg', '2018-11-14 19:29:00', 1),
(13, '3', '1542178767_image2_3.jpg', '2018-11-14 19:29:00', 1),
(14, '3', '1542178767_image3_3.jpg', '2018-11-14 19:29:00', 1),
(15, '3', '1542178767_image4_3.jpg', '2018-11-14 19:29:00', 1),
(16, '3', '1542178767_image5_3.jpg', '2018-11-14 19:29:00', 1),
(17, '3', '1542178767_image6_3.jpg', '2018-11-14 19:29:00', 1),
(18, '3', '1542178767_image7_3.jpg', '2018-11-14 19:29:00', 1),
(19, '3', '1542178767_image8_3.jpg', '2018-11-14 19:29:00', 1),
(20, '3', '1542178767_image9_3.jpg', '2018-11-14 19:29:00', 1),
(21, '3', '1542178767_image10_3.jpg', '2018-11-14 19:29:00', 1),
(22, '1', '1542179323_image0_1.jpg', '2018-11-14 19:38:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `res_menu_list`
--

CREATE TABLE `res_menu_list` (
  `menu_id` int(11) NOT NULL,
  `res_id` varchar(55) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `menu_desc` varchar(255) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_menu_list`
--

INSERT INTO `res_menu_list` (`menu_id`, `res_id`, `menu_name`, `menu_desc`, `last_update`, `status`) VALUES
(1, '1', 'Home style Lunches', 'Homely Indian food  made in less oil and mild spices', '2018-11-14 19:30:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `res_report_db`
--

CREATE TABLE `res_report_db` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vender_id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `mobile_no` int(11) NOT NULL,
  `reportmsg` varchar(250) NOT NULL,
  `report_type` varchar(255) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_report_db`
--

INSERT INTO `res_report_db` (`id`, `user_id`, `vender_id`, `user_name`, `mobile_no`, `reportmsg`, `report_type`, `date_time`, `status`) VALUES
(1, 2, 3, 'Testing user1', 2147483647, '', 'This place has closed', '2019-04-24 12:21:16', 0),
(2, 2, 3, 'Testing user1', 2147483647, '7trrttrt', 'problem with address', '2019-04-24 02:58:41', 0),
(3, 2, 2, 'Testing user1', 2147483647, 'J j', 'Others', '2019-04-24 05:08:47', 0),
(4, 2, 1, 'Testing user1', 2147483647, 'V', 'Others', '2019-04-24 05:37:29', 0),
(5, 2, 1, 'Testing user1', 2147483647, 'Gh', 'Menu is incorrect', '2019-04-24 05:37:40', 0),
(6, 2, 1, 'Testing user1', 2147483647, 'Gh', 'This place has closed', '2019-04-24 05:37:46', 0),
(7, 2, 1, 'Testing user1', 2147483647, '', 'problem with address', '2019-04-24 05:37:54', 0),
(8, 2, 1, 'Testing user1', 2147483647, '', 'Menu is incorrect', '2019-04-24 05:38:06', 0),
(9, 2, 1, 'Testing user1', 2147483647, '', 'Problem with Contact number', '2019-04-24 05:38:18', 0),
(10, 2, 2, 'Testing user1', 2147483647, '', 'problem with address', '2019-04-24 05:38:29', 0),
(11, 2, 1, 'Testing user1', 2147483647, '', 'Menu is incorrect', '2019-04-24 05:43:39', 0),
(12, 19, 1, 'Madhusudhan', 2147483647, 'Coco co cymru', 'Others', '2019-06-04 03:49:16', 0),
(13, 18, 1, 'Harish', 2147483647, '', 'Wrong Phone Number', '2019-06-06 04:14:50', 0),
(14, 18, 2, 'Harish', 2147483647, '', 'This Place has closed', '2019-06-07 12:26:18', 0),
(15, 18, 1, 'Harish', 2147483647, '', 'This Place has closed', '2019-06-07 12:28:05', 0),
(16, 18, 1, 'Harish', 2147483647, '', 'Wrong Phone Number', '2019-06-26 03:57:58', 0),
(17, 18, 1, 'Harish', 2147483647, 'ok', 'Others', '2019-06-26 03:58:04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `res_restaurant_list`
--

CREATE TABLE `res_restaurant_list` (
  `res_id` int(11) NOT NULL,
  `cate_id` varchar(252) NOT NULL,
  `sub_cateid` varchar(255) NOT NULL,
  `res_name` varchar(255) NOT NULL,
  `rest_type` int(1) NOT NULL COMMENT '1=veg,2=non-veg,3=both',
  `res_desc` varchar(5555) NOT NULL,
  `more_info` text NOT NULL,
  `res_mobile` varchar(25) NOT NULL,
  `Establishment` varchar(25) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `res_logo` varchar(255) NOT NULL,
  `background_image` varchar(255) NOT NULL,
  `website` varchar(1000) NOT NULL,
  `FacebookUrl` varchar(2000) NOT NULL,
  `TwitterUrl` varchar(2000) NOT NULL,
  `InstagramUrl` varchar(2000) NOT NULL,
  `GooglePlusUrl` varchar(2000) NOT NULL,
  `res_back_image` varchar(255) NOT NULL,
  `registration_no` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `res_address` varchar(555) NOT NULL,
  `search_keyword` varchar(255) NOT NULL,
  `offers_discount` text NOT NULL,
  `favt_dish` text NOT NULL,
  `buffet_price` varchar(50) NOT NULL,
  `buffet_time` varchar(50) NOT NULL,
  `buffet_desc` text NOT NULL,
  `latitude` varchar(55) NOT NULL,
  `longitude` varchar(55) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `payment_mode` varchar(1000) NOT NULL,
  `dining_type` varchar(125) NOT NULL,
  `opening_time` time NOT NULL,
  `closing_time` time NOT NULL,
  `avg_cost` int(11) NOT NULL,
  `cusine` varchar(2000) NOT NULL,
  `door_delivery` varchar(55) NOT NULL,
  `booking_option` varchar(55) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_restaurant_list`
--

INSERT INTO `res_restaurant_list` (`res_id`, `cate_id`, `sub_cateid`, `res_name`, `rest_type`, `res_desc`, `more_info`, `res_mobile`, `Establishment`, `contact_name`, `res_logo`, `background_image`, `website`, `FacebookUrl`, `TwitterUrl`, `InstagramUrl`, `GooglePlusUrl`, `res_back_image`, `registration_no`, `email`, `res_address`, `search_keyword`, `offers_discount`, `favt_dish`, `buffet_price`, `buffet_time`, `buffet_desc`, `latitude`, `longitude`, `country`, `state`, `city`, `pincode`, `payment_mode`, `dining_type`, `opening_time`, `closing_time`, `avg_cost`, `cusine`, `door_delivery`, `booking_option`, `last_update`, `status`) VALUES
(1, '41', '1', 'eat.fit', 3, 'sfsdfsdfsdfsd', 'Breakfast, Delivery Only, No Alcohol Available, Desserts and Bakes, Lunch Menu', '7026912306', '2009', 'Manju', 'logo_1543394541.png', 'bkImg_1542179780.jpg', '', '', '', '', '', '', '12345', 'manjuchanni143@gmail.com', '32/2G, NCPR Industrial Layout, Doddanakundi Industrial Area 2, Seetharampalya, Hoodi, Whitefield, Bangalore', 'Whitefield', '20', 'Hyderabadi Chicken, Murgh Khurchan, Cabbage Salad, Brownie Chocolate, Chicken Curry, Raita, Roti', '', '', '', '12.971389', '77.750130', '1', '8', '9', '560066', '2,1,3,5', '1', '00:00:00', '00:00:00', 500, '1,2', 'Yes', 'Yes', '0000-00-00 00:00:00', 1),
(2, '41', '1', 'Truffles', 3, 'Locally owned and operated, The Truffles Group has been advancing Vancouver Island’s hospitality, tourism and beverage retail industries for over 25 years.  Guided by founder Don Calveley’s entrepreneurial spirit and dedication to business excellence, The Truffles Group continually pushes the boundaries of innovation to create memorable and lasting experiences for their guests and team.  Built on a foundational commitment to core values, the group has grown to include six market-leading brands including Truffles Catering, Canoe Brewpub and Marina, C', 'Home Delivery,Table booking not available,No Alcohol Available', '2223334455', '2010', 'Chetan', 'logo_1542176572.jpg', 'bkImg_1542176572.jpg', 'http://chetan.com', '', '', '', '', '', '21356', 'chetan1@gmail.com', '28, 4th \'B\' Cross,5th Block', 'Koramangala', '20', 'Burgers, Pasta, American Cheese Burger, Chicken Salad, Pancakes, Chocolate Dessert, Peri Fries', '550', '02:00 PM', 'Only for 2 peoples, and the food is served only for non veg.', '12.822246', '77.783827', '1', '8', '9', '5', '2,1,3', '1,2', '00:00:00', '00:00:00', 451, '1,2,3', 'Yes', 'Yes', '0000-00-00 00:00:00', 1),
(3, '41', '1', 'Byg Brewski Brewing Company', 2, '', 'Full Bar Available,Outdoor Seating,Brunch,Live Music,Nightlife', '9900112233', '2010', 'Manjunath', 'logo_1542178808.jpg', 'bkImg_1542178808.jpg', 'http://Cocktails.com', '', '', '', '', '', '413515', 'BygBrewskiBrewingCompany@gmail.com', '22/123, Byrathi Village, Bidarahalli Hobli', 'Hennur', '5', 'Cocktails, Chaap, Kabab Platter, Beer, Chicken Tikka, Pizza, Pork Ribs', '1500', '08:00 PM', 'Provides Drinks, Along With The Food (Veg&Non-Veg).', '13.0346', '77.6369', '1', '8', '9', '', '2,1,3', '1', '00:00:00', '00:00:00', 897, '1,2', 'No', 'Yes', '2019-06-26 06:53:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `res_subcategory`
--

CREATE TABLE `res_subcategory` (
  `sub_id` int(11) NOT NULL,
  `cate_id` varchar(255) NOT NULL,
  `sub_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  `add_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `descp` varchar(555) NOT NULL,
  `features` int(11) NOT NULL COMMENT '1=yes,2=no',
  `status` int(11) NOT NULL COMMENT '1=active,2=deactive'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `res_timing`
--

CREATE TABLE `res_timing` (
  `id` int(11) NOT NULL,
  `res_id` varchar(60) NOT NULL,
  `monday_starting_time` varchar(255) NOT NULL,
  `monday_ending_time` varchar(60) NOT NULL,
  `tuesday_starting_time` varchar(60) NOT NULL,
  `tuesday_ending_time` varchar(60) NOT NULL,
  `wednesday_starting_time` varchar(60) NOT NULL,
  `wednesday_ending_time` varchar(60) NOT NULL,
  `thursday_starting_time` varchar(60) NOT NULL,
  `thursday_ending_time` varchar(60) NOT NULL,
  `friday_starting_time` varchar(60) NOT NULL,
  `friday_ending_time` varchar(60) NOT NULL,
  `saturday_starting_time` varchar(60) NOT NULL,
  `saturday_ending_time` varchar(60) NOT NULL,
  `sunday_starting_time` varchar(60) NOT NULL,
  `sunday_ending_time` varchar(60) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `add_date` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_timing`
--

INSERT INTO `res_timing` (`id`, `res_id`, `monday_starting_time`, `monday_ending_time`, `tuesday_starting_time`, `tuesday_ending_time`, `wednesday_starting_time`, `wednesday_ending_time`, `thursday_starting_time`, `thursday_ending_time`, `friday_starting_time`, `friday_ending_time`, `saturday_starting_time`, `saturday_ending_time`, `sunday_starting_time`, `sunday_ending_time`, `status`, `add_date`) VALUES
(1, '2', '11:30 AM', '11:30 PM', '11:30 AM', '11:30 PM', '11:30 AM', '11:30 PM', '11:30 AM', '11:30 PM', '11:30 AM', '11:30 PM', '11:30 AM', '11:30 PM', '11:30 AM', '11:30 PM', 1, '1542176633'),
(2, '3', '06:00 PM', '11:30 PM', '06:00 PM', '11:30 PM', '06:00 PM', '11:30 PM', '06:00 PM', '11:30 PM', '06:00 PM', '11:30 PM', '06:00 PM', '11:30 PM', '06:00 PM', '11:30 PM', 1, '1542178858'),
(3, '1', '03:00 PM', '11:30 PM', '03:00 PM', '11:30 PM', '03:00 PM', '11:30 PM', '03:00 PM', '11:30 PM', '03:00 PM', '11:30 PM', '03:00 PM', '11:30 PM', '03:00 PM', '11:30 PM', 1, '1542179811');

-- --------------------------------------------------------

--
-- Table structure for table `saloans_lists`
--

CREATE TABLE `saloans_lists` (
  `salon_id` int(11) NOT NULL,
  `cate_id` varchar(252) NOT NULL,
  `sub_cateid` varchar(255) NOT NULL,
  `saloan_name` varchar(255) NOT NULL,
  `saloan_desc` varchar(555) NOT NULL,
  `saloan_mobile` varchar(25) NOT NULL,
  `Establishment` varchar(25) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `saloan_logo` varchar(255) NOT NULL,
  `background_image` varchar(255) NOT NULL,
  `website` varchar(1000) NOT NULL,
  `FacebookUrl` varchar(2000) NOT NULL,
  `TwitterUrl` varchar(2000) NOT NULL,
  `InstagramUrl` varchar(2000) NOT NULL,
  `GooglePlusUrl` varchar(2000) NOT NULL,
  `saloan_back_image` varchar(255) NOT NULL,
  `registration_no` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `saloan_address` varchar(555) NOT NULL,
  `search_keyword` varchar(255) NOT NULL,
  `latitude` varchar(55) NOT NULL,
  `longitude` varchar(55) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `payment_mode` varchar(1000) NOT NULL,
  `opening_time` time NOT NULL,
  `closing_time` time NOT NULL,
  `avg_cost` int(11) NOT NULL,
  `booking_option` varchar(55) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saloans_lists`
--

INSERT INTO `saloans_lists` (`salon_id`, `cate_id`, `sub_cateid`, `saloan_name`, `saloan_desc`, `saloan_mobile`, `Establishment`, `contact_name`, `saloan_logo`, `background_image`, `website`, `FacebookUrl`, `TwitterUrl`, `InstagramUrl`, `GooglePlusUrl`, `saloan_back_image`, `registration_no`, `email`, `saloan_address`, `search_keyword`, `latitude`, `longitude`, `country`, `state`, `city`, `pincode`, `payment_mode`, `opening_time`, `closing_time`, `avg_cost`, `booking_option`, `last_update`, `status`) VALUES
(4, '49', '10,11,12,13,14,15', 'Flirty Scissors Spa & Salon', 'Flirty Scissors has been Bangalore\'s most known and trusted destination for cutting-edge styling, hair and skin care, and wellness services. Flirty Scissors is a destination of comfort, style and wellness. Ideally located in a blissful getaway of Jayanagar in Bangalore. Under Milly Kongwang, with over 10 years of experience, Flirty Scissors has grown rapidly in terms of range of services as well as infrastructure since its inception. Our professionally trained therapists and beauticians will pamper you with traditional therapies that transform your ', '7778889991', '2010', 'flierty salon', 'logo_1544518080.png', 'bkImg_1544518080.png', 'http://flirtyscissors.com', '', '', '', '', '', '7313834', 'flirty@gmail.com', '#6 / 253, 46th Cross, Jayanagar 8th Block,\r\nNear Sangam Circle, Bangalore - 560011. ', 'Jayanagar', '12.9250074', '77.5938028', '1', '8', '9', '560011', '1,3,4,5', '10:45:00', '22:30:00', 400, '', '2018-12-12 07:05:21', 1),
(3, '49', '10,11', 'Celebrate Life Unisex Salon', 'Since from 1990, Running the salon with a well and good feedbacks, we provide best professional hair therapists, and having 40 branches in the Bangalore city.    ', '8882228881', '1990', 'Naveen', 'logo_1544514798.png', 'bkImg_1544514798.jpg', 'http://naven.com', '', '', '', '', '', '5463435', 'natural@gmail.com', '#77,anatha plaza, mysore road,banshankari', 'Banashankari', '12.9255', '77.5468', '1', '8', '9', '560012', '1,3,4', '09:45:00', '07:30:00', 250, '', '2018-12-11 20:23:18', 1),
(5, '49', '10,11,12,13,14,15', 'Deep Breath Unisex Salon And Spa', 'A beauty destination, Deep Breath Unisex Salon And Spa in Banashankari 3rd Stage, Bangalore has been pampering its clients since 2010. Serving those living and working in and around the area, this beauty destination is one of the preferred places to pamper yourself from head to toe. This establishment understands the needs of today\'s chic and savvy individuals and strives towards offering a diverse set of expert beauty, styling and grooming services. Aiming to go the extra mile for its clients, it not only helps you look your very best, but also hel', '7760673952', '2010', '', 'logo_1561532473.jpg', 'bkImg_1561532473.jpg', '', '', '', '', '', '', '123576', 'haris13396@gmail.com', 'Outer Ring Rd, Phase 3, Banashankari, Bengaluru, Karnataka 560085', 'Banashankari 3rd Stage', '12.9345', '77.5435', '1', '8', '9', '560085', '1,3', '00:00:07', '00:00:09', 450, '', '2019-06-26 07:49:41', 1),
(9, '49', '10,11,12,13,14,15', 'Enrich Salon - Indiranagar', 'A destination for wellness and rejuvenation, Enrich Salon And Academy in Indiranagar is a recognised beauty spa. This luxury health spa was set up with a view to offer the citizens with soothing and revitalizing experience from the everyday stresses of life. This establishment is built on the foundation that the key to well-being is relieving stress from live. With this very thought in mind, this venture believes in holistic treatments for detoxing, de-stressing, stimulate and beautify the body and mind. Its signature therapies and practices include', '7760673987', '2008', '', 'logo_1561536520.jpg', 'bkImg_1561536520.jpg', '', '', '', '', '', '', '554488', 'harish13396r@gmail.com', 'MSK Plaza, Ground Floor, Next To CCD, 100 Feet Road, 3rd Main Rd, Defence Colony, Indiranagar, Bengaluru, Karnataka 560038', 'Indira Nagar', '12.9784', '77.6408', '1', '8', '9', '560038', '1,3', '00:00:10', '00:00:09', 500, '', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `saloan_categorylist`
--

CREATE TABLE `saloan_categorylist` (
  `cate_id` int(11) NOT NULL,
  `cate_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  `add_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `descp` varchar(555) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=active,2=deactive',
  `res_listid` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saloan_categorylist`
--

INSERT INTO `saloan_categorylist` (`cate_id`, `cate_name`, `category_image`, `add_datetime`, `descp`, `status`, `res_listid`) VALUES
(15, 'Tanning', 'cate_logo_1545210645.jpg', '2019-06-26 08:04:54', 'tanning\r\n', 1, '4,6,7,9'),
(14, 'facials and skin care', 'cate_logo_1545210533.jpg', '2019-06-26 08:04:54', 'face', 1, '4,5,7,8,9'),
(10, 'Hair-Cutting', 'cate_logo_1545208971.jpg', '2019-07-03 13:00:42', 'Hair cutting\r\n', 1, '3,4,5,7,9,10'),
(11, 'Colouring and Styling', 'cate_logo_1545209797.jpg', '2019-06-26 08:04:53', 'Coloring', 1, '3,4,5,7,8,9'),
(12, 'waxing & forms of hair removal', 'cate_logo_1545209940.jpg', '2019-06-26 08:04:53', 'hair removing\r\n', 1, '4,5,8,9'),
(13, 'Nail Treatments', 'cate_logo_1545210096.png', '2019-06-26 08:04:54', 'nail', 1, '4,5,6,8,9');

-- --------------------------------------------------------

--
-- Table structure for table `saloan_gallery_list`
--

CREATE TABLE `saloan_gallery_list` (
  `gallery_id` int(11) NOT NULL,
  `salon_id` varchar(55) NOT NULL,
  `images` varchar(1001) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saloan_gallery_list`
--

INSERT INTO `saloan_gallery_list` (`gallery_id`, `salon_id`, `images`, `last_update`, `status`) VALUES
(1, '1', '1542173865_image0_1.jpg', '2018-11-14 18:07:00', 1),
(2, '1', '1542173865_image1_1.jpg', '2018-11-14 18:07:00', 1),
(3, '1', '1542173865_image2_1.jpg', '2018-11-14 18:07:00', 1),
(4, '2', '1542174797_image0_2.jpg', '2018-11-14 18:23:00', 1),
(5, '2', '1542174797_image1_2.jpg', '2018-11-14 18:23:00', 1),
(6, '2', '1542174797_image2_2.jpg', '2018-11-14 18:23:00', 1),
(7, '3', '1544514798_image0_3.jpg', '2018-12-11 20:23:00', 1),
(8, '3', '1544514798_image1_3.jpg', '2018-12-11 20:23:00', 1),
(9, '3', '1544514798_image2_3.jpg', '2018-12-11 20:23:00', 1),
(10, '3', '1544514798_image3_3.jpg', '2018-12-11 20:23:00', 1),
(11, '3', '1544514798_image4_3.jpg', '2018-12-11 20:23:00', 1),
(12, '3', '1544514798_image5_3.jpg', '2018-12-11 20:23:00', 1),
(13, '3', '1544514798_image6_3.jpg', '2018-12-11 20:23:00', 1),
(14, '3', '1544514798_image7_3.jpg', '2018-12-11 20:23:00', 1),
(15, '4', '1544518080_image0_4.jpg', '2018-12-11 21:18:00', 1),
(16, '4', '1544518080_image1_4.jpg', '2018-12-11 21:18:00', 1),
(17, '4', '1544518080_image2_4.jpg', '2018-12-11 21:18:00', 1),
(18, '4', '1544518080_image3_4.jpg', '2018-12-11 21:18:00', 1),
(19, '4', '1544518080_image4_4.jpg', '2018-12-11 21:18:00', 1),
(20, '4', '1544518080_image5_4.jpg', '2018-12-11 21:18:00', 1),
(21, '7', '1561530818_image0_7.jpg', '2019-06-26 19:03:00', 1),
(22, '7', '1561530818_image1_7.jpg', '2019-06-26 19:03:00', 1),
(23, '7', '1561530818_image2_7.jpg', '2019-06-26 19:03:00', 1),
(24, '8', '1561532197_image0_8.jpg', '2019-06-26 19:26:00', 1),
(25, '8', '1561532197_image1_8.jpg', '2019-06-26 19:26:00', 1),
(26, '8', '1561532197_image2_8.jpg', '2019-06-26 19:26:00', 1),
(27, '8', '1561532197_image3_8.jpg', '2019-06-26 19:26:00', 1),
(28, '8', '1561532197_image4_8.jpg', '2019-06-26 19:26:00', 1),
(42, '9', '1561536520_image4_9.jpg', '2019-06-26 20:38:00', 1),
(41, '9', '1561536520_image3_9.jpg', '2019-06-26 20:38:00', 1),
(40, '9', '1561536520_image2_9.jpg', '2019-06-26 20:38:00', 1),
(39, '9', '1561536520_image1_9.jpg', '2019-06-26 20:38:00', 1),
(33, '5', '1561535124_image0_5.jpg', '2019-06-26 20:15:00', 1),
(34, '5', '1561535124_image1_5.jpg', '2019-06-26 20:15:00', 1),
(35, '5', '1561535124_image2_5.jpg', '2019-06-26 20:15:00', 1),
(36, '5', '1561535124_image3_5.jpg', '2019-06-26 20:15:00', 1),
(38, '9', '1561536520_image0_9.jpg', '2019-06-26 20:38:00', 1),
(43, '9', '1561536520_image5_9.jpg', '2019-06-26 20:38:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `saloan_items_list`
--

CREATE TABLE `saloan_items_list` (
  `item_id` int(11) NOT NULL,
  `salon_id` varchar(55) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_desc` varchar(255) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `menu_type` int(11) NOT NULL COMMENT '1=list,2=images',
  `item_cost` int(11) NOT NULL,
  `discount_percentage` float NOT NULL,
  `viewtxt` varchar(5555) NOT NULL,
  `viewlink` varchar(255) NOT NULL,
  `item_type` varchar(255) NOT NULL,
  `item_size` varchar(255) NOT NULL,
  `item_tax` varchar(255) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saloan_items_list`
--

INSERT INTO `saloan_items_list` (`item_id`, `salon_id`, `menu_id`, `item_name`, `item_desc`, `item_image`, `menu_type`, `item_cost`, `discount_percentage`, `viewtxt`, `viewlink`, `item_type`, `item_size`, `item_tax`, `last_update`, `status`) VALUES
(1, '1', 1, 'below 3 year boy ', '', '', 0, 100, 0, '', '', '', '', 'on', '2018-11-14 18:02:00', 1),
(2, '1', 1, 'Above 4 hircut for men', '', '', 0, 150, 0, '', '', '', '', 'on', '0000-00-00 00:00:00', 1),
(3, '2', 2, 'below 3 year boy ', '', '', 0, 100, 0, '', '', '', '', 'on', '2018-11-14 18:21:00', 1),
(4, '2', 2, 'Above 4 hircut for men', '', '', 0, 150, 0, '', '', '', '', 'on', '2018-11-14 18:22:00', 1),
(5, '4', 7, 'hair cut', 'Only hair cut', '', 0, 120, 5, '', '', '', '', 'on', '2018-12-19 22:43:00', 1),
(6, '4', 8, 'waxing', 'waxing', '', 0, 250, 10, '', '', '', '', 'on', '2018-12-19 22:43:00', 1),
(7, '4', 9, 'chocolate facial', 'facial', '', 0, 550, 20, '', '', '', '', 'on', '2018-12-19 22:44:00', 1),
(8, '3', 4, 'My Test', 'Devloper', '', 0, 2500, 10, '<p>Welcome to New Saloon</p>\r\n\r\n<p>Cost: 2500</p>\r\n\r\n<p>Discount: 10%</p>\r\n\r\n<p>Pay Amount: 2250 Rs Only : Accept New User Only : Or First Time Use</p>\r\n', 'deal1548095400_1548157743.html', '', '', 'on', '0000-00-00 00:00:00', 1),
(9, '3', 4, 'PHP Developer ', 'Testing HTML Design', '', 0, 47500, 10, '<p><strong>Free Test</strong>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Demo1</li>\r\n	<li>New User</li>\r\n	<li>Timing</li>\r\n	<li>Offers</li>\r\n</ol>\r\n', 'deal1548095400_1548160912.html', '', '', 'on', '2019-01-23 01:11:00', 1),
(10, '3', 4, 'new testing', 'testing', '', 0, 250, 10, '<p><strong>Test code : Bold</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>jhklhjkhj ghjgh ghjgh ghj ghj&nbsp;</p>\r\n\r\n<p>num,ber <strong><em>100</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'deal1548095400_1548161091.html', '', '', 'on', '2019-01-23 01:14:00', 1),
(11, '3', 5, 'ghgf', 'fghgf', '', 0, 56, 5, '<p><strong>rtyrtyryryrtyrtyrt&nbsp;yuhrtyu rtyurtyurt urty</strong></p>\r\n', 'deal1548095400_1548161143.html', '', '', 'on', '2019-01-23 01:15:00', 1),
(12, '3', 4, 'ghjghj', 'jgj', '', 0, 55, 55, '<p>test</p>\r\n', 'deal1548095400_1548161187.html', '', '', 'on', '2019-01-23 01:16:00', 1),
(14, '3', 5, 'Check All', 'check all style', '', 0, 100, 10, '<p><strong>Test</strong></p>\r\n\r\n<p>Check all the style: Bold and normal font new</p>\r\n\r\n<ol>\r\n	<li>test1</li>\r\n	<li>test2</li>\r\n	<li>test 3</li>\r\n</ol>\r\n', 'deal1548181800_1548230282.html', '', '', 'on', '2019-01-23 20:28:00', 1),
(16, '3', 4, 'hgjghj', 'hgjghj', '', 0, 456, 4, '<p><strong>test </strong><strong>nfghfghfg</strong></p>\r\n\r\n<p>ghjhgjg</p>\r\n\r\n<p><strong>hkhjkghj</strong></p>\r\n\r\n<ol>\r\n	<li>ghjhgjfg fthgd dfgh dfgh fdghfgh</li>\r\n	<li>ghjhgjfg fthgd dfgh dfgh fdghfgh</li>\r\n</ol>\r\n', 'deal1548095400_1548161477.html', '', '', 'on', '2019-01-23 01:21:00', 1),
(17, '5', 10, 'Normal Hair Cutting', 'Check', '', 0, 300, 8, '', 'deal1561487400_1561540202.html', '', '', 'on', '2019-06-26 21:40:00', 1),
(18, '5', 11, 'Hair cut and coloring', 'Basic', '', 0, 450, 7, '', 'deal1561487400_1561540258.html', '', '', 'on', '2019-06-26 21:40:00', 1),
(19, '9', 12, 'Normal Hair Cutting', 'Basic', '', 0, 500, 10, '', 'deal1561487400_1561540527.html', '', '', 'on', '2019-06-26 21:45:00', 1),
(20, '9', 13, 'Hair cut and coloring', 'Basic', '', 0, 600, 10, '', 'deal1561487400_1561540550.html', '', '', 'on', '2019-06-26 21:45:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `saloan_menuimages_list`
--

CREATE TABLE `saloan_menuimages_list` (
  `gallery_id` int(11) NOT NULL,
  `salon_id` varchar(55) NOT NULL,
  `images` varchar(1001) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `saloan_menu_list`
--

CREATE TABLE `saloan_menu_list` (
  `menu_id` int(11) NOT NULL,
  `salon_id` varchar(55) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `menu_desc` varchar(255) NOT NULL,
  `menu_image` varchar(255) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saloan_menu_list`
--

INSERT INTO `saloan_menu_list` (`menu_id`, `salon_id`, `menu_name`, `menu_desc`, `menu_image`, `last_update`, `status`) VALUES
(1, '1', 'Hircut', 'Hircut', '18392_download.jpg', '2018-11-14 18:01:00', 1),
(2, '2', 'Hircut', 'Hircut', '48291_download.jpg', '2018-11-14 18:21:00', 1),
(3, '1', 'Menu 2', 'sdfsd sdfsdfsdf', '51266_saloon.png', '2018-11-26 19:56:00', 1),
(4, '3', 'Normal Hair Cutting', 'Only Hair Cutting', '30382_haircut1.jpg', '2018-12-19 22:25:00', 1),
(5, '3', 'Silver Hair Cutting', 'hair cutting,shampoo wash', '49984_shampoo.jpg', '2018-12-19 22:26:14', 1),
(6, '3', 'Gold Hair Cutting', 'hair cutting,head massage,foam hair wash,hair styling.', '67481_styling.jpg', '2018-12-19 22:26:49', 1),
(7, '4', 'Hair Cutting unisex', 'hair cutting, shapoo wash,massage,styling', '70699_unihaircut.jpg', '2018-12-19 22:33:13', 1),
(8, '4', 'Waxing', 'waxing', '35691_waxing.jpg', '2018-12-19 22:33:31', 1),
(9, '4', 'Facial', 'massage', '65839_facial-web.png', '2018-12-19 22:34:39', 1),
(10, '5', 'Men', 'Normal Hair cutting', '99182_images (1).jpg', '2019-06-26 21:39:00', 1),
(11, '5', 'Women', 'Basic', '17225_images.jpg', '2019-06-26 21:39:00', 1),
(12, '9', 'Men', 'Normal Hair cutting', '70137_images (1).jpg', '2019-06-26 21:44:00', 1),
(13, '9', 'Women', 'Basic', '58714_images.jpg', '2019-06-26 21:45:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `salon_booking_list`
--

CREATE TABLE `salon_booking_list` (
  `salon_book_id` int(11) NOT NULL,
  `bookno` varchar(255) NOT NULL,
  `salon_id` varchar(255) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `book_datetime` varchar(50) NOT NULL,
  `book_date` date NOT NULL,
  `message` varchar(999) NOT NULL,
  `status` int(11) NOT NULL,
  `booking_status` int(1) NOT NULL COMMENT '0=processing,1=confirm,2=reschdule,3=cancelled',
  `re_booking_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salon_booking_schedule`
--

CREATE TABLE `salon_booking_schedule` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `reschedule_date` datetime NOT NULL,
  `description` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salon_feedback`
--

CREATE TABLE `salon_feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vender_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `rating` varchar(200) NOT NULL,
  `add_time` varchar(40) NOT NULL,
  `username` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `modify_date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salon_feedback`
--

INSERT INTO `salon_feedback` (`id`, `user_id`, `vender_id`, `message`, `mobile`, `rating`, `add_time`, `username`, `status`, `modify_date`) VALUES
(1, 3, 3, 'good one', '9876543213', '2.5', '1542701664', 'newuser', 2, '1556217000'),
(2, 2, 4, 'good one', '9876543213', '3.5', '1542701679', 'newuser', 2, '1556217000'),
(3, 13, 4, 'TESTINGGGGGGGGGGGG', '7026912306', '3', '1556274390', 'testingweb@gmail.com', 1, ''),
(4, 13, 4, 'ddddddddddddddddddd', '7026912306', '3', '1556278289', 'testingweb@gmail.com', 2, '1561919400'),
(5, 14, 3, 'test salon', '9961646452', '4.0', '1556282792', 'developer', 2, '1556217000'),
(6, 14, 3, 'test2salon', '9961646452', '5.0', '1556282937', 'developer', 2, '1556217000'),
(7, 14, 3, 'iii', '9961646452', '4.0', '1556283335', 'developer', 2, '1556217000'),
(8, 18, 4, 'TEsting', '8310896028', '4', '1559201063', 'Harish', 1, '1561919400'),
(9, 19, 3, 'Issue issue neenu Harvey ', '9845600969', '4', '1559643706', 'Madhusudhan', 2, '1561919400'),
(10, 19, 4, 'They shaw ', '9845600969', '3', '1559643773', 'Madhusudhan', 1, ''),
(11, 18, 3, 'Ok', '8310896028', '2', '1559804219', 'Harish', 1, '1561919400'),
(12, 18, 3, 'GOOD', '8310896028', '4', '1559817070', 'Harish', 1, ''),
(13, 18, 3, 'Good', '8310896028', '3', '1559890781', 'Harish', 1, ''),
(14, 19, 3, 'Dingo Fiji ', '9845600969', '1', '1559924563', 'Madhusudhan', 1, ''),
(15, 18, 4, 'ok', '8310896028', '3', '1560250411', 'Harish', 1, ''),
(16, 18, 4, 'Okayy...', '8310896028', '2', '1560417119', 'Harish', 2, '1561919400'),
(17, 18, 4, 'hi', '8310896028', '3', '1560509722', 'Harish', 1, ''),
(18, 18, 4, 'Excellent!!!!!!\r\n', '8310896028', '5', '1561366726', 'Harish', 2, '1561919400'),
(19, 18, 9, 'ok ok', '8310896028', '2', '1561541683', 'Harish', 1, ''),
(20, 18, 5, 'fvd', '8310896028', '2', '1561541721', 'Harish', 1, ''),
(21, 18, 5, 'ok', '8310896028', '2', '1561545643', 'Harish', 1, ''),
(22, 18, 9, 'ok', '8310896028', '3', '1561546006', 'Harish', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `salon_report_db`
--

CREATE TABLE `salon_report_db` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vender_id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `mobile_no` int(11) NOT NULL,
  `reportmsg` varchar(250) NOT NULL,
  `report_type` varchar(255) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salon_report_db`
--

INSERT INTO `salon_report_db` (`id`, `user_id`, `vender_id`, `user_name`, `mobile_no`, `reportmsg`, `report_type`, `date_time`, `status`) VALUES
(1, 3, 3, 'dharma', 2147483647, 'Test', 'Test', '0000-00-00 00:00:00', 1),
(2, 3, 4, 'dharma', 2147483647, '111111111111111111', 'Wrong Phone Number', '2019-04-10 12:41:17', 1),
(3, 2, 3, 'newuser', 2147483647, 'dev testing', 'others', '0000-00-00 00:00:00', 2),
(4, 2, 3, 'newuser', 2147483647, 'dev testing', 'others', '0000-00-00 00:00:00', 2),
(5, 2, 3, 'Testing user1', 2147483647, 'dafdsfdsfds', 'Others', '2019-04-25 12:15:15', 2),
(6, 2, 3, 'Testing user1', 2147483647, 'rgfggg', 'Others', '2019-04-25 12:22:56', 2),
(7, 19, 3, 'Madhusudhan', 2147483647, '', 'Wrong Phone Number', '2019-06-07 09:53:09', 0),
(8, 18, 4, 'Harish', 2147483647, 'jjj', 'Others', '2019-06-14 04:24:28', 0),
(9, 18, 4, 'Harish', 2147483647, '', 'Menu is incorrect', '2019-06-24 02:27:45', 0),
(10, 18, 5, 'Harish', 2147483647, '', 'This Place has closed', '2019-06-26 04:15:31', 0),
(11, 18, 5, 'Harish', 2147483647, 'bfvc ', 'Others', '2019-06-26 04:15:36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `salon_timing`
--

CREATE TABLE `salon_timing` (
  `id` int(11) NOT NULL,
  `salon_id` varchar(60) NOT NULL,
  `monday_starting_time` varchar(255) NOT NULL,
  `monday_ending_time` varchar(60) NOT NULL,
  `tuesday_starting_time` varchar(60) NOT NULL,
  `tuesday_ending_time` varchar(60) NOT NULL,
  `wednesday_starting_time` varchar(60) NOT NULL,
  `wednesday_ending_time` varchar(60) NOT NULL,
  `thursday_starting_time` varchar(60) NOT NULL,
  `thursday_ending_time` varchar(60) NOT NULL,
  `friday_starting_time` varchar(60) NOT NULL,
  `friday_ending_time` varchar(60) NOT NULL,
  `saturday_starting_time` varchar(60) NOT NULL,
  `saturday_ending_time` varchar(60) NOT NULL,
  `sunday_starting_time` varchar(60) NOT NULL,
  `sunday_ending_time` varchar(60) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `add_date` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salon_timing`
--

INSERT INTO `salon_timing` (`id`, `salon_id`, `monday_starting_time`, `monday_ending_time`, `tuesday_starting_time`, `tuesday_ending_time`, `wednesday_starting_time`, `wednesday_ending_time`, `thursday_starting_time`, `thursday_ending_time`, `friday_starting_time`, `friday_ending_time`, `saturday_starting_time`, `saturday_ending_time`, `sunday_starting_time`, `sunday_ending_time`, `status`, `add_date`) VALUES
(1, '1', '07:30 AM', '10:30 PM', '07:30 AM', '10:30 PM', '07:30 AM', '10:30 PM', '07:30 AM', '10:30 PM', '07:30 AM', '10:30 PM', '07:30 AM', '10:30 PM', '', '', 1, '1542173896'),
(2, '2', '07:00 AM', '10:00 PM', '07:00 AM', '10:00 PM', '07:00 AM', '10:00 PM', '07:00 AM', '10:00 PM', '07:00 AM', '10:00 PM', '07:00 AM', '10:00 PM', '', '', 1, '1542174844'),
(3, '3', '09:30 AM', '07:30 PM', '09:30 AM', '07:30 PM', '09:30 AM', '07:30 PM', '09:30 AM', '07:30 PM', '09:30 AM', '07:30 PM', '09:30 AM', '07:30 PM', '09:30 AM', '07:30 PM', 1, '1544514834'),
(4, '4', '11:30 AM', '06:00 PM', '11:30 AM', '06:00 PM', '11:30 AM', '06:00 PM', '11:30 AM', '06:00 PM', '11:30 AM', '06:00 PM', '11:30 AM', '06:00 PM', '11:30 AM', '06:00 PM', 1, '1544518100'),
(5, '7', '07:00 AM', '09:00 PM', '07:00 AM', '09:00 PM', '07:00 AM', '09:00 PM', '07:00 AM', '09:00 PM', '07:00 AM', '09:00 PM', '07:00 AM', '09:00 PM', '07:00 AM', '09:00 PM', 1, '1561531090'),
(6, '8', '07:00 AM', '09:00 PM', '07:00 AM', '09:00 PM', '07:00 AM', '09:00 PM', '07:00 AM', '09:00 PM', '07:00 AM', '09:00 PM', '07:00 AM', '09:00 PM', '07:00 AM', '09:00 PM', 1, '1561532220'),
(7, '5', '07:00 AM', '09:00 PM', '07:00 AM', '09:00 PM', '07:00 AM', '09:00 PM', '07:00 AM', '09:00 PM', '07:00 AM', '09:00 PM', '07:00 AM', '09:00 PM', '07:00 AM', '09:00 PM', 1, '1561532653'),
(8, '9', '10:00 AM', '09:30 PM', '10:00 AM', '09:30 PM', '10:00 AM', '09:30 PM', '10:00 AM', '09:30 PM', '10:00 AM', '09:30 PM', '10:00 AM', '09:30 PM', '10:00 AM', '09:30 PM', 1, '1561536577');

-- --------------------------------------------------------

--
-- Table structure for table `search_location`
--

CREATE TABLE `search_location` (
  `id` int(11) NOT NULL,
  `location_keyword` varchar(255) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spa_booking_list`
--

CREATE TABLE `spa_booking_list` (
  `spa_book_id` int(11) NOT NULL,
  `bookno` varchar(255) NOT NULL,
  `spa_id` varchar(255) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `book_datetime` datetime NOT NULL,
  `book_date` date NOT NULL,
  `message` varchar(999) NOT NULL,
  `status` int(11) NOT NULL,
  `booking_status` int(1) NOT NULL COMMENT '0=processing,1=confirm,2=reschdule,3=cancelled',
  `re_booking_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spa_booking_list`
--

INSERT INTO `spa_booking_list` (`spa_book_id`, `bookno`, `spa_id`, `menu_id`, `uid`, `age`, `gender`, `book_datetime`, `book_date`, `message`, `status`, `booking_status`, `re_booking_date`) VALUES
(1, '', '1', 1, '6', '25', 'female', '0000-00-00 00:00:00', '2018-11-15', 'Booking for makeup', 0, 0, '0000-00-00 00:00:00'),
(2, '', '1', 1, '6', '25', 'female', '0000-00-00 00:00:00', '2018-11-15', 'Booking for makeup', 0, 0, '0000-00-00 00:00:00'),
(3, '', '1', 1, '6', '25', 'female', '0000-00-00 00:00:00', '2018-11-15', 'Booking for makeup', 0, 0, '0000-00-00 00:00:00'),
(4, '', '1', 1, '6', '25', 'female', '0000-00-00 00:00:00', '2018-11-15', 'Booking for makeup', 0, 0, '0000-00-00 00:00:00'),
(5, '', '1', 1, '6', '25', 'female', '0000-00-00 00:00:00', '2018-11-15', 'Booking for makeup', 0, 0, '0000-00-00 00:00:00'),
(6, '', '1', 1, '6', '25', 'female', '0000-00-00 00:00:00', '2018-11-15', 'Booking for makeup', 0, 0, '0000-00-00 00:00:00'),
(7, '', '11', 12, '6', '25', 'female', '0000-00-00 00:00:00', '2018-11-17', 'Booking for makeup', 0, 0, '0000-00-00 00:00:00'),
(8, '', '11', 12, '6', '25', 'female', '0000-00-00 00:00:00', '2018-11-17', 'Booking for makeup', 0, 0, '0000-00-00 00:00:00'),
(9, '', '2', 2, '6', '25', 'female', '0000-00-00 00:00:00', '2018-11-18', 'Booking for makeup', 0, 0, '0000-00-00 00:00:00'),
(10, '', '1', 1, '6', '25', 'female', '0000-00-00 00:00:00', '2018-11-18', 'Booking for makeup', 0, 0, '0000-00-00 00:00:00'),
(11, '', '1', 1, '6', '25', 'female', '0000-00-00 00:00:00', '2018-11-18', 'Booking for makeup', 0, 0, '0000-00-00 00:00:00'),
(12, '', '2', 2, '6', '25', 'female', '0000-00-00 00:00:00', '2018-11-19', 'Booking for makeup', 0, 0, '0000-00-00 00:00:00'),
(13, '', '2', 2, '6', '25', 'female', '0000-00-00 00:00:00', '2018-11-19', 'Booking for makeup', 0, 0, '0000-00-00 00:00:00'),
(14, '', '2', 2, '6', '25', 'female', '0000-00-00 00:00:00', '2018-11-28', 'Booking for makeup', 0, 0, '0000-00-00 00:00:00'),
(15, '', '1', 1, '6', '25', 'female', '0000-00-00 00:00:00', '2018-11-28', 'Booking for makeup', 0, 0, '0000-00-00 00:00:00'),
(16, '', '1', 1, '6', '25', 'female', '0000-00-00 00:00:00', '2018-11-28', 'Booking for makeup', 0, 0, '0000-00-00 00:00:00'),
(17, '', '1', 1, '6', '25', 'female', '0000-00-00 00:00:00', '2018-11-28', 'Booking for makeup', 0, 0, '0000-00-00 00:00:00'),
(18, '', '1', 1, '6', '25', 'female', '0000-00-00 00:00:00', '2018-11-28', 'Booking for makeup', 0, 0, '0000-00-00 00:00:00'),
(19, '', '1', 1, '6', '25', 'female', '0000-00-00 00:00:00', '2018-11-28', 'Booking for makeup', 0, 0, '0000-00-00 00:00:00'),
(20, '', '1', 1, '6', '25', 'female', '0000-00-00 00:00:00', '2018-11-28', 'Booking for makeup', 0, 0, '0000-00-00 00:00:00'),
(21, '', '2', 2, '6', '25', 'female', '0000-00-00 00:00:00', '2018-11-29', 'Booking for makeup', 0, 0, '0000-00-00 00:00:00'),
(22, '', '1', 1, '6', '25', 'female', '0000-00-00 00:00:00', '2018-12-06', 'Booking for makeup', 0, 0, '0000-00-00 00:00:00'),
(23, '', '1', 1, '6', '25', 'female', '0000-00-00 00:00:00', '2018-12-06', 'Booking for makeup', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `spa_booking_schedule`
--

CREATE TABLE `spa_booking_schedule` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `reschedule_date` datetime NOT NULL,
  `description` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spa_categorylist`
--

CREATE TABLE `spa_categorylist` (
  `cate_id` int(11) NOT NULL,
  `cate_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL,
  `add_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `descp` varchar(555) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=active,2=deactive',
  `res_listid` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spa_categorylist`
--

INSERT INTO `spa_categorylist` (`cate_id`, `cate_name`, `category_image`, `add_datetime`, `descp`, `status`, `res_listid`) VALUES
(9, 'Ayurvedic Spa', 'cate_logo_1544522682.jpg', '2019-06-26 09:23:56', 'ayurveda', 1, '6,7'),
(8, 'Relaxation and Pampering Spa', 'cate_logo_1544522649.jpg', '2019-06-26 09:23:56', 'relax\r\n', 1, '3,4,5,6,7'),
(7, 'Destination Spa', 'cate_logo_1544522606.jpg', '2019-06-26 09:23:56', 'separate spa\r\n', 1, '3,4,5,6,7'),
(6, 'Traditional Spa', 'cate_logo_1544522559.jpg', '2019-06-26 09:23:56', 'Traditional treatment', 1, '3,5,6,7'),
(10, 'Medical Spa', 'cate_logo_1544522719.jpg', '2019-06-26 09:23:56', 'medical', 1, '7'),
(11, 'Thermal Spa', 'cate_logo_1544522761.jpg', '2019-06-26 09:23:56', 'water\r\n', 1, '7');

-- --------------------------------------------------------

--
-- Table structure for table `spa_feedback`
--

CREATE TABLE `spa_feedback` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vender_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `rating` varchar(200) NOT NULL,
  `add_time` varchar(40) NOT NULL,
  `username` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `modify_date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spa_feedback`
--

INSERT INTO `spa_feedback` (`id`, `user_id`, `vender_id`, `message`, `mobile`, `rating`, `add_time`, `username`, `status`, `modify_date`) VALUES
(5, 2, 3, 'happy', '8050201311', '4.0', '1544527981', 'Testing user1', 2, '1554748200'),
(6, 2, 3, 'Bhv', '8050201000', '1.0', '1556089160', 'Testing user1', 0, ''),
(7, 2, 3, 'B', '8050201000', '5.0', '1556108849', 'Testing user1', 0, ''),
(8, 2, 4, 'N\n', '8050201000', '5.0', '1556108937', 'Testing user1', 0, ''),
(9, 2, 3, 'Gh', '8050201000', '5.0', '1556109232', 'Testing user1', 0, ''),
(10, 2, 3, 'testing', '7026912306', '4.0', '1556189526', 'Testing user1', 0, ''),
(11, 2, 4, 'testing', '7026912306', '4.0', '1556189801', 'Testing user1', 0, ''),
(12, 2, 4, 'testing', '8050201000', '4.0', '1556273576', 'Testing user1', 0, ''),
(13, 2, 3, 'fsss', '8050201000', '3.0', '1556276425', 'Testing user1', 0, ''),
(14, 2, 3, 'sssd', '8050201000', '3.0', '1556276453', 'Testing user1', 0, ''),
(15, 2, 4, 'ffgg', '8050201000', '2.0', '1556276507', 'Testing user1', 0, ''),
(16, 2, 4, 'eeewww', '8050201000', '2.0', '1556276743', 'Testing user1', 0, ''),
(17, 2, 4, 'testing mobile', '8050201000', '4.0', '1556276871', 'Testing user1', 0, ''),
(18, 2, 4, 'rrrr', '8050201000', '2.0', '1556277046', 'Testing user1', 0, ''),
(19, 2, 4, 'rrrr', '8050201000', '2.0', '1556277046', 'Testing user1', 0, ''),
(20, 2, 4, 'rrrr', '8050201000', '2.0', '1556277046', 'Testing user1', 0, ''),
(21, 2, 4, 'rrrr', '8050201000', '2.0', '1556277047', 'Testing user1', 0, ''),
(22, 2, 4, '5tttt\n', '8050201000', '4.0', '1556277329', 'Testing user1', 0, ''),
(23, 2, 4, 'eeerrrr', '8050201000', '4.0', '1556277492', 'Testing user1', 0, ''),
(24, 2, 4, 'yyy', '8050201000', '4.0', '1556277520', 'Testing user1', 0, ''),
(25, 2, 4, 'ee', '8050201000', '3.0', '1556278184', 'Testing user1', 0, ''),
(26, 2, 4, 'iiii', '8050201000', '3.0', '1556278214', 'Testing user1', 0, ''),
(27, 2, 4, 'r', '8050201000', '3.0', '1556278617', 'Testing user1', 0, ''),
(28, 2, 4, 'r', '8050201000', '3.0', '1556278763', 'Testing user1', 0, ''),
(29, 2, 4, 'tttttt', '8050201000', '3.0', '1556280539', 'Testing user1', 0, ''),
(30, 2, 4, 'testing Feedback', '8050201000', '5.0', '1556280698', 'Testing user1', 0, ''),
(31, 14, 4, 'test', '9961646452', '4.0', '1556280862', 'developer', 0, ''),
(32, 14, 3, '7testing', '9961646452', '4.0', '1556281406', 'developer', 0, ''),
(33, 14, 3, '8iiii', '9961646452', '4.0', '1556281601', 'developer', 0, ''),
(34, 14, 3, 'uuuu', '9961646452', '4.0', '1556281683', 'developer', 0, ''),
(35, 14, 3, 'ttt', '9961646452', '3.0', '1556281726', 'developer', 0, ''),
(36, 14, 3, 'ttt', '9961646452', '3.0', '1556281727', 'developer', 0, ''),
(37, 14, 3, 'testing Feedback ooo', '9961646452', '4.0', '1556281866', 'developer', 0, ''),
(38, 18, 3, 'Nice!', '8310896028', '5', '1559201238', 'Harish', 1, ''),
(39, 18, 3, 'OK OK', '8310896028', '3.0', '1559209048', 'Harish', 1, ''),
(40, 18, 7, 'Ok.........................................................................................................', '8310896028', '1', '1562845672', 'Harish', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `spa_gallery_list`
--

CREATE TABLE `spa_gallery_list` (
  `gallery_id` int(11) NOT NULL,
  `spa_id` varchar(55) NOT NULL,
  `images` varchar(1001) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spa_gallery_list`
--

INSERT INTO `spa_gallery_list` (`gallery_id`, `spa_id`, `images`, `last_update`, `status`) VALUES
(1, '1', '1542177982_image0_1.jpg', '2018-11-14 19:16:00', 1),
(2, '1', '1542177982_image1_1.jpg', '2018-11-14 19:16:00', 1),
(3, '1', '1542177982_image2_1.jpg', '2018-11-14 19:16:00', 1),
(4, '2', '1542456466_image0_2.jpg', '2018-11-18 00:37:00', 1),
(5, '2', '1542456468_image1_2.jpg', '2018-11-18 00:37:00', 1),
(6, '2', '1542456468_image2_2.jpg', '2018-11-18 00:37:00', 1),
(7, '2', '1542456468_image3_2.jpg', '2018-11-18 00:37:00', 1),
(8, '2', '1542456468_image4_2.jpg', '2018-11-18 00:37:00', 1),
(9, '3', '1544524651_image0_3.jpg', '2018-12-11 23:07:00', 1),
(10, '3', '1544524651_image1_3.jpg', '2018-12-11 23:07:00', 1),
(11, '3', '1544524651_image2_3.jpg', '2018-12-11 23:07:00', 1),
(12, '3', '1544524651_image3_3.jpg', '2018-12-11 23:07:00', 1),
(13, '3', '1544524651_image4_3.jpg', '2018-12-11 23:07:00', 1),
(14, '3', '1544524651_image5_3.jpg', '2018-12-11 23:07:00', 1),
(15, '3', '1544524651_image6_3.jpg', '2018-12-11 23:07:00', 1),
(16, '3', '1544524651_image7_3.jpg', '2018-12-11 23:07:00', 1),
(17, '3', '1544524651_image8_3.jpg', '2018-12-11 23:07:00', 1),
(18, '3', '1544524651_image9_3.jpg', '2018-12-11 23:07:00', 1),
(19, '3', '1544524651_image10_3.jpg', '2018-12-11 23:07:00', 1),
(20, '3', '1544524651_image11_3.jpg', '2018-12-11 23:07:00', 1),
(21, '4', '1561532945_image0_4.jpg', '2019-06-26 19:39:00', 1),
(22, '4', '1561532945_image1_4.jpg', '2019-06-26 19:39:00', 1),
(23, '4', '1561532945_image2_4.jpg', '2019-06-26 19:39:00', 1),
(24, '4', '1561532945_image3_4.jpg', '2019-06-26 19:39:00', 1),
(25, '4', '1561532945_image4_4.jpg', '2019-06-26 19:39:00', 1),
(26, '4', '1561533196_image0_4.jpg', '2019-06-26 19:43:00', 1),
(27, '4', '1561533196_image1_4.jpg', '2019-06-26 19:43:00', 1),
(28, '4', '1561533196_image2_4.jpg', '2019-06-26 19:43:00', 1),
(29, '4', '1561533196_image3_4.jpg', '2019-06-26 19:43:00', 1),
(30, '4', '1561533196_image4_4.jpg', '2019-06-26 19:43:00', 1),
(31, '5', '1561533699_image0_5.jpg', '2019-06-26 19:51:00', 1),
(32, '5', '1561533699_image1_5.jpg', '2019-06-26 19:51:00', 1),
(33, '5', '1561533699_image2_5.jpg', '2019-06-26 19:51:00', 1),
(34, '5', '1561533699_image3_5.jpg', '2019-06-26 19:51:00', 1),
(35, '5', '1561533699_image4_5.jpg', '2019-06-26 19:51:00', 1),
(36, '6', '1561534558_image0_6.jpg', '2019-06-26 20:05:00', 1),
(37, '6', '1561534558_image1_6.jpg', '2019-06-26 20:05:00', 1),
(38, '6', '1561534558_image2_6.jpg', '2019-06-26 20:05:00', 1),
(39, '6', '1561534558_image3_6.jpg', '2019-06-26 20:05:00', 1),
(40, '6', '1561534558_image4_6.jpg', '2019-06-26 20:05:00', 1),
(41, '5', '1561537130_image0_5.jpg', '2019-06-26 20:48:00', 1),
(42, '5', '1561537130_image1_5.jpg', '2019-06-26 20:48:00', 1),
(43, '5', '1561537130_image2_5.jpg', '2019-06-26 20:48:00', 1),
(44, '5', '1561537130_image3_5.jpg', '2019-06-26 20:48:00', 1),
(45, '5', '1561537130_image4_5.jpg', '2019-06-26 20:48:00', 1),
(46, '7', '1561541318_image0_7.jpg', '2019-06-26 21:58:00', 1),
(47, '7', '1561541318_image1_7.jpg', '2019-06-26 21:58:00', 1),
(48, '7', '1561541318_image2_7.jpg', '2019-06-26 21:58:00', 1),
(49, '7', '1561541318_image3_7.jpg', '2019-06-26 21:58:00', 1),
(50, '7', '1561541318_image4_7.jpg', '2019-06-26 21:58:00', 1),
(51, '7', '1561541318_image5_7.jpg', '2019-06-26 21:58:00', 1),
(52, '7', '1561541318_image6_7.jpg', '2019-06-26 21:58:00', 1),
(53, '7', '1561541841_image0_7.jpg', '2019-06-26 22:07:00', 1),
(54, '7', '1561541841_image1_7.jpg', '2019-06-26 22:07:00', 1),
(55, '7', '1561541841_image2_7.jpg', '2019-06-26 22:07:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `spa_items_list`
--

CREATE TABLE `spa_items_list` (
  `item_id` int(11) NOT NULL,
  `spa_id` varchar(55) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_desc` varchar(255) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `menu_type` int(11) NOT NULL COMMENT '1=list,2=images',
  `item_cost` int(11) NOT NULL,
  `discount_percentage` varchar(255) NOT NULL,
  `viewtxt` varchar(5555) NOT NULL,
  `viewlink` varchar(255) NOT NULL,
  `item_type` varchar(255) NOT NULL,
  `item_size` varchar(255) NOT NULL,
  `item_tax` varchar(255) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spa_items_list`
--

INSERT INTO `spa_items_list` (`item_id`, `spa_id`, `menu_id`, `item_name`, `item_desc`, `item_image`, `menu_type`, `item_cost`, `discount_percentage`, `viewtxt`, `viewlink`, `item_type`, `item_size`, `item_tax`, `last_update`, `status`) VALUES
(1, '1', 1, 'Normal', 'Basic', '', 0, 1000, '10', '', '', '', '', 'on', '0000-00-00 00:00:00', 1),
(2, '2', 2, 'Testing Style', 'Testing Data', '', 0, 450, '12', '', '', '', '', 'on', '2018-11-18 00:36:00', 1),
(3, '1', 1, 'testing item', 'Testing data', '', 0, 150, '10', '', '', '', '', 'on', '0000-00-00 00:00:00', 1),
(4, '3', 4, 'Swedish Massage', ' Swedish Massage is the most common and popular massage therapy mainly offered for pain relief', '', 0, 1200, '10', '<p>Swedish Massage is the most common and popular massage therapy mainly offered for pain relief</p>\r\n', 'deal1548181800_1548235122.html', '', '', 'on', '2019-01-23 21:48:00', 1),
(5, '3', 4, 'Aromalhesapy Massage', 'Aromatherapy Massage works on the principles of touch and smell.', '', 0, 1500, '10', '', '', '', '', 'on', '2018-12-11 22:57:00', 1),
(6, '3', 4, 'Thai Massage', ' Traditional Thai Massage is dry therapy performed without using any oils or creams.', '', 0, 1000, '10', '', '', '', '', 'on', '2018-12-11 22:58:00', 1),
(7, '3', 5, 'Lightening Facial', 'A perfect Facial Massage for dark skin! Lightening Facial is performed using cream containing mulberry and saffron which are highly regarded for their skin lightening properties. ', '', 0, 1200, '10', '', '', '', '', 'on', '0000-00-00 00:00:00', 1),
(8, '3', 5, 'Healing Facial', 'Best facial for oily skin that has frequent acne breakouts. Healing facial uses lavender oil which is known for its antiseptic properties.', '', 0, 1800, '10', '', '', '', '', 'on', '2018-12-11 23:00:00', 1),
(9, '3', 6, 'Palmarosa & ylang ylang', 'This body polish treatment uses Dead Sea salt soaked in Palmarosa and Ylang-Ylang essential oils to exfoliate the skin', '', 0, 1600, '10', '<p><strong>khgjdfgjsfgh&nbsp;</strong></p>\r\n\r\n<p>yulkfhgkjghhgfghg dg hg hgdh hsd ddds dghdh g</p>\r\n', 'deal1548181800_1548235936.html', '', '', 'on', '2019-01-23 22:02:00', 1),
(11, '3', 5, 'demo', 'tesetsetser', '', 0, 3444, '3', '<p><strong>Trova Developer Testing new</strong></p>\r\n\r\n<p><strong>lkghjghjghfdgfd sarfgasfd sdg sadff s</strong></p>\r\n', 'deal1548181800_1548236971.html', '', '', 'on', '2019-01-23 22:19:00', 1),
(12, '3', 4, 'tesst', 'stsdt', '', 0, 45345, '3', '<p>sfsdfsd dasfsdsdfs</p>\r\n', 'deal1548181800_1548237050.html', '', '', 'on', '2019-01-23 22:20:00', 1),
(13, '3', 4, 'my', 'my', '', 0, 1000, '10', '<p>Welcome to Trova D</p>\r\n\r\n<p>New deal for male only : New user</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'deal1548181800_1548236899.html', '', '', 'on', '2019-01-23 22:18:00', 1),
(14, '3', 4, 'sdfsd', 'dsf', '', 0, 0, 'sdfsd', '<p>dsfsdfd sdf new</p>\r\n\r\n<p>sdf dsffdgsdf dsfg dfs g</p>\r\n\r\n<p>sdfsd</p>\r\n\r\n<p>fsdfsddfg fdgfd</p>\r\n\r\n<p>fsd fsdf</p>\r\n', 'deal1548181800_1548236946.html', '', '', 'on', '2019-01-23 22:19:00', 1),
(15, '3', 4, 'sdds', 'sdfsd', '', 0, 435345, '43', '<p>Welcome To</p>\r\n\r\n<p>New design n n</p>\r\n\r\n<p>DGFDSFDSA sdfgdhg fdg sdfgfdgfdgfgf</p>\r\n', 'deal1548181800_1548236931.html', '', '', 'on', '2019-01-23 22:18:00', 1),
(16, '7', 7, 'Normal Hair Cutting', 'Check', '', 0, 600, '8', '', 'deal1561487400_1561541202.html', '', '', 'on', '2019-06-26 21:56:00', 1),
(17, '7', 8, 'Hair cut and coloring', 'Check', '', 0, 750, '8', '', 'deal1561487400_1561541223.html', '', '', 'on', '2019-06-26 21:57:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `spa_lists`
--

CREATE TABLE `spa_lists` (
  `spa_id` int(11) NOT NULL,
  `cate_id` varchar(252) NOT NULL,
  `sub_cateid` varchar(255) NOT NULL,
  `spa_name` varchar(255) NOT NULL,
  `spa_desc` varchar(555) NOT NULL,
  `spa_mobile` varchar(25) NOT NULL,
  `Establishment` varchar(25) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `spa_logo` varchar(255) NOT NULL,
  `background_image` varchar(255) NOT NULL,
  `website` varchar(1000) NOT NULL,
  `FacebookUrl` varchar(2000) NOT NULL,
  `TwitterUrl` varchar(2000) NOT NULL,
  `InstagramUrl` varchar(2000) NOT NULL,
  `GooglePlusUrl` varchar(2000) NOT NULL,
  `saloan_back_image` varchar(255) NOT NULL,
  `registration_no` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `spa_address` varchar(555) NOT NULL,
  `search_keyword` varchar(255) NOT NULL,
  `latitude` varchar(55) NOT NULL,
  `longitude` varchar(55) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `payment_mode` varchar(1000) NOT NULL,
  `opening_time` time NOT NULL,
  `closing_time` time NOT NULL,
  `avg_cost` int(11) NOT NULL,
  `booking_option` varchar(55) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spa_lists`
--

INSERT INTO `spa_lists` (`spa_id`, `cate_id`, `sub_cateid`, `spa_name`, `spa_desc`, `spa_mobile`, `Establishment`, `contact_name`, `spa_logo`, `background_image`, `website`, `FacebookUrl`, `TwitterUrl`, `InstagramUrl`, `GooglePlusUrl`, `saloan_back_image`, `registration_no`, `email`, `spa_address`, `search_keyword`, `latitude`, `longitude`, `country`, `state`, `city`, `pincode`, `payment_mode`, `opening_time`, `closing_time`, `avg_cost`, `booking_option`, `last_update`, `status`) VALUES
(3, '43', '6,7,8', 'Four Fountains Spa', 'Four Fountains De-Stress Spa is India\'s only chain of spas that\r\ninvests in your well-being. Our specialized therapies, well-trained\r\ntherapists, and affordable prices make us unique.\r\n-Benefit-Based Therapies\r\n-Professionally Trained Therapists\r\n-Affordable Price\r\nOur therapists undergo rigorous training and certification at our in-house spa training academy & are required to go through audits and re-training', '9988445521', '2012', 'Four Fountain', '24126_FFDS-logo_220px-x-43px.png', '24126_Aphrodite-Hills-outdoor-pool-view.jpg', 'https://www.thefourfountainsspa.in/', '', '', '', '', '', '687133584', 'fourfounatin@gmail.com', '#664, 1st Floor,\r\n11th A Main Bangalore Central Road, 5th Block,\r\nJayanagar, Opp Raghavendra Swamy Mutt,\r\nBangalore 560041', 'Jayanagar', '12.9250', '77.5938', '1', '8', '9', '560041', '1,3,4', '10:45:00', '06:30:00', 450, '', '2018-12-11 10:37:31', 1),
(5, '43', '6,7,8', 'Deep Breath Unisex Salon And Spa ', 'A beauty destination, Deep Breath Unisex Salon And Spa in Banashankari 3rd Stage, Bangalore has been pampering its clients since 2010. Serving those living and working in and around the area, this beauty destination is one of the preferred places to pamper yourself from head to toe. This establishment understands the needs of today\'s chic and savvy individuals and strives towards offering a diverse set of expert beauty, styling and grooming services. Aiming to go the extra mile for its clients, it not only helps you look your very best, but also hel', '7760673585', '2010', '', '50203_deep-breath-unisex-salon-and-spa-rajarajeshwari-nagar-bangalore-beauty-salons-1ipnu4r.jpg', '50203_deep-breath-unisex-salon-and-spa-rajarajeshwari-nagar-bangalore-beauty-salons-1ipnu4r.jpg', '', '', '', '', '', '', '2314585', 'harish13396@gmail.com', 'Outer Ring Rd, Phase 3, Banashankari, Bengaluru, Karnataka 560085', 'Banashankari 3rd Stage', '12.9345', '77.5435', '1', '8', '9', '560085', '1,3', '00:00:10', '00:00:09', 200, '', '2019-06-26 10:48:51', 1),
(6, '43', '6,7,8,9', 'Bounce Salon & Spa, Indiranagar', 'Fancy a drink while getting a haircut? Head to the lower ground floor of the luxurious VR Mall, our biggest salon and spa in Bangalore. One-part high energy high fashion and the other, calm and zen. Whatever the experience you are looking for, this location has got you covered.', '7760673985', '2011', '', '58903_159198_image_0_2019-05-17-13-41-45-000203.jpg', '58903_159198_image_0_2019-05-17-13-41-45-000203.jpg', '', '', '', '', '', '', '452822', 'harish13396d@gmail.com', ' 610, 12th Main Rd, 7th Cross, HAL 2nd Stage, Indiranagar, Bengaluru, Karnataka 560038', 'Indira Nagar', '12.9784', '77.6408', '1', '8', '9', '560038', '1,3', '00:00:10', '00:00:09', 1000, '', '2019-06-26 07:35:58', 1),
(7, '43', '6,7,8,9,10,11', 'Zudo Spa - Best Spa in Whitefield', 'The best spa in whitefield bangalore... I am a regular visitor of Zudo Spa, and I love the services. Try the body wraps at least once any you will feel relaxed. The behavior of the girls are too good. Ambience dances with the flow.', '7760673953', '2008', '', '16644_zudo spa.jpg', '16644_zudo spa.jpg', '', '', '', '', '', '', '1235475', 'harishf13396@gmail.com', 'No.28, Opp. Prestige Ozone, Hagadur Main Road, Whitefield, Bengaluru, Karnataka 560066', 'Whitefield', '12.9698', '77.7500', '1', '8', '9', '560066', '1,3', '00:00:10', '00:00:09', 800, '', '2019-07-06 08:58:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `spa_menuimages_list`
--

CREATE TABLE `spa_menuimages_list` (
  `gallery_id` int(11) NOT NULL,
  `spa_id` varchar(55) NOT NULL,
  `images` varchar(1001) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spa_menu_list`
--

CREATE TABLE `spa_menu_list` (
  `menu_id` int(11) NOT NULL,
  `spa_id` varchar(55) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `menu_desc` varchar(255) NOT NULL,
  `menu_image` varchar(255) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spa_menu_list`
--

INSERT INTO `spa_menu_list` (`menu_id`, `spa_id`, `menu_name`, `menu_desc`, `menu_image`, `last_update`, `status`) VALUES
(1, '1', 'Face wash', 'Face wash', '65520_download (3).jpg', '2018-11-14 19:15:00', 1),
(2, '2', 'Testing Menu', 'Testing Data', '45096_tanker.png', '2018-11-18 00:36:00', 1),
(3, '1', 'Menu 2', 'sdfsdfs', '97937_spa_image.png', '2018-11-26 20:14:00', 1),
(4, '3', 'Massage', 'different types of massage', '61208_Ananda-exfoliation-experience.jpg', '2018-12-11 22:53:00', 1),
(5, '3', 'Facials', 'facials', '28235_hydrate-facial.jpg', '2018-12-11 22:54:00', 1),
(6, '3', 'Body Polishes', 'polishes', '61585_palmarosa.jpg', '2018-12-11 22:55:00', 1),
(7, '7', 'Men', 'Normal Hair cutting', '27285_images (1).jpg', '2019-06-26 21:56:00', 1),
(8, '7', 'Women', 'Basic', '49199_images.jpg', '2019-06-26 21:56:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `spa_report_db`
--

CREATE TABLE `spa_report_db` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vender_id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `mobile_no` int(11) NOT NULL,
  `reportmsg` varchar(250) NOT NULL,
  `report_type` varchar(255) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spa_report_db`
--

INSERT INTO `spa_report_db` (`id`, `user_id`, `vender_id`, `user_name`, `mobile_no`, `reportmsg`, `report_type`, `date_time`, `status`) VALUES
(1, 3, 3, 'dharma', 2147483647, 'Test', 'Test', '0000-00-00 00:00:00', 1),
(2, 2, 3, 'newuser', 2147483647, 'dev testing', 'others', '0000-00-00 00:00:00', 2),
(3, 2, 3, 'Testing user1', 2147483647, '', 'problem with timimg', '2019-04-25 12:37:57', 2),
(4, 2, 3, 'Testing user1', 2147483647, 'Control i', 'This Place has closed', '2019-05-14 11:58:21', 0),
(5, 2, 3, 'Testing user1', 2147483647, '', 'Wrong Phone Number', '2019-05-14 11:58:24', 0),
(6, 18, 3, 'Harish', 2147483647, 'Ok', 'Others', '2019-06-13 04:04:57', 1),
(7, 18, 5, 'Harish', 2147483647, '', 'problem with timimg', '2019-06-28 12:04:06', 2),
(8, 18, 7, 'Harish', 2147483647, 'Okay....\r\n', 'Others', '2019-07-11 05:18:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `spa_timing`
--

CREATE TABLE `spa_timing` (
  `id` int(11) NOT NULL,
  `spa_id` varchar(60) NOT NULL,
  `monday_starting_time` varchar(255) NOT NULL,
  `monday_ending_time` varchar(60) NOT NULL,
  `tuesday_starting_time` varchar(60) NOT NULL,
  `tuesday_ending_time` varchar(60) NOT NULL,
  `wednesday_starting_time` varchar(60) NOT NULL,
  `wednesday_ending_time` varchar(60) NOT NULL,
  `thursday_starting_time` varchar(60) NOT NULL,
  `thursday_ending_time` varchar(60) NOT NULL,
  `friday_starting_time` varchar(60) NOT NULL,
  `friday_ending_time` varchar(60) NOT NULL,
  `saturday_starting_time` varchar(60) NOT NULL,
  `saturday_ending_time` varchar(60) NOT NULL,
  `sunday_starting_time` varchar(60) NOT NULL,
  `sunday_ending_time` varchar(60) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `add_date` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spa_timing`
--

INSERT INTO `spa_timing` (`id`, `spa_id`, `monday_starting_time`, `monday_ending_time`, `tuesday_starting_time`, `tuesday_ending_time`, `wednesday_starting_time`, `wednesday_ending_time`, `thursday_starting_time`, `thursday_ending_time`, `friday_starting_time`, `friday_ending_time`, `saturday_starting_time`, `saturday_ending_time`, `sunday_starting_time`, `sunday_ending_time`, `status`, `add_date`) VALUES
(0, '1', '07:00 AM', '10:30 PM', '07:00 AM', '10:30 PM', '07:00 AM', '10:30 PM', '07:00 AM', '10:30 PM', '07:00 AM', '10:30 PM', '07:00 AM', '10:30 PM', '07:00 AM', '10:30 PM', 1, '1542178000'),
(0, '2', '10:00 AM', '09:30 PM', '10:00 AM', '09:30 PM', '10:00 AM', '09:30 PM', '10:00 AM', '09:30 PM', '10:00 AM', '09:30 PM', '10:00 AM', '09:30 PM', '10:00 AM', '09:30 PM', 1, '1542456487'),
(0, '3', '05:30 AM', '01:00 PM', '05:30 AM', '01:00 PM', '05:30 AM', '01:00 PM', '05:30 AM', '01:00 PM', '05:30 AM', '01:00 PM', '05:30 AM', '01:00 PM', '05:30 AM', '01:00 PM', 1, '1544524698'),
(0, '6', '10:00 AM', '09:30 PM', '10:00 AM', '09:30 PM', '10:00 AM', '09:30 PM', '10:00 AM', '09:30 PM', '10:00 AM', '09:30 PM', '10:00 AM', '09:30 PM', '10:00 AM', '09:30 PM', 1, '1561536802'),
(0, '5', '07:00 AM', '09:00 PM', '07:00 AM', '09:00 PM', '07:00 AM', '09:00 PM', '07:00 AM', '09:00 PM', '07:00 AM', '09:00 PM', '07:00 AM', '09:00 PM', '07:00 AM', '09:00 PM', 1, '1561536908'),
(0, '7', '10:30 AM', '09:00 PM', '10:30 AM', '09:00 PM', '10:30 AM', '09:00 PM', '10:30 AM', '09:00 PM', '10:30 AM', '09:00 PM', '10:30 AM', '09:00 PM', '10:30 AM', '09:00 PM', 1, '1561541345');

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `add_datetime` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponsors`
--

INSERT INTO `sponsors` (`id`, `vendor_id`, `cate_id`, `add_datetime`, `status`) VALUES
(10, 2, 41, '2018-11-28 03:25:00', 1),
(11, 3, 41, '2018-11-28 03:26:00', 1),
(14, 2, 49, '2018-12-07 10:17:00', 1),
(15, 1, 49, '2018-12-07 10:21:00', 1),
(17, 1, 43, '2018-12-07 10:42:00', 1),
(18, 2, 43, '2018-12-07 10:43:00', 1),
(34, 1, 41, '2019-07-03 05:48:00', 1),
(35, 4, 41, '2019-07-03 05:48:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff_master`
--

CREATE TABLE `staff_master` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `profile_pic` varchar(200) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `manage_user_status` tinyint(4) NOT NULL DEFAULT '0',
  `manage_vender_status` tinyint(4) NOT NULL DEFAULT '0',
  `manage_categories_status` tinyint(4) NOT NULL DEFAULT '0',
  `user_feedsbacks_status` tinyint(4) NOT NULL DEFAULT '0',
  `manage_enquiries_status` tinyint(4) NOT NULL DEFAULT '0',
  `manage_staff_status` tinyint(4) NOT NULL DEFAULT '2',
  `add_date` varchar(40) NOT NULL,
  `modify_date` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trending_now`
--

CREATE TABLE `trending_now` (
  `id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `hit_count` int(11) NOT NULL,
  `add_datetime` varchar(50) NOT NULL,
  `last_update` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trending_now`
--

INSERT INTO `trending_now` (`id`, `cate_id`, `vendor_id`, `hit_count`, `add_datetime`, `last_update`) VALUES
(1, 1, 1, 305, '2018-11-13 19:34:33', '2019-08-17 11:41:28'),
(2, 1, 3, 109, '2018-11-14 11:12:39', '2019-08-13 22:38:33'),
(3, 1, 4, 37, '2018-11-14 11:13:50', '2019-08-11 09:55:50'),
(4, 1, 2, 152, '2018-11-14 11:22:02', '2019-08-14 12:25:32'),
(5, 41, 1, 144, '2018-11-14 11:25:19', '2019-08-14 18:14:39'),
(6, 41, 2, 144, '2018-11-14 11:54:27', '2019-08-14 18:13:47'),
(7, 41, 3, 123, '2018-11-14 12:34:36', '2019-08-08 23:11:39'),
(12, 49, 3, 101, '2018-12-11 13:24:09', '2019-07-26 14:12:37'),
(13, 49, 4, 115, '2018-12-11 14:18:40', '2019-07-20 05:30:57'),
(14, 43, 3, 79, '2018-12-11 16:08:34', '2019-07-08 10:27:00'),
(15, 1, 5, 17, '2019-06-12 07:28:11', '2019-06-29 12:41:53'),
(16, 1, 8, 40, '2019-06-24 12:26:37', '2019-08-16 10:58:45'),
(17, 49, 9, 6, '2019-06-26 14:55:04', '2019-07-20 05:30:38'),
(18, 49, 5, 5, '2019-06-26 14:57:11', '2019-07-23 19:06:13'),
(19, 43, 5, 7, '2019-06-28 12:03:43', '2019-07-24 15:53:52'),
(20, 1, 7, 3, '2019-06-28 12:54:04', '2019-07-22 16:25:26'),
(21, 1, 6, 2, '2019-06-28 12:56:02', '2019-06-30 10:07:35'),
(22, 41, 4, 2, '2019-06-28 12:59:37', '2019-06-28 13:27:16'),
(23, 1, 9, 42, '2019-07-01 13:24:05', '2019-08-14 18:09:21'),
(24, 43, 7, 8, '2019-07-06 14:24:43', '2019-07-24 15:46:26'),
(25, 43, 6, 3, '2019-07-06 14:26:39', '2019-07-08 10:27:13'),
(26, 1, 10, 11, '2019-08-10 13:47:24', '2019-08-13 22:41:09'),
(27, 1, 11, 13, '2019-08-11 13:24:22', '2019-08-15 19:17:57'),
(28, 1, 12, 4, '2019-08-11 14:38:11', '2019-08-12 12:42:47'),
(29, 1, 13, 3, '2019-08-13 10:33:33', '2019-08-13 10:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `update_at` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_register`
--

CREATE TABLE `user_register` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_login`
--

CREATE TABLE `vendor_login` (
  `vendor_loginid` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `token_id` varchar(255) NOT NULL,
  `device_id` varchar(255) NOT NULL,
  `login_time` datetime NOT NULL,
  `logout_time` datetime NOT NULL,
  `status` enum('0','1') NOT NULL,
  `login_otp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_login`
--

INSERT INTO `vendor_login` (`vendor_loginid`, `vendor_id`, `cate_id`, `token_id`, `device_id`, `login_time`, `logout_time`, `status`, `login_otp`) VALUES
(3, 2, 41, 'f_BCeby_dH4:APA91bH2jiwBQYxDIM7E9UiWtixDmUn_RqeItzyk6ONi8PnRS9eROPZrxMsnWgT1uLneB0CvnbIGsrrhPGB6eVHx5aM2agFUKZyngJmdjzs86HfpdvY0HADmqW9tmxW4cCnrG0QAByyL', '5441d3f6c740dbff', '2019-01-01 04:50:23', '0000-00-00 00:00:00', '0', 10163),
(2, 2, 41, 'f_BCeby_dH4:APA91bH2jiwBQYxDIM7E9UiWtixDmUn_RqeItzyk6ONi8PnRS9eROPZrxMsnWgT1uLneB0CvnbIGsrrhPGB6eVHx5aM2agFUKZyngJmdjzs86HfpdvY0HADmqW9tmxW4cCnrG0QAByyL', '5441d3f6c740dbff', '2019-01-01 04:32:28', '0000-00-00 00:00:00', '0', 10489),
(4, 1, 1, 'f_BCeby_dH4:APA91bH2jiwBQYxDIM7E9UiWtixDmUn_RqeItzyk6ONi8PnRS9eROPZrxMsnWgT1uLneB0CvnbIGsrrhPGB6eVHx5aM2agFUKZyngJmdjzs86HfpdvY0HADmqW9tmxW4cCnrG0QAByyL', '5441d3f6c740dbff', '2019-01-03 02:10:42', '0000-00-00 00:00:00', '1', 10294),
(5, 1, 1, 'esreRevLtfY:APA91bGdEcMxOLQ_Pro6W_3JDfjG-nghHpvzJWsP7oae-1KCUl7xFWz5lFzkoGXOt0XjsDSiBHbSB0MuTtNDhUbLQKvdPBwCPVgEQnNit49Er3E2n9lYIHPOg2T1R5S0qcInl-B91vxf', '4858c0ea4deb6d2b', '2019-03-08 05:47:50', '0000-00-00 00:00:00', '1', 11040),
(6, 1, 1, '', 'a6f3ee02f9f9dbe6', '2019-03-11 04:27:42', '0000-00-00 00:00:00', '0', 10830),
(7, 1, 1, '', '', '2019-03-27 02:11:32', '0000-00-00 00:00:00', '0', 10732),
(8, 1, 1, 'cUQA1qDXUPQ:APA91bGjj7U-adw_FcuNeKvmEVgOSvrrYnCEDuc_2THOAMCifrNFOX5qVwjqgYIXyzf_OYQNKlTIwMZMZou4R-4Aup-s7TwSZsYCdj7XfeLlPPoLZLnQwa3NXVuAEVAJbt4pVS3r8XKY', '8459461b8879fe64', '2019-03-29 01:10:02', '0000-00-00 00:00:00', '0', 10807),
(9, 1, 41, 'c5NxazVGBmA:APA91bHkpqysy5JAJ9eaYAGJ3quXxNO631Zv2Dffq9DA8SnQtnaygj5G_waIkYRzJZjcK-6VHYlWSbh3zuT1FM0az91HzoPtVfs1fzaMq0O43p08mVHrD43QK3q9f4ZjGF_FP47O6mn1', 'a6f3ee02f9f9dbe6', '2019-04-02 05:04:19', '0000-00-00 00:00:00', '0', 10479),
(10, 1, 1, 'cUQA1qDXUPQ:APA91bGjj7U-adw_FcuNeKvmEVgOSvrrYnCEDuc_2THOAMCifrNFOX5qVwjqgYIXyzf_OYQNKlTIwMZMZou4R-4Aup-s7TwSZsYCdj7XfeLlPPoLZLnQwa3NXVuAEVAJbt4pVS3r8XKY', '8459461b8879fe64', '2019-04-05 10:26:10', '0000-00-00 00:00:00', '1', 10097),
(11, 1, 1, '', '', '2019-04-27 11:23:44', '0000-00-00 00:00:00', '0', 10019),
(12, 1, 1, '', 'e2c1e65f1bbec6cd', '2019-04-27 11:36:19', '0000-00-00 00:00:00', '0', 10558),
(13, 1, 1, 'e139QfSr0ec:APA91bFRDG0PzYuMjsQUui42UCibDBPxbaBIZqBxqHowvRfUx8rKQdtLZ5gb_uCT0F6gEKvlWsJtv-oxc3TGspnpJl_Dqy9XrmaNnefeVH72ZJi0P34hE6i8pHw-0owOoOfjAc64FQy6', 'e2c1e65f1bbec6cd', '2019-04-27 11:40:44', '0000-00-00 00:00:00', '0', 10222),
(14, 1, 41, 'e139QfSr0ec:APA91bFRDG0PzYuMjsQUui42UCibDBPxbaBIZqBxqHowvRfUx8rKQdtLZ5gb_uCT0F6gEKvlWsJtv-oxc3TGspnpJl_Dqy9XrmaNnefeVH72ZJi0P34hE6i8pHw-0owOoOfjAc64FQy6', 'e2c1e65f1bbec6cd', '2019-04-27 12:39:42', '0000-00-00 00:00:00', '1', 10359),
(15, 1, 41, 'd6KpjvEXwpo:APA91bGkLmvziM2rhFVGCH3MqO34LCCziLiLTTq1ceY_Mcy2hbApkos4WKYUk_PPxleHTzK6wyOWvBwO8tGNjh1qqh2CC4HBWsoIdWsSpJ7s7s_OgEaAyYXap7-qmZhM3dTyvrJsGSWg', 'e2c1e65f1bbec6cd', '2019-04-27 12:45:07', '0000-00-00 00:00:00', '1', 10929),
(16, 1, 41, '', '0513b9a0c0214b8f', '2019-04-27 03:25:57', '0000-00-00 00:00:00', '1', 10811),
(17, 1, 41, 'dqaRUzO44Oc:APA91bEMVIc-4AuVmizkc4PUqL3_c4LrcV-YuirjFkcTCGcynj-P2fetdmReIvMxBAJ3HtBxFvVs5uxhDw-fX3WXXw59xkaHE_DROOX37s4mi-bLbJDyDqJMKr0Iv53CEm1cfGAgQS-Y', '0513b9a0c0214b8f', '2019-04-27 03:26:40', '0000-00-00 00:00:00', '1', 10656),
(18, 1, 41, 'c3-nrNgHsd4:APA91bFusvJDJ_mVkdMefn1FIHJRuRLq3S6KIklgFwpfX3DhKJU_-BMfKBLR5j_OLFLKwsh-u4hOAZnthaZ_PylRZdMop5ACzzYeXY3i0xTCy3Uw9KB2vEUCf_p9e8amD4CAf5q5V0w9', '2497fea48f07b15d', '2019-06-29 12:27:19', '0000-00-00 00:00:00', '1', 10942),
(19, 2, 1, '', '', '2019-07-15 05:16:05', '0000-00-00 00:00:00', '0', 10402),
(20, 2, 1, 'dfLqLH8m8pU:APA91bGm8RFIRaFUk3NL9nkUmWnqDzZER1sxZAsKBJWyGAPJPg1lB6MlmBUUu0b_hkuHu0HUg0VwNEsuVzXLT2sL5daYFnA0BjMlmi-7W4exY5bsjQn0XEnYjgO1NFIBcX93DBSQG4tw', '3220c216643ec74d', '2019-07-15 05:16:41', '0000-00-00 00:00:00', '1', 10346),
(21, 1, 41, '', '', '2019-08-14 12:57:41', '0000-00-00 00:00:00', '0', 10897),
(22, 1, 41, '', '', '2019-08-14 02:52:49', '0000-00-00 00:00:00', '0', 10781),
(23, 1, 41, '', '', '2019-08-14 02:53:56', '0000-00-00 00:00:00', '0', 10823),
(24, 1, 41, 'e2O8WGXPvJI:APA91bFMFIZ5e_7mKHVaM4Y-UaCK_NliaapDvcZkVcAzv5H54VgfBaruvPYvxTDiIXEdcFXt0yDrJJolzVlXWCdDeqNvtrdkVzVRwtikD7QGcqDukvK1SUzBblajfWZXhi9LBq5zgpjr', '3cba1266dce50a85', '2019-08-14 03:07:02', '0000-00-00 00:00:00', '0', 10821),
(25, 1, 41, '', '', '2019-08-14 03:31:42', '0000-00-00 00:00:00', '0', 10086),
(26, 1, 41, '', '', '2019-08-14 03:33:17', '0000-00-00 00:00:00', '0', 10523),
(27, 1, 41, '', '', '2019-08-14 03:33:59', '0000-00-00 00:00:00', '0', 10813),
(28, 1, 41, 'e2O8WGXPvJI:APA91bFMFIZ5e_7mKHVaM4Y-UaCK_NliaapDvcZkVcAzv5H54VgfBaruvPYvxTDiIXEdcFXt0yDrJJolzVlXWCdDeqNvtrdkVzVRwtikD7QGcqDukvK1SUzBblajfWZXhi9LBq5zgpjr', '3cba1266dce50a85', '2019-08-14 03:35:26', '0000-00-00 00:00:00', '1', 10579);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admintype_master`
--
ALTER TABLE `admintype_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_master`
--
ALTER TABLE `admin_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_master`
--
ALTER TABLE `ads_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads_settings`
--
ALTER TABLE `ads_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_gallery_list`
--
ALTER TABLE `banner_gallery_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_master`
--
ALTER TABLE `category_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deal_list`
--
ALTER TABLE `deal_list`
  ADD PRIMARY KEY (`dealid`);

--
-- Indexes for table `doctor_lists`
--
ALTER TABLE `doctor_lists`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `doctor_services`
--
ALTER TABLE `doctor_services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `doctor_speciality`
--
ALTER TABLE `doctor_speciality`
  ADD PRIMARY KEY (`speciality_id`);

--
-- Indexes for table `doc_booking_list`
--
ALTER TABLE `doc_booking_list`
  ADD PRIMARY KEY (`doc_book_id`);

--
-- Indexes for table `doc_booking_reschdule`
--
ALTER TABLE `doc_booking_reschdule`
  ADD PRIMARY KEY (`resc_id`);

--
-- Indexes for table `doc_booking_schedule`
--
ALTER TABLE `doc_booking_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doc_categorylist`
--
ALTER TABLE `doc_categorylist`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `doc_feedback`
--
ALTER TABLE `doc_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doc_gallery_list`
--
ALTER TABLE `doc_gallery_list`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `doc_report_db`
--
ALTER TABLE `doc_report_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doc_specialities`
--
ALTER TABLE `doc_specialities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doc_timing`
--
ALTER TABLE `doc_timing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry_master`
--
ALTER TABLE `enquiry_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourite_master`
--
ALTER TABLE `favourite_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_search`
--
ALTER TABLE `global_search`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage_image`
--
ALTER TABLE `homepage_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import`
--
ALTER TABLE `import`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_master`
--
ALTER TABLE `location_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_master1`
--
ALTER TABLE `location_master1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_master`
--
ALTER TABLE `login_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mode_master`
--
ALTER TABLE `mode_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_list`
--
ALTER TABLE `notification_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_master`
--
ALTER TABLE `product_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_mode`
--
ALTER TABLE `product_mode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_timing`
--
ALTER TABLE `product_timing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_timing1`
--
ALTER TABLE `product_timing1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profession`
--
ALTER TABLE `profession`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_master`
--
ALTER TABLE `rating_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_db`
--
ALTER TABLE `report_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `res_booking_list`
--
ALTER TABLE `res_booking_list`
  ADD PRIMARY KEY (`res_book_id`);

--
-- Indexes for table `res_booking_list1`
--
ALTER TABLE `res_booking_list1`
  ADD PRIMARY KEY (`res_book_id`);

--
-- Indexes for table `res_booking_list2`
--
ALTER TABLE `res_booking_list2`
  ADD PRIMARY KEY (`res_book_id`);

--
-- Indexes for table `res_booking_reschdule`
--
ALTER TABLE `res_booking_reschdule`
  ADD PRIMARY KEY (`resc_id`);

--
-- Indexes for table `res_booking_schedule`
--
ALTER TABLE `res_booking_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `res_categorylist`
--
ALTER TABLE `res_categorylist`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `res_cuisine_list`
--
ALTER TABLE `res_cuisine_list`
  ADD PRIMARY KEY (`cuisine_id`);

--
-- Indexes for table `res_dining_list`
--
ALTER TABLE `res_dining_list`
  ADD PRIMARY KEY (`dining_id`);

--
-- Indexes for table `res_feedback`
--
ALTER TABLE `res_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `res_gallery_list`
--
ALTER TABLE `res_gallery_list`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `res_itemsize_list`
--
ALTER TABLE `res_itemsize_list`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `res_items_list`
--
ALTER TABLE `res_items_list`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `res_menuimages_list`
--
ALTER TABLE `res_menuimages_list`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `res_menu_list`
--
ALTER TABLE `res_menu_list`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `res_report_db`
--
ALTER TABLE `res_report_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `res_restaurant_list`
--
ALTER TABLE `res_restaurant_list`
  ADD PRIMARY KEY (`res_id`);

--
-- Indexes for table `res_subcategory`
--
ALTER TABLE `res_subcategory`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `res_timing`
--
ALTER TABLE `res_timing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saloans_lists`
--
ALTER TABLE `saloans_lists`
  ADD PRIMARY KEY (`salon_id`);

--
-- Indexes for table `saloan_categorylist`
--
ALTER TABLE `saloan_categorylist`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `saloan_gallery_list`
--
ALTER TABLE `saloan_gallery_list`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `saloan_items_list`
--
ALTER TABLE `saloan_items_list`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `saloan_menuimages_list`
--
ALTER TABLE `saloan_menuimages_list`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `saloan_menu_list`
--
ALTER TABLE `saloan_menu_list`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `salon_booking_list`
--
ALTER TABLE `salon_booking_list`
  ADD PRIMARY KEY (`salon_book_id`);

--
-- Indexes for table `salon_booking_schedule`
--
ALTER TABLE `salon_booking_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salon_feedback`
--
ALTER TABLE `salon_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salon_report_db`
--
ALTER TABLE `salon_report_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salon_timing`
--
ALTER TABLE `salon_timing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_location`
--
ALTER TABLE `search_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spa_booking_list`
--
ALTER TABLE `spa_booking_list`
  ADD PRIMARY KEY (`spa_book_id`);

--
-- Indexes for table `spa_booking_schedule`
--
ALTER TABLE `spa_booking_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spa_categorylist`
--
ALTER TABLE `spa_categorylist`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `spa_feedback`
--
ALTER TABLE `spa_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spa_gallery_list`
--
ALTER TABLE `spa_gallery_list`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `spa_items_list`
--
ALTER TABLE `spa_items_list`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `spa_lists`
--
ALTER TABLE `spa_lists`
  ADD PRIMARY KEY (`spa_id`);

--
-- Indexes for table `spa_menuimages_list`
--
ALTER TABLE `spa_menuimages_list`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `spa_menu_list`
--
ALTER TABLE `spa_menu_list`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `spa_report_db`
--
ALTER TABLE `spa_report_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_master`
--
ALTER TABLE `staff_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trending_now`
--
ALTER TABLE `trending_now`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_register`
--
ALTER TABLE `user_register`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vendor_login`
--
ALTER TABLE `vendor_login`
  ADD PRIMARY KEY (`vendor_loginid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admintype_master`
--
ALTER TABLE `admintype_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `admin_master`
--
ALTER TABLE `admin_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ads_master`
--
ALTER TABLE `ads_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ads_settings`
--
ALTER TABLE `ads_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1964;

--
-- AUTO_INCREMENT for table `banner_gallery_list`
--
ALTER TABLE `banner_gallery_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `category_master`
--
ALTER TABLE `category_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `deal_list`
--
ALTER TABLE `deal_list`
  MODIFY `dealid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctor_lists`
--
ALTER TABLE `doctor_lists`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `doctor_services`
--
ALTER TABLE `doctor_services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1716;

--
-- AUTO_INCREMENT for table `doctor_speciality`
--
ALTER TABLE `doctor_speciality`
  MODIFY `speciality_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doc_booking_list`
--
ALTER TABLE `doc_booking_list`
  MODIFY `doc_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `doc_booking_reschdule`
--
ALTER TABLE `doc_booking_reschdule`
  MODIFY `resc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doc_booking_schedule`
--
ALTER TABLE `doc_booking_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doc_categorylist`
--
ALTER TABLE `doc_categorylist`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `doc_feedback`
--
ALTER TABLE `doc_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `doc_gallery_list`
--
ALTER TABLE `doc_gallery_list`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `doc_report_db`
--
ALTER TABLE `doc_report_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `doc_specialities`
--
ALTER TABLE `doc_specialities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `doc_timing`
--
ALTER TABLE `doc_timing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `enquiry_master`
--
ALTER TABLE `enquiry_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourite_master`
--
ALTER TABLE `favourite_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `global_search`
--
ALTER TABLE `global_search`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `homepage_image`
--
ALTER TABLE `homepage_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `import`
--
ALTER TABLE `import`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT for table `location_master`
--
ALTER TABLE `location_master`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `location_master1`
--
ALTER TABLE `location_master1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `login_master`
--
ALTER TABLE `login_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `mode_master`
--
ALTER TABLE `mode_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notification_list`
--
ALTER TABLE `notification_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_master`
--
ALTER TABLE `product_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_mode`
--
ALTER TABLE `product_mode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_timing`
--
ALTER TABLE `product_timing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_timing1`
--
ALTER TABLE `product_timing1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `profession`
--
ALTER TABLE `profession`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rating_master`
--
ALTER TABLE `rating_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `report_db`
--
ALTER TABLE `report_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `res_booking_list`
--
ALTER TABLE `res_booking_list`
  MODIFY `res_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `res_booking_list1`
--
ALTER TABLE `res_booking_list1`
  MODIFY `res_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `res_booking_list2`
--
ALTER TABLE `res_booking_list2`
  MODIFY `res_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `res_booking_reschdule`
--
ALTER TABLE `res_booking_reschdule`
  MODIFY `resc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `res_booking_schedule`
--
ALTER TABLE `res_booking_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `res_categorylist`
--
ALTER TABLE `res_categorylist`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `res_cuisine_list`
--
ALTER TABLE `res_cuisine_list`
  MODIFY `cuisine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `res_dining_list`
--
ALTER TABLE `res_dining_list`
  MODIFY `dining_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `res_feedback`
--
ALTER TABLE `res_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `res_gallery_list`
--
ALTER TABLE `res_gallery_list`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `res_itemsize_list`
--
ALTER TABLE `res_itemsize_list`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `res_items_list`
--
ALTER TABLE `res_items_list`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `res_menuimages_list`
--
ALTER TABLE `res_menuimages_list`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `res_menu_list`
--
ALTER TABLE `res_menu_list`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `res_report_db`
--
ALTER TABLE `res_report_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `res_restaurant_list`
--
ALTER TABLE `res_restaurant_list`
  MODIFY `res_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `res_subcategory`
--
ALTER TABLE `res_subcategory`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `res_timing`
--
ALTER TABLE `res_timing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `saloans_lists`
--
ALTER TABLE `saloans_lists`
  MODIFY `salon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `saloan_categorylist`
--
ALTER TABLE `saloan_categorylist`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `saloan_gallery_list`
--
ALTER TABLE `saloan_gallery_list`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `saloan_items_list`
--
ALTER TABLE `saloan_items_list`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `saloan_menuimages_list`
--
ALTER TABLE `saloan_menuimages_list`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saloan_menu_list`
--
ALTER TABLE `saloan_menu_list`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `salon_booking_list`
--
ALTER TABLE `salon_booking_list`
  MODIFY `salon_book_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salon_booking_schedule`
--
ALTER TABLE `salon_booking_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salon_feedback`
--
ALTER TABLE `salon_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `salon_report_db`
--
ALTER TABLE `salon_report_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `salon_timing`
--
ALTER TABLE `salon_timing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `search_location`
--
ALTER TABLE `search_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spa_booking_list`
--
ALTER TABLE `spa_booking_list`
  MODIFY `spa_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `spa_booking_schedule`
--
ALTER TABLE `spa_booking_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spa_categorylist`
--
ALTER TABLE `spa_categorylist`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `spa_feedback`
--
ALTER TABLE `spa_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `spa_gallery_list`
--
ALTER TABLE `spa_gallery_list`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `spa_items_list`
--
ALTER TABLE `spa_items_list`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `spa_lists`
--
ALTER TABLE `spa_lists`
  MODIFY `spa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `spa_menuimages_list`
--
ALTER TABLE `spa_menuimages_list`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spa_menu_list`
--
ALTER TABLE `spa_menu_list`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `spa_report_db`
--
ALTER TABLE `spa_report_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `staff_master`
--
ALTER TABLE `staff_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trending_now`
--
ALTER TABLE `trending_now`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_register`
--
ALTER TABLE `user_register`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vendor_login`
--
ALTER TABLE `vendor_login`
  MODIFY `vendor_loginid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
