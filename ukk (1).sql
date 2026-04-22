-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2026 at 08:36 AM
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
-- Database: `ukk`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'vir', '123'),
(2, 'admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `stok` int(11) NOT NULL,
  `kategori` enum('novel','komik','pendidikan','sejarah','teknologi','agama','') NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `penulis`, `deskripsi`, `stok`, `kategori`, `foto`) VALUES
(13, 'mariposa', 'luluk HF', 'Novel ini bercerita tentang Acha yang ceria dan gigih mendekati Iqbal, cowok pintar yang dingin dan cuek. Ceritanya ringan, lucu, tapi juga ada pesan tentang:\r\n\r\nperjuangan cinta\r\nkesabaran\r\ndan arti ketulusan', 51, 'novel', 'MARIPOSA (1).jfif'),
(15, 'sang memimpi', 'Andrea Hirata', 'Novel ini adalah lanjutan dari Laskar Pelangi. Ceritanya tentang Ikal, Arai, dan Jimbron yang punya mimpi besar walaupun hidup dengan keterbatasan.\r\n\r\nTema utama:\r\n\r\nperjuangan meraih mimpi\r\npersahabatan\r\nsemangat pantang menyerah\r\n\r\nCeritanya inspiratif banget, nunjukin kalau keterbatasan bukan halangan untuk sukses.', 58, 'novel', 'Sang Pemimpi.jfif'),
(16, 'garis waktu', 'Fiersa Besari', 'Buku ini berisi kumpulan tulisan (bukan novel cerita penuh), yang menggambarkan perjalanan perasaan seseorang tentang:\r\n\r\ncinta\r\nkehilangan\r\nkenangan\r\nproses move on\r\n\r\nGaya bahasanya puitis dan relatable, banyak disukai anak muda karena terasa dekat dengan kehidupan sehari-hari.', 56, 'novel', 'Sebuah usaha melupakan.jfif'),
(17, 'tentang kamu', 'tere liye', 'Novel ini bercerita tentang seorang wanita bernama Sri Ningsih yang hidupnya penuh perjuangan sejak kecil hingga dewasa.\r\n\r\nSeorang pengacara bernama Zaman ditugaskan untuk mengurus warisan Sri, lalu ia menelusuri masa lalu Sri yang ternyata:\r\n\r\npenuh penderitaan\r\npenuh ketegaran\r\ndan menyimpan banyak misteri\r\n\r\nCeritanya berpindah-pindah waktu dan tempat, mengungkap perjalanan hidup yang sangat menyentuh.', 51, 'novel', 'tentang kamu.jfif'),
(18, 'bumi', 'tere liye', 'Novel ini bercerita tentang seorang remaja bernama Raib yang ternyata punya kekuatan khusus. Ia bersama teman-temannya, Seli dan Ali, masuk ke dunia lain yang penuh misteri dan petualangan.\r\n\r\nCeritanya berisi:\r\n\r\ndunia paralel\r\nkekuatan super\r\npetualangan seru\r\n\r\nIni bukan cuma cerita remaja biasa, tapi lebih ke fantasi dan aksi.', 52, 'novel', 'download (8).jfif'),
(19, 'matahari ', 'tere liye', 'Buku ini adalah lanjutan dari seri Bumi. Ceritanya masih tentang Raib, Seli, dan Ali yang melanjutkan petualangan ke dunia lain.\r\n\r\nDi Matahari, mereka menghadapi:\r\n\r\ntantangan yang lebih berbahaya\r\nrahasia dunia paralel yang makin luas\r\nkonflik yang lebih kompleks\r\n\r\nCeritanya lebih menegangkan dan penuh aksi dibanding buku sebelumnya.', 54, 'novel', 'SINOPSIS dan RESENSI Novel MATAHARI Karya TERE LIYE.jfif'),
(20, 'perahu kertas', 'Dee Lestari', 'Novel ini bercerita tentang Kugy dan Keenan, dua anak muda dengan mimpi dan jalan hidup yang berbeda.\r\n\r\nKugy: unik, imajinatif, suka menulis dongeng\r\nKeenan: seniman yang punya passion di lukisan\r\n\r\nCerita mereka penuh dengan:\r\n\r\npersahabatan\r\ncinta yang tidak mudah\r\npencarian jati diri\r\n\r\nAlurnya realistis dan dekat dengan kehidupan anak muda.', 51, 'novel', 'download (6).jfif');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `tanggal_pinjam` datetime DEFAULT NULL,
  `tanggal_kembali` datetime DEFAULT NULL,
  `status` enum('dipinjam','dikembalikan','pending','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_user`, `id_buku`, `tanggal_pinjam`, `tanggal_kembali`, `status`) VALUES
(22, 31, 15, '2026-04-22 09:37:29', '2026-04-22 09:37:35', 'dikembalikan'),
(23, 31, 19, '2026-04-22 09:37:39', '2026-04-22 09:37:43', 'dikembalikan'),
(24, 31, 20, '2026-04-22 09:39:31', NULL, 'dipinjam'),
(25, 31, 16, '2026-04-22 09:39:33', NULL, 'dipinjam');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `no_hp` int(15) NOT NULL,
  `gmail` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `no_hp`, `gmail`, `password`) VALUES
(28, 'virr', 12345678, 'viravir165@gmail.com', '$2y$10$GTmq1d5iDcQmN'),
(31, 'user', 999999999, 'uservir165@gmail.com', '$2y$10$yJM9rxQ5a59oPgBsk0ytReEx1jVxSZDXj9mm.brHFx4xybT6aPJgW'),
(32, 'vira', 2147483647, 'viravir165@gmail.com', '$2y$10$JdJ7W3X6ywanfbHg0CCxBOpven9.5bsZWMA44wLxiKWfZ.oTMZVn.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `judul` (`judul`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`nama_lengkap`),
  ADD KEY `nama_lengkap` (`nama_lengkap`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
