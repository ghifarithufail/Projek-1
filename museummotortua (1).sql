-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2021 at 08:54 AM
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
  `tanggal_lahir` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_diri`
--

INSERT INTO `data_diri` (`id`, `nama`, `tanggal_lahir`, `alamat`, `email`, `no_telp`) VALUES
(1, 'ghifari', '07012002', 'jl lengkeng', 'ghifarithufail07@gmail.com', 82246),
(2, 'babi', '010203', 'bekasi', 'ghifarithufail07@gmail.com', 124235);

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
  `tipe_tiket` varchar(30) NOT NULL,
  `dateR` date NOT NULL,
  `total_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rsv`
--

INSERT INTO `rsv` (`id`, `id_user`, `count`, `tipe_tiket`, `dateR`, `total_harga`) VALUES
(1, 1, 2, 'harian', '2010-02-05', 3000),
(19, 1, 3, 'harian', '2010-02-05', 3000);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rsv`
--
ALTER TABLE `rsv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `rsv_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `data_diri` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
