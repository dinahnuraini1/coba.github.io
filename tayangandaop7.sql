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
-- Database: `tayangandaop7`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ip_log`
--

CREATE TABLE `ip_log` (
  `id_log` int(11) NOT NULL,
  `id_content` varchar(50) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `kd_user` varchar(50) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `hostname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ip_log`
--

INSERT INTO `ip_log` (`id_log`, `id_content`, `ip_address`, `kd_user`, `unit`, `upload_date`, `hostname`) VALUES
(18, 'content_52', '10.7.100.117', 'kna', 'KNA', '2023-12-05 08:46:02', 'SHOLEH_HUDDIN'),
(19, 'content_53', '10.7.101.3', '56083', 'STASIUN MADIUN', '2023-12-14 01:12:30', '10.7.101.3'),
(20, 'content_54', '10.7.101.3', '56083', 'STASIUN MADIUN', '2023-12-14 01:13:28', '10.7.101.3'),
(21, 'content_55', '10.7.101.12', '55913', 'Humas ', '2024-01-15 07:18:07', '10.7.101.12'),
(22, 'content_56', '10.7.1.80', '56083', 'STASIUN MADIUN', '2024-02-16 10:41:49', '10.7.1.80'),
(23, 'content_57', '10.7.1.80', '56083', 'STASIUN MADIUN', '2024-02-16 10:42:46', '10.7.1.80'),
(24, 'content_58', '10.7.1.80', '56083', 'STASIUN MADIUN', '2024-02-16 10:43:25', '10.7.1.80');

-- --------------------------------------------------------

--
-- Struktur dari tabel `playlist`
--

CREATE TABLE `playlist` (
  `id_list` int(11) NOT NULL,
  `kd_user` varchar(50) NOT NULL,
  `id_content` varchar(50) NOT NULL,
  `nama_content` varchar(50) NOT NULL,
  `id_unit` int(11) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `file_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `playlist`
--

INSERT INTO `playlist` (`id_list`, `kd_user`, `id_content`, `nama_content`, `id_unit`, `unit`, `file_name`) VALUES
(6, '58018', 'content_2', 'Selamat Datang Stasiun Madiun', 1, 'SISTEM INFORMASI (IT)', 'content_2.jpg'),
(7, '58018', 'content_3', 'FO AREA MADIUN 1', 1, 'SISTEM INFORMASI (IT)', 'content_3.png'),
(8, 'stasiunmadiun', 'content_10', 'Traveling makin Seru dg Rombongan', 11, 'STASIUN MADIUN', 'content_10.jpeg'),
(10, 'stasiunmadiun', 'content_12', '7 menit sebelum KA Berangkat', 11, 'STASIUN MADIUN', 'content_12.mp4'),
(11, 'stasiunmadiun', 'content_2', 'Selamat Datang Stasiun Madiun', 11, 'STASIUN MADIUN', 'content_2.jpg'),
(12, 'stasiunmadiun', 'content_4', 'KONTAK WA DAOP DIVRE', 11, 'STASIUN MADIUN', 'content_4.jpeg'),
(13, 'stasiunmadiun', 'content_6', 'Syarat Rombongan', 11, 'STASIUN MADIUN', 'content_6.jpeg'),
(14, 'stasiunmadiun', 'content_7', 'Jumlah Minimal Rombongan', 11, 'STASIUN MADIUN', 'content_7.jpeg'),
(15, 'stasiunmadiun', 'content_8', 'Ketentuan Rombongan', 11, 'STASIUN MADIUN', 'content_8.jpeg'),
(16, 'stasiunmadiun', 'content_9', 'Apa Itu Angkutan Rombongan', 11, 'STASIUN MADIUN', 'content_9.jpeg'),
(18, '58018', 'content_14', 'FO KERTOSONO', 1, 'SISTEM INFORMASI (IT)', 'content_14.png'),
(20, '58018', 'content_16', 'Wiring st mn', 1, 'SISTEM INFORMASI (IT)', 'content_16.png'),
(21, '58018', 'content_17', 'daop lantai 2', 1, 'SISTEM INFORMASI (IT)', 'content_17.png'),
(22, '58018', 'content_18', 'Daop lantai 1', 1, 'SISTEM INFORMASI (IT)', 'content_18.png'),
(33, 'stasiunjombang', 'content_11', 'Video KAI ACCESS', 14, 'STASIUN JOMBANG', 'content_11.mp4'),
(34, 'stasiunjombang', 'content_12', '7 menit sebelum KA Berangkat', 14, 'STASIUN JOMBANG', 'content_12.mp4'),
(35, 'stasiunjombang', 'content_13', 'New Spirit KAI ACCESS', 14, 'STASIUN JOMBANG', 'content_13.mp4'),
(36, 'stasiunjombang', 'content_2', 'Selamat Datang Stasiun Madiun', 14, 'STASIUN JOMBANG', 'content_2.jpg'),
(68, 'mediskamadiun', 'content_21', 'Mediska1', 12, 'MEDISKA MADIUN', 'content_21.mp4'),
(69, 'mediskamadiun', 'content_22', 'Mediska2', 12, 'MEDISKA MADIUN', 'content_22.mp4'),
(70, 'mediskamadiun', 'content_23', 'Mediska3', 12, 'MEDISKA MADIUN', 'content_23.mp4'),
(72, 'mediskamadiun', 'content_25', 'UK - 5 gerakan sehat', 12, 'MEDISKA MADIUN', 'content_25.mp4'),
(73, 'mediskamadiun', 'content_26', 'UK - TBC', 12, 'MEDISKA MADIUN', 'content_26.mp4'),
(74, 'mediskamadiun', 'content_27', 'UK - EDUKASI GERMAS', 12, 'MEDISKA MADIUN', 'content_27.mp4'),
(75, 'mediskamadiun', 'content_28', 'UK - ETIKA BATUK', 12, 'MEDISKA MADIUN', 'content_28.mp4'),
(76, 'mediskamadiun', 'content_29', 'UK - MINUM ANTIBIOTIK', 12, 'MEDISKA MADIUN', 'content_29.mp4'),
(77, 'mediskamadiun', 'content_30', 'UK - ISI PIRINGKU', 12, 'MEDISKA MADIUN', 'content_30.mp4'),
(78, 'mediskamadiun', 'content_31', 'UK - KONSUMSI SAYUR', 12, 'MEDISKA MADIUN', 'content_31.mp4'),
(79, 'mediskamadiun', 'content_32', 'UK - DIABETES', 12, 'MEDISKA MADIUN', 'content_32.mp4'),
(80, 'mediskamadiun', 'content_33', 'UK-KLINIK MN', 12, 'MEDISKA MADIUN', 'content_33.png'),
(81, 'sdmdanumum', 'content_35', 'Poster Keselamatan di Perlintasan ', 3, 'SDM dan UMUM', 'content_35.jpg'),
(82, 'sdmdanumum', 'content_36', 'SOP Kondisi Darurat ', 3, 'SDM dan UMUM', 'content_36.jpg'),
(83, 'sdmdanumum', 'content_37', 'Kebijakan Keselamatan HSE ', 3, 'SDM dan UMUM', 'content_37.jpg'),
(84, 'sdmdanumum', 'content_38', 'Kebijakan NAPZA ', 3, 'SDM dan UMUM', 'content_38.jpg'),
(85, 'sdmdanumum', 'content_39', 'Poster RDS di Raileo ', 3, 'SDM dan UMUM', 'content_39.jpg'),
(96, '58018', 'content_43', 'CBN BIZNET', 1, 'SISTEM INFORMASI (IT)', 'content_43.jpg'),
(98, '58018', 'content_45', 'Topologi Kertosono', 1, 'SISTEM INFORMASI (IT)', 'content_45.jpg'),
(100, '58018', 'content_47', 'Kertosono Lengkap', 1, 'SISTEM INFORMASI (IT)', 'content_47.jpg'),
(101, '58018', 'content_48', 'Backbone Area Kantor Daop7', 1, 'SISTEM INFORMASI (IT)', 'content_48.jpg'),
(109, '123', 'content_49', 'traveling makin seru ', 2, 'HUMASDA', 'content_49.jpeg'),
(110, '123', 'content_50', 'mading bulan september', 2, 'HUMASDA', 'content_50.mp4'),
(112, 'angbar', 'content_42', 'ANGBAR', 2, 'HUMASDA', 'content_42.mp4'),
(113, 'angbar', 'content_42', 'ANGBAR', 3, 'SDM dan UMUM', 'content_42.mp4'),
(116, '56083', 'content_10', 'Traveling makin Seru dg Rombongan', 11, 'STASIUN MADIUN', 'content_10.jpeg'),
(117, '56083', 'content_11', 'Video KAI ACCESS', 11, 'STASIUN MADIUN', 'content_11.mp4'),
(118, '56083', 'content_12', '7 menit sebelum KA Berangkat', 11, 'STASIUN MADIUN', 'content_12.mp4'),
(119, '56083', 'content_13', 'New Spirit KAI ACCESS', 11, 'STASIUN MADIUN', 'content_13.mp4'),
(120, '56083', 'content_4', 'KONTAK WA DAOP DIVRE', 11, 'STASIUN MADIUN', 'content_4.jpeg'),
(121, '56083', 'content_53', 'E-porter', 11, 'STASIUN MADIUN', 'content_53.mp4'),
(122, '56083', 'content_54', 'E-porter 2', 11, 'STASIUN MADIUN', 'content_54.mp4'),
(123, '56083', 'content_6', 'Syarat Rombongan', 11, 'STASIUN MADIUN', 'content_6.jpeg'),
(124, '56083', 'content_7', 'Jumlah Minimal Rombongan', 11, 'STASIUN MADIUN', 'content_7.jpeg'),
(125, '56083', 'content_8', 'Ketentuan Rombongan', 11, 'STASIUN MADIUN', 'content_8.jpeg'),
(126, '56083', 'content_9', 'Apa Itu Angkutan Rombongan', 11, 'STASIUN MADIUN', 'content_9.jpeg'),
(127, '55913', 'content_55', 'Mading 2023', 2, 'HUMASDA', 'content_55.mp4'),
(128, '55913', 'content_55', 'Mading 2023', 20, 'Humas ', 'content_55.mp4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_content`
--

CREATE TABLE `tb_content` (
  `id_content` varchar(50) NOT NULL,
  `nama_content` varchar(50) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `upload_date` date NOT NULL,
  `kunci` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_content`
--

INSERT INTO `tb_content` (`id_content`, `nama_content`, `file_name`, `unit`, `upload_date`, `kunci`) VALUES
('content_1', '', 'content_1.jpg', '', '2023-09-05', 1),
('content_10', 'Traveling makin Seru dg Rombongan', 'content_10.jpeg', 'STASIUN MADIUN', '2023-10-02', 10),
('content_11', 'Video KAI ACCESS', 'content_11.mp4', 'STASIUN MADIUN', '2023-10-02', 11),
('content_12', '7 menit sebelum KA Berangkat', 'content_12.mp4', 'STASIUN MADIUN', '2023-10-02', 12),
('content_13', 'New Spirit KAI ACCESS', 'content_13.mp4', 'STASIUN MADIUN', '2023-10-02', 13),
('content_14', 'FO KERTOSONO', 'content_14.png', 'SISTEM INFORMASI (IT)', '2023-10-02', 14),
('content_15', 'IB WK', 'content_15.png', 'SISTEM INFORMASI (IT)', '2023-10-02', 15),
('content_16', 'Wiring st mn', 'content_16.png', 'SISTEM INFORMASI (IT)', '2023-10-02', 16),
('content_17', 'daop lantai 2', 'content_17.png', 'SISTEM INFORMASI (IT)', '2023-10-02', 17),
('content_18', 'Daop lantai 1', 'content_18.png', 'SISTEM INFORMASI (IT)', '2023-10-02', 18),
('content_19', 'konsep cctv on train', 'content_19.png', 'SISTEM INFORMASI (IT)', '2023-10-02', 19),
('content_2', 'Selamat Datang Stasiun Madiun', 'content_2.jpg', 'SISTEM INFORMASI (IT)', '2023-09-27', 2),
('content_20', '', 'content_20.png', '', '2023-10-05', 20),
('content_21', 'Mediska1', 'content_21.mp4', 'MEDISKA MADIUN', '2023-10-10', 21),
('content_22', 'Mediska2', 'content_22.mp4', 'MEDISKA MADIUN', '2023-10-10', 22),
('content_23', 'Mediska3', 'content_23.mp4', 'MEDISKA MADIUN', '2023-10-10', 23),
('content_24', 'sehat jiwa', 'content_24.jpg', 'MEDISKA MADIUN', '2023-10-10', 24),
('content_25', 'UK - 5 gerakan sehat', 'content_25.mp4', 'MEDISKA MADIUN', '2023-10-11', 25),
('content_26', 'UK - TBC', 'content_26.mp4', 'MEDISKA MADIUN', '2023-10-11', 26),
('content_27', 'UK - EDUKASI GERMAS', 'content_27.mp4', 'MEDISKA MADIUN', '2023-10-11', 27),
('content_28', 'UK - ETIKA BATUK', 'content_28.mp4', 'MEDISKA MADIUN', '2023-10-11', 28),
('content_29', 'UK - MINUM ANTIBIOTIK', 'content_29.mp4', 'MEDISKA MADIUN', '2023-10-11', 29),
('content_3', 'FO AREA MADIUN 1', 'content_3.png', 'MEDISKA MADIUN', '2023-10-02', 3),
('content_30', 'UK - ISI PIRINGKU', 'content_30.mp4', 'MEDISKA MADIUN', '2023-10-11', 30),
('content_31', 'UK - KONSUMSI SAYUR', 'content_31.mp4', 'MEDISKA MADIUN', '2023-10-11', 31),
('content_32', 'UK - DIABETES', 'content_32.mp4', 'MEDISKA MADIUN', '2023-10-11', 32),
('content_33', 'UK-KLINIK MN', 'content_33.png', 'MEDISKA MADIUN', '2023-10-11', 33),
('content_35', 'Poster Keselamatan di Perlintasan ', 'content_35.jpg', 'SDM DAN UMUM', '2023-10-23', 35),
('content_36', 'SOP Kondisi Darurat ', 'content_36.jpg', 'SDM DAN UMUM', '2023-10-23', 36),
('content_37', 'Kebijakan Keselamatan HSE ', 'content_37.jpg', 'SDM DAN UMUM', '2023-10-23', 37),
('content_38', 'Kebijakan NAPZA ', 'content_38.jpg', 'SDM DAN UMUM', '2023-10-23', 38),
('content_39', 'Poster RDS di Raileo ', 'content_39.jpg', 'SDM DAN UMUM', '2023-10-23', 39),
('content_4', 'KONTAK WA DAOP DIVRE', 'content_4.jpeg', 'STASIUN MADIUN', '2023-10-02', 4),
('content_42', 'ANGBAR', 'content_42.mp4', 'ANGBAR', '2023-10-27', 42),
('content_43', 'CBN BIZNET', 'content_43.jpg', 'SISTEM INFORMASI (IT)', '2023-11-08', 43),
('content_44', 'Topologi MPLS Daop', 'content_44.jpg', 'SISTEM INFORMASI (IT)', '2023-11-08', 44),
('content_45', 'Topologi Kertosono', 'content_45.jpg', 'SISTEM INFORMASI (IT)', '2023-11-08', 45),
('content_47', 'Kertosono Lengkap', 'content_47.jpg', 'SISTEM INFORMASI (IT)', '2023-11-09', 47),
('content_48', 'Backbone Area Kantor Daop7', 'content_48.jpg', 'SISTEM INFORMASI (IT)', '2023-11-09', 48),
('content_49', 'traveling makin seru ', 'content_49.jpeg', 'HUMASDA', '2023-12-04', 49),
('content_50', 'mading bulan september', 'content_50.mp4', 'HUMASDA', '2023-12-04', 50),
('content_51', 'coba', 'content_51.png', 'SISTEM INFORMASI (IT)', '2023-12-05', 51),
('content_52', 'kna', 'content_52.png', 'KNA', '2023-12-05', 52),
('content_53', 'E-porter', 'content_53.mp4', 'STASIUN MADIUN', '2023-12-14', 53),
('content_54', 'E-porter 2', 'content_54.mp4', 'STASIUN MADIUN', '2023-12-14', 54),
('content_55', 'Mading 2023', 'content_55.mp4', 'Humas ', '2024-01-15', 55),
('content_56', 'Token listrik', 'content_56.mp4', 'STASIUN MADIUN', '2024-02-16', 56),
('content_57', 'Barang bawaan', 'content_57.mp4', 'STASIUN MADIUN', '2024-02-16', 57),
('content_58', 'Loket box', 'content_58.mp4', 'STASIUN MADIUN', '2024-02-16', 58),
('content_6', 'Syarat Rombongan', 'content_6.jpeg', 'STASIUN MADIUN', '2023-10-02', 6),
('content_7', 'Jumlah Minimal Rombongan', 'content_7.jpeg', 'STASIUN MADIUN', '2023-10-02', 7),
('content_8', 'Ketentuan Rombongan', 'content_8.jpeg', 'STASIUN MADIUN', '2023-10-02', 8),
('content_9', 'Apa Itu Angkutan Rombongan', 'content_9.jpeg', 'STASIUN MADIUN', '2023-10-02', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tc_tb_user`
--

CREATE TABLE `tc_tb_user` (
  `kd_user` varchar(50) NOT NULL,
  `nm_user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `kd_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `tc_tb_user`
--

INSERT INTO `tc_tb_user` (`kd_user`, `nm_user`, `password`, `unit`, `kd_level`) VALUES
('58018', 'Andy Tusanto', '12345678', 'SISTEM INFORMASI (IT)', 1),
('123', 'Humasda', '12345678n', 'HUMASDA', 2),
('smddanumum', 'sdm umum', '12345678', 'SDM dan UMUM', 2),
('komersial', 'Komersial', '12345678a', 'KOMERSIAL 1', 2),
('angbar', 'angbar', '12345678a', 'ANGBAR', 2),
('kesehatan', 'Kesehatan', '12345678', 'KESEHATAN', 2),
('kna', 'Kna', '12345678', 'KNA', 2),
('pbj', 'Pbj', '12345678', 'PBJ', 2),
('hukum', 'Hukum', '12345678', 'HUKUM', 2),
('keuangan', 'Keuangan', '12345678', 'KEUANGAN', 2),
('56083', 'Stasiun Madiun', '12345678', 'STASIUN MADIUN', 2),
('mediskamadiun', 'Mediska Madiun', '12345678', 'MEDISKA MADIUN', 2),
('mediskakertosono', 'Mediska Kertosono', '12345678', 'MEDISKA KERTOSONO', 2),
('sintel', 'Sintel', '12345678', 'SINTEL', 2),
('aset', 'Aset', '12345678', 'ASET', 2),
('fasilitas', 'Fasilitas', '12345678', 'FASILITAS', 2),
('pengamanan', 'Pengamanan ', '12345678', 'PENGAMANAN (PAM)', 2),
('operasional', 'Operasional', '12345678', 'OPERASIONAL', 2),
('jalanjembatan', 'Jalan Dan Jembatan', '12345678', 'JALAN DAN JEMBATAN (JJ)', 2);

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `unit`
--

CREATE TABLE `unit` (
  `id_unit` int(11) NOT NULL,
  `unit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `unit`
--

INSERT INTO `unit` (`id_unit`, `unit`) VALUES
(1, 'SISTEM INFORMASI (IT)'),
(2, 'HUMASDA'),
(3, 'SDM dan UMUM'),
(4, 'KOMERSIAL'),
(5, 'ANGBAR'),
(6, 'KESEHATAN'),
(7, 'KNA'),
(8, 'PBJ'),
(9, 'HUKUM'),
(10, 'KEUANGAN'),
(11, 'STASIUN MADIUN'),
(12, 'MEDISKA MADIUN'),
(13, 'MEDISKA KERTOSONO'),
(14, 'SINTEL'),
(15, 'ASET'),
(16, 'FASILITAS'),
(17, 'PENGAMANAN (PAM)'),
(18, 'OPERASIONAL'),
(19, 'JALAN DAN JEMBATAN (JJ)'),
(20, 'Humas ');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ip_log`
--
ALTER TABLE `ip_log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indeks untuk tabel `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id_list`);

--
-- Indeks untuk tabel `tb_content`
--
ALTER TABLE `tb_content`
  ADD PRIMARY KEY (`id_content`);

--
-- Indeks untuk tabel `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id_unit`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ip_log`
--
ALTER TABLE `ip_log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id_list` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT untuk tabel `unit`
--
ALTER TABLE `unit`
  MODIFY `id_unit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
