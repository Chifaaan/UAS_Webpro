-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2024 at 08:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sijafas2`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `NIP` varchar(25) NOT NULL,
  `nama_dosen` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`NIP`, `nama_dosen`) VALUES
('195609231987031002', 'ABDUL AZIZ'),
('195708101986031005', 'REFIRMAN'),
('195808171986121001', 'AGUS SETIAWAN'),
('195809201984031001', 'NUR FAUZI SOELAIMAN'),
('196311131989032001', 'INDRI NEFORAWATI'),
('197009152008121001', 'MASNADI'),
('197011061998021001', 'YOYOK SABAR WALUYO'),
('197509152003122003', 'MARIA AGUSTIN'),
('197605302008121002', 'IWAN SONJAYA'),
('197802032005012002', 'ERIYA'),
('197802112009121003', 'MAULDY LAYA'),
('197904282005012002', 'MERA KARTIKA DELIMAYANTI'),
('197908032003122003', 'ANITA HIDAYATI'),
('197910062003122001', 'PRIHATIN OKTIVASARI'),
('198111162005012004', 'DEWI YANTI LILIANA'),
('198112012015041001', 'DEFIANA ARNALDY'),
('198410232014041001', 'HATA MAULANA'),
('198410282019031005', 'ASEP TAUFIK MUHARRAM'),
('198411292020121002', 'BAMBANG WARSUTA'),
('198501292010121003', 'ARIAWAN ANDI SUHANDANA'),
('198502272015042001', 'RISNA SARI'),
('198606072019031011', 'ANGGI MARDIYONO'),
('198703132019031012', 'INDRA HERMAWAN'),
('198807122018032001', 'IKLIMA ERMIS ISMAIL'),
('198910112018032002', 'AYU ROSYIDA ZAIN'),
('199007252020122012', 'ADE RAHMA YULY'),
('199109262019031012', 'ASEP KURNIAWAN'),
('199110042019032024', 'MALISA HUZAIFA'),
('199201302019032018', 'RIZKI ELISA NALAWATI'),
('199303022019032022', 'NOORLELA MARCHETA'),
('199308142019031015', 'MUHAMMAD YUSUF BAGUS RASYIIDIN'),
('23072014090119801027', 'Euis Oktavianti'),
('520000000000000228', 'Irawati'),
('9202017012019840513', 'Fachroni Arbi Murad');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(10) NOT NULL,
  `id_ruangan` varchar(30) NOT NULL,
  `id_matkul` varchar(20) NOT NULL,
  `NIP` varchar(50) NOT NULL,
  `hari` varchar(6) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(255) NOT NULL,
  `waktu_mulai` time DEFAULT NULL,
  `waktu_selesai` time DEFAULT NULL,
  `nama_peminjam` varchar(45) DEFAULT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_ruangan`, `id_matkul`, `NIP`, `hari`, `tanggal`, `keterangan`, `waktu_mulai`, `waktu_selesai`, `nama_peminjam`, `status`) VALUES
(1, 'GSG201', '1101', '198807122018032001', 'Senin', '2024-01-01', 'Pembelajaran Reguler', '08:00:00', '10:00:00', NULL, 'Dipinjam'),
(2, 'GSG201', '1102', '197904282005012002', 'Senin', '2024-01-01', 'Pembelajaran Reguler', '10:30:00', '12:30:00', NULL, 'Dipinjam'),
(3, 'GSG202', '1103', '198606072019031011', 'Senin', '2024-01-01', 'Pembelajaran Reguler', '13:00:00', '15:00:00', NULL, 'Dipinjam'),
(4, 'GSG202', '1104', '520000000000000228', 'Senin', '2024-01-01', 'Pembelajaran Reguler', '15:30:00', '17:30:00', NULL, 'Dipinjam'),
(5, 'GSG203', '1105', '199201302019032018', 'Senin', '2024-01-01', 'Pembelajaran Reguler', '08:00:00', '10:00:00', NULL, 'Dipinjam'),
(6, 'GSG203', '1106', '195808171986121001', 'Senin', '2024-01-01', 'Pembelajaran Reguler', '10:30:00', '12:30:00', NULL, 'Dipinjam'),
(7, 'GSG204', '1107', '199201302019032018', 'Senin', '2024-01-01', 'Pembelajaran Reguler', '13:00:00', '15:00:00', NULL, 'Dipinjam'),
(8, 'GSG204', '1108', '198111162005012004', 'Senin', '2024-01-01', 'Pembelajaran Reguler', '15:30:00', '17:30:00', NULL, 'Dipinjam'),
(9, 'GSG205', '1109', '9202017012019840513', 'Senin', '2024-01-01', 'Pembelajaran Reguler', '08:00:00', '10:00:00', NULL, 'Dipinjam'),
(10, 'GSG205', '1110', '198703132019031012', 'Senin', '2024-01-01', 'Pembelajaran Reguler', '10:30:00', '12:30:00', NULL, 'Dipinjam'),
(11, 'GSG206', '1301', '195809201984031001', 'Selasa', '2024-01-02', 'Pembelajaran Reguler', '08:00:00', '10:00:00', NULL, 'Dipinjam'),
(12, 'GSG206', '1302', '197802032005012002', 'Selasa', '2024-01-02', 'Pembelajaran Reguler', '10:30:00', '12:30:00', NULL, 'Dipinjam'),
(13, 'GSG207', '1303', '199109262019031012', 'Selasa', '2024-01-02', 'Pembelajaran Reguler', '13:00:00', '15:00:00', NULL, 'Dipinjam'),
(14, 'GSG207', '1304', '198606072019031011', 'Selasa', '2024-01-02', 'Pembelajaran Reguler', '15:30:00', '17:30:00', NULL, 'Dipinjam'),
(15, 'GSG208', '1305', '199303022019032022', 'Rabu', '2024-01-03', 'Pembelajaran Reguler', '08:00:00', '10:00:00', NULL, 'Dipinjam'),
(16, 'GSG208', '1306', '195609231987031002', 'Rabu', '2024-01-03', 'Pembelajaran Reguler', '10:30:00', '12:30:00', NULL, 'Dipinjam'),
(17, 'GSG209', '1307', '198502272015042001', 'Rabu', '2024-01-03', 'Pembelajaran Reguler', '13:00:00', '15:00:00', NULL, 'Dipinjam'),
(18, 'GSG209', '1308', '199201302019032018', 'Kamis', '2024-01-04', 'Pembelajaran Reguler', '08:00:00', '10:00:00', NULL, 'Dipinjam'),
(19, 'GSG210', '1309', '199303022019032022', 'Kamis', '2024-01-04', 'Pembelajaran Reguler', '10:30:00', '12:30:00', NULL, 'Dipinjam'),
(20, 'GSG210', '1310', '197802112009121003', 'Kamis', '2024-01-04', 'Pembelajaran Reguler', '13:00:00', '15:00:00', NULL, 'Dipinjam'),
(21, 'GSG211', '1501', '195609231987031002', 'Kamis', '2024-01-04', 'Pembelajaran Reguler', '15:30:00', '17:30:00', NULL, 'Dipinjam'),
(22, 'GSG211', '1502', '195708101986031005', 'Kamis', '2024-01-04', 'Pembelajaran Reguler', '08:00:00', '10:00:00', NULL, 'Dipinjam'),
(23, 'GSG212', '1503', '195808171986121001', 'Kamis', '2024-01-04', 'Pembelajaran Reguler', '10:30:00', '12:30:00', NULL, 'Dipinjam'),
(24, 'GSG212', '1504', '197802032005012002', 'Jumat', '2024-01-05', 'Pembelajaran Reguler', '13:00:00', '15:00:00', NULL, 'Dipinjam'),
(25, 'GSG213', '1505', '198111162005012004', 'Jumat', '2024-01-05', 'Pembelajaran Reguler', '15:30:00', '17:30:00', NULL, 'Dipinjam'),
(26, 'GSG213', '1506', '198611272019031015', 'Jumat', '2024-01-05', 'Pembelajaran Reguler', '08:00:00', '10:00:00', NULL, 'Dipinjam'),
(27, 'GSG214', '1507', '198512132010122001', 'Jumat', '2024-01-05', 'Pembelajaran Reguler', '10:30:00', '12:30:00', NULL, 'Dipinjam'),
(28, 'GSG214', '1508', '199109262019031012', 'Jumat', '2024-01-05', 'Pembelajaran Reguler', '13:00:00', '15:00:00', NULL, 'Dipinjam'),
(29, 'GSG215', '1701', '198703132019031012', 'Senin', '2024-01-08', 'Pembelajaran Reguler', '15:30:00', '17:30:00', NULL, 'Dipinjam'),
(30, 'GSG215', '1702', '197904282005012002', 'Senin', '2024-01-08', 'Pembelajaran Reguler', '08:00:00', '10:00:00', NULL, 'Dipinjam'),
(31, 'GSG216', '1703', '197802032005012002', 'Senin', '2024-01-08', 'Pembelajaran Reguler', '10:30:00', '12:30:00', NULL, 'Dipinjam'),
(32, 'GSG216', '1704', '195808171986121001', 'Senin', '2024-01-08', 'Pembelajaran Reguler', '13:00:00', '15:00:00', NULL, 'Dipinjam'),
(33, 'GSG217', '1705', '197904282005012002', 'Selasa', '2024-01-09', 'Pembelajaran Reguler', '15:30:00', '17:30:00', NULL, 'Dipinjam'),
(34, 'GSG217', '1706', '199303022019032022', 'Selasa', '2024-01-09', 'Pembelajaran Reguler', '08:00:00', '10:00:00', NULL, 'Dipinjam'),
(35, 'GSG218', '1707', '198606072019031011', 'Selasa', '2024-01-09', 'Pembelajaran Reguler', '10:30:00', '12:30:00', NULL, 'Dipinjam'),
(36, 'GSG218', '1708', '197904282005012002', 'Selasa', '2024-01-09', 'Pembelajaran Reguler', '13:00:00', '15:00:00', NULL, 'Dipinjam'),
(37, 'GSG219', '1709', '199201302019032018', 'Selasa', '2024-01-09', 'Pembelajaran Reguler', '15:30:00', '17:30:00', NULL, 'Dipinjam'),
(38, 'GSG219', '1710', '197904282005012002', 'Rabu', '2024-01-10', 'Pembelajaran Reguler', '08:00:00', '10:00:00', NULL, 'Dipinjam'),
(39, 'GSG220', '1711', '199303022019032022', 'Rabu', '2024-01-10', 'Pembelajaran Reguler', '10:30:00', '12:30:00', NULL, 'Dipinjam'),
(40, 'GSG220', '1712', '195609231987031002', 'Rabu', '2024-01-10', 'Pembelajaran Reguler', '13:00:00', '15:00:00', NULL, 'Dipinjam'),
(41, 'GSG221', '1713', '199201302019032018', 'Rabu', '2024-01-10', 'Pembelajaran Reguler', '15:30:00', '17:30:00', NULL, 'Dipinjam'),
(42, 'GSG221', '1901', '195808171986121001', 'Kamis', '2024-01-11', 'Pembelajaran Reguler', '08:00:00', '10:00:00', NULL, 'Dipinjam'),
(43, 'GSG222', '1902', '197802032005012002', 'Kamis', '2024-01-11', 'Pembelajaran Reguler', '10:30:00', '12:30:00', NULL, 'Dipinjam'),
(44, 'GSG222', '1903', '198111162005012004', 'Kamis', '2024-01-11', 'Pembelajaran Reguler', '13:00:00', '15:00:00', NULL, 'Dipinjam'),
(45, 'GSG223', '1904', '199109262019031012', 'Kamis', '2024-01-11', 'Pembelajaran Reguler', '15:30:00', '17:30:00', NULL, 'Dipinjam'),
(46, 'GSG223', '1905', '199201302019032018', 'Kamis', '2024-01-11', 'Pembelajaran Reguler', '08:00:00', '10:00:00', NULL, 'Dipinjam'),
(47, 'GSG224', '1906', '198703132019031012', 'Jumat', '2024-01-12', 'Pembelajaran Reguler', '10:30:00', '12:30:00', NULL, 'Dipinjam'),
(48, 'AA303', '3109', '195609231987031002', 'Jumat', '2024-01-19', 'Pembelajaran Reguler', '10:30:00', '12:50:00', NULL, 'Dipinjam'),
(49, 'GSG225', '1908', '198606072019031011', 'Jumat', '2024-01-12', 'Pembelajaran Reguler', '13:00:00', '15:00:00', NULL, 'Dipinjam'),
(50, 'GSG225', '1909', '195808171986121001', 'Jumat', '2024-01-12', 'Pembelajaran Reguler', '15:30:00', '17:30:00', NULL, 'Dipinjam'),
(51, 'GSG226', '1910', '197802032005012002', 'Jumat', '2024-01-12', 'Pembelajaran Reguler', '08:00:00', '10:00:00', NULL, 'Dipinjam'),
(52, 'GSG226', '2101', '199109262019031012', 'Senin', '2024-01-15', 'Pembelajaran Reguler', '10:30:00', '12:30:00', NULL, 'Dipinjam'),
(53, 'GSG227', '2102', '197904282005012002', 'Senin', '2024-01-15', 'Pembelajaran Reguler', '13:00:00', '15:00:00', NULL, 'Dipinjam'),
(54, 'GSG227', '2103', '199201302019032018', 'Senin', '2024-01-15', 'Pembelajaran Reguler', '15:30:00', '17:30:00', NULL, 'Dipinjam'),
(55, 'GSG228', '2104', '197802032005012002', 'Selasa', '2024-01-16', 'Pembelajaran Reguler', '08:00:00', '10:00:00', NULL, 'Dipinjam'),
(56, 'GSG228', '2105', '195808171986121001', 'Selasa', '2024-01-16', 'Pembelajaran Reguler', '10:30:00', '12:30:00', NULL, 'Dipinjam'),
(57, 'GSG229', '2106', '197904282005012002', 'Selasa', '2024-01-16', 'Pembelajaran Reguler', '13:00:00', '15:00:00', NULL, 'Dipinjam'),
(58, 'GSG229', '2107', '198606072019031011', 'Selasa', '2024-01-16', 'Pembelajaran Reguler', '15:30:00', '17:30:00', NULL, 'Dipinjam'),
(59, 'GSG230', '2108', '199109262019031012', 'Rabu', '2024-01-17', 'Pembelajaran Reguler', '08:00:00', '10:00:00', NULL, 'Dipinjam'),
(60, 'GSG230', '2109', '199201302019032018', 'Rabu', '2024-01-17', 'Pembelajaran Reguler', '10:30:00', '12:30:00', NULL, 'Dipinjam'),
(61, 'GSG231', '2110', '197802032005012002', 'Rabu', '2024-01-17', 'Pembelajaran Reguler', '13:00:00', '15:00:00', NULL, 'Dipinjam'),
(62, 'GSG231', '2111', '198111162005012004', 'Rabu', '2024-01-17', 'Pembelajaran Reguler', '15:30:00', '17:30:00', NULL, 'Dipinjam'),
(63, 'GSG232', '2112', '195609231987031002', 'Kamis', '2024-01-18', 'Pembelajaran Reguler', '08:00:00', '10:00:00', NULL, 'Dipinjam'),
(64, 'GSG232', '2113', '199303022019032022', 'Kamis', '2024-01-18', 'Pembelajaran Reguler', '10:30:00', '12:30:00', NULL, 'Dipinjam'),
(65, 'GSG233', '2114', '197904282005012002', 'Kamis', '2024-01-18', 'Pembelajaran Reguler', '13:00:00', '15:00:00', NULL, 'Dipinjam'),
(66, 'GSG233', '2115', '198606072019031011', 'Kamis', '2024-01-18', 'Pembelajaran Reguler', '15:30:00', '17:30:00', NULL, 'Dipinjam'),
(67, 'GSG234', '2301', '197904282005012002', 'Jumat', '2024-01-19', 'Pembelajaran Reguler', '08:00:00', '10:00:00', NULL, 'Dipinjam'),
(68, 'GSG234', '2302', '199109262019031012', 'Jumat', '2024-01-19', 'Pembelajaran Reguler', '10:30:00', '12:30:00', NULL, 'Dipinjam'),
(69, 'GSG235', '2303', '195808171986121001', 'Jumat', '2024-01-19', 'Pembelajaran Reguler', '13:00:00', '15:00:00', NULL, 'Dipinjam'),
(70, 'GSG235', '2304', '197802032005012002', 'Jumat', '2024-01-19', 'Pembelajaran Reguler', '15:30:00', '17:30:00', NULL, 'Dipinjam'),
(71, 'GSG236', '2305', '199109262019031012', 'Senin', '2024-01-22', 'Pembelajaran Reguler', '08:00:00', '10:00:00', NULL, 'Dipinjam'),
(72, 'GSG236', '2306', '197904282005012002', 'Senin', '2024-01-22', 'Pembelajaran Reguler', '10:30:00', '12:30:00', NULL, 'Dipinjam'),
(73, 'GSG237', '2307', '199201302019032018', 'Senin', '2024-01-22', 'Pembelajaran Reguler', '13:00:00', '15:00:00', NULL, 'Dipinjam'),
(74, 'GSG237', '2308', '197802032005012002', 'Senin', '2024-01-22', 'Pembelajaran Reguler', '15:30:00', '17:30:00', NULL, 'Dipinjam'),
(75, 'GSG238', '2309', '198606072019031011', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', '08:00:00', '10:00:00', NULL, 'Dipinjam'),
(76, 'GSG238', '2310', '199109262019031012', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', '10:30:00', '12:30:00', NULL, 'Dipinjam'),
(77, 'GSG239', '2311', '197904282005012002', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', '13:00:00', '15:00:00', NULL, 'Dipinjam'),
(78, 'GSG239', '2312', '199201302019032018', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', '15:30:00', '17:30:00', NULL, 'Dipinjam'),
(79, 'GSG240', '2313', '197802032005012002', 'Rabu', '2024-01-24', 'Pembelajaran Reguler', '08:00:00', '10:00:00', NULL, 'Dipinjam'),
(80, 'GSG240', '2314', '198111162005012004', 'Rabu', '2024-01-24', 'Pembelajaran Reguler', '10:30:00', '12:30:00', NULL, 'Dipinjam'),
(81, 'GSG241', '2315', '195609231987031002', 'Rabu', '2024-01-24', 'Pembelajaran Reguler', '13:00:00', '15:00:00', NULL, 'Dipinjam'),
(82, 'GSG241', '2316', '199303022019032022', 'Rabu', '2024-01-24', 'Pembelajaran Reguler', '15:30:00', '17:30:00', NULL, 'Dipinjam'),
(83, 'GSG242', '2317', '197904282005012002', 'Kamis', '2024-01-25', 'Pembelajaran Reguler', '08:00:00', '10:00:00', NULL, 'Dipinjam'),
(84, 'GSG242', '2318', '199109262019031012', 'Kamis', '2024-01-25', 'Pembelajaran Reguler', '10:30:00', '12:30:00', NULL, 'Dipinjam'),
(85, 'GSG243', '2319', '195808171986121001', 'Kamis', '2024-01-25', 'Pembelajaran Reguler', '13:00:00', '15:00:00', NULL, 'Dipinjam'),
(86, 'GSG243', '2320', '197802032005012002', 'Kamis', '2024-01-25', 'Pembelajaran Reguler', '15:30:00', '17:30:00', NULL, 'Dipinjam'),
(87, 'GSG244', '2501', '199109262019031012', 'Jumat', '2024-01-26', 'Pembelajaran Reguler', '08:00:00', '10:00:00', NULL, 'Dipinjam'),
(88, 'GSG244', '2502', '197904282005012002', 'Jumat', '2024-01-26', 'Pembelajaran Reguler', '10:30:00', '12:30:00', NULL, 'Dipinjam'),
(89, 'GSG245', '2503', '195808171986121001', 'Jumat', '2024-01-26', 'Pembelajaran Reguler', '13:00:00', '15:00:00', NULL, 'Dipinjam'),
(90, 'GSG245', '2504', '197802032005012002', 'Jumat', '2024-01-26', 'Pembelajaran Reguler', '15:30:00', '17:30:00', NULL, 'Dipinjam'),
(91, 'GSG246', '2505', '199109262019031012', 'Senin', '2024-01-29', 'Pembelajaran Reguler', '08:00:00', '10:00:00', NULL, 'Dipinjam'),
(92, 'GSG246', '2506', '197904282005012002', 'Senin', '2024-01-29', 'Pembelajaran Reguler', '10:30:00', '12:30:00', NULL, 'Dipinjam'),
(93, 'GSG247', '2507', '199201302019032018', 'Senin', '2024-01-29', 'Pembelajaran Reguler', '13:00:00', '15:00:00', NULL, 'Dipinjam'),
(94, 'AA303', '4507', '197011061998021001', 'Selasa', '2024-02-13', 'Pembelajaran Reguler', '13:00:00', '15:00:00', NULL, 'Dipinjam');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id_matkul` varchar(15) NOT NULL,
  `nama_matkul` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id_matkul`, `nama_matkul`) VALUES
('1101', 'Algoritma & Pemrograman'),
('1102', 'Pengantar Teknologi Informasi & Komunika'),
('1103', 'Sistem Operasi'),
('1104', 'Organisasi & Arsitektur Komputer'),
('1105', 'Bahasa Indonesia'),
('1106', 'Matematika Diskrit'),
('1107', 'Teknologi Multimedia'),
('1108', 'Pendidikan Agama'),
('1109', 'Bahasa Inggris untuk TIK'),
('1110', 'Pancasila'),
('1301', 'Pemrograman Visual'),
('1302', 'Manajemen Proyek Tik'),
('1303', 'Desain Ui/Ux'),
('1304', 'Kecerdasan Buatan'),
('1305', 'Metode Numerik'),
('1306', 'Pemrograman Web Lanjut'),
('1307', 'Pemrograman Basis Data'),
('1308', 'Analisis Dan Desain Sistem Informasi'),
('1309', 'Grafika Komputer'),
('1310', 'Sistem Terdistribusi'),
('1501', 'Requirement Engineering'),
('1502', 'Perencanaan Sistem'),
('1503', 'Pemodelan Sistem'),
('1504', 'Implementasi Sistem'),
('1505', 'Etika Profesional'),
('1506', 'Dokumentasi Sistem'),
('1507', 'Komunikasi Profesional'),
('1701', 'Kapita Selekta I'),
('1702', 'Praktek Kerja Lapangan'),
('1703', 'Seminar'),
('2101', 'Teknologi Nirkabel'),
('2102', 'Jaringan Komputer dan Komunikasi'),
('2103', 'Sistem Operasi Jaringan'),
('2104', 'Dasar Sistem Telekomunikasi'),
('2105', 'Teknik Digital/Perangkat Komputer'),
('2106', 'Pengantar Teknologi Informasi & Komunika'),
('2107', 'Bahasa Indonesia(Pengembangan Karakter)'),
('2108', 'Pendidikan Agama dalam TIK'),
('3101', 'Matematika Diskrit'),
('3102', 'Pengantar Teknologi Informasi dan Komuni'),
('3103', 'Algoritma dan Pemrograman'),
('3104', 'Bahasa Indonesia'),
('3105', 'Bahasa Inggris untuk TIK 1'),
('3106', 'Sistem operasi'),
('3107', 'Kewarganegaraan'),
('3108', 'Teknologi Multimedia'),
('3109', 'Jaringan Komputer'),
('3110', 'Piranti Komputer'),
('3301', 'Metode Numerik'),
('3302', 'English for IT Professional'),
('3303', 'Rekayasa Perangkat Lunak'),
('3304', 'Sistem Embedded'),
('3305', 'Pemrograman Berorientasi Objek'),
('3306', 'Infrastruktur Jaringan/ perutean dan pen'),
('3307', 'Keamanan Komputer'),
('3308', 'Pemrograman web ( Front, Back End )'),
('3309', 'Organisasi & Arsitektur Komputer'),
('3501', 'Analisis Permintaan Jaringan'),
('3502', 'Perencanaan Jaringan'),
('3503', 'Pemodelan Jaringan'),
('3504', 'Implementasi Jaringan'),
('3505', 'Etika Profesional'),
('3506', 'Dokumentasi Jaringan'),
('3507', 'Komunikasi Profesional'),
('3701', 'Kapita Selekta I'),
('3702', 'Praktek Kerja Lapangan'),
('3703', 'Seminar'),
('4101', 'Algoritma dan Pemrograman'),
('4102', 'Matematika Diskrit'),
('4103', 'Bahasa Inggris untuk TIK'),
('4104', 'Pengantar TIK'),
('4105', 'Pengantar Jaringan Komputer'),
('4106', 'Pengantar Multimedia'),
('4107', 'Pengantar Desain Komunikasi Visual'),
('4108', 'Kewarganegaraan'),
('4109', 'Bahasa Indonesia'),
('4301', 'Pendidikan Agama'),
('4302', 'Pancasila'),
('4303', 'Perancangan dan Pengembangan Game'),
('4304', 'Pemrograman Berbasis Object'),
('4305', 'Pemodelan 3D'),
('4306', 'Grafika Komputer'),
('4307', 'Rekayasa Perangkat Lunak Multimedia'),
('4308', 'Desain Web'),
('4309', 'Hukum dan Etika'),
('4310', 'Sistem Operasi'),
('4501', 'Etika Profesi'),
('4502', 'Komunikasi Profesional'),
('4503', 'Pra Produksi'),
('4504', 'Produksi'),
('4505', 'Pasca Produksi'),
('4506', 'Pengujian dan Evaluasi'),
('4507', 'Dokumentasi Produk');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `id_ruangan` varchar(10) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `fasilitas` varchar(255) NOT NULL,
  `jenis_ruangan` varchar(35) NOT NULL,
  `kapasitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`id_ruangan`, `lokasi`, `fasilitas`, `jenis_ruangan`, `kapasitas`) VALUES
('AA202', 'lantai 2, gedung AA ', 'set-bangku meja 30 orang, papan tulis, proyektor dan AC', 'Kelas Reguler', 30),
('AA203', 'lantai 2, gedung AA', 'set-bangku meja 30 orang, papan tulis, proyektor dan AC', 'Kelas Reguler', 30),
('AA204', 'lantai 2, gedung AA', 'set-bangku meja 30 orang, papan tulis, proyektor dan AC', 'Kelas Reguler', 30),
('AA205', 'lantai 2, gedung AA', 'set-bangku meja 30 orang, papan tulis, proyektor dan AC', 'Kelas Reguler', 30),
('AA301', 'lantai 3, gedung AA', 'set-bangku meja dengan komputer 30 orang, papan tulis, proyektor dan AC', 'Laboratorium', 30),
('AA302', 'lantai 3, gedung AA', 'set-bangku meja 30 orang, smart TV, papan tulis, dan AC', 'Teleconference ', 30),
('AA303', 'lantai 3, gedung AA', 'set-bangku meja dengan komputer 30 orang, papan tulis, proyektor dan AC', 'Laboratorium', 30),
('AA304', 'lantai 3, gedung AA', 'set-bangku meja 30 orang, papan tulis, proyektor dan AC', 'Kelas Reguler', 30),
('AA305', 'lantai 3, gedung AA', 'set-bangku meja 30 orang, papan tulis, proyektor dan AC', 'Kelas Reguler', 30),
('GSG201', 'lantai 2,Gedung F (GSG)', 'papan tulis, set-meja 12 orang dan AC', 'Ruang Meeting', 12),
('GSG202', 'lantai 2,Gedung F (GSG)', 'set-bangku meja 30 orang, papan tulis, Smart TV, dan Sound Speaker', 'Kelas Reguler', 30),
('GSG203', 'lantai 2,Gedung F (GSG)', 'set-bangku meja 30 orang, papan tulis, Smart TV, AC dan Sound Speaker', 'Kelas Reguler', 30),
('GSG204', 'lantai 2,Gedung F (GSG)', 'set-bangku meja 30 orang, papan tulis, proyektor dan AC', 'Kelas Reguler', 30),
('GSG205', 'lantai 2,Gedung F (GSG)', 'set-bangku meja 30 orang, papan tulis, proyektor dan AC', 'Kelas Reguler', 30),
('GSG206', 'lantai 2,Gedung F (GSG)', 'set-bangku meja 30 orang, papan tulis, proyektor dan AC', 'Kelas Reguler', 30),
('GSG207', 'lantai 2,Gedung F (GSG)', 'set-bangku meja 30 orang, papan tulis, proyektor dan AC', 'Kelas Reguler', 30),
('GSG208', 'lantai 2,Gedung F (GSG)', 'set-bangku meja 30 orang, papan tulis, proyektor dan AC', 'Kelas Reguler', 30),
('GSG209', 'lantai 2,Gedung F (GSG)', 'set-bangku meja 30 orang, papan tulis, Smart TV, AC dan Sound Speaker', 'Kelas Reguler', 30),
('GSG210', 'lantai 2,Gedung F (GSG)', 'set-bangku meja 30 orang, papan tulis, proyektor dan AC', 'Kelas Reguler', 30),
('GSG211', 'lantai 2,Gedung F (GSG)', 'set-bangku meja 30 orang, papan tulis, proyektor dan AC', 'Kelas Reguler', 30),
('GSG212', 'lantai 2,Gedung F (GSG)', 'set-bangku meja 30 orang, papan tulis, proyektor dan AC', 'Kelas Reguler', 30),
('GSG213', 'lantai 2,Gedung F (GSG)', 'set-bangku meja 30 orang, papan tulis, proyektor dan AC', 'Kelas Reguler', 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`NIP`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_ruangan` (`id_ruangan`),
  ADD KEY `id_matkul` (`id_matkul`),
  ADD KEY `NIP` (`NIP`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id_matkul`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id_ruangan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
