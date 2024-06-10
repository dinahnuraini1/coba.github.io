-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Apr 2024 pada 10.20
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_management`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_activity`
--

CREATE TABLE `log_activity` (
  `id_activity` int(11) NOT NULL,
  `kd_user` varchar(255) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tc_tb_user`
--

CREATE TABLE `tc_tb_user` (
  `kd_user` varchar(10) NOT NULL,
  `nm_user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `passwordx` varchar(50) NOT NULL,
  `kd_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `tc_tb_user`
--

INSERT INTO `tc_tb_user` (`kd_user`, `nm_user`, `password`, `passwordx`, `kd_level`) VALUES
('58018', 'ANDY TUSANTO', '55511808baf7f301b5270d7334a4cec0', '123123aa', 2),
('44525', 'GUNAWAN YULIANTO', '83422503bcfc01d303030e8a7cc80efc', '123456789a', 1),
('73348', 'FATAHHUDI', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('73121', 'LALANG YULIANHAR', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('73116', 'AUFA RIZKY FAUZAN', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('51978', 'RUDI SETIYA', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('10136390', 'RUBEN (OS)', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('72065', 'PANDU WICAKSONO', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('10110182', 'MUHAMMAD OKTA HERMAWAN (OS)', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('46387', 'HERI PRASETYO', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('46368', 'SUPARNO', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('46383', 'SIGIT KRISTIANTO', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('47259', 'WAHYU WIDODO', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('46366', 'SARJONO', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('47275', 'SUGIYANTO', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('64503', 'ZAINAL FANANI', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('45516', 'SINGGIH SYAHID POERNOMO', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('64353', 'TAQWIM ISMAIL', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('45819', 'SUYITNO', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('41756', 'BANBANG S', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('46374', 'JAROT S', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('49961', 'MARWAN A', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('49764', 'HERNANDA', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('63847', 'WAHYU', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('46331', 'SUTRISNO', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('49584', 'IWAN PRAKOSO WIDHIHARTONO', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('65873', 'NICO AGENG PAMBUDI ', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('72061', 'FAIZ ATHAULLAH', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('45997', 'TRI RENI ZUFRIATI', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('74322', 'YUYUN TRI LESTARI', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('51968', 'RADEN EKO SURO SULISTIYO', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('72062', 'AWANDA ISANMIDI YANTO', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('71900', 'NURAHJI', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('73730', 'CYNTHIA ANGGIT WIJAYANTI', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('49786', 'ATMANTO', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('44539', 'JOKO SUWANDONO', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('71902', 'DEPI SETIAWAN', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('72661', 'ETIKA PUJI ASTUTI', '25d55ad283aa400af464c76d713c07ad', '12345678', 1),
('72771', 'VERRY HERMAWAN', '25d55ad283aa400af464c76d713c07ad', '12345678', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tc_tb_user_lvl`
--

CREATE TABLE `tc_tb_user_lvl` (
  `kd_level` int(11) NOT NULL,
  `nm_level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `tc_tb_user_lvl`
--

INSERT INTO `tc_tb_user_lvl` (`kd_level`, `nm_level`) VALUES
(1, 'User'),
(2, 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `log_activity`
--
ALTER TABLE `log_activity`
  ADD PRIMARY KEY (`id_activity`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `log_activity`
--
ALTER TABLE `log_activity`
  MODIFY `id_activity` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
