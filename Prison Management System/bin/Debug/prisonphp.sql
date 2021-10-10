-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2021 at 01:50 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prisonphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `eqid` int(11) NOT NULL,
  `equipment_name` varchar(255) NOT NULL,
  `equipment_use` varchar(255) NOT NULL,
  `prisonername` varchar(255) NOT NULL,
  `timeb` varchar(255) NOT NULL,
  `timer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`eqid`, `equipment_name`, `equipment_use`, `prisonername`, `timeb`, `timer`) VALUES
(10, '  Dumbell', '  Exercise', 'Jacob', '04:29', '19:29'),
(11, '  Hoe', 'Crops', 'Bonjing', '04:29', '13:34'),
(12, '  Scissors', 'Cutting Papers', 'Lalang', '09:30', '12:30'),
(13, '  Hoe', 'Crops', 'Tililit', '16:22', '18:22');

-- --------------------------------------------------------

--
-- Table structure for table `prisoner`
--

CREATE TABLE `prisoner` (
  `prisonid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `crime` varchar(255) NOT NULL,
  `cellnumber` int(11) NOT NULL,
  `entrydate` varchar(255) NOT NULL,
  `lastdate` varchar(255) NOT NULL,
  `healthstatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prisoner`
--

INSERT INTO `prisoner` (`prisonid`, `name`, `sex`, `age`, `address`, `crime`, `cellnumber`, `entrydate`, `lastdate`, `healthstatus`) VALUES
(40, '   Lalang   ', 'Male ', 27, '   Singapore   ', ' Robbery ', 2, '2021-05-17', '2021-05-17', 'Masakiton'),
(41, '  Ronald', 'Male', 20, 'Philippines', 'Murder', 7, '05/12/2021', '07/02/2021', 'Healthy'),
(42, 'Jaredskie', 'Male', 24, 'Panacan', 'Assassin', 3, '09/25/2021', '12/25/2021', 'Obesity'),
(43, '    Lovely  ', 'Female ', 18, '  Bangkal  ', '  Thief  ', 12, '2020-12-17', '2021-10-01', '  Diabetes  '),
(44, '     Jacob   ', 'Female ', 15, '   Catalunan   ', '   Fraud   ', 8, '2021-02-24', '2021-08-25', '   Healthy   '),
(46, '    Bonjing  ', '  Male  ', 32, '  Samal  ', '  Homicide  ', 2, '2021-05-19', '2021-05-29', '  Tambok  '),
(53, '   Robert', 'Male ', 25, ' Saudi ', '   Robbery ', 2, '2021-05-29', '2021-05-19', 'Cancer');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `email`, `phone`, `address`, `image`) VALUES
(1, 'Ronald Jay Amantiad', 'ronaldamantiad18@gmail.com', '09555473092', 'Menlo Park, California, United States', 'MV5BYWRjZDYyYWUtNjk4Yi00Njk3LThmYjAtNTk1N2VlZDYwZThlXkEyXkFqcGdeQXVyNTI5NjIyMw@@._V1_UY1200_CR85,0,630,1200_AL_.jpg'),
(2, 'Lalang Giron', 'lalang_yeahey@gmail.com', '09922410214', 'Canada 3rd Floor', '20818878_1774519785910031_3872354238635154555_o.jpg'),
(3, 'Jared Carlo Antonio', 'jaredlovedota123@gmail.com', '09823212512', 'Saudi Arabia Under Ground', '17634778_612124992327159_6580651640211991705_n.jpg'),
(4, 'Lovely Jane Pantig', 'lably_love_lovely@gmail.com', '09612612612', 'NCCC Mall Matina', '46366261_2272528469697808_2313401636258578432_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`, `name`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'ron', '123', 'ronald');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `visitorid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `timein` varchar(255) NOT NULL,
  `timeout` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`visitorid`, `name`, `age`, `gender`, `relationship`, `address`, `timein`, `timeout`, `date`) VALUES
(22, 'Kobe', 55, 'Male ', 'Father', 'Los Angels', '04:47', '19:50', '2021-05-26'),
(23, '  Jordan', 23, 'Male ', 'Brother', '  Chicago', '16:48', '19:48', '2021-05-20'),
(24, '   Ronald', 25, 'Male ', 'Brother', ' Philippines ', '16:49', '23:49', '2021-05-19'),
(25, '  Ash', 15, 'Female ', 'Relative', '  Pokemon', '13:49', '19:49', '2021-05-15'),
(26, '  Saitama', 77, 'Female ', 'Sister', '  Tokyo', '13:52', '12:50', '2021-06-01'),
(27, '  Barney', 98, 'Male ', 'Father', '  Jurassic World', '20:50', '19:50', '2021-05-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`eqid`);

--
-- Indexes for table `prisoner`
--
ALTER TABLE `prisoner`
  ADD PRIMARY KEY (`prisonid`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`visitorid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `equipments`
--
ALTER TABLE `equipments`
  MODIFY `eqid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `prisoner`
--
ALTER TABLE `prisoner`
  MODIFY `prisonid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13124;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `visitorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
