-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jul 22, 2021 at 04:40 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppbo`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_karyawan`
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
-- Dumping data for table `data_karyawan`
--

INSERT INTO `data_karyawan` (`NIK`, `Nama`, `Alamat`, `Umur`, `Jenis_kelamin`, `Email`, `No_HP`) VALUES
('102245', 'Iva Jovita Kalila', 'Jl. Gajah Mada', '20', 'Perempuan', 'iva@gmail.com', '089765321347'),
('102246', 'Putri Aurora', 'Jl. Umban Sari, Rumbai', '20', 'Perempuan', 'putri@gmail.com', '081234567215'),
('102247', 'Hideki Yogaswara', 'Jl. Tegal Sari', '21', 'Laki-laki', 'deki@gmail.com', '082256789043'),
('102248', 'Syifa Kamila', 'Jl. Sudirman', '20', 'Perempuan', 'syifa@gmail.com', '082255678009'),
('102249', 'Annisa Rahma', 'Jl. Paus', '21', 'Perempuan', 'nisa@gmail.com', '081089543211'),
('102250', 'Arthur Femeraldi', 'Jl. Yos Sudarso', '22', 'Laki-laki', 'arthur@gmail.com', '087654321906'),
('102251', 'Athaya Putra', 'Jl. Rowo Sari', '20', 'Laki-laki', 'putra@gmail.com', '095213276649'),
('102252', 'Aldi Yunanda', 'Jl. Patria Sari, Rumbai', '20', 'Laki-laki', 'aldi@gmail.com', '082256398713'),
('102253', 'Ibrahim Abdul Aziz', 'Jl. Cemara', '24', 'Laki-laki', 'ibrahim@gmail.com', '082256431298'),
('102254', 'Tarisa Laras Puspa', 'Jl. Inti Sari', '19', 'Perempuan', 'lala@gmail.com', '08523478976'),
('102255', 'Hairul Akbar', 'Jl. Bhakti', '21', 'Laki-laki', 'akbar@gmail.com', '082259217431');

-- --------------------------------------------------------

--
-- Table structure for table `data_obat`
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
-- Dumping data for table `data_obat`
--

INSERT INTO `data_obat` (`ID_obat`, `Nama`, `Jenis`, `Stok`, `Harga`, `Tanggal_expired`) VALUES
('101', 'Acarbose', 'Kapsul', '70', '40000', '2022-05-08'),
('102', 'Eyefit', 'Obat Tetes', '55', '37000', '2023-11-24'),
('103', 'Albhotyl', 'Obat Tetes', '30', '30000', '2022-09-10'),
('104', 'Kapsida', 'Kapsul', '40', '12000', '2023-01-08'),
('105', 'Osteokom', 'Tablet', '50', '149000', '2022-02-25'),
('106', 'Gentamicin', 'Obat Oles', '40', '40000', '2023-08-02'),
('107', 'Spasmal', 'Obat Cair', '45', '100000', '2023-01-18'),
('108', 'Bodrex', 'Tablet', '30', '20000', '2022-10-04'),
('109', 'Alpara', 'Tablet', '55', '95000', '2024-07-01'),
('110', 'Biovitan', 'Obat Cair', '40', '6000', '2023-07-13'),
('111', 'Combantrin', 'Tablet', '65', '70000', '2022-12-30'),
('112', 'OBH Combi', 'Obat Cair', '50', '12000', '2023-02-28'),
('113', 'Mixagrip', 'Tablet', '45', '2500', '2022-10-29'),
('114', 'Paracetamol', 'Tablet', '50', '2300', '2023-10-26'),
('115', 'Thermolyte Plus', 'Kapsul', '36', '66000', '2024-04-14'),
('116', 'Amoksisilin', 'Kapsul', '50', '38799', '2024-05-23'),
('117', 'Ibuprofen', 'Tablet', '55', '15593', '2024-11-06'),
('118', 'Itrakonazol', 'Kapsul', '45', '58482', '2023-12-27'),
('119', 'Valproat', 'Tablet', '60', '23467', '2025-01-01'),
('120', 'Zinc', 'Tablet', '65', '64125', '2024-08-17');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Nama_lengkap` varchar(40) NOT NULL,
  `Level` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Username`, `Password`, `Nama_lengkap`, `Level`) VALUES
('yola', 'yola', 'Yolanda Aulia', 'Owner'),
('iva', 'iva', 'Iva Jovita Kalila', 'Karyawan'),
('putra', 'putra', 'Athaya Putra', 'Karyawan'),
('syifa', 'syifa', 'Syifa Kamila', 'Karyawan'),
('yoga', 'yoga', 'Hideki Yogaswara', 'Karyawan'),
('nisa', 'nisa', 'Annisa Rahma', 'Karyawan');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_penjualan`
--

CREATE TABLE `transaksi_penjualan` (
  `ID_transaksi` varchar(10) NOT NULL,
  `ID_obat` varchar(10) NOT NULL,
  `Nama_obat` varchar(30) NOT NULL,
  `Jenis_obat` varchar(30) NOT NULL,
  `Tanggal_penjualan` date NOT NULL,
  `Jumlah_obat` varchar(30) NOT NULL,
  `Harga_satuan` varchar(30) NOT NULL,
  `Total_bayar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi_penjualan`
--

INSERT INTO `transaksi_penjualan` (`ID_transaksi`, `ID_obat`, `Nama_obat`, `Jenis_obat`, `Tanggal_penjualan`, `Jumlah_obat`, `Harga_satuan`, `Total_bayar`) VALUES
('TP01', '103', 'Albhotyl', 'Obat Tetes', '2021-01-31', '3', '30000', '90000'),
('TP02', '101', 'Acarbose', 'Kapsul', '2021-05-17', '3', '40000', '120000'),
('TP03', '105', 'Osteokom', 'Tablet', '2021-05-02', '2', '149000', '298000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_karyawan`
--
ALTER TABLE `data_karyawan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `data_obat`
--
ALTER TABLE `data_obat`
  ADD PRIMARY KEY (`ID_obat`);

--
-- Indexes for table `transaksi_penjualan`
--
ALTER TABLE `transaksi_penjualan`
  ADD PRIMARY KEY (`ID_transaksi`),
  ADD UNIQUE KEY `ID_obat` (`ID_obat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
