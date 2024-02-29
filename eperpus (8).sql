-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 23 Feb 2024 pada 08.57
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
-- Database: `eperpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(12) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `penulis` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `tahun_terbit` int(12) DEFAULT NULL,
  `sinopsis` varchar(250) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul`, `penulis`, `penerbit`, `tahun_terbit`, `sinopsis`, `cover`) VALUES
(9, 'Filosofi Teras', 'Henry Manampiring', 'ISBN', 2024, 'S', 'filosofi_teras_65ca55bdbca37.jpeg'),
(10, 'Laskar Pelangi', 'Andrea Hirata', 'Riri Rizaa', 20056, 'Perjuangan Bu Muslimah dan Pak Harfan, dua orang guru yang memiliki dedikasi tinggi dalam dunia pendidikan, dimana dengan usaha dan kesungguhannya mereka berdua berhasil memajukan pendidikan di desa Gantong satu desa terpencil di pilau Balitong.', 'laskar_pelangi_65cc2bc68771e.jpeg'),
(11, 'ktl', 'p', 'tp', NULL, 'o', 'ktl_65d570603eb0e.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoribuku`
--

CREATE TABLE `kategoribuku` (
  `id` int(12) NOT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategoribuku`
--

INSERT INTO `kategoribuku` (`id`, `nama_kategori`) VALUES
(32, 'PEMBUNUHAN'),
(30, 'SERU');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoribuku_relasi`
--

CREATE TABLE `kategoribuku_relasi` (
  `id` int(12) NOT NULL,
  `buku_id` int(12) DEFAULT NULL,
  `kategori_id` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategoribuku_relasi`
--

INSERT INTO `kategoribuku_relasi` (`id`, `buku_id`, `kategori_id`) VALUES
(7, 9, 32),
(8, 10, 32);

-- --------------------------------------------------------

--
-- Struktur dari tabel `koleksi`
--

CREATE TABLE `koleksi` (
  `id` int(11) NOT NULL,
  `userid` int(12) DEFAULT NULL,
  `bukuid` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `koleksi`
--

INSERT INTO `koleksi` (`id`, `userid`, `bukuid`) VALUES
(10, 32, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `userid` int(12) DEFAULT NULL,
  `bukuid` int(12) DEFAULT NULL,
  `tanggal_peminjaman` date DEFAULT NULL,
  `tanggal_pengembalian` date DEFAULT NULL,
  `status` enum('sudah dikembalikan','belum dikembalikan') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `userid`, `bukuid`, `tanggal_peminjaman`, `tanggal_pengembalian`, `status`) VALUES
(4, 32, 9, '2024-02-13', '2024-02-16', 'sudah dikembalikan'),
(5, 32, 9, '2024-02-13', '2024-02-13', 'sudah dikembalikan'),
(6, 33, 9, '2024-02-13', '2024-02-16', 'sudah dikembalikan'),
(7, 33, 9, '2024-02-13', '2024-02-18', 'sudah dikembalikan'),
(8, 33, 9, '2024-02-13', '2024-02-19', 'sudah dikembalikan'),
(9, 32, 10, '2024-02-14', '2024-02-14', 'sudah dikembalikan'),
(10, 32, 10, '2024-02-14', '2024-02-14', 'sudah dikembalikan'),
(11, 32, 10, '2024-02-14', '2024-02-14', 'sudah dikembalikan'),
(12, 32, 10, '2024-02-14', '2024-02-14', 'sudah dikembalikan'),
(13, 32, 10, '2024-02-14', '2024-02-14', 'sudah dikembalikan'),
(14, 32, 10, '2024-02-14', '2024-02-14', 'sudah dikembalikan'),
(15, 32, 9, '2024-02-14', '2024-02-14', 'sudah dikembalikan'),
(16, 32, 9, '2024-02-14', '2024-02-14', 'sudah dikembalikan'),
(17, 32, 10, '2024-02-14', '2024-02-14', 'sudah dikembalikan'),
(18, 32, 9, '2024-02-14', '2024-02-14', 'sudah dikembalikan'),
(19, 32, 9, '2024-02-14', '2024-02-14', 'sudah dikembalikan'),
(20, 32, 10, '2024-02-14', '2024-02-14', 'sudah dikembalikan'),
(21, 32, 10, '2024-02-14', '2024-02-14', 'sudah dikembalikan'),
(22, 32, 9, '2024-02-14', '2024-02-14', 'sudah dikembalikan'),
(23, 32, 10, '2024-02-18', '2024-02-18', 'sudah dikembalikan'),
(24, 32, 9, '2024-02-18', '2024-02-18', 'sudah dikembalikan'),
(25, 35, 9, '2024-02-18', '2024-02-18', 'sudah dikembalikan'),
(26, 35, 9, '2024-02-18', '2024-02-18', 'sudah dikembalikan'),
(27, 35, 9, '2024-02-18', '2024-02-18', 'sudah dikembalikan'),
(28, 35, 10, '2024-02-18', '2024-02-18', 'sudah dikembalikan'),
(29, 35, 9, '2024-02-18', '2024-02-18', 'sudah dikembalikan'),
(30, 35, 9, '2024-02-18', '2024-02-18', 'sudah dikembalikan'),
(31, 35, 9, '2024-02-18', '2024-02-18', 'sudah dikembalikan'),
(32, 35, 9, '2024-02-18', '2024-02-18', 'belum dikembalikan'),
(33, 35, 10, '2024-02-18', '2024-02-18', 'belum dikembalikan'),
(34, 32, 9, '2024-02-19', '2024-02-19', 'sudah dikembalikan'),
(35, 32, 9, '2024-02-19', '2024-02-19', 'sudah dikembalikan'),
(36, 32, 9, '2024-02-19', '2024-02-19', 'sudah dikembalikan'),
(37, 32, 9, '2024-02-19', '2024-02-19', 'sudah dikembalikan'),
(38, 32, 9, '2024-02-19', '2024-02-19', 'sudah dikembalikan'),
(39, 32, 9, '2024-02-19', '2024-02-19', 'sudah dikembalikan'),
(40, 32, 9, '2024-02-19', '2024-02-19', 'sudah dikembalikan'),
(41, 32, 9, '2024-02-19', '2024-02-19', 'sudah dikembalikan'),
(42, 32, 9, '2024-02-19', '2024-02-19', 'sudah dikembalikan'),
(43, 32, 10, '2024-02-19', '2024-02-19', 'sudah dikembalikan'),
(44, 32, 10, '2024-02-19', '2024-02-19', 'sudah dikembalikan'),
(45, 32, 10, '2024-02-19', '2024-02-19', 'sudah dikembalikan'),
(46, 32, 10, '2024-02-19', '2024-02-19', 'sudah dikembalikan'),
(47, 32, 10, '2024-02-19', '2024-02-19', 'sudah dikembalikan'),
(48, 32, 9, '2024-02-19', '2024-02-19', 'sudah dikembalikan'),
(49, 32, 9, '2024-02-19', '2024-02-19', 'sudah dikembalikan'),
(50, 32, 10, '2024-02-19', '2024-02-19', 'belum dikembalikan'),
(51, 32, 9, '2024-02-21', '2024-02-21', 'sudah dikembalikan'),
(52, 32, 9, '2024-02-21', '2024-02-21', 'sudah dikembalikan'),
(53, 32, 9, '2024-02-21', '2024-02-22', 'sudah dikembalikan'),
(54, 31, 11, '2024-02-21', '2024-02-21', 'sudah dikembalikan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ulasan`
--

CREATE TABLE `ulasan` (
  `id` int(12) NOT NULL,
  `userid` int(12) DEFAULT NULL,
  `bukuid` int(12) DEFAULT NULL,
  `ulasan` longtext DEFAULT NULL,
  `rating` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ulasan`
--

INSERT INTO `ulasan` (`id`, `userid`, `bukuid`, `ulasan`, `rating`) VALUES
(2, 32, 9, 's', 1),
(10, 32, 10, 'sadsa', 3),
(11, 31, 9, 'sad', 1),
(12, 31, 11, 'sad', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(12) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `role` enum('admin','petugas','peminjam') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `fullname`, `alamat`, `role`) VALUES
(31, 'admin', '$2y$10$MTLW1tNRbB3hA58B.N0iPu2DwvrGIoH4GrjepkcdRrwFpLbwTITQS', 'admin@mail.com', 'admin', 'admin', 'admin'),
(32, 'user', '$2y$10$Jb64q37TGvKIzvMrUO06uuZtNb6ApHRFTNuDonnsC8cfdDO/1n3sm', 'user@mail.com', 'user', 'user', 'peminjam'),
(33, 'user2', '$2y$10$1MikqXPFKjaU8dqUC9jQqOiWpcThuc8UbUvANqtrhsiNJ4P10Tmk6', 'user2@mail.com', 'user2', 'user2', 'peminjam'),
(34, 'petugas', '$2y$10$gTItjNjVR2TihEy0KJjzA.IAWhHDSclVLPFgTjQT0NRqpeQZ6Cv3S', 'petugas@mail.com', 'petugas', 'petugas', 'petugas'),
(35, 'p', '$2y$10$SU4mV5okak9QxbzMAy4sf.79tct1skjDrpAfMzya9h/G/iU0kt3lq', 'p', 'p', 'p', 'peminjam'),
(37, 'user1', '$2y$10$y/Y3MrfBfra2c4I1zncaiOIHFAzISqoDGxfiTNI5GB./oXR.0YgjW', 'user1', 'user1', 'medan', 'peminjam'),
(38, 'ok', '$2y$10$Phb04fk4wH41BOs02zMVtOhSyo7stU52xum7e3aJosE4cXpERFTRK', 'ok', 'ok', 'ok', 'peminjam'),
(39, 'sadlip', '$2y$10$rkIQeBOC513IAu6FHxXdYOXKBNNkCRWeliQTjQ3S6njmQsAeUS3ha', 'sadsa', 'sa', 'asd', 'peminjam'),
(40, 'tes', '$2y$10$FeOHrUXGYYtcBl1/TJB.PuS2/oV/bGe9MDdVS3rEcHlemk0hFv3AS', 'tes', 'tes', 'tes', 'peminjam'),
(41, 'ptgs', '$2y$10$qSWCnLSV5p7ZRgiL3rCRpOij5Di.eNifWYRZkjHfWuLT06td.4Dzi', 'ptgs', 'ptgs', 'ptgs', 'peminjam'),
(42, '1', '$2y$10$g.eVbcge1cRe5r/9YohWful8nNP.JjLNe.a9U3JVH3Xsrjh9LOI7C', '1', '1', '1', 'peminjam'),
(43, 'petugas2', '$2y$10$I4Kv0ERVnxk.sn5q9V65W.VNs0A1qxA2FnAKsy8qUvV5pjMw90b7G', 'petugas2', 'petugas2', 'petugas2', 'petugas'),
(44, 'petugas3', '$2y$10$.hDT21rqYFSpTtoU65pKSOcqbrUfh3wnjXZxQGGlaaguDfJvbD6WO', 'petugas3', 'petugas3', 'petuga3', 'peminjam'),
(45, 'tse', '$2y$10$O0bRC21bBOrm4HGiy5sXzORLKeUVupNrHvOEQNtglF1zRFshg4MCG', 'seri', 'tes', 'rttednf', 'petugas'),
(46, 'op', '$2y$10$hYiX6CJ1BQR8wbfceRwn0eNn4sWSyTfBN2If.vsZvCRL2WgK2Ve3e', 'op', 'op', 'p', 'petugas'),
(47, 'q', '$2y$10$.k5p0LcnXcMnqT6O3aez6OykvaLiVHbgZddv5lE/lkK6TWUXexzAW', 'q', 'q', 'q', 'petugas');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategoribuku`
--
ALTER TABLE `kategoribuku`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_kategori` (`nama_kategori`);

--
-- Indeks untuk tabel `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buku_id` (`buku_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indeks untuk tabel `koleksi`
--
ALTER TABLE `koleksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `bukuid` (`bukuid`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `bukuid` (`bukuid`);

--
-- Indeks untuk tabel `ulasan`
--
ALTER TABLE `ulasan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `bukuid` (`bukuid`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `kategoribuku`
--
ALTER TABLE `kategoribuku`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `koleksi`
--
ALTER TABLE `koleksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `ulasan`
--
ALTER TABLE `ulasan`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  ADD CONSTRAINT `kategoribuku_relasi_ibfk_1` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`),
  ADD CONSTRAINT `kategoribuku_relasi_ibfk_2` FOREIGN KEY (`kategori_id`) REFERENCES `kategoribuku` (`id`);

--
-- Ketidakleluasaan untuk tabel `koleksi`
--
ALTER TABLE `koleksi`
  ADD CONSTRAINT `koleksi_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `koleksi_ibfk_2` FOREIGN KEY (`bukuid`) REFERENCES `buku` (`id`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`bukuid`) REFERENCES `buku` (`id`);

--
-- Ketidakleluasaan untuk tabel `ulasan`
--
ALTER TABLE `ulasan`
  ADD CONSTRAINT `ulasan_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `ulasan_ibfk_2` FOREIGN KEY (`bukuid`) REFERENCES `buku` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
