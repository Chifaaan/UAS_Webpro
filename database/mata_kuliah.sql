-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2024 at 02:09 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id_matkul`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
