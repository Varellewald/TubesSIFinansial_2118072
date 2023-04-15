-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 08:00 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pt_java_footwears_sportindo`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_gudang`
--

CREATE TABLE `data_gudang` (
  `Id_kategori_sepatu` varchar(15) NOT NULL,
  `Id_gudang` varchar(15) NOT NULL,
  `Nama_gudang` varchar(20) NOT NULL,
  `Alamat_gudang` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_kategori_sepatu`
--

CREATE TABLE `data_kategori_sepatu` (
  `Id_kategori_sepatu` varchar(15) NOT NULL,
  `nama_kategori_sepatu` varchar(20) NOT NULL,
  `jenis_kategori_sepatu` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_mutasi_stok_antar_gudang`
--

CREATE TABLE `data_mutasi_stok_antar_gudang` (
  `Id_mutasi` varchar(15) NOT NULL,
  `Id_gudang` varchar(15) NOT NULL,
  `Id_stok` varchar(15) NOT NULL,
  `id_sepatu` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_outlet`
--

CREATE TABLE `data_outlet` (
  `id_gudang` varchar(20) NOT NULL,
  `Id_outlet` varchar(15) NOT NULL,
  `Nama_outlet` varchar(20) NOT NULL,
  `Alamat_outlet` varchar(20) NOT NULL,
  `No_hp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `Id_pegawai` varchar(15) NOT NULL,
  `Nama_pegawai` varchar(20) NOT NULL,
  `Id_pengiriman` varchar(15) NOT NULL,
  `Alamat_pegawai` varchar(20) NOT NULL,
  `No_hp` varchar(12) NOT NULL,
  `Jabatan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_pengguna`
--

CREATE TABLE `data_pengguna` (
  `Id_pengguna` varchar(15) NOT NULL,
  `Id_pegawai` varchar(15) NOT NULL,
  `Nama_Pengguna` varchar(20) NOT NULL,
  `Alamat_pengguna` varchar(20) NOT NULL,
  `No_hp` varchar(12) NOT NULL,
  `Email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_pengiriman`
--

CREATE TABLE `data_pengiriman` (
  `Id_pengiriman` varchar(15) NOT NULL,
  `Id_mutasi` varchar(15) NOT NULL,
  `Id_outlet` varchar(15) NOT NULL,
  `Id_pegawai` varchar(15) NOT NULL,
  `tanggal_Pengiriman` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_sepatu`
--

CREATE TABLE `data_sepatu` (
  `Id_sepatu` varchar(15) NOT NULL,
  `Jenis_sepatu` varchar(15) NOT NULL,
  `nama_sepatu` varchar(10) NOT NULL,
  `harga_sepatu` int(8) NOT NULL,
  `Stok_sepatu` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_stok_sepatu`
--

CREATE TABLE `data_stok_sepatu` (
  `Id_stok` varchar(15) NOT NULL,
  `Id_gudang` varchar(15) NOT NULL,
  `jumlah_stok_sepatu` varchar(20) NOT NULL,
  `Id_sepatu` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_supplier`
--

CREATE TABLE `data_supplier` (
  `Id_supplier` varchar(15) NOT NULL,
  `Id_outlet` varchar(15) NOT NULL,
  `Nama_supplier` varchar(20) NOT NULL,
  `Alamat_supplier` varchar(20) NOT NULL,
  `No_hp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_transaksi`
--

CREATE TABLE `data_transaksi` (
  `Id_transaksi` varchar(15) NOT NULL,
  `Id_sepatu` varchar(15) NOT NULL,
  `Id_pengguna` varchar(15) NOT NULL,
  `Id_pengiriman` varchar(15) NOT NULL,
  `jumlah_pembelian` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_gudang`
--
ALTER TABLE `data_gudang`
  ADD PRIMARY KEY (`Id_gudang`),
  ADD KEY `Id_kategori_sepatu` (`Id_kategori_sepatu`);

--
-- Indexes for table `data_kategori_sepatu`
--
ALTER TABLE `data_kategori_sepatu`
  ADD PRIMARY KEY (`Id_kategori_sepatu`);

--
-- Indexes for table `data_mutasi_stok_antar_gudang`
--
ALTER TABLE `data_mutasi_stok_antar_gudang`
  ADD PRIMARY KEY (`Id_mutasi`),
  ADD KEY `Id_gudang` (`Id_gudang`);

--
-- Indexes for table `data_outlet`
--
ALTER TABLE `data_outlet`
  ADD PRIMARY KEY (`Id_outlet`),
  ADD KEY `id_gudang` (`id_gudang`);

--
-- Indexes for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`Id_pegawai`),
  ADD KEY `Id_pengiriman` (`Id_pengiriman`);

--
-- Indexes for table `data_pengguna`
--
ALTER TABLE `data_pengguna`
  ADD PRIMARY KEY (`Id_pengguna`),
  ADD KEY `Id_pegawai` (`Id_pegawai`);

--
-- Indexes for table `data_pengiriman`
--
ALTER TABLE `data_pengiriman`
  ADD PRIMARY KEY (`Id_pengiriman`),
  ADD KEY `Id_outlet` (`Id_outlet`),
  ADD KEY `Id_mutasi` (`Id_mutasi`);

--
-- Indexes for table `data_sepatu`
--
ALTER TABLE `data_sepatu`
  ADD PRIMARY KEY (`Id_sepatu`);

--
-- Indexes for table `data_stok_sepatu`
--
ALTER TABLE `data_stok_sepatu`
  ADD PRIMARY KEY (`Id_stok`),
  ADD KEY `Id_sepatu` (`Id_sepatu`),
  ADD KEY `Id_sepatu_2` (`Id_sepatu`),
  ADD KEY `Id_sepatu_3` (`Id_sepatu`);

--
-- Indexes for table `data_supplier`
--
ALTER TABLE `data_supplier`
  ADD PRIMARY KEY (`Id_supplier`),
  ADD KEY `Id_outlet` (`Id_outlet`);

--
-- Indexes for table `data_transaksi`
--
ALTER TABLE `data_transaksi`
  ADD PRIMARY KEY (`Id_transaksi`),
  ADD KEY `Id_pengguna` (`Id_pengguna`),
  ADD KEY `Id_pengiriman` (`Id_pengiriman`),
  ADD KEY `Id_sepatu` (`Id_sepatu`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_gudang`
--
ALTER TABLE `data_gudang`
  ADD CONSTRAINT `data_gudang_ibfk_1` FOREIGN KEY (`Id_gudang`) REFERENCES `data_stok_sepatu` (`Id_stok`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `data_gudang_ibfk_2` FOREIGN KEY (`Id_kategori_sepatu`) REFERENCES `data_kategori_sepatu` (`Id_kategori_sepatu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_mutasi_stok_antar_gudang`
--
ALTER TABLE `data_mutasi_stok_antar_gudang`
  ADD CONSTRAINT `data_mutasi_stok_antar_gudang_ibfk_1` FOREIGN KEY (`Id_gudang`) REFERENCES `data_gudang` (`Id_gudang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_outlet`
--
ALTER TABLE `data_outlet`
  ADD CONSTRAINT `data_outlet_ibfk_1` FOREIGN KEY (`id_gudang`) REFERENCES `data_gudang` (`Id_gudang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD CONSTRAINT `data_pegawai_ibfk_1` FOREIGN KEY (`Id_pengiriman`) REFERENCES `data_pengiriman` (`Id_pengiriman`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_pengguna`
--
ALTER TABLE `data_pengguna`
  ADD CONSTRAINT `data_pengguna_ibfk_1` FOREIGN KEY (`Id_pegawai`) REFERENCES `data_pegawai` (`Id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_pengiriman`
--
ALTER TABLE `data_pengiriman`
  ADD CONSTRAINT `data_pengiriman_ibfk_1` FOREIGN KEY (`Id_mutasi`) REFERENCES `data_mutasi_stok_antar_gudang` (`Id_mutasi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_sepatu`
--
ALTER TABLE `data_sepatu`
  ADD CONSTRAINT `data_sepatu_ibfk_1` FOREIGN KEY (`Id_sepatu`) REFERENCES `data_stok_sepatu` (`Id_sepatu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_supplier`
--
ALTER TABLE `data_supplier`
  ADD CONSTRAINT `data_supplier_ibfk_1` FOREIGN KEY (`Id_outlet`) REFERENCES `data_outlet` (`Id_outlet`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_transaksi`
--
ALTER TABLE `data_transaksi`
  ADD CONSTRAINT `data_transaksi_ibfk_1` FOREIGN KEY (`Id_pengiriman`) REFERENCES `data_pengiriman` (`Id_pengiriman`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `data_transaksi_ibfk_2` FOREIGN KEY (`Id_sepatu`) REFERENCES `data_sepatu` (`Id_sepatu`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
