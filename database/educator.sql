-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 19 Nov 2023 pada 09.20
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `educator`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(64) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `role` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `role`) VALUES
(0, 'admin', '$2y$10$EX0L5MeIQldpkCuTZW.mjujTaj.Yy20IW0GOluecU/c.es.9r6E5.', 'admin@gmail.com', 'adm');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `nip` int(64) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama_guru` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_mapel` varchar(64) NOT NULL,
  `role` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`nip`, `email`, `nama_guru`, `password`, `nama_mapel`, `role`) VALUES
(123451111, 'tutierdia@gmail.com', 'Tuti Erdia', '$2y$10$34YotRWv8LRkAqX.m2d.l.UHKm/RVARjs1t246MAYupuIy4YHF7BC', 'Bahasa Indonesia', 'guru'),
(214748365, 'jokosusilo@gmail.com', 'Joko Susilo', '$2y$10$3qQ2TYrtQHy44LblPMexnu4ZQrCWD.dYh20P.sOL5cyo6Z48fJQEq', 'Matematika', 'guru'),
(2112121212, 'ritasusanti@gmail.com', 'Rita Susanti', '$2y$10$Mp1XcRMVau3GOIngP47Mael2nQng.lgE8KnkRSb86zksWu2p46FGK', 'Ipa', 'guru'),
(2147483647, 'ahmad_dahlan@gmail.com', 'Ahmad Dahlan', '$2y$10$45/GPvA.RhajJyLhbIrOPuQMxWkggQCjuIgPefWFRUgcC5vDIIF5m', 'Soft Skill', 'guru');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` int(255) NOT NULL,
  `kelas` varchar(128) NOT NULL,
  `nama_siswa` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `materi`
--

CREATE TABLE `materi` (
  `id` int(11) NOT NULL,
  `nama_guru` varchar(128) NOT NULL,
  `nama_mapel` varchar(128) NOT NULL,
  `video` varchar(255) NOT NULL,
  `deskripsi` varchar(1024) NOT NULL,
  `kelas` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `materi`
--

INSERT INTO `materi` (`id`, `nama_guru`, `nama_mapel`, `video`, `deskripsi`, `kelas`) VALUES
(79, 'Ahmad Dahlan', 'Soft Skill', 'Soft_Skill_1.mp4', 'Pada materi kali ini akan dipaparkan mengenai 7 soft skill yang harus dimiliki dan dikuasai oleh tenaga pendidik untuk memajukan pendidikan di Indonesia', 'SD'),
(80, 'Ahmad Dahlan', 'Soft Skill', 'Soft_Skill_21.mp4', 'Pada materi kali ini, dijelaskan mengenai 4 kemampuan komunikasi yang wajib dipelajari untuk kamu tenaga pendidik di Indonesia', 'SD'),
(81, 'Joko Susilo', 'Matematika', 'Matematika_-_Dummy_-_11.mp4', 'Materi Hard Skill 1 untuk tenaga pendidik SD bidang matematika', 'SD'),
(82, 'Joko Susilo', 'Matematika', 'Matematika_-_Dummy_-_21.mp4', 'Materi Hard Skill 2 untuk tenaga pendidik SD bidang Matematika', 'SD'),
(83, 'Tuti Erdia', 'Bahasa Indonesia', 'Indonesia_-_Dummy_11.mp4', 'Materi Hard Skill 1 untuk tenaga pendidik Indonesia bidang Bahasa Indonesia', 'SD'),
(84, 'Tuti Erdia', 'Bahasa Indonesia', 'Indonesia_-_Dummy_21.mp4', 'Materi Hard Skill 2 untuk tenaga pendidik Indonesia bidang Bahasa Indonesia', 'SD'),
(85, 'Yulia Tuti', 'Bahasa Inggris', 'Inggris_-_Dummy_11.mp4', 'Materi Hard Skill 1 Bahasa Inggris untuk tenaga pendidik SD', 'SD'),
(86, 'Yulia Tuti', 'Bahasa Inggris', 'Inggris_-_Dummy_21.mp4', 'Materi Hard Skill 2 Bahasa Inggris untuk Tenaga Pendidik SD', 'SD'),
(87, 'Rita Susanti', 'Ipa', 'IPA_-_Dummy_11.mp4', 'Materi Hard Skill 1 IPA untuk Tenaga Pendidik SD Indonesia', 'SD'),
(88, 'Rita Susanti', 'Ipa', 'IPA_-_Dummy_21.mp4', 'Materi Hard Skill 2 untuk Tenaga Pendidik SD Indonesia', 'SD'),
(89, 'Tuti Erdia', 'Bahasa Indonesia', 'Indonesia_-_Dummy_31.mp4', 'Materi Hard Skill 1 untuk Tenaga Pendidik SMP bidang Bahasa Indonesia', 'SMP'),
(90, 'Tuti Erdia', 'Bahasa Indonesia', 'Indonesia_-_Dummy_41.mp4', 'Materi Hard Skill 2 untuk Tenaga Pendidik SMP bidang Bahasa Indonesia', 'SMP'),
(91, 'Yulia Tuti', 'Bahasa Inggris', 'Inggris_-_Dummy_31.mp4', 'Materi Hard Skill 1 untuk Tenaga Pendidik SMP bidang Bahasa Inggris', 'SMP'),
(92, 'Yulia Tuti', 'Bahasa Inggris', 'Inggris_-_Dummy_41.mp4', 'Materi Hard Skill 2 untuk Tenaga Pendidik SMP bidang Bahasa Inggris', 'SMP'),
(93, 'Joko Susilo', 'Matematika', 'Matematika_-_Dummy_-_111.mp4', 'Materi Hard Skill 1 untuk Tenaga Pendidik SMP bidang Matematika', 'SMP'),
(94, 'Joko Susilo', 'Matematika', 'Matematika_-_Dummy_-_211.mp4', 'Materi Hard Skill 2 untuk Tenaga Pendidik SMP bidang Matematika', 'SMP'),
(95, 'Rita Susanti', 'Ipa', 'IPA_-_Dummy_31.mp4', 'Materi Hard Skill 1 untuk Tenaga Pendidik SMP bidang IPA', 'SMP'),
(96, 'Rita Susanti', 'Ipa', 'IPA_-_Dummy_41.mp4', 'Materi Hard Skill 2 untuk Tenaga Pendidik SMP bidang IPA', 'SMP'),
(97, 'Ahmad Dahlan', 'Soft Skill', 'Soft_Skill_31.mp4', 'Materi Soft Skill 1 untuk Tenaga Pendidik SMP', 'SMP'),
(98, 'Ahmad Dahlan', 'Soft Skill', 'Soft_Skill_41.mp4', 'Materi Soft Skill 2 untuk Tenaga Pendidik SMP', 'SMP'),
(99, 'Ahmad Dahlan', 'Soft Skill', 'Soft_Skill_51.mp4', 'Materi Soft Skill 1 untuk Tenaga Pendidik SMA', 'SMA'),
(100, 'Ahmad Dahlan', 'Soft Skill', 'Soft_Skill_61.mp4', 'Materi Soft Skill 2 untuk Tenaga Pendidik SMA', 'SMA'),
(101, 'Tuti Erdia', 'Bahasa Indonesia', 'Indonesia_-_Dummy_51.mp4', 'Materi Hard Skill 1 untuk Tenaga Pendidik SMA bidang Bahasa Indonesia', 'SMA'),
(102, 'Tuti Erdia', 'Bahasa Indonesia', 'Indonesia_-_Dummy_61.mp4', 'Materi Hard Skill 2 untuk Tenaga Pendidik SMA bidang Bahasa Indonesia', 'SMA'),
(103, 'Yulia Tuti', 'Bahasa Inggris', 'Inggris_-_Dummy_51.mp4', 'Materi Hard Skill 1 untuk Tenaga Pendidik SMA bidang Bahasa Inggris', 'SMA'),
(104, 'Yulia Tuti', 'Bahasa Inggris', 'Inggris_-_Dummy_61.mp4', 'Materi Hard Skill 2 untuk Tenaga Pendidik SMA bidang Bahasa Inggris', 'SMA'),
(105, 'Joko Susilo', 'Matematika', 'Matematika_-_Dummy_41.mp4', 'Materi Hard Skill 1 untuk Tenaga Pendidik SMA bidang Matematika', 'SMA'),
(106, 'Joko Susilo', 'Matematika', 'Matematika_-_Dummy_51.mp4', 'Materi Hard Skill 2 untuk Tenaga Pendidik SMA bidang Matematika', 'SMA'),
(107, 'Rita Susanti', 'Ipa', 'IPA_-_Dummy_51.mp4', 'Materi Hard Skill 1 untuk Tenaga Pendidik SMA bidang IPA', 'SMA'),
(108, 'Rita Susanti', 'Ipa', 'IPA_-_Dummy_61.mp4', 'Materi Hard Skill 2 untuk Tenaga Pendidik SMA bidang IPA', 'SMA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(64) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(64) NOT NULL,
  `role` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `password`, `email`, `image`, `is_active`, `date_created`, `role`) VALUES
(48, 'Muhammad Rizky Prayoga', '$2y$10$p.uqHiQSAE2c2cGbA0cL1ehVHwmEuwtM.03vi2/BXZlQL9bLHti8O', 'mrpharyga2019@gmail.com', 'default.jpg', 1, 1700317575, 'siswa'),
(49, 'testing', '$2y$10$/8j55Ku2CQ0xfjzRMd8ZVeMKO/YeCqfNXBaFxtK/wAQmJnwGYtayi', 'testing12@gmail.com', 'default.jpg', 1, 1700379779, 'siswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
