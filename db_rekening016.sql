-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 21, 2014 at 03:08 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_rekening016`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_login`
--

CREATE TABLE IF NOT EXISTS `t_login` (
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_login`
--

INSERT INTO `t_login` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `t_nasabah`
--

CREATE TABLE IF NOT EXISTS `t_nasabah` (
  `norek` int(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `pin` varchar(6) NOT NULL,
  `saldo` double NOT NULL,
  PRIMARY KEY (`norek`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_nasabah`
--

INSERT INTO `t_nasabah` (`norek`, `nama`, `pin`, `saldo`) VALUES
(120000, 'Dadang Konelo', '123456', 1000000),
(120001, 'Adithio Agustyan', '123456', 30000),
(120002, 'Faris Abdurrahman', '061194', 978500),
(120003, 'Akew', '123456', 7991250),
(120004, 'Binsar Prakarsa', '123456', 90000),
(120005, 'Dadang Kuciah', '1111', 1234567890),
(120006, 'Orang Kaya', '9999', 8989100000),
(120007, 'Rizaldi Fatah Sidik', '123456', 2890000),
(120008, 'Asep Bedog', '123456', 30000),
(120009, 'Siti Geboy', '1111', 1045000);

-- --------------------------------------------------------

--
-- Table structure for table `t_transfer`
--

CREATE TABLE IF NOT EXISTS `t_transfer` (
  `id_transfer` int(10) NOT NULL,
  `norek` int(11) NOT NULL,
  `notuj` int(11) NOT NULL,
  `jumlah` double NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_transfer`),
  KEY `norek` (`norek`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_transfer`
--

INSERT INTO `t_transfer` (`id_transfer`, `norek`, `notuj`, `jumlah`, `keterangan`, `tanggal`) VALUES
(11, 120006, 120021, 1000000, 'Selamat', '2012-12-12'),
(12, 120006, 120016, 1000000, 'Bagi-bagi duit', '2013-12-12'),
(14, 120006, 120016, 1000000, 'Coba lagi', '2014-01-01'),
(15, 120006, 120016, 1000000, 'Lagi dong!', '2014-02-01'),
(92212, 120006, 120016, 900000, 'Mau lagi dong', '2014-03-02'),
(92213, 120006, 120016, 900000, 'Ambil aja buat jajan', '2014-03-02'),
(1233321, 120007, 120004, 10000, 'Beliin cilok', '2014-01-02');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_transfer`
--
ALTER TABLE `t_transfer`
  ADD CONSTRAINT `t_transfer_ibfk_1` FOREIGN KEY (`norek`) REFERENCES `t_nasabah` (`norek`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
