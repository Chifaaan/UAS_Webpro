-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jan 2024 pada 15.23
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

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
-- Struktur dari tabel `jadwal`
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
-- Dumping data untuk tabel `jadwal`
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
(23, 'GSG212', '1703', '199201302019032018', 'Jumat', '2024-01-05', 'Pembelajaran Reguler', NULL, NULL, NULL, 'Dipinjam');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_ruangan` (`id_ruangan`),
  ADD KEY `id_matkul` (`id_matkul`),
  ADD KEY `NIP` (`NIP`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`id_matkul`) REFERENCES `mata_kuliah` (`id_matkul`),
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`id_ruangan`) REFERENCES `ruangan` (`id_ruangan`),
  ADD CONSTRAINT `jadwal_ibfk_3` FOREIGN KEY (`NIP`) REFERENCES `dosen` (`NIP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
