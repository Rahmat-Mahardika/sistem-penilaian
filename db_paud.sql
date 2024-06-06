-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2024 at 02:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_paud`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `idadmin` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `idlogin` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` enum('admin','user') NOT NULL,
  `timelogin` datetime NOT NULL,
  `timelogout` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`idadmin`, `nama`, `idlogin`, `password`, `status`, `timelogin`, `timelogout`) VALUES
(2, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', '2024-06-06 18:59:52', '2024-06-06 19:31:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_anak`
--

CREATE TABLE `tbl_anak` (
  `noinduk` int(5) NOT NULL,
  `namalengkap` varchar(50) NOT NULL,
  `tempatlahir` varchar(50) NOT NULL,
  `tgllahir` date NOT NULL,
  `agama` enum('Islam','Khatolik','Protestan','Budha','Hindu','Kong Hu Chu') NOT NULL,
  `statusanak` enum('Kandung','Tiri') NOT NULL,
  `namaayah` varchar(50) NOT NULL,
  `namaibu` varchar(50) NOT NULL,
  `namawali` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_anak`
--

INSERT INTO `tbl_anak` (`noinduk`, `namalengkap`, `tempatlahir`, `tgllahir`, `agama`, `statusanak`, `namaayah`, `namaibu`, `namawali`, `password`) VALUES
(123, 'Naruto', 'Konoha', '2020-01-01', 'Islam', 'Kandung', 'Minato', 'Kushina', 'Hiruzen', '884ecc7ac05cb5d52aa970f523a3b7e6');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategorinilai`
--

CREATE TABLE `tbl_kategorinilai` (
  `idkategorinilai` int(2) NOT NULL,
  `namakategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_kategorinilai`
--

INSERT INTO `tbl_kategorinilai` (`idkategorinilai`, `namakategori`) VALUES
(1, 'NAM'),
(2, 'Bahasa'),
(3, 'Kognitif'),
(4, 'Sosial Emosional'),
(5, 'Seni'),
(6, 'FM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilaiagama`
--

CREATE TABLE `tbl_nilaiagama` (
  `idnilaiagama` int(11) NOT NULL,
  `noinduk` int(5) NOT NULL,
  `idpenilaian` int(2) NOT NULL,
  `nilai` enum('BB','MB','BSH','BSB') NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_nilaiagama`
--

INSERT INTO `tbl_nilaiagama` (`idnilaiagama`, `noinduk`, `idpenilaian`, `nilai`, `keterangan`) VALUES
(21, 123, 49, 'BSB', 'Berkembang sangat baik');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilaibahasa`
--

CREATE TABLE `tbl_nilaibahasa` (
  `idnilaibahasa` int(11) NOT NULL,
  `noinduk` int(5) NOT NULL,
  `idpenilaian` int(2) NOT NULL,
  `nilai` enum('BB','MB','BSH','BSB') NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_nilaibahasa`
--

INSERT INTO `tbl_nilaibahasa` (`idnilaibahasa`, `noinduk`, `idpenilaian`, `nilai`, `keterangan`) VALUES
(6, 123, 52, 'BSH', 'Berkembang sesuai harapan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilaifisik`
--

CREATE TABLE `tbl_nilaifisik` (
  `idnilaifisik` int(11) NOT NULL,
  `noinduk` int(5) NOT NULL,
  `idpenilaian` int(2) NOT NULL,
  `nilai` enum('BB','MB','BSH','BSB') NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_nilaifisik`
--

INSERT INTO `tbl_nilaifisik` (`idnilaifisik`, `noinduk`, `idpenilaian`, `nilai`, `keterangan`) VALUES
(8, 123, 51, 'BSH', 'Berkembang sesuai harapan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilaikonsep`
--

CREATE TABLE `tbl_nilaikonsep` (
  `idnilaikonsep` int(11) NOT NULL,
  `noinduk` int(5) NOT NULL,
  `idpenilaian` int(2) NOT NULL,
  `nilai` enum('BB','MB','BSH','BSB') NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_nilaikonsep`
--

INSERT INTO `tbl_nilaikonsep` (`idnilaikonsep`, `noinduk`, `idpenilaian`, `nilai`, `keterangan`) VALUES
(6, 123, 53, 'BSB', 'Berkembang sangat baik');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilaipengetahuan`
--

CREATE TABLE `tbl_nilaipengetahuan` (
  `idnilaipengetahuan` int(11) NOT NULL,
  `noinduk` int(5) NOT NULL,
  `idpenilaian` int(2) NOT NULL,
  `nilai` enum('BB','MB','BSH','BSB') NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_nilaipengetahuan`
--

INSERT INTO `tbl_nilaipengetahuan` (`idnilaipengetahuan`, `noinduk`, `idpenilaian`, `nilai`, `keterangan`) VALUES
(6, 123, 54, 'BSH', 'Berkembang sesuai harapan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilaisosial`
--

CREATE TABLE `tbl_nilaisosial` (
  `idnilaisosial` int(11) NOT NULL,
  `noinduk` int(5) NOT NULL,
  `idpenilaian` int(2) NOT NULL,
  `nilai` enum('BB','MB','BSH','BSB') NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_nilaisosial`
--

INSERT INTO `tbl_nilaisosial` (`idnilaisosial`, `noinduk`, `idpenilaian`, `nilai`, `keterangan`) VALUES
(7, 123, 50, 'BSH', 'Berkembang sesuai harapan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penilaian`
--

CREATE TABLE `tbl_penilaian` (
  `idpenilaian` int(11) NOT NULL,
  `idkategorinilai` int(2) NOT NULL,
  `penilaian` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_penilaian`
--

INSERT INTO `tbl_penilaian` (`idpenilaian`, `idkategorinilai`, `penilaian`) VALUES
(49, 1, 'Anak mampu mengenal bahwa binatang ciptaan Allah'),
(50, 6, 'Anak mampu menirukan cara berjalan binatang'),
(51, 3, 'Anak mampu mengenal macam-macam binatang darat'),
(52, 2, 'Anak mampu bercerita macam-macam makanan binatang'),
(53, 4, 'Anak terbiasa bersikap sportif dalam permainan'),
(54, 5, 'Anak mampu mewarnai gambar binatang dengan rapi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pesan`
--

CREATE TABLE `tbl_pesan` (
  `idpesan` int(4) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesan` text NOT NULL,
  `status` enum('Belum Dibaca','Dibaca') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_pesan`
--

INSERT INTO `tbl_pesan` (`idpesan`, `nama`, `email`, `pesan`, `status`) VALUES
(6, 'test', '123@gmail.com', 'helo', 'Belum Dibaca');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `tbl_anak`
--
ALTER TABLE `tbl_anak`
  ADD PRIMARY KEY (`noinduk`);

--
-- Indexes for table `tbl_kategorinilai`
--
ALTER TABLE `tbl_kategorinilai`
  ADD PRIMARY KEY (`idkategorinilai`);

--
-- Indexes for table `tbl_nilaiagama`
--
ALTER TABLE `tbl_nilaiagama`
  ADD PRIMARY KEY (`idnilaiagama`);

--
-- Indexes for table `tbl_nilaibahasa`
--
ALTER TABLE `tbl_nilaibahasa`
  ADD PRIMARY KEY (`idnilaibahasa`);

--
-- Indexes for table `tbl_nilaifisik`
--
ALTER TABLE `tbl_nilaifisik`
  ADD PRIMARY KEY (`idnilaifisik`);

--
-- Indexes for table `tbl_nilaikonsep`
--
ALTER TABLE `tbl_nilaikonsep`
  ADD PRIMARY KEY (`idnilaikonsep`);

--
-- Indexes for table `tbl_nilaipengetahuan`
--
ALTER TABLE `tbl_nilaipengetahuan`
  ADD PRIMARY KEY (`idnilaipengetahuan`);

--
-- Indexes for table `tbl_nilaisosial`
--
ALTER TABLE `tbl_nilaisosial`
  ADD PRIMARY KEY (`idnilaisosial`);

--
-- Indexes for table `tbl_penilaian`
--
ALTER TABLE `tbl_penilaian`
  ADD PRIMARY KEY (`idpenilaian`);

--
-- Indexes for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  ADD PRIMARY KEY (`idpesan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_kategorinilai`
--
ALTER TABLE `tbl_kategorinilai`
  MODIFY `idkategorinilai` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_nilaiagama`
--
ALTER TABLE `tbl_nilaiagama`
  MODIFY `idnilaiagama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_nilaibahasa`
--
ALTER TABLE `tbl_nilaibahasa`
  MODIFY `idnilaibahasa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_nilaifisik`
--
ALTER TABLE `tbl_nilaifisik`
  MODIFY `idnilaifisik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_nilaikonsep`
--
ALTER TABLE `tbl_nilaikonsep`
  MODIFY `idnilaikonsep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_nilaipengetahuan`
--
ALTER TABLE `tbl_nilaipengetahuan`
  MODIFY `idnilaipengetahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_nilaisosial`
--
ALTER TABLE `tbl_nilaisosial`
  MODIFY `idnilaisosial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_penilaian`
--
ALTER TABLE `tbl_penilaian`
  MODIFY `idpenilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  MODIFY `idpesan` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
