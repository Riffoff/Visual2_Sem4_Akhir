-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2023 at 06:53 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visual2akhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_hub`
--

CREATE TABLE `tabel_hub` (
  `id_hub` int(10) NOT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_ortu` int(11) DEFAULT NULL,
  `status_hubungan` char(50) DEFAULT NULL,
  `keterangan` char(50) DEFAULT NULL,
  `status_ortu` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_hub`
--

INSERT INTO `tabel_hub` (`id_hub`, `id_siswa`, `id_ortu`, `status_hubungan`, `keterangan`, `status_ortu`) VALUES
(1, 2, 1, 'Kandung', 'Ayah', 'Hidup'),
(3, 1, 2, 'Angkat', 'Paman', 'Hidup'),
(4, 1, 1, 'Buangan', 'Step Father', 'Mati Suri');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_kelas`
--

CREATE TABLE `tabel_kelas` (
  `id_kelas` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `jurusan` enum('IPA','IPS') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_kelas`
--

INSERT INTO `tabel_kelas` (`id_kelas`, `nama`, `jenis`, `jurusan`) VALUES
(1, '9', 'A', 'IPS'),
(2, '9', 'A', 'IPA'),
(3, '9', 'B', 'IPS'),
(4, '9', 'B', 'IPA');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_ortu`
--

CREATE TABLE `tabel_ortu` (
  `id_ortu` int(10) NOT NULL,
  `nik` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `pendidikan` varchar(20) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` varchar(15) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_ortu`
--

INSERT INTO `tabel_ortu` (`id_ortu`, `nik`, `nama`, `pendidikan`, `pekerjaan`, `telp`, `alamat`, `jenis_kelamin`, `agama`, `status`) VALUES
(1, '6371234542', 'Ryan', 'SMA', 'WIRASWASTA', '0897654321', 'JL. HKSN', 'L', 'Islam', 'Hidup'),
(2, '4571092736', 'Ligma', 'SMA', 'PETANI', '081234567890', 'JL. Sugondese', 'L', 'Katolik', 'Hidup'),
(3, '2673645183', 'Aisha', 'S1', 'IRT', '089765', 'JL behapal', 'P', 'Islam', 'Hidup');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_poin`
--

CREATE TABLE `tabel_poin` (
  `id_poin` int(10) NOT NULL,
  `nama_poin` varchar(15) NOT NULL,
  `bobot` varchar(10) NOT NULL,
  `jenis` enum('Prestasi','Pelanggaran') NOT NULL,
  `status` enum('True','False') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_poin`
--

INSERT INTO `tabel_poin` (`id_poin`, `nama_poin`, `bobot`, `jenis`, `status`) VALUES
(1, 'Bekelahi', '3', 'Pelanggaran', 'True'),
(2, 'Datang Terlamba', '1', 'Pelanggaran', 'True');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_semester`
--

CREATE TABLE `tabel_semester` (
  `id_semester` int(11) NOT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_poin` int(11) DEFAULT NULL,
  `id_wali` int(11) DEFAULT NULL,
  `id_ortu` int(11) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `tingkat_kelas` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_semester`
--

INSERT INTO `tabel_semester` (`id_semester`, `id_siswa`, `id_poin`, `id_wali`, `id_ortu`, `id_kelas`, `tanggal`, `semester`, `status`, `tingkat_kelas`) VALUES
(1, 2, 1, 2, 2, 1, '2023-06-28', '8', 'Hidup', '13');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_siswa`
--

CREATE TABLE `tabel_siswa` (
  `id_siswa` int(10) NOT NULL,
  `nis` varchar(15) NOT NULL,
  `nisn` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nik` varchar(13) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_siswa`
--

INSERT INTO `tabel_siswa` (`id_siswa`, `nis`, `nisn`, `nama`, `nik`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `telp`, `hp`, `status`) VALUES
(1, '231231112', '54300948561', 'Maya', '6378654', 'Backroom', '2023-06-26', 'P', 'Jl Luis', '087654', '089765', 'Aktif'),
(2, '938364416', '89879762937', 'Gakpo', '636544', 'Banjarmasin', '2023-06-28', 'L', 'Jl behapal', '081211', '08121', 'Aktif'),
(3, '357281599', '91624345234', 'Pinkman', '23557532', 'Albuquerque', '2023-06-28', 'L', 'Jl Margo', '081211', '08121', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_user`
--

CREATE TABLE `tabel_user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(8) NOT NULL,
  `level` varchar(15) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_user`
--

INSERT INTO `tabel_user` (`id_user`, `username`, `password`, `level`, `status`) VALUES
(1, 'Rifqi', 'admin098', 'admin', 'True'),
(2, 'Lutung', 'admin098', 'admin', 'True');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_wali_kelas`
--

CREATE TABLE `tabel_wali_kelas` (
  `id_wali` int(10) NOT NULL,
  `nik` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `pendidikan` varchar(30) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `matpel` varchar(15) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_wali_kelas`
--

INSERT INTO `tabel_wali_kelas` (`id_wali`, `nik`, `nama`, `jenis_kelamin`, `pendidikan`, `telp`, `matpel`, `alamat`, `status`) VALUES
(1, '12132565224', 'Rudi', 'L', 'S.PD', '08976545', 'Biologi', 'JL. KAYU TANGI', 'HONOR'),
(2, '65874736425', 'Joko', 'L', 'S.PD', '086543221', 'B Inggris', 'JL. PEMURUS', 'HONOR'),
(3, '11420694200', 'Heisenberg', 'L', 'M.SI', '152633825', 'Kimia', 'JL. Negra Arroyo', 'TETAP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_hub`
--
ALTER TABLE `tabel_hub`
  ADD PRIMARY KEY (`id_hub`),
  ADD KEY `fk_hubungan_ortu` (`id_ortu`),
  ADD KEY `fk_hubungan_siswa` (`id_siswa`);

--
-- Indexes for table `tabel_kelas`
--
ALTER TABLE `tabel_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tabel_ortu`
--
ALTER TABLE `tabel_ortu`
  ADD PRIMARY KEY (`id_ortu`);

--
-- Indexes for table `tabel_poin`
--
ALTER TABLE `tabel_poin`
  ADD PRIMARY KEY (`id_poin`);

--
-- Indexes for table `tabel_semester`
--
ALTER TABLE `tabel_semester`
  ADD PRIMARY KEY (`id_semester`),
  ADD KEY `fk_semester_siswa` (`id_siswa`),
  ADD KEY `fk_semester_poin` (`id_poin`),
  ADD KEY `fk_semester_wali` (`id_wali`),
  ADD KEY `fk_semester_ortu` (`id_ortu`),
  ADD KEY `fk_semester_kelas` (`id_kelas`);

--
-- Indexes for table `tabel_siswa`
--
ALTER TABLE `tabel_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tabel_wali_kelas`
--
ALTER TABLE `tabel_wali_kelas`
  ADD PRIMARY KEY (`id_wali`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_hub`
--
ALTER TABLE `tabel_hub`
  MODIFY `id_hub` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tabel_kelas`
--
ALTER TABLE `tabel_kelas`
  MODIFY `id_kelas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tabel_ortu`
--
ALTER TABLE `tabel_ortu`
  MODIFY `id_ortu` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tabel_poin`
--
ALTER TABLE `tabel_poin`
  MODIFY `id_poin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tabel_semester`
--
ALTER TABLE `tabel_semester`
  MODIFY `id_semester` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tabel_siswa`
--
ALTER TABLE `tabel_siswa`
  MODIFY `id_siswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tabel_user`
--
ALTER TABLE `tabel_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tabel_wali_kelas`
--
ALTER TABLE `tabel_wali_kelas`
  MODIFY `id_wali` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tabel_hub`
--
ALTER TABLE `tabel_hub`
  ADD CONSTRAINT `fk_hubungan_ortu` FOREIGN KEY (`id_ortu`) REFERENCES `tabel_ortu` (`id_ortu`),
  ADD CONSTRAINT `fk_hubungan_siswa` FOREIGN KEY (`id_siswa`) REFERENCES `tabel_siswa` (`id_siswa`);

--
-- Constraints for table `tabel_semester`
--
ALTER TABLE `tabel_semester`
  ADD CONSTRAINT `fk_semester_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `tabel_kelas` (`id_kelas`),
  ADD CONSTRAINT `fk_semester_ortu` FOREIGN KEY (`id_ortu`) REFERENCES `tabel_ortu` (`id_ortu`),
  ADD CONSTRAINT `fk_semester_poin` FOREIGN KEY (`id_poin`) REFERENCES `tabel_poin` (`id_poin`),
  ADD CONSTRAINT `fk_semester_siswa` FOREIGN KEY (`id_siswa`) REFERENCES `tabel_siswa` (`id_siswa`),
  ADD CONSTRAINT `fk_semester_wali` FOREIGN KEY (`id_wali`) REFERENCES `tabel_wali_kelas` (`id_wali`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
