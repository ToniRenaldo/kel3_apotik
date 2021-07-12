-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jul 2021 pada 01.36
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek_ppbo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_karyawan`
--

CREATE TABLE `data_karyawan` (
  `NIK` varchar(10) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `Umur` varchar(30) NOT NULL,
  `Jenis_kelamin` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `No_HP` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_karyawan`
--

INSERT INTO `data_karyawan` (`NIK`, `Nama`, `Alamat`, `Umur`, `Jenis_kelamin`, `Email`, `No_HP`) VALUES
('123', 'toni', 'dumai', '19', 'Laki-laki', 'toni@gmail.com', '0822145362'),
('123', 'toni', 'sudirman', '19', 'Laki-laki', 'toni@gmail.com', '08124525');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_obat`
--

CREATE TABLE `data_obat` (
  `ID_obat` varchar(10) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Jenis` varchar(30) NOT NULL,
  `Stok` varchar(30) NOT NULL,
  `Harga` varchar(30) NOT NULL,
  `Tanggal_expired` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_obat`
--

INSERT INTO `data_obat` (`ID_obat`, `Nama`, `Jenis`, `Stok`, `Harga`, `Tanggal_expired`) VALUES
('1', 'Paracetamol', 'Tablet', '3', '2000', '2022-07-12'),
('2', 'Ibuprofin', 'Tablet', '3', '3000', '2023-07-10'),
('3', 'Vitamin C', 'Tablet', '7', '250000', '2022-08-17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_penjualan`
--

CREATE TABLE `transaksi_penjualan` (
  `ID_transaksi` varchar(10) NOT NULL,
  `ID_obat` varchar(10) NOT NULL,
  `Nama_obat` varchar(30) NOT NULL,
  `Jenis_obat` varchar(30) NOT NULL,
  `Harga_obat` varchar(30) NOT NULL,
  `Jumlah_obat` varchar(30) NOT NULL,
  `Tanggal_penjualan` date NOT NULL,
  `Jumlah_harga` varchar(30) NOT NULL,
  `Total_bayar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `data_obat`
--
ALTER TABLE `data_obat`
  ADD PRIMARY KEY (`ID_obat`);

--
-- Indeks untuk tabel `transaksi_penjualan`
--
ALTER TABLE `transaksi_penjualan`
  ADD PRIMARY KEY (`ID_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
