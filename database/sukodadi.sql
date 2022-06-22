-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2020 at 05:31 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sukodadi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_disposisi`
--

CREATE TABLE `tbl_disposisi` (
  `id_disposisi` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `isi_disposisi` mediumtext NOT NULL,
  `sifat` varchar(100) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(250) NOT NULL,
  `id_surat` int(10) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_disposisi`
--

INSERT INTO `tbl_disposisi` (`id_disposisi`, `tujuan`, `isi_disposisi`, `sifat`, `batas_waktu`, `catatan`, `id_surat`, `id_user`) VALUES
(1, 'Balai Kecamatan Sukodadi', 'Pengerahan Masa/Penduduk dan Perangkat Desa', 'Segera', '2019-11-26', ' -', 2, 1),
(2, 'Kepala Kecamatan', 'Rapat Dinas', 'Penting', '2019-10-25', 'Rapat Dinas Sekecamatan Sukodadi', 3, 1),
(3, 'Calon Camat sukodadi', 'Memenuhi Persyaratan Pelatikan Kepala Desa', 'Segera', '2019-09-05', 'Menyerakan Buku C, Karakter Desa Atau Dokumen Pertanahan Lainya Kepada Camat  Untuk Dilaporkan Atau Diserakan Kepada Bupati Gresik', 4, 1),
(4, 'Kepala Kecamatan', 'Perlombaab MTQ', 'Segera', '2019-10-10', 'Diadakanya Perlombaab MTQ Sekecamatan sukodadi', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_instansi`
--

CREATE TABLE `tbl_instansi` (
  `id_instansi` tinyint(1) NOT NULL,
  `institusi` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kepsek` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `website` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_instansi`
--

INSERT INTO `tbl_instansi` (`id_instansi`, `institusi`, `nama`, `status`, `alamat`, `kepsek`, `nip`, `website`, `email`, `logo`, `id_user`) VALUES
(1, '-', 'Kecamatan Sukodadi', 'Pemerintahan', 'Sukodadi - Lamongan', 'KARNO, ST', '-', 'https://www.sukodadimaju.go.id', 'sukodadimaju9@gmial.com', 'logolamongan.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_klasifikasi`
--

CREATE TABLE `tbl_klasifikasi` (
  `id_klasifikasi` int(5) NOT NULL,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sett`
--

CREATE TABLE `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `referensi` tinyint(2) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sett`
--

INSERT INTO `tbl_sett` (`id_sett`, `surat_masuk`, `surat_keluar`, `referensi`, `id_user`) VALUES
(1, 20, 50, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_keluar`
--

CREATE TABLE `tbl_surat_keluar` (
  `id_surat` int(10) NOT NULL,
  `no_agenda` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_surat_keluar`
--

INSERT INTO `tbl_surat_keluar` (`id_surat`, `no_agenda`, `tujuan`, `no_surat`, `isi`, `kode`, `tgl_surat`, `tgl_catat`, `file`, `keterangan`, `id_user`) VALUES
(3, 1, 'POLSEK DUKUN', '428', 'Nuril Fathoni Rw 04 Rt 08\r\n', '0013', '2019-08-21', '2019-11-28', '8141-IMG_20191128_114922.jpg[1].jpg', 'Surat SKCK', 1),
(4, 2, 'POLSEK DUKUN', '421', 'Maharani Budiana Rw 08 Rt 16', '0014', '2019-08-15', '2019-11-28', '3439-IMG_20191128_115019.jpg[1].jpg', 'Surat  SKCK', 1),
(5, 3, 'POLSEK DUKUN', '422', 'Nur Ziana Rw 02 rt 04', '015', '2019-08-15', '2019-11-28', '1500-IMG_20191128_115119.jpg[1].jpg', 'Surat SKCK', 1),
(6, 4, 'POLSEK DUKUN', '424', 'Luqman Nur Hakim Rw 03 Rt 06', '016', '2019-08-15', '2019-11-28', '9580-IMG_20191128_115225.jpg_1574920126134[1].jpg', 'Surat  SKCK', 1),
(7, 5, 'POLSEK DUKUN', '441', 'Joko Untung Rw 08 Rt 015', '017', '2019-08-27', '2019-11-28', '357-IMG_20191128_115300.jpg[1].jpg', 'Surat Kehilangan', 1),
(8, 6, 'POLSEK DUKUN', '381', 'Sunarto', '45', '2019-12-20', '2019-12-01', '4340-IMG-20191201-WA0006.jpg', 'Surat  SKCK', 1),
(9, 7, 'POLSEK DUKUN', '454', 'Kamran', '697', '2019-12-12', '2019-12-01', '8213-IMG-20191201-WA0007.jpg', 'Rujukan Kecamat Dukun', 1),
(10, 8, 'POLSEK DUKUN', '395', 'Nur Jannah', '864', '2019-12-21', '2019-12-01', '868-IMG-20191201-WA0008.jpg', 'Surat  SKCK', 1),
(11, 9, 'Kepala Desa', '443', 'Mieta', '4864', '2019-12-22', '2019-12-01', '1393-IMG-20191201-WA0009.jpg', 'Surat SKTM', 1),
(12, 10, 'POLSEK DUKUN', '601', 'Shofi Ningsi', '875', '2019-12-26', '2019-12-01', '4271-IMG-20191201-WA0010.jpg', 'Surat  SKCK', 1),
(13, 11, 'Kepala Desa', '458', 'Panitia', '313', '2019-12-12', '2019-12-01', '3580-IMG-20191201-WA0011.jpg', 'Lombah Abeng', 1),
(14, 12, 'Kepala Desa', '331', 'Panitia', '699', '2019-12-28', '2019-12-01', '2212-IMG-20191201-WA0012.jpg', 'Sosialisasi Sampa', 1),
(15, 13, 'POLSEK DUKUN', '452', 'Kamran', '798', '2019-12-12', '2019-12-01', '8082-IMG-20191201-WA0013.jpg', 'Lombah Abeng', 1),
(16, 14, 'Kepala Desa', '339', 'Karina Kasto', '536', '2019-12-13', '2019-12-01', '903-IMG-20191201-WA0014.jpg', 'Surat SKPO', 1),
(17, 15, ' Kecamatan Dukun', '302', ' kasto', '324', '2019-12-23', '2019-12-01', '52-IMG-20191201-WA0015.jpg', '4487', 1),
(18, 16, ' Kecamatan Dukun', '341', 'Yun Pngkat', '975', '2019-12-12', '2019-12-02', '7992-IMG-20191201-WA0016.jpg', 'SKPOT', 1),
(19, 17, ' Kecamatan Dukun', '134', 'Sariyono', '559', '2019-12-18', '2019-12-02', '5424-IMG-20191201-WA0017.jpg', 'SKPOT', 1),
(20, 18, 'Warga Desa', '437', 'Yudi Hariyanto', '856', '2019-12-16', '2019-12-02', '8813-IMG-20191201-WA0018.jpg', 'Klarivikasi Tanah Desa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_masuk`
--

CREATE TABLE `tbl_surat_masuk` (
  `id_surat` int(10) NOT NULL,
  `no_agenda` int(10) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `asal_surat` varchar(250) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `indeks` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_surat_masuk`
--

INSERT INTO `tbl_surat_masuk` (`id_surat`, `no_agenda`, `no_surat`, `asal_surat`, `isi`, `kode`, `indeks`, `tgl_surat`, `tgl_diterima`, `file`, `keterangan`, `id_user`) VALUES
(2, 1, '1046', 'Kecamatan Dukun', 'Fatah Hadi,S,Pd., MM.', '020', ' 01', '2019-10-19', '2019-11-28', '6494-IMG_20191128_115811.jpg[1].jpg', 'Acara Jalan Sehat', 1),
(3, 2, '686', 'Kecamatan Dukun', 'Fatah Hadi ,sp.d. M.M', '021', '02', '2019-09-23', '2019-11-28', '3527-IMG_20191128_114922.jpg[1].jpg', '-', 1),
(4, 3, '683', 'Kecamatan Dukun', 'Fatah Hadi ,sp.d. M.M', '022', '03', '2019-09-03', '2019-11-28', '2355-IMG_20191128_115928.jpg.jpg', '-', 1),
(5, 4, '678', 'Kecamatan Dukun', 'Fatah Hadi ,sp.d. M.M', '023', '04', '2019-09-02', '2019-11-28', '3785-IMG_20191128_120016.jpg.jpg', '-', 1),
(6, 5, '732', 'Kecamatan Dukun', 'Suprapto, AP.M.SI', '024', '05', '2016-12-02', '2019-11-30', '2362-02.jpg', 'Rapat Aminitrasi Kkependudukan', 1),
(7, 6, '717', 'Kecamatan Dukun', 'Suprapto.se', '025', '06', '2019-09-01', '2019-11-30', '4251-03.jpg', 'Deklarasi Anti Pungil', 1),
(8, 7, '272', 'Kecamatan Dukun', 'suprapto.Ap', '026', '07', '2019-11-11', '2019-11-30', '5467-04.jpg', 'Pengembangan Pasar', 1),
(9, 8, '627', 'Kecamatan Dukun', 'Fatah Hadi. S.pd', '027', '07', '2019-10-16', '2019-11-30', '8411-05.jpg', 'Pembetukam Desa Ramah Anak', 1),
(10, 9, '627.', 'Kecamatan Dukun', 'Suprapto. Ap', '028', '08', '2019-11-05', '2019-11-30', '2433-06.jpg', 'pengajuan Pencarian ADD', 1),
(11, 10, '589', 'Kecamatan Dukun', 'Fatah Hadi. S.pd', '029', '09', '2019-06-17', '2019-11-30', '2063-IMG-20191130-WA0007.jpg', 'Deklarasi Pemilian Kepala Desa Aman', 1),
(12, 11, '86', 'Kecamatan Dukun', 'Fatah Hadi. S.pd', '030', '09', '2019-11-11', '2019-11-30', '8769-IMG-20191130-WA0008.jpg', 'Merembang Kecamatan Dukun', 1),
(13, 12, '729', 'Kecamatan Dukun', 'Suprapto. Ap', '031', '10', '2019-11-09', '2019-11-30', '3145-IMG-20191130-WA0009.jpg', 'Penyelesaian SPJ Dana Desa', 1),
(14, 13, '264', 'Kecamatan Dukun', 'Arifin. Fe', '32', '11', '2019-11-16', '2019-11-30', '896-IMG-20191130-WA0010.jpg', 'Pengisian Formulir BUM Desa', 1),
(15, 14, '31', 'Kecamatan Dukun', 'Mufadila Fatah Hadi', '032', '12', '2019-11-23', '2019-11-30', '3157-IMG-20191130-WA0011.jpg', 'Penjaga Stat Pameran', 1),
(16, 15, '21', 'Dinas Pertanian', 'Wiwik Wulandari. Sp', '033', '13', '2019-11-18', '2019-11-30', '6917-IMG-20191130-WA0012.jpg', 'Rapat Kordinasi Lokalisasi', 1),
(17, 16, '253', 'Kecamatan Dukun', 'Fatah Hadi. S.pd', '024', '14', '2019-11-02', '2019-11-30', '926-IMG-20191130-WA0013.jpg', 'Di Himbau Tidak Menyalakan Petasan Di Bualan Rahmadan', 1),
(18, 17, '1564', 'Dinas Kependududkan', 'DRS. Harmanto T.H', '035', '15', '2019-11-01', '2019-11-30', '3203-IMG-20191130-WA0014.jpg', 'Sosialisasi Aplikasi Kependudukan', 1),
(19, 18, '010', 'Panitia Mulid nabi Muhammad', 'Drs.Suwandi', '036', '14', '2019-11-14', '2019-11-30', '777-IMG-20191130-WA0015.jpg', 'Kkordinasi Hul Sesepu Desa', 1),
(20, 19, '683.', 'Kecamatan Dukun', 'Fatah Hadi. S.pd', '037', '15', '2019-11-03', '2019-11-30', '271-IMG-20191130-WA0016.jpg', 'Menyerakan Bukui C', 1),
(21, 20, '722', 'Dinas Pertanian', 'Suprapto. Ap', '037', '16', '2019-11-02', '2019-11-30', '2064-IMG-20191130-WA0017.jpg', 'Pencataan Sipil Kab Gresik', 1),
(22, 21, '02', 'Kecamatan Dukun', 'Fatah Hadi. S.pd', '038', '19', '2019-11-02', '2019-11-30', '8475-IMG-20191130-WA0018.jpg', 'Penangujawaban Program Inovasi Desa', 1),
(23, 22, '589.', 'Kecamatan Dukun', 'Fatah Hadi. S.pd', '039', '19', '2019-11-17', '2019-11-30', '2315-IMG-20191130-WA0019.jpg', 'Deklarasi Pemilian Kepala Desa Aman', 1),
(24, 23, '686.', 'Kecamatan Dukun', 'Fatah Hadi. S.pd', '042', '19', '2019-11-23', '2019-11-30', '7235-IMG-20191130-WA0020.jpg', 'Rapat Dinas', 1),
(25, 24, '585', 'Kecamatan Dukun', 'Suprapto.Am', '327', '20', '2019-12-23', '2019-12-01', '5539-IMG-20191130-WA0021.jpg', 'Verifikai RAB Untuk Pekerja', 1),
(26, 25, '598', 'Kecamatan Dukun', 'Fatah Hadi S.pd', '645', '22', '2019-12-17', '2019-12-01', '6799-IMG-20191130-WA0022.jpg', 'Deklarasi Pemilian Kepala Desa Aman', 1),
(27, 26, '987', 'Warga Desa', 'Kastima', '098', '25', '2019-12-17', '2019-12-01', '5513-IMG-20191130-WA0023.jpg', 'Surat Kehilangan', 1),
(28, 27, '287', 'Kecamatan Dukun', 'Arifin. Se', '587', '27', '2019-12-28', '2019-12-01', '8218-IMG-20191130-WA0024.jpg', 'Laporan Pembangunan', 1),
(29, 28, '673', 'Kecamatan Dukun', 'Fatah Hadi S.pd', '960', '29', '2019-12-02', '2019-12-01', '5355-IMG-20191130-WA0025.jpg', 'Pendaftaran MTQ', 1),
(30, 29, '007', 'UNIVERSITAS 17 Agusstus 1945 Surabaya', 'Septiana Kumala Sari', '574', '30', '2019-12-27', '2019-12-01', '5359-IMG-20191130-WA0026.jpg', 'Pengajuan Surat KKN', 1),
(31, 30, '5890', 'Kecamatan Dukun', 'Fatah Hadi S.pd', '7476', '31', '2019-12-17', '2019-12-01', '5270-IMG-20191130-WA0027.jpg', 'Deklarasi Pemilian Kepala Desa Aman', 1),
(32, 31, '10962', 'Universitas Brawijaya', 'Siti Khilifa S.h', '574', '39', '2019-12-20', '2019-12-01', '7509-IMG-20191130-WA0028.jpg', 'Praktik Sosial', 1),
(33, 32, '05', 'Kecamatan Dukun', 'Suprapto A.p', '467', '40', '2019-12-29', '2019-12-01', '2186-IMG-20191130-WA0029.jpg', 'Istingosa', 1),
(34, 33, '06', 'Kecamatan Dukun', 'Fatah Hadi', '356', '42', '2019-12-05', '2019-12-01', '36-IMG-20191130-WA0030.jpg', 'Hut ke 74', 1),
(35, 34, '001', 'Kecamatan Dukun', 'Didik Ahmad', '453', '31', '2019-05-04', '2019-12-01', '2388-IMG-20191130-WA0031.jpg', 'Pelantikan pengurus karang taruna', 1),
(36, 35, '014', 'Kecamatan Dukun', 'Suparman', '432', '32', '2019-12-09', '2019-12-01', '4633-IMG-20191130-WA0032.jpg', 'mendelegasikan kordinator atau anggota PPDI', 1),
(37, 36, '775', 'Kecamatan Dukun', 'Suprapto', '324', '33', '2019-12-08', '2019-12-01', '741-IMG-20191130-WA0033.jpg', 'Konvrensi dinas kepala desa', 1),
(38, 37, '2', 'Kecamatan Dukun', 'Fatah hadi', '987', '34', '2019-12-02', '2019-12-01', '3575-IMG-20191130-WA0034.jpg', 'MAD pertanggungjawaban program inovasi desa', 1),
(39, 38, '1016', 'Kecamatan Dukun', 'Fatah hadi', '654', '35', '2019-10-19', '2019-12-01', '9204-IMG-20191130-WA0035.jpg', 'Kegiatan jalan sehat dalam hari sumpah pemuda', 1),
(40, 39, '579', 'Kecamatan Dukun', 'Andhy hendro wijaya', '854', '36', '2019-12-05', '2019-12-01', '1651-IMG-20191130-WA0036.jpg', 'Pembentukan kelompok informasi', 1),
(41, 40, '599', 'Kecamatan Dukun', 'Fatah hadi', '432', '37', '2019-12-24', '2019-12-01', '1962-IMG-20191130-WA0037.jpg', 'Pengasahan pemberhentian', 1),
(42, 41, '0246', 'PT PLN PERSERO', 'I Putu Andhi', '543', '38', '2019-12-27', '2019-12-01', '5196-IMG-20191130-WA0038.jpg', 'Penertiban pemakaian tenaga listrik', 1),
(43, 42, '604', 'Kecamatan Dukun', 'Fatah hadi', '876', '39', '2019-12-29', '2019-12-01', '582-IMG-20191130-WA0039.jpg', 'Persiapan akhir pemungutan suara', 1),
(44, 43, '437', 'Kecamatan Dukun', 'Fatah Hadi', '908', '40', '2019-12-17', '2019-12-01', '9169-IMG-20191130-WA0040.jpg', 'deklarasi pemilihan kepala desa damai', 1),
(45, 44, '1364', 'Kecamatan Dukun', 'Drs. Hermanto', '876', '40', '2019-12-18', '2019-12-01', '677-IMG-20191130-WA0040.jpg', 'Pengembalian berkas pemutakhiran', 1),
(46, 45, '1033', 'Kecamatan Dukun', 'Drs. Subhan', '543', '42', '2019-07-11', '2019-12-01', '6736-IMG-20191130-WA0042.jpg', 'Kegiatan pemetaan data', 1),
(47, 46, '274', 'PKK', 'Edy Jamil', '958', '47', '2019-12-15', '2019-12-01', '8510-IMG-20191130-WA0043.jpg', 'Surat  SKCK', 1),
(48, 47, '714', 'Kecamatan Dukun', 'Supraptp', '875', '49', '2019-12-26', '2019-12-01', '8514-IMG-20191130-WA0044.jpg', 'BUMDesa', 1),
(49, 48, '53', 'Dinas Pertanian', 'Wiwik Wulandari', '425', '48', '2019-12-29', '2019-12-01', '2384-IMG-20191130-WA0045.jpg', 'Puap', 1),
(50, 49, '773', 'Kecamatan Dukun', 'Suprapto', '647', '54', '2019-12-21', '2019-12-01', '3799-02.jpg', 'Deklarasi Pemilian Kepala Desa Aman', 1),
(51, 50, '542', 'Kecamatan Dukun', 'Indah Wulandari', '735', '58', '2019-12-20', '2019-12-01', '6053-04.jpg', 'Deklarasi Pemilian Kepala Desa Aman', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` tinyint(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama`, `nip`, `admin`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'administrator', '-', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_disposisi`
--
ALTER TABLE `tbl_disposisi`
  ADD PRIMARY KEY (`id_disposisi`);

--
-- Indexes for table `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  ADD PRIMARY KEY (`id_instansi`);

--
-- Indexes for table `tbl_klasifikasi`
--
ALTER TABLE `tbl_klasifikasi`
  ADD PRIMARY KEY (`id_klasifikasi`);

--
-- Indexes for table `tbl_sett`
--
ALTER TABLE `tbl_sett`
  ADD PRIMARY KEY (`id_sett`);

--
-- Indexes for table `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_disposisi`
--
ALTER TABLE `tbl_disposisi`
  MODIFY `id_disposisi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_klasifikasi`
--
ALTER TABLE `tbl_klasifikasi`
  MODIFY `id_klasifikasi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
