-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 25, 2015 at 12:52 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbruangbaca`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE IF NOT EXISTS `buku` (
  `id_buku` varchar(10) NOT NULL,
  `id_rak` varchar(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `jml_buku` int(11) NOT NULL,
  `th_terbit` int(11) NOT NULL,
  PRIMARY KEY (`id_buku`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `id_rak`, `judul`, `pengarang`, `penerbit`, `jml_buku`, `th_terbit`) VALUES
('1', 'B01', 'Jaringan Komputer', 'Agus Prihanto', 'Informatika ', 200, 2010),
('2', 'B02', 'Basis Data', 'Fathansyah', 'Informatika Bandung', 170, 2009),
('3', 'B03', 'Sistem Pengarsipan dan Metode Akses', 'Bambang Hariyanto', 'Informatika Bandung', 250, 2010),
('4', 'B04', 'Sistem Operasi Revisi ke-4', 'Bambang Hariyanto', 'Informatika Bandung', 190, 2009),
('5', 'B05', 'Pemrograman Berorientasi Obyek C#', 'Erico Darmawan', 'Informatika', 210, 2010),
('6', 'B06', 'Panduan Menggunakan mapserver', 'Ruslan Nut yadin', 'Informatika', 230, 2008),
('7', 'B07', 'Pemrograman Borland C++', 'Imam Harianto', 'Informatika', 240, 2008),
('8', 'B08', 'Instalasi dan Konfigurasi Jaringan Komputer', 'Dede Sopandi', 'Informatika', 150, 2007),
('9', 'B09', 'Mudah Belajar Java+CD', 'Budi Raharjo', 'Informatika', 160, 2008);

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE IF NOT EXISTS `dosen` (
  `id_anggota` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id_anggota`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_anggota`, `username`, `password`) VALUES
(1, 'dwi fatrianto', '197912202008121001'),
(2, 'yuni yamasari', '197506022003122001'),
(3, 'andi iwan', '197810272008121002'),
(4, 'I gusti lanang eka lanang ', '198003252008121001'),
(5, 'agus prihanto', '197908062006041001'),
(6, 'ricky eka putra', '198701162014051046');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `id_anggota` int(11) NOT NULL AUTO_INCREMENT,
  `nim` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  PRIMARY KEY (`id_anggota`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_anggota`, `nim`, `nama`) VALUES
(1, 135623083, 'siti eli rahma'),
(2, 135623079, 'Melya'),
(3, 135623062, 'Margalita'),
(4, 135623072, 'Hanna'),
(5, 135623071, 'Rifani'),
(12, 135623061, 'Bik');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE IF NOT EXISTS `peminjaman` (
  `id_peminjaman` int(50) NOT NULL AUTO_INCREMENT,
  `id_petugas` varchar(50) NOT NULL,
  `id_anggota` varchar(50) NOT NULL,
  `id_buku` varchar(50) NOT NULL,
  `tgl_peminjaman` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `denda` int(11) NOT NULL,
  PRIMARY KEY (`id_peminjaman`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_petugas`, `id_anggota`, `id_buku`, `tgl_peminjaman`, `tgl_pengembalian`, `denda`) VALUES
(1, '2', '1', '1', '2015-05-18', '2015-05-27', 30000),
(2, '2', '2', '4', '2015-05-01', '2015-05-07', 20000),
(3, '2', '3', '7', '2015-05-05', '2015-05-11', 20000),
(4, '2', '4', '4', '2015-05-17', '2015-05-23', 20000),
(5, '2', '5', '7', '2015-05-21', '2015-05-28', 30000),
(6, '2', '6', '9', '2015-05-24', '2015-05-30', 20000),
(9, '2', '1', '1', '2015-05-03', '2015-05-08', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE IF NOT EXISTS `petugas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id`, `username`, `password`, `jabatan`) VALUES
(1, 'Naim Rochmawati S.Kom, M.T.', 'naim', 'kepala ruang baca'),
(2, 'Ratna', 'ratna', 'operator');

-- --------------------------------------------------------

--
-- Table structure for table `pi`
--

CREATE TABLE IF NOT EXISTS `pi` (
  `id_buku` int(11) NOT NULL AUTO_INCREMENT,
  `id_rak` varchar(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun` int(11) NOT NULL,
  PRIMARY KEY (`id_buku`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `pi`
--

INSERT INTO `pi` (`id_buku`, `id_rak`, `judul`, `pengarang`, `penerbit`, `tahun`) VALUES
(1, 'P01', 'Aplikasi Pengenalan Angka Dan Warna Dalam Bahasa Arab Berbasis Android', 'Rizqina Wati', 'Ari Kurniawan, S.Kom., M.T.', 2015),
(2, 'P02', 'Sistem Pengukuran Standar Pelayanan Minimal (SPM) ', 'Yelsin Aldi Rahadian Matondang', 'Anita Qoiriah, S.kom., M.Kom', 2015),
(3, 'P03', 'Rancang Bangun Web Survei Kepuasan Pelanggan (Maha', 'Rizki Kuswantoro', 'I Kadek Dwi N, S.T., M.Kom', 2015),
(4, 'P04', 'Implementasi Antispam, Openldap Dan Multi Domain  ', 'Trisna Elly Kusuma', 'Asmunin, S.Kom., M.kom', 2015),
(5, 'P05', 'Sistem Pendukung Keputusan Penentuan Headline Pada', 'Dwi Yulianti Nariningtyas', 'Anita Qoiriah, S.Kom., M.Kom.', 2015),
(6, 'P06', 'Rancang Bangun Aplikasi Carring Territory Based (C', 'Alvons Andreas', 'Rina Harimurti, S.Pd., M.T', 2014),
(7, 'P07', 'SISTEM INFORMASI PONDOK PESANTREN BUMI DAMAI AL MU', 'Moch.Khoiruddin Niza', 'Anita Qoiriah, S. Kom., M. Kom', 2014),
(8, 'P08', 'Rancang Bangun Sistem Pakar Untuk Mendiagnnosis Pe', 'Ika Anggraini Ratna S R', 'Salamun R. Nudin, S.Kom.,M.Kom', 2014),
(9, 'P09', 'Sistem Informasi Distribusi Buku LKS pada CV. Sina', 'Syahidah Azzahro', 'Anita Qoiriah, S.Kom., M.Kom', 2014),
(10, 'P10', 'Rancang Bangun Aplikasi Survei Khusus Pendapatan R', 'Ronzi Yusri Hadiansyah', 'Anita Qoiriah, S.Kom., M.Kom', 2014);

-- --------------------------------------------------------

--
-- Table structure for table `skripsi`
--

CREATE TABLE IF NOT EXISTS `skripsi` (
  `id_buku` int(11) NOT NULL AUTO_INCREMENT,
  `id_rak` varchar(50) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun` int(11) NOT NULL,
  PRIMARY KEY (`id_buku`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `skripsi`
--

INSERT INTO `skripsi` (`id_buku`, `id_rak`, `judul`, `pengarang`, `penerbit`, `tahun`) VALUES
(1, 'S01', 'sistem informasi geografis pencatatan kejahatan da', 'alfia rahma', 'Salamun Rohman Nudin S.Kom., M.Kom', 2013),
(2, 'S02', 'Sistem Pendukung Keputusan Penentuan UKM Warung Ko', 'TRIYOGO MAHENDRA SAPUTRO', 'Salamun Rohman Nudin, S.Kom., M.Kom', 2013),
(3, 'P03', 'SISTEM PENDUKUNG KEPUTUSAN MENENTUKAN INDIKASI MAT', 'VENNY SOVIA', 'RINA HARIMURTI,S.Pd.,M.T', 2014),
(4, 'P04', 'Sistem Pakar Psikologi Bipolar Disorder', 'Rifka Hapsah', 'Rina Harimurti, S.Pd., M.T.', 2014),
(5, 'P05', 'Implementasi Spelling Checker Dengan Algoritma Lev', 'Joko Jatminto', 'I Kadek Dwi Nuryana, S.T.,M.Kom', 2015);

-- --------------------------------------------------------

--
-- Table structure for table `ta`
--

CREATE TABLE IF NOT EXISTS `ta` (
  `id_buku` int(11) NOT NULL AUTO_INCREMENT,
  `id_rak` varchar(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun` int(11) NOT NULL,
  PRIMARY KEY (`id_buku`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `ta`
--

INSERT INTO `ta` (`id_buku`, `id_rak`, `judul`, `pengarang`, `penerbit`, `tahun`) VALUES
(1, 'T01', 'Rancang Bangun Aplikasi Manajemen Data Aset Dan Peminjaman Berbasis WEB', 'M. Amirul Arbi', 'Ari Kurniawan S.Kom., M.T.', 2014),
(2, 'T02', 'Aplikasi Pengenalan Angka Dan Warna Dalam Bahasa Arab Berbasis Android', 'Bintang Adi Winarto', 'Andi Iwan Nurhidayat,S.Kom', 2014),
(3, 'T03', 'Sistem Informasi Potensi Daerah Pariwisata Di Kabupaten Gresik Dengan ', 'Moh. Farih Baidhowy', 'Andi Iwan Nurhidayat, S.Kom', 2015),
(4, 'T04', 'Rancang Bangun Rambu dan Aturan Lalulintas Pada Platform Android', 'Muhammad Saifullah', 'Joko Catur Condro Cahyono, S.Si., M.T.', 2014),
(5, 'T05', 'Aplikasi manajemen penyewaan lapangan futsal berbasis web studi kasus ', 'M. Asrul Anas', 'Joko Catur Condro Cahyono, S.Si., M.T.', 2015),
(6, 'T06', 'Sistem Informasi Fitness dan Gym Berbasis Web Menggunakan Basis Data O', 'Bayu Anggoro Priyambodho', 'Joko Catur Condro C, S.Si., MT', 2014),
(7, 'T07', 'Rancang Bangun Aplikasi Jelajah Mojokerto Berbasis Android', 'Okyanto Agung Kurniawan', 'Joko Catur Condro C, S.Si., M.T.', 2015),
(8, 'T08', 'Rancang Bangun Aplikasi Pendataan Pelelangan Ikan (Studi Kasus : Dinas', 'Shintya Bayu Mahardika', 'Ari Kurniawan, S.Kom., M.T', 2014),
(9, 'T09', 'Pengembangan Layanan Aduan Masyarakat Tentang Perilaku Bus Angkutan Um', 'Ilham Muzakki', 'Ari Kurniawan, S.Kom., M.T.', 2014),
(10, 'T10', 'Rancang Bangun Aplikasi Manajemen Ruang Kelas Perkuliahan berbasis Web', 'Punggawa Ciptomukti', 'Asmunin S.Kom', 2915);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_buku_2010`
--
CREATE TABLE IF NOT EXISTS `view_buku_2010` (
`id_buku` varchar(10)
,`id_rak` varchar(50)
,`judul` varchar(100)
,`pengarang` varchar(100)
,`penerbit` varchar(100)
,`jml_buku` int(11)
,`th_terbit` int(11)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_penerbit_buku_informatika`
--
CREATE TABLE IF NOT EXISTS `view_penerbit_buku_informatika` (
`id_buku` varchar(10)
,`id_rak` varchar(50)
,`judul` varchar(100)
,`pengarang` varchar(100)
,`penerbit` varchar(100)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_penerbit_buku_informatika_bandung`
--
CREATE TABLE IF NOT EXISTS `view_penerbit_buku_informatika_bandung` (
`id_buku` varchar(10)
,`id_rak` varchar(50)
,`judul` varchar(100)
,`pengarang` varchar(100)
,`penerbit` varchar(100)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_pi_2014`
--
CREATE TABLE IF NOT EXISTS `view_pi_2014` (
`id_buku` int(11)
,`id_rak` varchar(11)
,`judul` varchar(100)
,`pengarang` varchar(50)
,`penerbit` varchar(50)
,`tahun` int(11)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_skripsi_2013`
--
CREATE TABLE IF NOT EXISTS `view_skripsi_2013` (
`id_buku` int(11)
,`id_rak` varchar(50)
,`judul` varchar(50)
,`pengarang` varchar(50)
,`penerbit` varchar(50)
,`tahun` int(11)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_ta_2015`
--
CREATE TABLE IF NOT EXISTS `view_ta_2015` (
`id_buku` int(11)
,`id_rak` varchar(50)
,`judul` varchar(100)
,`pengarang` varchar(50)
,`penerbit` varchar(50)
,`tahun` int(11)
);
-- --------------------------------------------------------

--
-- Structure for view `view_buku_2010`
--
DROP TABLE IF EXISTS `view_buku_2010`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_buku_2010` AS select `buku`.`id_buku` AS `id_buku`,`buku`.`id_rak` AS `id_rak`,`buku`.`judul` AS `judul`,`buku`.`pengarang` AS `pengarang`,`buku`.`penerbit` AS `penerbit`,`buku`.`jml_buku` AS `jml_buku`,`buku`.`th_terbit` AS `th_terbit` from `buku` where (`buku`.`th_terbit` = '2010');

-- --------------------------------------------------------

--
-- Structure for view `view_penerbit_buku_informatika`
--
DROP TABLE IF EXISTS `view_penerbit_buku_informatika`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_penerbit_buku_informatika` AS select `buku`.`id_buku` AS `id_buku`,`buku`.`id_rak` AS `id_rak`,`buku`.`judul` AS `judul`,`buku`.`pengarang` AS `pengarang`,`buku`.`penerbit` AS `penerbit` from `buku` where (`buku`.`penerbit` = 'Informatika');

-- --------------------------------------------------------

--
-- Structure for view `view_penerbit_buku_informatika_bandung`
--
DROP TABLE IF EXISTS `view_penerbit_buku_informatika_bandung`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_penerbit_buku_informatika_bandung` AS select `buku`.`id_buku` AS `id_buku`,`buku`.`id_rak` AS `id_rak`,`buku`.`judul` AS `judul`,`buku`.`pengarang` AS `pengarang`,`buku`.`penerbit` AS `penerbit` from `buku` where (`buku`.`penerbit` = 'Informatika Bandung');

-- --------------------------------------------------------

--
-- Structure for view `view_pi_2014`
--
DROP TABLE IF EXISTS `view_pi_2014`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_pi_2014` AS select `pi`.`id_buku` AS `id_buku`,`pi`.`id_rak` AS `id_rak`,`pi`.`judul` AS `judul`,`pi`.`pengarang` AS `pengarang`,`pi`.`penerbit` AS `penerbit`,`pi`.`tahun` AS `tahun` from `pi` where (`pi`.`tahun` = '2014');

-- --------------------------------------------------------

--
-- Structure for view `view_skripsi_2013`
--
DROP TABLE IF EXISTS `view_skripsi_2013`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_skripsi_2013` AS select `skripsi`.`id_buku` AS `id_buku`,`skripsi`.`id_rak` AS `id_rak`,`skripsi`.`judul` AS `judul`,`skripsi`.`pengarang` AS `pengarang`,`skripsi`.`penerbit` AS `penerbit`,`skripsi`.`tahun` AS `tahun` from `skripsi` where (`skripsi`.`tahun` = '2013');

-- --------------------------------------------------------

--
-- Structure for view `view_ta_2015`
--
DROP TABLE IF EXISTS `view_ta_2015`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_ta_2015` AS select `ta`.`id_buku` AS `id_buku`,`ta`.`id_rak` AS `id_rak`,`ta`.`judul` AS `judul`,`ta`.`pengarang` AS `pengarang`,`ta`.`penerbit` AS `penerbit`,`ta`.`tahun` AS `tahun` from `ta` where (`ta`.`tahun` = '2015');
