-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2024 at 07:50 PM
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
-- Database: `sijafas`
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
(1, 'GSG201', '1101', '198807122018032001', 'Senin', '2024-01-01', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(2, 'GSG201', '1102', '197904282005012002', 'Senin', '2024-01-01', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(3, 'GSG202', '1103', '198606072019031011', 'Senin', '2024-01-01', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(4, 'GSG202', '1104', '520000000000000228', 'Senin', '2024-01-01', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(5, 'GSG203', '1105', '199201302019032018', 'Senin', '2024-01-01', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(6, 'GSG203', '1106', '195808171986121001', 'Senin', '2024-01-01', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(7, 'GSG204', '1107', '199201302019032018', 'Senin', '2024-01-01', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(8, 'GSG204', '1108', '198111162005012004', 'Senin', '2024-01-01', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(9, 'GSG205', '1109', '9202017012019840513', 'Senin', '2024-01-01', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(10, 'GSG205', '1110', '198703132019031012', 'Senin', '2024-01-01', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(11, 'GSG206', '1301', '195809201984031001', 'Selasa', '2024-01-02', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(12, 'GSG206', '1302', '197802032005012002', 'Selasa', '2024-01-02', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(13, 'GSG207', '1303', '199109262019031012', 'Selasa', '2024-01-02', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(14, 'GSG207', '1304', '198606072019031011', 'Selasa', '2024-01-02', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(15, 'GSG208', '1305', '199303022019032022', 'Rabu', '2024-01-03', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(16, 'GSG208', '1306', '195609231987031002', 'Rabu', '2024-01-03', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(17, 'GSG209', '1307', '198502272015042001', 'Rabu', '2024-01-03', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(18, 'GSG209', '1308', '199201302019032018', 'Kamis', '2024-01-04', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(19, 'GSG210', '1309', '199303022019032022', 'Kamis', '2024-01-04', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(20, 'GSG210', '1310', '197802112009121003', 'Kamis', '2024-01-04', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(21, 'GSG211', '1701', '198411292020121002', 'Jumat', '2024-01-05', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(22, 'GSG211', '1702', '23072014090119801027', 'Jumat', '2024-01-05', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(23, 'GSG212', '1703', '199201302019032018', 'Jumat', '2024-01-05', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(24, 'GSG212', '2101', '198910112018032002', 'Jumat', '2024-01-05', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(25, 'GSG213', '2102', '199201302019032018', 'Senin', '2024-01-08', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(26, 'GSG213', '2102', '199303022019032022', 'Senin', '2024-01-08', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(27, 'GSG202', '2103', '198501292010121003', 'Senin', '2024-01-08', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(28, 'GSG202', '2104', '197605302008121002', 'Senin', '2024-01-08', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(29, 'AA202', '2105', '199007252020122012', 'Senin', '2024-01-08', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(30, 'AA202', '2106', '199303022019032022', 'Senin', '2024-01-08', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(31, 'AA203', '2107', '198502272015042001', 'Selasa', '2024-01-09', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(32, 'AA203', '2108', '199110042019032024', 'Selasa', '2024-01-09', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(33, 'AA204', '3101', '197605302008121002', 'Rabu', '2024-01-09', 'Pembelajaran Reguler', '07:30:02', '10:56:02', NULL, 'Dipinjam'),
(34, 'AA204', '3102', '195808171986121001', 'Rabu', '2024-01-17', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(35, 'AA205', '3103', '195808171986121001', 'Rabu', '2024-01-17', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(36, 'AA205', '3104', '198112012015041001', 'Rabu', '2024-01-17', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(37, 'AA301', '3105', '197011061998021001', 'Kamis', '2024-01-18', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(38, 'AA301', '3106', '197802032005012002', 'Kamis', '2024-01-18', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(39, 'AA302', '3107', '198112012015041001', 'Kamis', '2024-01-18', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(40, 'AA302', '3108', '197802112009121003', 'Jumat', '2024-01-19', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(41, 'AA303', '3109', '195609231987031002', 'Jumat', '2024-01-19', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(42, 'AA303', '3110', '198112012015041001', 'Jumat', '2024-01-19', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(43, 'AA304', '3301', '197802112009121003', 'Jumat', '2024-01-19', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(44, 'AA304', '3302', '198111162005012004', 'Senin', '2024-01-22', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(45, 'AA305', '3303', '197009152008121001', 'Senin', '2024-01-22', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(46, 'AA305', '3304', '195808171986121001', 'Senin', '2024-01-22', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(47, 'GSG201', '3305', '197509152003122003', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(48, 'GSG201', '3306', '198112012015041001', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(49, 'GSG202', '3307', '195809201984031001', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(50, 'GSG202', '3308', '197910062003122001', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(51, 'GSG203', '3309', '195809201984031001', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(52, 'GSG203', '3501', '197011061998021001', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(53, 'GSG204', '3502', '197802032005012002', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(54, 'GSG204', '3503', '197509152003122003', 'Rabu', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(55, 'GSG205', '3504', '195808171986121001', 'Rabu', '2024-01-24', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(56, 'GSG205', '3505', '197904282005012002', 'Rabu', '2024-01-24', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(57, 'GSG206', '3506', '196311131989032001', 'Rabu', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(58, 'GSG206', '3507', '197009152008121001', 'Rabu', '2024-01-24', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(59, 'GSG207', '3701', '197509152003122003', 'Kamis', '2024-01-25', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(60, 'GSG207', '3702', '195809201984031001', 'Kamis', '2024-01-25', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(61, 'GSG207', '3703', '195609231987031002', 'Kamis', '2024-01-25', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(62, 'GSG208', '4101', '195609231987031002', 'Jumat', '2024-01-26', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(63, 'GSG208', '4102', '195708101986031005', 'Jumat', '2024-01-26', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(64, 'GSG209', '4103', '195808171986121001', 'Senin', '2024-01-29', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(65, 'GSG209', '4104', '195809201984031001', 'Senin', '2024-01-29', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(66, 'GSG210', '4105', '196311131989032001', 'Selasa', '2024-01-30', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(67, 'GSG210', '4106', '197009152008121001', 'Selasa', '2024-01-30', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(68, 'GSG211', '4107', '197011061998021001', 'Rabu', '2024-01-31', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(69, 'GSG211', '4108', '197509152003122003', 'Rabu', '2024-01-31', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(70, 'GSG212', '4109', '197605302008121002', 'Kamis', '2024-02-01', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(71, 'GSG213', '4301', '195609231987031002', 'Jumat', '2024-02-02', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(72, 'GSG213', '4302', '195708101986031005', 'Jumat', '2024-02-02', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(75, 'AA202', '4303', '195808171986121001', 'Senin', '2024-02-05', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(76, 'AA202', '4304', '196311131989032001', 'Senin', '2024-02-05', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(77, 'AA203', '4305', '195809201984031001', 'Selasa', '2024-02-06', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(78, 'AA203', '4306', '197009152008121001', 'Selasa', '2024-02-06', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(79, 'AA204', '4307', '197011061998021001', 'Rabu', '2024-02-07', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(80, 'AA204', '4308', '197509152003122003', 'Rabu', '2024-02-07', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(81, 'AA205', '4309', '197605302008121002', 'Kamis', '2024-02-08', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(82, 'AA205', '4310', '197802032005012002', 'Kamis', '2024-02-08', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(83, 'AA301', '4501', '195609231987031002', 'Jumat', '2024-02-09', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(84, 'AA301', '4502', '195708101986031005', 'Jumat', '2024-02-09', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(89, 'AA302', '4503', '195808171986121001', 'Senin', '2024-02-12', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(90, 'AA302', '4504', '195809201984031001', 'Senin', '2024-02-12', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(91, 'AA303', '4505', '196311131989032001', 'Selasa', '2024-02-13', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(92, 'AA303', '4506', '197009152008121001', 'Selasa', '2024-02-13', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(93, 'AA303', '4507', '197011061998021001', 'Selasa', '2024-02-13', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam');

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
  MODIFY `id_jadwal` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwak_ibfk_1` FOREIGN KEY (`id_matkul`) REFERENCES `mata_kuliah` (`id_matkul`),
  ADD CONSTRAINT `jadwak_ibfk_2` FOREIGN KEY (`id_ruangan`) REFERENCES `ruangan` (`id_ruangan`),
  ADD CONSTRAINT `jadwak_ibfk_3` FOREIGN KEY (`NIP`) REFERENCES `dosen` (`NIP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
