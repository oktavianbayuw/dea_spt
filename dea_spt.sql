-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 12 Des 2023 pada 03.32
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
-- Database: `dea_spt`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `spt_result`
--

CREATE TABLE `spt_result` (
  `id` int(10) UNSIGNED NOT NULL,
  `result` text NOT NULL,
  `dt_insert` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `spt_result`
--

INSERT INTO `spt_result` (`id`, `result`, `dt_insert`) VALUES
(1, 'Kalau yang di akhir', '2023-12-06 15:11:01'),
(2, 'cek cek cek cek cek', '2023-12-06 15:35:58'),
(3, 'Halo dek', '2023-12-06 15:36:18'),
(4, 'cek cek cek cek cek', '2023-12-06 15:36:54'),
(5, 'cek cek cek', '2023-12-06 16:27:10'),
(6, 'cek', '2023-12-06 16:29:53'),
(7, 'recording', '2023-12-06 16:31:35'),
(8, 'tes', '2023-12-06 16:32:45'),
(9, ' notasinya apa', '2023-12-06 17:20:34');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `spt_result`
--
ALTER TABLE `spt_result`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `spt_result`
--
ALTER TABLE `spt_result`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
