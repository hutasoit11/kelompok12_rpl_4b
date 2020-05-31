-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2020 at 03:27 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `nim` int(13) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `prodi` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_anggota`
--

INSERT INTO `tb_anggota` (`nim`, `nama`, `tempat_lahir`, `tgl_lahir`, `jk`, `prodi`) VALUES
(1810631170, 'Calvin CS Hutasoit', 'Makassar', '1999-11-12', 'L', 'Teknik Informatika'),
(1810631171, 'Ginal Fikri Alhhakim', 'Jakarta', '1999-11-13', 'L', 'Teknik Informatika'),
(1810631172, 'Dina Andriani', 'Sukabumi', '2000-06-05', 'P', 'Sistem Informasi'),
(1810631173, 'Rina Pangesti', 'Manado', '2000-09-12', 'P', 'Sistem Informasi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id` int(9) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `penerbit` varchar(150) NOT NULL,
  `tahun_terbit` varchar(4) NOT NULL,
  `isbn` varchar(25) NOT NULL,
  `jumlah_buku` int(3) NOT NULL,
  `lokasi` enum('rak1','rak2','rak3') NOT NULL,
  `tgl_input` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`id`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `jumlah_buku`, `lokasi`, `tgl_input`) VALUES
(1, 'Belajar Pemrograman', 'Sri Mariani ', 'Sinar Dunia', '2009', '12345QDF', 25, 'rak1', '2019-10-17'),
(2, 'Rekayasa Perangkat Lunak', 'Raffi Ramdani', 'Mulia Harta', '2012', '45678RTD', 11, 'rak2', '2020-02-18'),
(3, 'Cara Cepat Paham Android', 'Rio Maryanto', 'Gramedia', '2010', '27364EFT', 44, 'rak3', '2020-01-14'),
(4, 'Cara Cepat Bisa Ngoding', 'Ayu Ryanti', 'Bhinneka', '2012', '45672ERT', 60, 'rak1', '2020-04-13'),
(5, 'Informatika Asik', 'Muhammad Akmal', 'Erlangga', '2015', '57839WEG', 55, 'rak3', '2019-12-17'),
(6, 'Ayo belajar PhP', 'Bagaskara', 'Kita Bisa', '2016', '38593WDG', 39, 'rak2', '2020-05-29');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id` int(10) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `nim` varchar(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `tgl_pinjam` varchar(30) NOT NULL,
  `tgl_kembali` varchar(30) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id`, `judul`, `nim`, `nama`, `tgl_pinjam`, `tgl_kembali`, `status`) VALUES
(1, 'Belajar Pemrograman', '1810631170', 'Calvin CS Hutasoit', '31-05-2020', '07-06-2020', 'kembali'),
(2, 'Cara Cepat Paham Android', '1810631171', 'Ginal Fikri Alhakim', '29-05-2020', '12-06-20', 'pinjam'),
(3, 'Ayo belajar PhP', '1810631173', 'Rina Pangesti', '30-05-2020', '06-06-2020', ''),
(4, 'Informatika Asik', '1810631172', 'Dina Andriani', '30-05-2020', '06-06-2020', 'kembali'),
(5, 'Rekayasa Perangkat Lunak', '1810631171', 'Ginal Fikri Alhhakim', '30-05-2020', '06-06-2020', 'kembali'),
(6, 'Ayo belajar PhP', '1810631172', 'Dina Andriani', '30-05-2020', '06-06-2020', 'kembali'),
(7, 'Ayo belajar PhP', '1810631170', 'Calvin CS Hutasoit', '30-05-2020', '06-06-2020', 'kembali'),
(8, 'Cara Cepat Paham Android', '1810631173', 'Rina Pangesti', '30-05-2020', '06-06-2020', 'kembali'),
(9, 'Belajar Pemrograman', '1810631173', 'Rina Pangesti', '15-05-2020', '22-05-2020', 'pinjam');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `level` varchar(30) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `nama`, `level`, `foto`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', 'gambar1.png'),
(2, 'user', 'user', 'user', 'user', 'gambar2.png'),
(3, 'calvin', '12345', 'Calvin Hutasoit', 'user', 'gambar3.png'),
(4, 'Ginal', '12345', 'Ginal Fikri', 'user', 'gambar4.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_buku`
--
ALTER TABLE `tb_buku`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
