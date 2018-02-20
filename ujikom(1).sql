-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2018 at 03:22 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujikom`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_dinas`
--

CREATE TABLE `tb_dinas` (
  `id_dinas` int(100) NOT NULL,
  `namadinas` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dinas`
--

INSERT INTO `tb_dinas` (`id_dinas`, `namadinas`) VALUES
(1, 'seksi pemerintahan'),
(2, 'seksi pembangunan'),
(3, 'seksi kesejahteraan sosial'),
(4, 'seksi ketentraman & ketertiban');

-- --------------------------------------------------------

--
-- Table structure for table `tb_disposisi`
--

CREATE TABLE `tb_disposisi` (
  `id_disposisi` int(100) NOT NULL,
  `kode_surat` int(225) NOT NULL,
  `no_agenda` int(225) NOT NULL,
  `tanggal_surat` date NOT NULL,
  `diterima_tanggal` date NOT NULL,
  `subjek_surat` varchar(225) NOT NULL,
  `sifat` varchar(225) NOT NULL,
  `disposisikan` int(225) NOT NULL,
  `deskripsi` text NOT NULL,
  `id_surat` int(100) NOT NULL,
  `userid` int(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `id_dinas` int(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_disposisi`
--

INSERT INTO `tb_disposisi` (`id_disposisi`, `kode_surat`, `no_agenda`, `tanggal_surat`, `diterima_tanggal`, `subjek_surat`, `sifat`, `disposisikan`, `deskripsi`, `id_surat`, `userid`, `status`, `id_dinas`, `created_at`, `updated_at`) VALUES
(1, 123456, 12, '2018-01-02', '2018-01-03', 'pemberitahuan', 'rahasia', 1, 'pemberitahuan atas kedatangan presiden ke cigugur tengah', 1, 2, 'sudah dibaca', 1, '2018-01-31 00:35:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_suratkeluar`
--

CREATE TABLE `tb_suratkeluar` (
  `id_suratklr` int(100) NOT NULL,
  `dikirim_pada` varchar(100) NOT NULL,
  `kode_surat` varchar(100) NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `sumber_suratklr` varchar(225) NOT NULL,
  `tujuan_kepada` varchar(225) NOT NULL,
  `subjek_surat` varchar(225) NOT NULL,
  `deskripsi` text NOT NULL,
  `file_upload` varchar(100) NOT NULL,
  `id_tipesurat` int(100) NOT NULL,
  `userid` int(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_suratkeluar`
--

INSERT INTO `tb_suratkeluar` (`id_suratklr`, `dikirim_pada`, `kode_surat`, `tanggal_keluar`, `sumber_suratklr`, `tujuan_kepada`, `subjek_surat`, `deskripsi`, `file_upload`, `id_tipesurat`, `userid`, `created_at`, `updated_at`) VALUES
(1, 'kemendikbud', '84783', '2018-01-09', 'sekolah smk ', 'bagian pengesahan', 'info', 'memberitahukan atas bla bla bla', 'qshus', 2, 1, '2018-01-25 13:48:07', '0000-00-00 00:00:00'),
(2, 'kelurahan', '43582628', '2018-01-01', 'pemkot', 'lurah', 'pemberitahuan', 'bersih bersih wajib\r\n', 'scndl', 2, 1, '2018-01-25 13:54:31', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_suratmasuk`
--

CREATE TABLE `tb_suratmasuk` (
  `id_suratmsk` int(100) NOT NULL,
  `datangpada` varchar(100) NOT NULL,
  `kode_surat` varchar(100) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `sumber_surat` varchar(225) NOT NULL,
  `tujuan_kepada` varchar(225) NOT NULL,
  `subjek_surat` varchar(225) NOT NULL,
  `deskripsi` text NOT NULL,
  `file_upload` varchar(100) NOT NULL,
  `id_tipesurat` int(100) NOT NULL,
  `userid` int(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_suratmasuk`
--

INSERT INTO `tb_suratmasuk` (`id_suratmsk`, `datangpada`, `kode_surat`, `tanggal_masuk`, `sumber_surat`, `tujuan_kepada`, `subjek_surat`, `deskripsi`, `file_upload`, `id_tipesurat`, `userid`, `created_at`, `updated_at`) VALUES
(1, 'siang', '453245', '2018-01-01', 'universitas gajah mada', 'kepala sekolah', 'pemberitahuan', 'memberi tau atas penerimaan mahasiswa baru lewat jalur undangan ', '', 234, 1, '2018-01-20 13:57:19', '0000-00-00 00:00:00'),
(3, 'pegawai', '7438750', '2018-01-28', 'pemkot', 'kepala sekolah', 'pemberitahuan', 'nvdosiaiorgacsnuwbysrutuay', 'dcsouebo', 1, 2, '2018-01-27 20:37:56', '2018-01-27 20:37:56');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tipesurat`
--

CREATE TABLE `tb_tipesurat` (
  `id_tipesurat` int(100) NOT NULL,
  `tipe_surat` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tipesurat`
--

INSERT INTO `tb_tipesurat` (`id_tipesurat`, `tipe_surat`, `created_at`, `updated_at`) VALUES
(1, 'surat masuk', '2018-01-31 00:13:24', '0000-00-00 00:00:00'),
(2, 'surat keluar', '2018-01-31 00:13:24', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'indah', 'widowati@gmail.com', '$2y$10$Wt2XQ0VdTaYmo/ppnW5tNOnKWyEPzKQj9irUkQXHdWnL7rQ1cU6xG', 'XiZTIDvpISuNdKJcFtU7HanxWrORy66lX9kYOXNyJ18BiRbhaYTPUq9Bj1xB', '2018-01-20 03:25:42', '2018-01-20 03:25:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_dinas`
--
ALTER TABLE `tb_dinas`
  ADD PRIMARY KEY (`id_dinas`);

--
-- Indexes for table `tb_disposisi`
--
ALTER TABLE `tb_disposisi`
  ADD PRIMARY KEY (`id_disposisi`);

--
-- Indexes for table `tb_suratkeluar`
--
ALTER TABLE `tb_suratkeluar`
  ADD PRIMARY KEY (`id_suratklr`);

--
-- Indexes for table `tb_suratmasuk`
--
ALTER TABLE `tb_suratmasuk`
  ADD PRIMARY KEY (`id_suratmsk`);

--
-- Indexes for table `tb_tipesurat`
--
ALTER TABLE `tb_tipesurat`
  ADD PRIMARY KEY (`id_tipesurat`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_dinas`
--
ALTER TABLE `tb_dinas`
  MODIFY `id_dinas` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_disposisi`
--
ALTER TABLE `tb_disposisi`
  MODIFY `id_disposisi` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_suratkeluar`
--
ALTER TABLE `tb_suratkeluar`
  MODIFY `id_suratklr` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_suratmasuk`
--
ALTER TABLE `tb_suratmasuk`
  MODIFY `id_suratmsk` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_tipesurat`
--
ALTER TABLE `tb_tipesurat`
  MODIFY `id_tipesurat` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
