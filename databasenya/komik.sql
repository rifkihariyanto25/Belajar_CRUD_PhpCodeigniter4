-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Feb 2021 pada 08.55
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `komik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `Judul` varchar(255) NOT NULL,
  `Slug` varchar(255) NOT NULL,
  `Penulis` varchar(255) NOT NULL,
  `Penerbit` varchar(255) NOT NULL,
  `Sampul` varchar(255) NOT NULL,
  `Created_at` datetime DEFAULT NULL,
  `Updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komik`
--

INSERT INTO `komik` (`id`, `Judul`, `Slug`, `Penulis`, `Penerbit`, `Sampul`, `Created_at`, `Updated_at`) VALUES
(2, 'Nartoh', 'nartoh', 'hehehe', 'PT. Mesin Abadi', 'Narto.jpg', NULL, 2021),
(9, 'Saskeh', 'saskeh', 'Manusia', 'Pabrik', 'Saskeh.jpg', '2021-02-15 03:29:02', 2021),
(10, 'Saskeh Jilid 2', 'saskeh-jilid-2', 'Manusia', 'Rumah Film', 'Saskeh.jpg', '2021-02-15 19:27:38', 2021),
(11, 'Yang berubah hanya judul', 'yang-berubah-hanya-judul', 'dasdsad', 'dasds', '1613969861_7daf8291860e5dcb1a21.png', '2021-02-21 21:03:41', 2021),
(14, 'coba lagi', 'coba-lagi', 'coba lagi', 'coa lagi', 'default.jpg', '2021-02-21 21:21:22', 2021);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-02-22-065351', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1613977331, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Eman Warsita Latupono', 'Jln. Baladewa No. 653, Dumai 76696, Maluku', '1993-09-07 09:35:19', '2021-02-23 20:31:52'),
(2, 'Shakila Mayasari', 'Ki. Juanda No. 370, Pariaman 64478, NTB', '2020-06-17 04:47:29', '2021-02-23 20:31:52'),
(3, 'Julia Yuliarti', 'Jr. Mulyadi No. 612, Banjarmasin 22859, SulBar', '1980-04-14 12:26:15', '2021-02-23 20:31:52'),
(4, 'Ella Farida', 'Gg. Industri No. 49, Mojokerto 12599, KalTim', '1973-10-07 08:50:27', '2021-02-23 20:31:52'),
(5, 'Najwa Namaga', 'Gg. Katamso No. 814, Solok 61427, BaBel', '1976-05-02 09:01:51', '2021-02-23 20:31:52'),
(6, 'Suci Febi Novitasari', 'Ds. Surapati No. 987, Sabang 20737, Bengkulu', '1972-12-14 19:23:43', '2021-02-23 20:31:52'),
(7, 'Vicky Salsabila Padmasari S.Psi', 'Jr. Mahakam No. 18, Sukabumi 35918, Jambi', '2011-09-14 17:19:09', '2021-02-23 20:31:52'),
(8, 'Alika Puspita S.Pd', 'Ds. Suharso No. 833, Mataram 12801, SumSel', '1996-04-26 04:57:47', '2021-02-23 20:31:52'),
(9, 'Okta Maulana S.Gz', 'Dk. Ikan No. 920, Administrasi Jakarta Selatan 18791, KalTeng', '2015-05-29 13:27:03', '2021-02-23 20:31:52'),
(10, 'Mujur Widodo S.Ked', 'Dk. Achmad Yani No. 571, Depok 79706, Bengkulu', '1995-05-26 07:33:52', '2021-02-23 20:31:52'),
(11, 'Anita Suryatmi S.H.', 'Jr. Villa No. 795, Palopo 12542, NTT', '2001-06-15 07:30:01', '2021-02-23 20:31:52'),
(12, 'Bella Halimah', 'Jr. Bakaru No. 655, Kendari 24721, Bali', '1987-03-04 16:50:18', '2021-02-23 20:31:52'),
(13, 'Mahdi Naradi Waluyo', 'Jr. Baranangsiang No. 842, Palopo 44993, Papua', '1999-04-07 22:25:22', '2021-02-23 20:31:52'),
(14, 'Nurul Ayu Rahimah', 'Ds. Ters. Pasir Koja No. 64, Tidore Kepulauan 73549, SulBar', '2008-09-28 11:39:34', '2021-02-23 20:31:52'),
(15, 'Zizi Sudiati M.Ak', 'Kpg. Lembong No. 391, Administrasi Jakarta Pusat 48930, Maluku', '1985-10-16 03:12:14', '2021-02-23 20:31:52'),
(16, 'Pranata Maheswara', 'Gg. Baha No. 316, Kediri 77153, Papua', '2010-04-29 04:13:40', '2021-02-23 20:31:52'),
(17, 'Patricia Safitri', 'Jln. Veteran No. 587, Sibolga 13548, Maluku', '2002-12-23 03:15:01', '2021-02-23 20:31:53'),
(18, 'Panji Permadi', 'Gg. Sutarto No. 900, Manado 62186, PapBar', '1993-06-11 10:02:44', '2021-02-23 20:31:53'),
(19, 'Hamzah Simbolon', 'Ds. Panjaitan No. 259, Sibolga 50810, Bali', '2013-04-07 08:32:06', '2021-02-23 20:31:53'),
(20, 'Reza Nababan', 'Gg. Baya Kali Bungur No. 255, Sabang 33773, Bali', '2014-04-23 03:38:38', '2021-02-23 20:31:54'),
(21, 'Ophelia Winda Wastuti M.Pd', 'Psr. Yogyakarta No. 286, Kendari 44488, Jambi', '2013-11-02 17:45:28', '2021-02-23 20:31:54'),
(22, 'Lalita Cindy Mayasari', 'Dk. Basmol Raya No. 835, Cilegon 46453, Riau', '2016-09-23 09:43:23', '2021-02-23 20:31:54'),
(23, 'Carla Nasyidah S.Kom', 'Ki. Gedebage Selatan No. 808, Gorontalo 99276, SumBar', '1973-01-17 23:59:00', '2021-02-23 20:31:54'),
(24, 'Olivia Eva Farida S.Sos', 'Psr. Tangkuban Perahu No. 221, Pariaman 56504, SulBar', '2005-06-05 15:37:07', '2021-02-23 20:31:54'),
(25, 'Amalia Jamalia Winarsih', 'Kpg. Tubagus Ismail No. 695, Blitar 66538, MalUt', '2005-05-14 10:17:33', '2021-02-23 20:31:54'),
(26, 'Cakrawala Budiyanto S.Gz', 'Jr. Tangkuban Perahu No. 922, Sorong 52103, Papua', '1993-07-03 06:08:00', '2021-02-23 20:31:54'),
(27, 'Jais Bakda Damanik', 'Ki. Nanas No. 365, Batu 65964, SulSel', '1983-07-13 09:13:58', '2021-02-23 20:31:55'),
(28, 'Ratih Zulaikha Nasyidah M.Ak', 'Psr. Dipenogoro No. 44, Singkawang 66547, KalTeng', '2006-08-17 03:29:09', '2021-02-23 20:31:55'),
(29, 'Ghaliyati Utami', 'Gg. Dipenogoro No. 140, Probolinggo 68243, SumSel', '2014-10-16 09:40:57', '2021-02-23 20:31:55'),
(30, 'Cemplunk Mandala M.TI.', 'Ds. Gotong Royong No. 839, Parepare 24534, SumSel', '1976-10-21 18:23:57', '2021-02-23 20:31:55'),
(31, 'Rosman Reksa Anggriawan', 'Ki. Yos No. 548, Tomohon 66795, KalTim', '1981-09-29 09:34:42', '2021-02-23 20:31:55'),
(32, 'Dipa Kawaya Wasita', 'Psr. Ronggowarsito No. 490, Lubuklinggau 50702, Bengkulu', '1979-12-02 22:07:43', '2021-02-23 20:31:55'),
(33, 'Dian Fathonah Wijayanti', 'Ds. Ikan No. 803, Bukittinggi 84894, Gorontalo', '1992-09-07 01:10:20', '2021-02-23 20:31:55'),
(34, 'Alambana Zulkarnain', 'Ki. Ciumbuleuit No. 662, Parepare 30046, PapBar', '2002-09-12 07:31:47', '2021-02-23 20:31:55'),
(35, 'Lalita Uyainah', 'Kpg. Peta No. 388, Langsa 56112, KalTeng', '2010-11-25 06:58:33', '2021-02-23 20:31:55'),
(36, 'Hasta Irfan Wibowo', 'Jln. Rajawali Timur No. 536, Bau-Bau 91540, Jambi', '1996-05-01 15:24:19', '2021-02-23 20:31:55'),
(37, 'Candrakanta Tasnim Pangestu', 'Jln. Basket No. 256, Cimahi 86368, Banten', '2002-01-29 09:17:16', '2021-02-23 20:31:55'),
(38, 'Ibun Umaya Nababan', 'Kpg. Sutarto No. 425, Batam 33390, BaBel', '2010-12-18 02:52:41', '2021-02-23 20:31:55'),
(39, 'Cornelia Jelita Rahmawati', 'Jln. Sutan Syahrir No. 259, Depok 24646, KalTeng', '1972-10-02 20:02:43', '2021-02-23 20:31:55'),
(40, 'Indah Rahmawati', 'Ds. Gardujati No. 636, Semarang 29111, Gorontalo', '2008-04-28 10:18:00', '2021-02-23 20:31:55'),
(41, 'Agnes Ella Yulianti', 'Ds. B.Agam 1 No. 264, Lhokseumawe 41937, KalUt', '1986-06-10 04:18:06', '2021-02-23 20:31:55'),
(42, 'Ilsa Sudiati', 'Psr. Bank Dagang Negara No. 703, Yogyakarta 50088, SulTeng', '1993-11-17 11:22:12', '2021-02-23 20:31:55'),
(43, 'Daniswara Taufik Situmorang S.Kom', 'Gg. Baha No. 47, Lubuklinggau 71249, KalSel', '2009-04-26 05:24:00', '2021-02-23 20:31:56'),
(44, 'Paris Kuswandari M.TI.', 'Psr. Babadak No. 282, Pariaman 24438, DIY', '2006-05-31 23:44:15', '2021-02-23 20:31:56'),
(45, 'Raina Nasyiah', 'Ds. Yos Sudarso No. 585, Depok 48912, Jambi', '1980-01-06 17:38:33', '2021-02-23 20:31:56'),
(46, 'Hasan Hakim', 'Ki. Kebangkitan Nasional No. 638, Jayapura 63581, NTT', '1978-06-23 05:36:27', '2021-02-23 20:31:56'),
(47, 'Laswi Damanik', 'Kpg. Orang No. 739, Pematangsiantar 46503, Papua', '1997-03-25 03:34:35', '2021-02-23 20:31:56'),
(48, 'Caket Anggriawan', 'Dk. Muwardi No. 993, Parepare 23041, DKI', '2015-08-03 00:26:30', '2021-02-23 20:31:56'),
(49, 'Pardi Dwi Mangunsong M.TI.', 'Kpg. Ters. Jakarta No. 262, Parepare 27911, KalTeng', '1994-11-04 09:47:00', '2021-02-23 20:31:56'),
(50, 'Azalea Suci Kusmawati', 'Jln. Suniaraja No. 518, Padangsidempuan 15316, KalUt', '2013-03-17 11:11:49', '2021-02-23 20:31:56'),
(51, 'Endah Maya Puspita S.IP', 'Ds. Bayan No. 901, Palu 13103, DKI', '2004-08-04 06:14:18', '2021-02-23 20:31:56'),
(52, 'Belinda Nurul Laksmiwati', 'Gg. Bah Jaya No. 440, Banda Aceh 76104, Riau', '1984-12-09 14:57:26', '2021-02-23 20:31:56'),
(53, 'Makuta Wage Zulkarnain', 'Dk. Jend. Sudirman No. 562, Binjai 78098, KepR', '1980-08-07 22:59:01', '2021-02-23 20:31:57'),
(54, 'Purwadi Hutasoit', 'Ki. Jend. Sudirman No. 537, Batu 41666, SulTra', '2007-11-28 01:11:22', '2021-02-23 20:31:57'),
(55, 'Clara Nasyidah S.Kom', 'Ki. Abang No. 303, Sorong 94353, KalTim', '1986-02-18 09:37:46', '2021-02-23 20:31:57'),
(56, 'Makuta Natsir', 'Dk. Ciumbuleuit No. 664, Pasuruan 69841, KalTeng', '2003-09-01 02:40:51', '2021-02-23 20:31:57'),
(57, 'Raisa Novitasari S.E.I', 'Psr. Bambu No. 424, Surabaya 20448, Jambi', '1990-06-16 14:52:16', '2021-02-23 20:31:57'),
(58, 'Kartika Maryati S.Ked', 'Jr. Bata Putih No. 137, Serang 23067, Banten', '1971-07-31 17:13:46', '2021-02-23 20:31:57'),
(59, 'Gilda Astuti', 'Ki. Nanas No. 401, Batam 86705, Papua', '1996-08-04 08:53:05', '2021-02-23 20:31:57'),
(60, 'Halima Susanti', 'Ds. Sudiarto No. 996, Mojokerto 84577, PapBar', '1996-06-06 06:54:59', '2021-02-23 20:31:57'),
(61, 'Ghaliyati Olivia Uyainah', 'Ki. Pelajar Pejuang 45 No. 402, Makassar 14450, KalTeng', '2019-08-02 11:35:25', '2021-02-23 20:31:57'),
(62, 'Tasnim Tedi Situmorang S.Farm', 'Jln. BKR No. 366, Semarang 35142, DKI', '1978-11-28 09:47:16', '2021-02-23 20:31:57'),
(63, 'Yuni Pratiwi', 'Ki. Bahagia No. 995, Tangerang 14752, KepR', '2020-10-09 14:16:47', '2021-02-23 20:31:57'),
(64, 'Raina Wahyuni', 'Ki. Cut Nyak Dien No. 914, Depok 81656, SulBar', '1971-11-08 06:19:18', '2021-02-23 20:31:57'),
(65, 'Opan Uwais', 'Psr. Badak No. 744, Bekasi 38186, BaBel', '1985-06-10 15:53:26', '2021-02-23 20:31:57'),
(66, 'Unjani Laila Yulianti M.Pd', 'Kpg. Padang No. 879, Pekalongan 31845, JaTim', '2006-02-11 08:25:44', '2021-02-23 20:31:58'),
(67, 'Zelaya Kusmawati', 'Jln. Adisucipto No. 845, Pasuruan 38691, SulUt', '1976-08-20 16:51:37', '2021-02-23 20:31:58'),
(68, 'Salsabila Kania Mardhiyah S.I.Kom', 'Ki. Adisumarmo No. 79, Malang 54208, Bengkulu', '1972-02-22 01:18:25', '2021-02-23 20:31:58'),
(69, 'Janet Wirda Wastuti', 'Psr. Bahagia  No. 72, Bandung 80192, Bengkulu', '1979-10-23 16:04:50', '2021-02-23 20:31:58'),
(70, 'Dono Asmianto Prasasta', 'Gg. Jend. Sudirman No. 768, Denpasar 10090, Lampung', '2007-11-27 13:30:06', '2021-02-23 20:31:58'),
(71, 'Halima Riyanti', 'Jr. Madiun No. 19, Yogyakarta 40243, JaBar', '1977-10-20 17:34:26', '2021-02-23 20:31:58'),
(72, 'Lulut Budiyanto M.M.', 'Jr. Rajawali Barat No. 860, Pasuruan 46489, Gorontalo', '1993-01-08 00:13:08', '2021-02-23 20:31:58'),
(73, 'Harjo Langgeng Mustofa S.Pd', 'Dk. Bagas Pati No. 628, Prabumulih 14556, KalBar', '2019-08-14 09:52:53', '2021-02-23 20:31:58'),
(74, 'Hardi Januar S.Psi', 'Gg. Siliwangi No. 232, Metro 15120, Banten', '1992-08-29 00:08:33', '2021-02-23 20:31:58'),
(75, 'Tania Lestari', 'Jln. Yap Tjwan Bing No. 28, Tual 31054, JaTeng', '1990-07-23 10:54:13', '2021-02-23 20:31:58'),
(76, 'Hesti Tira Yulianti M.Kom.', 'Ds. R.E. Martadinata No. 958, Tomohon 31333, DKI', '2015-01-11 02:32:58', '2021-02-23 20:31:58'),
(77, 'Chelsea Uyainah', 'Ds. Hang No. 921, Bandar Lampung 28116, Papua', '2019-04-23 10:17:08', '2021-02-23 20:31:58'),
(78, 'Fitriani Amalia Rahayu', 'Kpg. Bass No. 706, Manado 74776, DKI', '1990-04-13 03:21:41', '2021-02-23 20:31:59'),
(79, 'Panca Bajragin Saputra S.E.I', 'Jr. Baranang Siang Indah No. 87, Cirebon 20991, SulSel', '1996-03-30 13:24:04', '2021-02-23 20:32:00'),
(80, 'Lalita Amalia Laksita', 'Dk. Basudewo No. 772, Yogyakarta 68080, NTT', '1995-08-14 08:37:50', '2021-02-23 20:32:00'),
(81, 'Daru Hakim', 'Ds. Yogyakarta No. 257, Semarang 36110, DIY', '2005-07-07 05:37:52', '2021-02-23 20:32:00'),
(82, 'Bahuwarna Karsa Saragih', 'Dk. Kali No. 167, Tangerang 16163, JaTim', '2014-03-27 08:23:00', '2021-02-23 20:32:00'),
(83, 'Hamima Latika Suartini S.H.', 'Dk. Monginsidi No. 261, Pematangsiantar 17539, BaBel', '1997-11-17 09:16:39', '2021-02-23 20:32:01'),
(84, 'Daruna Napitupulu', 'Gg. Moch. Ramdan No. 689, Ternate 79710, SumSel', '1982-01-14 06:58:46', '2021-02-23 20:32:01'),
(85, 'Maras Lantar Utama S.E.I', 'Dk. PHH. Mustofa No. 747, Parepare 60648, Riau', '1978-02-24 09:49:13', '2021-02-23 20:32:01'),
(86, 'Fitria Puspasari', 'Ds. K.H. Maskur No. 139, Malang 35162, Bengkulu', '1990-10-05 05:59:52', '2021-02-23 20:32:01'),
(87, 'Usyi Fitria Haryanti', 'Psr. Babadan No. 57, Balikpapan 59524, SumUt', '2007-04-26 01:50:44', '2021-02-23 20:32:01'),
(88, 'Harjaya Sihotang', 'Ki. Muwardi No. 733, Banjarbaru 40456, SulBar', '2010-01-31 12:03:46', '2021-02-23 20:32:01'),
(89, 'Tiara Halimah', 'Jln. Pasteur No. 456, Cirebon 38642, SumUt', '2015-10-07 14:37:55', '2021-02-23 20:32:01'),
(90, 'Vivi Handayani', 'Dk. Asia Afrika No. 861, Cilegon 63713, Gorontalo', '1994-10-25 05:46:59', '2021-02-23 20:32:01'),
(91, 'Ratna Yuliarti', 'Psr. Bappenas No. 819, Jayapura 32121, SulTra', '1999-11-07 13:00:05', '2021-02-23 20:32:01'),
(92, 'Vicky Amelia Yuniar S.Sos', 'Ki. Bacang No. 37, Bogor 32178, SumUt', '2013-11-12 18:07:16', '2021-02-23 20:32:01'),
(93, 'Cagak Cayadi Suwarno', 'Jln. Industri No. 472, Cimahi 94957, Banten', '2001-03-29 01:23:48', '2021-02-23 20:32:02'),
(94, 'Anita Halimah', 'Dk. R.E. Martadinata No. 659, Probolinggo 69014, JaTeng', '1972-01-31 07:17:46', '2021-02-23 20:32:02'),
(95, 'Viktor Santoso', 'Psr. Dahlia No. 149, Gunungsitoli 37787, SulUt', '1995-11-29 04:41:16', '2021-02-23 20:32:02'),
(96, 'Usyi Paris Usamah S.Kom', 'Ki. Bahagia No. 817, Tangerang Selatan 36751, SulUt', '1986-03-23 08:01:05', '2021-02-23 20:32:02'),
(97, 'Dadi Dodo Samosir S.IP', 'Jln. Antapani Lama No. 389, Tegal 37703, MalUt', '1981-04-18 06:57:02', '2021-02-23 20:32:02'),
(98, 'Gabriella Agnes Namaga M.Ak', 'Gg. Gatot Subroto No. 620, Sabang 72178, SumSel', '2015-03-13 02:58:33', '2021-02-23 20:32:02'),
(99, 'Cahyadi Gandi Pradana', 'Dk. Bagas Pati No. 850, Tanjung Pinang 16193, Bali', '1996-03-26 10:38:21', '2021-02-23 20:32:02'),
(100, 'Nadia Dalima Nasyiah S.T.', 'Gg. Yos Sudarso No. 569, Yogyakarta 51878, BaBel', '1986-01-29 14:04:37', '2021-02-23 20:32:02'),
(101, 'Zizi Pertiwi', 'Jr. Bahagia No. 859, Prabumulih 90361, Papua', '1999-05-07 00:01:24', '2021-02-23 20:37:12'),
(102, 'Genta Puspasari S.Psi', 'Jln. Raden Saleh No. 8, Tomohon 20662, SulUt', '1988-09-03 20:49:06', '2021-02-23 20:37:12'),
(103, 'Julia Kamila Rahmawati', 'Dk. Pasirkoja No. 212, Tual 70174, SulBar', '1998-09-27 16:13:18', '2021-02-23 20:37:12'),
(104, 'Pranata Permadi', 'Jr. Wora Wari No. 15, Lhokseumawe 88601, JaTim', '1982-07-01 03:52:07', '2021-02-23 20:37:12'),
(105, 'Jarwa Gunawan S.E.', 'Ds. Baiduri No. 20, Jayapura 45814, JaBar', '1988-10-03 04:08:38', '2021-02-23 20:37:13'),
(106, 'Himawan Putra', 'Ds. Ronggowarsito No. 657, Mataram 79498, PapBar', '2004-12-21 18:52:52', '2021-02-23 20:37:13'),
(107, 'Bagus Cakrabuana Simanjuntak S.Gz', 'Dk. Baja Raya No. 889, Batam 52882, JaTeng', '1985-09-14 22:20:19', '2021-02-23 20:37:13'),
(108, 'Rahmi Andriani', 'Jln. Ronggowarsito No. 440, Palu 17175, Bali', '1992-09-02 17:12:56', '2021-02-23 20:37:13'),
(109, 'Nadine Agustina', 'Psr. Flores No. 911, Banjarbaru 68567, NTB', '1971-01-29 03:55:17', '2021-02-23 20:37:13'),
(110, 'Kusuma Adiarja Santoso', 'Gg. Gremet No. 859, Tasikmalaya 45747, SulSel', '2009-05-10 20:40:20', '2021-02-23 20:37:13'),
(111, 'Febi Andriani', 'Gg. Dipenogoro No. 75, Batu 34206, PapBar', '1972-10-14 20:16:03', '2021-02-23 20:37:13'),
(112, 'Malik Caturangga Lazuardi S.Pt', 'Gg. Radio No. 387, Pekanbaru 39624, SulSel', '1983-10-11 21:07:19', '2021-02-23 20:37:13'),
(113, 'Karman Bahuraksa Sitorus M.M.', 'Ds. Muwardi No. 937, Samarinda 32866, KepR', '1988-11-08 14:21:39', '2021-02-23 20:37:13'),
(114, 'Fitriani Handayani', 'Jln. Surapati No. 444, Surabaya 25748, MalUt', '1997-07-29 15:53:30', '2021-02-23 20:37:13'),
(115, 'Ikhsan Darman Marpaung S.Ked', 'Ki. Yap Tjwan Bing No. 228, Palangka Raya 41086, KalTeng', '2001-12-21 21:13:27', '2021-02-23 20:37:13'),
(116, 'Puti Widiastuti', 'Jr. Dr. Junjunan No. 337, Banjarbaru 84855, Riau', '1992-09-24 23:14:28', '2021-02-23 20:37:13'),
(117, 'Sakura Laksita', 'Kpg. Basuki No. 731, Mataram 14771, KalSel', '1975-08-29 14:24:08', '2021-02-23 20:37:14'),
(118, 'Nilam Nadine Melani M.Farm', 'Gg. Sutami No. 605, Tangerang 99939, SumUt', '2020-05-21 18:57:10', '2021-02-23 20:37:14'),
(119, 'Mustika Dabukke', 'Gg. Baranang No. 548, Pematangsiantar 91707, KalUt', '2010-09-02 18:39:23', '2021-02-23 20:37:14'),
(120, 'Mujur Putra', 'Ki. Ters. Jakarta No. 464, Batam 42915, KalTeng', '2006-02-14 05:39:56', '2021-02-23 20:37:14'),
(121, 'Febi Riyanti', 'Psr. Nangka No. 466, Bengkulu 32467, DIY', '1978-06-18 09:12:22', '2021-02-23 20:37:14'),
(122, 'Cakrawangsa Natsir', 'Jln. Warga No. 792, Pekalongan 55426, KalTim', '1975-04-21 04:31:29', '2021-02-23 20:37:15'),
(123, 'Febi Kusmawati', 'Dk. Fajar No. 906, Parepare 98716, BaBel', '2008-07-29 01:17:18', '2021-02-23 20:37:15'),
(124, 'Erik Uwais S.Ked', 'Ds. Basuki No. 286, Padang 10083, BaBel', '1976-09-22 20:19:38', '2021-02-23 20:37:15'),
(125, 'Febi Putri Haryanti M.Pd', 'Jln. Warga No. 911, Lhokseumawe 42882, JaBar', '1979-02-14 00:12:36', '2021-02-23 20:37:15'),
(126, 'Mila Kamila Anggraini', 'Jln. Ujung No. 536, Palopo 35581, SulBar', '1984-08-14 06:51:52', '2021-02-23 20:37:15'),
(127, 'Yuliana Maryati', 'Ds. Siliwangi No. 593, Banjar 21476, BaBel', '1971-12-16 23:45:50', '2021-02-23 20:37:15'),
(128, 'Maria Safitri', 'Ki. S. Parman No. 580, Blitar 47034, NTB', '1974-11-06 21:56:38', '2021-02-23 20:37:15'),
(129, 'Putri Nuraini', 'Gg. Baung No. 252, Pontianak 68186, Bengkulu', '1973-02-14 06:01:27', '2021-02-23 20:37:15'),
(130, 'Pardi Sirait', 'Gg. Yoga No. 248, Pagar Alam 79531, NTT', '2006-09-12 07:35:34', '2021-02-23 20:37:15'),
(131, 'Candra Sitompul M.Ak', 'Kpg. Rumah Sakit No. 251, Probolinggo 75182, SulSel', '2001-06-17 05:36:19', '2021-02-23 20:37:15'),
(132, 'Pangeran Irsad Waskita', 'Kpg. Abdul No. 828, Tebing Tinggi 53871, NTT', '1985-01-08 03:25:37', '2021-02-23 20:37:15'),
(133, 'Lili Kusmawati', 'Ki. Gardujati No. 857, Sabang 44949, KalUt', '2020-05-29 02:21:36', '2021-02-23 20:37:15'),
(134, 'Ismail Halim', 'Ds. Teuku Umar No. 575, Mataram 24939, KalSel', '2009-03-15 17:31:16', '2021-02-23 20:37:15'),
(135, 'Genta Hariyah S.I.Kom', 'Jr. Bahagia No. 540, Palu 50293, JaTeng', '1990-02-06 14:18:20', '2021-02-23 20:37:15'),
(136, 'Luhung Viman Maryadi', 'Ki. Lada No. 203, Cimahi 51154, KalUt', '2012-09-19 08:30:31', '2021-02-23 20:37:15'),
(137, 'Jatmiko Uwais', 'Gg. Dipatiukur No. 226, Banjarbaru 78331, SulBar', '2003-03-30 23:19:15', '2021-02-23 20:37:16'),
(138, 'Padmi Lestari', 'Gg. Batako No. 828, Jayapura 77563, KalTim', '2014-06-16 03:56:12', '2021-02-23 20:37:16'),
(139, 'Ami Rahimah', 'Ds. Astana Anyar No. 258, Depok 50407, SumSel', '1976-07-15 23:38:18', '2021-02-23 20:37:16'),
(140, 'Jindra Hasan Gunarto M.Kom.', 'Kpg. Diponegoro No. 969, Lhokseumawe 65790, DKI', '2020-09-13 19:59:56', '2021-02-23 20:37:16'),
(141, 'Zizi Hasanah', 'Dk. Cikutra Barat No. 151, Tasikmalaya 32487, SulUt', '2004-09-18 17:22:19', '2021-02-23 20:37:16'),
(142, 'Respati Ismail Nashiruddin S.I.Kom', 'Gg. Cikutra Barat No. 801, Pariaman 50886, KalTeng', '2004-10-28 01:28:02', '2021-02-23 20:37:16'),
(143, 'Bella Rahimah S.I.Kom', 'Gg. Sutarto No. 451, Denpasar 56994, Jambi', '1994-09-16 05:20:05', '2021-02-23 20:37:16'),
(144, 'Vanya Vivi Hastuti S.IP', 'Ds. Abdul Muis No. 194, Palu 39497, MalUt', '2005-03-26 22:03:17', '2021-02-23 20:37:16'),
(145, 'Simon Mandala', 'Ki. PHH. Mustofa No. 446, Banda Aceh 53257, Lampung', '2004-09-04 06:06:39', '2021-02-23 20:37:16'),
(146, 'Yessi Uchita Pudjiastuti M.Ak', 'Dk. Padang No. 135, Administrasi Jakarta Selatan 79764, SulTra', '2013-06-26 06:28:43', '2021-02-23 20:37:16'),
(147, 'Teddy Hakim', 'Dk. Barat No. 360, Kediri 60598, SulTra', '1973-03-19 11:05:53', '2021-02-23 20:37:16'),
(148, 'Tari Usada M.Farm', 'Ki. Gotong Royong No. 740, Denpasar 26454, JaTim', '1978-10-24 16:41:55', '2021-02-23 20:37:16'),
(149, 'Gandewa Saefullah M.Kom.', 'Kpg. Jambu No. 220, Salatiga 79599, BaBel', '1994-12-09 16:57:00', '2021-02-23 20:37:16'),
(150, 'Syahrini Aryani', 'Gg. Ki Hajar Dewantara No. 136, Sorong 16161, SulTeng', '2020-10-29 14:53:47', '2021-02-23 20:37:16'),
(151, 'Tari Andriani', 'Kpg. Ronggowarsito No. 298, Probolinggo 42681, SulUt', '1984-04-10 11:06:10', '2021-02-23 20:37:17'),
(152, 'Eka Puspasari', 'Ki. Sudiarto No. 512, Tebing Tinggi 45529, DKI', '1992-11-19 09:35:04', '2021-02-23 20:37:17'),
(153, 'Balidin Anggriawan', 'Jr. Bakhita No. 279, Palembang 34376, PapBar', '2003-05-21 22:56:51', '2021-02-23 20:37:17'),
(154, 'Lasmanto Ardianto', 'Ki. Adisucipto No. 323, Tanjung Pinang 47973, PapBar', '1972-10-12 05:16:34', '2021-02-23 20:37:17'),
(155, 'Kenari Jailani S.H.', 'Ki. Ekonomi No. 879, Tarakan 54757, KepR', '1971-02-04 10:02:07', '2021-02-23 20:37:17'),
(156, 'Zamira Namaga', 'Dk. Suprapto No. 12, Subulussalam 38056, KepR', '2002-06-05 18:00:32', '2021-02-23 20:37:17'),
(157, 'Hafshah Paris Haryanti', 'Ki. Bakau Griya Utama No. 968, Samarinda 88126, SulTeng', '1985-09-28 00:34:29', '2021-02-23 20:37:17'),
(158, 'Shakila Vicky Usamah', 'Jln. Sudirman No. 947, Tasikmalaya 82424, Riau', '2017-06-26 07:33:11', '2021-02-23 20:37:17'),
(159, 'Lega Wibisono S.T.', 'Ds. Basmol Raya No. 952, Cilegon 49726, SumBar', '1981-11-23 05:50:51', '2021-02-23 20:37:17'),
(160, 'Ophelia Wahyuni', 'Jr. S. Parman No. 1, Padangpanjang 53928, MalUt', '1975-04-12 09:19:37', '2021-02-23 20:37:17'),
(161, 'Gawati Kayla Yuliarti', 'Ki. Wora Wari No. 795, Banjarbaru 10718, DIY', '2006-11-18 03:59:11', '2021-02-23 20:37:17'),
(162, 'Lurhur Siregar', 'Dk. Bambon No. 831, Pematangsiantar 48268, KepR', '2014-08-20 18:36:29', '2021-02-23 20:37:17'),
(163, 'Malika Hasanah S.Pd', 'Kpg. Sutan Syahrir No. 769, Subulussalam 33156, JaTeng', '1979-11-19 13:34:03', '2021-02-23 20:37:17'),
(164, 'Timbul Prabawa Firgantoro', 'Psr. Cikutra Barat No. 960, Tegal 13083, SulUt', '1989-09-17 23:24:53', '2021-02-23 20:37:17'),
(165, 'Taufik Maryanto Widodo M.Farm', 'Ds. Bak Air No. 52, Banjarmasin 13251, Gorontalo', '2012-07-04 03:30:28', '2021-02-23 20:37:17'),
(166, 'Asmuni Makuta Wacana', 'Ds. Bakit  No. 312, Singkawang 53936, DIY', '1991-10-23 06:47:29', '2021-02-23 20:37:17'),
(167, 'Wirda Maryati S.Pt', 'Gg. Jamika No. 441, Tidore Kepulauan 66917, NTB', '2003-04-09 16:52:46', '2021-02-23 20:37:17'),
(168, 'Jaiman Hendri Nashiruddin S.I.Kom', 'Psr. Bakti No. 96, Banda Aceh 52644, JaTim', '2002-10-16 19:29:17', '2021-02-23 20:37:17'),
(169, 'Tirtayasa Waluyo', 'Psr. Suryo No. 727, Administrasi Jakarta Utara 78876, KepR', '1992-04-14 22:39:30', '2021-02-23 20:37:17'),
(170, 'Vero Sihotang', 'Ds. Abang No. 733, Mojokerto 96553, KalUt', '2016-06-04 07:54:52', '2021-02-23 20:37:18'),
(171, 'Aurora Yulianti S.I.Kom', 'Jr. Baan No. 928, Probolinggo 45411, PapBar', '1993-10-09 10:39:58', '2021-02-23 20:37:18'),
(172, 'Kacung Marsudi Tamba S.Ked', 'Jr. Setiabudhi No. 164, Padangpanjang 42200, Jambi', '2018-06-03 04:56:50', '2021-02-23 20:37:18'),
(173, 'Rusman Halim', 'Gg. Jamika No. 977, Sawahlunto 52446, Aceh', '1982-07-14 14:13:10', '2021-02-23 20:37:18'),
(174, 'Maimunah Fitriani Rahimah', 'Jr. Bayan No. 988, Madiun 58337, Riau', '1977-04-01 09:54:31', '2021-02-23 20:37:18'),
(175, 'Embuh Eluh Latupono', 'Ds. Veteran No. 280, Binjai 20178, SulBar', '2020-01-01 15:46:35', '2021-02-23 20:37:18'),
(176, 'Cakrajiya Eko Wacana S.E.I', 'Gg. Kusmanto No. 616, Probolinggo 62662, KalTim', '2000-06-19 16:02:26', '2021-02-23 20:37:18'),
(177, 'Anom Maulana M.Ak', 'Ds. Gajah No. 132, Pematangsiantar 66789, NTT', '2009-09-07 07:04:01', '2021-02-23 20:37:18'),
(178, 'Gaman Cayadi Utama M.Kom.', 'Kpg. Ters. Kiaracondong No. 570, Pekanbaru 63957, JaTeng', '1972-01-06 08:36:40', '2021-02-23 20:37:18'),
(179, 'Faizah Rika Nuraini', 'Dk. Moch. Yamin No. 528, Jayapura 45840, SulBar', '1996-07-25 22:23:17', '2021-02-23 20:37:18'),
(180, 'Najib Lasmanto Marpaung S.Pd', 'Psr. Bank Dagang Negara No. 95, Gunungsitoli 13376, KalBar', '2002-11-27 09:20:59', '2021-02-23 20:37:18'),
(181, 'Hamima Wulandari', 'Jr. Sunaryo No. 901, Madiun 37169, SumBar', '1972-01-20 19:51:02', '2021-02-23 20:37:18'),
(182, 'Omar Mustofa S.I.Kom', 'Jln. Salak No. 140, Tangerang Selatan 45581, Riau', '2009-12-01 04:55:19', '2021-02-23 20:37:18'),
(183, 'Cawisono Nainggolan', 'Ki. Fajar No. 688, Bogor 62112, Bali', '2003-07-24 19:27:29', '2021-02-23 20:37:18'),
(184, 'Balidin Muni Tampubolon S.Sos', 'Dk. Ujung No. 678, Ternate 26584, KepR', '1993-01-23 08:29:35', '2021-02-23 20:37:18'),
(185, 'Tantri Laksmiwati', 'Psr. Kartini No. 556, Bandung 18428, SulUt', '2000-11-15 11:01:50', '2021-02-23 20:37:18'),
(186, 'Kacung Suwarno', 'Ds. Flores No. 166, Salatiga 83646, Riau', '1999-01-05 13:40:29', '2021-02-23 20:37:18'),
(187, 'Siska Rahayu', 'Psr. Dipenogoro No. 261, Pekalongan 34155, Papua', '1977-08-26 00:23:32', '2021-02-23 20:37:18'),
(188, 'Lantar Tamba', 'Jr. Rajiman No. 638, Bandar Lampung 40249, KalUt', '1970-07-30 21:23:20', '2021-02-23 20:37:18'),
(189, 'Rahmi Dinda Palastri', 'Ki. Basuki Rahmat  No. 492, Bau-Bau 79668, Jambi', '2020-08-09 11:50:06', '2021-02-23 20:37:18'),
(190, 'Maras Prayogo Marpaung S.Farm', 'Psr. Tubagus Ismail No. 596, Banjarmasin 85652, Gorontalo', '1992-07-04 09:04:53', '2021-02-23 20:37:18'),
(191, 'Harsaya Mahendra', 'Gg. Baja No. 779, Lhokseumawe 94237, Riau', '2012-08-03 22:22:52', '2021-02-23 20:37:18'),
(192, 'Sadina Purnawati', 'Psr. Bagas Pati No. 914, Surakarta 64171, SulSel', '2010-12-23 14:54:10', '2021-02-23 20:37:19'),
(193, 'Iriana Astuti', 'Gg. Lembong No. 818, Pasuruan 64634, Bali', '1980-09-03 00:00:38', '2021-02-23 20:37:19'),
(194, 'Paramita Irma Purwanti', 'Jln. Wahid No. 79, Sabang 48114, SumUt', '2020-11-21 21:25:17', '2021-02-23 20:37:19'),
(195, 'Dian Rahmawati', 'Kpg. Gegerkalong Hilir No. 67, Madiun 88075, KalSel', '2001-02-08 10:13:33', '2021-02-23 20:37:19'),
(196, 'Puput Zulaika', 'Psr. Banda No. 691, Surakarta 16232, SumSel', '1999-04-28 21:20:41', '2021-02-23 20:37:19'),
(197, 'Elvina Pertiwi', 'Kpg. Moch. Ramdan No. 20, Mojokerto 21967, MalUt', '1972-10-31 10:10:06', '2021-02-23 20:37:19'),
(198, 'Tiara Maya Nuraini M.Ak', 'Dk. Orang No. 994, Tegal 96252, SumSel', '1977-06-26 09:42:07', '2021-02-23 20:37:19'),
(199, 'Yusuf Haryanto S.IP', 'Jr. Padang No. 678, Bandung 52626, SulBar', '2006-05-08 19:00:27', '2021-02-23 20:37:19'),
(200, 'Winda Agnes Puspasari', 'Psr. Lada No. 283, Administrasi Jakarta Barat 62336, SumSel', '1999-10-05 16:12:58', '2021-02-23 20:37:19');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
