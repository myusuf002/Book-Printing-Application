-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2018 at 11:13 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_chiko`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `role` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `sinopsis` text NOT NULL,
  `jum_hal` int(11) NOT NULL,
  `file_buku` varchar(50) NOT NULL,
  `file_sampul` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detail_dicetak`
--

CREATE TABLE `detail_dicetak` (
  `id_dicetak` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `id_kertas_isi` int(11) NOT NULL,
  `id_kertas_sampul` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detail_pembayaran`
--

CREATE TABLE `detail_pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_dicetak` int(11) NOT NULL,
  `subtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dicetak`
--

CREATE TABLE `dicetak` (
  `id_dicetak` int(11) NOT NULL,
  `id_percetakan` int(11) NOT NULL,
  `status` varchar(15) NOT NULL,
  `tgl_perubahan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `diolah`
--

CREATE TABLE `diolah` (
  `id_diolah` int(11) NOT NULL,
  `id_pembayaran` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `tgl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kertas`
--

CREATE TABLE `kertas` (
  `id_kertas` int(11) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `provinsi` varchar(40) NOT NULL,
  `kota` varchar(40) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kode_pos` varchar(5) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `jk` enum('L','P') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `tgl_pembayaran` datetime NOT NULL,
  `status` varchar(15) NOT NULL,
  `metode_pembayaran` varchar(15) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `percetakan`
--

CREATE TABLE `percetakan` (
  `id_percetakan` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `provinsi` varchar(40) NOT NULL,
  `kota` varchar(40) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kode_pos` varchar(5) NOT NULL,
  `jum_buku` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `detail_dicetak`
--
ALTER TABLE `detail_dicetak`
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `id_dicetak` (`id_dicetak`),
  ADD KEY `id_kertas_isi` (`id_kertas_isi`),
  ADD KEY `id_kertas_sampul` (`id_kertas_sampul`);

--
-- Indexes for table `detail_pembayaran`
--
ALTER TABLE `detail_pembayaran`
  ADD KEY `id_dicetak` (`id_dicetak`),
  ADD KEY `id_pembayaran` (`id_pembayaran`);

--
-- Indexes for table `dicetak`
--
ALTER TABLE `dicetak`
  ADD PRIMARY KEY (`id_dicetak`),
  ADD KEY `id_percetakan` (`id_percetakan`);

--
-- Indexes for table `diolah`
--
ALTER TABLE `diolah`
  ADD PRIMARY KEY (`id_diolah`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `id_pembayaran` (`id_pembayaran`);

--
-- Indexes for table `kertas`
--
ALTER TABLE `kertas`
  ADD PRIMARY KEY (`id_kertas`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `percetakan`
--
ALTER TABLE `percetakan`
  ADD PRIMARY KEY (`id_percetakan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dicetak`
--
ALTER TABLE `dicetak`
  MODIFY `id_dicetak` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diolah`
--
ALTER TABLE `diolah`
  MODIFY `id_diolah` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kertas`
--
ALTER TABLE `kertas`
  MODIFY `id_kertas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `percetakan`
--
ALTER TABLE `percetakan`
  MODIFY `id_percetakan` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_dicetak`
--
ALTER TABLE `detail_dicetak`
  ADD CONSTRAINT `detail_dicetak_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_dicetak_ibfk_2` FOREIGN KEY (`id_dicetak`) REFERENCES `dicetak` (`id_dicetak`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_dicetak_ibfk_3` FOREIGN KEY (`id_kertas_isi`) REFERENCES `kertas` (`id_kertas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_dicetak_ibfk_4` FOREIGN KEY (`id_kertas_sampul`) REFERENCES `kertas` (`id_kertas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_pembayaran`
--
ALTER TABLE `detail_pembayaran`
  ADD CONSTRAINT `detail_pembayaran_ibfk_1` FOREIGN KEY (`id_dicetak`) REFERENCES `dicetak` (`id_dicetak`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_pembayaran_ibfk_2` FOREIGN KEY (`id_pembayaran`) REFERENCES `pembayaran` (`id_pembayaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dicetak`
--
ALTER TABLE `dicetak`
  ADD CONSTRAINT `dicetak_ibfk_1` FOREIGN KEY (`id_percetakan`) REFERENCES `percetakan` (`id_percetakan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `diolah`
--
ALTER TABLE `diolah`
  ADD CONSTRAINT `diolah_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `diolah_ibfk_2` FOREIGN KEY (`id_pembayaran`) REFERENCES `pembayaran` (`id_pembayaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
