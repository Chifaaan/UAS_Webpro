-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2024 at 06:33 PM
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
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `id_ruangan` varchar(25) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `fasilitas` varchar(255) NOT NULL,
  `jenis_ruangan` varchar(35) NOT NULL,
  `kapasitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`id_ruangan`, `lokasi`, `fasilitas`, `jenis_ruangan`, `kapasitas`) VALUES
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
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id_ruangan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
