-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2024 at 08:29 PM
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
(21, 'GSG211', '1501', '195609231987031002', 'Kamis', '2024-01-04', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(22, 'GSG211', '1502', '195708101986031005', 'Kamis', '2024-01-04', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(23, 'GSG212', '1503', '195808171986121001', 'Kamis', '2024-01-04', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(24, 'GSG212', '1504', '195809201984031001', 'Kamis', '2024-01-04', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(25, 'AA202', '1505', '197011061998021001', 'Jumat', '2024-01-05', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(26, 'AA202', '1506', '198112012015041001', 'Jumat', '2024-01-05', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(27, 'AA203', '1507', '197908032003122003', 'Jumat', '2024-01-05', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(28, 'GSG211', '1701', '198411292020121002', 'Jumat', '2024-01-05', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(29, 'GSG211', '1702', '23072014090119801027', 'Jumat', '2024-01-05', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(30, 'GSG212', '1703', '199201302019032018', 'Jumat', '2024-01-05', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(31, 'GSG212', '2101', '198910112018032002', 'Jumat', '2024-01-05', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(32, 'GSG213', '2102', '199201302019032018', 'Senin', '2024-01-08', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(33, 'GSG213', '2102', '199303022019032022', 'Senin', '2024-01-08', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(34, 'GSG202', '2103', '198501292010121003', 'Senin', '2024-01-08', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(35, 'GSG202', '2104', '197605302008121002', 'Senin', '2024-01-08', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(36, 'AA202', '2105', '199007252020122012', 'Senin', '2024-01-08', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(37, 'AA202', '2106', '199303022019032022', 'Senin', '2024-01-08', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(38, 'AA203', '2107', '198502272015042001', 'Selasa', '2024-01-09', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(39, 'AA203', '2108', '199110042019032024', 'Selasa', '2024-01-09', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(40, 'AA204', '3101', '197605302008121002', 'Rabu', '2024-01-09', 'Pembelajaran Reguler', '07:30:02', '10:56:02', NULL, 'Dipinjam'),
(41, 'AA204', '3102', '195808171986121001', 'Rabu', '2024-01-17', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(42, 'AA205', '3103', '195808171986121001', 'Rabu', '2024-01-17', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(43, 'AA205', '3104', '198112012015041001', 'Rabu', '2024-01-17', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(44, 'AA301', '3105', '197011061998021001', 'Kamis', '2024-01-18', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(45, 'AA301', '3106', '197802032005012002', 'Kamis', '2024-01-18', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(46, 'AA302', '3107', '198112012015041001', 'Kamis', '2024-01-18', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(47, 'AA302', '3108', '197802112009121003', 'Jumat', '2024-01-19', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(48, 'AA303', '3109', '195609231987031002', 'Jumat', '2024-01-19', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(49, 'AA303', '3110', '198112012015041001', 'Jumat', '2024-01-19', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(50, 'AA304', '3301', '197802112009121003', 'Jumat', '2024-01-19', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(51, 'AA304', '3302', '198111162005012004', 'Senin', '2024-01-22', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(52, 'AA305', '3303', '197009152008121001', 'Senin', '2024-01-22', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(53, 'AA305', '3304', '195808171986121001', 'Senin', '2024-01-22', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(54, 'GSG201', '3305', '197509152003122003', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(55, 'GSG201', '3306', '198112012015041001', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(56, 'GSG202', '3307', '195809201984031001', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(57, 'GSG202', '3308', '197910062003122001', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(58, 'GSG203', '3309', '195809201984031001', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(59, 'GSG203', '3501', '197011061998021001', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(60, 'GSG204', '3502', '197802032005012002', 'Selasa', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(61, 'GSG204', '3503', '197509152003122003', 'Rabu', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(62, 'GSG205', '3504', '195808171986121001', 'Rabu', '2024-01-24', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(63, 'GSG205', '3505', '197904282005012002', 'Rabu', '2024-01-24', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(64, 'GSG206', '3506', '196311131989032001', 'Rabu', '2024-01-23', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(65, 'GSG206', '3507', '197009152008121001', 'Rabu', '2024-01-24', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(66, 'GSG207', '3701', '197509152003122003', 'Kamis', '2024-01-25', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(67, 'GSG207', '3702', '195809201984031001', 'Kamis', '2024-01-25', 'Pembelajaran Reguler', NULL, NULL, NULL, 'DIpinjam'),
(68, 'GSG207', '3703', '195609231987031002', 'Kamis', '2024-01-25', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(69, 'GSG208', '4101', '195609231987031002', 'Jumat', '2024-01-26', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(70, 'GSG208', '4102', '195708101986031005', 'Jumat', '2024-01-26', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(71, 'GSG209', '4103', '195808171986121001', 'Senin', '2024-01-29', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(72, 'GSG209', '4104', '195809201984031001', 'Senin', '2024-01-29', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(73, 'GSG210', '4105', '196311131989032001', 'Selasa', '2024-01-30', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(74, 'GSG210', '4106', '197009152008121001', 'Selasa', '2024-01-30', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(75, 'GSG211', '4107', '197011061998021001', 'Rabu', '2024-01-31', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(76, 'GSG211', '4108', '197509152003122003', 'Rabu', '2024-01-31', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(77, 'GSG212', '4109', '197605302008121002', 'Kamis', '2024-02-01', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(78, 'GSG213', '4301', '195609231987031002', 'Jumat', '2024-02-02', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(79, 'GSG213', '4302', '195708101986031005', 'Jumat', '2024-02-02', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(80, 'AA202', '4303', '195808171986121001', 'Senin', '2024-02-05', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(81, 'AA202', '4304', '196311131989032001', 'Senin', '2024-02-05', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(82, 'AA203', '4305', '195809201984031001', 'Selasa', '2024-02-06', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(83, 'AA203', '4306', '197009152008121001', 'Selasa', '2024-02-06', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(84, 'AA204', '4307', '197011061998021001', 'Rabu', '2024-02-07', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(85, 'AA204', '4308', '197509152003122003', 'Rabu', '2024-02-07', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(86, 'AA205', '4309', '197605302008121002', 'Kamis', '2024-02-08', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(87, 'AA205', '4310', '197802032005012002', 'Kamis', '2024-02-08', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(88, 'AA301', '4501', '195609231987031002', 'Jumat', '2024-02-09', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(89, 'AA301', '4502', '195708101986031005', 'Jumat', '2024-02-09', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(90, 'AA302', '4503', '195808171986121001', 'Senin', '2024-02-12', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(91, 'AA302', '4504', '195809201984031001', 'Senin', '2024-02-12', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(92, 'AA303', '4505', '196311131989032001', 'Selasa', '2024-02-13', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(93, 'AA303', '4506', '197009152008121001', 'Selasa', '2024-02-13', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam'),
(94, 'AA303', '4507', '197011061998021001', 'Selasa', '2024-02-13', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam');

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
  MODIFY `id_jadwal` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

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
