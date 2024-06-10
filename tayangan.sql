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
-- Database: `tayangan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `playlist`
--

CREATE TABLE `playlist` (
  `id_list` int(11) NOT NULL,
  `id_content` varchar(50) NOT NULL,
  `nama_content` varchar(50) NOT NULL,
  `id_stasiun` int(11) NOT NULL,
  `nama_stasiun` varchar(255) NOT NULL,
  `file_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `playlist`
--

INSERT INTO `playlist` (`id_list`, `id_content`, `nama_content`, `id_stasiun`, `nama_stasiun`, `file_name`) VALUES
(33, 'content_11', 'Video KAI ACCESS', 14, 'STASIUN JOMBANG', 'content_11.mp4'),
(34, 'content_12', '7 menit sebelum KA Berangkat', 14, 'STASIUN JOMBANG', 'content_12.mp4'),
(35, 'content_13', 'New Spirit KAI ACCESS', 14, 'STASIUN JOMBANG', 'content_13.mp4'),
(36, 'content_2', 'Selamat Datang Stasiun Madiun', 14, 'STASIUN JOMBANG', 'content_2.jpg'),
(68, 'content_21', 'Mediska1', 12, 'MEDISKA MADIUN', 'content_21.mp4'),
(69, 'content_22', 'Mediska2', 12, 'MEDISKA MADIUN', 'content_22.mp4'),
(70, 'content_23', 'Mediska3', 12, 'MEDISKA MADIUN', 'content_23.mp4'),
(72, 'content_25', 'UK - 5 gerakan sehat', 12, 'MEDISKA MADIUN', 'content_25.mp4'),
(73, 'content_26', 'UK - TBC', 12, 'MEDISKA MADIUN', 'content_26.mp4'),
(74, 'content_27', 'UK - EDUKASI GERMAS', 12, 'MEDISKA MADIUN', 'content_27.mp4'),
(75, 'content_28', 'UK - ETIKA BATUK', 12, 'MEDISKA MADIUN', 'content_28.mp4'),
(76, 'content_29', 'UK - MINUM ANTIBIOTIK', 12, 'MEDISKA MADIUN', 'content_29.mp4'),
(77, 'content_30', 'UK - ISI PIRINGKU', 12, 'MEDISKA MADIUN', 'content_30.mp4'),
(78, 'content_31', 'UK - KONSUMSI SAYUR', 12, 'MEDISKA MADIUN', 'content_31.mp4'),
(79, 'content_32', 'UK - DIABETES', 12, 'MEDISKA MADIUN', 'content_32.mp4'),
(80, 'content_33', 'UK-KLINIK MN', 12, 'MEDISKA MADIUN', 'content_33.png'),
(118, 'content_50', 'Larangan di stasiun', 15, 'FAS KTS', 'content_50.jpg'),
(119, 'content_51', 'PETA SEJAWA', 15, 'FAS KTS', 'content_51.jpg'),
(121, 'content_51', 'PETA SEJAWA', 26, 'FAS MN', 'content_51.jpg'),
(122, 'content_50', 'Larangan di stasiun', 26, 'FAS MN', 'content_50.jpg'),
(123, 'content_51', 'PETA SEJAWA', 26, 'FAS MN', 'content_51.jpg'),
(124, 'content_45', 'E-porter', 27, 'STASIUN KERTOSONO', 'content_45.jpg'),
(125, 'content_46', 'E-porter 1', 27, 'STASIUN KERTOSONO', 'content_46.mp4'),
(126, 'content_47', 'E-porter 2', 27, 'STASIUN KERTOSONO', 'content_47.mp4'),
(127, 'content_48', 'FR', 27, 'STASIUN KERTOSONO', 'content_48.mp4'),
(128, 'content_49', 'Loket Box', 27, 'STASIUN KERTOSONO', 'content_49.mp4'),
(129, 'content_5', 'TRAVELINK KAI ACCESS', 27, 'STASIUN KERTOSONO', 'content_5.mp4'),
(130, 'content_6', 'Syarat Rombongan', 27, 'STASIUN KERTOSONO', 'content_6.jpeg'),
(131, 'content_7', 'Jumlah Minimal Rombongan', 27, 'STASIUN KERTOSONO', 'content_7.jpeg'),
(132, 'content_8', 'Ketentuan Rombongan', 27, 'STASIUN KERTOSONO', 'content_8.jpeg'),
(133, 'content_9', 'Apa Itu Angkutan Rombongan', 27, 'STASIUN KERTOSONO', 'content_9.jpeg'),
(134, 'content_10', 'Traveling makin Seru dg Rombongan', 11, 'STASIUN MADIUN', 'content_10.jpeg'),
(135, 'content_11', 'Video KAI ACCESS', 11, 'STASIUN MADIUN', 'content_11.mp4'),
(136, 'content_12', '7 menit sebelum KA Berangkat', 11, 'STASIUN MADIUN', 'content_12.mp4'),
(137, 'content_13', 'New Spirit KAI ACCESS', 11, 'STASIUN MADIUN', 'content_13.mp4'),
(139, 'content_4', 'KONTAK WA DAOP DIVRE', 11, 'STASIUN MADIUN', 'content_4.jpeg'),
(140, 'content_45', 'E-porter', 11, 'STASIUN MADIUN', 'content_45.jpg'),
(141, 'content_46', 'E-porter 1', 11, 'STASIUN MADIUN', 'content_46.mp4'),
(144, 'content_49', 'Loket Box', 11, 'STASIUN MADIUN', 'content_49.mp4'),
(148, 'content_6', 'Syarat Rombongan', 11, 'STASIUN MADIUN', 'content_6.jpeg'),
(149, 'content_7', 'Jumlah Minimal Rombongan', 11, 'STASIUN MADIUN', 'content_7.jpeg'),
(150, 'content_8', 'Ketentuan Rombongan', 11, 'STASIUN MADIUN', 'content_8.jpeg'),
(156, 'content_10', 'Traveling makin Seru dg Rombongan', 19, 'STASIUN TULUNGAGUNG', 'content_10.jpeg'),
(157, 'content_11', 'Video KAI ACCESS', 19, 'STASIUN TULUNGAGUNG', 'content_11.mp4'),
(158, 'content_12', '7 menit sebelum KA Berangkat', 19, 'STASIUN TULUNGAGUNG', 'content_12.mp4'),
(159, 'content_13', 'New Spirit KAI ACCESS', 19, 'STASIUN TULUNGAGUNG', 'content_13.mp4'),
(160, 'content_5', 'TRAVELINK KAI ACCESS', 19, 'STASIUN TULUNGAGUNG', 'content_5.mp4'),
(161, 'content_6', 'Syarat Rombongan', 19, 'STASIUN TULUNGAGUNG', 'content_6.jpeg'),
(162, 'content_7', 'Jumlah Minimal Rombongan', 19, 'STASIUN TULUNGAGUNG', 'content_7.jpeg'),
(163, 'content_8', 'Ketentuan Rombongan', 19, 'STASIUN TULUNGAGUNG', 'content_8.jpeg'),
(164, 'content_9', 'Apa Itu Angkutan Rombongan', 19, 'STASIUN TULUNGAGUNG', 'content_9.jpeg'),
(169, 'content_59', 'PIAGAM PENGHARGAAN STASIUN MADIUN ', 26, 'FAS MN', 'content_59.jpg'),
(171, 'content_60', 'Loket Box fitur', 11, 'STASIUN MADIUN', 'content_60.mp4'),
(176, 'content_50', 'Larangan di stasiun', 18, 'FAS BL', 'content_50.jpg'),
(177, 'content_51', 'PETA SEJAWA', 18, 'FAS BL', 'content_51.jpg'),
(178, 'content_50', 'Larangan di stasiun', 26, 'FAS MN', 'content_50.jpg'),
(179, 'content_51', 'PETA SEJAWA', 26, 'FAS MN', 'content_51.jpg'),
(180, 'content_59', 'PIAGAM PENGHARGAAN STASIUN MADIUN ', 26, 'FAS MN', 'content_59.jpg'),
(186, 'content_52', 'FR', 11, 'STASIUN MADIUN', 'content_52.mp4'),
(187, 'content_63', 'Token Listrik', 11, 'STASIUN MADIUN', 'content_63.mp4'),
(188, 'content_64', 'Barang bawaan', 11, 'STASIUN MADIUN', 'content_64.mp4'),
(189, 'content_65', 'Safety first', 11, 'STASIUN MADIUN', 'content_65.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stasiun`
--

CREATE TABLE `stasiun` (
  `id_stasiun` int(11) NOT NULL,
  `nama_stasiun` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `stasiun`
--

INSERT INTO `stasiun` (`id_stasiun`, `nama_stasiun`) VALUES
(11, 'STASIUN MADIUN'),
(12, 'MEDISKA MADIUN'),
(13, 'MEDISKA KERTOSONO'),
(15, 'FAS KTS'),
(16, 'FAS KD'),
(17, 'FAS TA'),
(18, 'FAS BL'),
(19, 'STASIUN TULUNGAGUNG'),
(20, 'FAS JG'),
(21, 'STASIUN JOMBANG'),
(22, 'STASIUN KEDIRI'),
(23, 'STASIUN BLITAR'),
(24, 'MEDISKA KEDIRI'),
(25, 'MEDISKA BLITAR'),
(26, 'FAS MN'),
(27, 'STASIUN KERTOSONO');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_content`
--

CREATE TABLE `tb_content` (
  `id_content` varchar(50) NOT NULL,
  `nama_content` varchar(50) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `upload_date` date NOT NULL,
  `kunci` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_content`
--

INSERT INTO `tb_content` (`id_content`, `nama_content`, `file_name`, `upload_date`, `kunci`) VALUES
('content_1', '', 'content_1.jpg', '2023-09-05', 1),
('content_10', 'Traveling makin Seru dg Rombongan', 'content_10.jpeg', '2023-10-02', 10),
('content_11', 'Video KAI ACCESS', 'content_11.mp4', '2023-10-02', 11),
('content_12', '7 menit sebelum KA Berangkat', 'content_12.mp4', '2023-10-02', 12),
('content_13', 'New Spirit KAI ACCESS', 'content_13.mp4', '2023-10-02', 13),
('content_14', 'FO KERTOSONO', 'content_14.png', '2023-10-02', 14),
('content_15', 'IB WK', 'content_15.png', '2023-10-02', 15),
('content_16', 'Wiring st mn', 'content_16.png', '2023-10-02', 16),
('content_17', 'daop lantai 2', 'content_17.png', '2023-10-02', 17),
('content_18', 'Daop lantai 1', 'content_18.png', '2023-10-02', 18),
('content_19', 'konsep cctv on train', 'content_19.png', '2023-10-02', 19),
('content_2', 'Selamat Datang Stasiun Madiun', 'content_2.jpg', '2023-09-27', 2),
('content_21', 'Mediska1', 'content_21.mp4', '2023-10-10', 21),
('content_22', 'Mediska2', 'content_22.mp4', '2023-10-10', 22),
('content_23', 'Mediska3', 'content_23.mp4', '2023-10-10', 23),
('content_24', 'sehat jiwa', 'content_24.jpg', '2023-10-10', 24),
('content_25', 'UK - 5 gerakan sehat', 'content_25.mp4', '2023-10-11', 25),
('content_26', 'UK - TBC', 'content_26.mp4', '2023-10-11', 26),
('content_27', 'UK - EDUKASI GERMAS', 'content_27.mp4', '2023-10-11', 27),
('content_28', 'UK - ETIKA BATUK', 'content_28.mp4', '2023-10-11', 28),
('content_29', 'UK - MINUM ANTIBIOTIK', 'content_29.mp4', '2023-10-11', 29),
('content_3', 'FO AREA MADIUN 1', 'content_3.png', '2023-10-02', 3),
('content_30', 'UK - ISI PIRINGKU', 'content_30.mp4', '2023-10-11', 30),
('content_31', 'UK - KONSUMSI SAYUR', 'content_31.mp4', '2023-10-11', 31),
('content_32', 'UK - DIABETES', 'content_32.mp4', '2023-10-11', 32),
('content_33', 'UK-KLINIK MN', 'content_33.png', '2023-10-11', 33),
('content_34', 'Petikemas', 'content_34.jpg', '2023-10-11', 34),
('content_35', 'Poster Keselamatan di Perlintasan ', 'content_35.jpg', '2023-10-23', 35),
('content_36', 'SOP Kondisi Darurat ', 'content_36.jpg', '2023-10-23', 36),
('content_37', 'Kebijakan Keselamatan HSE ', 'content_37.jpg', '2023-10-23', 37),
('content_38', 'Kebijakan NAPZA ', 'content_38.jpg', '2023-10-23', 38),
('content_39', 'Poster RDS di Raileo ', 'content_39.jpg', '2023-10-23', 39),
('content_4', 'KONTAK WA DAOP DIVRE', 'content_4.jpeg', '2023-10-02', 4),
('content_41', 'Mading Bulan September 2023', 'content_41.mp4', '2023-10-24', 41),
('content_42', 'ANGBAR', 'content_42.mp4', '2023-10-27', 42),
('content_43', 'Mading Bulan Oktober 2023', 'content_43.mp4', '2023-11-13', 43),
('content_44', 'Mading Bulan November 2023', 'content_44.mp4', '2023-12-05', 44),
('content_45', 'E-porter', 'content_45.jpg', '2023-12-14', 45),
('content_46', 'E-porter 1', 'content_46.mp4', '2023-12-14', 46),
('content_47', 'E-porter 2', 'content_47.mp4', '2023-12-14', 47),
('content_49', 'Loket Box', 'content_49.mp4', '2023-12-17', 49),
('content_5', 'TRAVELINK KAI ACCESS', 'content_5.mp4', '2023-10-02', 5),
('content_50', 'Larangan di stasiun', 'content_50.jpg', '2023-12-21', 50),
('content_51', 'PETA SEJAWA', 'content_51.jpg', '2023-12-21', 51),
('content_52', 'FR', 'content_52.mp4', '2023-12-24', 52),
('content_59', 'PIAGAM PENGHARGAAN STASIUN MADIUN ', 'content_59.jpg', '2024-01-02', 59),
('content_6', 'Syarat Rombongan', 'content_6.jpeg', '2023-10-02', 6),
('content_60', 'Loket Box fitur', 'content_60.mp4', '2024-01-27', 60),
('content_62', 'Mading Januari 2024', 'content_62.mp4', '2024-02-13', 62),
('content_63', 'Token Listrik', 'content_63.mp4', '2024-02-19', 63),
('content_64', 'Barang bawaan', 'content_64.mp4', '2024-02-19', 64),
('content_65', 'Safety first', 'content_65.jpg', '2024-02-22', 65),
('content_7', 'Jumlah Minimal Rombongan', 'content_7.jpeg', '2023-10-02', 7),
('content_8', 'Ketentuan Rombongan', 'content_8.jpeg', '2023-10-02', 8),
('content_9', 'Apa Itu Angkutan Rombongan', 'content_9.jpeg', '2023-10-02', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tc_tb_user`
--

CREATE TABLE `tc_tb_user` (
  `kd_user` int(10) NOT NULL,
  `nm_user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `kd_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `tc_tb_user`
--

INSERT INTO `tc_tb_user` (`kd_user`, `nm_user`, `password`, `kd_level`) VALUES
(58018, 'ANDY TUSANTO', '12345678', 1),
(124, 'komersial', '12345678b', 2),
(125, 'Mediska Madiun', '123456', 2),
(122, 'Unit SDM Dan UMUM', '123456', 2),
(61438, 'Sdm', '123456', 1),
(48520, 'ANGBAR', '12345678', 2),
(62742, 'Komersial CC', '12345678', 1),
(47148, 'FASILITAS', '123456', 2),
(53051, 'TULUNGAGUNG', '12345678', 2),
(55913, 'Humas ', '12345678', 2),
(53112, 'Ilham dwi', '12345678', 2);

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
(1, 'Admin'),
(2, 'User');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id_list`);

--
-- Indeks untuk tabel `stasiun`
--
ALTER TABLE `stasiun`
  ADD PRIMARY KEY (`id_stasiun`);

--
-- Indeks untuk tabel `tb_content`
--
ALTER TABLE `tb_content`
  ADD PRIMARY KEY (`id_content`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id_list` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT untuk tabel `stasiun`
--
ALTER TABLE `stasiun`
  MODIFY `id_stasiun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
