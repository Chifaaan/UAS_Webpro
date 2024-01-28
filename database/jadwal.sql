-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2024 at 05:53 PM
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
(27, 'GSG214', '2103', '198501292010121003', 'Senin', '2024-01-08', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(28, 'GSG214', '2104', '197605302008121002', 'Senin', '2024-01-08', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
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
(42, 'AA303', '3110', '198112012015041001', 'Jumat', '2024-01-19', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(43, 'AA304', '3301', '197802112009121003', 'Jumat', '2024-01-19', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(44, 'AA304', '3302', '198111162005012004', 'Senin', '2024-01-22', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(45, 'AA305', '3303', '197009152008121001', 'Senin', '2024-01-22', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(46, 'AA305', '3304', '195808171986121001', 'Senin', '2024-01-22', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(47, 'GSG201', '3305', '197509152003122003', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(48, 'GSG201', '3306', '198112012015041001', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(49, 'GSG202', '3307', '195809201984031001', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(50, 'GSG202', '3308', '197910062003122001', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(61, 'GSG203', '3309', '195809201984031001', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(64, 'GSG303', '3501', '197011061998021001', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(65, 'GSG204', '3502', '197802032005012002', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(71, 'GSG204', '3503', '197509152003122003', 'Rabu', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(72, 'GSG205', '3504', '195808171986121001', 'Rabu', '2024-01-24', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(73, 'GSG205', '3505', '197904282005012002', 'Rabu', '2024-01-24', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(74, 'GSG206', '3506', '196311131989032001', 'Rabu', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(75, 'GSG206', '3507', '197009152008121001', 'Rabu', '2024-01-24', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(76, 'GSG207', '3701', '197509152003122003', 'Kamis', '2024-01-25', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(77, 'GSG207', '3702', '195809201984031001', 'Kamis', '2024-01-25', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(78, 'GSG207', '3703', '195609231987031002', 'Kamis', '2024-01-25', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Pembelajar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_ruangan` (`id_ruangan`),
  ADD KEY `id_matkul` (`id_matkul`),
  ADD KEY `NIP` (`NIP`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwak_ibfk_1` FOREIGN KEY (`id_matkul`) REFERENCES `mata_kuliah` (`id_matkul`),
  ADD CONSTRAINT `jadwak_ibfk_3` FOREIGN KEY (`NIP`) REFERENCES `dosen` (`NIP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
