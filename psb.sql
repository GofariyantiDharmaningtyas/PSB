-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jun 2021 pada 08.07
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `psb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nm_admin` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nm_admin`, `username`, `password`, `level`) VALUES
(1, 'alifia', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(2, 'rama', 'tes', '21232f297a57a5a743894a0e4a801fc3', 'peserta'),
(3, 'kala', 'kali', 'd6ca3fd0c3a3b462ff2b83436dda495e', 'peserta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pendaftaran`
--

CREATE TABLE `tb_pendaftaran` (
  `id_pendaftaran` char(10) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `th_ajaran` varchar(15) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `nm_peserta` varchar(100) NOT NULL,
  `tmp_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` enum('laki-laki','perempuan','','') NOT NULL,
  `agama` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `mtk` int(5) NOT NULL,
  `bing` int(5) NOT NULL,
  `bind` int(5) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pendaftaran`
--

INSERT INTO `tb_pendaftaran` (`id_pendaftaran`, `tgl_daftar`, `th_ajaran`, `jurusan`, `nm_peserta`, `tmp_lahir`, `tgl_lahir`, `jk`, `agama`, `alamat`, `mtk`, `bing`, `bind`, `status`) VALUES
('P202100007', '2021-06-26', '2021/2022', 'IPA', 'alifia', 'bandar lampung', '1998-10-24', 'perempuan', 'Islam', 'jl bumi manti iv', 0, 0, 0, 'Diterima'),
('P202100008', '2021-06-26', '2021/2022', 'IPA', 'desrizal', 'kotabumi', '1998-10-24', 'perempuan', 'Islam', 'jl bumi manti', 0, 0, 0, 'Ditolak'),
('P202100009', '2021-06-26', '2021/2022', 'IPA', 'alifia intan', 'bandar lampung', '2005-10-24', 'perempuan', 'Islam', 'test', 0, 0, 0, 'Diterima'),
('P202100010', '2021-06-26', '2021/2022', 'IPS', 'ramaa', 'bandar lampungg', '2007-01-05', 'laki-laki', 'Konghucu', 'jl bumi manti ivaaa', 0, 0, 0, 'Ditolak'),
('P202100011', '2021-06-27', '2021/2022', 'IPA', 'ra', 'Bandar Lampung', '2021-06-21', 'perempuan', 'Hindu', 'asasasa', 0, 0, 0, 'Menunggu'),
('P202100012', '2021-06-27', '2021/2022', 'IPS', 'ahaha', 'bdl', '2009-03-24', 'perempuan', 'Islam', 'hhudhnf', 0, 0, 0, 'Menunggu'),
('P202100013', '2021-06-27', '2021/2022', 'IPA', 'agneta', 'rumah', '2008-03-25', 'perempuan', 'Budha', 'hhhh', 0, 0, 0, 'Menunggu'),
('P202100014', '2021-06-27', '2021/2022', 'IPS', 'ahahuas', 'bdl', '2009-04-25', 'laki-laki', 'Kristen', 'ywhxx', 0, 0, 0, 'Menunggu'),
('P202100015', '2021-06-28', '2021/2022', 'IPA', 'agni', 'surabaya', '2008-04-17', 'perempuan', 'Katolik', 'gaya', 80, 95, 70, 'Menunggu'),
('P202100016', '2021-06-28', '2021/2022', 'IPS', 'ahhaha', 'jawa', '2008-03-26', 'laki-laki', 'Budha', 'huhdbc', 70, 100, 80, 'Menunggu');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tb_pendaftaran`
--
ALTER TABLE `tb_pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
