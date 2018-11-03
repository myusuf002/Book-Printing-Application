-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 03, 2018 at 02:52 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

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

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `role` enum('admin','superadmin') NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `email`, `password`, `role`) VALUES
(1, 'fikriaksan17@gmail.com', 'fikriaksan', 'superadmin');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

DROP TABLE IF EXISTS `buku`;
CREATE TABLE IF NOT EXISTS `buku` (
  `id_buku` int(11) NOT NULL AUTO_INCREMENT,
  `id_pelanggan` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `sinopsis` text NOT NULL,
  `jum_hal` int(11) NOT NULL,
  `file_buku` text NOT NULL,
  `file_sampul` text,
  PRIMARY KEY (`id_buku`),
  KEY `id_pelanggan` (`id_pelanggan`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `id_pelanggan`, `judul`, `sinopsis`, `jum_hal`, `file_buku`, `file_sampul`) VALUES
(14, 9, 'Jentera Lepas', 'Jentera adalah roda pemintal benang. Jika jentera lepas, benang akan beruraian kusut. Demikian juga kehidupan, diputar oleh jentera nasib masing-masing. Tangan-tangan tak terlihat, tak tepermanai raksasanya, mengusutkan jalan kehidupan. Siapa pula yang masih mau menggulung benang kehidupan yang morat-marit? Siapa pun mungkin saja hidupnya menjadi kusut, atau malahan ikut mengusutkan kehidupan orang lain. Namun, dalam kekusutan itu sebenarnya bisa ditemukan harga kehidupan itu sendiri.', 264, '9_buku_short_fuzzy_logic_tutorial.pdf', '9_sampul_short_fuzzy_logic_tutorial.pdf'),
(15, 9, 'Gadisku di Masa Lalu', 'Jika kehormatan dipandang melekat pada kesucian seorang perawan, nista apa lagi bandingannya yang dapat ditanggungkan seorang suami yang merasa tertipu pada malam pengantinnya? Harga diri yang berasal dari kekayaan hanyalah semu. Orang hanya menghargai kekayaan itu, bukan diri pemiliknya. Tapi kalau seseorang memiliki kesucian diri, kapan pun, di mana pun, orang akan tetap menghargainya.', 152, '9_buku_844949_SK-Kalender-Akademik-Periode-Ganjil-2018-2 (1).pdf', '9_sampul_844949_SK-Kalender-Akademik-Periode-Ganjil-2018-2 (1).pdf'),
(16, 9, 'Theodore Boone#5: Sang Buronan (The Fugitive)', 'Theo tidak sabar ingin segera pergi ke Washington, DC bersama teman-teman sekolahnya. Menginap empat malam di hotel pencakar langit dan mengunjungi berbagai tempat terkenal di sana pasti bakal seru sekali! Namun semua keseruan itu langsung digantikan pengalaman menegangkan lain: Theo yakin ia melihat Pete Duffy, tersangka pembunuhan yang kini jadi buronan FBI. Tekadnya untuk menegakkan keadilan berhasil menyeret Duffy kembali ke meja hijau, tapi jalan yang harus ditempuh masih sangat panjang. Dan itu berarti, Theo kembali berhadapan dengan bahaya.', 280, '9_buku_Laporan Tugas 2 Fuzzy Logic.pdf', '9_sampul_Laporan Tugas 2 Fuzzy Logic.pdf'),
(17, 9, 'Love Letters From a Father (Surat Cinta Dari Ayah)', 'Ini mungkin buku pertama di dunia. Yaitu buku yang ditulis oleh seorang ayah sebagai hadiah ulang tahun ke-10 putrinya.\r\n\r\nIsinya berupa 24 cerita yang ditulis dengan mengambil bentuk surat. Tema yang dibahas cukup luas.\r\n\r\nAda cerita fiksi anjing kecil yang menolong burung flamengo. Ada cerita tentang cara menjadi bahagia dengan sederhana dan sangat mudah. Ada pula cerita tentang pentingnya ilmu pengetahuan dalam kehidupan. Ada kisah-kisah tentang musik dan musisi. Ada tentang aneka ragam jenis lukisan dan gaya pelukisnya.\r\n\r\nAda pula kisah-kisah tentang kegigihan manusia dalam menolong sesama. Juga cerita tentang anak miskin yang tak ragu bersekolah meski ia sendiri kekurangan.\r\n\r\nMeskipun kisah-kisah dalam buku ini ditulis oleh seorang ayah untuk gadis kecilnya, kearifan hidup di dalamnya akan berguna pula bagi anak-anak lain dan para orang tua mereka.', 124, '9_buku_PENGUMUMAN UJIAN SUSULAN GANJIL 2018-2019.pdf', '9_sampul_PENGUMUMAN UJIAN SUSULAN GANJIL 2018-2019.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `detail_dicetak`
--

DROP TABLE IF EXISTS `detail_dicetak`;
CREATE TABLE IF NOT EXISTS `detail_dicetak` (
  `id_dicetak` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `id_kertas_isi` int(11) NOT NULL,
  `id_kertas_sampul` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  KEY `id_buku` (`id_buku`),
  KEY `id_dicetak` (`id_dicetak`),
  KEY `id_kertas_isi` (`id_kertas_isi`),
  KEY `id_kertas_sampul` (`id_kertas_sampul`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detail_pembayaran`
--

DROP TABLE IF EXISTS `detail_pembayaran`;
CREATE TABLE IF NOT EXISTS `detail_pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_dicetak` int(11) NOT NULL,
  `subtotal` double NOT NULL,
  KEY `id_dicetak` (`id_dicetak`),
  KEY `id_pembayaran` (`id_pembayaran`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dicetak`
--

DROP TABLE IF EXISTS `dicetak`;
CREATE TABLE IF NOT EXISTS `dicetak` (
  `id_dicetak` int(11) NOT NULL AUTO_INCREMENT,
  `id_percetakan` int(11) NOT NULL,
  `status` varchar(15) NOT NULL,
  `tgl_perubahan` datetime NOT NULL,
  PRIMARY KEY (`id_dicetak`),
  KEY `id_percetakan` (`id_percetakan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `diolah`
--

DROP TABLE IF EXISTS `diolah`;
CREATE TABLE IF NOT EXISTS `diolah` (
  `id_diolah` int(11) NOT NULL AUTO_INCREMENT,
  `id_pembayaran` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `tgl` datetime NOT NULL,
  PRIMARY KEY (`id_diolah`),
  KEY `id_admin` (`id_admin`),
  KEY `id_pembayaran` (`id_pembayaran`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kertas`
--

DROP TABLE IF EXISTS `kertas`;
CREATE TABLE IF NOT EXISTS `kertas` (
  `id_kertas` int(11) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(30) NOT NULL,
  `harga` double NOT NULL,
  PRIMARY KEY (`id_kertas`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kertas`
--

INSERT INTO `kertas` (`id_kertas`, `jenis`, `harga`) VALUES
(1, 'A4 Karton Manila', 450),
(3, 'A1 Karton Hard', 3500),
(4, 'A4 HVS 500 Gram', 150);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE IF NOT EXISTS `pelanggan` (
  `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `provinsi` varchar(40) NOT NULL,
  `kota` varchar(40) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kode_pos` varchar(5) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `email`, `password`, `nama`, `provinsi`, `kota`, `alamat`, `kode_pos`, `no_hp`, `jk`) VALUES
(9, 'fikriaksan@hotmail.com', 'fikriaksan', 'Muhammad Fikri Ahsan Mujhar', 'Sulawesi Selatan', 'Makassar', 'Jl. Sukabirus No. C5', '14045', '081242282643', 'L'),
(10, 'asd@asd', 'asdasdasd', 'asd', 'asdasdasd', 'asdasd', 'asdasdasd', '12312', '1231231231', 'L');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

DROP TABLE IF EXISTS `pembayaran`;
CREATE TABLE IF NOT EXISTS `pembayaran` (
  `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT,
  `id_pelanggan` int(11) NOT NULL,
  `tgl_pembayaran` datetime NOT NULL,
  `status` varchar(15) NOT NULL,
  `metode_pembayaran` varchar(15) NOT NULL,
  `total` double NOT NULL,
  PRIMARY KEY (`id_pembayaran`),
  KEY `id_pelanggan` (`id_pelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `percetakan`
--

DROP TABLE IF EXISTS `percetakan`;
CREATE TABLE IF NOT EXISTS `percetakan` (
  `id_percetakan` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `provinsi` varchar(40) NOT NULL,
  `kota` varchar(40) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kode_pos` varchar(5) NOT NULL,
  `jum_buku` int(11) DEFAULT '0',
  `file_profil` text,
  PRIMARY KEY (`id_percetakan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `percetakan`
--

INSERT INTO `percetakan` (`id_percetakan`, `nama`, `email`, `password`, `no_hp`, `provinsi`, `kota`, `alamat`, `kode_pos`, `jum_buku`, `file_profil`) VALUES
(1, 'PT. Agung Buku', 'agung@gmail.com', 'asdasdasd', '081234234343', 'Jawa Barat', 'Bandung', 'Jl. Jendral Sudirman', '10045', 0, '1_profil_twitter.png'),
(2, 'Ozaimedia', 'ozaimedia@gmail.com', 'asdasdasd', '081222333444', 'Jawa Barat', 'Kabupaten Bandung', 'Jl. Sukabirus Gang Selamet 2 No. C5', '50234', 0, '2_profil_icon.png'),
(3, 'Insta Group', 'insta@gmail.com', 'asdasdasd', '089122344566', 'Sulawesi Selatan', 'Makassar', 'Kompleks Cluster Graha Inayah Blok A No. 6', '40456', 0, '3_profil_instagram.png'),
(4, 'Gramedia', 'gramedia@gmail.com', 'asdasdasd', '089988766544', 'Jawa Barat', 'Kabupaten Bandung', 'Jl. Terusan Buah Batu No. 98', '56003', 0, NULL);

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
