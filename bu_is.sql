-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2018 at 05:37 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bu is`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_userC` int(11) NOT NULL,
  `id_kueC` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  `dibayar` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id_cart`, `id_userC`, `id_kueC`, `qty`, `dibayar`) VALUES
(1, 3, 5, 9, 0),
(2, 3, 4, 9, 0),
(3, 5, 12, 36, 1);

-- --------------------------------------------------------

--
-- Table structure for table `datapenjualan`
--

CREATE TABLE `datapenjualan` (
  `id_pen` int(11) NOT NULL,
  `id_userD` int(11) NOT NULL,
  `id_kueD` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datapenjualan`
--

INSERT INTO `datapenjualan` (`id_pen`, `id_userD`, `id_kueD`, `qty`, `total`, `date`) VALUES
(1, 3, 983, 8, 360000, '2017-06-23 17:00:00'),
(2, 6, 9, 4, 340000, '2017-06-24 04:00:00'),
(3, 6, 1, 6, 570000, '2017-06-24 04:00:00'),
(4, 5, 21, 2, 76000, '2017-06-24 04:00:00'),
(5, 4, 8, 3, 165000, '2017-06-24 04:00:00'),
(6, 5, 7, 15, 825000, '2017-06-24 04:00:00'),
(7, 3, 14, 12, 660000, '2017-06-24 04:00:00'),
(8, 5, 6, 42, 2625000, '2017-06-24 04:08:00'),
(9, 3, 8948, 27, 2227500, '2017-06-24 04:00:09'),
(10, 5, 11, 20, 1250000, '2017-06-24 04:00:07'),
(11, 6, 12, 5, 18750, '2017-06-24 04:00:55'),
(12, 5, 9, 8, 640000, '2017-06-24 04:00:11'),
(13, 6, 18, 90, 2925000, '2017-06-24 04:00:01'),
(14, 7, 4, 10, 35000, '2017-06-24 04:00:00'),
(15, 5, 10, 30, 75000, '2017-06-24 04:00:00'),
(16, 6, 13, 30, 75000, '2017-06-24 04:00:00'),
(17, 6, 5, 30, 30000, '2017-06-24 04:00:00'),
(18, 4, 18, 17, 595000, '2017-06-24 04:00:00'),
(19, 2, 19, 13, 780000, '2018-05-25 09:48:06'),
(20, 2, 2, 6, 210000, '2018-05-25 13:40:33'),
(21, 2, 2, 6, 210000, '2018-05-25 13:42:17');

-- --------------------------------------------------------

--
-- Table structure for table `kue`
--

CREATE TABLE `kue` (
  `id_kue` int(11) NOT NULL,
  `namaKue` varchar(35) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kue`
--

INSERT INTO `kue` (`id_kue`, `namaKue`, `kategori`, `harga`, `gambar`) VALUES
(1, 'Spiku', 'Kue Lembut', 31000, 'images/kue/kue (1).jpg'),
(2, 'Kue Tart Pandan', 'Kue Lembut', 35000, 'images/kue/kue (2).jpg'),
(3, 'Roll Tart Kuning Ori', 'Kue Lembut', 32500, 'images/kue/kue (3).jpg'),
(4, 'Roll Tart Coklat Ori', 'Kue Lembut', 35000, 'images/kue/kue (4).jpg'),
(5, 'Air Mineral', 'Minuman', 1000, 'images/kue/kue (5).jpg'),
(6, 'Kastengel', 'Kue Kering', 62500, 'images/kue/kue (6).jpg'),
(7, 'Kue Good Time', 'Kue Kering', 55000, 'images/kue/kue (7).jpg'),
(8, 'Kue Kenari', 'Kue Kering', 55000, 'images/kue/kue (8).jpg'),
(9, 'Kue Nampan Besar', 'Jajan Pasar', 85000, 'images/kue/kue (9).jpg'),
(10, 'Lemper', 'Jajan Pasar', 25000, 'images/kue/kue (10).jpg'),
(11, 'Nastar', 'Kue Kering', 62500, 'images/kue/kue (11).jpg'),
(12, 'Pie Isi Vla Buah', 'Jajan Pasar', 3250, 'images/kue/kue (12).jpg'),
(13, 'Pie Biasa', 'Jajan Pasar', 2500, 'images/kue/kue (13).jpg'),
(14, 'Putri Salju', 'Kue Kering', 55000, 'images/kue/kue (14).jpg'),
(15, 'Risoles', 'Jajan Pasar', 3750, 'images/kue/kue (15).jpg'),
(16, 'Roll Tart Coklat Siram Coklat', 'Kue Lembut', 40000, 'images/kue/kue (16).jpg'),
(17, 'Roll Tart Coklat Siram Keju', 'Kue Lembut', 40000, 'images/kue/kue (17).jpg'),
(18, 'Roll Tart Kuning Rasa Strawberry', 'Kue Lembut', 32500, 'images/kue/kue (18).jpg'),
(19, 'Roll Tart Kuning Rasa Nanas', 'Kue Lembut', 60000, 'images/kue/kue (19).jpg'),
(20, 'Roll Tart Kuning Rasa Blueberry', 'Kue Lembut', 32500, 'images/kue/kue (20).jpg'),
(21, 'Roll Tart Kuning Siram Keju', 'Kue Lembut', 38500, 'images/kue/kue (21).jpg'),
(983, 'Kue Nampan Kecil', 'Jajan Pasar', 45000, 'images/kue/kue (9).jpg'),
(8948, 'Kue Nastar Istimewa', 'Kue Kering', 82500, 'images/kue/kue (11).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `isAdmin`, `nama`) VALUES
(1, 'saiful', '123456789', 1, 'saiful indra cahya'),
(2, 'surya', '123456789', 0, 'suryansyah'),
(3, 'surya', '123456789', 0, 'suryansyah'),
(4, 'yuki', '123456789', 0, 'yuki kato'),
(5, 'sigit', '123456789', 0, 'sigit dharmawan'),
(6, 'yanti', '123456789', 0, 'suyanti abdi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `datapenjualan`
--
ALTER TABLE `datapenjualan`
  ADD PRIMARY KEY (`id_pen`);

--
-- Indexes for table `kue`
--
ALTER TABLE `kue`
  ADD PRIMARY KEY (`id_kue`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `datapenjualan`
--
ALTER TABLE `datapenjualan`
  MODIFY `id_pen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
