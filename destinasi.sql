-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2020 at 01:29 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `destinasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(20) NOT NULL,
  `nama_kat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kat`) VALUES
(1, 'Gunung'),
(2, 'Pantai'),
(3, 'Wahana'),
(4, 'Taman'),
(5, 'Air Terjun');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(20) NOT NULL,
  `id_wisata` int(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `komentar` text NOT NULL,
  `rating` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_wisata`, `email`, `komentar`, `rating`) VALUES
(32, 9, 'putriayuzartika.pa@gmail.com', '12222222222221111111111111111', 2);

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` int(20) NOT NULL,
  `nama_wisata` varchar(40) NOT NULL,
  `id_kategori` int(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `info` text NOT NULL,
  `jam_buka` varchar(10) NOT NULL,
  `jam_tutup` varchar(10) NOT NULL,
  `harga` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `nama_wisata`, `id_kategori`, `alamat`, `info`, `jam_buka`, `jam_tutup`, `harga`) VALUES
(8, 'Coban Talun ', 5, 'Jl. Silikat 7 41A', 'Coban Talun adalah salah satu destinasi wisata di Kota Batu, Jawa Timur. Coban berarti air terjun, sehingga di sini sajian wisata utamanya adalah air terjun. Meski nantinya juga ada wana wisata lain di sekitar wisata air terjun tersebut.\r\nSelama perjalanan menuju ke sini, pengunjung akan disuguhi pemandangan yang sangat indah. Pemandangan pegunungan siap menyambut dan memanjakan mata, karena letaknya berada pada sisi barat Gunung Arjuno. Di sepanjang jalan juga terdapat aneka wisata tanaman hias yang tak kalah indahnya.', '02:00 AM', '02:30 PM', '18.000'),
(9, 'rumah', 3, 'Jl. Silikat 7 41A', 'bagus pokok wehehehehehehe aww mlu bbngeeeeeeeeeeeeeett', '09:45 AM', '09:45 AM', '12.000'),
(10, 'rumah asasa', 4, 'Jl. Silikat 7 41A', '122222222222222222222222222222222222222qwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwasssssssssssssssssssssssdffffffffffffffffff ghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhfccccrrrrrrrrrrrhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyshx hg', '02:00 PM', '02:30 PM', '12.000'),
(11, 'Coban Talun sddsdsds', 4, 'Jl. Silikat 7 41A sa', 'q', '04:00 PM', '04:45 PM', '18.000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `komentar_ibfk_1` (`id_wisata`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`),
  ADD KEY `wisata_ibfk_1` (`id_kategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`id_wisata`) REFERENCES `wisata` (`id_wisata`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wisata`
--
ALTER TABLE `wisata`
  ADD CONSTRAINT `wisata_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
