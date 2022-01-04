-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2021 at 04:45 AM
-- Server version: 10.4.21-MariaDB-log
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `produk`
--

-- --------------------------------------------------------

--
-- Table structure for table `kritiksaran`
--

CREATE TABLE `kritiksaran` (
  `nama` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `subjek` varchar(20) NOT NULL,
  `keterangan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kritiksaran`
--

INSERT INTO `kritiksaran` (`nama`, `email`, `subjek`, `keterangan`) VALUES
('budino', 'budiono@gmai.com', 'saran', 'saran saya untuk produk di update setiap satu bulan sekali'),
('fajar', 'fajar@gmail.com', 'kritik', 'kurang fitur'),
('zakaria', 'jaka@gmail.com', 'kritik', 'bismillah');

-- --------------------------------------------------------

--
-- Table structure for table `produk_detail`
--

CREATE TABLE `produk_detail` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `harga` int(10) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk_detail`
--

INSERT INTO `produk_detail` (`id`, `nama`, `jenis`, `harga`, `gambar`, `keterangan`) VALUES
(1, 'gelas tanggung', 'souvenir', 2500, 'gambar1.jpeg', 'Souvenir Gelas ini sangat cocok untuk kalian yang ingin acara pernikahan terdapat souvenir sebagai kenang-kenangan, Harga diatas adalah harga per pcs'),
(2, 'kipas bambu', 'souvenir', 2500, 'kipas.jpg', 'Souvenir Kipas Bambu ini sangat cocok untuk kalian yang ingin acara pernikahan terdapat souvenir sebagai kenang-kenangan, Harga diatas adalah harga per pcs'),
(3, 'nota', 'buku', 210000, 'nota.png', 'Nota digunakan sebagai tanda terima pesanan ketika kalian mendapatkan pesanan dari konsumen, Harga diatas adalah harga per RIM kertas HVS');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kritiksaran`
--
ALTER TABLE `kritiksaran`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `produk_detail`
--
ALTER TABLE `produk_detail`
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
-- AUTO_INCREMENT for table `produk_detail`
--
ALTER TABLE `produk_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
