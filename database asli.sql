-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2021 at 05:12 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `museummotortua`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_diri`
--

CREATE TABLE `data_diri` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telp` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_diri`
--

INSERT INTO `data_diri` (`id`, `nama`, `tanggal_lahir`, `alamat`, `email`, `no_telp`) VALUES
(1, 'merry', '2009-02-01', 'rawa domba', 'merry@gmail.com', 890214),
(2, 'ardian', '2001-02-03', 'depok', 'ardian@gmail.com', 2415),
(3, 'merry', '2003-04-01', 'rawa domba', 'merry@gmail.com', 12532),
(4, 'alifia', '2001-02-03', 'jakarta timur', 'alifia@gmail.com', 21937414),
(5, 'aisyah', '2009-02-01', 'kampung melayu', 'aisyah@gmail.com', 12387),
(6, 'ica', '2008-02-01', 'depok', 'ica@gmail.com', 271941),
(7, 'kepin', '1998-02-01', 'cipayung', 'kepin@gmail.coom', 21341);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `id_reservasi` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tipe_tiket` varchar(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rsv`
--

CREATE TABLE `rsv` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `tipe_tiket` text NOT NULL,
  `dateR` date NOT NULL,
  `total_harga` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rsv`
--

INSERT INTO `rsv` (`id`, `id_user`, `count`, `tipe_tiket`, `dateR`, `total_harga`) VALUES
(3, 3, 11, 'bulanan', '2010-02-03', 20000000),
(4, 4, 2, 'mingguan', '2008-02-05', 130000),
(5, 5, 39, 'harian', '2009-02-01', 20000),
(6, 5, 3, 'bulanan', '2002-01-03', 200000),
(7, 7, 12, 'bulanan', '2009-02-01', 12000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'ghifari', 'ghifarithufail07@gmail.com', '7januari2002');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_diri`
--
ALTER TABLE `data_diri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_reservasi` (`id_reservasi`);

--
-- Indexes for table `rsv`
--
ALTER TABLE `rsv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_diri`
--
ALTER TABLE `data_diri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rsv`
--
ALTER TABLE `rsv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`id_reservasi`) REFERENCES `rsv` (`id`);

--
-- Constraints for table `rsv`
--
ALTER TABLE `rsv`
  ADD CONSTRAINT `rsv_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `data_diri` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
