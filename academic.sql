-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 01, 2023 at 07:37 AM
-- Server version: 8.0.32
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classroo_uii_gateway`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_mahasiswa_aktif`
--

CREATE TABLE `academic_mahasiswa_aktif` (
  `id` varchar(36) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nim` varchar(8) NOT NULL,
  `nama_mahasiswa` varchar(255) NOT NULL,
  `kode_semester` int NOT NULL,
  `tahun_akademik` int NOT NULL,
  `id_semester` varchar(36) NOT NULL,
  `kode_prodi` int NOT NULL,
  `prodi` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ipk` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sks` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `academic_adm_lecturer_dpa`
--

CREATE TABLE `academic_adm_lecturer_dpa` (
  `nik` varchar(36) NOT NULL,
  `uuid` varchar(36) NOT NULL,
  `nama_dosen` varchar(255) NOT NULL,
  `nama_fakultas` varchar(255) NOT NULL,
  `nama_prodi` varchar(255) NOT NULL,
  `total_mahasiswa` int NOT NULL,
  `kd_fakultas` int NOT NULL,
  `kd_prodi` int NOT NULL,
  `nidn` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `flag_mempunyai_bimbingan` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `academic_assessment_changescore`
--

CREATE TABLE `academic_assessment_changescore` (
  `uuid_kelas` varchar(36) NOT NULL,
  `uuid_nilai` varchar(36) NOT NULL,
  `kd_matakuliah` varchar(15) NOT NULL,
  `nama_matakuliah` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `academic_data_master_student`
--

CREATE TABLE `academic_data_master_student` (
  `id` varchar(36) NOT NULL,
  `nim` varchar(8) NOT NULL,
  `nama_mahasiswa` varchar(255) NOT NULL,
  `warga_negara` varchar(255) NOT NULL,
  `passpor` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `alamat_asal` varchar(255) NOT NULL,
  `alamat_domisili` varchar(255) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` varchar(10) NOT NULL,
  `nomor_telepon` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `nama_ayah` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `nama_ibu` varchar(50) DEFAULT NULL,
  `nama_wali` varchar(100) DEFAULT NULL,
  `email_ayah` varchar(100) DEFAULT NULL,
  `email_ibu` varchar(100) DEFAULT NULL,
  `email_wali` varchar(100) DEFAULT NULL,
  `nomor_telepon_ayah` varchar(100) DEFAULT NULL,
  `nomor_telepon_ibu` varchar(100) DEFAULT NULL,
  `nomor_telepon_wali` varchar(100) DEFAULT NULL,
  `alamat_rumah_ayah` varchar(255) DEFAULT NULL,
  `alamat_rumah_ibu` varchar(255) DEFAULT NULL,
  `alamat_wali` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `academic_khs`
--

CREATE TABLE `academic_khs` (
  `id` varchar(36) NOT NULL,
  `nim` varchar(8) NOT NULL,
  `flag_survey` int DEFAULT NULL,
  `persentase_survey` int DEFAULT NULL,
  `nilai` varchar(5) NOT NULL,
  `nilai_angka` decimal(4,2) DEFAULT NULL,
  `flag_ambil_diprodi_lain` int DEFAULT NULL,
  `kd_prodi_mahasiswa` varchar(3) NOT NULL,
  `kd_prodi_matakuliah` varchar(3) NOT NULL,
  `kd_matakuliah` varchar(36) NOT NULL,
  `matakuliah` varchar(255) NOT NULL,
  `sks` decimal(3,2) NOT NULL,
  `periode` varchar(12) NOT NULL,
  `flag_posted` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `academic_khs_cumulative`
--

CREATE TABLE `academic_khs_cumulative` (
  `id` varchar(36) NOT NULL,
  `nim` varchar(8) NOT NULL,
  `kd_matakuliah` varchar(36) NOT NULL,
  `matakuliah` varchar(36) NOT NULL,
  `sks` varchar(4) NOT NULL,
  `flag_survey` int DEFAULT NULL,
  `persentase_survey` int DEFAULT NULL,
  `nilai` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `bobot` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `academic_parents`
--

CREATE TABLE `academic_parents` (
  `nim` varchar(8) NOT NULL,
  `nama_ayah` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `nama_ibu` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `nomor_telepon_ayah` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `nomor_telepon_ibu` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email_ayah` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email_ibu` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email_wali` varchar(255) DEFAULT NULL,
  `nama_wali` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `alamat_rumah_wali` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `nomor_telepon_wali` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `alamat_rumah_ayah` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `alamat_rumah_ibu` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `pekerjaan_ayah` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `pekerjaan_ibu` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `academic_student_advisor`
--

CREATE TABLE `academic_student_advisor` (
  `sort` varchar(36) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nim` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tahun` int NOT NULL,
  `status` varchar(36) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `habis_teori` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kp` varchar(36) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kkn` varchar(36) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ta` varchar(36) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sks` int NOT NULL,
  `ipk` decimal(2,1) NOT NULL,
  `masa_studi` decimal(2,1) NOT NULL,
  `masa_studi_detail` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `smt_masuk` int NOT NULL,
  `smt_mhs` int NOT NULL,
  `sisa_masa_studi` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nik` varchar(36) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_dosen` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `academic_student_search`
--

CREATE TABLE `academic_student_search` (
  `id_academic_search_student` varchar(36) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `angkatan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_mahasiswa` varchar(255) NOT NULL,
  `nim` varchar(8) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `no_hp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat_mhs` varchar(255) NOT NULL,
  `dpa` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nik_dpa` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ipk` decimal(3,2) NOT NULL,
  `sks` int NOT NULL,
  `konsentrasi` varchar(50) NOT NULL,
  `tutup_teori` varchar(255) NOT NULL,
  `kkn` varchar(255) NOT NULL,
  `skripsi` varchar(255) NOT NULL,
  `tgl_lulus` varchar(50) NOT NULL,
  `log` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_mahasiswa_aktif`
--
ALTER TABLE `academic_mahasiswa_aktif`
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD UNIQUE KEY `kode_semester` (`kode_semester`,`nim`) USING BTREE;

--
-- Indexes for table `academic_adm_lecturer_dpa`
--
ALTER TABLE `academic_adm_lecturer_dpa`
  ADD PRIMARY KEY (`nik`),
  ADD UNIQUE KEY `nik` (`nik`,`uuid`);

--
-- Indexes for table `academic_data_master_student`
--
ALTER TABLE `academic_data_master_student`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `nim` (`nim`);

--
-- Indexes for table `academic_khs`
--
ALTER TABLE `academic_khs`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `uniqmahasiswa` (`nim`,`periode`,`kd_matakuliah`);

--
-- Indexes for table `academic_khs_cumulative`
--
ALTER TABLE `academic_khs_cumulative`
  ADD UNIQUE KEY `uniq` (`nim`,`kd_matakuliah`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `academic_parents`
--
ALTER TABLE `academic_parents`
  ADD UNIQUE KEY `nim` (`nim`);

--
-- Indexes for table `academic_student_advisor`
--
ALTER TABLE `academic_student_advisor`
  ADD UNIQUE KEY `nim` (`nim`) USING BTREE;

--
-- Indexes for table `academic_student_search`
--
ALTER TABLE `academic_student_search`
  ADD UNIQUE KEY `id_academic_search_student` (`id_academic_search_student`) USING BTREE,
  ADD UNIQUE KEY `nim` (`nim`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
