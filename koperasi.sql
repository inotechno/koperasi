-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Sep 2020 pada 15.18
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeigniter`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(10) NOT NULL,
  `kode_barang` varchar(11) NOT NULL,
  `nama_barang` varchar(150) NOT NULL,
  `kategori` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `foto` text NOT NULL,
  `deskripsi` text NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `kategori`, `stok`, `harga`, `foto`, `deskripsi`, `create_at`, `update_at`, `created_by`) VALUES
(7, 'PN10001', 'Pensil 2C', 1, 9, 20000, '', 'Pensil 2B Panjang 15cm Lebar 5mm\r\n\r\n', '2020-08-21 17:49:32', '2020-08-21 19:21:52', 1),
(10, 'KA12312', 'Kabel', 4, 18, 10000, '', 'Kabel Bekas', '2020-08-23 05:24:53', NULL, 1),
(11, 'b01', 'baju', 18, 2, 200000, '', 'baju baru\r\n', '2020-08-25 14:08:42', NULL, 1),
(12, '1011', 'Agama Islam 2012', 20, 11, 100000, '', 'Pengarang PT Cipta Sentosa\r\n', '2020-08-25 14:18:38', '2020-08-25 15:44:39', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `created_at`, `created_by`) VALUES
(16, 'Kakakakaka', '2020-08-25 14:01:45', 1),
(24, 'Test', '2020-08-30 14:09:57', 1),
(25, 'Oke', '2020-08-30 14:12:56', 1),
(27, 'Barang Bekas', '2020-08-30 14:21:08', 1),
(29, 'Hellllooo', '2020-08-30 14:23:59', 1),
(33, 'Barang Bekas', '2020-08-30 14:40:36', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `nama_menu` varchar(150) NOT NULL,
  `link` varchar(200) NOT NULL,
  `icon` varchar(150) NOT NULL,
  `sub_menu` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `warna` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `nama_menu`, `link`, `icon`, `sub_menu`, `level`, `warna`) VALUES
(1, 'Dashboard', 'Dashboard', 'fa fa-tachometer-alt', 0, 1, 'text-success'),
(2, 'Master Data', 'Master', 'fa fa-database', 0, 1, 'text-danger'),
(3, 'Data Barang', 'master/barang', 'fa fa-archive', 2, 1, 'text-warning'),
(4, 'Tambah Persediaan', 'persediaan', 'fa fa-archive', 0, 1, 'text-secondary'),
(5, 'Data Supplier', 'Master/supplier', 'fa fa-users', 2, 1, 'text-warning'),
(6, 'Transaksi', 'Transaksi', 'fa fa-random', 0, 1, 'text-info'),
(7, 'Laporan Semua Transaksi', 'Transaksi/all_transaksi', 'fa fa-random', 0, 1, 'text-danger'),
(23, 'Dashboard', 'Dashboard', 'fa fa-tachometer-alt', 0, 2, 'text-success'),
(24, 'Laporan Persediaan', 'persediaan', 'fa fa-archive', 0, 2, 'text-secondary'),
(25, 'Laporan Transaksi', 'Transaksi', 'fa fa-random', 0, 2, 'text-info'),
(26, 'Laporan Semua Transaksi', 'Transaksi/all_transaksi', 'fa fa-random', 0, 2, 'text-danger');

-- --------------------------------------------------------

--
-- Struktur dari tabel `persediaan`
--

CREATE TABLE `persediaan` (
  `id_persediaan` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `stok_lama` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `tambah_stok` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `persediaan`
--

INSERT INTO `persediaan` (`id_persediaan`, `id_barang`, `stok_lama`, `id_supplier`, `tambah_stok`, `created_at`, `created_by`) VALUES
(10, 7, 10, 1, 10, '2020-08-23 13:57:08', 1),
(11, 10, -82, 0, 100, '2020-08-23 15:58:19', 1),
(12, 11, 20, 7, 5, '2020-08-25 14:10:31', 1),
(13, 12, 2, 9, 2, '2020-08-25 14:30:04', 1),
(14, 7, -6, 1, 10, '2020-09-03 16:34:24', 1),
(15, 11, -1, 0, 12, '2020-09-03 16:34:33', 1),
(16, 12, 0, 0, 12, '2020-09-03 16:34:39', 1),
(17, 7, -1, 0, 10, '2020-09-04 16:13:06', 1),
(18, 10, 0, 7, 90, '2020-09-04 16:13:14', 1),
(19, 11, -8, 0, 90, '2020-09-04 16:13:20', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`) VALUES
(1, 'BasisCoding'),
(7, 'putri cantik'),
(9, 'PT Cipta Sentosa'),
(10, 'PT Cipta Sentosa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `kode_transaksi` varchar(10) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_barang` bigint(20) NOT NULL,
  `total_bayar` bigint(20) NOT NULL,
  `keterangan` text NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `kode_transaksi`, `kode_barang`, `jumlah`, `harga_barang`, `total_bayar`, `keterangan`, `created_at`, `created_by`) VALUES
(1, '0409200001', 'b01', 80, 200000, 16000000, '', '2020-09-04 21:13:37', 1),
(2, '0409200001', 'KA12312', 72, 10000, 720000, '', '2020-09-04 21:13:37', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(150) NOT NULL,
  `level` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `foto` varchar(150) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `level`, `username`, `password`, `foto`, `status`) VALUES
(1, 'ZaisMart Admin', 1, 'admin', 'admin', '', 1),
(2, 'ZaisMart Yayasan', 2, 'yayasan', 'yayasan', '', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_group`
--

CREATE TABLE `user_group` (
  `id_group` int(11) NOT NULL,
  `nama_group` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_group`
--

INSERT INTO `user_group` (`id_group`, `nama_group`, `link`) VALUES
(1, 'Administrator', 'admin'),
(2, 'Yayasan', 'yayasan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `persediaan`
--
ALTER TABLE `persediaan`
  ADD PRIMARY KEY (`id_persediaan`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id_group`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `persediaan`
--
ALTER TABLE `persediaan`
  MODIFY `id_persediaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id_group` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
